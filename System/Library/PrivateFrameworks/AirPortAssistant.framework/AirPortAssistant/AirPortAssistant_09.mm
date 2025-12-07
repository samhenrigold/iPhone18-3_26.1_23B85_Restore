void sub_23EBDCCB4(const char *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v11 = sub_23EB6FDFC(v4, Mutable, "%O", v5, v6, v7, v8, v9, v2);
      if (!v11)
      {
        sub_23EBDC50C(a1, Mutable);
LABEL_14:

        CFRelease(Mutable);
        return;
      }

      v12 = v11;
    }

    else
    {
      v12 = -6728;
    }
  }

  else
  {
    Mutable = 0;
    v12 = -6705;
  }

  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__NetworkDictionary(const char *, CFDictionaryRef)", 800, "err: %d", v12);
  }

  if (Mutable)
  {
    goto LABEL_14;
  }
}

uint64_t sub_23EBDCDD0(const __CFString *a1)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationHasPPPoEAvailable(CFDictionaryRef)", 800, "\n");
  }

  if (a1 && (v4 = 0, sub_23EB6FF14(a1, &v4, "%ks.%kC:int", "txt", 1937327724), !v2))
  {
    return (v4 >> 10) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EBDCE88(const __CFString *a1)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationHasDHCPLease(CFDictionaryRef)", 800, "\n");
  }

  if (a1 && (v4 = 0, sub_23EB6FF14(a1, &v4, "%ks.%kC:int", "txt", 1937327724), !v2))
  {
    return (v4 >> 11) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_23EBDCF40(const __CFString *a1)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIs80211g(CFDictionaryRef)", 800, "\n");
  }

  if (!a1)
  {
    return 0;
  }

  v2 = sub_23EB6A2C0(a1);
  return v2 == 3 || v2 == 102;
}

BOOL sub_23EBDCFD0(const __CFString *a1)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsTooNewToSetUp(CFDictionaryRef)", 800, "\n");
  }

  if (!a1)
  {
    return 0;
  }

  v2 = sub_23EB6A2C0(a1);
  return sub_23EC136C0(v2) == 0;
}

uint64_t sub_23EBDD05C(CFArrayRef theArray, __CFArray **a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllUnconfiguredBaseStations(CFArrayRef, CFDictionaryRef *)", 800, "\n");
  }

  v4 = 4294960591;
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v6 = Count;
      v7 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v9 = Mutable;
        v20 = 0;
        if (v6 >= 1)
        {
          v10 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
            if (!ValueAtIndex)
            {
LABEL_21:
              v4 = 4294960568;
              goto LABEL_24;
            }

            v12 = ValueAtIndex;
            if (sub_23EB6B0C8(ValueAtIndex))
            {
              sub_23EB6FF14(v12, &v20, "%ks", "name");
              if (v13)
              {
                break;
              }

              if (!v20)
              {
                goto LABEL_21;
              }

              v13 = sub_23EB6FDFC(v7, v9, "%kO=%O", v14, v15, v16, v17, v18, v20);
              if (v13)
              {
                break;
              }
            }

            if (v6 == ++v10)
            {
              goto LABEL_17;
            }
          }

          v4 = v13;
          goto LABEL_24;
        }

LABEL_17:
        if (!CFDictionaryGetCount(v9))
        {
          v4 = 4294960569;
LABEL_24:
          CFRelease(v9);
          return v4;
        }

        v4 = 0;
        *a2 = v9;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return v4;
}

uint64_t sub_23EBDD20C(CFArrayRef theArray)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "CFIndex _ConfiguredBaseStationCount(CFArrayRef)", 800, "\n");
  }

  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  for (i = 0; i != v3; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    if (!ValueAtIndex)
    {
      break;
    }

    if (!sub_23EB6B0C8(ValueAtIndex))
    {
      ++v4;
    }
  }

  return v4;
}

uint64_t sub_23EBDD2D4(const __CFString *a1, const void *a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationHasPreviousConfig(CFDictionaryRef, CFDictionaryRef)", 800, "\n");
  }

  v4 = 0;
  v10 = 0;
  if (a1 && a2)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v5 = sub_23EB71A18(a2, &v10);
    v4 = 0;
    v6 = v10;
    if (!v5 && v10)
    {
      v12 = 0;
      sub_23EB6FF14(a1, &v13, "%ks", "raMA");
      v4 = 0;
      if (!v7)
      {
        if (v13)
        {
          if (!CFDictionaryContainsKey(a1, @"raM2") || (sub_23EB6FF14(a1, &v12, "%ks", "raM2"), v4 = 0, !v8) && v12)
          {
            while (sub_23EB71AC0(v10, &v11, 0))
            {
              if (sub_23EBAFDF4(v13, v11) & 1) != 0 || v12 && (sub_23EBAFDF4(v12, v11))
              {
                v4 = 1;
                goto LABEL_20;
              }
            }

            v4 = 0;
          }
        }
      }

LABEL_20:
      v6 = v10;
    }

    if (v6)
    {
      sub_23EB71AB4(v6);
    }
  }

  return v4;
}

uint64_t sub_23EBDD458(const __CFString *a1, const void *a2, void *a3)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _GetConfigFilePathForBaseStation(CFDictionaryRef, CFDictionaryRef, CFStringRef *)", 800, "\n");
  }

  v16 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v6 = 4294960591;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_10;
  }

  v7 = sub_23EB71A18(a2, &v12);
  if (v7)
  {
    goto LABEL_9;
  }

  if (!v12)
  {
    return 4294960568;
  }

  v15 = 0;
  v11 = 0;
  sub_23EB6FF14(a1, &v16, "%ks", "raMA");
  v6 = v9;
  if (!v9)
  {
    if (v16)
    {
      if (!CFDictionaryContainsKey(a1, @"raM2") || (sub_23EB6FF14(a1, &v15, "%ks", "raM2"), v6 = v10, !v10) && v15)
      {
        if (sub_23EB71AC0(v12, &v14, &v13))
        {
          while ((sub_23EBAFDF4(v16, v14) & 1) == 0 && (!v15 || !sub_23EBAFDF4(v15, v14)))
          {
            v6 = 4294960569;
            if (!sub_23EB71AC0(v12, &v14, &v13))
            {
              goto LABEL_10;
            }
          }

          sub_23EB6FF14(v13, &v11, "%ks", "path");
          if (v7)
          {
LABEL_9:
            v6 = v7;
            goto LABEL_10;
          }

          if (v11)
          {
            v6 = 0;
            *a3 = v11;
          }

          else
          {
            v6 = 4294960568;
          }
        }

        else
        {
          v6 = 4294960569;
        }
      }
    }
  }

LABEL_10:
  if (v12)
  {
    sub_23EB71AB4(v12);
  }

  return v6;
}

BOOL sub_23EBDD648(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _NetworkIs80211g(CFDictionaryRef)", 800, "\n");
  }

  if (!a1)
  {
    return 0;
  }

  v5 = sub_23EC0FA70(a1, a2, a3, a4);
  return v5 == 3 || v5 == 102;
}

uint64_t sub_23EBDD6D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _NetworkIsTooNewToSetUp(CFDictionaryRef)", 800, "\n");
  }

  if (!a1)
  {
    return 0;
  }

  result = sub_23EC0FA70(a1, a2, a3, a4);
  if (result)
  {
    return sub_23EC136C0(result) == 0;
  }

  return result;
}

uint64_t sub_23EBDD768(CFArrayRef theArray, __CFArray **a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllUnconfiguredNetworks(CFArrayRef, CFDictionaryRef *)", 800, "\n");
  }

  if (!a2)
  {
    return 4294960591;
  }

  if (!theArray)
  {
    return 4294960569;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v5 = Count;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v8 = Mutable;
  v23 = 0;
  if (v5 >= 1)
  {
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
      if (!ValueAtIndex)
      {
LABEL_22:
        v21 = 4294960568;
        goto LABEL_25;
      }

      v14 = ValueAtIndex;
      if (sub_23EC0F9F4(ValueAtIndex, v11, v12, v13))
      {
        sub_23EB6FF14(v14, &v23, "%kO", @"SSID_STR");
        if (v15)
        {
          break;
        }

        if (!v23)
        {
          goto LABEL_22;
        }

        v15 = sub_23EB6FDFC(v6, v8, "%kO=%O", v16, v17, v18, v19, v20, v23);
        if (v15)
        {
          break;
        }
      }

      if (v5 == ++v9)
      {
        goto LABEL_17;
      }
    }

    v21 = v15;
    goto LABEL_25;
  }

LABEL_17:
  if (!CFDictionaryGetCount(v8))
  {
    v21 = 4294960569;
LABEL_25:
    CFRelease(v8);
    return v21;
  }

  v21 = 0;
  *a2 = v8;
  return v21;
}

uint64_t sub_23EBDD91C(const void *a1, __CFDictionary **a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyNetworksFilter80211g(CFDictionaryRef, CFDictionaryRef *)", 800, "\n");
  }

  v13 = 0;
  v4 = 4294960591;
  if (a1 && a2)
  {
    v11 = 0;
    v12 = 0;
    v4 = sub_23EB71A18(a1, &v13);
    if (!v4)
    {
      if (!v13)
      {
        return 4294960568;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        while (sub_23EB71AC0(v13, &v12, &v11))
        {
          if (!sub_23EBDD648(v11, v7, v8, v9))
          {
            CFDictionarySetValue(v6, v12, v11);
          }
        }

        if (CFDictionaryGetCount(v6))
        {
          v4 = 0;
          *a2 = v6;
        }

        else
        {
          CFRelease(v6);
          v4 = 4294960569;
        }
      }

      else
      {
        v4 = 4294960568;
      }
    }

    if (v13)
    {
      sub_23EB71AB4(v13);
    }
  }

  return v4;
}

uint64_t sub_23EBDDA70(CFArrayRef theArray, __CFArray **a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyNetworksFilterDuplicateNames(CFArrayRef, CFArrayRef *)", 800, "\n");
  }

  if (!a2)
  {
    return 4294960591;
  }

  if (!theArray)
  {
    return 4294960569;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v5 = Count;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v8 = Mutable;
  if (v5 >= 1)
  {
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
      if (!ValueAtIndex)
      {
        v22 = 4294960568;
        goto LABEL_25;
      }

      v14 = ValueAtIndex;
      v15 = sub_23EC0F94C(ValueAtIndex, v11, v12, v13);
      if (v15)
      {
        if (sub_23EB6B6FC(v15, 0, v8) == -1)
        {
          v21 = sub_23EB6FDFC(v6, v8, "%O", v16, v17, v18, v19, v20, v14);
          if (v21)
          {
            break;
          }
        }
      }

      if (v5 == ++v9)
      {
        goto LABEL_16;
      }
    }

    v22 = v21;
    goto LABEL_25;
  }

LABEL_16:
  if (!CFArrayGetCount(v8))
  {
    v22 = 4294960569;
LABEL_25:
    CFRelease(v8);
    return v22;
  }

  v22 = 0;
  *a2 = v8;
  return v22;
}

uint64_t sub_23EBDDBF8(CFArrayRef theArray, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a2)
  {
    return 4294960591;
  }

  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      if (sub_23EB6A1FC(a2) - 3 > 1)
      {
        v9 = 36;
      }

      else
      {
        v9 = 36;
        if (!sub_23EB6A264(a2))
        {
          if (sub_23EC0FA80(a2, v6, v7, v8))
          {
            LODWORD(v9) = 36;
          }

          else
          {
            LODWORD(v9) = 292;
          }

          if (sub_23EC0FAA4(a2, v10, v11, v12))
          {
            v9 = v9;
          }

          else
          {
            v9 = v9 | 0x200;
          }
        }
      }

      v14 = sub_23EC0FAEC(theArray, v9);
      if (v14)
      {
        v15 = v14;
        if (CFArrayGetCount(v14))
        {
          v13 = sub_23EBDDA70(v15, &cf);
          CFRelease(v15);
          if (!v13)
          {
            v16 = cf;
            if (!cf)
            {
              return 4294960568;
            }

            v13 = 0;
            if (a3)
            {
              *a3 = cf;
              return v13;
            }

LABEL_24:
            CFRelease(v16);
            return v13;
          }

LABEL_23:
          v16 = cf;
          if (!cf)
          {
            return v13;
          }

          goto LABEL_24;
        }

        CFRelease(v15);
      }
    }

    v13 = 4294960569;
    goto LABEL_23;
  }

  return 4294960569;
}

BOOL sub_23EBDDD20(const __CFString *a1)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _HostNotUsingWireless(CFDictionaryRef)", 800, "\n");
  }

  v3 = 0;
  sub_23EB6FF14(a1, &v3, "%ks:BOOL", "BSAutoGuessContext_HostNotUsingWireless");
  return v3 != 0;
}

BOOL sub_23EBDDDC4(const __CFString *a1)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _HostHasPreferredNetworkSupport(CFDictionaryRef)", 800, "\n");
  }

  v3 = 0;
  sub_23EB6FF14(a1, &v3, "%ks:BOOL", "BSAutoGuessContext_HostHasPreferredNetworkSupport");
  return v3 != 0;
}

uint64_t sub_23EBDDE68(CFDictionaryRef theDict, void *a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _GetTheOnlyDictionaryKey(CFDictionaryRef, CFStringRef *)", 800, "\n");
  }

  v7 = 0;
  v4 = 4294960591;
  if (theDict && a2)
  {
    v6 = 0;
    if (CFDictionaryGetCount(theDict) == 1)
    {
      v4 = sub_23EB71A18(theDict, &v7);
      if (!v4)
      {
        if (!v7)
        {
          return 4294960568;
        }

        sub_23EB71AC0(v7, &v6, 0);
        if (v6)
        {
          v4 = 0;
          *a2 = v6;
        }

        else
        {
          v4 = 4294960569;
        }
      }
    }

    else
    {
      v4 = 4294960586;
    }

    if (v7)
    {
      sub_23EB71AB4(v7);
    }
  }

  return v4;
}

uint64_t sub_23EBDDF6C(CFDictionaryRef theDict, void *a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _GetTheOnlyDictionaryValue(CFDictionaryRef, CFTypeRef *)", 800, "\n");
  }

  v7 = 0;
  v4 = 4294960591;
  if (theDict && a2)
  {
    v6 = 0;
    if (CFDictionaryGetCount(theDict) == 1)
    {
      v4 = sub_23EB71A18(theDict, &v7);
      if (!v4)
      {
        if (!v7)
        {
          return 4294960568;
        }

        sub_23EB71AC0(v7, 0, &v6);
        if (v6)
        {
          v4 = 0;
          *a2 = v6;
        }

        else
        {
          v4 = 4294960569;
        }
      }
    }

    else
    {
      v4 = 4294960586;
    }

    if (v7)
    {
      sub_23EB71AB4(v7);
    }
  }

  return v4;
}

void sub_23EBDE070(const __CFString *a1, const __CFArray *a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _UpdateBrowsedBaseStationsWithBrowseInfo(CFDictionaryRef, CFMutableArrayRef)", 800, "\n");
  }

  if (a1)
  {
    if (a2)
    {
      v11 = 0;
      v12 = 0;
      sub_23EB6FF14(a1, &v12, "%ks", "raMA");
      if (!v4)
      {
        if (v12)
        {
          Count = CFArrayGetCount(a2);
          if (Count < 1)
          {
LABEL_19:
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "OSStatus _UpdateBrowsedBaseStationsWithBrowseInfo(CFDictionaryRef, CFMutableArrayRef)", 800, "tempMACAddress: %@ was not found -- appending", v12);
            }

            CFArrayAppendValue(a2, a1);
          }

          else
          {
            v6 = Count;
            v7 = 0;
            while (1)
            {
              sub_23EB6FF14(a2, &v11, "[*].%ks", v7, "raMA");
              if (v8)
              {
                break;
              }

              v9 = v11;
              if (!v11)
              {
                break;
              }

              if (dword_27E382C08 <= 800)
              {
                if (dword_27E382C08 != -1 || (v10 = sub_23EB74AC8(&dword_27E382C08, 0x320u), v9 = v11, v10))
                {
                  sub_23EB75374(&dword_27E382C08, "OSStatus _UpdateBrowsedBaseStationsWithBrowseInfo(CFDictionaryRef, CFMutableArrayRef)", 800, "Comparing nextMACAddress: %@ and tempMACAddress: %@", v9, v12);
                  v9 = v11;
                }
              }

              if (sub_23EBAFDF4(v9, v12))
              {
                if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
                {
                  sub_23EB75374(&dword_27E382C08, "OSStatus _UpdateBrowsedBaseStationsWithBrowseInfo(CFDictionaryRef, CFMutableArrayRef)", 800, "tempMACAddress: %@ was found", v12);
                }

                return;
              }

              if (v6 == ++v7)
              {
                goto LABEL_19;
              }
            }
          }
        }
      }
    }
  }
}

void sub_23EBDE2BC(CFArrayRef theArray, const __CFArray *a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _UpdateBrowsedBaseStationsWithRecords(CFArrayRef, CFMutableArrayRef)", 800, "\n");
  }

  if (theArray)
  {
    if (a2)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        v9 = 0;
        do
        {
          sub_23EB6FF14(theArray, &v9, "[*]", v6);
          if (v7)
          {
            break;
          }

          if (!v9)
          {
            break;
          }

          sub_23EBDE070(v9, a2);
          if (v8)
          {
            break;
          }

          ++v6;
        }

        while (v5 != v6);
      }
    }
  }
}

void sub_23EBDE3B8(__CFArray *a1, const __CFString *a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      *v10 = 0;
      sub_23EB6FF14(a2, v10, "%kO", @"SSID_STR");
      if (!v4)
      {
        if (*v10)
        {
          if (sub_23EB6B6FC(*v10, 0, a1) == -1)
          {
            sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1, "%O", v5, v6, v7, v8, v9, v3);
          }
        }
      }
    }
  }
}

uint64_t sub_23EBDE464(const __CFString *a1, const __CFArray *a2, void *a3)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _GetLocalBrowseInfoForRemoteBase(CFDictionaryRef, CFArrayRef, CFDictionaryRef *)", 800, "\n");
  }

  v6 = 4294960591;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v11 = 0;
        sub_23EB6FF14(a1, &v11, "%ks.%ks", "txt", "raMA");
        v6 = v7;
        if (!v7)
        {
          if (v11)
          {
            v9 = sub_23EB6B3A8(a2, v11);
            v6 = 4294960569;
            if (v9 != -1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
              *a3 = ValueAtIndex;
              if (ValueAtIndex)
              {
                return 0;
              }

              else
              {
                return 4294960569;
              }
            }
          }

          else
          {
            return 4294960568;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_23EBDE570(CFDictionaryRef theDict, CFTypeRef *a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CreateBrowseInfoForRemoteBase(CFDictionaryRef, CFDictionaryRef *)", 800, "\n");
  }

  result = 4294960591;
  if (theDict && a2)
  {
    Value = CFDictionaryGetValue(theDict, @"txt");
    if (Value)
    {
      result = sub_23EB6F348(*MEMORY[0x277CBECE8], a2, "{%##O%##O}", theDict, Value);
      if (!result)
      {
        if (*a2)
        {
          return 0;
        }

        else
        {
          return 4294960568;
        }
      }
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

uint64_t sub_23EBDE648(const void *a1, __CFArray **a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _RemoteBrowseResultsToBaseStationArray(CFDictionaryRef, CFArrayRef *)", 800, "\n");
  }

  v17 = 0;
  v4 = 4294960591;
  if (a1 && a2)
  {
    cf = 0;
    theDict = 0;
    v5 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = sub_23EB71A18(a1, &v17);
      if (v8)
      {
LABEL_9:
        v4 = v8;
      }

      else
      {
        if (v17)
        {
          while (sub_23EB71AC0(v17, 0, &theDict))
          {
            v8 = sub_23EBDE570(theDict, &cf);
            if (v8)
            {
              goto LABEL_9;
            }

            if (!cf)
            {
              goto LABEL_19;
            }

            v4 = sub_23EB6FDFC(v5, v7, "%O", v9, v10, v11, v12, v13, cf);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (v4)
            {
              goto LABEL_20;
            }
          }

          v4 = 0;
          *a2 = v7;
          goto LABEL_21;
        }

LABEL_19:
        v4 = 4294960568;
      }

LABEL_20:
      CFRelease(v7);
    }

    else
    {
      v4 = 4294960568;
    }

LABEL_21:
    if (v17)
    {
      sub_23EB71AB4(v17);
    }
  }

  return v4;
}

uint64_t sub_23EBDE7C0(uint64_t a1, const __CFDictionary *a2, int a3, _BYTE *a4, void *a5)
{
  v21 = 0;
  cf = 0;
  if (a4)
  {
    *a4 = 0;
  }

  v19 = 0;
  v20 = 0;
  sub_23EBDCB98("_CopyAllNeededSettingsFromBaseStation for base:\n", a2);
  v10 = 4294960591;
  if (!a1 || !a2 || !a5)
  {
    goto LABEL_18;
  }

  if (sub_23EB6A344(a2))
  {
    goto LABEL_7;
  }

  v11 = sub_23EB6B0C8(a2);
  if (!(sub_23EBDCF40(a2) | v11))
  {
    v12 = sub_23EBAF4FC("AMarAMalAMawiFiWANarSDarVCawforPgBhdnEhdRLysPIawPIalVStnLCAtFAnslFesRSarFbsuSYHPWPyslFystSysgIys", &cf);
    if (v12)
    {
      goto LABEL_17;
    }

    if (!cf)
    {
      v10 = 4294960568;
      goto LABEL_20;
    }
  }

  v12 = sub_23EBB0E1C(&v21, a2);
  if (v12)
  {
    goto LABEL_17;
  }

  if (!v21)
  {
    goto LABEL_40;
  }

  v13 = sub_23EB6AE14(a2);
  if (!v13)
  {
LABEL_7:
    v10 = 4294960569;
    goto LABEL_18;
  }

  if (!v11)
  {
    v16 = v13;
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllNeededSettingsFromBaseStation(AutoGuessContextRef, CFDictionaryRef, Boolean, Boolean *, CFDictionaryRef *)", 800, "Calling back for password promptflag: %d\n", a3);
    }

    v17 = sub_23EBECA80(*(a1 + 48), @"keychainBaseStationType", a2, &v20);
    v10 = v17;
    if (a3 && v17 == -6727)
    {
      v10 = sub_23EBECE2C(*(a1 + 48), @"keychainBaseStationType", v16, &v20);
    }

    if (v10)
    {
      goto LABEL_18;
    }

    if (!v20)
    {
      goto LABEL_40;
    }

    sub_23EBB3DBC(v21, 1651721296, v20);
    if (v20)
    {
      CFRelease(v20);
      v20 = 0;
    }
  }

  v14 = sub_23EBB14AC(v21, cf, 1);
  if (a4 && v14 == -6768)
  {
    *a4 = 1;
    goto LABEL_7;
  }

  if (v14)
  {
    goto LABEL_7;
  }

  v12 = sub_23EBB4234(v21, &v19);
  if (v12)
  {
LABEL_17:
    v10 = v12;
    goto LABEL_18;
  }

  if (v19)
  {
    v10 = 0;
    *a5 = v19;
    goto LABEL_18;
  }

LABEL_40:
  v10 = 4294960568;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_20:
  if (v21)
  {
    sub_23EBB0D6C(v21);
  }

  return v10;
}

uint64_t sub_23EBDEA14(uint64_t a1, const __CFDictionary *a2)
{
  cf = 0;
  v5 = 0;
  if (a1)
  {
    if (a2)
    {
      sub_23EBDCB98("_IsSecurityErrorWithBase for base:\n", a2);
      sub_23EBDE7C0(a1, a2, 0, &v5, &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v5;
}

uint64_t sub_23EBDEA88(uint64_t a1, const __CFString *a2, int a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a1)
  {
    return 4294960591;
  }

  v29 = 0;
  v30 = 0;
  v5 = 4294960591;
  if (!a4 || !a2 || !*(a1 + 16))
  {
    goto LABEL_7;
  }

  sub_23EBDCB98("Get cached settings for base station:\n", a2);
  sub_23EB6FF14(a2, &v30, "%ks", "raMA");
  if (v9)
  {
LABEL_6:
    v5 = v9;
    goto LABEL_7;
  }

  if (!v30)
  {
    goto LABEL_35;
  }

  v29 = 0;
  if (!CFDictionaryContainsKey(a2, @"raM2"))
  {
    goto LABEL_20;
  }

  sub_23EB6FF14(a2, &v29, "%ks", "raM2");
  if (v9)
  {
    goto LABEL_6;
  }

  v11 = v29;
  if (!v29)
  {
LABEL_35:
    v5 = 4294960568;
    goto LABEL_7;
  }

  if (dword_27E382C08 <= 800)
  {
    if (dword_27E382C08 != -1)
    {
LABEL_19:
      sub_23EB75374(&dword_27E382C08, "OSStatus _CopyCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, Boolean, CFDictionaryRef *)", 800, "inBaseStation has Radio MAC Address 2: %@", v11);
      goto LABEL_20;
    }

    if (sub_23EB74AC8(&dword_27E382C08, 0x320u))
    {
      v11 = v29;
      goto LABEL_19;
    }
  }

LABEL_20:
  sub_23EB6FF14(*(a1 + 16), &cf, "%kO:obj", v30);
  v5 = v12;
  if (v12 == -6727 && v29)
  {
    sub_23EB6FF14(*(a1 + 16), &cf, "%kO:obj", v29);
    v5 = v13;
  }

  if (!v5)
  {
LABEL_42:
    if (cf)
    {
      if (CFDictionaryGetCount(cf))
      {
        v5 = 0;
        *a4 = cf;
        return v5;
      }

      v5 = 4294960569;
      goto LABEL_7;
    }

    return 4294960568;
  }

  if (v5 == -6727)
  {
    v14 = sub_23EBDE7C0(a1, a2, a3, 0, &cf);
    if (v14 == -6727)
    {
      v20 = *MEMORY[0x277CBECE8];
      v21 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      cf = v21;
      if (!v21)
      {
        return 4294960568;
      }

      v28 = v21;
      v9 = sub_23EB6FDFC(v20, *(a1 + 16), "%kO=%O", v22, v23, v24, v25, v26, v30);
      if (v9)
      {
        goto LABEL_6;
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "OSStatus _CopyCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, Boolean, CFDictionaryRef *)", 800, "Added BLANK settings for %@ to cache.\n", v30, v28);
      }

      goto LABEL_42;
    }

    v5 = v14;
    if (!v14)
    {
      if (!cf)
      {
        return 4294960568;
      }

      sub_23EB6FF14(cf, &v30, "%kC", 1918979393);
      if (v9)
      {
        goto LABEL_6;
      }

      if (v30)
      {
        v27 = cf;
        v9 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], *(a1 + 16), "%kO=%O", v15, v16, v17, v18, v19, v30);
        if (v9)
        {
          goto LABEL_6;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "OSStatus _CopyCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, Boolean, CFDictionaryRef *)", 800, "Added settings for %@ to cache.\n", v30, v27);
        }

        goto LABEL_42;
      }

      goto LABEL_35;
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_23EBDEDF0(const __CFString *a1, int *a2, CFTypeRef *a3, BOOL *a4)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _NetworkInfoFromSettingsDictionary(CFDictionaryRef, BSNetworkMode *, CFStringRef *, Boolean *)", 800, "\n");
  }

  if (a1)
  {
    if (a2)
    {
      v9 = 0;
      sub_23EB6FF14(a1, &v9, "%kC", 1466517097);
      if (!v8)
      {
        if (v9)
        {
          sub_23EBEF00C(v9, a2, a3, a4, 0);
        }
      }
    }
  }
}

uint64_t sub_23EBDEECC(uint64_t a1, int *a2, CFTypeRef *a3, void *a4)
{
  number = 0;
  cf = 0;
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _NetworkAndRouterInfoFromInstance(BSRef, BSNetworkMode *, CFStringRef *, BSRouterMode *)", 800, "\n", number);
  }

  v8 = 4294960591;
  if (a1 && a2)
  {
    v9 = sub_23EBB3F30(a1, 1466517097, &cf);
    if (v9)
    {
      goto LABEL_13;
    }

    if (!a4)
    {
LABEL_12:
      sub_23EBEF00C(cf, a2, a3, 0, 0);
      goto LABEL_13;
    }

    v9 = sub_23EBB3F30(a1, 1651724877, &number);
    if (v9)
    {
LABEL_13:
      v8 = v9;
      goto LABEL_14;
    }

    if (number)
    {
      if (CFNumberGetValue(number, kCFNumberSInt32Type, a4))
      {
        goto LABEL_12;
      }

      v8 = 4294960553;
    }

    else
    {
      v8 = 4294960568;
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (number)
  {
    CFRelease(number);
  }

  return v8;
}

uint64_t sub_23EBDF004(uint64_t a1)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _ConflictingDHCPRange(BSRef)", 800, "\n");
  }

  cf = 0;
  if (a1 && !sub_23EBB4DE4(a1, 2002864464) && sub_23EBAE7A0(a1, 1684554343, &cf))
  {
    v2 = sub_23EBAE7A0(a1, 1684555118, &cf) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  v3 = cf;
  if (cf && dword_27E382C08 <= 800)
  {
    if (dword_27E382C08 == -1)
    {
      if (!sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
LABEL_16:
        v3 = cf;
        goto LABEL_17;
      }

      v3 = cf;
    }

    sub_23EB75374(&dword_27E382C08, "Boolean _ConflictingDHCPRange(BSRef)", 800, "errorString: %@\n", v3);
    goto LABEL_16;
  }

LABEL_17:
  if (v3)
  {
    CFRelease(v3);
  }

  return v2;
}

uint64_t sub_23EBDF140(uint64_t a1, const __CFString *a2, int a3, uint64_t *a4)
{
  cf = 0;
  theData = 0;
  v4 = 4294960591;
  if (a1 && a2 && a4)
  {
    sub_23EBDCB98("_BaseStationCountOfPortsInUse for base station:\n", a2);
    v9 = sub_23EBDEA88(a1, a2, 0, &cf);
    if (v9)
    {
      goto LABEL_5;
    }

    if (!cf)
    {
      return 4294960568;
    }

    sub_23EB6FF14(cf, &theData, "%kC", 1346918739);
    if (v9)
    {
LABEL_5:
      v4 = v9;
    }

    else if (theData && (BytePtr = CFDataGetBytePtr(theData)) != 0)
    {
      v12 = BytePtr;
      v13 = a3 != 0;
      Length = CFDataGetLength(theData);
      v15 = 0;
      v16 = (Length >> 2) - v13;
      if (Length >> 2 > v13)
      {
        v17 = &v12[4 * v13];
        do
        {
          v18 = *v17;
          v17 += 4;
          if (v18)
          {
            ++v15;
          }

          --v16;
        }

        while (v16);
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "OSStatus _BaseStationCountOfPortsInUse(AutoGuessContextRef, CFDictionaryRef, eWhichPorts, CFIndex *)", 800, "portsInUseCountIs: %d", v15);
      }

      v4 = 0;
      *a4 = v15;
    }

    else
    {
      v4 = 4294960568;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t sub_23EBDF2B4(uint64_t a1, const __CFString *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _BaseStationHasFeature(AutoGuessContextRef, CFDictionaryRef, ACPFeatureCode, Boolean *)", 800, "\n");
  }

  theData = 0;
  cf = 0;
  v8 = 4294960591;
  if (a1 && a2 && a4)
  {
    v9 = sub_23EBDEA88(a1, a2, 0, &cf);
    if (v9)
    {
      goto LABEL_9;
    }

    if (!cf)
    {
      return 4294960568;
    }

    sub_23EB6FF14(cf, &theData, "%kC", 1717920116);
    if (v9)
    {
LABEL_9:
      v8 = v9;
    }

    else if (theData)
    {
      v8 = 0;
      *a4 = sub_23EBEF2E4(theData, v5);
    }

    else
    {
      v8 = 4294960568;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t sub_23EBDF3D8(uint64_t a1, CFDictionaryRef theDict)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsSimultaneousDualBand(AutoGuessContextRef, CFDictionaryRef)", 800, "\n");
  }

  result = 0;
  if (a1 && theDict)
  {
    result = CFDictionaryContainsKey(theDict, @"raMA");
    if (result)
    {
      return CFDictionaryContainsKey(theDict, @"raM2") != 0;
    }
  }

  return result;
}

uint64_t sub_23EBDF480(uint64_t a1, const __CFString *a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsAudioPortInUse(AutoGuessContextRef, CFDictionaryRef)", 800, "\n");
  }

  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    sub_23EB6FF14(a2, &v7, "%ks.%kC:int", "txt", 1937327724);
    v6 = v5;
    result = 0;
    if (!v6)
    {
      return v7 >> 7;
    }
  }

  return result;
}

uint64_t sub_23EBDF544(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  theData = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v25 = 0;
  v26 = 0;
  v5 = sub_23EBDEA88(a1, a2, 0, &v26);
  v6 = v26;
  v7 = 1;
  if (!v5 && v26)
  {
    v8 = sub_23EBDEA88(a1, a3, 0, &v25);
    v9 = 1;
    if (v8)
    {
      goto LABEL_9;
    }

    if (!v25)
    {
      goto LABEL_9;
    }

    sub_23EB6FF14(v26, &theData, "%kC", 1717920116);
    v9 = 1;
    if (v10 || !theData)
    {
      goto LABEL_9;
    }

    sub_23EB6FF14(v25, &v24, "%kC", 1466517097);
    if (!v11)
    {
      if (v24)
      {
        sub_23EB6FF14(v24, &v21, "%ks", "radios");
        if (!v13)
        {
          if (v21)
          {
            sub_23EB6FF14(v21, &v22, "[*].%ks:int", 0, "raSt");
            if (!v14)
            {
              if (v22 == 1 && !sub_23EBEF2E4(theData, 1112757313))
              {
                goto LABEL_27;
              }

              v15 = sub_23EBEF2E4(theData, 1852787795);
              v16 = sub_23EBEF2E4(theData, 1852788045);
              if (v15 | v16)
              {
                v17 = v16;
                sub_23EB6FF14(v21, &v20, "[*].%ks:int", 0, "raWM");
                if (!v18)
                {
                  if ((v20 - 1) < 3)
                  {
                    v9 = v15 == 0;
                    goto LABEL_9;
                  }

                  if (v20 == 4)
                  {
                    if (v17)
                    {
LABEL_27:
                      v9 = 0;
                      goto LABEL_9;
                    }

                    if (v15)
                    {
                      v19 = 0;
                      sub_23EB6FF14(v21, &v19, "[*].%ks:BOOL", 0, "rTSN");
                      v9 = v19 ^ 1;
                      goto LABEL_9;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v9 = 1;
LABEL_9:
    v7 = v9 & 1;
    v6 = v26;
  }

  if (v6)
  {
    CFRelease(v6);
    v26 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v7;
}

uint64_t sub_23EBDF780(uint64_t a1, const __CFString *a2, const __CFArray *a3, const __CFArray **a4)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsInSTAMode(AutoGuessContextRef, CFDictionaryRef, CFArrayRef, CFStringRef *)", 800, "\n");
  }

  result = 0;
  v23 = 0;
  if (!a1 || !a2 || !a4)
  {
    return result;
  }

  v26 = 0;
  cf = 0;
  v24 = 0;
  v9 = sub_23EBDEA88(a1, a2, 0, &cf);
  if (v9 == -6727)
  {
    *v22 = 0;
    sub_23EB6FF14(a2, v22, "%ks.%ks", "txt", "raMA");
    if (!v14)
    {
      if (*v22)
      {
        *v21 = 0;
        sub_23EB6FF14(a2, v21, "%ks.%ks", "txt", "raM2");
        if ((v15 == -6727 || !v15 && *v21) && sub_23EB6B8F0(*v22, 0, a3) == -1 && (!*v21 || sub_23EB6B8F0(*v21, 0, a3) == -1))
        {
          sub_23EB6FF14(a2, &v26, "%ks.%kC:int", "txt", 1937327724);
          if (!v16)
          {
            sub_23EB6FF14(a2, &v23, "%ks.%ks", "txt", "raNm");
            if (v17 == -6727)
            {
              v18 = sub_23EB6AE58(a2);
              v23 = v18;
              v19 = v18 == 0;
            }

            else
            {
              v20 = v17;
              v18 = v23;
              v19 = v20 != 0;
            }

            if (!v19 && v18)
            {
              v12 = (*(&v26 + 1) & 0x180) == 0;
LABEL_16:
              if (v12)
              {
                *a4 = v23;
                return 1;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  result = cf;
  if (cf)
  {
    sub_23EBDEDF0(cf, &v24, &v23, 0);
    v11 = v10;
    if (cf)
    {
      CFRelease(cf);
    }

    result = 0;
    if (!v11)
    {
      if (v23)
      {
        v12 = v24 == 1;
        goto LABEL_16;
      }
    }
  }

  return result;
}

CFTypeRef sub_23EBDF9E8(uint64_t a1, const __CFString *a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsNATEnabled(AutoGuessContextRef, CFDictionaryRef)", 800, "\n");
  }

  result = 0;
  if (a1 && a2)
  {
    v8 = 0;
    cf = 0;
    if (sub_23EBDEA88(a1, a2, 0, &cf))
    {
      return 0;
    }

    result = cf;
    if (cf)
    {
      sub_23EB6FF14(cf, &v8, "%kC:BOOL", 1918979649);
      v6 = v5;
      if (cf)
      {
        CFRelease(cf);
      }

      if (!v6)
      {
        return (v8 != 0);
      }

      return 0;
    }
  }

  return result;
}

CFTypeRef sub_23EBDFAD8(uint64_t a1, const __CFString *a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsCreatingGuestNetwork(AutoGuessContextRef, CFDictionaryRef)", 800, "\n");
  }

  result = 0;
  if (a1 && a2)
  {
    v9 = 0;
    v8 = 0;
    cf = 0;
    if (sub_23EBDEA88(a1, a2, 0, &cf))
    {
      return 0;
    }

    result = cf;
    if (cf)
    {
      sub_23EBDEDF0(cf, &v9, 0, &v8);
      v6 = v5;
      if (cf)
      {
        CFRelease(cf);
      }

      if (!v6)
      {
        return v8;
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_23EBDFBC0(uint64_t a1, const __CFString *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationHasPublicRoutableIP(AutoGuessContextRef, CFDictionaryRef)", 800, "\n");
  }

  v4 = 0;
  cf = 0;
  if (a1 && a2)
  {
    theString = 0;
    v7 = 0;
    if (sub_23EBDEA88(a1, a2, 0, &cf))
    {
      goto LABEL_8;
    }

    if (!cf)
    {
      return 0;
    }

    sub_23EB6FF14(cf, &theString, "%kC", 2002864464);
    if (v5 || !theString || !CFStringGetCString(theString, buffer, 256, 0x8000100u) || sub_23EB7DE5C(buffer, 0, &v7, 0, 0, 0, 0))
    {
LABEL_8:
      v4 = 0;
    }

    else
    {
      v4 = sub_23EB7D870(bswap32(v7));
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v4;
}

CFTypeRef sub_23EBDFD3C(uint64_t a1, const __CFString *a2)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsInCreateMode(AutoGuessContextRef, CFDictionaryRef)", 800, "\n");
  }

  result = 0;
  if (a1 && a2)
  {
    v12 = 0;
    cf = 0;
    v10 = 0;
    v5 = sub_23EBDEA88(a1, a2, 0, &cf);
    if (v5 == -6727)
    {
      sub_23EB6FF14(a2, &v12, "%ks.%kC:int", "txt", 1937327724);
      if (!v9)
      {
        return ((v12 & 0x10000) == 0);
      }
    }

    else if (!v5)
    {
      result = cf;
      if (!cf)
      {
        return result;
      }

      sub_23EBDEDF0(cf, &v10, 0, 0);
      v7 = v6;
      if (cf)
      {
        CFRelease(cf);
      }

      if (!v7)
      {
        return (v10 == 0);
      }
    }

    return 0;
  }

  return result;
}

void sub_23EBDFE68(uint64_t a1, const __CFString *a2, const void *a3, int a4)
{
  cf = a3;
  if (!a1 || !a2 || !*(a1 + 16))
  {
    return;
  }

  key = 0;
  sub_23EBDCB98("_SetCachedSettingsForBaseStation:\n", a2);
  if (a3)
  {
    sub_23EB6FF14(a2, &key, "%ks", "raMA");
    if (v8 || !key)
    {
      return;
    }

    v16 = 0;
    if (!CFDictionaryContainsKey(a2, @"raM2"))
    {
      goto LABEL_15;
    }

    sub_23EB6FF14(a2, &v16, "%ks", "raM2");
    if (v9)
    {
      return;
    }

    v10 = v16;
    if (!v16)
    {
      return;
    }

    if (dword_27E382C08 > 800)
    {
      goto LABEL_15;
    }

    if (dword_27E382C08 == -1)
    {
      if (!sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
LABEL_15:
        if (CFDictionaryContainsKey(*(a1 + 16), key))
        {
          CFDictionaryRemoveValue(*(a1 + 16), key);
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "OSStatus _SetCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, Boolean)", 800, "inContext->cachedBaseSttings contains tempMACAddress: %@ -- removing", key);
          }
        }

        else if (v16)
        {
          if (CFDictionaryContainsKey(*(a1 + 16), v16))
          {
            CFDictionaryRemoveValue(*(a1 + 16), v16);
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "OSStatus _SetCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, Boolean)", 800, "inContext->cachedBaseSttings contains tempMACAddress2: %@ -- removing", v16);
            }
          }
        }

        if (!sub_23EB6FDFC(*MEMORY[0x277CBECE8], *(a1 + 16), "%kO=%O", v11, v12, v13, v14, v15, key) && dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "OSStatus _SetCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, Boolean)", 800, "Added settings for %@ to cache.\n", key, a3);
        }

        return;
      }

      v10 = v16;
    }

    sub_23EB75374(&dword_27E382C08, "OSStatus _SetCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, Boolean)", 800, "inBaseStation has Radio MAC Address 2: %@", v10);
    goto LABEL_15;
  }

  if (!sub_23EBDEA88(a1, a2, a4, &cf) && cf)
  {
    CFRelease(cf);
  }
}

void sub_23EBE0134(uint64_t a1, CFArrayRef theArray)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CacheNeededSettingsForBaseStationList(AutoGuessContextRef, CFArrayRef)", 800, "\n");
  }

  if (a1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        v10 = 0;
        do
        {
          sub_23EB6FF14(theArray, &v10, "[*]", v6);
          if (v7 || !v10)
          {
            break;
          }

          sub_23EBDFE68(a1, v10, 0, 0);
          if (v8 && v8 != -6727)
          {
            break;
          }

          ++v6;
        }

        while (v5 != v6);
      }
    }
  }
}

uint64_t sub_23EBE0244(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _JoinNetworkAndBrowseForBaseStations(AutoGuessContextRef, CFDictionaryRef, Boolean, uint32_t, CFArrayRef *)", 800, "\n");
  }

  result = 4294960591;
  if (a1 && a2 && a5)
  {
    v10 = sub_23EC0F94C(a2, a2, a3, a4);
    if (v10)
    {
      if (sub_23EBEBC34(*(a1 + 48), v10, 0) || (result = sub_23EBEE390(*(a1 + 48), a2, 0, 0, 0), !result))
      {
        v11 = 0;
        result = sub_23EBED960(*(a1 + 48), v6, &v11);
        if (!result)
        {
          if (v11)
          {
            result = 0;
            *a5 = v11;
          }

          else
          {
            return 4294960568;
          }
        }
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return result;
}

uint64_t sub_23EBE0354(uint64_t a1, CFArrayRef theArray, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _JoinANetworkAndBrowseForBaseStations(AutoGuessContextRef, CFArrayRef, Boolean, uint32_t, CFArrayRef *)", 800, "\n");
  }

  cf = 0;
  v9 = 4294960591;
  if (a1 && theArray && a5)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 4294960569;
    }

    else
    {
      v11 = Count;
      v12 = 0;
      v18 = 0;
      while (1)
      {
        sub_23EB6FF14(theArray, &v18, "[*]", v12);
        if (v13)
        {
          v9 = v13;
          goto LABEL_25;
        }

        if (!v18)
        {
          break;
        }

        v14 = sub_23EBE0244(a1, v18, 0, a4, &cf);
        v9 = v14;
        if (v14 != -6723)
        {
          if (!v14)
          {
            if (!cf)
            {
              return 4294960568;
            }

            v9 = 0;
            *a5 = cf;
            return v9;
          }

          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            v15 = &stru_285145FE8;
            v19 = &stru_285145FE8;
            if (v18)
            {
              sub_23EB6FF14(v18, &v19, "%kO", @"SSID_STR");
              v15 = v19;
            }

            sub_23EB75374(&dword_27E382C08, "OSStatus _JoinANetworkAndBrowseForBaseStations(AutoGuessContextRef, CFArrayRef, Boolean, uint32_t, CFArrayRef *)", 800, "Err: %d, joining/browsing network: %@", v9, v15);
          }

          if (v11 != ++v12)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      v9 = 4294960568;
LABEL_25:
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v9;
}

uint64_t sub_23EBE0544(uint64_t a1, CFArrayRef theArray, const __CFString *a3, uint64_t a4, uint64_t *a5)
{
  if (dword_27E382C08 <= 800)
  {
    if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
    {
      sub_23EB75374(&dword_27E382C08, "OSStatus _CopyScanInfoForNetwork(AutoGuessContextRef, CFMutableArrayRef, CFStringRef, WiFiType, CFDictionaryRef *)", 800, "\n");
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "OSStatus _CopyScanInfoForNetwork(AutoGuessContextRef, CFMutableArrayRef, CFStringRef, WiFiType, CFDictionaryRef *)", 800, "_CopyScanInfoForNetwork %@\n", a3);
    }
  }

  sub_23EBDC50C("Scanned networks", theArray);
  result = 4294960591;
  if (a1 && a3 && a5)
  {
    v11 = sub_23EB6B7D0(a3, a4, 0, theArray);
    if (v11 != -1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
      if (ValueAtIndex)
      {
        v13 = ValueAtIndex;
        CFRetain(ValueAtIndex);
        sub_23EBDCCB4("foundScanInfo from BSAssistant_IndexOfNetworkNameInNetworkList", v13);
LABEL_15:
        result = 0;
        *a5 = v13;
        return result;
      }

      return 4294960568;
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "OSStatus _CopyScanInfoForNetwork(AutoGuessContextRef, CFMutableArrayRef, CFStringRef, WiFiType, CFDictionaryRef *)", 800, "Callback will direct scan to find it if not visible\n");
    }

    v19 = 0;
    result = sub_23EBEC4F4(*(a1 + 48), a3, a4, &v19);
    if (!result)
    {
      if (!v19)
      {
        return 4294960568;
      }

      result = sub_23EB6FDFC(*MEMORY[0x277CBECE8], theArray, "%O", v14, v15, v16, v17, v18, v19);
      if (!result)
      {
        sub_23EBDCCB4("foundScanInfo from callback\n", v19);
        v13 = v19;
        if (v19)
        {
          goto LABEL_15;
        }

        return 4294960569;
      }
    }
  }

  return result;
}

uint64_t sub_23EBE0748(uint64_t a1, const __CFArray *a2, CFArrayRef theArray, __CFArray **a4)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyScanInfoForNetworksNamed(AutoGuessContextRef, CFMutableArrayRef, CFArrayRef, CFArrayRef *)", 800, "\n");
  }

  v8 = 4294960591;
  if (a1 && theArray && a4)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v10 = Count;
      v11 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v13 = Mutable;
        v23 = 0;
        if (v10 >= 1)
        {
          v14 = 0;
          while (1)
          {
            cf = 0;
            sub_23EB6FF14(theArray, &v23, "[*]", v14);
            if (v15 || (v15 = sub_23EBE0544(a1, a2, v23, 3, &cf), v15))
            {
              v8 = v15;
              goto LABEL_26;
            }

            if (!cf)
            {
              break;
            }

            v8 = sub_23EB6FDFC(v11, v13, "%O", v16, v17, v18, v19, v20, cf);
            if (cf)
            {
              CFRelease(cf);
            }

            if (v8)
            {
              goto LABEL_26;
            }

            if (v10 == ++v14)
            {
              goto LABEL_19;
            }
          }

          v8 = 4294960568;
          goto LABEL_26;
        }

LABEL_19:
        if (!CFArrayGetCount(v13))
        {
          v8 = 4294960569;
LABEL_26:
          CFRelease(v13);
          return v8;
        }

        v8 = 0;
        *a4 = v13;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return v8;
}

uint64_t sub_23EBE0908(uint64_t a1, int a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _AskUserToChooseFromList(AutoGuessContextRef, eAssistantCallback, CFDictionaryRef, CFStringRef *)", 800, "\n");
  }

  cf = 0;
  context = 0;
  v8 = 4294960591;
  if (theDict && a1 && (a2 - 7) >= 0xFFFFFFFE && CFDictionaryGetCount(theDict) >= 2)
  {
    v9 = sub_23EBE9E2C(*(a1 + 48), &context);
    if (v9)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_11;
    }

    if (context)
    {
      v9 = sub_23EBEB5E8(context, @"BSAssistantCallback_AskUserDictionary", theDict, v10, v11, v12, v13, v14);
      if (v9)
      {
        goto LABEL_10;
      }

      v9 = sub_23EBEA59C(context, a2);
      if (v9)
      {
        goto LABEL_10;
      }

      v9 = sub_23EBEA92C(context);
      if (v9)
      {
        goto LABEL_10;
      }

      v8 = *(context + 8);
      if (!v8)
      {
        sub_23EB6FF14(*(context + 3), &cf, "%ks:obj", "BSAssistantCallback_String");
        v8 = v16;
        if (!v16)
        {
          *a4 = cf;
          cf = 0;
        }
      }
    }

    else
    {
      v8 = 4294960568;
    }
  }

LABEL_11:
  sub_23EBE9F5C(context);
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

BOOL sub_23EBE0A74(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  if (!a1)
  {
    if (!a2)
    {
      return 0;
    }

    return sub_23EC0FA18(a2, a2, a3, a4) != 0;
  }

  v5 = sub_23EB6C0E0(a1);
  result = v5 != 0;
  if (!v5 && a2)
  {
    return sub_23EC0FA18(a2, a2, a3, a4) != 0;
  }

  return result;
}

BOOL sub_23EBE0AE4(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  return CFStringCompare(a1, @"BSSetupRecommend_DeviceIsTooNewToSetUp", 0) && CFStringCompare(a1, @"BSSetupRecommend_UseAUFor80211g", 0);
}

uint64_t sub_23EBE0B4C(int a1, const void *a2, int a3, uint64_t a4, const void *a5, const __CFString *a6, const __CFString *a7, const void *a8, const __CFString *a9, const void *a10, void *a11, uint64_t a12)
{
  valuePtr = a1;
  if (!a12 || !*(a12 + 8))
  {
    return 4294960591;
  }

  cf = 0;
  v19 = *MEMORY[0x277CBECE8];
  value = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  if (value)
  {
    Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v33 = 4294960568;
LABEL_46:
      CFRelease(value);
      return v33;
    }

    v21 = Mutable;
    CFDictionarySetValue(Mutable, @"BSAutoGuess_FinalState", value);
    CFDictionarySetValue(v21, @"BSAutoGuess_StateTrace", a2);
    if (a3 != -1)
    {
      v27 = sub_23EB6FDFC(v19, v21, "%ks=%i", v22, v23, v24, v25, v26, "BSAutoGuess_RestoreNetworkMode");
      if (v27)
      {
        goto LABEL_15;
      }
    }

    if (CFStringCompare(a6, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", 0))
    {
      if (a4 == -1)
      {
        goto LABEL_16;
      }

      v27 = sub_23EB6FDFC(v19, v21, "%ks=%i", v28, v29, v30, v31, v32, "BSAutoGuess_NoRestoreReason");
    }

    else
    {
      v27 = sub_23EB6FDFC(v19, v21, "%ks=%i", v28, v29, v30, v31, v32, "kBSAutoGuessSetupOptionKey_NoConfigureReason");
    }

    if (v27)
    {
LABEL_15:
      v33 = v27;
LABEL_45:
      CFRelease(v21);
      goto LABEL_46;
    }

LABEL_16:
    if (a5)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_RestoreData", a5);
    }

    CFDictionarySetValue(v21, @"BSAutoGuess_Recommendation", a6);
    if (a8)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_UnconfiguredNetwork", a8);
    }

    if (a10)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_SourceNetwork", a10);
    }

    if (a11)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_AskUserList", a11);
    }

    if (a7)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_UnconfiguredBase", a7);
      if (sub_23EBE0AE4(a6))
      {
        v34 = sub_23EBDEA88(a12, a7, 0, &cf);
        if (v34 == -6727)
        {
          if (!sub_23EBDEA14(a12, a7))
          {
            v33 = 4294960569;
            goto LABEL_45;
          }

          CFDictionarySetValue(v21, @"BSAutoGuess_Recommendation", @"BSSetupRecommend_FirmwareUpdateRequired");
        }

        else
        {
          v33 = v34;
          if (v34)
          {
            goto LABEL_45;
          }

          if (!cf)
          {
            goto LABEL_48;
          }

          CFDictionarySetValue(v21, @"BSAutoGuess_UnconfiguredBaseSettings", cf);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }
      }
    }

    if (!a9)
    {
      goto LABEL_40;
    }

    v35 = sub_23EBDEA88(a12, a9, 0, &cf);
    if (v35 == -6727)
    {
LABEL_39:
      CFDictionarySetValue(v21, @"BSAutoGuess_SourceBase", a9);
LABEL_40:
      CFArrayAppendValue(*(a12 + 8), v21);
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "OSStatus __SetupOfferToDoSomething(BaseStationAutoGuessStates, CFArrayRef, BSNetworkMode, int32_t, CFStringRef, CFStringRef, CFDictionaryRef, CFDictionaryRef, CFDictionaryRef, CFDictionaryRef, CFArrayRef, AutoGuessContextRef)", 800, "Reason: %d Recommendation: %@\n", a4, a6);
      }

      v33 = 0;
      goto LABEL_45;
    }

    v33 = v35;
    if (v35)
    {
      goto LABEL_45;
    }

    if (cf)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_SourceBaseSettings", cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_39;
    }

LABEL_48:
    v33 = 4294960568;
    goto LABEL_45;
  }

  return 4294960568;
}

uint64_t sub_23EBE0F68(CFDictionaryRef theDict, const void *a2, const __CFString **a3)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _IntelligentlyChooseABaseToConfigure(CFDictionaryRef, CFDictionaryRef, CFDictionaryRef *)", 800, "\n");
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  theDicta = 0;
  if (theDict && CFDictionaryGetCount(theDict))
  {
    v6 = sub_23EB71A18(theDict, &v15);
    if (!v6)
    {
      if (v15)
      {
        if (sub_23EB71AC0(v15, &v14, &v13))
        {
          v7 = 0;
          v6 = 0;
          while (1)
          {
            if (sub_23EB6B5A0(v13))
            {
              sub_23EBDCB98("Base station has WAN link", v13);
              v8 = sub_23EBB7360(v13, @"local.", @"_airport._tcp", @"wan", 2u, 1, &theDicta);
              v6 = v8;
              if (v8 != -6735)
              {
                if (v8)
                {
                  goto LABEL_24;
                }

                if (!theDicta)
                {
                  goto LABEL_31;
                }

                v6 = 0;
                if (CFDictionaryGetCount(theDicta))
                {
                  break;
                }
              }
            }

            if (sub_23EB6B268(v13))
            {
              v10 = v13;
              v11 = "Base station has restore profile";
LABEL_34:
              sub_23EBDCB98(v11, v10);
              break;
            }

            if (a2 && sub_23EBDD2D4(v13, a2))
            {
              v10 = v13;
              v11 = "Base station has previous config files";
              goto LABEL_34;
            }

            if (!v7)
            {
              v7 = v13;
            }

            if (!sub_23EB71AC0(v15, &v14, &v13))
            {
              goto LABEL_36;
            }
          }

          v7 = v13;
LABEL_36:
          if (v7)
          {
            *a3 = v7;
            goto LABEL_26;
          }
        }

        v6 = 4294960569;
      }

      else
      {
LABEL_31:
        v6 = 4294960568;
      }
    }
  }

  else
  {
    v6 = 4294960591;
  }

LABEL_24:
  if (a3)
  {
    CFRelease(a3);
  }

LABEL_26:
  if (theDicta)
  {
    CFRelease(theDicta);
    theDicta = 0;
  }

  if (v15)
  {
    sub_23EB71AB4(v15);
  }

  return v6;
}

void sub_23EBE1188(uint64_t a1, const __CFString *a2, const __CFString *a3, int *a4)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _ShouldNewBaseStationReplaceExistingBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, eReplaceMode *)", 800, "\n");
  }

  if (a3)
  {
    if (a2)
    {
      if (a1)
      {
        if (a4)
        {
          v18 = 0;
          v19 = 0;
          v17 = 0;
          *a4 = 0;
          sub_23EBDF544(a1, a2, a3);
          sub_23EB6FF14(a3, &v18, "%kO.%kO:int", @"txt", @"syAP");
          if (!v8)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "OSStatus _ShouldNewBaseStationReplaceExistingBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, eReplaceMode *)", 800, "-- existingProdID2 is: %d", v18);
            }

            v9 = 2;
            if (v18 == 3 || v18 == 102)
            {
              goto LABEL_16;
            }

            v10 = *a4;
            if (*a4)
            {
              goto LABEL_18;
            }

            if (!sub_23EB6C1A0(a3))
            {
              v9 = 3;
              goto LABEL_16;
            }

            v10 = *a4;
            if (*a4)
            {
              goto LABEL_18;
            }

            v19 = -1;
            if (v18 == 104)
            {
              if (sub_23EBDF140(a1, a3, 1, &v19) || v19 == -1)
              {
                return;
              }

              if (v19 > 1)
              {
                goto LABEL_61;
              }

              v10 = *a4;
              if (*a4)
              {
                goto LABEL_18;
              }
            }

            if (sub_23EBDF480(a1, a3))
            {
              sub_23EBDCB98("Existing base station has audio port in use:\n", a3);
              if (sub_23EBDF2B4(a1, a2, 1632923251, &v17 + 1))
              {
                return;
              }

              v11 = HIBYTE(v17) ? "New base station has audio port:\n" : "New base station does not have audio port:\n";
              sub_23EBDCB98(v11, a2);
              if (!HIBYTE(v17))
              {
LABEL_60:
                v10 = *a4;
                goto LABEL_18;
              }
            }

            sub_23EB6FF14(a2, &v18 + 4, "%ks.%kC:int", "txt", 1937326416);
            if (v12)
            {
              return;
            }

            v13 = sub_23EB4BDAC(v18);
            if (v13 <= sub_23EB4BDAC(HIDWORD(v18)))
            {
              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C08, "OSStatus _ShouldNewBaseStationReplaceExistingBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, eReplaceMode *)", 800, "Existing base station has less ethernet ports than the new base station");
              }
            }

            else
            {
              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C08, "OSStatus _ShouldNewBaseStationReplaceExistingBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, eReplaceMode *)", 800, "Existing base station has more ethernet ports than the new base station");
              }

              v14 = v19;
              if (v19 == -1)
              {
                if (sub_23EBDF140(a1, a3, 1, &v19))
                {
                  return;
                }

                v14 = v19;
                if (v19 == -1)
                {
                  return;
                }
              }

              if (v14 >= sub_23EB4BDAC(HIDWORD(v18)))
              {
                goto LABEL_60;
              }
            }

            if (!sub_23EBDF3D8(a1, a2) || sub_23EBDF3D8(a1, a3))
            {
              v10 = *a4;
              if (!*a4)
              {
                v15 = sub_23EBDF2B4(a1, a2, 825319779, &v17);
                if (!v15 && v17)
                {
                  v16 = 0;
                  v15 = sub_23EBDF2B4(a1, a3, 825319779, &v16);
                  if (!v15)
                  {
                    if (v16)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_55;
                  }

                  if ((v18 - 1) < 0x76)
                  {
LABEL_55:
                    *a4 = 1;
                  }
                }

LABEL_56:
                if (*a4 && !sub_23EBDF544(a1, a2, a3))
                {
                  *a4 = 0;
                }

                if (v15)
                {
                  return;
                }

                goto LABEL_60;
              }

LABEL_18:
              v9 = 1;
              if (v10 <= 3 && v10 != 1)
              {
                return;
              }

LABEL_16:
              *a4 = v9;
              return;
            }

LABEL_61:
            v9 = 1;
            goto LABEL_16;
          }
        }
      }
    }
  }
}

uint64_t sub_23EBE15C4(uint64_t a1, CFArrayRef theArray, const __CFArray *a3, const __CFArray **a4)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllNetworksForBaseStationsInSTAMode(AutoGuessContextRef, CFArrayRef, CFMutableArrayRef, CFArrayRef *)", 800, "\n");
  }

  v8 = 4294960591;
  if (!a1 || !theArray || !a4)
  {
    return v8;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v10 = Count;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v13 = Mutable;
  v25 = v11;
  value = 0;
  if (v10 >= 1)
  {
    for (i = 0; v10 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (!ValueAtIndex)
      {
LABEL_36:
        v8 = 4294960568;
        goto LABEL_38;
      }

      v16 = ValueAtIndex;
      if (!sub_23EB6C0E0(ValueAtIndex) && sub_23EBDF780(a1, v16, a3, &value) && value)
      {
        v28.length = CFArrayGetCount(v13);
        v28.location = 0;
        if (CFArrayContainsValue(v13, v28, value))
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllNetworksForBaseStationsInSTAMode(AutoGuessContextRef, CFArrayRef, CFMutableArrayRef, CFArrayRef *)", 800, "Already added STA network: %@\n", value);
          }
        }

        else
        {
          cf = 0;
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllNetworksForBaseStationsInSTAMode(AutoGuessContextRef, CFArrayRef, CFMutableArrayRef, CFArrayRef *)", 800, "Adding STA network: %@ if it is scannable\n", value);
          }

          v17 = sub_23EBE0544(a1, a3, value, 3, &cf);
          if (v17 != -6727)
          {
            v8 = v17;
            if (v17)
            {
              goto LABEL_38;
            }

            if (!cf)
            {
              goto LABEL_36;
            }

            CFRelease(cf);
            cf = 0;
            sub_23EBDCB98("Base station is in STA mode:\n", v16);
            v23 = sub_23EB6FDFC(v25, v13, "%O", v18, v19, v20, v21, v22, value);
            if (v23)
            {
              v8 = v23;
LABEL_38:
              CFRelease(v13);
              return v8;
            }
          }
        }
      }
    }
  }

  if (!CFArrayGetCount(v13))
  {
    v8 = 4294960569;
    goto LABEL_38;
  }

  v8 = 0;
  *a4 = v13;
  return v8;
}

uint64_t sub_23EBE188C(uint64_t a1, char a2, CFArrayRef theArray, __CFArray **a4)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _NarrowBaseStationList(AutoGuessContextRef, eNarrowBaseStationList, CFArrayRef, CFArrayRef *)", 800, "\n");
  }

  v8 = 4294960591;
  if (a1)
  {
    if (theArray)
    {
      if (a4)
      {
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          v10 = Count;
          v11 = *MEMORY[0x277CBECE8];
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          if (Mutable)
          {
            v13 = Mutable;
            if (v10 >= 1)
            {
              v14 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
                if (!ValueAtIndex)
                {
                  v8 = 4294960568;
                  goto LABEL_23;
                }

                v21 = ValueAtIndex;
                if ((a2 & 1) == 0 || !sub_23EBDCF40(ValueAtIndex))
                {
                  v22 = sub_23EB6FDFC(v11, v13, "%O", v16, v17, v18, v19, v20, v21);
                  if (v22)
                  {
                    break;
                  }
                }

                if (v10 == ++v14)
                {
                  goto LABEL_17;
                }
              }

              v8 = v22;
              goto LABEL_23;
            }

LABEL_17:
            if (!CFArrayGetCount(v13))
            {
              v8 = 4294960569;
LABEL_23:
              CFRelease(v13);
              return v8;
            }

            v8 = 0;
            *a4 = v13;
          }

          else
          {
            return 4294960568;
          }
        }
      }
    }
  }

  return v8;
}

uint64_t sub_23EBE1A10(uint64_t a1, CFArrayRef theArray, uint64_t *a3)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _NarrowBaseStationListToBestOneToExtend(AutoGuessContextRef, CFArrayRef, CFDictionaryRef *)", 800, "\n");
  }

  result = 4294960591;
  if (a1 && theArray && a3)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v8 = Count;
      if (Count >= 1)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
          if (!ValueAtIndex)
          {
            return 4294960568;
          }

          v12 = ValueAtIndex;
          if (sub_23EBDF9E8(a1, ValueAtIndex))
          {
            if (v10)
            {
              sub_23EBDCB98("_BaseStationIsNATEnabled true again for base so clearing found base:\n", v12);
              goto LABEL_20;
            }

            sub_23EBDCB98("_BaseStationIsNATEnabled true for base:\n", v12);
            v10 = v12;
          }

          ++v9;
        }

        while (v8 != v9);
        if (v10)
        {
LABEL_17:
          result = 0;
          *a3 = v10;
          return result;
        }

LABEL_20:
        if (v8 >= 1)
        {
          v13 = 0;
          v10 = 0;
          while (1)
          {
            v14 = CFArrayGetValueAtIndex(theArray, v13);
            if (!v14)
            {
              return 4294960568;
            }

            v15 = v14;
            if (sub_23EBDFAD8(a1, v14))
            {
              if (v10)
              {
                sub_23EBDCB98("_BaseStationIsCreatingGuestNetwork true again for base so clearing found base:\n", v15);
LABEL_30:
                v16 = 0;
                v10 = 0;
                while (1)
                {
                  v17 = CFArrayGetValueAtIndex(theArray, v16);
                  if (!v17)
                  {
                    return 4294960568;
                  }

                  v18 = v17;
                  if (sub_23EBDF3D8(a1, v17))
                  {
                    if (v10)
                    {
                      sub_23EBDCB98("_BaseStationIsSimultaneousDualBand true again for base so clearing found base:\n", v18);
                      return 4294960569;
                    }

                    sub_23EBDCB98("_BaseStationIsSimultaneousDualBand true for base:\n", v18);
                    v10 = v18;
                  }

                  if (v8 == ++v16)
                  {
                    if (v10)
                    {
                      goto LABEL_17;
                    }

                    return 4294960569;
                  }
                }
              }

              sub_23EBDCB98("_BaseStationIsCreatingGuestNetwork true for base:\n", v15);
              v10 = v15;
            }

            if (v8 == ++v13)
            {
              if (v10)
              {
                goto LABEL_17;
              }

              goto LABEL_30;
            }
          }
        }
      }

      return 4294960569;
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

void sub_23EBE1C34(CFArrayRef theArray, uint64_t a2, const __CFDate *a3, const __CFString **a4)
{
  if (theArray && a4)
  {
    v10 = 0;
    sub_23EB6BA5C(theArray, a3, &v10);
    if (v7 == -6727)
    {
      sub_23EB6FF14(theArray, &v10, "[*]", a2);
      if (v8)
      {
        return;
      }

      v9 = v10;
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v9 = v10;
      if (!v10)
      {
        return;
      }
    }

    *a4 = v9;
  }
}

uint64_t sub_23EBE1CE0(uint64_t a1, const __CFArray *a2, CFArrayRef theArray, const __CFString *a4, char a5, __CFArray **a6)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyNetworksScannableInPreferredList(AutoGuessContextRef, CFMutableArrayRef, CFArrayRef, CFDictionaryRef, ScanOptions, CFArrayRef *)", 800, "\n");
  }

  v12 = 4294960591;
  if (!a1 || !a6 || (a5 & 3) == 0)
  {
    return v12;
  }

  if (!theArray || !CFArrayGetCount(theArray))
  {
    return 4294960569;
  }

  *a6 = 0;
  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v15 = Mutable;
  v16 = 0;
  theArraya = 0;
  v66 = 0;
  cf = 0;
  theString1 = 0;
  theDate = 0;
  theString2 = 0;
  v62 = 0;
  if ((a5 & 2) != 0)
  {
    theArraya = CFArrayCreateMutable(v13, 0, MEMORY[0x277CBF128]);
    if (!theArraya)
    {
      v19 = 0;
      otherDate = 0;
      goto LABEL_21;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v16 = CFDateCreate(v13, Current + -1209600.0);
    if (!v16)
    {
      otherDate = 0;
      goto LABEL_78;
    }
  }

  otherDate = v16;
  if (!a4)
  {
    theString2 = 0;
    goto LABEL_23;
  }

  sub_23EB6FF14(a4, &theString2, "%kO", @"SSID_STR");
  if (v18)
  {
    v12 = v18;
LABEL_82:
    v19 = theArraya;
    goto LABEL_83;
  }

  if (!theString2)
  {
LABEL_78:
    v12 = 4294960568;
    goto LABEL_82;
  }

LABEL_23:
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_81;
  }

  v59 = v15;
  theDate = 0;
  if (Count < 1)
  {
LABEL_55:
    v15 = v59;
    if (theArraya)
    {
      v44 = CFArrayGetCount(theArraya);
      if (v44)
      {
        v45 = v44 >= 6 ? 6 : v44;
        if (v44 >= 1)
        {
          v19 = theArraya;
          ValueAtIndex = CFArrayGetValueAtIndex(theArraya, 0);
          theString1 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v47 = ValueAtIndex;
            v48 = 0;
            do
            {
              v49 = sub_23EBE0544(a1, a2, v47, 3, &cf);
              if (v49 != -6727)
              {
                v12 = v49;
                if (v49)
                {
                  goto LABEL_82;
                }

                if (!cf)
                {
                  goto LABEL_78;
                }

                if (sub_23EC0F928(cf, v50, v51, v52))
                {
                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  sub_23EBDCCB4("Skipping IBSS network", 0);
                }

                else
                {
                  v12 = sub_23EB6FDFC(v13, v59, "%O", v53, v54, v55, v56, v57, cf);
                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  if (v12)
                  {
                    goto LABEL_82;
                  }

                  if ((a5 & 8) != 0)
                  {
                    goto LABEL_79;
                  }
                }
              }

              if (++v48 >= v45)
              {
                goto LABEL_79;
              }

              v47 = CFArrayGetValueAtIndex(theArraya, v48);
              theString1 = v47;
              v12 = 4294960568;
            }

            while (v47);
            goto LABEL_82;
          }

LABEL_21:
          v12 = 4294960568;
          goto LABEL_83;
        }
      }
    }

LABEL_79:
    if (CFArrayGetCount(v59))
    {
      v12 = 0;
      *a6 = v59;
      v19 = theArraya;
      goto LABEL_84;
    }

LABEL_81:
    v12 = 4294960569;
    goto LABEL_82;
  }

  v21 = 0;
  while (1)
  {
    v22 = Count;
    sub_23EBE1C34(theArray, v21, theDate, &v66);
    if (v23)
    {
      goto LABEL_89;
    }

    if (!v66)
    {
      break;
    }

    sub_23EB6FF14(v66, &v62, "%ks:int", "WiFiShim_PreferredNetwork_SecMode");
    if (v23)
    {
LABEL_89:
      v12 = v23;
      goto LABEL_91;
    }

    if (v62 - 9 <= 3)
    {
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "OSStatus _CopyNetworksScannableInPreferredList(AutoGuessContextRef, CFMutableArrayRef, CFArrayRef, CFDictionaryRef, ScanOptions, CFArrayRef *)", 800, "skipping Enterprise preferred network: %@\n", v66);
      }

      goto LABEL_54;
    }

    sub_23EB6FF14(v66, &theString1, "%ks", "WiFiShim_PreferredNetwork_SSID");
    if (v23)
    {
      goto LABEL_89;
    }

    if (!theString1)
    {
      break;
    }

    sub_23EB6FF14(v66, &theDate, "%ks", "WiFiShim_PreferredNetwork_TimeAssociated");
    if (v24 != -6727)
    {
      v12 = v24;
      if (v24)
      {
        goto LABEL_91;
      }

      if (!theDate)
      {
        break;
      }
    }

    if (theString2 && CFStringCompare(theString1, theString2, 0) == kCFCompareEqualTo)
    {
      goto LABEL_54;
    }

    v25 = sub_23EB6B7D0(theString1, 3, 0, a2);
    if (v25 == -1)
    {
      if ((a5 & 2) == 0 || (a5 & 4) != 0 && v62 < 2 || theDate && CFDateCompare(theDate, otherDate, 0) != kCFCompareGreaterThan)
      {
        goto LABEL_54;
      }

      v23 = sub_23EB6FDFC(v13, theArraya, "%O", v26, v27, v28, v29, v30, theString1);
    }

    else
    {
      if ((a5 & 1) == 0)
      {
        goto LABEL_54;
      }

      v31 = CFArrayGetValueAtIndex(a2, v25);
      cf = v31;
      if (!v31)
      {
        break;
      }

      v35 = v31;
      if (sub_23EC0F9F4(v31, v32, v33, v34) || sub_23EC0F928(v35, v36, v37, v38))
      {
        goto LABEL_54;
      }

      v23 = sub_23EB6FDFC(v13, v59, "%O", v39, v40, v41, v42, v43, v35);
    }

    if (v23)
    {
      goto LABEL_89;
    }

LABEL_54:
    ++v21;
    Count = v22;
    if (v22 == v21)
    {
      goto LABEL_55;
    }
  }

  v12 = 4294960568;
LABEL_91:
  v19 = theArraya;
  v15 = v59;
LABEL_83:
  CFRelease(v15);
LABEL_84:
  if (v19)
  {
    CFRelease(v19);
  }

  if (otherDate)
  {
    CFRelease(otherDate);
  }

  return v12;
}

uint64_t sub_23EBE220C(uint64_t a1, CFArrayRef theArray, const __CFArray *a3, const __CFArray *a4, CFMutableArrayRef *a5)
{
  v5 = 4294960591;
  if (!a1 || !theArray || !a5)
  {
    return v5;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v12 = Count;
  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v15 = Mutable;
  v31 = 0;
  cf = 0;
  v29 = 0;
  v30 = 0;
  if (v12 >= 1)
  {
    for (i = 0; v12 != i; ++i)
    {
      sub_23EB6FF14(theArray, &v31, "[*]", i);
      if (v17)
      {
LABEL_30:
        v5 = v17;
        goto LABEL_34;
      }

      v18 = v31;
      if (!v31)
      {
        goto LABEL_32;
      }

      if (a3)
      {
        sub_23EB6FF14(v31, &v30, "%ks.%ks", "txt", "raMA");
        if (v17)
        {
          goto LABEL_30;
        }

        if (!v30)
        {
          v5 = 0;
LABEL_34:
          CFRelease(v15);
          return v5;
        }

        v19 = sub_23EB6B3A8(a3, v30);
        if (v19 != -1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v19);
          v31 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            v5 = 4294960586;
            goto LABEL_34;
          }

LABEL_24:
          v17 = sub_23EB6FDFC(v13, v15, "%O", v21, v22, v23, v24, v25, ValueAtIndex);
          if (v17)
          {
            goto LABEL_30;
          }

          continue;
        }

        v18 = v31;
      }

      sub_23EB6FF14(v18, &v29, "%ks.%ks", "txt", "raNm");
      if (v26 != -6727)
      {
        v5 = v26;
        if (v26)
        {
          goto LABEL_34;
        }

        if (!v29)
        {
          goto LABEL_32;
        }

        v27 = sub_23EBE0544(a1, a4, v29, 3, &cf);
        if (v27 != -6727)
        {
          v5 = v27;
          if (v27)
          {
            goto LABEL_34;
          }

          if (!cf)
          {
LABEL_32:
            v5 = 4294960568;
            goto LABEL_34;
          }

          CFRelease(cf);
          cf = 0;
          LODWORD(ValueAtIndex) = v31;
          goto LABEL_24;
        }
      }
    }
  }

  if (!CFArrayGetCount(v15))
  {
    v5 = 4294960569;
    goto LABEL_34;
  }

  v5 = 0;
  *a5 = v15;
  return v5;
}

uint64_t sub_23EBE2440(uint64_t a1, const __CFString *a2, CFArrayRef theArray, const __CFArray *a4, CFMutableArrayRef *a5)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _BaseStationsBrowsedAndCreatingNetworksVisibleToBaseStation(AutoGuessContextRef, CFDictionaryRef, CFArrayRef, CFArrayRef, CFArrayRef *)", 800, "\n");
  }

  v10 = 4294960569;
  if (!theArray)
  {
    return v10;
  }

  if (!a4)
  {
    return v10;
  }

  if (!CFArrayGetCount(theArray))
  {
    return v10;
  }

  if (!CFArrayGetCount(a4))
  {
    return v10;
  }

  v10 = 4294960591;
  if (!a1 || !a5)
  {
    return v10;
  }

  *a5 = 0;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v13 = Mutable;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v14 = sub_23EBDF2B4(a1, a2, 1852787795, &v31);
  v10 = v14;
  if (v31)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = 30;
  }

  else
  {
    v16 = 22;
  }

  Count = CFArrayGetCount(a4);
  if (Count >= 1)
  {
    v18 = Count;
    v30 = v11;
    v19 = 0;
    while (1)
    {
      sub_23EB6FF14(a4, &v33, "[*]", v19);
      if (v20)
      {
LABEL_36:
        v10 = v20;
        goto LABEL_42;
      }

      if (!v33)
      {
        goto LABEL_38;
      }

      if (sub_23EC0FB00(v33, v16))
      {
        sub_23EBDCCB4("Skipping IBSS, non-secure, enterprise, or legacy sec mode network: %@\n", v33);
      }

      else
      {
        sub_23EB6FF14(v33, &v32, "%kO", @"BSSID");
        if (v20)
        {
          goto LABEL_36;
        }

        if (!v32)
        {
LABEL_38:
          v10 = 4294960568;
          goto LABEL_42;
        }

        v21 = sub_23EB6B3A8(theArray, v32);
        if (v21 != -1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
          if (!ValueAtIndex)
          {
            v10 = 4294960586;
LABEL_42:
            CFRelease(v13);
            return v10;
          }

          v23 = ValueAtIndex;
          if (!sub_23EB6B0C8(ValueAtIndex) && !sub_23EB6B674(a2, v23) && (!CFArrayGetCount(v13) || sub_23EB6B3A8(v13, v32) == -1))
          {
            if (sub_23EBDFD3C(a1, v23))
            {
              v20 = sub_23EB6FDFC(v30, v13, "%O", v24, v25, v26, v27, v28, v23);
              if (v20)
              {
                goto LABEL_36;
              }
            }
          }
        }
      }

      if (v18 == ++v19)
      {
        v10 = 0;
        break;
      }
    }
  }

  if (!CFArrayGetCount(v13))
  {
    v10 = 4294960569;
    goto LABEL_42;
  }

  *a5 = v13;
  return v10;
}

BOOL sub_23EBE26E8(const __CFString *a1, CFArrayRef theArray)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _WirelessNetworkVisibleInNetworkScan(CFStringRef, CFArrayRef)", 800, "\n");
  }

  result = 0;
  if (a1)
  {
    if (theArray)
    {
      return sub_23EB6B6FC(a1, 0, theArray) != -1;
    }
  }

  return result;
}

uint64_t sub_23EBE277C(CFDictionaryRef theDict)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _UnconfiguredBaseStationIsSpecifiedByBonjourRecord(CFDictionaryRef)", 800, "\n");
  }

  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryContainsKey(theDict, @"BSAutoGuessContext_ChosenUnconfiguredBrowseRecord");
  if (result)
  {
    return CFDictionaryContainsKey(theDict, @"BSAutoGuessContext_ChosenUnconfiguredScanRecord") == 0;
  }

  return result;
}

BOOL sub_23EBE2820(CFDictionaryRef theDict)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _UnconfiguredBaseStationIsSpecifiedByWirelessScanRecord(CFDictionaryRef)", 800, "\n");
  }

  return theDict && !CFDictionaryContainsKey(theDict, @"BSAutoGuessContext_ChosenUnconfiguredBrowseRecord") && CFDictionaryContainsKey(theDict, @"BSAutoGuessContext_ChosenUnconfiguredScanRecord") != 0;
}

BOOL sub_23EBE28C4(CFDictionaryRef theDict)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _UnconfiguredBaseStationInContextDictionary(CFDictionaryRef)", 800, "\n");
  }

  if (!theDict)
  {
    return 0;
  }

  if (sub_23EBE277C(theDict))
  {
    return 1;
  }

  result = sub_23EBE2820(theDict);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_23EBE2958(void *a1)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus BSAutoGuess_Create(AutoGuessContextRef *)", 800, "BSAutoGuess_Create\n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040837169E1uLL);
  if (!v2)
  {
    return 4294960568;
  }

  v3 = v2;
  *(v2 + 28) = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  v4 = sub_23EBE9B10(v2 + 6);
  if (!v4)
  {
    if (*(v3 + 6))
    {
      v4 = 0;
      *a1 = v3;
      return v4;
    }

    v4 = 4294960568;
  }

  sub_23EBE2A44(v3);
  return v4;
}

uint64_t sub_23EBE2A44(const void **a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
    a1[1] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
    a1[3] = 0;
  }

  v6 = a1[4];
  if (v6)
  {
    CFRelease(v6);
    a1[4] = 0;
  }

  sub_23EBE9CC0(a1[6]);
  free(a1);
  return 0;
}

uint64_t sub_23EBE2AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus BSAutoGuess_SetAssistantCallback(AutoGuessContextRef, assistant_callback_t, void *)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v6 = *(a1 + 48);

  return sub_23EBEA4E8(v6, a2, a3);
}

uint64_t sub_23EBE2B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus BSAutoGuess_SetProgressCallback(AutoGuessContextRef, assistant_progress_t, void *)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v6 = *(a1 + 48);

  return sub_23EBEAA74(v6, a2, a3);
}

uint64_t sub_23EBE2C38(void *a1, CFDictionaryRef theDict)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus BSAutoGuess_PerformGuess(AutoGuessContextRef, CFDictionaryRef)", 800, "Auto Guess START\n");
  }

  result = 4294960591;
  if (a1 && theDict)
  {
    if (CFDictionaryGetCount(theDict))
    {
      *a1 = theDict;
      CFRetain(theDict);
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      a1[1] = Mutable;
      if (Mutable)
      {
        global_queue = dispatch_get_global_queue(0, 0);
        dispatch_async_f(global_queue, a1, sub_23EBE2D48);
        result = sub_23EBEA0DC(a1[6]);
        if (!result)
        {
          sub_23EBEAB18(a1[6], 17, 0, 0);
          return 0;
        }
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

int *sub_23EBE2D48(uint64_t a1)
{
  ValueAtIndex = 0;
  v1223 = 0;
  v1221 = 0;
  v1218 = 0;
  v1219 = -1;
  v1220 = -1;
  theArray = 0;
  cf = 0;
  v1214 = 0;
  theDict = 0;
  v1224 = 0;
  v2 = MEMORY[0x277CBECE8];
  if (!a1 || (v3 = *a1) == 0 || !CFDictionaryGetCount(v3))
  {
    Mutable = 0;
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_HostCurrentWirelessAssociation");
  v5 = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_HostPreferredNetworks");
  v6 = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_HostPrevConfigFiles");
  *(a1 + 24) = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_HostBrowsedBaseStations");
  *(a1 + 16) = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_CachedBaseStationSettings");
  *(a1 + 32) = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_HostScannedNetworks");
  v7 = sub_23EBDDD20(*a1);
  v8 = sub_23EBDDDC4(*a1);
  v9 = *v2;
  Mutable = CFArrayCreateMutable(*v2, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    v15 = 4294960591;
LABEL_9:
    v16 = 1;
    goto LABEL_10;
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, v11);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  *(a1 + 16) = MutableCopy;
  if (!MutableCopy || ((v17 = *(a1 + 24)) == 0 ? (v18 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128])) : (v18 = CFArrayCreateMutableCopy(v9, 0, v17)), (*(a1 + 24) = v18) == 0 || ((v19 = *(a1 + 32)) == 0 ? (v20 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128])) : (v20 = CFArrayCreateMutableCopy(v9, 0, v19)), (*(a1 + 32) = v20) == 0)))
  {
    v13 = 0;
    v14 = 0;
    v15 = 4294960568;
    goto LABEL_9;
  }

  v1212 = v8;
  if (dword_27E382C08 >= 801)
  {
    v24 = Value;
    v23 = Value != 0;
  }

  else
  {
    if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "State machine starting... \n");
    }

    v21 = dword_27E382C08;
    v22 = Value;
    v23 = Value != 0;
    v24 = v22;
    if (v22 && dword_27E382C08 <= 800)
    {
      if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "currentAssociationNetworkDict: %@\n", v24);
      }

      v21 = dword_27E382C08;
    }

    if (v5 && v21 <= 800)
    {
      if (v21 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "myHostPreferredNetworks: %@\n", v5);
      }

      v21 = dword_27E382C08;
    }

    if (v6 && v21 <= 800 && (v21 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "myHostPreviousConfigFiles: %@\n", v6);
    }

    if (dword_27E382C08 <= 800)
    {
      if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "noWirelessOnHost: %d\n", v7);
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "hostHasPreferredNetworkSupport: %d\n", v8);
      }
    }
  }

  sub_23EBDC01C("obj->browsedBaseStations: \n", *(a1 + 24));
  sub_23EBDC50C("obj->scannedNetworks: \n", *(a1 + 32));
  v1211 = v23;
  if (!v23)
  {
    goto LABEL_64;
  }

  v1225[0] = 0;
  v25 = v24;
  sub_23EB6FF14(v24, v1225, "%kO", @"SSID_STR");
  v15 = v26;
  v2 = MEMORY[0x277CBECE8];
  if (v26)
  {
LABEL_60:
    v13 = 0;
    v14 = 0;
    goto LABEL_9;
  }

  if (!v1225[0])
  {
    goto LABEL_1020;
  }

  if (sub_23EB6B6FC(v1225[0], 0, *(a1 + 32)) == -1)
  {
    v15 = sub_23EBEC4F4(*(a1 + 48), v1225[0], 3, &theDict);
    if (v15)
    {
      goto LABEL_60;
    }

    if (theDict)
    {
      v15 = sub_23EB6FDFC(v9, *(a1 + 32), "%O", v975, v976, v977, v978, v979, theDict);
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      if (v15)
      {
        goto LABEL_60;
      }

      goto LABEL_63;
    }

LABEL_1020:
    v15 = 4294960568;
    goto LABEL_60;
  }

LABEL_63:
  v24 = v25;
LABEL_64:
  v27 = sub_23EBEDC9C(*(a1 + 48), 300);
  if (v27)
  {
    v15 = v27;
    v13 = 0;
    v14 = 0;
    v16 = 1;
LABEL_68:
    v2 = MEMORY[0x277CBECE8];
    goto LABEL_10;
  }

  sub_23EBEAB18(*(a1 + 48), 15, 0, 0);
  if (sub_23EBEA238(*(a1 + 48)))
  {
    v16 = 0;
    v13 = 0;
    v14 = 1;
    v15 = 4294960573;
    goto LABEL_68;
  }

  v1208 = v6;
  v1209 = v5;
  v35 = "(%d) No unconfigured networks are visible because Wi-Fi is disabled.";
  v13 = 0;
  v1210 = 0;
  v1207 = 0;
  v1204 = 0;
  if (!v7)
  {
    v35 = "(%d) No unconfigured networks are visible in Wi-Fi scans.";
  }

  v1205 = v35;
  v1206 = v7;
  v14 = 1;
  v36 = v24;
  v2 = MEMORY[0x277CBECE8];
  while (v14 <= 601)
  {
    if (v14 <= 401)
    {
      if (v14 > 102)
      {
        if (v14 > 104)
        {
          if (v14 != 105)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 401, "AnyBrowsedConfigAppleBasesCreatingNetwork");
            }

            sub_23EBEAB18(*(a1 + 48), 15, 0, 0);
            v142 = sub_23EBE2440(a1, v1223, *(a1 + 24), *(a1 + 32), &theArray);
            if (v142)
            {
              v15 = v142;
              if (v142 == -6727)
              {
                v1224 = 0;
                goto LABEL_465;
              }

              v16 = 0;
LABEL_1214:
              v14 = 401;
              goto LABEL_10;
            }

            if (!theArray)
            {
              v16 = 0;
              v15 = 4294960568;
              goto LABEL_1214;
            }

            Count = CFArrayGetCount(theArray);
            v1224 = Count;
            if (Count == 1)
            {
              sub_23EBDC01C("State 401 count == 1 configed base creating network: \n", theArray);
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
              CFRetain(ValueAtIndex);
              v673 = ValueAtIndex;
              v1225[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
                v674 = v1225[0];
                v673 = ValueAtIndex;
              }

              else
              {
                v674 = &stru_285145FE8;
              }

              v1201 = v674;
              v1202 = sub_23EBDBFC4(v673);
              sub_23EBDBF78("(%d) One existing configured base station named %@ is creating a network called %@.", v826, v827, v828, v829, v830, v831, v832, 401);
              sub_23EBE9710(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_ONE_TRUE", v833, v834, v835, v836, v837);
              v14 = 402;
              goto LABEL_466;
            }

            if (!Count)
            {
LABEL_465:
              sub_23EBDBF78("(%d) No existing configured base stations are creating a network.", v143, v144, v145, v146, v147, v148, v149, 401);
              sub_23EBE9710(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_ZERO_TRUE", v409, v410, v411, v412, v413);
              v14 = 403;
LABEL_466:
              if (theArray)
              {
                CFRelease(theArray);
                theArray = 0;
              }

              if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
              {
                goto LABEL_994;
              }

              v285 = 401;
              goto LABEL_993;
            }

            if (Count < 2)
            {
              v14 = 401;
              goto LABEL_466;
            }

            key = 0;
            sub_23EBDC01C("State 401 count >= 2 configed bases creating network: \n", theArray);
            v15 = sub_23EBE188C(a1, 1, theArray, &key);
            if (theArray)
            {
              CFRelease(theArray);
            }

            theArray = key;
            if (v15 != -6727)
            {
              if (v15)
              {
                goto LABEL_1362;
              }

              if (!key)
              {
LABEL_1363:
                v16 = 0;
                v15 = 4294960568;
                goto LABEL_1364;
              }

              v693 = CFArrayGetCount(key);
              v1224 = v693;
              if (v693 == 1)
              {
                sub_23EBDC01C("State 401 (2) count == 1 configed base creating network: \n", theArray);
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
                CFRetain(ValueAtIndex);
                v931 = ValueAtIndex;
                v1225[0] = &stru_285145FE8;
                if (ValueAtIndex)
                {
                  sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
                  v932 = v1225[0];
                  v931 = ValueAtIndex;
                }

                else
                {
                  v932 = &stru_285145FE8;
                }

                v1201 = v932;
                v1202 = sub_23EBDBFC4(v931);
                sub_23EBDBF78("(%d) One non G-Only configured base station named %@ is creating a network called %@.", v948, v949, v950, v951, v952, v953, v954, 401);
                sub_23EBE9710(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_ONE_TRUE", v955, v956, v957, v958, v959);
LABEL_1009:
                v14 = 402;
                goto LABEL_1010;
              }

              if (!v693)
              {
                sub_23EBDBF78("(%d) No non G-Only configured base stations are creating a network.", v694, v695, v696, v697, v698, v699, v700, 401);
                sub_23EBE9710(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_ZERO_TRUE", v701, v702, v703, v704, v705);
                v14 = 403;
LABEL_1010:
                v2 = MEMORY[0x277CBECE8];
                goto LABEL_466;
              }

              if (v693 >= 2)
              {
                sub_23EBDC01C("State 401 (2) count >= 2 non G-Only configed bases creating network: \n", theArray);
                v933 = sub_23EBE1A10(a1, theArray, &ValueAtIndex);
                if (v933 == -6727)
                {
                  v1201 = v1224;
                  sub_23EBDBF78("(%d) %d existing configured base stations are creating networks. However, one could not be automatically chosen.", v934, v935, v936, v937, v938, v939, v940, 401);
                  sub_23EBE98EC(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_GREATER_THAN_ONE_TRUE", v1224, v960, v961, v962, v963);
                  cf = theArray;
                  CFRetain(theArray);
                  v14 = 1407;
                  goto LABEL_1010;
                }

                v15 = v933;
                if (!v933)
                {
                  if (!ValueAtIndex)
                  {
                    goto LABEL_1363;
                  }

                  CFRetain(ValueAtIndex);
                  v941 = v1224;
                  v942 = ValueAtIndex;
                  v1225[0] = &stru_285145FE8;
                  if (ValueAtIndex)
                  {
                    sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
                    v943 = v1225[0];
                    v942 = ValueAtIndex;
                  }

                  else
                  {
                    v943 = &stru_285145FE8;
                  }

                  v1202 = v943;
                  v1203 = sub_23EBDBFC4(v942);
                  v1201 = v941;
                  sub_23EBDBF78("(%d) %d existing configured base stations are creating networks. The base station named %@ which creates the network called %@ was automatically chosen.", v964, v965, v966, v967, v968, v969, v970, 401);
                  sub_23EBE98EC(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_GREATER_THAN_ONE_TRUE", v1224, v971, v972, v973, v974);
                  goto LABEL_1009;
                }

LABEL_1362:
                v16 = 0;
LABEL_1364:
                v14 = 401;
                goto LABEL_68;
              }
            }

            v14 = 401;
            goto LABEL_1010;
          }

          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 105, "IsAssociatedToNetworkForSTAOnlyDevice");
          }

          v1221 = 0;
          if (!v1211)
          {
            goto LABEL_439;
          }

          v1225[0] = 0;
          key = 0;
          v259 = sub_23EB6A1FC(v1210);
          sub_23EB6FF14(v36, v1225, "%kO", @"SSID_STR");
          if (v260)
          {
            v15 = v260;
            goto LABEL_1218;
          }

          if (!v1225[0])
          {
            goto LABEL_1104;
          }

          v261 = sub_23EB6B7D0(v1225[0], 3, 0, *(a1 + 32));
          if (v261 == -1)
          {
            v15 = 4294960560;
            goto LABEL_1218;
          }

          key = CFArrayGetValueAtIndex(*(a1 + 32), v261);
          if (!key)
          {
            goto LABEL_1104;
          }

          if (v1210 && (v259 - 3) <= 1)
          {
            if (sub_23EC0FA80(v1210, v262, v263, v264) || !sub_23EC0FAC8(key, v28, v29, v30))
            {
              if (key)
              {
                goto LABEL_322;
              }
            }

            else
            {
              v815 = sub_23EBE0544(a1, *(a1 + 32), v1225[0], 1, &key);
              if (v815 != -6727)
              {
                v15 = v815;
                if (v815)
                {
                  goto LABEL_1218;
                }

                if (!key)
                {
LABEL_1104:
                  v15 = 4294960568;
LABEL_1218:
                  v16 = 0;
                  v14 = 105;
                  goto LABEL_10;
                }

LABEL_322:
                if (sub_23EC0FAA4(v1210, v28, v29, v30))
                {
                  if (key)
                  {
                    goto LABEL_324;
                  }
                }

                else if (!sub_23EC0FA3C(key, v28, v29, v30) && key)
                {
                  goto LABEL_324;
                }
              }
            }
          }

          else
          {
LABEL_324:
            v265 = CFArrayCreateMutable(v9, 1, MEMORY[0x277CBF128]);
            theArray = v265;
            if (!v265)
            {
              goto LABEL_1104;
            }

            CFArrayAppendValue(v265, key);
            if (v1210)
            {
              v266 = v1210;
            }

            else
            {
              v266 = v1223;
            }

            v15 = sub_23EBDDBF8(theArray, v266, 0);
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            if (v15 != -6727)
            {
              if (v15)
              {
                goto LABEL_1218;
              }

              v1221 = key;
              CFRetain(key);
            }
          }

          if (v1221)
          {
            v1225[0] = &stru_285145FE8;
            sub_23EB6FF14(v1221, v1225, "%ks.%ks", "txt", "raNm");
            v1201 = v1225[0];
            sub_23EBDBF78("(%d) Current network called %@ will be joined by STA-only device.", v267, v268, v269, v270, v271, v272, v273, 105);
            v14 = 1403;
            v279 = "CURRENT_NETWORK_FOR_STA_ONLY_TO_JOIN_IS_TRUE";
          }

          else
          {
LABEL_439:
            sub_23EBDBF78("(%d) No current network for the STA-only device to join.", v28, v29, v30, v31, v32, v33, v34, 105);
            v14 = 700;
            v279 = "CURRENT_NETWORK_FOR_STA_ONLY_TO_JOIN_IS_FALSE";
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v279, v274, v275, v276, v277, v278);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_994;
          }

          v285 = 105;
          goto LABEL_993;
        }

        if (v14 == 103)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 103, "HasRestoreProfileOrPreviousConfigFile");
          }

          if (sub_23EB6B268(v1223))
          {
            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v236 = v1225[0];
            }

            else
            {
              v236 = &stru_285145FE8;
            }

            v1201 = v236;
            sub_23EBDBF78("(%d) The chosen base station %@ has a restore profile.", v229, v230, v231, v232, v233, v234, v235, 103);
            goto LABEL_861;
          }

          if (sub_23EBDD2D4(v1223, v1208))
          {
            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v544 = v1225[0];
            }

            else
            {
              v544 = &stru_285145FE8;
            }

            v1201 = v544;
            sub_23EBDBF78("(%d) The chosen base station %@ has a previous configuration file.", v537, v538, v539, v540, v541, v542, v543, 103);
LABEL_861:
            v14 = 602;
            v782 = "TEXT_RECORD_HAS_PROFILE_OR_PREVIOUS_CONFIG_FILE_TRUE";
          }

          else
          {
            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v711 = v1225[0];
            }

            else
            {
              v711 = &stru_285145FE8;
            }

            v1201 = v711;
            sub_23EBDBF78("(%d) The chosen base station %@ does not have a restore profile or previous configuration file.", v537, v538, v539, v540, v541, v542, v543, 103);
            v14 = 501;
            v782 = "TEXT_RECORD_HAS_PROFILE_OR_PREVIOUS_CONFIG_FILE_FALSE";
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v782, v598, v599, v600, v601, v602);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_994;
          }

          v285 = 103;
          goto LABEL_993;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 104, "IsSTAOnlyDevice");
        }

        if (sub_23EB6C0E0(v1223))
        {
          v14 = 105;
          v80 = "(%d) This base station is a STA-only device.";
          v81 = "CHOSEN_BASE_STATION_IS_STA_ONLY_TRUE";
        }

        else
        {
          sub_23EBDFE68(a1, v1223, 0, 0);
          if (v503 == -6768)
          {
            v14 = 1102;
            v80 = "(%d) Security error reading chosen base. We don't support it with this software.";
            v81 = "CHOSEN_BASE_STATION_IS_OLDFW_TRUE";
          }

          else
          {
            v15 = v503;
            if (v503)
            {
              v16 = 0;
              v14 = 104;
              goto LABEL_10;
            }

            v14 = 103;
            v80 = "(%d) This base station is not a STA-only device.";
            v81 = "CHOSEN_BASE_STATION_IS_STA_ONLY_FALSE";
          }
        }

        sub_23EBDBF78(v80, v73, v74, v75, v76, v77, v78, v79, 104);
        sub_23EBE9710(Mutable, byte_27E383C00, v81, v650, v651, v652, v653, v654);
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          v285 = 104;
LABEL_993:
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Exiting state: %d\n********************************************************************************\n\n", v285);
        }
      }

      else
      {
        if (v14 > 100)
        {
          if (v14 != 101)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 102, "IsChosenBaseStationConfigurable");
            }

            sub_23EBEAB18(*(a1 + 48), 16, 0, v1223);
            if (sub_23EBDCF40(v1223))
            {
              v14 = 1101;
              v140 = "(%d) This base station is an 802.11g model. We don't support it with this software.";
              v141 = "CHOSEN_BASE_STATION_IS_80211G_TRUE";
            }

            else
            {
              v504 = sub_23EBDCFD0(v1223);
              v505 = !v504;
              if (v504)
              {
                v140 = "(%d) This base station is too new to be set up with this software.";
              }

              else
              {
                v140 = "(%d) This base station is not an 802.11g model. OK to continue.";
              }

              if (v505)
              {
                v141 = "CHOSEN_BASE_STATION_IS_80211G_FALSE";
              }

              else
              {
                v141 = "CHOSEN_BASE_STATION_IS_TOO_NEW_TRUE";
              }

              if (v505)
              {
                v14 = 104;
              }

              else
              {
                v14 = 1104;
              }
            }

            sub_23EBDBF78(v140, v133, v134, v135, v136, v137, v138, v139, 102);
            sub_23EBE9710(Mutable, byte_27E383C00, v141, v506, v507, v508, v509, v510);
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_994;
            }

            v285 = 102;
            goto LABEL_993;
          }

          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 101, "AnyUnconfiguredAppleBaseStationsDiscovered");
          }

          v237 = sub_23EBDD05C(*(a1 + 24), &theDict);
          if (v237 != -6727)
          {
            v15 = v237;
            if (v237)
            {
              goto LABEL_1198;
            }

            if (theDict)
            {
              v1224 = CFDictionaryGetCount(theDict);
              sub_23EBDC8C0("State 101 unconfigured bases: \n", theDict);
              if (v1224 != 1)
              {
                if (v1224)
                {
                  if (v1224 >= 2)
                  {
                    v15 = sub_23EBE0F68(theDict, v1208, &v1223);
                    if (theDict)
                    {
                      CFRelease(theDict);
                      theDict = 0;
                    }

                    if (v15)
                    {
                      v16 = 0;
                    }

                    else
                    {
                      if (v1223)
                      {
                        CFRetain(v1223);
                        v252 = v1224;
                        v253 = &stru_285145FE8;
                        v1225[0] = &stru_285145FE8;
                        if (v1223)
                        {
                          sub_23EB6FF14(v1223, v1225, "%ks", "name");
                          v253 = v1225[0];
                        }

                        v1201 = v252;
                        v1202 = v253;
                        sub_23EBDBF78("(%d) Found %d unconfigured base stations and automatically chose to configure the base station named %@.", v245, v246, v247, v248, v249, v250, v251, 101);
                        v14 = 102;
                        v258 = "NUMBER_UNCONFIGURED_BASES_DISCOVERED_IS_GREATER_THAN_ONE_TRUE";
                        v2 = MEMORY[0x277CBECE8];
                        goto LABEL_506;
                      }

                      v16 = 0;
                      v15 = 4294960568;
                    }

                    v14 = 101;
                    goto LABEL_68;
                  }

                  v14 = 101;
LABEL_507:
                  if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
                  {
                    goto LABEL_994;
                  }

                  v285 = 101;
                  goto LABEL_993;
                }

LABEL_505:
                sub_23EBDBF78("(%d) No unconfigured base stations are on the current network.", v238, v239, v240, v241, v242, v243, v244, 101);
                v14 = 801;
                v258 = "NUMBER_UNCONFIGURED_BASES_DISCOVERED_IS_ZERO_TRUE";
                goto LABEL_506;
              }

              v15 = sub_23EBDDF6C(theDict, &v1223);
              if (theDict)
              {
                CFRelease(theDict);
                theDict = 0;
              }

              if (!v15)
              {
                if (!v1223)
                {
                  goto LABEL_1199;
                }

                CFRetain(v1223);
                v1225[0] = &stru_285145FE8;
                if (v1223)
                {
                  sub_23EB6FF14(v1223, v1225, "%ks", "name");
                  v692 = v1225[0];
                }

                else
                {
                  v692 = &stru_285145FE8;
                }

                v1201 = v692;
                sub_23EBDBF78("(%d) One unconfigured base station %@ is connected and has been chosen.", v685, v686, v687, v688, v689, v690, v691, 101);
                v14 = 102;
                v258 = "NUMBER_UNCONFIGURED_BASES_DISCOVERED_IS_ONE_TRUE";
LABEL_506:
                sub_23EBE98EC(Mutable, byte_27E383C00, v258, v1224, v254, v255, v256, v257);
                goto LABEL_507;
              }

LABEL_1198:
              v16 = 0;
            }

            else
            {
LABEL_1199:
              v16 = 0;
              v15 = 4294960568;
            }

            v14 = 101;
            goto LABEL_10;
          }

          v1224 = 0;
          goto LABEL_505;
        }

        if (v14 != 1)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 10, "WhatTypeOfRecordWasSpecified");
          }

          v54 = sub_23EBE277C(*a1);
          v55 = *a1;
          if (v54)
          {
            sub_23EB6FF14(v55, &v1223, "%ks", "BSAutoGuessContext_ChosenUnconfiguredBrowseRecord");
            if (v56)
            {
              goto LABEL_1193;
            }

            if (v1223)
            {
              CFRetain(v1223);
              sub_23EBDCB98("Base station is specified by a bonjour record", v1223);
              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v64 = v1225[0];
              }

              else
              {
                v64 = &stru_285145FE8;
              }

              v1201 = v64;
              sub_23EBDBF78("(%d) The base station named %@ was specified with a Bonjour record.", v57, v58, v59, v60, v61, v62, v63, 10);
              v14 = 102;
              v644 = "SIG_UNCONFIGURED_BASE_SPECIFIED_BY_BONJOUR_RECORD_TRUE";
              goto LABEL_886;
            }

LABEL_1194:
            v16 = 0;
            v15 = 4294960568;
LABEL_1195:
            v14 = 10;
            goto LABEL_10;
          }

          if (sub_23EBE2820(v55))
          {
            sub_23EB6FF14(*a1, &v1221, "%ks", "BSAutoGuessContext_ChosenUnconfiguredScanRecord");
            if (v56)
            {
LABEL_1193:
              v15 = v56;
              v16 = 0;
              goto LABEL_1195;
            }

            if (!v1221)
            {
              goto LABEL_1194;
            }

            CFRetain(v1221);
            sub_23EBDCCB4("Base station is specified by a wireless scan record", v1221);
            v1225[0] = &stru_285145FE8;
            if (v1221)
            {
              sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR");
              v502 = v1225[0];
            }

            else
            {
              v502 = &stru_285145FE8;
            }

            v1201 = v502;
            sub_23EBDBF78("(%d) The base station named %@ was specified with a Wi-Fi scan", v495, v496, v497, v498, v499, v500, v501, 10);
            v14 = 807;
            v644 = "SIG_UNCONFIGURED_BASE_SPECIFIED_BY_WIRELESS_SCAN_RECORD_TRUE";
LABEL_886:
            sub_23EBE9710(Mutable, byte_27E383C00, v644, v639, v640, v641, v642, v643);
          }

          else
          {
            v14 = 10;
          }

          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_994;
          }

          v285 = 10;
          goto LABEL_993;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1, "CallerSpecifiedUnconfiguredBaseStation");
        }

        if (sub_23EBE28C4(*a1))
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "Unconfigured base station passed in to state machine");
          }

          sub_23EBDBF78("(%d) The user chose a specific base station to set up", v217, v218, v219, v220, v221, v222, v223, 1);
          sub_23EBE9710(Mutable, byte_27E383C00, "SIG_UNCONFIGURED_BASE_IN_IOCONTEXT_DICTIONARY_TRUE", v224, v225, v226, v227, v228);
          v14 = 10;
LABEL_588:
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_994;
          }

          v285 = 1;
          goto LABEL_993;
        }

        if (dword_27E382C08 <= 800)
        {
          if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "(%d) No unconfigured base station passed in to state machine", 1);
          }

          v14 = 101;
          goto LABEL_588;
        }

        v14 = 101;
      }
    }

    else
    {
      if (v14 > 501)
      {
        if (v14 > 503)
        {
          if (v14 == 504)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 504, "NumberHostBrowsedBaseStations");
            }

            v294 = sub_23EBDD20C(*(a1 + 24));
            v1224 = v294;
            if (v294)
            {
              v1201 = v294;
              sub_23EBDBF78("(%d) %d existing base stations have been found.", v295, v296, v297, v298, v299, v300, v301, 504);
              v14 = 401;
              v307 = "HOST_BASE_STATIONS_BROWSED_TRUE";
            }

            else
            {
              sub_23EBDBF78("(%d) No existing base stations have been found.", v295, v296, v297, v298, v299, v300, v301, 504);
              v14 = 700;
              v307 = "HOST_BASE_STATIONS_BROWSED_FALSE";
            }

            sub_23EBE9710(Mutable, byte_27E383C00, v307, v302, v303, v304, v305, v306);
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_994;
            }

            v285 = 504;
          }

          else if (v14 == 505)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 505, "HasDHCPLease");
            }

            if (sub_23EBDCE88(v1223))
            {
              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v392 = v1225[0];
              }

              else
              {
                v392 = &stru_285145FE8;
              }

              v1201 = v392;
              sub_23EBDBF78("(%d) The base station named %@ has a DHCP lease.", v385, v386, v387, v388, v389, v390, v391, 505);
              v14 = 506;
              v620 = "BASE_HAS_DHCP_LEASE_TRUE";
            }

            else
            {
              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v564 = v1225[0];
              }

              else
              {
                v564 = &stru_285145FE8;
              }

              v1201 = v564;
              sub_23EBDBF78("(%d) The base station named %@ does not have a DHCP lease.", v385, v386, v387, v388, v389, v390, v391, 505);
              v14 = 503;
              v620 = "BASE_HAS_DHCP_LEASE_FALSE";
            }

            sub_23EBE9710(Mutable, byte_27E383C00, v620, v615, v616, v617, v618, v619);
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_994;
            }

            v285 = 505;
          }

          else
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 506, "HasPublicRoutableIPAddress");
            }

            if (sub_23EBDFBC0(a1, v1223))
            {
              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v44 = v1225[0];
              }

              else
              {
                v44 = &stru_285145FE8;
              }

              v1201 = v44;
              sub_23EBDBF78("(%d) The base station named %@ has a public routable IP address.", v37, v38, v39, v40, v41, v42, v43, 506);
              v14 = 1701;
              v608 = "BASE_HAS_PUBLIC_ROUTABLE_IP_TRUE";
            }

            else
            {
              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v562 = v1225[0];
              }

              else
              {
                v562 = &stru_285145FE8;
              }

              v1201 = v562;
              sub_23EBDBF78("(%d) The base station named %@ does not have a public routable IP address.", v37, v38, v39, v40, v41, v42, v43, 506);
              v14 = 503;
              v608 = "BASE_HAS_PUBLIC_ROUTABLE_IP_FALSE";
            }

            sub_23EBE9710(Mutable, byte_27E383C00, v608, v603, v604, v605, v606, v607);
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_994;
            }

            v285 = 506;
          }

          goto LABEL_993;
        }

        if (v14 == 502)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 502, "UnconfiguredWANReportsPPPoEServerAvailable");
          }

          if (sub_23EBDCDD0(v1223))
          {
            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v384 = v1225[0];
            }

            else
            {
              v384 = &stru_285145FE8;
            }

            v1201 = v384;
            sub_23EBDBF78("(%d) A PPPoE server is available to the base station named %@.", v377, v378, v379, v380, v381, v382, v383, 502);
            v14 = 1701;
            v614 = "BASE_HAS_PPPOE_AVAILABLE_TRUE";
          }

          else
          {
            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v563 = v1225[0];
            }

            else
            {
              v563 = &stru_285145FE8;
            }

            v1201 = v563;
            sub_23EBDBF78("(%d) A PPPoE server is not available to the base station named %@.", v377, v378, v379, v380, v381, v382, v383, 502);
            v14 = 505;
            v614 = "BASE_HAS_PPPOE_AVAILABLE_FALSE";
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v614, v609, v610, v611, v612, v613);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_994;
          }

          v285 = 502;
          goto LABEL_993;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 503, "NumberAirPortBaseStationsOnWAN");
        }

        v1224 = 0;
        v195 = sub_23EBB7360(v1223, @"local.", @"_airport._tcp", 0, 2u, 1, &theDict);
        if (v195 != -6735)
        {
          v15 = v195;
          v1225[0] = 0;
          if (v195)
          {
            goto LABEL_1105;
          }

          if (!theDict)
          {
            goto LABEL_1166;
          }

          v203 = CFDictionaryGetCount(theDict);
          v196 = theDict;
          if (v203)
          {
            sub_23EBDC8C0("State 501 remote browse results \n", theDict);
            v15 = sub_23EBDE648(theDict, v1225);
            if (theDict)
            {
              CFRelease(theDict);
              theDict = 0;
            }

            if (v15)
            {
LABEL_1105:
              v16 = 0;
              goto LABEL_1272;
            }

            if (!v1225[0])
            {
              goto LABEL_1166;
            }

            v15 = sub_23EBE220C(a1, v1225[0], *(a1 + 24), *(a1 + 32), &theArray);
            if (v1225[0])
            {
              CFRelease(v1225[0]);
              v1225[0] = 0;
            }

            if (v15 == -6727)
            {
              v1224 = 0;
            }

            else
            {
              if (v15)
              {
                goto LABEL_1105;
              }

              if (!theArray)
              {
LABEL_1166:
                v16 = 0;
                v15 = 4294960568;
                goto LABEL_1272;
              }

              v1224 = CFArrayGetCount(theArray);
            }
          }

          else if (theDict)
          {
            CFRelease(theDict);
            theDict = 0;
          }
        }

        if (v1224 != 1)
        {
          if (!v1224)
          {
            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v713 = v1225[0];
            }

            else
            {
              v713 = &stru_285145FE8;
            }

            v1201 = v713;
            sub_23EBDBF78("(%d) No base stations are detected on the WAN port of the base station named %@.", v196, v197, v198, v199, v200, v201, v202, 503);
            sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_BASE_STATIONS_ON_WAN_PORT_IS_ZERO_TRUE", v1224, v733, v734, v735, v736);
            v14 = 504;
            goto LABEL_965;
          }

          if (v1224 < 2)
          {
            v14 = 503;
LABEL_965:
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_994;
            }

            v285 = 503;
            goto LABEL_993;
          }

          if (sub_23EBE1A10(a1, theArray, &ValueAtIndex) == -6727)
          {
            v731 = v1224;
            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v732 = v1225[0];
            }

            else
            {
              v732 = &stru_285145FE8;
            }

            v1201 = v731;
            v1202 = v732;
            sub_23EBDBF78("(%d) %d base stations are detected on the WAN port of the base station named %@. However, one could not be automatically chosen as a canidate for extension.", v724, v725, v726, v727, v728, v729, v730, 503);
            sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_BASE_STATIONS_ON_WAN_PORT_IS_GREATER_THAN_ONE_TRUE", v1224, v913, v914, v915, v916);
            cf = theArray;
            CFRetain(theArray);
            v14 = 1502;
LABEL_964:
            v2 = MEMORY[0x277CBECE8];
            goto LABEL_965;
          }

          v816 = sub_23EBDE464(ValueAtIndex, *(a1 + 24), &ValueAtIndex);
          if (v816 && (v15 = v816, v816 != -6727))
          {
            v16 = 0;
          }

          else
          {
            if (ValueAtIndex)
            {
              CFRetain(ValueAtIndex);
              v824 = v1224;
              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v825 = v1225[0];
              }

              else
              {
                v825 = &stru_285145FE8;
              }

              v917 = &stru_285145FE8;
              v1225[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
                v917 = v1225[0];
              }

              v1202 = v825;
              v1203 = v917;
              v1201 = v824;
              sub_23EBDBF78("(%d) %d base stations are detected on the WAN port of the base station named %@. The base station named %@ was automatically chosen as a canidate for extension.", v817, v818, v819, v820, v821, v822, v823, 503);
              sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_BASE_STATIONS_ON_WAN_PORT_IS_GREATER_THAN_ONE_TRUE", v1224, v918, v919, v920, v921);
              v14 = 1501;
              goto LABEL_964;
            }

            v16 = 0;
            v15 = 4294960569;
          }

          v14 = 503;
          goto LABEL_68;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        v714 = CFArrayGetValueAtIndex(theArray, 0);
        v715 = sub_23EBDE464(v714, *(a1 + 24), &ValueAtIndex);
        if (v715)
        {
          v15 = v715;
          if (v715 != -6727)
          {
            goto LABEL_1105;
          }
        }

        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
          v1225[0] = &stru_285145FE8;
          if (ValueAtIndex)
          {
            sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
            v723 = v1225[0];
          }

          else
          {
            v723 = &stru_285145FE8;
          }

          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
            v742 = v1225[0];
          }

          else
          {
            v742 = &stru_285145FE8;
          }

          v1201 = v723;
          v1202 = v742;
          sub_23EBDBF78("(%d) One base station named %@ is detected on the WAN port of the base station named %@.", v716, v717, v718, v719, v720, v721, v722, 503);
          sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_BASE_STATIONS_ON_WAN_PORT_IS_ONE_TRUE", v1224, v743, v744, v745, v746);
          v14 = 1501;
          goto LABEL_965;
        }

        v16 = 0;
        v15 = 4294960569;
LABEL_1272:
        v14 = 503;
        goto LABEL_10;
      }

      if (v14 > 403)
      {
        if (v14 == 404)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 404, "AnyOtherBrowsedConfAppleBasesInSTAMode");
          }

          v316 = sub_23EBE15C4(a1, *(a1 + 24), *(a1 + 32), &theArray);
          if (v316)
          {
            v15 = v316;
            if (v316 != -6727)
            {
              goto LABEL_1276;
            }

            v1224 = 0;
LABEL_374:
            sub_23EBDBF78("(%d) No existing configured base stations are joined to a network.", v317, v318, v319, v320, v321, v322, v323, 404);
            v14 = 700;
            v329 = "NUMBER_BROWSED_BASE_STATIONS_IN_STA_MODE_NETWORKS_IS_ZERO_TRUE";
LABEL_893:
            sub_23EBE9710(Mutable, byte_27E383C00, v329, v324, v325, v326, v327, v328);
          }

          else
          {
            if (!theArray)
            {
              goto LABEL_1165;
            }

            v479 = CFArrayGetCount(theArray);
            v1224 = v479;
            if (v479 == 1)
            {
              v480 = CFArrayGetValueAtIndex(theArray, 0);
              if (!v480)
              {
                goto LABEL_1165;
              }

              v481 = sub_23EBE0544(a1, *(a1 + 32), v480, 3, &theDict);
              if (v481)
              {
                v15 = v481;
LABEL_1276:
                v16 = 0;
              }

              else
              {
                if (theDict)
                {
                  v1221 = theDict;
                  CFRetain(theDict);
                  if (theDict)
                  {
                    CFRelease(theDict);
                    theDict = 0;
                  }

                  v1225[0] = &stru_285145FE8;
                  if (v1221)
                  {
                    sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR");
                    v489 = v1225[0];
                  }

                  else
                  {
                    v489 = &stru_285145FE8;
                  }

                  v1201 = v489;
                  sub_23EBDBF78("(%d) All the existing configured base stations are joining the same network called %@.", v482, v483, v484, v485, v486, v487, v488, 404);
                  v14 = 1403;
                  v329 = "NUMBER_BROWSED_BASE_STATIONS_IN_STA_MODE_NETWORKS_IS_ONE_TRUE";
                  goto LABEL_893;
                }

LABEL_1165:
                v16 = 0;
                v15 = 4294960568;
              }

              v14 = 404;
              goto LABEL_10;
            }

            if (v479 < 2)
            {
              goto LABEL_374;
            }

            v1201 = v479;
            sub_23EBDBF78("(%d) The existing configured base stations are joined to %d different networks.", v317, v318, v319, v320, v321, v322, v323, 404);
            sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_BROWSED_BASE_STATIONS_IN_STA_MODE_NETWORKS_IS_GREATER_THAN_ONE_TRUE", v1224, v582, v583, v584, v585);
            v15 = sub_23EBE0748(a1, *(a1 + 32), theArray, &cf);
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            if (v15)
            {
              v16 = 0;
              v14 = 1406;
              goto LABEL_10;
            }

            v14 = 1406;
            if (!cf)
            {
              v16 = 0;
              v15 = 4294960568;
              goto LABEL_10;
            }
          }

          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }

          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_994;
          }

          v285 = 404;
          goto LABEL_993;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 501, "UnconfiguredBaseStationHasEthernetLink");
        }

        v1224 = 0;
        v169 = sub_23EBDF140(a1, v1223, 0, &v1224);
        if (v169)
        {
          v15 = v169;
          if (v169 != -6727)
          {
            v16 = 0;
            v14 = 501;
            goto LABEL_10;
          }
        }

        if (v1224)
        {
          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
            v177 = v1225[0];
          }

          else
          {
            v177 = &stru_285145FE8;
          }

          v1201 = v177;
          sub_23EBDBF78("(%d) An Ethernet port of the base station named %@ is plugged in.", v170, v171, v172, v173, v174, v175, v176, 501);
          v14 = 502;
          v626 = "BASE_HAS_WAN_PLUGGED_IN_TRUE";
        }

        else
        {
          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
            v565 = v1225[0];
          }

          else
          {
            v565 = &stru_285145FE8;
          }

          v1201 = v565;
          sub_23EBDBF78("(%d) An Ethernet port of the base station named %@ is not plugged in.", v170, v171, v172, v173, v174, v175, v176, 501);
          v14 = 504;
          v626 = "BASE_HAS_WAN_PLUGGED_IN_FALSE";
        }

        sub_23EBE9710(Mutable, byte_27E383C00, v626, v621, v622, v623, v624, v625);
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          v285 = 501;
          goto LABEL_993;
        }
      }

      else
      {
        if (v14 == 402)
        {
          LODWORD(key) = 0;
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 402, "IsExistingDeviceInferior");
          }

          LODWORD(key) = 0;
          sub_23EBE1188(a1, v1223, ValueAtIndex, &key);
          switch(key)
          {
            case 3:
              v1225[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
                v580 = v1225[0];
              }

              else
              {
                v580 = &stru_285145FE8;
              }

              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v779 = v1225[0];
              }

              else
              {
                v779 = &stru_285145FE8;
              }

              v1201 = v580;
              v1202 = v779;
              sub_23EBDBF78("(%d) The existing base station named %@ is unconfigurable (non-SRP FW) but will be replaced by the new base station named %@", v308, v309, v310, v311, v312, v313, v314, 402);
              v14 = 1409;
              v778 = "PREVIOUS_DEVICE_IS_UNCONFIGURABLE_OLD_FW_TRUE";
              break;
            case 2:
              v1225[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
                v579 = v1225[0];
              }

              else
              {
                v579 = &stru_285145FE8;
              }

              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v772 = v1225[0];
              }

              else
              {
                v772 = &stru_285145FE8;
              }

              v1201 = v579;
              v1202 = v772;
              sub_23EBDBF78("(%d) The existing base station named %@ is unconfigurable (Q61/P81) but will be replaced by the new base station named %@", v308, v309, v310, v311, v312, v313, v314, 402);
              v14 = 1408;
              v778 = "PREVIOUS_DEVICE_IS_UNCONFIGURABLE_Q61_P81_TRUE";
              break;
            case 1:
              v1225[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
                v315 = v1225[0];
              }

              else
              {
                v315 = &stru_285145FE8;
              }

              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v780 = v1225[0];
              }

              else
              {
                v780 = &stru_285145FE8;
              }

              v1201 = v315;
              v1202 = v780;
              sub_23EBDBF78("(%d) The existing base station named %@ is inferior to the new base station named %@", v308, v309, v310, v311, v312, v313, v314, 402);
              v14 = 1402;
              v778 = "EXISTING_DEVICE_IS_INFERIOR_TRUE";
              break;
            default:
              v1225[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
                v581 = v1225[0];
              }

              else
              {
                v581 = &stru_285145FE8;
              }

              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v781 = v1225[0];
              }

              else
              {
                v781 = &stru_285145FE8;
              }

              v1201 = v581;
              v1202 = v781;
              sub_23EBDBF78("(%d) Existing base station named %@ is not inferior to the new base station named %@", v308, v309, v310, v311, v312, v313, v314, 402);
              v14 = 1401;
              v778 = "EXISTING_DEVICE_IS_INFERIOR_FALSE";
              break;
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v778, v773, v774, v775, v776, v777);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_994;
          }

          v285 = 402;
          goto LABEL_993;
        }

        LOBYTE(key) = 0;
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 403, "ChosenBaseSupportsSTAMode");
        }

        v90 = sub_23EBDF2B4(a1, v1223, 1112757313, &key);
        if (v90)
        {
LABEL_1103:
          v15 = v90;
          v16 = 0;
          v14 = 403;
          goto LABEL_68;
        }

        if (!key)
        {
          goto LABEL_444;
        }

        v98 = sub_23EB6A2C0(v1223);
        if (v98 >= 0x77)
        {
          v99 = v98;
          LOBYTE(v1225[0]) = 0;
          v90 = sub_23EBDF2B4(a1, v1223, 1632923251, v1225);
          if (v90)
          {
            goto LABEL_1103;
          }

          if (!LOBYTE(v1225[0]))
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "Ignoring kACPFeatureCodeBeingSTA for this product id:(%d)", v99);
            }

            LOBYTE(key) = 0;
          }
        }

        if (key)
        {
          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
            v100 = v1225[0];
          }

          else
          {
            v100 = &stru_285145FE8;
          }

          v1201 = v100;
          sub_23EBDBF78("(%d) Chosen base station named %@ supports STA mode", v91, v92, v93, v94, v95, v96, v97, 403);
          v14 = 404;
          v638 = "CHOSEN_BASE_STATION_SUPPORTS_STA_TRUE";
        }

        else
        {
LABEL_444:
          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
            v393 = v1225[0];
          }

          else
          {
            v393 = &stru_285145FE8;
          }

          v1201 = v393;
          sub_23EBDBF78("(%d) Chosen base station named %@ does not support STA mode", v91, v92, v93, v94, v95, v96, v97, 403);
          v14 = 700;
          v638 = "CHOSEN_BASE_STATION_SUPPORTS_STA_FALSE";
        }

        sub_23EBE9710(Mutable, byte_27E383C00, v638, v633, v634, v635, v636, v637);
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          v285 = 403;
          goto LABEL_993;
        }
      }
    }

LABEL_994:
    v15 = 4294960573;
    if (sub_23EBEA238(*(a1 + 48)))
    {
      goto LABEL_1060;
    }
  }

  if (v14 <= 700)
  {
    if (v14 <= 605)
    {
      if (v14 > 603)
      {
        if (v14 == 604)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 604, "CheckRestoreConfigIsBridgeMode");
          }

          if (v1219 == 3)
          {
            v14 = 604;
            v109 = sub_23EBE0B4C(604, Mutable, v1220, 0xFFFFFFFFLL, v1218, @"BSSetupRecommend_OfferRestore", v1223, 0, 0, 0, 0, a1);
            if (v109)
            {
              goto LABEL_1059;
            }

            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v368 = v1225[0];
            }

            else
            {
              v368 = &stru_285145FE8;
            }

            v1201 = v368;
            sub_23EBDBF78("(%d) The chosen base station named %@ previous configuration is bridge mode and can be restored.", v361, v362, v363, v364, v365, v366, v367, 604);
            v14 = 501;
            v649 = "RESTORE_PROFILE_ROUTER_MODE_IS_BRIDGE_TRUE";
          }

          else
          {
            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v407 = v1225[0];
            }

            else
            {
              v407 = &stru_285145FE8;
            }

            v1201 = v407;
            sub_23EBDBF78("(%d) The chosen base station named %@ previous configuration is not bridge mode.", v28, v29, v30, v31, v32, v33, v34, 604);
            v14 = 608;
            v649 = "RESTORE_PROFILE_ROUTER_MODE_IS_BRIDGE_FALSE";
          }

          sub_23EBE98EC(Mutable, byte_27E383C00, v649, v1224, v645, v646, v647, v648);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_994;
          }

          v285 = 604;
        }

        else
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 605, "RestoreConfigIsWirelessDisabled-CheckUnconfiguredBaseWANLink");
          }

          if (sub_23EB6B5A0(v1223))
          {
            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v185 = v1225[0];
            }

            else
            {
              v185 = &stru_285145FE8;
            }

            v1201 = v185;
            sub_23EBDBF78("(%d) The chosen base station named %@ indicates its WAN port is connected.", v178, v179, v180, v181, v182, v183, v184, 605);
            v14 = 604;
            v597 = "WAN_LINK_TRUE";
          }

          else
          {
            v14 = 605;
            v109 = sub_23EBE0B4C(605, Mutable, v1220, 3, 0, @"BSSetupRecommend_OfferNoRestore", v1223, 0, 0, 0, 0, a1);
            if (v109)
            {
              goto LABEL_1059;
            }

            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v526 = v1225[0];
            }

            else
            {
              v526 = &stru_285145FE8;
            }

            v1201 = v526;
            sub_23EBDBF78("(%d) The chosen base station named %@ indicates its WAN port is not connected.", v519, v520, v521, v522, v523, v524, v525, 605);
            v14 = 501;
            v597 = "WAN_LINK_FALSE";
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v597, v592, v593, v594, v595, v596);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_994;
          }

          v285 = 605;
        }

        goto LABEL_993;
      }

      if (v14 != 602)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 603, "RestoreConfigIsCreateMode-CheckUnconfiguredBaseWANLink");
        }

        if (sub_23EB6B5A0(v1223))
        {
          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
            v72 = v1225[0];
          }

          else
          {
            v72 = &stru_285145FE8;
          }

          v1201 = v72;
          sub_23EBDBF78("(%d) The chosen base station named %@ indicates its WAN port is connected.", v65, v66, v67, v68, v69, v70, v71, 603);
          v14 = 604;
          v591 = "WAN_LINK_TRUE";
        }

        else
        {
          v14 = 603;
          v109 = sub_23EBE0B4C(603, Mutable, v1220, 0xFFFFFFFFLL, v1218, @"BSSetupRecommend_OfferRestore", v1223, 0, 0, 0, 0, a1);
          if (v109)
          {
            goto LABEL_1059;
          }

          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
            v518 = v1225[0];
          }

          else
          {
            v518 = &stru_285145FE8;
          }

          v1201 = v518;
          sub_23EBDBF78("(%d) The chosen base station named %@ indicates its WAN port is not connected.", v511, v512, v513, v514, v515, v516, v517, 603);
          v14 = 501;
          v591 = "WAN_LINK_FALSE";
        }

        sub_23EBE9710(Mutable, byte_27E383C00, v591, v586, v587, v588, v589, v590);
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_994;
        }

        v285 = 603;
        goto LABEL_993;
      }

      key = 0;
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 602, "NetworkModeOfProfileOrPreviousConfigFile");
      }

      sub_23EBEAB18(*(a1 + 48), 14, 0, 0);
      v330 = sub_23EBB0E1C(&v1214, v1223);
      if (v330)
      {
        goto LABEL_1061;
      }

      if (!v1214)
      {
        goto LABEL_1063;
      }

      v330 = sub_23EBDEA88(a1, v1223, 0, &key);
      if (v330)
      {
LABEL_1061:
        v15 = v330;
LABEL_1062:
        v16 = 0;
      }

      else
      {
        if (!key)
        {
          goto LABEL_1063;
        }

        v15 = sub_23EBB1354(v1214, key);
        if (key)
        {
          CFRelease(key);
          key = 0;
        }

        if (v15)
        {
          goto LABEL_1062;
        }

        if (sub_23EB6B268(v1223))
        {
          v331 = sub_23EBB6418(v1214);
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "BSSwitchToRestoreProfile err: %m\n", v331, v1201, v1202, v1203);
          }

          if (!v331)
          {
            goto LABEL_624;
          }
        }

        if (!sub_23EBDD2D4(v1223, v1208))
        {
          goto LABEL_400;
        }

        v1225[0] = 0;
        v330 = sub_23EBDD458(v1223, v1208, v1225);
        if (v330)
        {
          goto LABEL_1061;
        }

        if (v1225[0])
        {
          v339 = sub_23EBB1108(v1214, v1225[0], 0);
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "BSImportFromConfigFile err: %m\n", v339);
          }

          if (v339)
          {
LABEL_400:
            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
              v340 = v1225[0];
            }

            else
            {
              v340 = &stru_285145FE8;
            }

            v1201 = v340;
            sub_23EBDBF78("(%d) The chosen base station %@ does not actually have a restore profile.", v332, v333, v334, v335, v336, v337, v338, 602);
            v14 = 501;
            v660 = "TEXT_RECORD_HAS_PROFILE_OR_PREVIOUS_CONFIG_FILE_FALSE";
LABEL_981:
            sub_23EBE9710(Mutable, byte_27E383C00, v660, v655, v656, v657, v658, v659);
LABEL_982:
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_994;
            }

            v285 = 602;
            goto LABEL_993;
          }

LABEL_624:
          v330 = sub_23EBDEECC(v1214, &v1220, &v1218, &v1219);
          if (v330)
          {
            goto LABEL_1061;
          }

          v14 = 602;
          if (v1220 <= 2)
          {
            if (v1220)
            {
              if (v1220 != 1)
              {
                goto LABEL_982;
              }

              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v712 = v1225[0];
              }

              else
              {
                v712 = &stru_285145FE8;
              }

              v1201 = v712;
              v1202 = v1218;
              sub_23EBDBF78("(%d) The previous settings for the chosen base station named %@ are configured to Join a network called %@.", v566, v567, v568, v569, v570, v571, v572, 602);
              v14 = 606;
              v660 = "RESTORE_PROFILE_NETWORK_MODE_JOIN_TRUE";
            }

            else
            {
              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
                v840 = v1225[0];
              }

              else
              {
                v840 = &stru_285145FE8;
              }

              v1201 = v840;
              v1202 = v1218;
              sub_23EBDBF78("(%d) The previous settings for the chosen base station named %@ are configured to Create a network called %@.", v566, v567, v568, v569, v570, v571, v572, 602);
              v14 = 603;
              v660 = "RESTORE_PROFILE_NETWORK_MODE_CREATE_TRUE";
            }
          }

          else
          {
            switch(v1220)
            {
              case 3:
                v838 = &stru_285145FE8;
                v1225[0] = &stru_285145FE8;
                if (v1223)
                {
                  sub_23EB6FF14(v1223, v1225, "%ks", "name");
                  v838 = v1225[0];
                }

                v1201 = v838;
                sub_23EBDBF78("(%d) The previous settings for the chosen base station named %@ are configured with Wi-Fi disabled.", v566, v567, v568, v569, v570, v571, v572, 602);
                v14 = 605;
                v660 = "BASE_STATION_WIRELESS_ENABLED_FALSE";
                break;
              case 10:
                v1225[0] = &stru_285145FE8;
                if (v1223)
                {
                  sub_23EB6FF14(v1223, v1225, "%ks", "name");
                  v839 = v1225[0];
                }

                else
                {
                  v839 = &stru_285145FE8;
                }

                v1201 = v839;
                v1202 = v1218;
                sub_23EBDBF78("(%d) The previous settings for the chosen base station named %@ are configured to Extend a network called %@ using WDS.", v566, v567, v568, v569, v570, v571, v572, 602);
                v14 = 606;
                v660 = "RESTORE_PROFILE_NETWORK_MODE_WDS_TRUE";
                break;
              case 20:
                v1225[0] = &stru_285145FE8;
                if (v1223)
                {
                  sub_23EB6FF14(v1223, v1225, "%ks", "name");
                  v573 = v1225[0];
                }

                else
                {
                  v573 = &stru_285145FE8;
                }

                v1201 = v573;
                v1202 = v1218;
                sub_23EBDBF78("(%d) The previous settings for the chosen base station named %@ are configured to Extend a network called %@ using DWDS.", v566, v567, v568, v569, v570, v571, v572, 602);
                v14 = 606;
                v660 = "RESTORE_PROFILE_NETWORK_MODE_DWDS_EXTENDER_TRUE";
                break;
              default:
                goto LABEL_982;
            }
          }

          v2 = MEMORY[0x277CBECE8];
          goto LABEL_981;
        }

LABEL_1063:
        v16 = 0;
        v15 = 4294960568;
      }

      v14 = 602;
      goto LABEL_10;
    }

    if (v14 > 607)
    {
      if (v14 != 608)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 700, "PreferredNetworksConsidered");
        }

        if (v1207)
        {
          sub_23EBDBF78("(%d) Already looked at preferred networks.", v28, v29, v30, v31, v32, v33, v34, 700);
          sub_23EBE9710(Mutable, byte_27E383C00, "CONSIDERED_PREFERRED_NETWORKS_TRUE", v186, v187, v188, v189, v190);
          if (sub_23EBE0A74(v1223, v1210, v191, v192))
          {
            if (v1210)
            {
              v193 = v1210;
            }

            else
            {
              v193 = v1223;
            }

            v194 = sub_23EBDDBF8(*(a1 + 32), v193, &cf);
            if (v194 != -6727)
            {
              v15 = v194;
              if (v194)
              {
                v16 = 0;
              }

              else
              {
                if (cf)
                {
                  v14 = 1406;
                  goto LABEL_668;
                }

                v16 = 0;
                v15 = 4294960568;
              }

              v14 = 700;
              goto LABEL_10;
            }

            v14 = 1103;
          }

          else
          {
            v14 = 1701;
          }
        }

        else
        {
          sub_23EBDBF78("(%d) Will look at preferred networks.", v28, v29, v30, v31, v32, v33, v34, 700);
          sub_23EBE9710(Mutable, byte_27E383C00, "CONSIDERED_PREFERRED_NETWORKS_FALSE", v574, v575, v576, v577, v578);
          v14 = 701;
          v1207 = 1;
        }

LABEL_668:
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_994;
        }

        v285 = 700;
        goto LABEL_993;
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 608, "RestoreConfig - Look for DHCP Range Conflict");
      }

      if (sub_23EBDF004(v1214))
      {
        v14 = 608;
        v109 = sub_23EBE0B4C(608, Mutable, v1220, 4, 0, @"BSSetupRecommend_OfferNoRestore", v1223, 0, 0, 0, 0, a1);
        if (v109)
        {
          goto LABEL_1059;
        }

        v1225[0] = &stru_285145FE8;
        if (v1223)
        {
          sub_23EB6FF14(v1223, v1225, "%ks", "name");
          v376 = v1225[0];
        }

        else
        {
          v376 = &stru_285145FE8;
        }

        v1201 = v376;
        sub_23EBDBF78("(%d) The DHCP range in the the previous settings of the chosen base station named %@ conflicts with the network the WAN port is plugged in to.", v369, v370, v371, v372, v373, v374, v375, 608);
        v632 = "DHCP_RANGE_CONFLICT_TRUE";
      }

      else
      {
        v14 = 608;
        v109 = sub_23EBE0B4C(608, Mutable, v1220, 0xFFFFFFFFLL, v1218, @"BSSetupRecommend_OfferRestore", v1223, 0, 0, 0, 0, a1);
        if (v109)
        {
          goto LABEL_1059;
        }

        v1225[0] = &stru_285145FE8;
        if (v1223)
        {
          sub_23EB6FF14(v1223, v1225, "%ks", "name");
          v561 = v1225[0];
        }

        else
        {
          v561 = &stru_285145FE8;
        }

        v1201 = v561;
        sub_23EBDBF78("(%d) The DHCP range in the previous settings of the chosen base station named %@ does not conflict with the network the WAN port is plugged in to.", v554, v555, v556, v557, v558, v559, v560, 608);
        v632 = "DHCP_RANGE_CONFLICT_FALSE";
      }

      sub_23EBE9710(Mutable, byte_27E383C00, v632, v627, v628, v629, v630, v631);
      sub_23EBB0D6C(v1214);
      v1214 = 0;
      if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        goto LABEL_790;
      }

      v661 = 608;
      goto LABEL_789;
    }

    if (v14 == 606)
    {
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 606, "RestoreConfig - Check for Network Visible");
      }

      if (sub_23EBE26E8(v1218, *(a1 + 32)))
      {
        v14 = 606;
        v109 = sub_23EBE0B4C(606, Mutable, v1220, 0xFFFFFFFFLL, v1218, @"BSSetupRecommend_OfferRestore", v1223, 0, 0, 0, 0, a1);
        if (v109)
        {
          goto LABEL_1059;
        }

        v1201 = v1218;
        sub_23EBDBF78("(%d) The network called %@ is visible in the Wi-Fi scan.", v348, v349, v350, v351, v352, v353, v354, 606);
        v14 = 501;
        v360 = "WIRELESS_NETWORK_VISIBLE_IN_NETWORK_SCAN_TRUE";
      }

      else
      {
        v1201 = v1218;
        sub_23EBDBF78("(%d) The network called %@ is not visible in the Wi-Fi scan.", v341, v342, v343, v344, v345, v346, v347, 606);
        v14 = 607;
        v360 = "WIRELESS_NETWORK_VISIBLE_IN_NETWORK_SCAN_FALSE";
      }

      sub_23EBE9710(Mutable, byte_27E383C00, v360, v355, v356, v357, v358, v359);
      if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        goto LABEL_994;
      }

      v285 = 606;
      goto LABEL_993;
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 607, "RestoreConfig - Check for Network via Direct Scan");
    }

    v101 = sub_23EBE0544(a1, *(a1 + 32), v1218, 3, &theDict);
    v15 = v101;
    if ((v101 & 0xFFFFFFF7) != 0xFFFFE5B1)
    {
      if (v101)
      {
        v16 = 0;
LABEL_1216:
        v14 = 607;
        goto LABEL_10;
      }

      if (!theDict)
      {
        v16 = 0;
        v15 = 4294960568;
        goto LABEL_1216;
      }

      v14 = 607;
      v109 = sub_23EBE0B4C(607, Mutable, v1220, 0xFFFFFFFFLL, v1218, @"BSSetupRecommend_OfferRestore", v1223, 0, 0, 0, 0, a1);
      if (v109)
      {
        goto LABEL_1059;
      }

      v1201 = v1218;
      sub_23EBDBF78("(%d) The network called %@ is found in a directed Wi-Fi scan.", v394, v395, v396, v397, v398, v399, v400, 607);
      v406 = "WIRELESS_NETWORK_VISIBLE_IN_DIRECT_NETWORK_SCAN_TRUE";
      goto LABEL_692;
    }

    if (v101 == -6735)
    {
      v14 = 607;
      v109 = sub_23EBE0B4C(607, Mutable, v1220, 1, v1218, @"BSSetupRecommend_OfferNoRestore", v1223, 0, 0, 0, 0, a1);
    }

    else
    {
      if (v101 != -6727)
      {
LABEL_691:
        v1201 = v1218;
        sub_23EBDBF78("(%d) The network called %@ is not found in a directed Wi-Fi scan.", v102, v103, v104, v105, v106, v107, v108, 607);
        v406 = "WIRELESS_NETWORK_VISIBLE_IN_DIRECT_NETWORK_SCAN_FALSE";
LABEL_692:
        sub_23EBE9710(Mutable, byte_27E383C00, v406, v401, v402, v403, v404, v405);
        if (theDict)
        {
          CFRelease(theDict);
          theDict = 0;
        }

        if (v1218)
        {
          CFRelease(v1218);
          v1218 = 0;
        }

        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_790;
        }

        v661 = 607;
LABEL_789:
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Exiting state: %d\n********************************************************************************\n\n", v661);
LABEL_790:
        v14 = 501;
        goto LABEL_994;
      }

      v14 = 607;
      v109 = sub_23EBE0B4C(607, Mutable, v1220, 2, v1218, @"BSSetupRecommend_OfferNoRestore", v1223, 0, 0, 0, 0, a1);
    }

    if (v109)
    {
LABEL_1059:
      v15 = v109;
LABEL_1060:
      v16 = 0;
      goto LABEL_10;
    }

    goto LABEL_691;
  }

  if (v14 > 801)
  {
    if (v14 >= 807)
    {
      if (v14 <= 807)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 807, "IsChosenNetworkConfigurable");
        }

        if (sub_23EBDD648(v1221, v28, v29, v30))
        {
          v14 = 1802;
          v211 = "(%d) This network is an 802.11g model. We don't support it with this software.";
          v212 = "CHOSEN_NETWORK_IS_80211G_TRUE";
        }

        else if (sub_23EBDD6D8(v1221, v204, v205, v206))
        {
          v1210 = v1221;
          v1221 = 0;
          v14 = 1104;
          v211 = "(%d) This network is too new to be set up with this software.";
          v212 = "CHOSEN_NETWORK_IS_TOO_NEW_TRUE";
        }

        else
        {
          v14 = 808;
          v211 = "(%d) This network is not an 802.11g model. OK to continue.";
          v212 = "CHOSEN_NETWORK_IS_80211G_FALSE";
        }

        sub_23EBDBF78(v211, v204, v205, v206, v207, v208, v209, v210, 807);
        sub_23EBE9710(Mutable, byte_27E383C00, v212, v706, v707, v708, v709, v710);
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_994;
        }

        v285 = 807;
        goto LABEL_993;
      }

      if (v14 <= 1100)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 808, "IsSTAOnlyNetwork");
        }

        if (sub_23EC0FA18(v1221, v28, v29, v30))
        {
          v1210 = v1221;
          v1221 = 0;
          v14 = 105;
          v52 = "(%d) This network is a STA-only device.";
          v53 = "CHOSEN_NETWORK_IS_STA_ONLY_TRUE";
        }

        else
        {
          v14 = 802;
          v52 = "(%d) This network is not a STA-only device.";
          v53 = "CHOSEN_NETWORK_IS_STA_ONLY_FALSE";
        }

        sub_23EBDBF78(v52, v45, v46, v47, v48, v49, v50, v51, 808);
        sub_23EBE9710(Mutable, byte_27E383C00, v53, v490, v491, v492, v493, v494);
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_994;
        }

        v285 = 808;
        goto LABEL_993;
      }

      if (v14 <= 1405)
      {
        if (v14 > 1200)
        {
          if (v14 > 1401)
          {
            if (v14 == 1402)
            {
              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1402, "ReplacePreviouslyConfiguredDevice");
              }

              v1094 = sub_23EBE0B4C(1402, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_OfferReplace", v1223, 0, ValueAtIndex, 0, 0, a1);
              if (v1094)
              {
                v15 = v1094;
                v16 = 0;
                v14 = 1402;
                goto LABEL_68;
              }

              v1225[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
              }

              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
              }

              v988 = 1402;
              sub_23EBDBF78("(%d) Offer to Replace the existing base station named %@ with the chosen base station named %@.", v1095, v1096, v1097, v1098, v1099, v1100, v1101, 1402);
              sub_23EBE9710(Mutable, byte_27E383C00, "REPLACE_PREVIOUSLY_CONFIGURED_DEVICE", v1170, v1171, v1172, v1173, v1174);
              v2 = MEMORY[0x277CBECE8];
              if (dword_27E382C08 <= 800)
              {
                if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
                {
                  v988 = 1402;
                  goto LABEL_1347;
                }

                goto LABEL_1346;
              }
            }

            else
            {
              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1403, "JoinWirelessNetwork");
              }

              theArray = 0;
              if (sub_23EBE0A74(v1223, v1210, v29, v30))
              {
                v1037 = (v1210 ? v1210 : v1223);
                v1038 = sub_23EBDDBF8(*(a1 + 32), v1037, &theArray);
                if (v1038)
                {
                  v15 = v1038;
                  if (v1038 != -6727)
                  {
                    goto LABEL_1095;
                  }
                }
              }

              v15 = sub_23EBE0B4C(1403, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_OfferJoinNetwork", v1223, v1210, 0, v1221, theArray, a1);
              if (theArray)
              {
                CFRelease(theArray);
                theArray = 0;
              }

              if (v15)
              {
LABEL_1095:
                v16 = 0;
                v14 = 1403;
                goto LABEL_68;
              }

              v1225[0] = &stru_285145FE8;
              if (v1221)
              {
                sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR");
              }

              if (v1223)
              {
                v1225[0] = &stru_285145FE8;
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
              }

              else
              {
                v1225[0] = &stru_285145FE8;
                if (v1210)
                {
                  sub_23EB6FF14(v1210, v1225, "%kO", @"SSID_STR");
                }
              }

              v988 = 1403;
              sub_23EBDBF78("(%d) Offer to Join the network called %@ with the chosen base station named %@.", v1039, v1040, v1041, v1042, v1043, v1044, v1045, 1403);
              sub_23EBE9710(Mutable, byte_27E383C00, "JOIN_WIRELESS_NETWORK", v1195, v1196, v1197, v1198, v1199);
              v2 = MEMORY[0x277CBECE8];
              if (dword_27E382C08 <= 800)
              {
                if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
                {
                  v988 = 1403;
                  goto LABEL_1347;
                }

                goto LABEL_1346;
              }
            }
          }

          else
          {
            if (v14 != 1201)
            {
              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1401, "ExtendPreviouslyConfiguredDevice");
              }

              v1001 = sub_23EBE0B4C(1401, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_OfferExtendWirelessly", v1223, 0, ValueAtIndex, 0, 0, a1);
              if (v1001)
              {
                v15 = v1001;
                v16 = 0;
                v14 = 1401;
                goto LABEL_68;
              }

              v1225[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
              }

              v1225[0] = &stru_285145FE8;
              if (v1223)
              {
                sub_23EB6FF14(v1223, v1225, "%ks", "name");
              }

              v988 = 1401;
              sub_23EBDBF78("(%d) Offer to Extend the existing base station named %@ wirelessly with the chosen base station named %@.", v1002, v1003, v1004, v1005, v1006, v1007, v1008, 1401);
              sub_23EBE9710(Mutable, byte_27E383C00, "EXTEND_PREVIOUSLY_CONFIGURED_DEVICE_WIRELESSLY", v1185, v1186, v1187, v1188, v1189);
              v2 = MEMORY[0x277CBECE8];
              if (dword_27E382C08 > 800)
              {
                goto LABEL_1347;
              }

              if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
              {
                v988 = 1401;
                goto LABEL_1347;
              }

              goto LABEL_1346;
            }

            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1201, "NothingToConfigure");
            }

            v1074 = sub_23EBE0F24(1201, Mutable, a1);
            if (v1074)
            {
              v15 = v1074;
              v16 = 0;
              v14 = 1201;
              goto LABEL_68;
            }

            v988 = 1201;
            sub_23EBDBF78("(%d) Cannot find any unconfigured AirPort base stations and all configured devices appear to be functioning normally.", v1075, v1076, v1077, v1078, v1079, v1080, v1081, 1201);
            sub_23EBE9710(Mutable, byte_27E383C00, "NOTHING_FOUND_TO_CONFIGURE", v1140, v1141, v1142, v1143, v1144);
            v2 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 <= 800)
            {
              if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
              {
                goto LABEL_1346;
              }

              v988 = 1201;
            }
          }
        }

        else if (v14 > 1102)
        {
          if (v14 == 1103)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1103, "TellUserNoNetworkFoundForSTAOnlyDevice");
            }

            v988 = 1103;
            sub_23EBE0B4C(1103, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_NoNetworkToJoin", v1223, v1210, 0, 0, 0, a1);
            sub_23EBDBF78("(%d) No network was found for the STA-only device.", v1082, v1083, v1084, v1085, v1086, v1087, v1088, 1103);
            sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_NO_NETWORK_FOR_STA_ONLY", v1089, v1090, v1091, v1092, v1093);
            v2 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 > 800)
            {
              goto LABEL_1347;
            }

            if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_1346;
            }

            v988 = 1103;
          }

          else
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1104, "TellUserDeviceIsTooNewToSetUp");
            }

            v988 = 1104;
            sub_23EBE0B4C(1104, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_DeviceIsTooNewToSetUp", v1223, v1210, 0, 0, 0, a1);
            sub_23EBDBF78("(%d) Device is too new to set up.", v1025, v1026, v1027, v1028, v1029, v1030, v1031, 1104);
            sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_DEVICE_IS_TOO_NEW_TO_SET_UP", v1032, v1033, v1034, v1035, v1036);
            v2 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 > 800)
            {
              goto LABEL_1347;
            }

            if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_1346;
            }

            v988 = 1104;
          }
        }

        else if (v14 == 1101)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1101, "TellUserToUseAUFor80211g");
          }

          v988 = 1101;
          sub_23EBE0B4C(1101, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_UseAUFor80211g", v1223, 0, 0, 0, 0, a1);
          sub_23EBDBF78("(%d) Use AirPort Utility for 802.11g to configure this base station.", v1062, v1063, v1064, v1065, v1066, v1067, v1068, 1101);
          sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_USE_AU_FOR_80211G", v1069, v1070, v1071, v1072, v1073);
          v2 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 > 800)
          {
            goto LABEL_1347;
          }

          if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1346;
          }

          v988 = 1101;
        }

        else
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1102, "TellUserAFirmwareUpdateIsRequired");
          }

          v988 = 1102;
          sub_23EBE0B4C(1102, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_FirmwareUpdateRequired", v1223, 0, 0, 0, 0, a1);
          sub_23EBDBF78("(%d) A firmware update is required before configuring this base station.", v989, v990, v991, v992, v993, v994, v995, 1102);
          sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_FIRMWARE_UPDATE_REQUIRED", v996, v997, v998, v999, v1000);
          v2 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 > 800)
          {
            goto LABEL_1347;
          }

          if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1346;
          }

          v988 = 1102;
        }
      }

      else if (v14 <= 1500)
      {
        if (v14 <= 1407)
        {
          if (v14 == 1406)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1406, "AskUserWhichNetworkToJoin");
            }

            v1118 = sub_23EBE0B4C(1406, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_AskUserChooseNetworkToJoin", v1223, v1210, 0, 0, cf, a1);
            if (v1118)
            {
              v15 = v1118;
              v16 = 0;
              v14 = 1406;
              goto LABEL_68;
            }

            if (v1223)
            {
              v1225[0] = &stru_285145FE8;
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
            }

            else
            {
              v1225[0] = &stru_285145FE8;
              if (v1210)
              {
                sub_23EB6FF14(v1210, v1225, "%kO", @"SSID_STR");
              }
            }

            sub_23EBDBF78("(%d) Unable to make a configuration suggestion for the chosen base station or network named %@.", v1119, v1120, v1121, v1122, v1123, v1124, v1125, 1406);
            sub_23EBE9710(Mutable, byte_27E383C00, "JOIN_WIRELESS_NETWORK", v1175, v1176, v1177, v1178, v1179);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (dword_27E382C08 <= 800)
            {
              v2 = MEMORY[0x277CBECE8];
              if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
              {
                v988 = 1406;
                goto LABEL_1347;
              }

              goto LABEL_1346;
            }

            v988 = 1406;
          }

          else
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1407, "AskUserWhichNetworkToExtend");
            }

            v1009 = sub_23EBE0B4C(1407, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_AskUserChooseBaseWireless", v1223, 0, 0, 0, cf, a1);
            if (v1009)
            {
              v15 = v1009;
              v16 = 0;
              v14 = 1407;
              goto LABEL_68;
            }

            v1225[0] = &stru_285145FE8;
            if (v1223)
            {
              sub_23EB6FF14(v1223, v1225, "%ks", "name");
            }

            sub_23EBDBF78("(%d) Unable to make a configuration suggestion for the chosen base station named %@.", v1010, v1011, v1012, v1013, v1014, v1015, v1016, 1407);
            sub_23EBE9710(Mutable, byte_27E383C00, "EXTEND_PREVIOUSLY_CONFIGURED_DEVICE_WIRELESSLY", v1160, v1161, v1162, v1163, v1164);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (dword_27E382C08 <= 800)
            {
              v2 = MEMORY[0x277CBECE8];
              if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
              {
                v988 = 1407;
                goto LABEL_1347;
              }

              goto LABEL_1346;
            }

            v988 = 1407;
          }

LABEL_1316:
          v2 = MEMORY[0x277CBECE8];
          goto LABEL_1347;
        }

        if (v14 == 1408)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1408, "ReplacePreviouslyConfiguredDeviceQ61P81");
          }

          v1126 = sub_23EBE0B4C(1408, Mutable, -1, 1, 0, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", v1223, 0, ValueAtIndex, 0, 0, a1);
          if (v1126)
          {
            v15 = v1126;
            v16 = 0;
            v14 = 1408;
            goto LABEL_68;
          }

          v1225[0] = &stru_285145FE8;
          if (ValueAtIndex)
          {
            sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
          }

          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
          }

          v988 = 1408;
          sub_23EBDBF78("(%d) Offer to Replace the existing base station named %@ with the chosen base station named %@ . The existing base station is a Q61 or P81.", v1127, v1128, v1129, v1130, v1131, v1132, v1133, 1408);
          sub_23EBE9710(Mutable, byte_27E383C00, "REPLACE_PREVIOUSLY_CONFIGURED_DEVICE_UNCONFIGURABLE", v1180, v1181, v1182, v1183, v1184);
          v2 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 <= 800)
          {
            if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              v988 = 1408;
              goto LABEL_1347;
            }

            goto LABEL_1346;
          }
        }

        else
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1409, "ReplacePreviouslyConfiguredDeviceNonSRPFirmware");
          }

          v1046 = sub_23EBE0B4C(1409, Mutable, -1, 2, 0, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", v1223, 0, ValueAtIndex, 0, 0, a1);
          if (v1046)
          {
            v15 = v1046;
            v16 = 0;
            v14 = 1409;
            goto LABEL_68;
          }

          v1225[0] = &stru_285145FE8;
          if (ValueAtIndex)
          {
            sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
          }

          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
          }

          v988 = 1409;
          sub_23EBDBF78("(%d) Offer to Replace the existing base station named %@ with the chosen base station named %@ . The existing base station is unconfigurable.", v1047, v1048, v1049, v1050, v1051, v1052, v1053, 1409);
          sub_23EBE9710(Mutable, byte_27E383C00, "REPLACE_PREVIOUSLY_CONFIGURED_DEVICE_UNCONFIGURABLE", v1190, v1191, v1192, v1193, v1194);
          v2 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 <= 800)
          {
            if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              v988 = 1409;
              goto LABEL_1347;
            }

            goto LABEL_1346;
          }
        }
      }

      else if (v14 <= 1700)
      {
        if (v14 == 1501)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1501, "ExtendUsingAnotherABSConfiguration");
          }

          v1054 = sub_23EBE0B4C(1501, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_OfferExtendOverEthernet", v1223, 0, ValueAtIndex, 0, 0, a1);
          if (v1054)
          {
            v15 = v1054;
            v16 = 0;
            v14 = 1501;
            goto LABEL_68;
          }

          v1225[0] = &stru_285145FE8;
          if (ValueAtIndex)
          {
            sub_23EB6FF14(ValueAtIndex, v1225, "%ks", "name");
          }

          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
          }

          v988 = 1501;
          sub_23EBDBF78("(%d) Offer to Extend the existing base station named %@ over ethernet with the chosen base station named %@.", v1055, v1056, v1057, v1058, v1059, v1060, v1061, 1501);
          sub_23EBE9710(Mutable, byte_27E383C00, "EXTEND_USING_OTHER_BASE_CONFIGURATION_OVER_ETHERNET", v1165, v1166, v1167, v1168, v1169);
          v2 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 <= 800)
          {
            if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              v988 = 1501;
              goto LABEL_1347;
            }

            goto LABEL_1346;
          }
        }

        else
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1502, "AskUserWhichToExtendWired");
          }

          v1017 = sub_23EBE0B4C(1502, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_AskUserChooseBaseWired", v1223, 0, 0, 0, cf, a1);
          if (v1017)
          {
            v15 = v1017;
            v16 = 0;
            v14 = 1502;
            goto LABEL_68;
          }

          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
          }

          sub_23EBDBF78("(%d) Unable to make a configuration suggestion for the chosen base station named %@.", v1018, v1019, v1020, v1021, v1022, v1023, v1024, 1502);
          sub_23EBE9710(Mutable, byte_27E383C00, "ASK_USER_WHAT_TO_DO_2", v1135, v1136, v1137, v1138, v1139);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (dword_27E382C08 > 800)
          {
            v988 = 1502;
            goto LABEL_1316;
          }

          v2 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1346;
          }

          v988 = 1502;
        }
      }

      else if (v14 == 1701)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1701, "Offer to Create Network");
        }

        v1102 = sub_23EBE0B4C(1701, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_OfferCreate", v1223, 0, 0, 0, 0, a1);
        if (v1102)
        {
          v15 = v1102;
          v16 = 0;
          v14 = 1701;
          goto LABEL_68;
        }

        v1225[0] = &stru_285145FE8;
        if (v1223)
        {
          sub_23EB6FF14(v1223, v1225, "%ks", "name");
        }

        v988 = 1701;
        sub_23EBDBF78("(%d) Offer to Create a Wi-Fi network with the chosen base station named %@.", v1103, v1104, v1105, v1106, v1107, v1108, v1109, 1701);
        sub_23EBE9710(Mutable, byte_27E383C00, "OFFER_TO_CREATE_NETWORK", v1145, v1146, v1147, v1148, v1149);
        v2 = MEMORY[0x277CBECE8];
        if (dword_27E382C08 <= 800)
        {
          if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1346;
          }

          v988 = 1701;
        }
      }

      else
      {
        if (v14 != 1801)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1802, "TellUserToUseAUFor80211g");
          }

          v980 = sub_23EBE0B4C(1802, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_UseAUFor80211g", 0, v1221, 0, 0, 0, a1);
          if (v980)
          {
            v15 = v980;
            v16 = 0;
            v14 = 1802;
            goto LABEL_68;
          }

          sub_23EBDBF78("(%d) Use AirPort Utility for 802.11g to configure this network.", v981, v982, v983, v984, v985, v986, v987, 1802);
          sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_USE_AU_FOR_80211G", v1155, v1156, v1157, v1158, v1159);
          if (v1221)
          {
            CFRelease(v1221);
            v1221 = 0;
          }

          if (dword_27E382C08 <= 800)
          {
            v2 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              v988 = 1802;
              goto LABEL_1347;
            }

LABEL_1346:
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Exiting state: %d\n********************************************************************************\n\n", v14);
            v988 = v14;
            goto LABEL_1347;
          }

          v988 = 1802;
          goto LABEL_1316;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 1801, "Host Wi-Fi disabled, Tell user to plug in unconfigured device via Ethernet");
        }

        v1110 = sub_23EBE0EE0(1801, Mutable, a1);
        if (v1110)
        {
          v15 = v1110;
          v16 = 0;
          v14 = 1801;
          goto LABEL_68;
        }

        v988 = 1801;
        sub_23EBDBF78("(%d) The new AirPort base station needs to be plugged in to your current network using an Ethernet cable.", v1111, v1112, v1113, v1114, v1115, v1116, v1117, 1801);
        sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_CANNOT_FIND_DEVICES", v1150, v1151, v1152, v1153, v1154);
        v2 = MEMORY[0x277CBECE8];
        if (dword_27E382C08 <= 800)
        {
          if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1346;
          }

          v988 = 1801;
        }
      }

LABEL_1347:
      v1200 = sub_23EC0C218();
      if (!v1200)
      {
        v1200 = sub_23EBEA18C(*(a1 + 48));
      }

      v15 = v1200;
      v16 = 0;
      v14 = v988;
      goto LABEL_10;
    }

    if (v14 != 802)
    {
      key = 0;
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 806, "Count unconfigured Apple Networks which are not 802.11g");
      }

      v15 = sub_23EBDD91C(v13, &theDict);
      if (v13)
      {
        CFRelease(v13);
      }

      if (v15 == -6727)
      {
        v1224 = 0;
      }

      else
      {
        if (v15)
        {
          goto LABEL_1357;
        }

        if (!theDict)
        {
LABEL_1201:
          v15 = 4294960568;
          goto LABEL_1357;
        }

        v1224 = CFDictionaryGetCount(theDict);
        sub_23EBDCA2C("State 806 filtered records: \n", theDict);
        if (v1224 == 1)
        {
          v662 = sub_23EBDDE68(theDict, &key);
          if (v662)
          {
            v15 = v662;
          }

          else
          {
            if (!key)
            {
              goto LABEL_1201;
            }

            v663 = CFDictionaryGetValue(theDict, key);
            v1221 = v663;
            if (v663)
            {
              CFRetain(v663);
              v671 = v1224;
              v1225[0] = &stru_285145FE8;
              if (v1221)
              {
                sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR");
                v672 = v1225[0];
              }

              else
              {
                v672 = &stru_285145FE8;
              }

              v1201 = v671;
              v1202 = v672;
              sub_23EBDBF78("(%d) Found %d unconfigured network in Wi-Fi scans after filtering and the network is named %@.", v664, v665, v666, v667, v668, v669, v670, 806);
              v14 = 807;
              v132 = "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_ONE_TRUE";
              goto LABEL_454;
            }

            v15 = 4294960569;
          }

          goto LABEL_1357;
        }

        if (v1224)
        {
          if (v1224 < 2)
          {
            v14 = 806;
            goto LABEL_455;
          }

          v117 = sub_23EBE0908(a1, 6, theDict, &key);
          if (v117)
          {
            v15 = v117;
          }

          else if (key)
          {
            v118 = CFDictionaryGetValue(theDict, key);
            v1221 = v118;
            if (v118)
            {
              CFRetain(v118);
              v126 = v1224;
              v127 = &stru_285145FE8;
              v1225[0] = &stru_285145FE8;
              if (v1221)
              {
                sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR");
                v127 = v1225[0];
              }

              v1201 = v126;
              v1202 = v127;
              sub_23EBDBF78("(%d) Found %d unconfigured networks in Wi-Fi scans and the user chose to configure the one called %@.", v119, v120, v121, v122, v123, v124, v125, 806);
              v14 = 807;
              v1204 = 1;
              v132 = "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_GREATER_THAN_ONE_TRUE";
              v2 = MEMORY[0x277CBECE8];
LABEL_454:
              sub_23EBE98EC(Mutable, byte_27E383C00, v132, v1224, v128, v129, v130, v131);
LABEL_455:
              if (theDict)
              {
                CFRelease(theDict);
                theDict = 0;
              }

              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Exiting state: %d\n********************************************************************************\n\n", 806);
              }

              v13 = 0;
              goto LABEL_994;
            }

            v15 = 4294960569;
          }

          else
          {
            v15 = 4294960568;
          }

          v2 = MEMORY[0x277CBECE8];
LABEL_1357:
          v16 = 0;
          v13 = 0;
          v14 = 806;
          goto LABEL_10;
        }
      }

      sub_23EBDBF78("(%d) Found zero unconfigured networks in Wi-Fi scans after filtering.", v110, v111, v112, v113, v114, v115, v116, 806);
      v14 = 1201;
      v132 = "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_ZERO_TRUE";
      goto LABEL_454;
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 802, "Can we switch networks on this host?");
    }

    if (v1206)
    {
      sub_23EBDBF78("(%d) The computer has wireless disabled and cannot switch networks", v28, v29, v30, v31, v32, v33, v34, 802);
      sub_23EBE98EC(Mutable, byte_27E383C00, "CAN_SWITCH_NETWORKS_FALSE", v1224, v213, v214, v215, v216);
      v14 = 1801;
LABEL_813:
      if (v1221)
      {
        CFRelease(v1221);
        v1221 = 0;
      }

      if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        goto LABEL_994;
      }

      v285 = 802;
      goto LABEL_993;
    }

    key = 0;
    sub_23EBE0134(a1, *(a1 + 24));
    if (v527)
    {
      goto LABEL_1164;
    }

    sub_23EBDCCB4("State 802 join network: \n", v1221);
    sub_23EBEAB18(*(a1 + 48), 5, 0, v1221);
    v528 = sub_23EBEEA6C(*(a1 + 48), v1221, v1204 == 0, &key);
    if (v528)
    {
      v15 = v528;
    }

    else if (key)
    {
      sub_23EBEAB18(*(a1 + 48), 6, 0, v1221);
      sub_23EBDCB98("State 802 save base station: \n", key);
      sub_23EBDE070(key, *(a1 + 24));
      if (!v527)
      {
        v1223 = key;
        sub_23EBDFE68(a1, key, 0, 0);
        if (!v527)
        {
          sub_23EBEAB18(*(a1 + 48), 16, 0, v1223);
          v1225[0] = &stru_285145FE8;
          if (v1221)
          {
            sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR");
            v536 = v1225[0];
          }

          else
          {
            v536 = &stru_285145FE8;
          }

          v1225[0] = &stru_285145FE8;
          if (v1223)
          {
            sub_23EB6FF14(v1223, v1225, "%ks", "name");
            v737 = v1225[0];
          }

          else
          {
            v737 = &stru_285145FE8;
          }

          v1201 = v536;
          v1202 = v737;
          sub_23EBDBF78("(%d) The computer has Wi-Fi enabled and can switch networks. Switched to the network called %@ to configure the AirPort base station named %@", v529, v530, v531, v532, v533, v534, v535, 802);
          sub_23EBE98EC(Mutable, byte_27E383C00, "CAN_SWITCH_NETWORKS_TRUE", v1224, v738, v739, v740, v741);
          v14 = 103;
          goto LABEL_813;
        }
      }

LABEL_1164:
      v15 = v527;
    }

    else
    {
      v15 = 4294960568;
    }

    v16 = 0;
    v14 = 802;
    goto LABEL_10;
  }

  if (v14 <= 702)
  {
    if (v14 != 701)
    {
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 702, "Look for Visible Preferred Apple Networks");
      }

      v82 = sub_23EBE1CE0(a1, *(a1 + 32), v1209, v36, 1, &theArray);
      if (v82)
      {
        v15 = v82;
        if (v82 != -6727)
        {
          goto LABEL_1205;
        }

        v1224 = 0;
LABEL_489:
        sub_23EBDBF78("(%d) There are no preferred networks visible in the Wi-Fi scan.", v83, v84, v85, v86, v87, v88, v89, 702);
        sub_23EBE9710(Mutable, byte_27E383C00, "VISIBLE_PREFERRED_NETWORK_FALSE", v448, v449, v450, v451, v452);
        v14 = 703;
LABEL_490:
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }

        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_994;
        }

        v285 = 702;
        goto LABEL_993;
      }

      if (theArray)
      {
        v1224 = CFArrayGetCount(theArray);
        if (!v1224)
        {
          goto LABEL_489;
        }

        sub_23EBDC50C("State 702 scan records: \n", theArray);
        v416 = sub_23EBE0A74(v1223, v1210, v414, v415);
        v417 = theArray;
        theArray = 0;
        if (v416)
        {
          if (v1210)
          {
            v418 = v1210;
          }

          else
          {
            v418 = v1223;
          }

          v15 = sub_23EBDDBF8(v417, v418, &theArray);
          if (v417)
          {
            CFRelease(v417);
          }

          if (v15 != -6727)
          {
            if (v15)
            {
              goto LABEL_1359;
            }

            if (!theArray)
            {
              goto LABEL_1278;
            }

            v426 = CFArrayGetCount(theArray);
            v1224 = v426;
            if (v426 == 1)
            {
              v434 = CFArrayGetValueAtIndex(theArray, 0);
              v1221 = v434;
              if (!v434)
              {
                goto LABEL_1278;
              }

              CFRetain(v434);
              v442 = &stru_285145FE8;
              v1225[0] = &stru_285145FE8;
              if (v1221)
              {
                sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR");
                v442 = v1225[0];
              }

              v1201 = v442;
              sub_23EBDBF78("(%d) Found one preferred network called %@ that can be joined by STA-only device.", v435, v436, v437, v438, v439, v440, v441, 702);
              goto LABEL_488;
            }

            v1201 = v426;
            sub_23EBDBF78("(%d) Found %d preferred networks that could be joined by STA-only device.", v427, v428, v429, v430, v431, v432, v433, 702);
            sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_PREFERRED_NETWORKS_FOR_STA_ONLY_TO_JOIN_IS_GREATER_THAN_ONE_TRUE", v1224, v872, v873, v874, v875);
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            if (v1210)
            {
              v876 = v1210;
            }

            else
            {
              v876 = v1223;
            }

            v877 = sub_23EBDDBF8(*(a1 + 32), v876, &theArray);
            if (v877 == -6727)
            {
              sub_23EBDBF78("(%d) There are no networks available (after re-filtering all networks).", v878, v879, v880, v881, v882, v883, v884, 702);
              sub_23EBE9710(Mutable, byte_27E383C00, "VISIBLE_PREFERRED_NETWORK_FALSE", v922, v923, v924, v925, v926);
              v14 = 703;
              goto LABEL_1006;
            }

            v15 = v877;
            if (v877)
            {
              goto LABEL_1359;
            }

            if (theArray)
            {
              v885 = CFArrayGetCount(theArray);
              v1224 = v885;
              v893 = theArray;
              if (v885 == 1)
              {
                v894 = CFArrayGetValueAtIndex(theArray, 0);
                v1221 = v894;
                if (!v894)
                {
                  goto LABEL_1278;
                }

                CFRetain(v894);
                v902 = &stru_285145FE8;
                v1225[0] = &stru_285145FE8;
                if (v1221)
                {
                  sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR", v1201);
                  v902 = v1225[0];
                }

                v1201 = v902;
                sub_23EBDBF78("(%d) Found one network called %@ that can be joined by STA-only device (after re-filtering all networks).", v895, v896, v897, v898, v899, v900, v901, 702);
LABEL_488:
                sub_23EBE9710(Mutable, byte_27E383C00, "NUMBER_PREFERRED_NETWORKS_FOR_STA_ONLY_TO_JOIN_IS_ONE_TRUE", v443, v444, v445, v446, v447);
                v14 = 1403;
              }

              else
              {
                theArray = 0;
                cf = v893;
                v1201 = v885;
                sub_23EBDBF78("(%d) Found %d networks that could be joined by STA-only device (after re-filtering all networks).", v886, v887, v888, v889, v890, v891, v892, 702);
                sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_PREFERRED_NETWORKS_FOR_STA_ONLY_TO_JOIN_IS_GREATER_THAN_ONE_TRUE", v1224, v944, v945, v946, v947);
                v14 = 1406;
              }

LABEL_1006:
              v2 = MEMORY[0x277CBECE8];
              goto LABEL_490;
            }

LABEL_1278:
            v16 = 0;
            v15 = 4294960568;
            goto LABEL_1360;
          }

          sub_23EBDBF78("(%d) There are no preferred networks available after filtering.", v419, v420, v421, v422, v423, v424, v425, 702);
LABEL_858:
          sub_23EBE9710(Mutable, byte_27E383C00, "VISIBLE_PREFERRED_NETWORK_FALSE", v754, v755, v756, v757, v758);
          v14 = 703;
          goto LABEL_490;
        }

        v15 = sub_23EBE0354(a1, v417, 0, 15, &theArray);
        if (v417)
        {
          CFRelease(v417);
        }

        if (!v15)
        {
          if (!theArray)
          {
            goto LABEL_1278;
          }

          sub_23EBDC01C("State 702 adding browse record: \n", theArray);
          sub_23EBDE2BC(theArray, *(a1 + 24));
          if (!v841)
          {
            sub_23EBDBF78("(%d) At least one of your preferred networks is visible in the Wi-Fi scan.", v842, v843, v844, v845, v846, v847, v848, 702);
            sub_23EBE9710(Mutable, byte_27E383C00, "VISIBLE_PREFERRED_NETWORK_TRUE", v849, v850, v851, v852, v853);
            v14 = 401;
            goto LABEL_1006;
          }

          v15 = v841;
LABEL_1359:
          v16 = 0;
LABEL_1360:
          v14 = 702;
          goto LABEL_68;
        }

        if (v15 != -6723)
        {
          v1201 = v15;
          sub_23EBDBF78("(%d) There are no preferred networks successfully joined and base stations found. err: %d", v747, v748, v749, v750, v751, v752, v753, 702);
          goto LABEL_858;
        }

LABEL_1205:
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v15 = 4294960568;
      }

      v14 = 702;
      goto LABEL_10;
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 701, "HostHasPreferredNetworkSupport");
    }

    if (v1212)
    {
      sub_23EBDBF78("(%d) The computer has support for accessing the preferred networks list.", v28, v29, v30, v31, v32, v33, v34, 701);
      sub_23EBE9710(Mutable, byte_27E383C00, "HOST_SUPPORTS_PREFERRED_NETWORK_ACCESS_TRUE", v280, v281, v282, v283, v284);
      v14 = 702;
      goto LABEL_341;
    }

    sub_23EBDBF78("(%d) The computer does not have support for accessing the preferred networks list.", v28, v29, v30, v31, v32, v33, v34, 701);
    sub_23EBE9710(Mutable, byte_27E383C00, "HOST_SUPPORTS_PREFERRED_NETWORK_ACCESS_FALSE", v545, v546, v547, v548, v549);
    if (sub_23EBE0A74(v1223, v1210, v550, v551))
    {
      if (v1210)
      {
        v552 = v1210;
      }

      else
      {
        v552 = v1223;
      }

      v553 = sub_23EBDDBF8(*(a1 + 32), v552, &cf);
      if (v553 != -6727)
      {
        v15 = v553;
        if (v553)
        {
          v16 = 0;
        }

        else
        {
          if (cf)
          {
            v14 = 1406;
            goto LABEL_341;
          }

          v16 = 0;
          v15 = 4294960568;
        }

        v14 = 701;
        goto LABEL_10;
      }

      v14 = 1103;
    }

    else
    {
      v14 = 1701;
    }

LABEL_341:
    if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
    {
      goto LABEL_994;
    }

    v285 = 701;
    goto LABEL_993;
  }

  if (v14 != 703)
  {
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 801, "Count the number of unconfigured Apple networks which are visible");
    }

    v150 = sub_23EBDD768(*(a1 + 32), &theDict);
    if (v150 != -6727)
    {
      v15 = v150;
      if (v150)
      {
        goto LABEL_1287;
      }

      if (theDict)
      {
        v1224 = CFDictionaryGetCount(theDict);
        sub_23EBDCA2C("State 801 scan records: \n", theDict);
        if (v1224 != 1)
        {
          if (v1224)
          {
            if (v1224 < 2)
            {
              v14 = 801;
            }

            else
            {
              v13 = theDict;
              CFRetain(theDict);
              if (theDict)
              {
                CFRelease(theDict);
                theDict = 0;
              }

              v1201 = v1224;
              sub_23EBDBF78("(%d) %d unconfigured network are visible in Wi-Fi scans", v158, v159, v160, v161, v162, v163, v164, 801);
              sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_GREATER_THAN_ONE_TRUE", v1224, v165, v166, v167, v168);
              v14 = 806;
            }

LABEL_500:
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_994;
            }

            v285 = 801;
            goto LABEL_993;
          }

LABEL_497:
          sub_23EBDBF78(v1205, v151, v152, v153, v154, v155, v156, v157, 801);
          sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_ZERO_TRUE", v1224, v453, v454, v455, v456);
          if (theDict)
          {
            CFRelease(theDict);
            theDict = 0;
          }

          v14 = 1201;
          goto LABEL_500;
        }

        key = 0;
        v675 = sub_23EBDDE68(theDict, &key);
        if (!v675)
        {
          if (key)
          {
            v676 = CFDictionaryGetValue(theDict, key);
            v1221 = v676;
            if (v676)
            {
              CFRetain(v676);
              v1225[0] = &stru_285145FE8;
              if (v1221)
              {
                sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR");
                v684 = v1225[0];
              }

              else
              {
                v684 = &stru_285145FE8;
              }

              v1201 = v684;
              sub_23EBDBF78("(%d) One unconfigured network called %@ is visible in Wi-Fi scans and has been chosen.", v677, v678, v679, v680, v681, v682, v683, 801);
              sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_ONE_TRUE", v1224, v854, v855, v856, v857);
              if (theDict)
              {
                CFRelease(theDict);
                theDict = 0;
              }

              v14 = 807;
              goto LABEL_500;
            }

            v15 = 4294960569;
          }

          else
          {
            v15 = 4294960568;
          }

          v16 = 0;
          v14 = 801;
          goto LABEL_68;
        }

        v15 = v675;
LABEL_1287:
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v15 = 4294960568;
      }

      v14 = 801;
      goto LABEL_10;
    }

    v1224 = 0;
    goto LABEL_497;
  }

  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", 703, "Look for Hidden Preferred Apple Networks via Directed Scan");
  }

  v286 = sub_23EBE1CE0(a1, *(a1 + 32), v1209, v36, 14, &theArray);
  if (v286)
  {
    v15 = v286;
    if (v286 != -6727)
    {
      goto LABEL_1203;
    }

    v1224 = 0;
LABEL_524:
    sub_23EBDBF78("(%d) There are no preferred networks found using a directed Wi-Fi scan.", v287, v288, v289, v290, v291, v292, v293, 703);
    sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_FALSE", v470, v471, v472, v473, v474);
    if (sub_23EBE0A74(v1223, v1210, v475, v476))
    {
      if (v1210)
      {
        v477 = v1210;
      }

      else
      {
        v477 = v1223;
      }

      v478 = sub_23EBDDBF8(*(a1 + 32), v477, &cf);
      if (v478 == -6727)
      {
        v14 = 1103;
      }

      else
      {
        v15 = v478;
        if (v478)
        {
          goto LABEL_1203;
        }

        if (!cf)
        {
LABEL_1197:
          v16 = 0;
          v15 = 4294960568;
          goto LABEL_1204;
        }

        v14 = 1406;
      }
    }

    else
    {
      v14 = 1701;
    }

LABEL_987:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
    {
      goto LABEL_994;
    }

    v285 = 703;
    goto LABEL_993;
  }

  if (!theArray)
  {
    goto LABEL_1197;
  }

  v1224 = CFArrayGetCount(theArray);
  if (!v1224)
  {
    goto LABEL_524;
  }

  key = 0;
  sub_23EBDC50C("State 703 scan records: \n", theArray);
  sub_23EB6FF14(theArray, &key, "[*]", 0);
  if (v457)
  {
    goto LABEL_1202;
  }

  if (!key)
  {
    goto LABEL_1219;
  }

  sub_23EBDE3B8(*(a1 + 32), key);
  if (!v457)
  {
    if (sub_23EBE0A74(v1223, v1210, v458, v459))
    {
      if (v1210)
      {
        v460 = v1210;
      }

      else
      {
        v460 = v1223;
      }

      v461 = sub_23EBDDBF8(theArray, v460, 0);
      if (v461 != -6727)
      {
        v15 = v461;
        if (v461)
        {
          goto LABEL_1203;
        }

        v1221 = key;
        CFRetain(key);
        v1225[0] = &stru_285145FE8;
        if (v1221)
        {
          sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR");
          v469 = v1225[0];
        }

        else
        {
          v469 = &stru_285145FE8;
        }

        v1201 = v469;
        sub_23EBDBF78("(%d) Found one hidden preferred network called %@ that can be joined by STA-only device.", v462, v463, v464, v465, v466, v467, v468, 703);
        sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_TRUE", v908, v909, v910, v911, v912);
        v14 = 1403;
        goto LABEL_957;
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }

      if (v1210)
      {
        v783 = v1210;
      }

      else
      {
        v783 = v1223;
      }

      v784 = sub_23EBDDBF8(*(a1 + 32), v783, &theArray);
      if (v784 != -6727)
      {
        v15 = v784;
        v2 = MEMORY[0x277CBECE8];
        if (v784)
        {
          goto LABEL_1203;
        }

        if (theArray)
        {
          v792 = CFArrayGetCount(theArray);
          v1224 = v792;
          v800 = theArray;
          if (v792 == 1)
          {
            v801 = CFArrayGetValueAtIndex(theArray, 0);
            v1221 = v801;
            if (!v801)
            {
              goto LABEL_1219;
            }

            CFRetain(v801);
            v809 = &stru_285145FE8;
            v1225[0] = &stru_285145FE8;
            if (v1221)
            {
              sub_23EB6FF14(v1221, v1225, "%kO", @"SSID_STR");
              v809 = v1225[0];
            }

            v1201 = v809;
            sub_23EBDBF78("(%d) Found one network called %@ that can be joined by STA-only device (after re-filtering all networks).", v802, v803, v804, v805, v806, v807, v808, 703);
            sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_TRUE", v810, v811, v812, v813, v814);
            v14 = 1403;
          }

          else
          {
            theArray = 0;
            cf = v800;
            v1201 = v792;
            sub_23EBDBF78("(%d) Found %d networks that could be joined by STA-only device (after re-filtering all networks).", v793, v794, v795, v796, v797, v798, v799, 703);
            sub_23EBE98EC(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_TRUE", v1224, v927, v928, v929, v930);
            v14 = 1406;
          }

          goto LABEL_987;
        }

LABEL_1219:
        v15 = 4294960568;
LABEL_1220:
        v16 = 0;
        v14 = 703;
        goto LABEL_68;
      }

      sub_23EBDBF78("(%d) There are no networks available (after re-filtering all networks).", v785, v786, v787, v788, v789, v790, v791, 703);
      sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_FALSE", v903, v904, v905, v906, v907);
      v14 = 1103;
    }

    else
    {
      v759 = sub_23EBE0244(a1, key, 0, 15, &theArray);
      if (!v759)
      {
        if (!theArray)
        {
          goto LABEL_1219;
        }

        sub_23EBDC01C("State 703 adding browse record: \n", theArray);
        sub_23EBDE2BC(theArray, *(a1 + 24));
        v15 = v865;
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }

        v866 = &stru_285145FE8;
        v2 = MEMORY[0x277CBECE8];
        if (v15)
        {
          goto LABEL_1203;
        }

        v1225[0] = &stru_285145FE8;
        if (key)
        {
          sub_23EB6FF14(key, v1225, "%kO", @"SSID_STR");
          v866 = v1225[0];
        }

        v1201 = v866;
        sub_23EBDBF78("(%d) The hidden preferred network called %@ was found using a directed Wi-Fi scan.", v858, v859, v860, v861, v862, v863, v864, 703);
        sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_TRUE", v867, v868, v869, v870, v871);
        v14 = 401;
        goto LABEL_987;
      }

      if (v759 == -6723)
      {
        v15 = v759;
        goto LABEL_1220;
      }

      v1201 = v759;
      sub_23EBDBF78("(%d) There are no preferred networks found using a directed Wi-Fi scan and base stations found. err: %d", v760, v761, v762, v763, v764, v765, v766, 703);
      sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_FALSE", v767, v768, v769, v770, v771);
      v14 = 1701;
    }

LABEL_957:
    v2 = MEMORY[0x277CBECE8];
    goto LABEL_987;
  }

LABEL_1202:
  v15 = v457;
LABEL_1203:
  v16 = 0;
LABEL_1204:
  v14 = 703;
LABEL_10:
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "State machine exiting... err: %d state: %d\n", v15, v14);
  }

  if (v16)
  {
    if (!a1)
    {
      goto LABEL_1176;
    }
  }

  else
  {
    sub_23EBEE150(*(a1 + 48));
  }

  *(a1 + 40) = v15;
  v1225[0] = 0;
  if (!sub_23EB6F348(*v2, v1225, "{%ks=%i%ks=%O}", "BSAutoGuessComplete_ErrorResult", v15, "BSAutoGuessComplete_Suggestions", *(a1 + 8)))
  {
    if (!v1225[0])
    {
      goto LABEL_1176;
    }

    sub_23EBEAB18(*(a1 + 48), 18, *(a1 + 40), v1225[0]);
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void _BSAutoGuess_NotifyComplete(AutoGuessContextRef)", 800, "Auto Guess END\n");
    }
  }

  if (v1225[0])
  {
    CFRelease(v1225[0]);
  }

LABEL_1176:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (v1218)
  {
    CFRelease(v1218);
    v1218 = 0;
  }

  if (v1221)
  {
    CFRelease(v1221);
    v1221 = 0;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  result = v1214;
  if (v1214)
  {
    return sub_23EBB0D6C(v1214);
  }

  return result;
}

uint64_t sub_23EBE967C(uint64_t a1)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus BSAutoGuess_Cancel(AutoGuessContextRef)", 800, "\n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 48);

  return sub_23EBEA004(v2);
}

void sub_23EBE9710(const __CFArray *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && a3 && *a2 && *a3 && !sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1, "{%ks=%s%ks=%s%ks=%b}", a4, a5, a6, a7, a8, "KEY_TITLE"))
  {
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      Count = CFArrayGetCount(a1);
      sub_23EB75374(&dword_27E382C08, "void LogUnconfigGuessCriterionTrue(CFMutableArrayRef, const char *, const char *)", 800, "\nAuto Guess step: %d\n\t%s\t\t:\t%s\n\t%s\t:\t%s\n", Count + 1, "KEY_TITLE", a2, "KEY_SIGNATURE", a3);
    }

    v12 = MEMORY[0x277D85CD0];

    dispatch_sync_f(v12, a1, sub_23EBE985C);
  }
}

void sub_23EBE985C(uint64_t a1)
{
  v5 = 0;
  if (a1)
  {
    v1 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v5, "{%ks=%O}", "BSAutoGuess_StateTrace", a1);
    v2 = v5;
    if (v1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v5 == 0;
    }

    if (!v3)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      if (LocalCenter)
      {
        CFNotificationCenterPostNotificationWithOptions(LocalCenter, @"com.apple.airport.autoguess.debug.progress", 0, v5, 1uLL);
      }

      v2 = v5;
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }
}

void sub_23EBE98EC(const __CFArray *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (*a2)
        {
          if (*a3)
          {
            v10 = a4;
            if (!sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1, "{%ks=%s%ks=%s%ks=%i%ks=%b}", a4, a5, a6, a7, a8, "KEY_TITLE"))
            {
              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                Count = CFArrayGetCount(a1);
                sub_23EB75374(&dword_27E382C08, "void LogUnconfigGuessCriterionTrueWithInt32Value(CFMutableArrayRef, const char *, const char *, int32_t)", 800, "\nAuto Guess step: %d\n\t%s\t\t:\t%s\n\t%s\t:\t%s\n\t%s\t\t:\t%d\n", Count + 1, "KEY_TITLE", a2, "KEY_SIGNATURE", a3, "KEY_VALUE", v10);
              }

              v13 = MEMORY[0x277D85CD0];

              dispatch_sync_f(v13, a1, sub_23EBE985C);
            }
          }
        }
      }
    }
  }
}

BOOL sub_23EBE9A58(const __CFString *a1)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "Boolean BSAssistant_RefObjGood(CFTypeRef)", 800, "inRefObj: %@ \n", a1);
  }

  if (a1 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return CFStringCompare(a1, @"bad!", 0) != kCFCompareEqualTo;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EBE9B10(void *a1)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_ContextCreate(AssistantContextRef *)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A0040E715EC04uLL);
  if (!v2)
  {
    return 4294960568;
  }

  v3 = v2;
  v2[9] = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 16) = 257;
  *(v2 + 6) = 0;
  *(v2 + 8) = 0;
  *(v2 + 9) = 0;
  v4 = *MEMORY[0x277CBECE8];
  v5 = sub_23EB652C0(*MEMORY[0x277CBECE8], @"BSAssistant");
  *(v3 + 12) = v5;
  if (!v5 || (Mutable = CFStringCreateMutable(v4, 10), (*(v3 + 10) = Mutable) == 0))
  {
    v9 = 4294960568;
LABEL_19:
    sub_23EBE9CC0(v3);
    return v9;
  }

  v7 = Mutable;
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus _RefObjSetGood(CFTypeRef)", 800, "inRefObj: %@ \n", v7);
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v7))
  {
    v9 = 4294960591;
    goto LABEL_19;
  }

  CFStringReplaceAll(v7, @"GOOD");
  v9 = 0;
  v3[22] = 1634561902;
  *a1 = v3;
  return v9;
}

uint64_t sub_23EBE9CC0(_DWORD *a1)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_ContextRelease(AssistantContextRef)", 800, " \n");
  }

  if (!a1 || a1[22] != 1634561902)
  {
    return 4294960578;
  }

  v2 = *(a1 + 6);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 6) = 0;
  }

  v3 = *(a1 + 12);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 12) = 0;
  }

  a1[22] = 1095585614;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  v4 = *(a1 + 10);
  if (!v4)
  {
    goto LABEL_19;
  }

  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus _RefObjSetDone(CFTypeRef)", 800, "inRefObj: %@ \n", v4);
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(v4))
  {
    CFStringReplaceAll(v4, @"bad!");
    v6 = *(a1 + 10);
    if (v6)
    {
      CFRelease(v6);
    }

LABEL_19:
    free(a1);
    return 0;
  }

  return 4294960591;
}

uint64_t sub_23EBE9E2C(uint64_t a1, void *a2)
{
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (*(a1 + 64) && *(a1 + 72))
  {
    return 4294960587;
  }

  v6 = malloc_type_calloc(1uLL, 0x88uLL, 0x10A0040185FE424uLL);
  if (!v6)
  {
    return 4294960568;
  }

  v7 = v6;
  v8 = *(a1 + 64) == 0;
  *(v6 + 1) = a1;
  v9 = 64;
  if (!v8)
  {
    v9 = 72;
  }

  *(a1 + v9) = v6;
  v10 = !v8;
  *(v6 + 4) = 0;
  *(v6 + 8) = 0;
  *(v6 + 15) = 0;
  *(v6 + 16) = v10;
  *(v6 + 6) = 0;
  v4 = pthread_mutex_init((v6 + 56), 0);
  if (!v4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v7 + 3) = Mutable;
    if (Mutable)
    {
      v4 = 0;
      *(v7 + 5) = dispatch_semaphore_create(0);
      *v7 = 1634561902;
      *a2 = v7;
      return v4;
    }

    v4 = 4294960568;
  }

  sub_23EBE9F5C(v7);
  return v4;
}

uint64_t sub_23EBE9F5C(char *a1)
{
  if (!a1)
  {
    return 4294960578;
  }

  if (*a1 != 1634561902)
  {
    return 4294960578;
  }

  v2 = *(a1 + 3);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 3) = 0;
  }

  *a1 = 1095585614;
  v3 = *(a1 + 5);
  if (v3)
  {
    dispatch_release(v3);
  }

  pthread_mutex_destroy((a1 + 56));
  v4 = *(a1 + 1);
  if (v4)
  {
    v5 = 72;
    if (!*(a1 + 16))
    {
      v5 = 64;
    }

    *(v4 + v5) = 0;
  }

  free(a1);
  return 0;
}

uint64_t sub_23EBEA004(uint64_t a1)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_Cancel(AssistantContextRef)", 800, "\n");
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v2 = *(a1 + 36);
  if (v2 != 2)
  {
    if (!v2)
    {
      return 4294960576;
    }

    *(a1 + 36) = 2;
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = *(v4 + 40);
      if (v5)
      {
        dispatch_semaphore_signal(v5);
      }
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        dispatch_semaphore_signal(v7);
      }
    }
  }

  return 4294960525;
}

uint64_t sub_23EBEA0DC(uint64_t a1)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetToRunningState(AssistantContextRef)", 800, "\n");
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if ((*(a1 + 36) | 2) != 2)
  {
    return 4294960587;
  }

  result = 0;
  *(a1 + 36) = 1;
  return result;
}

uint64_t sub_23EBEA18C(uint64_t a1)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetToIdleState(AssistantContextRef)", 800, "\n");
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  result = *(a1 + 36);
  if (result)
  {
    if (result == 1)
    {
      result = 0;
      *(a1 + 36) = 0;
    }

    else
    {
      return 4294960587;
    }
  }

  return result;
}

uint64_t sub_23EBEA268(uint64_t a1, _BYTE *a2)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_GetSaveBasePasswordToKeychain(AssistantContextRef, Boolean *)", 800, " \n");
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (!a2)
  {
    return 4294960591;
  }

  result = 0;
  *a2 = *(a1 + 32);
  return result;
}

uint64_t sub_23EBEA310(uint64_t a1, char a2)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetSaveBasePasswordToKeychain(AssistantContextRef, Boolean)", 800, " \n");
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  result = 0;
  *(a1 + 32) = a2;
  return result;
}

uint64_t sub_23EBEA3A8(uint64_t a1, _BYTE *a2)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_GetSaveWiFiPasswordToKeychain(AssistantContextRef, Boolean *)", 800, " \n");
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (!a2)
  {
    return 4294960591;
  }

  result = 0;
  *a2 = *(a1 + 33);
  return result;
}

uint64_t sub_23EBEA450(uint64_t a1, char a2)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetSaveWiFiPasswordToKeychain(AssistantContextRef, Boolean)", 800, " \n");
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  result = 0;
  *(a1 + 33) = a2;
  return result;
}

uint64_t sub_23EBEA4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetAssistantCallback(AssistantContextRef, assistant_callback_t, void *)", 800, " \n");
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (*a1)
  {
    return 4294960577;
  }

  result = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  return result;
}

uint64_t sub_23EBEA59C(void *context, int a2)
{
  if (!context)
  {
    return 4294960578;
  }

  if (*context != 1634561902)
  {
    return 4294960578;
  }

  if (!context[3])
  {
    return 4294960591;
  }

  v3 = context[1];
  if (!v3 || *(v3 + 88) != 1634561902 || !*v3)
  {
    return 4294960591;
  }

  if (*(v3 + 36) == 2)
  {
    return 4294960573;
  }

  if (!a2)
  {
    return 4294960591;
  }

  *(context + 4) = a2;
  *(context + 8) = 0;
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CallbackPerform(AssistantCallbackContextRef, eAssistantCallback)", 800, " %d...\n", a2);
  }

  dispatch_async_f(MEMORY[0x277D85CD0], context, sub_23EBEA6B4);
  return 0;
}

uint64_t sub_23EBEA6B4(void *a1)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void __BSAssistant_PerformCallbackOnMain(void *)", 800, "\n");
  }

  if (a1 && *a1 == 1634561902)
  {
    v2 = a1[1];
    if (v2 && *v2 && a1[3] && *(a1 + 4))
    {
      if (*(v2 + 36) == 2)
      {
        v3 = 4294960573;
      }

      else
      {
        result = (*v2)(a1);
        v3 = result;
        if (!result)
        {
          return result;
        }
      }
    }

    else
    {
      v3 = 4294960591;
    }
  }

  else
  {
    v3 = 4294960578;
  }

  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void __BSAssistant_PerformCallbackOnMain(void *)", 800, "failing err: %#m\n", v3);
  }

  return sub_23EBEB6CC(a1, v3);
}

uint64_t sub_23EBEA814(void *context, int a2)
{
  if (!context)
  {
    return 4294960578;
  }

  if (*context != 1634561902)
  {
    return 4294960578;
  }

  if (!context[3])
  {
    return 4294960591;
  }

  v3 = context[1];
  if (!v3 || *(v3 + 88) != 1634561902 || !*v3)
  {
    return 4294960591;
  }

  if (*(v3 + 36) == 2)
  {
    return 4294960573;
  }

  if (!a2)
  {
    return 4294960591;
  }

  *(context + 4) = a2;
  *(context + 8) = 0;
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CallbackPerformSync(AssistantCallbackContextRef, eAssistantCallback)", 800, " %d...\n", a2);
  }

  dispatch_sync_f(MEMORY[0x277D85CD0], context, sub_23EBEA6B4);
  return 0;
}

uint64_t sub_23EBEA92C(uint64_t a1)
{
  if (!a1)
  {
    return 4294960578;
  }

  if (*a1 != 1634561902)
  {
    return 4294960578;
  }

  v2 = *(a1 + 8);
  if (!v2 || *(v2 + 88) != 1634561902 || !*(a1 + 40))
  {
    return 4294960591;
  }

  if (*(v2 + 36) == 2)
  {
    return 4294960573;
  }

  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_Wait(AssistantCallbackContextRef)", 800, " SLEEP... inContext->callbackResult: %#m\n", *(a1 + 32));
  }

  dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_Wait(AssistantCallbackContextRef)", 800, " AWAKE...\n");
  }

  if (*(*(a1 + 8) + 36) == 2)
  {
    return 4294960573;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EBEAA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetProgressCallback(AssistantContextRef, assistant_progress_t, void *)", 800, " \n");
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  result = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

void sub_23EBEAB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void BSAssistant_ProgressStatus_Dict(AssistantContextRef, int, OSStatus, CFDictionaryRef)", 800, "inSelector: %d inStatus %#m\n", a2);
  }

  if (a1 && *(a1 + 88) == 1634561902 && *(a1 + 16))
  {
    v12 = 0;
    v13 = 0;
    v8 = *MEMORY[0x277CBECE8];
    v9 = a4 ? sub_23EB6F348(v8, &v12, "{%ks=%i%ks=%i%ks={%ks=%O}}", "kProgressParam_ProgressSelector", a2, "kProgressParam_OSStatus", a3, "kProgressParam_DictionaryParam", "BSAssistantProgressKey_DictionaryParameter", a4) : sub_23EB6F348(v8, &v12, "{%ks=%i%ks=%i}", "kProgressParam_ProgressSelector", a2, "kProgressParam_OSStatus", a3);
    if (!v9 && v12 != 0)
    {
      v11 = sub_23EBEAC98(a1, v12, &v13);
      if (v12)
      {
        CFRelease(v12);
        v12 = 0;
      }

      if (!v11)
      {
        if (v13)
        {
          dispatch_async_f(MEMORY[0x277D85CD0], v13, sub_23EBEADC4);
        }
      }
    }
  }
}