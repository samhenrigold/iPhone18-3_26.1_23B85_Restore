uint64_t AMAuthInstallCreate(const __CFAllocator *a1)
{
  v2 = pthread_once(&_AMAuthInstallClassInitializeOnce, _AMAuthInstallClassInitialize);
  v36 = OUTLINED_FUNCTION_1_0(v2, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v36 || (cf = CFURLCreateWithString(a1, @"https://gs.apple.com:443/", 0)) == 0)
  {
    cf = 0;
    goto LABEL_20;
  }

  v39 = CFURLCreateWithString(a1, @"http://vega-dr.apple.com:8080/vegads/fuser", 0);
  if (!v39)
  {
LABEL_20:
    v39 = 0;
    goto LABEL_21;
  }

  v4 = CFURLCreateWithString(a1, @"http://treecko-dr.apple.com:8080/TREECKO/controller", 0);
  v38 = v4;
  if (!v4)
  {
LABEL_21:
    v38 = 0;
    goto LABEL_22;
  }

  v6 = OUTLINED_FUNCTION_1_0(v4, v5, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v37 = v6;
  if (!v6)
  {
LABEL_22:
    v37 = 0;
    v10 = 0;
    goto LABEL_23;
  }

  v8 = OUTLINED_FUNCTION_1_0(v6, v7, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = v8;
  if (!v8)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  v11 = OUTLINED_FUNCTION_1_0(v8, v9, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v13 = v11;
  if (!v11)
  {
LABEL_24:
    v31 = 0;
    v16 = 0;
LABEL_25:
    v19 = 0;
LABEL_26:
    v22 = 0;
LABEL_27:
    v25 = 0;
LABEL_28:
    v28 = 0;
LABEL_29:
    v29 = 0;
    goto LABEL_18;
  }

  v14 = OUTLINED_FUNCTION_1_0(v11, v12, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v16 = v14;
  if (!v14)
  {
    v31 = 0;
    goto LABEL_25;
  }

  v17 = OUTLINED_FUNCTION_1_0(v14, v15, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v19 = v17;
  if (!v17)
  {
    v31 = 0;
    goto LABEL_26;
  }

  v20 = OUTLINED_FUNCTION_1_0(v17, v18, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v22 = v20;
  if (!v20)
  {
    v31 = 0;
    goto LABEL_27;
  }

  v23 = OUTLINED_FUNCTION_1_0(v20, v21, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v25 = v23;
  if (!v23)
  {
    v31 = 0;
    goto LABEL_28;
  }

  v26 = OUTLINED_FUNCTION_1_0(v23, v24, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v28 = v26;
  if (!v26)
  {
    v31 = 0;
    goto LABEL_29;
  }

  v29 = OUTLINED_FUNCTION_1_0(v26, v27, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v29)
  {
    Instance = _CFRuntimeCreateInstance();
    v31 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x208uLL);
      *(v31 + 520) = 0;
      *(v31 + 57) = 257;
      *(v31 + 72) = CFRetain(cf);
      *(v31 + 80) = 3;
      *(v31 + 352) = CFRetain(v36);
      *(v31 + 376) = CFRetain(v37);
      *(v31 + 384) = CFRetain(v10);
      *(v31 + 416) = CFRetain(v13);
      *(v31 + 160) = CFRetain(v39);
      *(v31 + 296) = CFRetain(v38);
      *(v31 + 88) = @"ApImg4Ticket";
      *(v31 + 200) = CFRetain(v16);
      *(v31 + 208) = CFRetain(v19);
      *(v31 + 216) = CFRetain(v22);
      v32 = calloc(1uLL, 0x30uLL);
      *(v31 + 128) = v32;
      if (v32)
      {
        v33 = CFRetain(v25);
        v34 = *(v31 + 128);
        *v34 = v33;
        *(v34 + 40) = 0;
        *(v34 + 24) = 0u;
        *(v34 + 8) = 0u;
        *(v31 + 496) = 0;
        *(v31 + 504) = 0;
        *(v31 + 440) = _AMAuthInstallNoopUpdaterAddTags;
        *(v31 + 448) = _AMAuthInstallNoopUpdaterWriteManifests;
        *(v31 + 456) = CFRetain(v28);
        *(v31 + 464) = CFRetain(v29);
        *(v31 + 488) = 0;
        *(v31 + 512) = 0;
        *(v31 + 360) = AMAuthInstallLockCreate(a1);
      }

      else
      {
        _AMAuthInstallFinalize(v31);
      }
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_18:
  SafeRelease(v36);
  SafeRelease(cf);
  SafeRelease(v39);
  SafeRelease(v38);
  SafeRelease(v37);
  SafeRelease(v10);
  SafeRelease(v13);
  SafeRelease(0);
  SafeRelease(v16);
  SafeRelease(v19);
  SafeRelease(v22);
  SafeRelease(v25);
  SafeRelease(v28);
  SafeRelease(v29);
  return v31;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2)
{

  return AMSupportCreateErrorInternal();
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2)
{

  return AMSupportCreateErrorInternal();
}

CFMutableDictionaryRef OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 0, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v6, a2, v2, v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **))
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, a2, a3, v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, v6, v2, v4, v3);
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureSystemSoftware, v3, v4);
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_13(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = 0;

  return AMAuthInstallMonetCreateReversedMEIDFromString(v11, a1, &a11);
}

uint64_t OUTLINED_FUNCTION_1_17(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFURLRef url, ...)
{
  va_start(va, url);

  return CFURLGetFileSystemRepresentation(url, 1u, va, 1024);
}

uint64_t AMAuthInstallLockCreate(uint64_t a1)
{
  pthread_once(&_AMAuthInstallLockClassInitializeOnce, _AMAuthInstallLockClassInitialize);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = 0;
  }

  return result;
}

void SafeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

__CFDictionary *AMAuthInstallUpdaterCopyResponse(const void *a1, const __CFString *key, const __CFURL *a3, uint64_t a4)
{
  v23 = 0;
  value = 0;
  if (!a1 || !key || !a3)
  {
    goto LABEL_26;
  }

  v8 = AMAuthInstallUpdater(a1, key, a3, a4);
  if (!v8)
  {
LABEL_27:
    Mutable = 0;
    goto LABEL_31;
  }

  v9 = v8;
  if (!v8[5])
  {
LABEL_26:
    OUTLINED_FUNCTION_6();
    AMSupportCreateErrorInternal();
    goto LABEL_27;
  }

  v10 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v10, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    Count = CFArrayGetCount(v9[5]);
    if (Count < 1)
    {
      goto LABEL_31;
    }

    v12 = 0;
    v13 = *MEMORY[0x29EDB8ED8];
    theDict = Mutable;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9[5], v12);
      v15 = CFGetTypeID(ValueAtIndex);
      if (v15 != CFStringGetTypeID())
      {
        OUTLINED_FUNCTION_6();
        goto LABEL_30;
      }

      v16 = _AMAuthInstallUpdaterCopyResponseURL(a3, key, ValueAtIndex, v9[6], a4);
      if (!v16)
      {
        goto LABEL_31;
      }

      v17 = v16;
      CFGetAllocator(a1);
      AMSupportCreateDataFromFileURL();
      v18 = value;
      if (value)
      {
        goto LABEL_16;
      }

      cf = 0;
      MEMORY[0x29C28AE50](v13, v17, @"plist", &cf);
      if (!cf)
      {
        CFRelease(v17);
        Mutable = theDict;
        goto LABEL_31;
      }

      MEMORY[0x29C28AE80](v13, &v23);
      if (cf)
      {
        CFRelease(cf);
      }

      v18 = value;
      Mutable = theDict;
      if (value)
      {
LABEL_16:
        CFDictionarySetValue(Mutable, ValueAtIndex, v18);
        AMSupportLogInternal(6, "AMAuthInstallUpdaterCopyResponse", "Found cached ticket at %@", v17);
      }

      else if (v23)
      {
        CFDictionarySetValue(theDict, ValueAtIndex, v23);
        AMSupportLogInternal(6, "AMAuthInstallUpdaterCopyResponse", "Found cached (dictionary) ticket at %@", v17);
      }

      else
      {
        AMSupportLogInternal(3, "AMAuthInstallUpdaterCopyResponse", "No ticket found. %@", v17);
      }

      CFRelease(v17);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (v23)
      {
        CFRelease(v23);
        v23 = 0;
      }

      ++v12;
    }

    while (Count != v12);
    if (CFDictionaryGetCount(Mutable))
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_6();
    AMSupportCreateErrorInternal();
    CFRelease(Mutable);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6();
LABEL_30:
  AMSupportCreateErrorInternal();
LABEL_31:
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return Mutable;
}

uint64_t AMAuthInstallUpdaterCryptex1CopyTicket(const void *a1, const __CFURL *a2, void *a3)
{
  v4 = AMAuthInstallUpdaterCopyResponse(a1, @"Cryptex1", a2, a3);
  if (v4)
  {
    CFDictionaryGetValue(v4, @"Cryptex1,Ticket");
    v5 = AMSupportSafeRetain();
    if (!v5)
    {
      AMSupportCreateErrorInternal();
    }
  }

  else
  {
    v5 = 0;
  }

  if (a3 && *a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallUpdaterCryptex1CopyTicket", "failed: %@", *a3);
  }

  AMSupportSafeRelease();
  return v5;
}

void *AMAuthInstallUpdater(uint64_t a1, const __CFString *key, const __CFURL *a3, uint64_t a4)
{
  cf = 0;
  if (a1)
  {
    if (key)
    {
      Value = CFDictionaryGetValue(*(a1 + 456), key);
      if (!Value)
      {
        v9 = CFGetAllocator(a1);
        AMAuthInstallUpdaterCreate(v9);
        Value = v10;
        if (v10)
        {
          _AMAuthInstallUpdaterInitLocalSigning(v10, key);
          *(a1 + 440) = AMAuthInstallUpdaterAddTags;
          *(a1 + 448) = AMAuthInstallUpdaterWriteManifests;
          CFDictionarySetValue(*(a1 + 456), key, Value);
          CFRelease(Value);
          if (a3)
          {
            if (AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, a3, &cf))
            {
              AMSupportCreateErrorInternal();
            }

            else
            {
              v12 = CFGetAllocator(a1);
              ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v12, cf, @"%@.%@", v13, v14, v15, v16, v17, @"Updaters", key);
              if (ValueForKeyWithFormat)
              {
                v19 = ValueForKeyWithFormat;
                v20 = CFDictionaryGetValue(ValueForKeyWithFormat, @"RequestTags");
                if (v20)
                {
                  Value[2] = CFRetain(v20);
                }

                v21 = CFDictionaryGetValue(v19, @"ResponseTags");
                if (v21)
                {
                  Value[5] = CFRetain(v21);
                }

                v22 = CFDictionaryGetValue(v19, @"BuildIdentityTags");
                if (v22)
                {
                  Value[4] = CFRetain(v22);
                }

                v23 = CFDictionaryGetValue(v19, @"LoopInstance");
                if (v23)
                {
                  Value[6] = CFRetain(v23);
                }
              }
            }
          }
        }

        else
        {
          AMAuthInstallUpdater_cold_1(a4);
        }
      }
    }

    else
    {
      AMSupportCreateErrorInternal();
      Value = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  return Value;
}

double AMAuthInstallUpdaterCreate(uint64_t a1)
{
  pthread_once(&_AMAuthInstallUpdaterClassInitializeOnce, _AMAuthInstallUpdaterClassInitialize);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 80) = 0;
    result = 0.0;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
  }

  return result;
}

CFComparisonResult _AMAuthInstallUpdaterInitLocalSigning(uint64_t a1, CFStringRef theString1)
{
  if (theString1)
  {
    v4 = &off_2A1EE8380;
    v5 = 3;
    v6 = "Updater entry is NULL";
    while (1)
    {
      v7 = *(v4 - 1);
      if (!v7)
      {
        break;
      }

      result = CFStringCompare(theString1, v7, 0);
      if (result == kCFCompareEqualTo)
      {
        *(a1 + 64) = 0;
        *(a1 + 72) = *v4;
        *(a1 + 80) = @"LocalSigningID";
        return result;
      }

      v4 += 3;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v6 = "updaterName is NULL";
  }

  result = _AMAuthInstallUpdaterInitLocalSigning_cold_1(v6);
LABEL_6:
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t AMAuthInstallBundleCopyReceiptCreateIfNecessary(void *a1, const __CFURL *a2, CFPropertyListRef *a3)
{
  v39 = 0;
  propertyList = 0;
  v38 = 0;
  context = 0;
  v37 = 0;
  AMAuthInstallLockLock(a1[45]);
  Mutable = 0;
  v7 = 1;
  if (!a3 || !a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a1[16])
  {
    v11 = MEMORY[0x29EDB8EF8];
    v12 = CFURLGetString(a2);
    location = CFStringFind(v12, @"RecoveryOS", 0).location;
    v14 = MEMORY[0x29EDB8F00];
    if (location == -1)
    {
      v14 = v11;
    }

    v15 = *v14;
    if (*(a1[16] + 8))
    {
      Value = CFBooleanGetValue(v15);
      v17 = a1[16];
      v18 = *(v17 + 8);
      if (Value)
      {
        v19 = CFDictionaryGetValue(*(v17 + 8), @"RecoveryOS");
        if (!v19)
        {
          goto LABEL_14;
        }

        v18 = v19;
      }

      v20 = CFDictionaryGetValue(v18, @"Manifest");
      if (v18 && v20 && CFDictionaryGetCount(v20) >= 1)
      {
        v21 = CFGetAllocator(a1);
        DeepCopy = CFPropertyListCreateDeepCopy(v21, v18, 2uLL);
        Mutable = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        *a3 = DeepCopy;
        v7 = 2 * (DeepCopy == 0);
        goto LABEL_17;
      }
    }

LABEL_14:
    v23 = CFGetAllocator(a1);
    v24 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v23, a2, @"amai/receipt.plist", 0, &v39);
    if (v24)
    {
      v7 = v24;
LABEL_16:
      Mutable = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_17;
    }

    v26 = AMAuthInstallPlatformFileURLExists(v39, &v38);
    if (v26)
    {
      v7 = v26;
      LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v26);
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyReceiptCreateIfNecessary", "AMAuthInstallPlatformFileURLExists failed: %@", LocalizedStatusString, 0, 0);
      goto LABEL_16;
    }

    v27 = v38;
    v28 = CFGetAllocator(a1);
    if (v27)
    {
      AMAuthInstallSupportCreateDictionaryFromFileURL();
    }

    Mutable = CFDictionaryCreateMutable(v28, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v29 = CFGetAllocator(a1);
      v8 = CFArrayCreateMutable(v29, 0, MEMORY[0x29EDB9000]);
      if (v8)
      {
        v30 = CFGetAllocator(a1);
        v9 = CFArrayCreateMutable(v30, 0, MEMORY[0x29EDB9000]);
        if (v9)
        {
          v31 = CFGetAllocator(a1);
          v10 = CFDictionaryCreateMutable(v31, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          if (v10)
          {
            CFDictionarySetValue(Mutable, @"Personalized", v8);
            CFDictionarySetValue(Mutable, @"Linked", v9);
            CFDictionarySetValue(Mutable, @"Manifest", v10);
            v32 = CFGetAllocator(a1);
            *a3 = CFPropertyListCreateDeepCopy(v32, Mutable, 2uLL);
            v33 = CFBooleanGetValue(v15);
            v34 = *(a1[16] + 8);
            if (v33)
            {
              if (v34)
              {
                CFDictionaryReplaceValue(v34, @"RecoveryOS", Mutable);
              }

              v7 = 0;
            }

            else
            {
              if (v34)
              {
                CFRelease(v34);
                *(a1[16] + 8) = 0;
              }

              v7 = 0;
              *(a1[16] + 8) = CFRetain(Mutable);
            }

            goto LABEL_17;
          }

LABEL_35:
          v7 = 2;
          goto LABEL_17;
        }

LABEL_34:
        v10 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
    goto LABEL_34;
  }

LABEL_17:
  AMAuthInstallLockUnlock(a1[45]);
  SafeRelease(v39);
  SafeRelease(0);
  SafeRelease(Mutable);
  SafeRelease(v8);
  SafeRelease(v9);
  SafeRelease(propertyList);
  SafeRelease(v10);
  SafeRelease(v37);
  SafeRelease(context);
  return v7;
}

uint64_t AMAuthInstallPlatformCopyURLWithAppendedComponent(const __CFAllocator *a1, CFTypeRef cf, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (!cf)
  {
    return 1;
  }

  v10 = CFGetTypeID(cf);
  v11 = CFURLGetTypeID();
  result = 1;
  if (a5 && a3 && v10 == v11)
  {
    v13 = CFURLCreateCopyAppendingPathComponent(a1, cf, a3, a4);
    if (v13)
    {
      v14 = v13;
      result = 0;
      *a5 = v14;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallPlatformFileURLExists(const __CFURL *a1, BOOL *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1 && a2)
  {
    bzero(&v6, 0x90uLL);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = stat(buffer, &v6);
      result = 0;
      *a2 = v5 == 0;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

const __CFDictionary *AMAuthInstallSupportGetValueForKeyWithFormat(const __CFAllocator *a1, const __CFDictionary *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!a3)
  {
    return 0;
  }

  v10 = CFStringCreateWithFormatAndArguments(a1, 0, a3, va);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(a1, a2, v10);
  CFRelease(v11);
  return ValueForKeyPathInDict;
}

const __CFDictionary *AMAuthInstallSupportGetValueForKeyPathInDict(const __CFAllocator *a1, const __CFDictionary *a2, CFStringRef theString)
{
  Value = a2;
  if (!a2)
  {
    AMAuthInstallSupportGetValueForKeyPathInDict_cold_4(a1);
    return Value;
  }

  if (!theString)
  {
    AMAuthInstallSupportGetValueForKeyPathInDict_cold_3(a1);
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @".");
  if (!ArrayBySeparatingStrings)
  {
    AMAuthInstallSupportGetValueForKeyPathInDict_cold_2(0);
    return 0;
  }

  v5 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      if (!ValueAtIndex)
      {
        break;
      }

      Value = CFDictionaryGetValue(Value, ValueAtIndex);
      if (Value)
      {
        if (v7 != ++v8)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    AMAuthInstallSupportGetValueForKeyPathInDict_cold_1(0);
    Value = 0;
  }

LABEL_9:
  CFRelease(v5);
  return Value;
}

uint64_t _AMAuthInstallUpdaterCopyResponseURL(const __CFURL *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    _AMAuthInstallUpdaterCopyResponseURL_cold_4(a5);
    return 0;
  }

  if (!a2)
  {
    _AMAuthInstallUpdaterCopyResponseURL_cold_3(a5);
    return 0;
  }

  if (!a3)
  {
    _AMAuthInstallUpdaterCopyResponseURL_cold_2(a5);
    return 0;
  }

  ManifestPath = AMAuthInstallBundleGetManifestPath();
  v11 = CFStringCreateWithFormat(0, 0, @"%@%c%@", ManifestPath, 47, a2);
  if (!v11)
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  v12 = v11;
  v13 = CFURLCreateCopyAppendingPathComponent(0, a1, v11, 1u);
  if (!v13)
  {
    AMSupportCreateErrorInternal();
    v16 = v12;
LABEL_18:
    CFRelease(v16);
    return 0;
  }

  v14 = v13;
  if (MEMORY[0x29C28AF20]())
  {
    AMSupportCreateErrorInternal();
    v15 = 0;
    goto LABEL_16;
  }

  if (a4)
  {
    v15 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@.%@", a3, a4);
    if (!v15)
    {
      _AMAuthInstallUpdaterCopyResponseURL_cold_1(a5);
      goto LABEL_16;
    }
  }

  else
  {
    v15 = CFRetain(a3);
  }

  if (AMSupportCopyURLWithAppendedComponent())
  {
    AMSupportCreateErrorInternal();
  }

LABEL_16:
  CFRelease(v12);
  CFRelease(v14);
  if (v15)
  {
    v16 = v15;
    goto LABEL_18;
  }

  return 0;
}

void _AMAuthInstallFinalize(uint64_t a1)
{
  if (!a1)
  {
    _AMAuthInstallFinalize_cold_1();
  }

  if (!*(a1 + 520))
  {
    *(a1 + 520) = 1;
    AMAuthInstallApFinalize(a1);
    AMAuthInstallBasebandFinalize(a1);
    AMAuthInstallBundleFinalize(a1);
    SafeRelease(*(a1 + 120));
    SafeRelease(*(a1 + 376));
    SafeRelease(*(a1 + 384));
    SafeRelease(*(a1 + 416));
    SafeRelease(*(a1 + 336));
    SafeRelease(*(a1 + 96));
    SafeRelease(*(a1 + 72));
    SafeRelease(*(a1 + 88));
    SafeRelease(*(a1 + 64));
    SafeRelease(*(a1 + 352));
    SafeRelease(*(a1 + 296));
    SafeRelease(*(a1 + 312));
    SafeRelease(*(a1 + 320));
    SafeRelease(*(a1 + 424));
    SafeRelease(*(a1 + 456));
    SafeRelease(*(a1 + 464));
    SafeRelease(*(a1 + 472));
    SafeRelease(*(a1 + 480));
    SafeRelease(*(a1 + 496));
    SafeRelease(*(a1 + 40));
    SafeRelease(*(a1 + 512));
    SafeRelease(*(a1 + 360));
    SafeRelease(*(a1 + 488));

    bzero((a1 + 16), 0x208uLL);
  }
}

void AMAuthInstallApFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    SafeRelease(*(v2 + 24));
    SafeRelease(*(*(a1 + 16) + 32));
    SafeRelease(*(*(a1 + 16) + 48));
    SafeRelease(*(*(a1 + 16) + 56));
    SafeRelease(*(*(a1 + 16) + 104));
    SafeRelease(*(*(a1 + 16) + 120));
    SafeRelease(*(*(a1 + 16) + 136));
    SafeRelease(*(*(a1 + 16) + 144));
    SafeRelease(*(*(a1 + 16) + 152));
    SafeRelease(*(*(a1 + 16) + 176));
    SafeRelease(*(*(a1 + 16) + 184));
    SafeRelease(*(*(a1 + 16) + 192));
    SafeRelease(*(*(a1 + 16) + 200));
    SafeRelease(*(*(a1 + 16) + 208));
    SafeRelease(*(*(a1 + 16) + 64));
    SafeRelease(*(*(a1 + 16) + 72));
    SafeFree(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  SafeRelease(*(a1 + 24));
  SafeRelease(*(a1 + 528));
  *(a1 + 24) = 0;
  *(a1 + 528) = 0;
}

void AMAuthInstallBasebandFinalize(uint64_t a1)
{
  if (*(a1 + 176))
  {
    OUTLINED_FUNCTION_20();
    AMAuthInstallLog(v2, v3, v4);
    AMAuthInstallLog(3, "AMAuthInstallBasebandFinalize", "* unacknowledged fusing program *");
    OUTLINED_FUNCTION_20();
    AMAuthInstallLog(v5, v6, v7);
  }

  _AMAuthInstallBasebandParametersFinalize(*(a1 + 48));
  AMAuthInstallBasebandLocalSetSigningParameters(a1, 0, 0, 0, 0, 0);
  SafeRelease(*(a1 + 160));
  SafeRelease(*(a1 + 168));
  SafeRelease(*(a1 + 176));
  SafeRelease(*(a1 + 192));
  SafeRelease(*(a1 + 200));
  SafeRelease(*(a1 + 208));
  SafeRelease(*(a1 + 216));
  SafeRelease(*(a1 + 136));
  SafeRelease(*(a1 + 240));
  SafeRelease(*(a1 + 264));
  SafeRelease(*(a1 + 248));
  SafeRelease(*(a1 + 232));
  SafeRelease(*(a1 + 272));
  v8 = *(a1 + 280);

  SafeRelease(v8);
}

void _AMAuthInstallBasebandParametersFinalize(CFTypeRef *a1)
{
  if (a1)
  {
    SafeRelease(a1[2]);
    SafeRelease(a1[3]);
    SafeRelease(a1[4]);
    SafeRelease(a1[5]);
    SafeRelease(a1[8]);
    SafeRelease(a1[9]);
    SafeRelease(a1[13]);
    SafeRelease(a1[14]);
    SafeRelease(a1[15]);
    SafeRelease(a1[16]);
    SafeRelease(a1[17]);
    SafeRelease(a1[18]);
    SafeRelease(a1[19]);
    SafeRelease(a1[21]);

    free(a1);
  }
}

uint64_t AMAuthInstallBasebandLocalSetSigningParameters(void *cf, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  cfa = 0;
  if (cf)
  {
    if (a2 && a3 && a4 || (v12 = 1, !a2) && !a3 && !a4 && !a5 && !a6)
    {
      if (*(cf + 46))
      {
        AMAuthInstallReleaseRsaKeyData();
        SafeRelease(*(*(cf + 46) + 8));
        SafeRelease(*(*(cf + 46) + 16));
        SafeRelease(*(*(cf + 46) + 24));
        SafeRelease(*(*(cf + 46) + 32));
        free(*(cf + 46));
        *(cf + 46) = 0;
      }

      if (a2)
      {
        CFGetAllocator(cf);
        v13 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
        if (v13)
        {
          v12 = v13;
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(cf, v13);
          AMAuthInstallLog(3, "AMAuthInstallBasebandLocalSetSigningParameters", "bad local signing key: %@", LocalizedStatusString, 0);
        }

        else
        {
          v15 = calloc(1uLL, 0x28uLL);
          *(cf + 46) = v15;
          if (v15)
          {
            **(cf + 46) = CFRetain(0);
            *(*(cf + 46) + 8) = CFRetain(a3);
            *(*(cf + 46) + 16) = CFRetain(a4);
            *(*(cf + 46) + 32) = CFRetain(a6);
            v12 = 0;
            *(*(cf + 46) + 24) = SafeRetain(a5);
          }

          else
          {
            v12 = 2;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  SafeRelease(cfa);
  SafeRelease(0);
  return v12;
}

void AMAuthInstallBundleFinalize(uint64_t result)
{
  v1 = *(result + 128);
  if (v1)
  {
    SafeRelease(*v1);
    SafeRelease(*(*(result + 128) + 8));
    SafeRelease(*(*(result + 128) + 16));
    SafeRelease(*(*(result + 128) + 24));
    SafeRelease(*(*(result + 128) + 32));
    SafeRelease(*(*(result + 128) + 40));
    SafeFree(*(result + 128));
    *(result + 128) = 0;
  }
}

void SafeFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

double _AMAuthInstallUpdaterFinalize(uint64_t a1)
{
  if (!a1)
  {
    _AMAuthInstallUpdaterFinalize_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *v4 = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t AMAuthInstallUpdaterCryptex1MobileAssetSetInfo(void *a1, const __CFURL *a2, void *a3, uint64_t a4, const void *a5, const void *a6, const void *a7, const void *a8, void *value, char a10, void *a11)
{
  v34 = *MEMORY[0x29EDCA608];
  theDict = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_6(a11);
LABEL_34:
    v26 = 99;
    goto LABEL_22;
  }

  v19 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_5(a11);
    goto LABEL_34;
  }

  AMAuthInstallApCopyParameters(a1, &theDict);
  if (!theDict)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_4(a11);
    goto LABEL_34;
  }

  v21 = CFDictionaryGetValue(theDict, @"ApChipID");
  if (!v21)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_3(a11);
    goto LABEL_34;
  }

  CFDictionarySetValue(Mutable, @"ApChipId", v21);
  v22 = CFDictionaryGetValue(theDict, @"ECID");
  if (!v22)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_2(a11);
    goto LABEL_34;
  }

  CFDictionarySetValue(Mutable, @"ApECID", v22);
  v23 = CFDictionaryGetValue(theDict, @"ApProductionMode");
  if (!v23)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_1(a11);
    goto LABEL_34;
  }

  CFDictionarySetValue(Mutable, @"ApProductionMode", v23);
  v24 = CFDictionaryGetValue(theDict, @"ApX86");
  if (v24)
  {
    CFDictionarySetValue(Mutable, @"IsX86", v24);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, @"Nonce", a6);
  }

  if (a7)
  {
    CFDictionarySetValue(Mutable, @"LiveNonce", a7);
  }

  if (a8)
  {
    CFDictionarySetValue(Mutable, @"ExclaveNonce", a8);
  }

  if (value)
  {
    CFDictionarySetValue(Mutable, @"ExclaveLiveNonce", value);
  }

  AMSupportCFDictionarySetBoolean();
  *in = 0u;
  memset(v33, 0, sizeof(v33));
  v30 = 37;
  if (sysctlbyname("kern.bootsessionuuid", in, &v30, 0, 0))
  {
    v25 = __error();
    strerror(*v25);
    AMAuthInstallLog(4, "_AMAuthInstallCryptex1CopyBootSessionUUID", "failed to obtain kern.bootsessionuuid: %d (%s)");
  }

  else
  {
    memset(uu, 0, sizeof(uu));
    if (uuid_parse(in, uu))
    {
      AMAuthInstallLog(4, "_AMAuthInstallCryptex1CopyBootSessionUUID", "failed to parse kern.bootsessionuuid");
    }

    else
    {
      v28 = CFDataCreate(*MEMORY[0x29EDB8ED8], uu, 16);
      if (v28)
      {
        CFDictionarySetValue(Mutable, @"BootUUID", v28);
      }
    }
  }

  v26 = AMAuthInstallUpdaterSetInfo(a1, @"Cryptex1", Mutable, a2, a3, a4, a5, 0, 0, a11);
LABEL_22:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (a11 && *a11)
  {
    AMAuthInstallLog(3, "AMAuthInstallUpdaterCryptex1MobileAssetSetInfo", "failed: %@", *a11);
  }

  return v26;
}

__CFDictionary *AMAuthInstallUpdaterCryptex1GetTags(uint64_t a1, void (*a2)(uint64_t, const char *), uint64_t a3, void *a4)
{
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 28, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1GetTags_cold_5(a4);
    v14 = 0;
    goto LABEL_7;
  }

  v9 = _AMAuthInstallCryptex1CopyManifestProperties();
  if (!v9)
  {
    AMAuthInstallUpdaterCryptex1GetTags_cold_4(a4);
    v14 = 0;
    goto LABEL_7;
  }

  v10 = _AMAuthInstallCryptex1CopyObjectTags();
  if (!v10)
  {
    AMAuthInstallUpdaterCryptex1GetTags_cold_3(a4);
LABEL_16:
    v14 = 0;
    goto LABEL_7;
  }

  v22.length = CFArrayGetCount(v9);
  v22.location = 0;
  CFArrayAppendArray(Mutable, v9, v22);
  v23.length = CFArrayGetCount(v10);
  v23.location = 0;
  CFArrayAppendArray(Mutable, v10, v23);
  v11 = CFArrayCreateMutable(v7, 1, MEMORY[0x29EDB9000]);
  v12 = v11;
  if (!v11)
  {
    AMAuthInstallUpdaterCryptex1GetTags_cold_2(a4);
    goto LABEL_16;
  }

  CFArrayAppendValue(v11, @"Cryptex1,Ticket");
  v13 = CFDictionaryCreateMutable(v7, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v14 = v13;
  if (v13)
  {
    CFDictionaryAddValue(v13, @"BuildIdentityTags", Mutable);
    CFDictionaryAddValue(v14, @"ResponseTags", v12);
  }

  else
  {
    AMAuthInstallUpdaterCryptex1GetTags_cold_1(a4);
  }

LABEL_7:
  if (a4 && *a4)
  {
    _AMAuthInstallCryptex1Log(a2, a3, v15, v16, v17, v18, v19, v20, "AMAuthInstallUpdaterCryptex1GetTags", *a4);
    return 0;
  }

  else
  {
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
  }

  return v14;
}

CFMutableDictionaryRef AMAuthInstallUpdaterCryptex1CopyFirmware(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1CopyFirmware_cold_1(a4);
  }

  return Mutable;
}

const void *_AMAuthInstallCryptex1GetDeviceInfoValue(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value || (v7 = Value, CFGetTypeID(Value) != a3))
  {
    _AMAuthInstallCryptex1GetDeviceInfoValue_cold_1(a4);
    return 0;
  }

  return v7;
}

uint64_t _AMAuthInstallCryptex1RequestSetNonce(__CFDictionary *a1, const void *a2, CFDictionaryRef theDict, void *key, uint64_t a5)
{
  v15 = *MEMORY[0x29EDCA608];
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    AMSupportLogInternal(4, "_AMAuthInstallCryptex1RequestSetNonce", "No %@ provided, generating random value for %@", key, a2);
    memset(__buf, 0, sizeof(__buf));
    arc4random_buf(__buf, 0x30uLL);
    v12 = CFDataCreate(*MEMORY[0x29EDB8ED8], __buf, 48);
    if (v12)
    {
      CFDictionarySetValue(a1, a2, v12);
      AMSupportSafeRelease();
      return 1;
    }

    _AMAuthInstallCryptex1RequestSetNonce_cold_2(a5);
    return 0;
  }

  v10 = Value;
  v11 = CFGetTypeID(Value);
  if (v11 != CFDataGetTypeID())
  {
    _AMAuthInstallCryptex1RequestSetNonce_cold_1(a5);
    return 0;
  }

  CFDictionarySetValue(a1, a2, v10);
  return 1;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1, uint64_t a2)
{

  return AMSupportCreateErrorInternal();
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{

  return _AMAuthInstallCryptex1RequestSetNonce(v4, a2, v6, a4, v5);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2)
{

  return AMSupportCreateErrorInternal();
}

const void *OUTLINED_FUNCTION_7(uint64_t a1, const void *a2, uint64_t a3)
{

  return _AMAuthInstallCryptex1GetDeviceInfoValue(v4, a2, a3, v3);
}

uint64_t AMAuthInstallBasebandSetVendorData(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 136) = 0;
  }

  if (!cf)
  {
    return 0;
  }

  v5 = CFRetain(cf);
  result = 0;
  *(a1 + 136) = v5;
  return result;
}

uint64_t AMAuthInstallBasebandSetVinylData(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8)
{
  if (!a1)
  {
    return 1;
  }

  v9 = *(a1 + 48);
  if (!v9)
  {
    return 1;
  }

  SafeRelease(*(v9 + 120));
  v17 = CFRetain(a2);
  v18 = *(a1 + 48);
  *(v18 + 120) = v17;
  SafeRelease(*(v18 + 128));
  v19 = CFRetain(a3);
  v20 = *(a1 + 48);
  *(v20 + 128) = v19;
  SafeRelease(*(v20 + 136));
  v21 = CFRetain(a4);
  v22 = *(a1 + 48);
  *(v22 + 136) = v21;
  SafeRelease(*(v22 + 144));
  v23 = CFRetain(a5);
  v24 = *(a1 + 48);
  *(v24 + 144) = v23;
  SafeRelease(*(v24 + 152));
  v25 = CFRetain(a6);
  v26 = *(a1 + 48);
  *(v26 + 152) = v25;
  SafeRelease(*(v26 + 160));
  v27 = CFRetain(a7);
  v28 = *(a1 + 48);
  *(v28 + 160) = v27;
  SafeRelease(*(v28 + 168));
  v29 = CFRetain(a8);
  result = 0;
  *(*(a1 + 48) + 168) = v29;
  return result;
}

__CFString *AMAuthInstallGetLocalizedStatusString(CFDictionaryRef *cf, int a2)
{
  valuePtr = a2;
  if (a2 > 98)
  {
    if (a2 <= 3500)
    {
      switch(a2)
      {
        case 99:
          return @"Generic";
        case 3194:
          return @"Declined to authorize this image on this device for this user.";
        case 3500:
          return @"The signing server returned an internal error";
      }
    }

    else if (a2 > 3503)
    {
      if (a2 == 3504)
      {
        return @"The signing server could not find the resource requested";
      }

      if (a2 == 3507)
      {
        return @"You must authorize with a proxy server before making this request";
      }
    }

    else
    {
      if (a2 == 3501)
      {
        return @"You must authorize with the signing server before making this request";
      }

      if (a2 == 3503)
      {
        return @"You are not authorized to make this request. Please check your device or credentials";
      }
    }

LABEL_42:
    Value = &stru_2A1EE9D10;
    if (cf)
    {
      if ((a2 - 3100) <= 0x383)
      {
        v5 = CFGetAllocator(cf);
        v6 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
        if (v6)
        {
          v7 = v6;
          Value = CFDictionaryGetValue(cf[44], v6);
          CFRelease(v7);
          if (!Value)
          {
            AMAuthInstallLog(7, "AMAuthInstallGetLocalizedStatusString", "no cached text for tss error code %d", valuePtr);
          }
        }
      }
    }
  }

  else
  {
    Value = @"No error";
    switch(a2)
    {
      case 0:
        return Value;
      case 1:
        Value = @"Bad parameter";
        break;
      case 2:
        Value = @"Allocation error";
        break;
      case 3:
        Value = @"Conversion error";
        break;
      case 4:
        Value = @"File error";
        break;
      case 5:
        Value = @"Hash error";
        break;
      case 6:
        Value = @"Crypto error";
        break;
      case 7:
        Value = @"Bad build identity";
        break;
      case 8:
        Value = @"Entry not found";
        break;
      case 9:
        Value = @"Invalid img3 object";
        break;
      case 10:
        Value = @"Invalid bbfw object";
        break;
      case 11:
        Value = @"Server not reachable";
        break;
      case 12:
        Value = @"Server timed out";
        break;
      case 13:
        Value = @"Unimplemented";
        break;
      case 14:
        Value = @"Internal error";
        break;
      case 15:
        Value = @"Invalid bbfw file";
        break;
      case 16:
        Value = @"Network error";
        break;
      case 17:
        Value = @"Bad response";
        break;
      case 18:
        Value = @"Fusing failed";
        break;
      case 19:
        Value = @"Baseband provisioning failed";
        break;
      case 20:
        Value = @"AppleConnect not found";
        break;
      case 21:
        Value = @"AppleConnect user canceled";
        break;
      case 22:
        Value = @"AppleConnect bad credentials";
        break;
      default:
        goto LABEL_42;
    }
  }

  return Value;
}

uint64_t AMAuthInstallSetDebugFlags(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 344) = a2;
  return result;
}

void AMAuthInstallApplyRequestEntries(const __CFString *a1, const __CFDictionary *a2, void *a3)
{
  if (CFStringCompare(a1, @"@ApImg4Ticket", 0) == kCFCompareEqualTo)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      v7 = _AMAuthInstallApplyApRequestEntries;
LABEL_7:

      CFDictionaryApplyFunction(a2, v7, a3);
      return;
    }
  }

  if (CFStringCompare(a1, @"@BBTicket", 0) == kCFCompareEqualTo)
  {
    v8 = CFDictionaryGetTypeID();
    if (v8 == CFGetTypeID(a2))
    {
      v7 = _AMAuthInstallApplyBbRequestEntries;
      goto LABEL_7;
    }
  }

  if (CFStringHasPrefix(a1, @"Ap"))
  {
    v9 = @"ApRequestEntries";
  }

  else
  {
    if (!CFStringHasPrefix(a1, @"Bb"))
    {
      if (CFStringHasPrefix(a1, @"FDR"))
      {

        AMAuthInstallSetFDRRequestEntry(a3, a1, a2);
      }

      return;
    }

    v9 = @"BbRequestEntries";
  }

  AMAuthInstallSetRequestEntry(a3, v9, a1, a2);
}

uint64_t AMAuthInstallSetFDRRequestEntry(const void *a1, const void *a2, const void *a3)
{
  v6 = AMAuthInstallSetRequestEntry(a1, @"ApRequestEntries", a2, a3);
  if (v6)
  {
    v7 = v6;
    AMAuthInstallLog(3, "AMAuthInstallSetFDRRequestEntry", "failed to set FDR entry in Ap request");
  }

  else
  {
    v7 = AMAuthInstallSetRequestEntry(a1, @"BbRequestEntries", a2, a3);
    if (v7)
    {
      AMAuthInstallLog(3, "AMAuthInstallSetFDRRequestEntry", "failed to set FDR entry in Bb request");
    }
  }

  return v7;
}

uint64_t AMAuthInstallSetSOCKSProxyInformation(uint64_t a1, const void *a2, const void *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (a1)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (Mutable)
        {
          v7 = Mutable;
          CFDictionarySetValue(Mutable, @"SOCKSProxy", a2);
          CFDictionarySetValue(v7, @"SOCKSPort", a3);
          AMAuthInstallSetSOCKSProxyDict(a1, v7);
          CFRelease(v7);
          return 0;
        }

        AMAuthInstallSetSOCKSProxyInformation_cold_1(0);
      }

      else
      {
        AMAuthInstallSetSOCKSProxyInformation_cold_2(0);
      }
    }

    else
    {
      AMAuthInstallSetSOCKSProxyInformation_cold_3(a1);
    }
  }

  else
  {
    AMAuthInstallSetSOCKSProxyInformation_cold_4(a1);
  }

  return 99;
}

uint64_t AMAuthInstallSetSOCKSProxyDict(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    AMAuthInstallSetSOCKSProxyDict_cold_2(a1);
    return 99;
  }

  if (!a1)
  {
    AMAuthInstallSetSOCKSProxyDict_cold_1(0);
    return 99;
  }

  v4 = *(a1 + 488);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = CFRetain(cf);
  result = 0;
  *(a1 + 488) = v5;
  return result;
}

uint64_t AMAuthInstallCreateRecoveryOSBuildIdentityAssetList(CFArrayRef *a1)
{
  values[14] = *MEMORY[0x29EDCA608];
  values[0] = @"RecoveryOSOS";
  values[1] = @"RecoveryOSKernelCache";
  values[2] = @"RecoveryOSDeviceTree";
  values[3] = @"RecoveryOSiBEC";
  values[4] = @"RecoveryOSAppleLogo";
  values[5] = @"RecoveryOSStaticTrustCache";
  values[6] = @"RecoveryOSiBootData";
  values[7] = @"RecoveryOSDiags";
  values[8] = @"RecoveryOSAp,SystemVolumeCanonicalMetadata";
  values[9] = @"RecoveryOSSystemVolume";
  values[10] = @"RecoveryOSBaseSystemVolume";
  values[11] = @"RecoveryOSAp,BaseSystemTrustCache";
  values[12] = @"RecoveryOSAVISP1,RTKitOS";
  values[13] = @"RecoveryOSWireless1,RTKitOS";
  v2 = CFArrayCreate(*MEMORY[0x29EDB8ED8], values, 14, MEMORY[0x29EDB9000]);
  *a1 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 99;
  }
}

uint64_t AMAuthInstallSetFusingRootCA(uint64_t a1, const void *a2)
{
  if (a2)
  {
    if (a1)
    {
      SafeRelease(*(a1 + 192));
      *(a1 + 192) = CFRetain(a2);
      AMAuthInstallLog(6, "AMAuthInstallSetFusingRootCA", "RootCA has been set!");
      return 0;
    }

    AMAuthInstallSetFusingRootCA_cold_1(0);
  }

  else
  {
    AMAuthInstallSetFusingRootCA_cold_2(a1);
  }

  return 99;
}

void AMAuthInstallClearTrustedSSLCACerts(uint64_t a1)
{
  if (a1)
  {
    SafeRelease(*(a1 + 512));
    *(a1 + 512) = 0;
  }
}

uint64_t _AMAuthInstallClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMAuthInstallTypeID = result;
  return result;
}

CFStringRef _AMAuthInstallCopyFormattingDescription(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    _AMAuthInstallCopyFormattingDescription_cold_1();
  }

  v4 = AMAuthInstallApCopyDescription(a1);
  v5 = AMAuthInstallBasebandCopyDescription(a1);
  v6 = CFGetAllocator(a1);
  v7 = *(a1 + 72);
  if (*(a1 + 64))
  {
    v8 = *(a1 + 64);
  }

  else
  {
    v8 = @"default";
  }

  if (*(a1 + 56))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (*(a1 + 104))
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  PlatformInfoString = AMAuthInstallPlatformGetPlatformInfoString();
  v13 = CFStringCreateWithFormat(v6, a2, @"<AMAuthInstall %p>{ap=%@, bp=%@, UserAuth=%@, iTunes=%@, server=%@, locale=%@, version=%@, platform=%@}", a1, v4, v5, v10, v9, v7, v8, LibraryVersionString, PlatformInfoString);
  SafeRelease(v4);
  SafeRelease(v5);
  return v13;
}

uint64_t AMAuthInstallApIsImg4(uint64_t a1)
{
  if (!a1)
  {
    AMAuthInstallApIsImg4_cold_2();
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    AMAuthInstallApIsImg4_cold_1();
    return 0;
  }

  return *(v1 + 112);
}

uint64_t AMAuthInstallApSetFusings(uint64_t a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  if (!a1)
  {
    return 1;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    free(v12);
  }

  v13 = calloc(1uLL, 0xD8uLL);
  *(a1 + 16) = v13;
  if (!v13)
  {
    return 2;
  }

  v14 = v13;
  result = 0;
  *v14 = a2;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  *(v14 + 20) = a6;
  return result;
}

__CFString *AMAuthInstallApCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 64);
  CFStringAppend(Mutable, @"(");
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = "YES";
    if (*(a1 + 57))
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (*(v4 + 20))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if (*(v4 + 97))
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    if (*(v4 + 88))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    if (*(v4 + 98))
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    if (*(v4 + 112))
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    if (*(v4 + 136))
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (!*(v4 + 144))
    {
      v5 = "NO";
    }

    CFStringAppendFormat(Mutable, 0, @"personalize=%s %@ ecid=0x%llx, chipid=0x%x, boardid=0x%x, secDom=%d, isProduction=%s, EPRO=%s, isSecure=%s, ESEC=%s, img4=%s, demotionPolicy=%@, managedBaaCert=%s, slowRollBaaCert=%s, dpoc=%@", v6, *(v4 + 120), *v4, *(v4 + 8), *(v4 + 12), *(v4 + 16), v7, v8, v9, v10, v11, *(v4 + 104), v12, v5, *(v4 + 208));
    v13 = *(a1 + 16);
    if (*(v13 + 24))
    {
      v14 = CFGetAllocator(a1);
      v15 = _CopyHexStringFromData(v14, *(*(a1 + 16) + 24));
      CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v15);
      CFRelease(v15);
      v13 = *(a1 + 16);
    }

    if (*(v13 + 48))
    {
      v16 = CFGetAllocator(a1);
      v17 = _CopyHexStringFromData(v16, *(*(a1 + 16) + 48));
      CFStringAppendFormat(Mutable, 0, @", sepNonce=0x%@", v17);
      CFRelease(v17);
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

uint64_t AMAuthInstallEnableManagedRequest(void *a1, void *a2)
{
  if (a1)
  {

    return AMAuthInstallHttpRequestManagedBaaCertificate(a1, a2);
  }

  else
  {
    AMAuthInstallEnableManagedRequest_cold_1(a1);
    return 1;
  }
}

uint64_t AMAuthInstallEnableAlternateUpdateRequest(void *a1, void *a2)
{
  if (a1)
  {

    return AMAuthInstallHttpRequestAlternateUpdateBaaCertificate(a1, a2);
  }

  else
  {
    AMAuthInstallEnableAlternateUpdateRequest_cold_1(a1);
    return 1;
  }
}

uint64_t AMAuthInstallApEnableLocalPolicyHactivation(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 505) = 1;
  }

  else
  {
    AMAuthInstallApEnableLocalPolicyHactivation_cold_1(a1);
    return 1;
  }

  return result;
}

uint64_t AMAuthInstallApEnableGlobalSigning(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      SafeRelease(*(a1 + 40));
      v4 = CFRetain(a2);
      result = 0;
      *(a1 + 40) = v4;
      return result;
    }

    AMAuthInstallApEnableGlobalSigning_cold_1(a1);
  }

  else
  {
    AMAuthInstallApEnableGlobalSigning_cold_2(0);
  }

  return 1;
}

uint64_t AMAuthInstallApCreateDigest(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1 && (a3 == 1 || a3 == 384 || a3 == 256))
  {

    return MEMORY[0x2A1C6F550]();
  }

  else
  {
    AMSupportCreateErrorInternal();
    return 0;
  }
}

const void *AMAuthInstallApCreateHashFromURL(const __CFAllocator *a1, const __CFData *a2)
{
  Value = a2;
  theDict = 0;
  if (a2)
  {
    ImageType = AMAuthInstallApGetImageType(a1, a2);
    if (ImageType == 2)
    {
      MeasurementsFromURL = AMAuthInstallApImg4CreateMeasurementsFromURL(a1, Value, 1, &theDict);
      if (!MeasurementsFromURL)
      {
LABEL_4:
        Value = CFDictionaryGetValue(theDict, @"Digest");
        SafeRetain(Value);
        goto LABEL_5;
      }
    }

    else
    {
      if (ImageType != 1)
      {
LABEL_9:
        Value = 0;
        goto LABEL_5;
      }

      MeasurementsFromURL = AMAuthInstallApImg3CreateMeasurementsFromURL(a1, Value, &theDict, 0);
      if (!MeasurementsFromURL)
      {
        goto LABEL_4;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallApCreateHashFromURL", "%s: could not create measurements: %d", "AMAuthInstallApCreateHashFromURL", MeasurementsFromURL);
    goto LABEL_9;
  }

LABEL_5:
  SafeRelease(theDict);
  return Value;
}

uint64_t AMAuthInstallApAddTag(uint64_t a1, CFStringRef theString1, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    AMAuthInstallApAddTag_cold_3(a4);
    return 0;
  }

  if (!theString1)
  {
    AMAuthInstallApAddTag_cold_2(a4);
    return 0;
  }

  if (!a3)
  {
    AMAuthInstallApAddTag_cold_1(a4);
    return 0;
  }

  if (CFStringCompare(theString1, @"ApChipID", 0) && CFStringCompare(theString1, @"ApBoardID", 0))
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  AMSupportCFDictionarySetInteger32();
  return 1;
}

void OUTLINED_FUNCTION_5_0(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

CFTypeRef _AMAuthInstallApFtabCopyFtabFromFile(uint64_t a1, uint64_t a2, const UInt8 **a3)
{
  theData = 0;
  if (!a2)
  {
    _AMAuthInstallApFtabCopyFtabFromFile_cold_5(a1);
LABEL_15:
    v11 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    _AMAuthInstallApFtabCopyFtabFromFile_cold_4(a1);
    goto LABEL_15;
  }

  DataFromMappedFileURL = AMAuthInstallPlatformCreateDataFromMappedFileURL(a1, &theData, a2);
  if (DataFromMappedFileURL)
  {
    AMAuthInstallLog(3, "_AMAuthInstallApFtabCopyFtabFromFile", "AMAuthInstallPlatformCreateDataFromMappedFileURL returned %d", DataFromMappedFileURL);
    goto LABEL_15;
  }

  if (!theData)
  {
    _AMAuthInstallApFtabCopyFtabFromFile_cold_3();
    goto LABEL_15;
  }

  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, theData);
  v6 = MutableCopy;
  if (!MutableCopy)
  {
    _AMAuthInstallApFtabCopyFtabFromFile_cold_2();
    goto LABEL_15;
  }

  Length = CFDataGetLength(MutableCopy);
  BytePtr = CFDataGetBytePtr(v6);
  if (!AMAuthInstallApFtabIsValid(v6, 0))
  {
    _AMAuthInstallApFtabCopyFtabFromFile_cold_1();
    goto LABEL_15;
  }

  v9 = &BytePtr[16 * (*(BytePtr + 10) - 1)];
  v10 = (*(v9 + 14) + *(v9 + 13));
  if (Length > v10)
  {
    v14.location = (v10 + 1);
    v14.length = Length + ~v10;
    CFDataDeleteBytes(v6, v14);
  }

  *(BytePtr + 2) = 0;
  v11 = CFRetain(v6);
  *a3 = BytePtr;
LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v11;
}

uint64_t image3SHA1Generate(const void *a1, CC_LONG a2, unsigned __int8 *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  return CC_SHA1_Final(a3, &v7);
}

uint64_t image3PKISignHash(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  return 0;
}

int8x16_t image3SHA1Partial(const void *a1, CC_LONG a2, int8x16_t *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  result = vrev32q_s8(*&v7.h0);
  *a3 = result;
  a3[1].i32[0] = bswap32(v7.h4);
  return result;
}

uint64_t AMAuthInstallApImg3CreatePersonalizedData(const void *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, CFTypeRef *a5)
{
  memset(length, 0, sizeof(length));
  v10 = AMAuthInstallSupportCopyAllocator();
  BytePtr = CFDataGetBytePtr(a2);
  LODWORD(a2) = CFDataGetLength(a2);
  v12 = CFDataGetBytePtr(a4);
  v13 = CFDataGetBytePtr(a3);
  v14 = CFDataGetLength(a3);
  if (tss_stitch_img3(BytePtr, a2, v12, v13, v14, &length[1], length))
  {
    v15 = 0;
    v16 = 9;
  }

  else
  {
    v17 = CFGetAllocator(a1);
    v18 = CFDataCreateWithBytesNoCopy(v17, *&length[1], length[0], v10);
    v15 = v18;
    if (v18)
    {
      v16 = 0;
      *a5 = CFRetain(v18);
    }

    else
    {
      free(*&length[1]);
      v16 = 2;
    }
  }

  SafeRelease(v15);
  SafeRelease(v10);
  return v16;
}

uint64_t AMAuthInstallApImg3PersonalizeImg3WithEntryNameAndOptions(void *a1, const __CFURL *a2, const __CFURL *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6, char a7)
{
  *v14 = 0;
  if (a1)
  {
    v8 = 0;
    v9 = 1;
    if (a3 && a2 && a1[2])
    {
      v11 = AMAuthInstallApImg3CopyPersonalizedData(a1, a2, a4, a5, a6, v14, a7 & 1);
      if (v11)
      {
        v9 = v11;
        v8 = *v14;
      }

      else
      {
        v13 = CFGetAllocator(a1);
        v8 = *v14;
        v9 = AMAuthInstallSupportWriteDataToFileURL(v13, *v14, a3, 1);
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  SafeRelease(v8);
  return v9;
}

uint64_t AMAuthInstallApImg3CopyBuildString(const __CFAllocator *a1, const void *a2, CFStringRef *a3)
{
  theData = 0;
  v17 = 0;
  __s = 0;
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(a1, &theData, a2);
  if (DataFromFileURL)
  {
    v13 = DataFromFileURL;
  }

  else
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    if (image3InstantiateFromBuffer(&v17, BytePtr, Length, 0))
    {
      v13 = 9;
      AMAuthInstallLog(3, "AMAuthInstallApImg3CopyBuildString", "%s: invalid image 3 object");
    }

    else if (image3GetTagString(v17, 1447383635, &__s, 0))
    {
      v13 = 9;
      AMAuthInstallLog(3, "AMAuthInstallApImg3CopyBuildString", "%s: failed to get tag");
    }

    else
    {
      v9 = __s;
      if (!strchr(__s, 126))
      {
        v10 = strlen(v9);
        if (v10 + 1 < 2)
        {
          v13 = 99;
          AMAuthInstallLog(3, "AMAuthInstallApImg3CopyBuildString", "$s: failed to get tag buffer length", "AMAuthInstallApImg3CopyBuildString");
          goto LABEL_19;
        }

        v11 = realloc(v9, v10 + 2);
        __s = v11;
        if (!v11)
        {
          v13 = 2;
          AMAuthInstallLog(3, "AMAuthInstallApImg3CopyBuildString", "$s: failed to realloc tag buffer", "AMAuthInstallApImg3CopyBuildString");
          goto LABEL_19;
        }

        *&v11[strlen(v11)] = 126;
        v9 = __s;
      }

      v12 = CFStringCreateWithCString(a1, v9, 0x8000100u);
      *a3 = v12;
      if (v12)
      {
        v13 = 0;
        goto LABEL_10;
      }

      v13 = 2;
    }
  }

LABEL_19:
  AMAuthInstallLog(8, "AMAuthInstallApImg3CopyBuildString", "%s: %@", "AMAuthInstallApImg3CopyBuildString", a2);
LABEL_10:
  if (v17)
  {
    image3Discard(&v17);
  }

  SafeRelease(theData);
  SafeFree(__s);
  return v13;
}

__CFString *AMAuthInstallApImg4GetTypeForEntryName(CFStringRef theString1)
{
  v2 = off_29EE99A48;
  v3 = 218;
  while (CFStringCompare(theString1, *(v2 - 1), 0))
  {
    v2 += 2;
    if (!--v3)
    {
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = *v2;
LABEL_6:
  if (v4)
  {
    return v4;
  }

  else
  {
    return theString1;
  }
}

CFStringRef AMAuthInstallApImg4GetEntryNameForType(CFStringRef theString1)
{
  v2 = off_29EE99A48;
  v3 = 218;
  while (CFStringCompare(theString1, *v2, 0))
  {
    v2 += 2;
    if (!--v3)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = CFRetain(*(v2 - 1));
LABEL_6:
  if (!result)
  {
    return theString1;
  }

  return result;
}

CFStringRef AMAuthInstallApImg4CopyPayloadType(const __CFAllocator *a1, CFTypeRef cf)
{
  v10 = 0;
  if (!cf)
  {
    AMAuthInstallApImg4CopyPayloadType_cold_6(a1);
    return 0;
  }

  v4 = CFGetTypeID(cf);
  TypeID = CFDataGetTypeID();
  if (v4 != TypeID)
  {
    AMAuthInstallApImg4CopyPayloadType_cold_1(TypeID);
    return 0;
  }

  v12[0] = 0;
  v12[1] = 0;
  memset(numBytes, 0, sizeof(numBytes));
  Length = CFDataGetLength(cf);
  v11 = Length;
  BytePtr = CFDataGetBytePtr(cf);
  if (DERDecoderInitialize(v12, BytePtr, &v11, Length))
  {
    AMAuthInstallApImg4CopyPayloadType_cold_2();
    return 0;
  }

  if (DERDecoderGetDataWithTag(v12, 0, 0x10u, 1, &numBytes[1], numBytes, &v10))
  {
    AMAuthInstallApImg4CopyPayloadType_cold_3();
    return 0;
  }

  if (DERDecoderInitialize(v12, *&numBytes[1], numBytes, numBytes[0]))
  {
    AMAuthInstallApImg4CopyPayloadType_cold_4();
    return 0;
  }

  v10 = 1;
  if (DERDecoderGetDataWithTag(v12, 0, 0x16u, 0, &numBytes[1], numBytes, &v10))
  {
    AMAuthInstallApImg4CopyPayloadType_cold_5();
    return 0;
  }

  return CFStringCreateWithBytes(a1, *&numBytes[1], numBytes[0], 0x8000100u, 0);
}

uint64_t AMAuthInstallApImg4CopyPayloadVersionProperty(const __CFAllocator *a1, const void *a2, int a3, uint64_t *a4)
{
  v35 = *MEMORY[0x29EDCA608];
  Length = 0;
  theData = 0;
  v22 = 0;
  BytePtr = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v20 = 0;
  MutableBytePtr = 0;
  v19 = 0;
  if (!a2 || !a4)
  {
    v11 = 0;
    v9 = 0;
    v16 = 0;
    v17 = 0;
    v13 = 1;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v7 = AMAuthInstallApImg4CopyPayload(a1, a2, &theData);
  if (v7)
  {
    v13 = v7;
    v11 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = DERImg4DecodePayload(&BytePtr, &v26);
  if (v8)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "failed to decode img4 payload, error:%d", v8);
    v11 = 0;
    v9 = 0;
    goto LABEL_24;
  }

  v9 = AMSupportCopyDataFromAsciiEncodedHex();
  if (!v9)
  {
    v11 = 0;
    v13 = 3;
    goto LABEL_10;
  }

  MutableCopy = CFDataCreateMutableCopy(a1, 0, v9);
  v11 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_19;
  }

  v12 = 1952607602;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v22 = CFDataGetLength(v11);
  if (a3 == 1)
  {
    v12 = 1952607603;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
LABEL_12:
    Img4DecodeGetPayloadVersionPropertyString(&MutableBytePtr, v12 | 0xE000000000000000, &v20, &v19);
    if (!v15)
    {
      v14 = AMSupportCopyDataFromAsciiEncodedHex();
      if (v14)
      {
        v13 = 0;
        goto LABEL_15;
      }

LABEL_19:
      v13 = 2;
      goto LABEL_10;
    }

    AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "failed to parse version property: %d, error:%d", v12, v15);
LABEL_24:
    v13 = 23;
    goto LABEL_10;
  }

  AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "unsupported property type: %d\n", a3);
  v13 = 1;
LABEL_10:
  v14 = 0;
LABEL_15:
  *a4 = v14;
  v16 = v11;
  v17 = v9;
LABEL_16:
  SafeRelease(v16);
  SafeRelease(v17);
  SafeRelease(theData);
  return v13;
}

uint64_t _AMAuthInstallApImg4StitchToURL(uint64_t a1, CFDataRef theData, int a3, uint64_t a4, uint64_t (*a5)(FILE *, uint64_t))
{
  memset(v28, 0, sizeof(v28));
  v27 = 0;
  v26 = 0;
  *&__nitems[1] = 0;
  __nitems[0] = 0;
  if (!a1)
  {
    _AMAuthInstallApImg4StitchToURL_cold_7(0);
    v18 = 1;
    goto LABEL_19;
  }

  if (!a3)
  {
    _AMAuthInstallApImg4StitchToURL_cold_6(a1);
LABEL_31:
    v18 = 4;
    goto LABEL_19;
  }

  if (!theData)
  {
    v11 = Img4EncodeIMG4Tag(&v27, &v26);
    if (!v11)
    {
      v12 = 0;
      goto LABEL_9;
    }

LABEL_28:
    _AMAuthInstallApImg4StitchToURL_cold_2();
    goto LABEL_35;
  }

  Length = CFDataGetLength(theData);
  if (Img4EncodeManifestHeader(Length, &v28[1], v28))
  {
    _AMAuthInstallApImg4StitchToURL_cold_1();
    goto LABEL_35;
  }

  if (Img4EncodeIMG4Tag(&v27, &v26))
  {
    goto LABEL_28;
  }

  v11 = CFDataGetLength(theData);
  v12 = v28[0];
LABEL_9:
  if (!Img4EncodeImg4Header(v11 + a3 + v12 + v26, &__nitems[1], __nitems))
  {
    v13 = AMAuthInstallPlatformOpenFileStreamWithURL();
    if (v13)
    {
      v14 = v13;
      v15 = fwrite(*&__nitems[1], 1uLL, __nitems[0], v13);
      if (v15 == __nitems[0])
      {
        v16 = fwrite(v27, 1uLL, v26, v14);
        if (v16 == v26)
        {
          v17 = a5(v14, a4);
          v18 = v17;
          if (!theData || v17)
          {
            goto LABEL_18;
          }

          v19 = fwrite(*&v28[1], 1uLL, v28[0], v14);
          if (v19 == v28[0])
          {
            BytePtr = CFDataGetBytePtr(theData);
            v21 = CFDataGetLength(theData);
            v22 = fwrite(BytePtr, 1uLL, v21, v14);
            if (v22 == CFDataGetLength(theData))
            {
              v18 = 0;
LABEL_18:
              fclose(v14);
              goto LABEL_19;
            }

            v24 = "failed to stitch manifest to file: %s";
          }

          else
          {
            v24 = "failed to stitch manifest header to file: %s";
          }
        }

        else
        {
          v24 = "failed to write img4 string to dst file: %s";
        }
      }

      else
      {
        v24 = "failed to write header to dst file: %s";
      }

      _AMAuthInstallApImg4StitchToURL_cold_4(v24);
      v18 = 4;
      goto LABEL_18;
    }

    _AMAuthInstallApImg4StitchToURL_cold_5(a1);
    goto LABEL_31;
  }

  _AMAuthInstallApImg4StitchToURL_cold_2();
LABEL_35:
  v18 = 14;
LABEL_19:
  if (*&v28[1])
  {
    free(*&v28[1]);
  }

  if (v27)
  {
    free(v27);
  }

  if (*&__nitems[1])
  {
    free(*&__nitems[1]);
  }

  return v18;
}

uint64_t _WriteCFDataIntoFile(FILE *a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  return 4 * (fwrite(BytePtr, 1uLL, Length, a1) != Length);
}

uint64_t _WriteStreamIntoFile(FILE *a1, FILE *a2)
{
  v4 = malloc(0x100000uLL);
  if (v4)
  {
    while (1)
    {
      v5 = fread(v4, 1uLL, 0x100000uLL, a2);
      if (!v5)
      {
        break;
      }

      if (fwrite(v4, 1uLL, v5, a1) != v5)
      {
        _WriteStreamIntoFile_cold_1();
        v6 = 4;
        goto LABEL_6;
      }
    }

    v6 = 4 * (ferror(a2) != 0);
  }

  else
  {
    _WriteStreamIntoFile_cold_2(0);
    v6 = 2;
  }

LABEL_6:
  free(v4);
  return v6;
}

uint64_t AMAuthInstallApImg4StitchRestoreInfoWithAMAI(const __CFString *a1, const void *a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  v5 = 0;
  *v28 = 0;
  *v29 = 0;
  v6 = 1;
  if (a2)
  {
    Mutable = 0;
    if (a3)
    {
      v12 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (a1)
      {
        v13 = &off_29EE9A7F0;
        v14 = 4;
        do
        {
          v15 = *(v13 - 2);
          if (!v15)
          {
            AMAuthInstallApImg4StitchRestoreInfoWithAMAI_cold_3();
          }

          if (CFStringCompare(v15, a1, 0) == kCFCompareEqualTo)
          {
            v16 = *v13;
            if (!**v13)
            {
              AMAuthInstallApImg4StitchRestoreInfoWithAMAI_cold_2();
            }

            v17 = v16[1];
            if (!v17)
            {
              AMAuthInstallApImg4StitchRestoreInfoWithAMAI_cold_1();
            }

            v18 = (v17)(a5, a3);
            if (v18)
            {
              v19 = v18;
              CFDictionarySetValue(Mutable, *v16, v18);
              CFRelease(v19);
            }
          }

          v13 += 3;
          --v14;
        }

        while (v14);
      }

      if (Mutable)
      {
        if (a4)
        {
          CFDictionaryApplyFunction(a4, _merge_dictionary, Mutable);
        }

        if (a1)
        {
          v5 = CFStringCreateWithFormat(v12, 0, @"%@-TBM", a1);
          if (v5)
          {
            Value = CFDictionaryGetValue(a3, v5);
            if (Value)
            {
              v21 = Value;
              v22 = CFDictionaryGetValue(Value, @"ucon");
              v23 = CFDictionaryGetValue(v21, @"ucer");
              if (v22)
              {
                CFDictionaryAddValue(Mutable, @"ucon", v22);
              }

              if (v23)
              {
                CFDictionaryAddValue(Mutable, @"ucer", v23);
              }
            }
          }
        }

        else
        {
          v5 = 0;
        }

        if (CFDictionaryGetCount(Mutable))
        {
          DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(0, v29, a2);
          if (DataFromMappedFileURL)
          {
            v6 = DataFromMappedFileURL;
            AMAuthInstallLog(3, "AMAuthInstallApImg4StitchRestoreInfoWithAMAI", "failed to read data from %@", a2);
          }

          else
          {
            v25 = AMAuthInstallApImg4EncodeRestoreInfo(*v29, Mutable, v28);
            if (v25)
            {
              v6 = v25;
              AMAuthInstallApImg4StitchRestoreInfoWithAMAI_cold_4();
            }

            else
            {
              v6 = AMAuthInstallSupportWriteDataToFileURL(0, *v28, a2, 1);
              if (v6)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4StitchRestoreInfoWithAMAI", "failed to write stitched data to %@", a2);
              }
            }
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v5 = 0;
        v6 = 2;
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  SafeRelease(Mutable);
  SafeRelease(*v29);
  SafeRelease(*v28);
  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallApImg4EncodeRestoreInfo(const __CFData *a1, CFDictionaryRef theDict, CFDataRef *a3)
{
  v26[0] = 0;
  v26[1] = 0;
  v25 = 0;
  v24 = 0;
  v22 = 0;
  bytes = 0;
  v20 = 0;
  length = 0;
  v18 = 0;
  v19 = 0;
  if (!a1 || !theDict || (Count = CFDictionaryGetCount(theDict), !a3) || Count < 1)
  {
    Mutable = 0;
    if (!a3)
    {
      v17 = 3;
      v12 = 0;
      goto LABEL_18;
    }

    v12 = 0;
    goto LABEL_31;
  }

  v7 = CFDataGetLength(a1);
  v25 = v7;
  BytePtr = CFDataGetBytePtr(a1);
  if (DERDecoderInitialize(v26, BytePtr, &v25, v7))
  {
    v16 = "DERDecoderInitialize top level failed";
    goto LABEL_30;
  }

  if (DERDecoderGetDataWithTag(v26, 0, 0x10u, 1, &bytes, &length + 1, &v24))
  {
    v16 = "could not find im4p top level sequence";
    goto LABEL_30;
  }

  if (DERDecoderInitialize(v26, bytes, &length + 1, HIDWORD(length)))
  {
    v16 = "DERDecoderInitialize sequence failed";
    goto LABEL_30;
  }

  v24 = 3;
  EncodingWithTag = DERDecoderGetEncodingWithTag(v26, 2u, 1u, 1, &v22, &length, &v24);
  if (EncodingWithTag)
  {
    if (!AMAuthInstallApImg4EncodeRestoreDict(theDict, &v18, &v20 + 4))
    {
      Mutable = 0;
      goto LABEL_13;
    }

    v16 = "AMAuthInstallApImg4EncodeRestoreDict failed";
LABEL_30:
    AMAuthInstallApImg4EncodeRestoreInfo_cold_1(v16);
    Mutable = 0;
    v12 = 0;
    goto LABEL_31;
  }

  HIDWORD(length) -= length;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v19 = Mutable;
  if (!AMAuthInstallApImg4DecodeRestoreInfo(a1, &v19))
  {
    AMSupportCreateMergedDictionary();
    v17 = 0;
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreInfo", "failed to create merged restore Info dictionary");
LABEL_32:
    v12 = 0;
    goto LABEL_18;
  }

  v15 = AMAuthInstallApImg4EncodeRestoreDict(theDict, &v18, &v20 + 4);
  if (v15)
  {
    v17 = v15;
    AMAuthInstallApImg4EncodeRestoreInfo_cold_2();
    goto LABEL_32;
  }

LABEL_13:
  v11 = CFDataCreateMutable(0, 0);
  v12 = v11;
  if (!v11 || (CFDataAppendBytes(v11, bytes, HIDWORD(length)), CFDataAppendBytes(v12, v18, HIDWORD(v20)), !DEREncoderCreate()))
  {
    if (!EncodingWithTag)
    {
      v17 = 2;
      goto LABEL_18;
    }

LABEL_31:
    *a3 = 0;
    v17 = 3;
    goto LABEL_18;
  }

  CFDataGetBytePtr(v12);
  CFDataGetLength(v12);
  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_31;
  }

  v13 = CFDataCreate(0, 0, v20);
  *a3 = v13;
  v17 = 2 * (v13 == 0);
LABEL_18:
  SafeRelease(Mutable);
  SafeFree(v18);
  SafeFree(0);
  SafeRelease(v12);
  DEREncoderDestroy();
  return v17;
}

CFDataRef AMAuthInstallApImg4CreateStitchTicket(const __CFAllocator *a1, const __CFData *a2, const __CFData *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    a3 = 0;
    v7 = 0;
    goto LABEL_17;
  }

  if (!DEREncoderCreate())
  {
    goto LABEL_23;
  }

  if (CFStringGetCString(@"IMG4", buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallApImg4CreateStitchTicket_cold_1();
      goto LABEL_23;
    }
  }

  if (DEREncoderCreateEncodedBuffer())
  {
LABEL_23:
    a3 = 0;
    v7 = 0;
    goto LABEL_17;
  }

  Mutable = CFDataCreateMutable(a1, 0);
  v7 = Mutable;
  if (!Mutable)
  {
    a3 = 0;
    goto LABEL_17;
  }

  CFDataAppendBytes(Mutable, 0, 0);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  CFDataAppendBytes(v7, BytePtr, Length);
  if (a3)
  {
    if (!DEREncoderCreate() || (CFDataGetBytePtr(a3), CFDataGetLength(a3), DEREncoderAddData()) || DEREncoderCreateEncodedBuffer())
    {
      a3 = 0;
    }

    else
    {
      v10 = CFDataCreate(a1, 0, 0);
      a3 = v10;
      if (v10)
      {
        v11 = CFDataGetBytePtr(v10);
        v12 = CFDataGetLength(a3);
        CFDataAppendBytes(v7, v11, v12);
        goto LABEL_13;
      }
    }

LABEL_17:
    SafeRelease(0);
    v13 = 0;
    goto LABEL_18;
  }

LABEL_13:
  if (!DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CFDataGetBytePtr(v7);
  CFDataGetLength(v7);
  if (DEREncoderAddDataNoCopy())
  {
    goto LABEL_17;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_17;
  }

  v13 = CFDataCreateWithBytesNoCopy(a1, 0, 0, *MEMORY[0x29EDB8EE0]);
  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_18:
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeFree(0);
  SafeFree(0);
  SafeRelease(v7);
  SafeRelease(a3);
  return v13;
}

BOOL AMAuthInstallApImg4SupportsLocalSigning(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      if (*(v1 + 92))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4GetTagAsInteger(CFStringRef theString)
{
  v4 = 0;
  if (!theString)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = 0; i != 4; ++i)
  {
    if (i == CFStringGetLength(theString))
    {
      break;
    }

    *(&v4 + i) = CFStringGetCharacterAtIndex(theString, i);
  }

  return bswap32(v4);
}

uint64_t AMAuthInstallApImg4AddInteger32Property(uint64_t a1, const __CFString *a2, const __CFNumber *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ string", a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s: invalid datatype", "AMAuthInstallApImg4AddInteger32Property");
    if (CString)
    {
      v6 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v6 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s failed to create DER file", "AMAuthInstallApImg4AddInteger32Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt32())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ value", a2);
    goto LABEL_17;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder())
  {
    AMAuthInstallApImg4AddInteger32Property_cold_1();
    goto LABEL_17;
  }

  v6 = 0;
LABEL_11:
  DEREncoderDestroy();
  return v6;
}

uint64_t AMAuthInstallApImg4AddInteger64Property(uint64_t a1, const __CFString *a2, const __CFNumber *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ string", a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s: invalid datatype", "AMAuthInstallApImg4AddInteger64Property");
    if (CString)
    {
      v6 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v6 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s failed to create DER file", "AMAuthInstallApImg4AddInteger64Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt64())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ value", a2);
    goto LABEL_17;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder())
  {
    AMAuthInstallApImg4AddInteger64Property_cold_1();
    goto LABEL_17;
  }

  v6 = 0;
LABEL_11:
  DEREncoderDestroy();
  return v6;
}

uint64_t AMAuthInstallApImg4AddBooleanProperty(uint64_t a1, const __CFString *a2, int a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2 || !DEREncoderCreate())
  {
    goto LABEL_13;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "failed to add %@ string", a2);
      goto LABEL_13;
    }
  }

  if (DEREncoderAddData())
  {
    AMAuthInstallApImg4AddBooleanProperty_cold_1();
LABEL_13:
    v4 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "%s failed to create DER file", "AMAuthInstallApImg4AddBooleanProperty");
    goto LABEL_9;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder())
  {
    AMAuthInstallApImg4AddBooleanProperty_cold_2();
    goto LABEL_13;
  }

  v4 = 0;
LABEL_9:
  DEREncoderDestroy();
  return v4;
}

uint64_t AMAuthInstallApImg4AddDataProperty(uint64_t a1, const __CFString *a2, const __CFData *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ string", a2);
      goto LABEL_14;
    }
  }

  CFDataGetBytePtr(a3);
  CFDataGetLength(a3);
  if (DEREncoderAddData())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ data", a2);
LABEL_14:
    v5 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "%s failed to create DER file", "AMAuthInstallApImg4AddDataProperty");
    goto LABEL_10;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder())
  {
    AMAuthInstallApImg4AddDataProperty_cold_1();
    goto LABEL_14;
  }

  v5 = 0;
LABEL_10:
  DEREncoderDestroy();
  return v5;
}

uint64_t AMAuthInstallApImg4AddDictionaryProperty(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a3, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "failed to add %@ string", a3);
      goto LABEL_14;
    }
  }

  if (DEREncoderAddSetFromEncoder())
  {
    AMAuthInstallApImg4AddDictionaryProperty_cold_1();
LABEL_14:
    v4 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "%s failed to create DER file", "AMAuthInstallApImg4AddDictionaryProperty");
    goto LABEL_10;
  }

  AMAuthInstallApImg4GetTagAsInteger(a3);
  if (DEREncoderAddPrivateFromEncoder())
  {
    AMAuthInstallApImg4AddDictionaryProperty_cold_2();
    goto LABEL_14;
  }

  v4 = 0;
LABEL_10:
  DEREncoderDestroy();
  return v4;
}

BOOL _DERItemEqualsCString(uint64_t a1, char *__s)
{
  v2 = *a1;
  if (*a1 && (v5 = strlen(__s), *(a1 + 8) == v5))
  {
    return strncmp(v2, __s, v5) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t AMAuthInstallApImg4ValidImage(void *a1, uint64_t a2)
{
  v2 = a1;
  v14 = 0;
  if (!a1)
  {
    AMSupportCreateErrorInternal();
LABEL_14:
    v11 = 0;
    goto LABEL_17;
  }

  v3 = AMAuthInstallPlatformOpenFileStreamWithURL();
  if (!v3)
  {
    v12 = __error();
    strerror(*v12);
    AMSupportCreateErrorInternal();
    v2 = 0;
    goto LABEL_14;
  }

  v4 = v3;
  v5 = malloc(0x20uLL);
  v2 = v5;
  if (v5)
  {
    v6 = fread(v5, 1uLL, 0x20uLL, v4);
    v7 = v6;
    if (v6 != 32)
    {
      AMAuthInstallLog(4, "AMAuthInstallApImg4ValidImage", "Read %ld bytes out of expected %ld", v6, 32);
    }

    v8 = Img4DecodeParseLengthFromBufferWithTag(v2, v7, 0x494D3450u, &v14);
    v9 = Img4DecodeParseLengthFromBufferWithTag(v2, v7, 0x494D4734u, &v14);
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = v10;
  }

  else
  {
    AMSupportCreateErrorInternal();
    v11 = 0;
  }

  fclose(v4);
LABEL_17:
  SafeFree(v2);
  return v11;
}

uint64_t AMAuthInstallApImg4FindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v8 = 0uLL;
  v5 = DERDecodeSeqContentInit(a1, &v8);
  if (v5)
  {
    v6 = v5;
    AMAuthInstallApImg4FindItemWithTag_cold_1();
  }

  else
  {
    v11 = v8;
    v9 = 0;
    v10 = 0uLL;
    while (1)
    {
      v6 = DERDecodeSeqNext(&v11, &v9);
      if (v6)
      {
        break;
      }

      if (v9 == a2)
      {
        *a3 = v10;
        return v6;
      }
    }
  }

  return v6;
}

CFTypeRef _AMAuthInstallApImg4CopySEPNonceSlotID(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 56)) != 0)
  {
    return CFRetain(v2);
  }

  else
  {
    return 0;
  }
}

CFTypeRef _AMAuthInstallApImg4CopyApNonceSlotID(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return CFRetain(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return AMAuthInstallApImg4ReCreatePayloadWithProperties();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v17 = a2 & 0xFFFFFFFFFFFFLL | 0xE000000000000000;

  return AMAuthInstallApImg4DecodePayloadProperty(va1, v17, va);
}

void OUTLINED_FUNCTION_10(uint64_t a1, const void *a2)
{
  v5 = *v3;

  CFDictionarySetValue(v2, a2, v5);
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{
  result = 0;
  *(*(v1 + 16) + 48) = a1;
  return result;
}

CFDataRef OUTLINED_FUNCTION_13(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  v5 = *v3;

  return CFDataCreateWithBytesNoCopy(0, a2, a3, v5);
}

CFComparisonResult OUTLINED_FUNCTION_14(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

CFComparisonResult OUTLINED_FUNCTION_15(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t AMAuthInstallApImg4LocalCreateManifestBody(const void **a1, CFTypeRef a2, CFTypeRef *a3)
{
  if (!a1 || !a2 || !a3)
  {
    v66 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", "AMAuthInstallApImg4LocalCreateManifestBody");
    if (!a3)
    {
      v8 = 0;
      goto LABEL_68;
    }

    v8 = 0;
LABEL_84:
    SafeRelease(*a3);
    v66 = 3;
    goto LABEL_68;
  }

  AMAuthInstallDebugWriteObject(a1, a2, @"tss-request", 2);
  v6 = DEREncoderCreate();
  if (!v6)
  {
    v8 = 0;
    goto LABEL_83;
  }

  v7 = CFGetAllocator(a1);
  v8 = CFNumberCreate(v7, kCFNumberIntType, a1[2] + 84);
  if (!v8)
  {
    goto LABEL_83;
  }

  if (AMAuthInstallApImg4AddInteger32Property(v6, @"CEPO", v8))
  {
    goto LABEL_83;
  }

  Value = CFDictionaryGetValue(a2, @"ApChipID");
  if (Value)
  {
    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v6, @"CHIP", v10))
      {
        goto LABEL_83;
      }
    }
  }

  v12 = CFDictionaryGetValue(a2, @"ApBoardID");
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v6, @"BORD", v13))
      {
        goto LABEL_83;
      }
    }
  }

  v15 = CFDictionaryGetValue(a2, @"ApECID");
  if (v15 && (v16 = v15, v17 = CFGetTypeID(v15), v17 == CFNumberGetTypeID()))
  {
    v18 = AMAuthInstallApImg4AddInteger64Property(v6, @"ECID", v16);
    if (v18)
    {
      AMAuthInstallApImg4LocalCreateManifestBody_cold_1(v18);
      goto LABEL_83;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = CFDictionaryGetValue(a2, @"ApSecurityDomain");
  if (v20 && (v21 = v20, v22 = CFGetTypeID(v20), v22 == CFNumberGetTypeID()) && (v23 = AMAuthInstallApImg4AddInteger32Property(v6, @"SDOM", v21), v23) || ((v24 = CFDictionaryGetValue(a2, @"ApProductionMode")) == 0 || (v25 = v24, v26 = CFGetTypeID(v24), v26 != CFBooleanGetTypeID()) || !CFBooleanGetValue(v25) ? (v27 = 0) : (v27 = 1), (v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"CPRO", v27), v23) || ((v28 = CFDictionaryGetValue(a2, @"ApSecurityMode")) == 0 || (v29 = v28, v30 = CFGetTypeID(v28), v30 != CFBooleanGetTypeID()) || !CFBooleanGetValue(v29) ? (v31 = 0) : (v31 = 1), (v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"CSEC", v31), v23) || (v32 = CFDictionaryGetValue(a2, @"ApLocalNonceHash")) != 0 && (v33 = v32, v34 = CFGetTypeID(v32), v34 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"LNCH", v33), v23) || (v35 = CFDictionaryGetValue(a2, @"ApNonce")) != 0 && (v36 = v35, v37 = CFGetTypeID(v35), v37 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"BNCH", v36), v23) || (v38 = CFDictionaryGetValue(a2, @"SepNonce")) != 0 && (v39 = v38, v40 = CFGetTypeID(v38), v40 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"snon", v39), v23) || (v41 = CFDictionaryGetValue(a2, @"ApAllowMixAndMatch")) != 0 && (v42 = v41, v43 = CFGetTypeID(v41), v43 == CFBooleanGetTypeID()) && CFBooleanGetValue(v42) && (v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"AMNM", 1), v23) || (v44 = CFDictionaryGetValue(a2, @"Ap,NextStageIM4MHash")) != 0 && (v45 = v44, v46 = CFGetTypeID(v44), v46 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"nsih", v45), v23) || (v47 = CFDictionaryGetValue(a2, @"Ap,RecoveryOSPolicyNonceHash")) != 0 && (v48 = v47, v49 = CFGetTypeID(v47), v49 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"ronh", v48), v23) || (v50 = CFDictionaryGetValue(a2, @"Ap,VolumeUUID")) != 0 && (v51 = v50, v52 = CFGetTypeID(v50), v52 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"vuid", v51), v23) || (v53 = CFDictionaryGetValue(a2, @"Ap,LocalBoot")) != 0 && (v54 = v53, v55 = CFGetTypeID(v53), v55 == CFBooleanGetTypeID()) && (v56 = CFBooleanGetValue(v54), v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"lobo", v56), v23))))
  {
    v66 = v23;
    goto LABEL_78;
  }

  v57 = DEREncoderCreate();
  if (!v57)
  {
    goto LABEL_74;
  }

  v58 = AMAuthInstallApImg4AddDictionaryProperty(v6, v57, @"MANP");
  if (v58)
  {
    v66 = v58;
    goto LABEL_78;
  }

  v59 = CFGetAllocator(a1);
  v60 = AMAuthInstallApImg4LocalAddImages(v59, a2, v57);
  if (v60)
  {
    v66 = v60;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "failed to add img objects to the manifest body");
    goto LABEL_78;
  }

  v61 = DEREncoderCreate();
  if (!v61)
  {
    goto LABEL_74;
  }

  v62 = AMAuthInstallApImg4AddDictionaryProperty(v57, v61, @"MANB");
  if (v62)
  {
    v66 = v62;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "failed to create the signed section");
    goto LABEL_78;
  }

  if (!DEREncoderCreate())
  {
LABEL_74:
    v66 = 2;
    goto LABEL_78;
  }

  v63 = DEREncoderAddSetFromEncoder();
  if (v63)
  {
    v66 = v63;
LABEL_78:
    if (v19)
    {
      goto LABEL_68;
    }

    goto LABEL_83;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
LABEL_83:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", "AMAuthInstallApImg4LocalCreateManifestBody");
    goto LABEL_84;
  }

  v64 = CFGetAllocator(a1);
  v65 = CFDataCreate(v64, 0, 0);
  *a3 = v65;
  if (v65)
  {
    v66 = 0;
  }

  else
  {
    AMAuthInstallApImg4LocalCreateManifestBody_cold_2();
    v66 = 2;
  }

LABEL_68:
  SafeFree(0);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeRelease(v8);
  return v66;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedTag(const __CFString *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  bytes = 0;
  if (!a1)
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_2();
    goto LABEL_9;
  }

  if (!CFStringGetCString(a1, &length[4], 256, 0x8000100u))
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_3();
    goto LABEL_9;
  }

  if (!DEREncoderCreate())
  {
LABEL_9:
    SafeRelease(0);
    v2 = 0;
    goto LABEL_7;
  }

  strlen(&length[4]);
  if (DEREncoderAddData())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedTag", "failed to add %@ string", a1, 0);
    goto LABEL_9;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_1();
    goto LABEL_9;
  }

  v2 = CFDataCreate(0, 0, 0);
LABEL_7:
  SafeFree(bytes);
  DEREncoderDestroy();
  return v2;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedVersion(uint64_t a1)
{
  if (!DEREncoderCreate())
  {
    goto LABEL_8;
  }

  v1 = DEREncoderAddUInt32();
  if (v1)
  {
    AMAuthInstallApImg4LocalCreateEncodedVersion_cold_1(v1);
LABEL_8:
    SafeRelease(0);
    v2 = 0;
    goto LABEL_5;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    AMAuthInstallApImg4LocalCreateEncodedVersion_cold_2();
    goto LABEL_8;
  }

  v2 = CFDataCreate(0, 0, 0);
LABEL_5:
  SafeFree(0);
  DEREncoderDestroy();
  return v2;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedData(const __CFData *a1)
{
  if (!DEREncoderCreate())
  {
    goto LABEL_8;
  }

  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (DEREncoderAddData())
  {
    AMAuthInstallApImg4LocalCreateEncodedData_cold_1();
LABEL_8:
    SafeRelease(0);
    v2 = 0;
    goto LABEL_5;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    AMAuthInstallApImg4LocalCreateEncodedData_cold_2();
    goto LABEL_8;
  }

  v2 = CFDataCreate(0, 0, 0);
LABEL_5:
  SafeFree(0);
  DEREncoderDestroy();
  return v2;
}

uint64_t _AMAuthInstallApImg4LocalCreateSignedManifest(void *a1, const void *a2, const void *a3, const void *a4, const void *a5, CFTypeRef *a6, int a7)
{
  LODWORD(length) = 0;
  v42 = 0;
  theData = 0;
  v41 = 0;
  if (!a1 || !a2 || !a6)
  {
    v25 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", "_AMAuthInstallApImg4LocalCreateSignedManifest");
    v28 = 0;
    v21 = 0;
    v17 = 0;
    Mutable = 0;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

  v14 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v14, 0);
  if (!Mutable)
  {
    v17 = 0;
LABEL_47:
    v21 = 0;
    goto LABEL_37;
  }

  EncodedTag = AMAuthInstallApImg4LocalCreateEncodedTag(@"IM4M");
  v17 = EncodedTag;
  if (!EncodedTag)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_9();
    goto LABEL_47;
  }

  BytePtr = CFDataGetBytePtr(EncodedTag);
  v19 = CFDataGetLength(v17);
  CFDataAppendBytes(Mutable, BytePtr, v19);
  EncodedVersion = AMAuthInstallApImg4LocalCreateEncodedVersion(0);
  v21 = EncodedVersion;
  if (!EncodedVersion)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_8();
    goto LABEL_37;
  }

  cf = a5;
  v22 = CFDataGetBytePtr(EncodedVersion);
  v23 = CFDataGetLength(v21);
  CFDataAppendBytes(Mutable, v22, v23);
  if (a3)
  {
    v24 = CFRetain(a3);
    theData = v24;
    v25 = 99;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_19:
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_7();
    goto LABEL_37;
  }

  if (AMAuthInstallApImg4LocalCreateManifestBody(a1, a2, &theData))
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_1();
    goto LABEL_37;
  }

  v25 = 0;
  v24 = theData;
  if (!theData)
  {
    goto LABEL_19;
  }

LABEL_9:
  v26 = CFDataGetBytePtr(v24);
  v27 = CFDataGetLength(theData);
  CFDataAppendBytes(Mutable, v26, v27);
  if (!a7)
  {
    if (!AMAuthInstallApImg4LocalRegisterKeys(a1))
    {
      if (a4)
      {
        v32 = CFRetain(a4);
        v42 = v32;
        if (v32)
        {
          EncodedData = AMAuthInstallApImg4LocalCreateEncodedData(v32);
          v28 = EncodedData;
          if (EncodedData)
          {
            v34 = CFDataGetBytePtr(EncodedData);
            v35 = CFDataGetLength(v28);
            CFDataAppendBytes(Mutable, v34, v35);
            if (cf)
            {
              v36 = CFRetain(cf);
              v41 = v36;
              if (v36)
              {
LABEL_26:
                v37 = CFDataGetBytePtr(v36);
                v38 = CFDataGetLength(v41);
                CFDataAppendBytes(Mutable, v37, v38);
                v25 = 0;
                goto LABEL_11;
              }
            }

            else
            {
              if (AMAuthInstallApImg4LocalCreateEncodedCertificateChain(a1, &v41))
              {
                _AMAuthInstallApImg4LocalCreateSignedManifest_cold_2();
                goto LABEL_38;
              }

              v36 = v41;
              if (v41)
              {
                goto LABEL_26;
              }
            }

            _AMAuthInstallApImg4LocalCreateSignedManifest_cold_4();
          }

          else
          {
            _AMAuthInstallApImg4LocalCreateSignedManifest_cold_5();
          }

LABEL_38:
          AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", "_AMAuthInstallApImg4LocalCreateSignedManifest");
LABEL_39:
          SafeRelease(*a6);
          *a6 = 0;
          v25 = 3;
          goto LABEL_16;
        }

        goto LABEL_35;
      }

      v39 = *(a1[2] + 128);
      if (v39 != 384)
      {
        if (v39 == 256)
        {
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallBasebandRembrandtLocalProvisionDevice())
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v39 != 1)
          {
            AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "Unsupported digest type: %d", *(a1[2] + 128));
            goto LABEL_37;
          }

          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallBasebandRembrandtLocalProvisionDevice())
          {
            goto LABEL_37;
          }
        }

        goto LABEL_35;
      }

      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
      if (!AMAuthInstallBasebandRembrandtLocalProvisionDevice())
      {
LABEL_35:
        _AMAuthInstallApImg4LocalCreateSignedManifest_cold_6();
      }
    }

LABEL_37:
    v28 = 0;
    goto LABEL_38;
  }

  v28 = 0;
LABEL_11:
  if (!DEREncoderCreate())
  {
    goto LABEL_38;
  }

  CFDataGetBytePtr(Mutable);
  CFDataGetLength(Mutable);
  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_38;
  }

  v29 = CFGetAllocator(a1);
  v30 = CFDataCreate(v29, 0, length);
  *a6 = v30;
  if (!v30)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_3();
    v25 = 2;
  }

LABEL_16:
  SafeRelease(Mutable);
  SafeRelease(v17);
  SafeRelease(v21);
  SafeRelease(theData);
  SafeRelease(v42);
  SafeRelease(v28);
  SafeRelease(v41);
  SafeFree(0);
  DEREncoderDestroy();
  return v25;
}

CFIndex AMAuthInstallBasebandApplyTssOverrides(const void *a1, const __CFData *a2, CFTypeRef cf)
{
  data = 0;
  v18 = a2;
  error = 0;
  if (!a1)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_8(0);
LABEL_16:
    v5 = 0;
    v7 = 0;
    v6 = 1;
    goto LABEL_12;
  }

  if (!a2)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_7(a1);
    goto LABEL_16;
  }

  if (!cf)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_6(a1);
    goto LABEL_16;
  }

  v4 = BbfwReaderOpen(cf);
  v5 = v4;
  if (!v4)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_5(0);
    v7 = 0;
    v6 = 4;
    goto LABEL_12;
  }

  if (BbfwReaderFindAndCopyFileData(v4, @"Options.plist", &data))
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  v8 = CFGetAllocator(a1);
  v9 = CFPropertyListCreateWithData(v8, data, 0, 0, &error);
  v7 = v9;
  if (!v9)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_4(&error);
LABEL_20:
    v6 = 0;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v9, @"TssOverrides");
  if (!Value)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_3();
    goto LABEL_20;
  }

  v11 = Value;
  v12 = CFGetAllocator(a1);
  v13 = AMAuthInstallSupportApplyDictionaryOverrides(v12, v11, &v18, @"Bb");
  if (v13)
  {
    v6 = v13;
    AMAuthInstallBasebandApplyTssOverrides_cold_1();
  }

  else
  {
    v14 = CFGetAllocator(a1);
    v6 = AMAuthInstallSupportApplyDictionaryOverrides(v14, v11, &v18, @"FDR");
    if (v6)
    {
      AMAuthInstallBasebandApplyTssOverrides_cold_2();
    }
  }

LABEL_12:
  SafeRelease(v7);
  SafeRelease(data);
  SafeRelease(error);
  BbfwReaderClose(v5);
  return v6;
}

CFComparisonResult AMAuthInstallBasebandGetTagForKeyHashName(uint64_t a1, CFStringRef theString2, __CFString **a3)
{
  if (!a1)
  {
    AMAuthInstallBasebandGetTagForKeyHashName_cold_3(0);
    return 1;
  }

  if (!theString2)
  {
    AMAuthInstallBasebandGetTagForKeyHashName_cold_2(a1);
    return 1;
  }

  if (!a3)
  {
    AMAuthInstallBasebandGetTagForKeyHashName_cold_1(a1);
    return 1;
  }

  if (CFStringCompare(@"BbProvisioningManifestKeyHash", theString2, 0))
  {
    result = CFStringCompare(@"BbActivationManifestKeyHash", theString2, 0);
    if (result)
    {
      result = CFStringCompare(@"BbCalibrationManifestKeyHash", theString2, 0);
      if (result)
      {
        result = CFStringCompare(@"BbFactoryActivationManifestKeyHash", theString2, 0);
        if (result)
        {
          result = CFStringCompare(@"BbFDRSecurityKeyHash", theString2, 0);
          if (result)
          {
            return 8;
          }

          v8 = kAMAuthInstallTagBbFDRSecurityKeyHash;
        }

        else
        {
          v8 = kAMAuthInstallTagBbFactoryActivationKeyHash;
        }
      }

      else
      {
        v8 = kAMAuthInstallTagBbCalibrationKeyHash;
      }
    }

    else
    {
      v8 = kAMAuthInstallTagBbActivationKeyHash;
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7 && *(v7 + 4) != 80)
    {
      result = kCFCompareEqualTo;
      v8 = kAMAuthInstallTagBbProvisioningKeyHash;
    }

    else
    {
      result = kCFCompareEqualTo;
      v8 = kAMAuthInstallTagBbSKeyId;
    }
  }

  *a3 = *v8;
  return result;
}

uint64_t _AddFirmware(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  value = 0;
  v5 = BbfwReaderCopyFileData(a3, &value);
  if (v5)
  {
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(0, v5);
    AMAuthInstallLog(3, "_AddFirmware", "failed to extract bbfw item %@: %@; continuing anyway", a2, LocalizedStatusString);
  }

  else if (value)
  {
    CFDictionarySetValue(v4, a2, value);
  }

  else
  {
    AMAuthInstallLog(4, "_AddFirmware", "failed to add %@; ignoring it", a2);
  }

  SafeRelease(value);
  return 1;
}

uint64_t AMAuthInstallBasebandCopyCustomFirmware(const void *a1, const __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  v10 = 0;
  v4 = CFGetAllocator(a1);
  v5 = CFURLCreateWithFileSystemPath(v4, a2, kCFURLPOSIXPathStyle, 0);
  if (v5)
  {
    v6 = AMAuthInstallSupportCopyURLToNewTempDirectory();
    if (v6)
    {
      v8 = v6;
      AMAuthInstallBasebandCopyCustomFirmware_cold_1();
    }

    else
    {
      AMAuthInstallBasebandCopyCustomFirmware_cold_5();
      v8 = 14;
    }
  }

  else
  {
    AMAuthInstallBasebandCopyCustomFirmware_cold_6(0);
    v8 = 2;
  }

  SafeRelease(v10);
  SafeRelease(cf);
  SafeRelease(v5);
  return v8;
}

uint64_t _AMAuthInstallBasebandCheckSnum(int a1, const __CFData *a2)
{
  if (a1 > 2044128)
  {
    if (a1 <= 5898464)
    {
      if (a1 <= 2814176)
      {
        if (a1 == 2044129)
        {
          if (!AMAuthInstallBasebandMAV25IsSnumValid(a2))
          {
            goto LABEL_6;
          }

          return 0;
        }

        v3 = 2089185;
        goto LABEL_32;
      }

      if (a1 == 2814177)
      {
        goto LABEL_33;
      }

      if (a1 == 4587745)
      {
        if (!AMAuthInstallBasebandJ2IsSnumValid(a2))
        {
          goto LABEL_6;
        }

        return 0;
      }

      if (a1 != 5243105)
      {
        goto LABEL_44;
      }

      if (!AMAuthInstallBasebandJ2IsSnumValid(a2))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (a1 > 8343776)
      {
        if (a1 == 8343777 || a1 == 9572577)
        {
          goto LABEL_33;
        }

        v3 = 9781473;
        goto LABEL_32;
      }

      if (a1 == 5898465)
      {
        if (!AMAuthInstallBasebandJ2IsSnumValid(a2))
        {
          goto LABEL_6;
        }

        return 0;
      }

      if (a1 != 7278817 && a1 != 7282913)
      {
        goto LABEL_44;
      }

      if (!AMAuthInstallBasebandJ2IsSnumValid(a2))
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a1 > 241888)
  {
    if (a1 <= 1327328)
    {
      if (a1 != 241889 && a1 != 520417)
      {
        v3 = 938209;
        goto LABEL_32;
      }

LABEL_33:
      if (!AMAuthInstallBasebandJ2IsSnumValid(a2))
      {
        goto LABEL_6;
      }

      return 0;
    }

    if (a1 == 1327329 || a1 == 1515745)
    {
      goto LABEL_33;
    }

    v3 = 1700065;
LABEL_32:
    if (a1 != v3)
    {
      goto LABEL_44;
    }

    goto LABEL_33;
  }

  if ((a1 - 80) > 0x18)
  {
    goto LABEL_44;
  }

  if (((1 << (a1 - 80)) & 0x1A14000) == 0)
  {
    if (a1 == 80)
    {
      if (!AMAuthInstallBasebandICE3IsSnumValid(a2))
      {
        goto LABEL_6;
      }

      return 0;
    }

LABEL_44:
    AMAuthInstallLog(3, "_AMAuthInstallBasebandCheckSnum", "unrecognized chipid: 0x%08X");
    return 1;
  }

  if (AMAuthInstallBasebandICE3IsSnumValid(a2))
  {
    return 0;
  }

LABEL_6:
  AMAuthInstallLog(3, "_AMAuthInstallBasebandCheckSnum", "bad snum: %@", a2);
  return 1;
}

uint64_t AMAuthInstallBasebandSetParametersWithUpdaterOutput(unint64_t a1, CFTypeRef cf)
{
  v108 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_45(0);
LABEL_135:
    v6 = 0;
    goto LABEL_176;
  }

  if (!cf)
  {
    AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_44(a1);
    goto LABEL_135;
  }

  v4 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  if (v4 != TypeID)
  {
    AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_1(TypeID);
    goto LABEL_135;
  }

  AMAuthInstallLog(7, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "baseband updater output: %@", cf);
  v6 = *(a1 + 48);
  v7 = calloc(1uLL, 0xB0uLL);
  if (!v7)
  {
    *(a1 + 48) = 0;
    v98 = 2;
    goto LABEL_177;
  }

  v7[9] = 0u;
  v7[10] = 0u;
  v7[7] = 0u;
  v7[8] = 0u;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = 0u;
  *(a1 + 48) = v7;
  Value = CFDictionaryGetValue(cf, @"ManifestInfo");
  if (Value)
  {
    v9 = Value;
    v105 = 0;
    valuePtr[0] = 0;
    v10 = CFDictionaryGetValue(Value, @"SKeyStatus");
    v11 = CFDictionaryGetValue(v9, @"CKeyStatus");
    if (!*(a1 + 216))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_12(v11);
      v98 = 14;
      goto LABEL_177;
    }

    v12 = v11;
    if (v10)
    {
      v13 = CFGetTypeID(v10);
      v14 = CFNumberGetTypeID();
      if (v13 != v14)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_2(v14);
        goto LABEL_176;
      }

      if (!CFNumberGetValue(v10, kCFNumberSInt32Type, valuePtr))
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_3();
        goto LABEL_167;
      }

      AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "provisioning key status=%d");
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "provisioning key status not found");
    }

    if (v12)
    {
      v15 = CFGetTypeID(v12);
      if (v15 != CFNumberGetTypeID())
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_4();
        goto LABEL_176;
      }

      if (!CFNumberGetValue(v12, kCFNumberSInt32Type, &v105))
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_5();
        goto LABEL_167;
      }

      AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "calibration key status=%d");
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "calibration key status not found");
    }

    v16 = CFDictionaryGetValue(v9, @"SKeyHash");
    v17 = v16;
    if (v16)
    {
      v100 = CFGetTypeID(v16);
      if (v100 != CFDataGetTypeID())
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_6();
        goto LABEL_176;
      }

      AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "Provisioning Key Hash found, setting to %@", v17);
      v101 = AMAuthInstallBasebandSetKeyHashRootManifest(a1);
      if (v101)
      {
        v98 = v101;
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_7();
        goto LABEL_177;
      }
    }

    else
    {
      AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "manifestProvisioningKeyHash not found in ManifestInfo");
    }

    v18 = CFDictionaryGetValue(v9, @"CKeyHash");
    if (!v18)
    {
      AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "manifestCalibrationKeyHash not found in ManifestInfo");
LABEL_22:
      v19 = CFDictionaryGetValue(v9, @"ProvisioningManifestSupported");
      if (v19)
      {
        v20 = v19;
        v21 = CFGetTypeID(v19);
        if (v21 != CFBooleanGetTypeID())
        {
          AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_10();
          goto LABEL_176;
        }

        *(*(a1 + 48) + 80) = v20;
      }

      v22 = CFDictionaryGetValue(v9, @"ProvisioningManifestExists");
      if (v22)
      {
        v23 = v22;
        v24 = CFGetTypeID(v22);
        if (v24 != CFBooleanGetTypeID())
        {
          AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_11();
          goto LABEL_176;
        }

        *(*(a1 + 48) + 88) = v23;
      }

      goto LABEL_28;
    }

    v102 = v18;
    v103 = CFGetTypeID(v18);
    if (v103 != CFDataGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_8();
      goto LABEL_176;
    }

    AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "Calibration Key Hash found, setting to %@", v102);
    v104 = AMAuthInstallBasebandSetKeyHashRootManifest(a1);
    if (!v104)
    {
      goto LABEL_22;
    }

    v98 = v104;
    AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_9();
LABEL_177:
    _AMAuthInstallBasebandParametersFinalize(*(a1 + 48));
    *(a1 + 48) = 0;
    goto LABEL_125;
  }

  AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "manifest dict not found");
LABEL_28:
  v25 = CFDictionaryGetValue(cf, @"VendorID");
  if (v25)
  {
    v26 = v25;
    v27 = CFGetTypeID(v25);
    if (v27 != CFNumberGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_13();
      goto LABEL_176;
    }

    if (AMAuthInstallSupportGetUInt32(v26, *(a1 + 48)))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_14();
LABEL_167:
      v98 = 3;
      goto LABEL_177;
    }
  }

  else
  {
    **(a1 + 48) = 2;
  }

  v28 = CFDictionaryGetValue(cf, @"ChipID");
  if (v28)
  {
    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 != CFNumberGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_15();
      goto LABEL_176;
    }

    if (AMAuthInstallSupportGetUInt32(v29, (*(a1 + 48) + 4)))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_16();
      goto LABEL_167;
    }
  }

  v31 = CFDictionaryGetValue(cf, @"CertID");
  if (v31 || (v31 = CFDictionaryGetValue(cf, @"GoldCertID")) != 0)
  {
    v32 = v31;
    v33 = CFGetTypeID(v31);
    if (v33 != CFNumberGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_17();
      goto LABEL_176;
    }

    UInt32 = AMAuthInstallSupportGetUInt32(v32, (*(a1 + 48) + 8));
    if (UInt32)
    {
      v98 = UInt32;
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_18();
      goto LABEL_177;
    }
  }

  v35 = CFDictionaryGetValue(cf, @"FusingStatus");
  if (v35)
  {
    v36 = v35;
    v37 = CFGetTypeID(v35);
    if (v37 != CFNumberGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_19();
      goto LABEL_176;
    }

    if (AMAuthInstallSupportGetUInt32(v36, (*(a1 + 48) + 96)))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_20();
      goto LABEL_167;
    }
  }

  v38 = CFDictionaryGetValue(cf, @"ChipSerialNo");
  if (v38)
  {
    v39 = v38;
    v40 = CFGetTypeID(v38);
    if (v40 != CFDataGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_21();
      goto LABEL_176;
    }

    if (_AMAuthInstallBasebandCheckSnum(*(*(a1 + 48) + 4), v39))
    {
      AMAuthInstallLog(7, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "invalid snum: %@", v39);
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 16));
    *(*(a1 + 48) + 16) = SafeRetain(v39);
    if (!AMAuthInstallBasebandPersonalizationRequired(a1))
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "This baseband is does not require personalization. Personalization disabled, continuing.");
      SafeRelease(*(*(a1 + 48) + 16));
      *(*(a1 + 48) + 16) = 0;
    }
  }

  v41 = CFDictionaryGetValue(cf, @"ProvisioningManifest");
  if (v41)
  {
    v42 = v41;
    v43 = CFGetTypeID(v41);
    if (v43 != CFDataGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_22();
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 112));
    *(*(a1 + 48) + 112) = CFRetain(v42);
  }

  v44 = CFDictionaryGetValue(cf, @"Nonce");
  if (v44)
  {
    v45 = v44;
    v46 = CFGetTypeID(v44);
    if (v46 != CFDataGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_23();
      goto LABEL_176;
    }

    if (!CFDataGetLength(v45))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_24();
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 24));
    *(*(a1 + 48) + 24) = CFRetain(v45);
  }

  v47 = CFDictionaryGetValue(cf, @"provisioning");
  if (v47)
  {
    v48 = v47;
    v49 = CFDictionaryGetValue(v47, @"MEID");
    if (v49)
    {
      v50 = v49;
      v51 = CFGetTypeID(v49);
      if (v51 != CFStringGetTypeID())
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_25();
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 32));
      *(*(a1 + 48) + 32) = CFRetain(v50);
    }

    v52 = CFDictionaryGetValue(v48, @"IMEI");
    if (v52)
    {
      v53 = v52;
      v54 = CFGetTypeID(v52);
      if (v54 != CFStringGetTypeID())
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_26();
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 40));
      *(*(a1 + 48) + 40) = CFRetain(v53);
    }

    v55 = CFDictionaryGetValue(v48, @"IMEI2");
    if (v55)
    {
      v56 = v55;
      v57 = CFGetTypeID(v55);
      if (v57 != CFStringGetTypeID())
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_27();
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 48));
      *(*(a1 + 48) + 48) = CFRetain(v56);
    }

    v58 = CFDictionaryGetValue(v48, @"EID");
    if (v58)
    {
      v59 = v58;
      v60 = CFGetTypeID(v58);
      if (v60 != CFStringGetTypeID())
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_28();
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 56));
      *(*(a1 + 48) + 56) = CFRetain(v59);
    }

    v61 = CFDictionaryGetValue(v48, @"EncryptedSessionKey");
    if (v61)
    {
      v62 = v61;
      v63 = CFGetTypeID(v61);
      if (v63 != CFDataGetTypeID())
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_29();
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 72));
      *(*(a1 + 48) + 72) = CFRetain(v62);
    }

    v64 = CFDictionaryGetValue(v48, @"CarrierID");
    if (v64)
    {
      v65 = v64;
      v66 = CFGetTypeID(v64);
      if (v66 != CFStringGetTypeID())
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_30();
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 104));
      *(*(a1 + 48) + 104) = CFRetain(v65);
    }
  }

  v67 = CFDictionaryGetValue(cf, @"EUICCCSN");
  if (v67)
  {
    v68 = v67;
    v69 = CFGetTypeID(v67);
    if (v69 != CFDataGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_31();
      goto LABEL_176;
    }

    if (!CFDataGetLength(v68))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_32();
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 120));
    *(*(a1 + 48) + 120) = CFRetain(v68);
  }

  v70 = CFDictionaryGetValue(cf, @"EUICCMainNonce");
  if (v70)
  {
    v71 = v70;
    v72 = CFGetTypeID(v70);
    if (v72 != CFDataGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_33();
      goto LABEL_176;
    }

    if (!CFDataGetLength(v71))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_34();
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 128));
    *(*(a1 + 48) + 128) = CFRetain(v71);
  }

  v73 = CFDictionaryGetValue(cf, @"EUICCGoldNonce");
  if (v73)
  {
    v74 = v73;
    v75 = CFGetTypeID(v73);
    if (v75 != CFDataGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_35();
      goto LABEL_176;
    }

    if (!CFDataGetLength(v74))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_36();
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 136));
    *(*(a1 + 48) + 136) = CFRetain(v74);
  }

  v76 = CFDictionaryGetValue(cf, @"EUICCTicketVersion");
  if (v76)
  {
    v77 = v76;
    v78 = CFGetTypeID(v76);
    if (v78 != CFNumberGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_37();
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 144));
    *(*(a1 + 48) + 144) = CFRetain(v77);
  }

  v79 = CFDictionaryGetValue(cf, @"EUICCChipID");
  if (v79)
  {
    v80 = v79;
    v81 = CFGetTypeID(v79);
    if (v81 != CFNumberGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_38();
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 160));
    *(*(a1 + 48) + 160) = CFRetain(v80);
  }

  v82 = CFDictionaryGetValue(cf, @"EUICCCertIdentifier");
  if (v82)
  {
    v83 = v82;
    v84 = CFGetTypeID(v82);
    if (v84 != CFDataGetTypeID())
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_39();
      goto LABEL_176;
    }

    if (!CFDataGetLength(v83))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_40();
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 152));
    *(*(a1 + 48) + 152) = CFRetain(v83);
  }

  v85 = CFDictionaryGetValue(cf, @"EUICCFirmwareLoaderVersion");
  if (v85)
  {
    v86 = v85;
    v87 = CFGetTypeID(v85);
    if (v87 == CFDataGetTypeID())
    {
      if (CFDataGetLength(v86) == 3)
      {
        SafeRelease(*(*(a1 + 48) + 168));
        v88 = CFRetain(v86);
        v89 = *(a1 + 48);
        *(v89 + 168) = v88;
        goto LABEL_101;
      }

      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_42();
    }

    else
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_41();
    }

LABEL_176:
    v98 = 1;
    goto LABEL_177;
  }

  v89 = *(a1 + 48);
  if (!v89)
  {
    AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_43();
    goto LABEL_176;
  }

LABEL_101:
  if (v6)
  {
    if (*v6 == *v89)
    {
      v90 = 0;
    }

    else
    {
      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "vendorID changed");
      v89 = *(a1 + 48);
      v90 = 1;
    }

    if (*(v6 + 4) != *(v89 + 4))
    {
      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "chipID changed");
      v89 = *(a1 + 48);
      v90 = 1;
    }

    if (*(v6 + 8) != *(v89 + 8))
    {
      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "goldCertID changed");
      v89 = *(a1 + 48);
      v90 = 1;
    }

    if (AMAuthInstallSupportCFDataCompare(*(v6 + 16), *(v89 + 16)))
    {
      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "snum changed");
      v90 = 1;
    }

    if (AMAuthInstallSupportCFDataCompare(*(v6 + 24), *(*(a1 + 48) + 24)))
    {
      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "nonce changed");
      v90 = 1;
    }

    v91 = 0;
    v92 = *(a1 + 48);
    v109.val[0] = *(v6 + 120);
    v109.val[1] = *(v92 + 120);
    v93 = valuePtr;
    vst2q_f64(v93, v109);
    v93 += 4;
    *v93 = *(v6 + 152);
    v107 = *(v92 + 152);
    v94 = v90 == 0;
LABEL_115:
    v95 = &valuePtr[4 * v91 + 2];
    do
    {
      v96 = v91 + 1;
      if (AMAuthInstallSupportCFDataCompare(*(v95 - 1), *v95))
      {
        AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "eUICC Param %d changed", v91);
        v94 = 0;
        if (v91++ != 2)
        {
          goto LABEL_115;
        }

        goto LABEL_124;
      }

      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "eUICC Param %d unchanged", v91);
      v95 += 2;
      ++v91;
    }

    while (v96 != 3);
    if (v94)
    {
      goto LABEL_123;
    }

LABEL_124:
    AMAuthInstallLog(4, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "bbParameters changed, triggering bbfw re-personalization");
    v98 = 0;
    *(a1 + 224) = 1;
  }

  else
  {
    AMAuthInstallLog(5, "_AMAuthInstallBasebandCheckForParameterChange", "bbParameters is now non-NULL");
LABEL_123:
    v98 = 0;
  }

LABEL_125:
  _AMAuthInstallBasebandParametersFinalize(v6);
  return v98;
}

uint64_t AMAuthInstallBasebandHandleUpdaterStatus(uint64_t a1, int a2, const __CFDictionary *a3)
{
  if (!a1)
  {
    return 1;
  }

  if (a2)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  AMAuthInstallLog(7, "AMAuthInstallBasebandHandleUpdaterStatus", "commandAccepted: %s", v6);
  if (!a3)
  {
    v41 = 1;
    AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "outputDict is NULL");
    return v41;
  }

  AMAuthInstallLog(7, "AMAuthInstallBasebandHandleUpdaterStatus", "outputDict: %@", a3);
  Value = CFDictionaryGetValue(a3, @"provisioning");
  if (Value)
  {
    if (!*(a1 + 48))
    {
      v41 = 1;
      AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "amai->bbParameters is NULL");
      return v41;
    }

    v8 = Value;
    v9 = CFDictionaryGetValue(Value, @"MEID");
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 != CFStringGetTypeID())
      {
        v41 = 1;
        AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "mistyped meid");
        return v41;
      }

      SafeRelease(*(*(a1 + 48) + 32));
      *(*(a1 + 48) + 32) = CFRetain(v10);
    }

    v12 = CFDictionaryGetValue(v8, @"IMEI");
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 != CFStringGetTypeID())
      {
        v41 = 1;
        AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "mistyped imei");
        return v41;
      }

      SafeRelease(*(*(a1 + 48) + 40));
      *(*(a1 + 48) + 40) = CFRetain(v13);
    }

    v15 = CFDictionaryGetValue(v8, @"IMEI2");
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 != CFStringGetTypeID())
      {
        v41 = 1;
        AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "mistyped imei2");
        return v41;
      }

      SafeRelease(*(*(a1 + 48) + 48));
      *(*(a1 + 48) + 48) = CFRetain(v16);
    }

    v18 = CFDictionaryGetValue(v8, @"EID");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 != CFStringGetTypeID())
      {
        v41 = 1;
        AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "mistyped eid");
        return v41;
      }

      SafeRelease(*(*(a1 + 48) + 56));
      *(*(a1 + 48) + 56) = CFRetain(v19);
    }

    v21 = CFDictionaryGetValue(v8, @"ICCID");
    if (v21)
    {
      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 != CFStringGetTypeID())
      {
        v41 = 1;
        AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "mistyped iccid");
        return v41;
      }

      SafeRelease(*(*(a1 + 48) + 64));
      *(*(a1 + 48) + 64) = CFRetain(v22);
    }
  }

  v24 = 0;
  v25 = *(a1 + 304);
  if (v25 <= 3)
  {
    if (v25 != 1)
    {
      if (v25 != 2)
      {
        goto LABEL_43;
      }

      v24 = 0;
      v31 = 3;
      goto LABEL_42;
    }

    v32 = CFDictionaryGetValue(a3, @"done");
    if (!v32 || CFBooleanGetValue(v32) != 1)
    {
      v24 = 0;
      goto LABEL_43;
    }

    if (*(a1 + 328))
    {
      v41 = 19;
      AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "Attempt to force provision baseband failed");
      return v41;
    }

    AMAuthInstallLog(5, "AMAuthInstallBasebandHandleUpdaterStatus", "Provisioning never started by BBUpdater, skipping for BB");
LABEL_41:
    v24 = 0;
    v31 = 7;
LABEL_42:
    *(a1 + 304) = v31;
    goto LABEL_43;
  }

  if ((v25 - 4) < 2)
  {
    valuePtr = 103;
    v26 = CFDictionaryGetValue(a3, @"provisioning");
    if (!v26)
    {
      AMAuthInstallBasebandHandleUpdaterStatus_cold_4(0);
LABEL_31:
      AMAuthInstallLog(3, "_AMAuthInstallBasebandCheckProvisioningStatus", "Baseband provisioning failed. Informing server.");
      AMAuthInstallProvisioningSendAck(a1, 103);
      *(a1 + 304) = 8;
      CFRelease(*(a1 + 312));
      *(a1 + 312) = 0;
      v24 = 19;
      goto LABEL_43;
    }

    v27 = CFDictionaryGetValue(v26, @"Status");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      TypeID = CFNumberGetTypeID();
      if (v29 == TypeID)
      {
        if (!CFNumberGetValue(v28, kCFNumberSInt32Type, &valuePtr))
        {
          AMAuthInstallBasebandHandleUpdaterStatus_cold_2();
        }
      }

      else
      {
        AMAuthInstallBasebandHandleUpdaterStatus_cold_1(TypeID);
      }
    }

    else
    {
      AMAuthInstallBasebandHandleUpdaterStatus_cold_3(0);
    }

    if (valuePtr)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  if (v25 == 6)
  {
    goto LABEL_41;
  }

LABEL_43:
  if (!*(a1 + 176))
  {
LABEL_56:
    v41 = 0;
    goto LABEL_79;
  }

  v33 = CFDictionaryGetValue(a3, @"attemptedToFuse");
  v36 = !v33 || (v34 = v33, v35 = CFGetTypeID(v33), v35 != CFBooleanGetTypeID()) || CFBooleanGetValue(v34) == 0;
  v37 = CFDictionaryGetValue(a3, @"fuseAttemptSucceeded");
  if (v37 && (v38 = v37, v39 = CFGetTypeID(v37), v39 == CFBooleanGetTypeID()))
  {
    v40 = CFBooleanGetValue(v38) == 0;
    if (!a2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v40 = 1;
    if (!a2)
    {
LABEL_51:
      if (v36)
      {
        AMAuthInstallLog(5, "AMAuthInstallBasebandHandleUpdaterStatus", "unrelated failure; will reclaim fusing program");
        v41 = 0;
        v42 = 0;
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "fusing attempt failed; will consume program");
        v42 = 1;
        v41 = 18;
      }

      goto LABEL_66;
    }
  }

  if (v36)
  {
    AMAuthInstallLog(5, "AMAuthInstallBasebandHandleUpdaterStatus", "unrelated stage; will hold fusing program");
    goto LABEL_56;
  }

  if (v40)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "unrecognized state; will consume program (commandAccepted=%s, attemptedToFuse=%s, fuseAttemptSucceeded=%s)", "YES", "YES", "NO");
    v42 = 1;
    v41 = 14;
  }

  else
  {
    v43 = *(a1 + 48);
    if (!v43)
    {
      AMAuthInstallBasebandHandleUpdaterStatus_cold_5();
      v41 = 1;
      goto LABEL_79;
    }

    if (*(v43 + 16))
    {
      v44 = CFGetAllocator(a1);
      v45 = _CopyHexStringFromData(v44, *(*(a1 + 48) + 16));
      AMAuthInstallLog(5, "AMAuthInstallBasebandHandleUpdaterStatus", "fusing attempt succeeded (snum=%@); will consume program", v45);
      SafeRelease(v45);
    }

    else
    {
      AMAuthInstallLog(5, "AMAuthInstallBasebandHandleUpdaterStatus", "fusing attempt succeeded; will consume program");
    }

    v41 = 0;
    v42 = 1;
  }

LABEL_66:
  if (*(a1 + 185))
  {
LABEL_78:
    *(a1 + 176) = 0;
    *(a1 + 184) = 1;
    goto LABEL_79;
  }

  v46 = *(*(a1 + 48) + 4);
  if (v46 <= 1700064)
  {
    if (v46 == 938209 || v46 == 1327329)
    {
      goto LABEL_77;
    }

    v47 = 1515745;
    goto LABEL_76;
  }

  if (v46 > 2089184)
  {
    if (v46 != 2089185)
    {
      v47 = 2814177;
      goto LABEL_76;
    }

LABEL_77:
    CFRelease(*(a1 + 176));
    goto LABEL_78;
  }

  if (v46 == 1700065)
  {
    goto LABEL_77;
  }

  v47 = 2044129;
LABEL_76:
  if (v46 == v47)
  {
    goto LABEL_77;
  }

  v49 = CFGetAllocator(a1);
  v50 = AMAuthInstallFusingProgramAck(v49, *(a1 + 160), *(a1 + 176), v42);
  CFRelease(*(a1 + 176));
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  if (v50)
  {
    AMAuthInstallLog(4, "AMAuthInstallBasebandHandleUpdaterStatus", "*******************************************************");
    AMAuthInstallLog(4, "AMAuthInstallBasebandHandleUpdaterStatus", "*   failed to ack fusing program; continuing anyway   *");
    AMAuthInstallLog(4, "AMAuthInstallBasebandHandleUpdaterStatus", "*******************************************************");
  }

LABEL_79:
  if (!v24)
  {
    return v41;
  }

  return v24;
}

uint64_t AMAuthInstallBasebandGetKeyHash(uint64_t a1, const void *a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*(a1 + 200), a2);
      result = 0;
      *a3 = Value;
      return result;
    }

    AMAuthInstallBasebandGetKeyHash_cold_1(a1);
  }

  else
  {
    AMAuthInstallBasebandGetKeyHash_cold_2(0);
  }

  return 1;
}

uint64_t AMAuthInstallBasebandSetNonce(uint64_t a1, const __CFData *cf)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    return 1;
  }

  if (cf)
  {
    if (CFDataGetLength(cf) > 20)
    {
      return 1;
    }

    v3 = *(a1 + 48);
  }

  v6 = *(v3 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(a1 + 48) + 24) = 0;
  }

  if (!cf)
  {
    return 0;
  }

  v7 = CFGetTypeID(cf);
  TypeID = CFDataGetTypeID();
  if (v7 != TypeID)
  {
    AMAuthInstallBasebandSetNonce_cold_1(TypeID);
    return 1;
  }

  if (!CFDataGetLength(cf))
  {
    AMAuthInstallBasebandSetNonce_cold_2(0);
    return 1;
  }

  v9 = CFRetain(cf);
  result = 0;
  *(*(a1 + 48) + 24) = v9;
  return result;
}

__CFString *AMAuthInstallBasebandCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 256);
  CFStringAppend(Mutable, @"(");
  if (*(a1 + 58))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"personalize=%s", v4);
  if (*(a1 + 48))
  {
    CFStringAppendFormat(Mutable, 0, @", ");
    if (*(*(a1 + 48) + 16))
    {
      v5 = CFGetAllocator(a1);
      v6 = _CopyHexStringFromData(v5, *(*(a1 + 48) + 16));
      if (v6)
      {
        v7 = v6;
        CFStringAppendFormat(Mutable, 0, @"snum=0x%@, ", v6);
        CFRelease(v7);
      }
    }

    CFStringAppendFormat(Mutable, 0, @"chipid=0x%x, certid=0x%x", *(*(a1 + 48) + 4), *(*(a1 + 48) + 8));
    if (*(*(a1 + 48) + 24))
    {
      v8 = CFGetAllocator(a1);
      v9 = _CopyHexStringFromData(v8, *(*(a1 + 48) + 24));
      if (v9)
      {
        v10 = v9;
        CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v9);
        CFRelease(v10);
      }
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void _AddToArchive(CFStringRef theString, const __CFData *a2, CFErrorRef *a3)
{
  if (!*a3)
  {
    v5 = BbfwWriterAddFile(a3[1], theString, a2);
    if (v5)
    {
      v6 = v5;
      v7 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v9 = Mutable;
        v10 = CFStringCreateWithFormat(v7, 0, @"BbfwWriterAddFile failed to add file: %@. Error code: %d", theString, v6);
        if (v10)
        {
          v11 = v10;
          CFDictionarySetValue(v9, *MEMORY[0x29EDB8F38], v10);
          CFRelease(v11);
        }

        *a3 = CFErrorCreate(v7, @"AuthInstallErrorDomain", v6, v9);
        AMAuthInstallLog(3, "_AddToArchive", "failed to archive %@", theString);

        CFRelease(v9);
      }

      else
      {
        *a3 = CFErrorCreate(v7, @"AuthInstallErrorDomain", v6, 0);
        AMAuthInstallLog(3, "_AddToArchive", "failed to archive %@", theString);
      }
    }
  }
}

void OUTLINED_FUNCTION_21(__CFDictionary *a1)
{

  CFDictionarySetValue(a1, v2, v1);
}

uint64_t _AMAuthInstallCopyPsiMeasurementAndVersion(const __CFAllocator *a1, uint64_t a2, unint64_t a3, CFDataRef *a4, CFStringRef *a5)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    _AMAuthInstallCopyPsiMeasurementAndVersion_cold_2();
  }

  if (!a5)
  {
    _AMAuthInstallCopyPsiMeasurementAndVersion_cold_1();
  }

  v18 = 0uLL;
  v19 = 0;
  if (a3 < 0x50 || *(a2 + 4) != 1430808940 || (v6 = *(a2 + 12), (v6 + 1) <= 1))
  {
    AMAuthInstallLog(3, "_AMAuthInstallCopyPsiMeasurementAndVersion", "PSI Image does not contain recognizable PSI header");
    return 10;
  }

  if ((*(a2 + 10) & 1) == 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallCopyPsiMeasurementAndVersion", "missing SN indicator");
    return 1;
  }

  v8 = *(a2 + 20);
  if ((v8 & 0x3F) != 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallCopyPsiMeasurementAndVersion", "GPuK is not properly aligned for partial digest");
    return 10;
  }

  *bytes = *(a2 + 40) - v8;
  v17 = v8;
  *&v11 = image3SHA1Partial(a2, v8, &v18).u64[0];
  v12 = CFStringCreateWithFormat(a1, 0, @"0x%08x", v11, v6);
  if (v12)
  {
    v13 = v12;
    v14 = CFDataCreate(a1, bytes, 28);
    if (v14)
    {
      v15 = v14;
      result = 0;
      *a5 = v13;
      *a4 = v15;
      return result;
    }

    CFRelease(v13);
  }

  return 2;
}

uint64_t _AMAuthInstallCopyBufferMeasurement(const __CFAllocator *a1, void *data, CC_LONG len, CFDataRef *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  CC_SHA1(data, len, md);
  v6 = CFDataCreate(a1, md, 20);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t AMAuthInstallBasebandICE3StitchModemStack(uint64_t a1, CFTypeRef cf, uint64_t a3, CFTypeRef *a4)
{
  if (*(*(a1 + 48) + 24))
  {
    *a4 = CFRetain(cf);
  }

  return 0;
}

unint64_t AMAuthInstallBasebandICE3MeasureWorld(const void *a1, CFDataRef theData, __CFDictionary *a3)
{
  v49 = *MEMORY[0x29EDCA608];
  BytePtr = CFDataGetBytePtr(theData);
  result = CFDataGetLength(theData);
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  if (!result)
  {
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  cf = 0;
  value = 0;
  do
  {
    v15 = &BytePtr[v8];
    v16 = *&BytePtr[v8];
    if (v16 <= 15)
    {
      if (v16 == 12)
      {
        v19 = v15[2];
        if (v19 > 4)
        {
LABEL_39:
          AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureWorld", "UID value of %ld exceeds maximum array bound of %d\n");
          return 10;
        }

        v20 = v15[7];
        v21 = &v48[v19];
        *v21 = &BytePtr[v15[9]];
        v21[1] = v20;
      }

      else if (v16 == 15)
      {
        v17 = v15[2];
        if (v17 > 4)
        {
          goto LABEL_39;
        }

        v18 = &v47[v17];
        *v18 = v15 + 131;
        v18[1] = 1536;
      }
    }

    else
    {
      switch(v16)
      {
        case 16:
          v9 = v15[3];
          v10 = &BytePtr[v15[5]];
          break;
        case 19:
          v14 = &BytePtr[v15[7]];
          v13 = v15[5];
          break;
        case 18:
          v11 = &BytePtr[v15[7]];
          v12 = v15[5];
          break;
      }
    }

    v8 += v15[1];
  }

  while (v8 < result);
  v44 = 0;
  if (!v11)
  {
    goto LABEL_20;
  }

  v22 = CFGetAllocator(a1);
  result = _AMAuthInstallCopyPsiMeasurementAndVersion(v22, v11, v12, &cf, &value);
  if (!result)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "RamPSI Version: %@", value);
    CFDictionarySetValue(a3, @"RamPSI-Version", value);
    CFRelease(value);
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "RamPSI PartialDigest: %@", cf);
    CFDictionarySetValue(a3, @"RamPSI-PartialDigest", cf);
    CFRelease(cf);
LABEL_20:
    if (v14)
    {
      v23 = CFGetAllocator(a1);
      result = _AMAuthInstallCopyBufferMeasurement(v23, v14, v13, &v44);
      if (!result)
      {
        v24 = v44;
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "EBL Digest: %@", v44);
        CFDictionarySetValue(a3, @"EBL-Digest", v24);
        CFRelease(v24);
        goto LABEL_23;
      }

      return result;
    }

LABEL_23:
    if (!v9)
    {
      return 0;
    }

    v25 = v9;
    for (i = v10 + 4; ; i += 36)
    {
      v27 = *(i - 1);
      v28 = &v48[v27];
      v29 = *v28;
      if (!*v28 || (v30 = &v47[v27], (v31 = *v30) == 0))
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureWorld", "one or more elements are missing for TOC with UID = %lx\n");
        return 10;
      }

      if (*i == 4)
      {
        break;
      }

      if (*i == 2)
      {
        v32 = CFGetAllocator(a1);
        result = _AMAuthInstallCopyPsiMeasurementAndVersion(v32, v29, *(v28 + 1), &cf, &value);
        if (result)
        {
          return result;
        }

        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI Version: %@", value);
        CFDictionarySetValue(a3, @"FlashPSI-Version", value);
        CFRelease(value);
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI PartialDigest: %@", cf);
        CFDictionarySetValue(a3, @"FlashPSI-PartialDigest", cf);
        CFRelease(cf);
        v33 = CFGetAllocator(a1);
        result = _AMAuthInstallCopyBufferMeasurement(v33, v31, *(v30 + 1), &v44);
        if (result)
        {
          return result;
        }

        v34 = v44;
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI SecPack Digest: %@", v44);
        v35 = a3;
        v36 = @"FlashPSI-SecPackDigest";
LABEL_36:
        CFDictionarySetValue(v35, v36, v34);
        CFRelease(v34);
      }

      result = 0;
      if (!--v25)
      {
        return result;
      }
    }

    v37 = CFGetAllocator(a1);
    v38 = *(v28 + 1);
    result = _AMAuthInstallCopyBufferMeasurement(v37, v29, v38, &v44);
    if (result)
    {
      return result;
    }

    v39 = v44;
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "Modem Stack Digest: %@", v44);
    CFDictionarySetValue(a3, @"ModemStack-Digest", v39);
    CFRelease(v39);
    v40 = CFGetAllocator(a1);
    v41 = CFStringCreateWithFormat(v40, 0, @"0x%08lx", v38);
    if (!v41)
    {
      return 2;
    }

    v42 = v41;
    CFDictionarySetValue(a3, @"ModemStack-Length", v41);
    CFRelease(v42);
    v43 = CFGetAllocator(a1);
    result = _AMAuthInstallCopyBufferMeasurement(v43, v31, *(v30 + 1), &v44);
    if (result)
    {
      return result;
    }

    v34 = v44;
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "Modem Stack SecPack Digest: %@", v44);
    v35 = a3;
    v36 = @"ModemStack-SecPackDigest";
    goto LABEL_36;
  }

  return result;
}

uint64_t AMAuthInstallBasebandCreatePersonalizedPsiData(const void *a1, const __CFData *a2, const __CFData *a3, __CFData **a4)
{
  v7 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v7, 0, a2);
  v9 = MutableCopy;
  if (MutableCopy)
  {
    Length = CFDataGetLength(MutableCopy);
    v11 = CFDataGetLength(a3);
    CFDataSetLength(v9, Length - v11);
    BytePtr = CFDataGetBytePtr(a3);
    v13 = CFDataGetLength(a3);
    CFDataAppendBytes(v9, BytePtr, v13);
    v14 = 0;
    if (a4)
    {
      *a4 = v9;
      v9 = 0;
    }
  }

  else
  {
    v14 = 2;
  }

  SafeRelease(v9);
  return v14;
}

uint64_t AMAuthInstallBasebandCreatePersonalizedTicketPlusEblData(CFTypeRef cf, const __CFData *a2, const __CFData *a3, __CFData **a4)
{
  result = 1;
  if (a2 && a3 && a4)
  {
    v9 = CFGetAllocator(cf);
    MutableCopy = CFDataCreateMutableCopy(v9, 0, a3);
    if (MutableCopy)
    {
      v11 = MutableCopy;
      Length = CFDataGetLength(MutableCopy);
      CFDataAppendBytes(v11, AMAuthInstallBasebandCreatePersonalizedTicketPlusEblData_kPaddingBytes, -Length & 3);
      BytePtr = CFDataGetBytePtr(a2);
      v14 = CFDataGetLength(a2);
      CFDataAppendBytes(v11, BytePtr, v14);
      result = 0;
      *a4 = v11;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, const char *a3)
{

  AMAuthInstallLog(6, v3, a3);
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, const void *a2, uint64_t a3)
{

  return AMAuthInstallDebugWriteObject(v3, a2, a3, 1);
}

uint64_t OUTLINED_FUNCTION_8_2(const void **a1, uint64_t a2, uint64_t a3)
{

  return AMAuthInstallDebugWriteObject(a1, v3, a3, 1);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return FlsParserReadFromData(v0, v1);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t (*a4)(uint64_t, CFTypeRef, uint64_t))
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, a4, v4, v5);
}

uint64_t AMAuthInstallBasebandN41SupportsLocalSigning(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *v1;
  v3 = v1[2];
  v4 = v2 == 3 && v3 == 398790697;
  v5 = v4;
  if (v4)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandN41SupportsLocalSigning", "local signing is enabled");
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandN41SupportsLocalSigning", "local signing is disabled. vendorID=%d certID=%d");
  }

  return v5;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, v3, v4, v5);
}

__CFDictionary *AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo(const void **a1, void *a2, const void *a3, const void *a4, const __CFUUID *a5, uint64_t a6)
{
  *&bytes.byte8 = 0;
  theDict = 0;
  *&bytes.byte0 = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_9(a6);
LABEL_27:
    v22 = 0;
    goto LABEL_18;
  }

  AMAuthInstallApCopyParameters(a1, &theDict);
  if (!theDict)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_8(a6);
    goto LABEL_27;
  }

  value = a2;
  v26 = a4;
  v27 = a5;
  v11 = CFDictionaryGetValue(theDict, @"ApBoardID");
  v12 = CFDictionaryGetValue(theDict, @"ApChipID");
  v13 = CFDictionaryGetValue(theDict, @"ECID");
  v14 = CFDictionaryGetValue(theDict, @"ApProductionMode");
  v15 = CFDictionaryGetValue(theDict, @"ApSecurityDomain");
  v16 = CFDictionaryGetValue(theDict, @"ApSecurityMode");
  if (!v11)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_7(a6);
    goto LABEL_27;
  }

  if (!v12)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_6(a6);
    goto LABEL_27;
  }

  if (!v13)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_5(a6);
    goto LABEL_27;
  }

  if (!v14)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_4(a6);
    goto LABEL_27;
  }

  if (!v15)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_3(a6);
    v22 = 0;
    goto LABEL_18;
  }

  v17 = v16;
  if (!v16)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_2(a6);
    goto LABEL_27;
  }

  v18 = a3;
  v19 = a6;
  v20 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 10, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v22 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"ApBoardID", v11);
    CFDictionarySetValue(v22, @"ApChipID", v12);
    CFDictionarySetValue(v22, @"ApECID", v13);
    CFDictionarySetValue(v22, @"ApProductionMode", v14);
    CFDictionarySetValue(v22, @"ApSecurityDomain", v15);
    CFDictionarySetValue(v22, @"ApSecurityMode", v17);
    if (value)
    {
      CFDictionarySetValue(v22, @"Ap,RecoveryOSPolicyNonceHash", value);
    }

    if (v18)
    {
      CFDictionarySetValue(v22, @"Ap,NextStageIM4MHash", v18);
    }

    if (v26)
    {
      CFDictionarySetValue(v22, @"Ap,NextStageCryptex1IM4MHash", v26);
    }

    if (v27)
    {
      bytes = CFUUIDGetUUIDBytes(v27);
      v23 = CFDataCreate(v20, &bytes.byte0, 16);
      CFDictionarySetValue(v22, @"Ap,VolumeUUID", v23);
    }
  }

  else
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_1(v19);
  }

LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v22;
}

__CFDictionary *AMAuthInstallUpdaterCryptex1LocalPolicyGetTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyGetTags_cold_3(a4);
LABEL_8:
    v10 = 0;
    goto LABEL_5;
  }

  v7 = CFArrayCreateMutable(v5, 1, MEMORY[0x29EDB9000]);
  v8 = v7;
  if (!v7)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyGetTags_cold_2(a4);
    goto LABEL_8;
  }

  CFArrayAppendValue(v7, @"ApImg4Ticket");
  v9 = CFDictionaryCreateMutable(v5, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = v9;
  if (v9)
  {
    CFDictionaryAddValue(v9, @"BuildIdentityTags", Mutable);
    CFDictionaryAddValue(v10, @"ResponseTags", v8);
  }

  else
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyGetTags_cold_1(a4);
  }

LABEL_5:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v10;
}

CFMutableDictionaryRef AMAuthInstallUpdaterCryptex1LocalPolicyCopyFirmware(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyFirmware_cold_1(a4);
  }

  return Mutable;
}

__CFDictionary *AMAuthInstallUpdaterCryptex1LocalPolicyCreateRequest(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCreateRequest_cold_4(a4);
LABEL_17:
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    Mutable = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  if (!Value)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCreateRequest_cold_3(a4);
    goto LABEL_17;
  }

  v9 = Value;
  v10 = CFArrayCreateMutable(v6, 13, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(v10, @"ApBoardID");
  CFArrayAppendValue(v10, @"ApChipID");
  CFArrayAppendValue(v10, @"ApECID");
  CFArrayAppendValue(v10, @"ApProductionMode");
  CFArrayAppendValue(v10, @"ApSecurityDomain");
  CFArrayAppendValue(v10, @"ApSecurityMode");
  CFArrayAppendValue(v10, @"Ap,RecoveryOSPolicyNonceHash");
  CFArrayAppendValue(v10, @"Ap,NextStageIM4MHash");
  CFArrayAppendValue(v10, @"Ap,NextStageCryptex1IM4MHash");
  CFArrayAppendValue(v10, @"Ap,VolumeUUID");
  if (CFArrayGetCount(v10) >= 1)
  {
    v11 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
      v13 = CFDictionaryGetValue(v9, ValueAtIndex);
      if (v13)
      {
        CFDictionarySetValue(Mutable, ValueAtIndex, v13);
      }

      ++v11;
    }

    while (v11 < CFArrayGetCount(v10));
  }

  v14 = *MEMORY[0x29EDB8F00];
  CFDictionarySetValue(Mutable, @"@ApImg4Ticket", *MEMORY[0x29EDB8F00]);
  CFDictionarySetValue(Mutable, @"Ap,LocalBoot", v14);
  v15 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v15)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCreateRequest_cold_2(a4);
    goto LABEL_17;
  }

  v16 = AMAuthInstallLocalPolicyCopyPayloadDigestSHA384();
  if (!v16)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCreateRequest_cold_1(a4);
    goto LABEL_17;
  }

  CFDictionarySetValue(v15, @"Digest", v16);
  CFDictionarySetValue(v15, @"Trusted", v14);
  CFDictionarySetValue(Mutable, @"Ap,LocalPolicy", v15);
  AMSupportSafeRelease();
  AMSupportSafeRelease();
LABEL_11:
  AMSupportSafeRelease();
  return Mutable;
}

BOOL AMAuthInstallIsICE19BBGoldCertIDECDSA(int a1)
{
  AMAuthInstallLog(6, "AMAuthInstallIsICE19BBGoldCertIDECDSA", "GoldCertId: %X\n", a1);
  v2 = a1 == 653523660 || a1 == 1559424078;
  return a1 == -2087094182 || v2;
}

uint64_t AMAuthInstallBasebandRembrandtSupportsServerSigning(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 4) - 94;
  if (v1 > 0xA)
  {
    return 0;
  }

  else
  {
    return byte_29855FA67[v1];
  }
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, AMAuthInstallRembrandtCreateStitchedPSI, v2, v4, v3);
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureEBL, v3, v4);
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureRestorePSI, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasurePSI, v3, v4);
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureBBCFG, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, AMAuthInstallRembrandtCreateStitchedRestorePSI, v2, v4, v3);
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **))
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v6, a2, a3, v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(0, v6, a3, v3, v4, v5);
}

uint64_t _VinylBBFWReaderCB(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  value = 0;
  if (!a1 || !*a1 || !theString || !a3 || !*(a1 + 8))
  {
    _VinylBBFWReaderCB_cold_1();
LABEL_15:
    v7 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 16) && !CFStringHasPrefix(theString, @"vinyl"))
  {
    return 1;
  }

  v6 = BbfwReaderFindAndCopyFileData(a3, theString, &value);
  if (v6)
  {
    AMAuthInstallLog(3, "_VinylBBFWReaderCB", "Failed copying %@ %d", theString, v6);
    goto LABEL_15;
  }

  CFDictionarySetValue(*(a1 + 8), theString, value);
  AMAuthInstallLog(3, "_VinylBBFWReaderCB", "Vinyl copied %@", theString);
  v7 = 1;
LABEL_10:
  SafeRelease(value);
  return v7;
}

uint64_t AMAuthInstallBundleCopyPublishedVariantsArray(const __CFAllocator *a1, const void *a2)
{
  v5 = 0;
  v2 = AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, @"BuildManifest.plist", 0, &v5);
  if (!v2)
  {
    AMAuthInstallSupportCreateDictionaryFromFileURL();
  }

  v3 = v2;
  SafeRelease(v5);
  SafeRelease(0);
  return v3;
}

void sub_2984A78B4(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CFDictionaryRef theDict, const void *a12)
{
  if (a1)
  {
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyPublishedVariantsArray", "No build manifest. Checking for a different file.", a4, a5, a6, a7, a8);
    SafeRelease(a12);
    a12 = 0;
    if (!AMAuthInstallPlatformCopyURLWithAppendedComponent(v14, v12, @"BuildManifesto.plist", 0, &a12))
    {
      AMAuthInstallSupportCreateDictionaryFromFileURL();
    }

    JUMPOUT(0x2984A7878);
  }

  Value = CFDictionaryGetValue(theDict, @"BuildIdentities");
  if (Value)
  {
    *v13 = CFRetain(Value);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyPublishedVariantsArray", "the specified restore bundle contains a malformed build manifest");
    AMAuthInstallLog(8, "AMAuthInstallBundleCopyPublishedVariantsArray", "bundle: %@");
  }

  JUMPOUT(0x2984A787CLL);
}

uint64_t _AMAuthInstallIsRecoveryVariant(uint64_t a1, CFStringRef theString1)
{
  v2 = *MEMORY[0x29EDB8EF8];
  if (theString1)
  {
    v3 = *(a1 + 496);
    if (v3)
    {
      if (CFStringCompare(theString1, v3, 0) == kCFCompareEqualTo)
      {
        return *MEMORY[0x29EDB8F00];
      }
    }
  }

  return v2;
}

const __CFDictionary *_GetRelativePathForEntry(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"Info");
  if (result)
  {

    return CFDictionaryGetValue(result, @"Path");
  }

  return result;
}

void _AMAuthInstallBundleNormalizeOverridePaths(const void *a1, const __CFString *a2, CFMutableDictionaryRef *a3)
{
  v5 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(*a3, a1, v5);

    CFRelease(v6);
  }
}

void _AMAuthInstallBundleNormalizeOverrideURLs(const void *a1, CFURLRef anURL, CFMutableDictionaryRef *a3)
{
  v5 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(*a3, a1, v5);

    CFRelease(v6);
  }
}

uint64_t _AMAuthInstallBundlePopulatePersonalizedBundle(_BYTE *a1, const __CFURL *a2, const __CFURL *a3, int a4, const __CFDictionary *a5, CFURLRef a6, CFDictionaryRef theDict, const __CFArray *a8, CFArrayRef theArray, CFArrayRef a10, CFBooleanRef BOOLean)
{
  v11 = 0;
  context = 0;
  v207 = 0;
  v204 = 0;
  v205 = 0;
  Code = 1;
  if (!a1 || !a2 || !a3 || !a5)
  {
    goto LABEL_251;
  }

  v13 = theDict;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!theDict)
  {
    goto LABEL_200;
  }

  v20 = CFDictionaryGetValue(theDict, @"CumulativeResponse");
  if (v20)
  {
    v21 = v20;
    v210[0] = 0;
    if (a6)
    {
      CFGetAllocator(a1);
      MergedDictionary = AMSupportCreateMergedDictionary();
      if (MergedDictionary)
      {
        Code = MergedDictionary;
        AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "could not create merged response dictionary");
        v11 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        goto LABEL_200;
      }

      CFDictionarySetValue(v13, @"CumulativeResponse", v210[0]);
      a6 = v210[0];
      SafeRelease(v210[0]);
      AMAuthInstallLog(7, "_AMAuthInstallBundlePopulatePersonalizedBundle", "created merged response dictionary");
    }

    else
    {
      AMAuthInstallLog(7, "_AMAuthInstallBundlePopulatePersonalizedBundle", "replaced NULL response dictionary with cumulative response");
      a6 = v21;
    }
  }

  else if (a1[435])
  {
    CFDictionarySetValue(v13, @"CumulativeResponse", a6);
    AMAuthInstallLog(7, "_AMAuthInstallBundlePopulatePersonalizedBundle", "caching response dictionary on skipped install");
  }

  if (CFBooleanGetValue(BOOLean))
  {
    v13 = CFDictionaryGetValue(v13, @"RecoveryOS");
    if (!v13)
    {
      v11 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      Code = 8;
      goto LABEL_200;
    }
  }

  v23 = CFDictionaryGetValue(v13, @"Personalized");
  v24 = CFDictionaryGetValue(v13, @"Manifest");
  v25 = CFDictionaryGetValue(v13, @"Linked");
  v26 = CFDictionaryGetValue(v13, @"Alignment");
  v11 = 0;
  Code = 8;
  v189 = v23;
  if (!v23 || !v24)
  {
LABEL_251:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_200;
  }

  v196 = v24;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!v25)
  {
    goto LABEL_200;
  }

  v188 = v26;
  v202 = CFDictionaryGetValue(a5, @"Manifest");
  if (!v202)
  {
    _AMAuthInstallBundlePopulatePersonalizedBundle_cold_17();
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    Code = 7;
    goto LABEL_200;
  }

  v187 = v13;
  v203 = a1;
  v15 = 0;
  v192 = v25;
  v193 = a8;
  theDicta = a6;
  v16 = 0;
  if (a8 && a6)
  {
    if (!a1[435])
    {
      Count = CFArrayGetCount(a8);
      if (Count >= 1)
      {
        v61 = Count;
        v16 = 0;
        v15 = 0;
        v62 = 0;
        v63 = *MEMORY[0x29EDB8EF8];
        v64 = *MEMORY[0x29EDB8F00];
        allocator = *MEMORY[0x29EDB8ED8];
        v184 = @"Blob";
        key = @"UniqueBuildID";
        v186 = @"ProductMarketingVersion";
        v195 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a8, v62);
          if (!ValueAtIndex)
          {
            _AMAuthInstallBundlePopulatePersonalizedBundle_cold_16();
          }

          v66 = ValueAtIndex;
          if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
          {
            v67 = v63;
          }

          else
          {
            v67 = v64;
          }

          v68 = CFBooleanGetValue(v67);
          v69 = CFBooleanGetValue(BOOLean);
          if (v68)
          {
            if (!v69)
            {
              goto LABEL_113;
            }

            SafeRelease(v16);
            v70 = CFGetAllocator(v203);
            v66 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v70, v66);
            v16 = v66;
          }

          else if (v69)
          {
            goto LABEL_113;
          }

          v71 = CFDictionaryGetValue(v202, v66);
          if (v71)
          {
            v72 = v71;
            if (CFStringCompare(v66, @"BasebandFirmware", 0) == kCFCompareEqualTo)
            {
              v81 = v203[6];
              if (v81 && v81[20])
              {
                v82 = CFDictionaryGetValue(a5, key);
                if (v82)
                {
                  v83 = v82;
                  v84 = CFGetAllocator(v203);
                  Mutable = CFDictionaryCreateMutable(v84, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  v15 = Mutable;
                  if (!Mutable)
                  {
                    goto LABEL_259;
                  }

                  CFDictionarySetValue(Mutable, key, v83);
                }

                v86 = v203[2];
                if (v86[17] || v86[18])
                {
                  v87 = CFDictionaryGetValue(a5, v186);
                  if (v87)
                  {
                    v88 = v87;
                    if (!v15)
                    {
                      v89 = CFGetAllocator(v203);
                      v15 = CFDictionaryCreateMutable(v89, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                      if (!v15)
                      {
LABEL_259:
                        v11 = 0;
                        v14 = 0;
                        goto LABEL_260;
                      }
                    }

                    CFDictionarySetValue(v15, v186, v88);
                  }
                }
              }

              Code = _AMAuthInstallBundleInstallPersonalizedBasebandFirmware(v203, v72, theDicta, v202, a2, a3, v189, v15);
              a8 = v193;
              if (Code)
              {
LABEL_210:
                LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(v203, Code);
                AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install %@ in personalized bundle: %@", v66, LocalizedStatusString);
                v11 = 0;
                v14 = 0;
                goto LABEL_200;
              }

              goto LABEL_112;
            }

            v209 = 0;
            v210[0] = 0;
            if (!v66)
            {
              v80 = 0;
              Code = 1;
              goto LABEL_96;
            }

            v73 = CFGetAllocator(v203);
            v173 = @"Personalize";
            ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v73, v72, @"%@.%@", v74, v75, v76, v77, v78);
            if (ValueForKeyWithFormat && !CFBooleanGetValue(ValueForKeyWithFormat))
            {
              v172 = v66;
              AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ does not require personalization; skipping it");
              if (CFDictionaryContainsKey(theDicta, v66))
              {
                CFDictionarySetValue(v196, v66, v72);
              }

              v80 = 0;
              Code = 0;
LABEL_96:
              a8 = v193;
LABEL_97:
              SafeRelease(v210[0]);
              SafeRelease(v80);
              SafeRelease(v209);
              SafeRelease(0);
              SafeRelease(0);
              if (Code)
              {
                goto LABEL_210;
              }

LABEL_112:
              v61 = v195;
              goto LABEL_113;
            }

            v90 = CFBooleanGetValue(BOOLean);
            _AMAuthInstallBundleCopyEntryURLs(v203, v66, v72, a2, a3, 1, v90, &v209, @"Info", @"Personalize", v174, v175, pathComponent, v177, value, v179, v180, v181, theString, allocator, v184, key, v186, v187, v188, v189, v190, v192);
            if (v91)
            {
              Code = v91;
              v172 = v66;
              AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "failed to copy bundle URLs for %@");
              v80 = 0;
              goto LABEL_96;
            }

            v190 = v15;
            v92 = CFDictionaryGetValue(v209, @"SourceURL");
            v93 = CFDictionaryGetValue(v209, @"DestURL");
            v94 = CFDictionaryGetValue(v209, @"RelativeSrcPath");
            v95 = CFDictionaryGetValue(v209, @"RelativeDestPath");
            v181 = v92;
            if (v92 || v93 || v94 || v95)
            {
              theString = v95;
              if (CFDictionaryContainsKey(v196, v66))
              {
                v172 = v66;
                AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ has been previously personalized; skipping it");
                v80 = 0;
                goto LABEL_123;
              }

              v179 = v94;
              v180 = v93;
              DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(v93);
              if (DirectoryForURL)
              {
                Code = DirectoryForURL;
                _AMAuthInstallBundlePopulatePersonalizedBundle_cold_1(v203, DirectoryForURL);
                v80 = 0;
                goto LABEL_124;
              }

              v97 = CFGetAllocator(v203);
              Code = 2;
              DeepCopy = CFPropertyListCreateDeepCopy(v97, v72, 2uLL);
              v80 = DeepCopy;
              if (!DeepCopy)
              {
LABEL_124:
                v15 = v190;
                goto LABEL_96;
              }

              v99 = CFDictionaryGetValue(DeepCopy, @"Info");
              if (v99)
              {
                v100 = v99;
                v101 = CFDictionaryGetValue(v99, @"Path");
                if (v101 && CFDictionaryContainsKey(v196, v101))
                {
                  v172 = v66;
                  v173 = v101;
                  AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ has been previously personalized as part of %@; skipping it");
LABEL_123:
                  Code = 0;
                  goto LABEL_124;
                }

                pathComponent = v101;
                value = v80;
                HIDWORD(v177) = _CFDictionaryGetBoolean(v100, @"IsFTAB", 0);
                v102 = CFGetAllocator(v203);
                PrependedFilePath = AMAuthInstallSupportCreatePrependedFilePath(v102, v66, theString, v210);
                if (PrependedFilePath)
                {
                  Code = PrependedFilePath;
                  _AMAuthInstallBundlePopulatePersonalizedBundle_cold_2();
                  v15 = v190;
                  goto LABEL_166;
                }

                CFDictionarySetValue(v100, @"PersonalizedPath", v210[0]);
                v104 = CFDictionaryGetValue(theDicta, v66);
                if (v104)
                {
                  v105 = v104;
                  TypeID = CFDictionaryGetTypeID();
                  if (TypeID == CFGetTypeID(v105))
                  {
                    if (CFDictionaryContainsKey(v105, v184))
                    {
                      Code = AMAuthInstallApImg3PersonalizeWithEntryName(v203, v181, v180, v66, v72, theDicta);
                      v15 = v190;
                      if (Code)
                      {
                        _AMAuthInstallBundlePopulatePersonalizedBundle_cold_3(v203, Code);
LABEL_166:
                        a8 = v193;
                        v80 = value;
                        goto LABEL_97;
                      }

LABEL_148:
                      v80 = value;
                      CFDictionarySetValue(v196, v66, value);
                      _CFArrayRemoveValue(v25, v179);
                      goto LABEL_96;
                    }
                  }
                }

                v107 = v100;
                v15 = v190;
                if (AMAuthInstallApIsImg4(v203) && CFDictionaryGetValue(theDicta, v203[11]) && HIDWORD(v177))
                {
                  v108 = CFURLCreateCopyAppendingPathComponent(allocator, a3, pathComponent, 0);
                  a8 = v193;
                  v80 = value;
                  if (v108)
                  {
                    Code = AMAuthInstallApFtabStitchTicketData(v203, v181, v108, theDicta);
                    if (Code)
                    {
                      _AMAuthInstallBundlePopulatePersonalizedBundle_cold_4();
                    }

                    else
                    {
                      CFDictionarySetValue(v196, pathComponent, value);
                      _CFArrayRemoveValue(v25, v179);
                    }
                  }

                  else
                  {
                    _AMAuthInstallBundlePopulatePersonalizedBundle_cold_5();
                    Code = 2;
                  }

                  goto LABEL_97;
                }

                a8 = v193;
                if (AMAuthInstallApIsImg4(v203) && CFDictionaryGetValue(theDicta, v203[11]) && !HIDWORD(v177))
                {
                  v109 = CFDictionaryGetValue(v107, @"Img4PayloadType");
                  v110 = AMAuthInstallApImg4StitchTicketData(v203, v109, v181, v180, theDicta);
                  if (v110)
                  {
                    Code = v110;
                    _AMAuthInstallBundlePopulatePersonalizedBundle_cold_6();
                    goto LABEL_166;
                  }

                  Code = AMAuthInstallApImg4StitchRestoreInfoWithAMAI(v66, v180, theDicta, 0, v203);
                  if (Code)
                  {
                    v172 = v180;
                    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "failed to stitch restore info to %@");
                    goto LABEL_166;
                  }

                  goto LABEL_148;
                }

                v208 = 0;
                v111 = AMAuthInstallSupportFileURLExists(v180, &v208);
                if (v111)
                {
                  Code = v111;
                }

                else
                {
                  v80 = value;
                  if (v208)
                  {
LABEL_151:
                    Code = 0;
                    goto LABEL_97;
                  }

                  v112 = AMAuthInstallBundleInstallFile(v203, v180, v181);
                  if (!v112)
                  {
                    CFArrayAppendValue(v25, v179);
                    goto LABEL_151;
                  }

                  Code = v112;
                  _AMAuthInstallBundlePopulatePersonalizedBundle_cold_7(v203, v112);
                }

                v15 = v190;
                v25 = v192;
                goto LABEL_166;
              }

              v172 = "_AMAuthInstallBundleInstallPersonalizedEntry";
              v173 = v66;
              AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "%s: no personalized entry for %@");
            }

            else
            {
              v80 = 0;
            }

            Code = 8;
            goto LABEL_124;
          }

          v172 = v66;
          AMAuthInstallLog(6, "_AMAuthInstallBundlePopulatePersonalizedBundle", "no entry in manifest found for %@");
          a8 = v193;
LABEL_113:
          if (v61 == ++v62)
          {
            goto LABEL_23;
          }
        }
      }
    }

    v15 = 0;
    v16 = 0;
  }

LABEL_23:
  v191 = v15;
  if (!theArray)
  {
    v27 = v203;
    goto LABEL_50;
  }

  v27 = v203;
  if (*(v203 + 435) || (v28 = CFArrayGetCount(theArray), v28 < 1))
  {
LABEL_50:
    v212.length = CFArrayGetCount(v193);
    v212.location = 0;
    if (CFArrayContainsValue(v193, v212, @"BasebandFirmware") || *(v27 + 435))
    {
      v11 = 0;
      v14 = 0;
      goto LABEL_53;
    }

    LOBYTE(v210[0]) = 0;
    v125 = CFGetAllocator(v27);
    v14 = AMAuthInstallSupportGetValueForKeyWithFormat(v125, a5, @"%@.%@.%@.%@", v126, v127, v128, v129, v130, @"Manifest", @"BasebandFirmware", @"Info", @"Path");
    if (!v14)
    {
      v11 = 0;
      goto LABEL_53;
    }

    v131 = CFDictionaryGetValue(*v27[16], @"BasebandFirmware");
    if (v131)
    {
      v11 = CFRetain(v131);
    }

    else
    {
      v135 = CFGetAllocator(v27);
      v11 = CFURLCreateCopyAppendingPathComponent(v135, a2, v14, 0);
      if (!v11)
      {
        v14 = 0;
        goto LABEL_265;
      }
    }

    v136 = CFGetAllocator(v27);
    v137 = AMAuthInstallSupportCreatePrependedFilePath(v136, @"BasebandFirmware", v14, &v207);
    if (v137)
    {
      Code = v137;
      goto LABEL_198;
    }

    v138 = CFGetAllocator(v27);
    v139 = CFURLCreateCopyAppendingPathComponent(v138, a3, v207, 0);
    v14 = v139;
    if (v139)
    {
      SoftLink = AMAuthInstallSupportFileURLExists(v139, v210);
      if (SoftLink || !LOBYTE(v210[0]) && ((SoftLink = AMAuthInstallSupportFileURLExists(v11, v210), SoftLink) || LOBYTE(v210[0]) && (SoftLink = AMAuthInstallPlatformCreateSoftLink(v14, v11), SoftLink)))
      {
        Code = SoftLink;
        goto LABEL_199;
      }

LABEL_53:
      if (a10)
      {
        v48 = CFArrayGetCount(a10);
        if (v48 >= 1)
        {
          v49 = v48;
          v50 = 0;
          while (1)
          {
            v51 = CFArrayGetValueAtIndex(a10, v50);
            if (!v51)
            {
              _AMAuthInstallBundlePopulatePersonalizedBundle_cold_11();
            }

            v52 = v51;
            v213.length = CFArrayGetCount(v25);
            v213.location = 0;
            if (!CFArrayContainsValue(v25, v213, v52))
            {
              v209 = 0;
              v210[0] = 0;
              v214.length = CFArrayGetCount(v25);
              v214.location = 0;
              if (CFArrayContainsValue(v25, v214, v52))
              {
                Code = 0;
              }

              else
              {
                v53 = CFGetAllocator(v203);
                v54 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v53, a2, v52, 0, v210);
                if (v54 || (v55 = CFGetAllocator(v203), v54 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v55, a3, v52, 0, &v209), v54) || (v54 = AMAuthInstallPlatformMakeDirectoryForURL(v209), v54))
                {
                  Code = v54;
                }

                else
                {
                  Code = AMAuthInstallBundleInstallFile(v203, v209, v210[0]);
                  if (!Code)
                  {
                    CFArrayAppendValue(v25, v52);
                  }
                }
              }

              SafeRelease(v210[0]);
              SafeRelease(v209);
              if (Code)
              {
                break;
              }
            }

            if (v49 == ++v50)
            {
              goto LABEL_69;
            }
          }

          AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install link in personalized bundle: %@", v52);
          goto LABEL_199;
        }
      }

LABEL_69:
      v15 = v191;
      v56 = v203;
      if (theDicta && !*(v203 + 32))
      {
        IsImg4 = AMAuthInstallApIsImg4(v203);
        v58 = IsImg4 ? @"amai/apimg4ticket.der" : @"amai/apticket.der";
        if (IsImg4)
        {
          v59 = *(v203[2] + 132) ? kAMAuthInstallTagX86Img4Ticket : (v203 + 11);
        }

        else
        {
          v59 = kAMAuthInstallTagApTicket;
        }

        v113 = *v59;
        v215.length = CFArrayGetCount(v189);
        v215.location = 0;
        if (!CFArrayContainsValue(v189, v215, v58))
        {
          v121 = CFDictionaryGetValue(theDicta, v113);
          if (v121)
          {
            v122 = v121;
            v123 = CFGetAllocator(v203);
            v124 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v123, a3, v58, 0, &v204);
            if (v124)
            {
              Code = v124;
              v115 = "failed to create an AP ticket URL";
              goto LABEL_186;
            }

            v132 = CFGetAllocator(v203);
            v133 = AMAuthInstallSupportWriteDataToFileURL(v132, v122, v204, 1);
            if (v133)
            {
              Code = v133;
              AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to write the AP ticket");
              AMAuthInstallLog(8, "_AMAuthInstallBundlePopulatePersonalizedBundle", "%@", v204);
              goto LABEL_200;
            }

            CFArrayAppendValue(v189, v58);
          }
        }
      }

      if (!(v203[56])(v203, a3, theDicta, &v205))
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to write updater manifests: %@", v205);
        if (v205)
        {
          Code = CFErrorGetCode(v205);
        }

        else
        {
          Code = 4;
        }

        goto LABEL_200;
      }

      if (v188)
      {
        goto LABEL_172;
      }

      v210[0] = 0;
      v116 = CFGetAllocator(v203);
      v118 = CFDictionaryCreateMutable(v116, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (!v118)
      {
        v119 = 0;
        v120 = 0;
        Code = 2;
LABEL_181:
        SafeRelease(v118);
        SafeRelease(v120);
        SafeRelease(v210[0]);
        if (Code)
        {
          v172 = AMAuthInstallGetLocalizedStatusString(v203, Code);
          v115 = "_AMAuthInstallCreateAlignmentDictionary failed: %@";
          goto LABEL_186;
        }

        CFDictionarySetValue(v187, @"Alignment", v119);
        CFRelease(v119);
        v56 = v203;
LABEL_172:
        if (CFDictionaryGetCount(*v56[16]) >= 1)
        {
          v114 = CFGetAllocator(v56);
          context = CFDictionaryCreateMutable(v114, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          if (!context)
          {
LABEL_260:
            Code = 2;
            goto LABEL_200;
          }

          CFDictionaryApplyFunction(*v56[16], _AMAuthInstallBundleNormalizeOverrideURLs, &context);
          CFDictionarySetValue(v187, @"Overrides", context);
        }

        Code = AMAuthInstallBundleWriteReceipt(v56, a3, v187, BOOLean);
        if (!Code)
        {
          goto LABEL_200;
        }

        v172 = AMAuthInstallGetLocalizedStatusString(v56, Code);
        v115 = "failed to write receipt: %@";
LABEL_186:
        AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", v115, v172);
        goto LABEL_200;
      }

      RelativePathForManifestEntry = _CreateRelativePathForManifestEntry(v203, v117, a3, v202, @"iBSS");
      if (RelativePathForManifestEntry)
      {
        v144 = RelativePathForManifestEntry;
        v145 = @"RELEASE";
        if (CFStringFind(RelativePathForManifestEntry, @"RELEASE", 0).location != -1 || (v145 = @"DEVELOPMENT", CFStringFind(v144, @"DEVELOPMENT", 0).location != -1) || (v145 = @"DEBUG", CFStringFind(v144, @"DEBUG", 0).location != -1))
        {
          CFDictionarySetValue(v118, @"DFUFileType", v145);
        }

        SafeRelease(v144);
      }

      v146 = _CreateRelativePathForManifestEntry(v203, v143, a3, v202, @"OS");
      if (v146)
      {
        v148 = v146;
        CFDictionarySetValue(v118, @"OS", v146);
        SafeRelease(v148);
      }

      v149 = _CreateRelativePathForManifestEntry(v203, v147, a3, v202, @"RestoreKernelCache");
      if (v149)
      {
        v120 = v149;
        v151 = CFGetAllocator(v203);
        v152 = AMAuthInstallSupportCreatePrependedFilePath(v151, @"RestoreKernelCache", v120, v210);
        if (v152)
        {
          goto LABEL_266;
        }

        if (v210[0])
        {
          CFDictionarySetValue(v118, @"RestoreKernelCache", v210[0]);
          SafeRelease(v210[0]);
          v210[0] = 0;
        }

        SafeRelease(v120);
      }

      v153 = _CreateRelativePathForManifestEntry(v203, v150, a3, v202, @"KernelCache");
      if (v153)
      {
        v120 = v153;
        v155 = CFGetAllocator(v203);
        v152 = AMAuthInstallSupportCreatePrependedFilePath(v155, @"KernelCache", v120, v210);
        if (v152)
        {
          goto LABEL_266;
        }

        if (v210[0])
        {
          CFDictionarySetValue(v118, @"KernelCache", v210[0]);
          SafeRelease(v210[0]);
          v210[0] = 0;
        }

        SafeRelease(v120);
      }

      v156 = _CreateRelativePathForManifestEntry(v203, v154, a3, v202, @"RestoreRamDisk");
      if (v156)
      {
        v158 = v156;
        CFDictionarySetValue(v118, @"RestoreRamDisk", v156);
        SafeRelease(v158);
      }

      v159 = _CreateRelativePathForManifestEntry(v203, v157, a3, v202, @"OSRamdisk");
      if (v159)
      {
        v161 = v159;
        CFDictionarySetValue(v118, @"OSRamdisk", v159);
        SafeRelease(v161);
      }

      v162 = _CreateRelativePathForManifestEntry(v203, v160, a3, v202, @"RestoreDeviceTree");
      if (v162)
      {
        v120 = v162;
        v164 = CFGetAllocator(v203);
        v152 = AMAuthInstallSupportCreatePrependedFilePath(v164, @"RestoreDeviceTree", v120, v210);
        if (v152)
        {
          goto LABEL_266;
        }

        if (v210[0])
        {
          CFDictionarySetValue(v118, @"RestoreDeviceTree", v210[0]);
          CopyByDeletingLastComponent = _AMAuthInstallBundleComponentCreateCopyByDeletingLastComponent(*MEMORY[0x29EDB8ED8], v120);
          if (CopyByDeletingLastComponent)
          {
            v166 = CopyByDeletingLastComponent;
            CFDictionarySetValue(v118, @"AllFlash", CopyByDeletingLastComponent);
            CFRelease(v166);
          }

          SafeRelease(v210[0]);
          v210[0] = 0;
        }

        SafeRelease(v120);
      }

      v167 = _CreateRelativePathForManifestEntry(v203, v163, a3, v202, @"DeviceTree");
      if (!v167)
      {
LABEL_246:
        v170 = _CreateRelativePathForManifestEntry(v203, v168, a3, v202, @"Diags");
        if (v170)
        {
          v171 = v170;
          CFDictionarySetValue(v118, @"Diags", v170);
          SafeRelease(v171);
        }

        v119 = CFRetain(v118);
        v120 = 0;
        Code = 0;
        goto LABEL_181;
      }

      v120 = v167;
      v169 = CFGetAllocator(v203);
      v152 = AMAuthInstallSupportCreatePrependedFilePath(v169, @"DeviceTree", v120, v210);
      if (!v152)
      {
        if (v210[0])
        {
          CFDictionarySetValue(v118, @"DeviceTree", v210[0]);
          SafeRelease(v210[0]);
          v210[0] = 0;
        }

        SafeRelease(v120);
        goto LABEL_246;
      }

LABEL_266:
      Code = v152;
      _AMAuthInstallBundlePopulatePersonalizedBundle_cold_12();
      v119 = 0;
      goto LABEL_181;
    }

LABEL_265:
    Code = 2;
    goto LABEL_199;
  }

  v29 = v28;
  v30 = 0;
  v194 = *MEMORY[0x29EDB8F00];
  v197 = *MEMORY[0x29EDB8EF8];
  while (1)
  {
    v31 = CFArrayGetValueAtIndex(theArray, v30);
    if (!v31)
    {
      _AMAuthInstallBundlePopulatePersonalizedBundle_cold_10();
    }

    v32 = v31;
    v33 = CFStringFind(v31, @"RecoveryOS", 0).location == -1 ? v197 : v194;
    v34 = CFBooleanGetValue(v33);
    v35 = CFBooleanGetValue(BOOLean);
    if (v34)
    {
      break;
    }

    if (!v35)
    {
      goto LABEL_35;
    }

LABEL_44:
    if (v29 == ++v30)
    {
      goto LABEL_50;
    }
  }

  if (!v35)
  {
    goto LABEL_44;
  }

  SafeRelease(v16);
  v36 = CFGetAllocator(v27);
  v16 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v36, v32);
  v32 = v16;
LABEL_35:
  v37 = CFDictionaryGetValue(v202, v32);
  if (!v37)
  {
    v172 = v32;
    AMAuthInstallLog(6, "_AMAuthInstallBundlePopulatePersonalizedBundle", "no entry in manifest found for %@");
    goto LABEL_44;
  }

  v210[0] = 0;
  if (!v32)
  {
    Code = 1;
    goto LABEL_197;
  }

  v38 = v37;
  v39 = CFBooleanGetValue(v33);
  _AMAuthInstallBundleCopyEntryURLs(v27, v32, v38, a2, a3, 0, v39, v210, v172, v173, v174, v175, pathComponent, v177, value, v179, v180, v181, theString, allocator, v184, key, v186, v187, v188, v189, v191, v192);
  if (v40)
  {
    Code = v40;
    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallLinkedEntry", "failed to copy bundle URLs for %@", v32);
    goto LABEL_197;
  }

  v41 = v16;
  v42 = CFDictionaryGetValue(v210[0], @"SourceURL");
  v43 = CFDictionaryGetValue(v210[0], @"DestURL");
  v44 = CFDictionaryGetValue(v210[0], @"RelativeSrcPath");
  v45 = v44;
  if (!v42 && !v43 && !v44)
  {
    Code = 8;
    goto LABEL_256;
  }

  v211.length = CFArrayGetCount(v192);
  v211.location = 0;
  if (CFArrayContainsValue(v192, v211, v45))
  {
LABEL_42:
    SafeRelease(v210[0]);
    v16 = v41;
    v27 = v203;
    v25 = v192;
    goto LABEL_44;
  }

  v46 = AMAuthInstallPlatformMakeDirectoryForURL(v43);
  if (v46)
  {
    Code = v46;
    _AMAuthInstallBundlePopulatePersonalizedBundle_cold_9(v46);
    goto LABEL_256;
  }

  v47 = AMAuthInstallBundleInstallFile(v203, v43, v42);
  if (!v47)
  {
    CFArrayAppendValue(v192, v45);
    goto LABEL_42;
  }

  Code = v47;
  _AMAuthInstallBundlePopulatePersonalizedBundle_cold_8(v47);
LABEL_256:
  v16 = v41;
LABEL_197:
  SafeRelease(v210[0]);
  AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install link for %@ in personalized bundle", v32);
  v11 = 0;
LABEL_198:
  v14 = 0;
LABEL_199:
  v15 = v191;
LABEL_200:
  SafeRelease(v11);
  SafeRelease(v14);
  SafeRelease(v207);
  SafeRelease(context);
  SafeRelease(v205);
  SafeRelease(v204);
  SafeRelease(v15);
  SafeRelease(v16);
  return Code;
}

CFStringRef AMAuthInstallICreateTranslationOfRecoveryEnteryName(const __CFAllocator *a1, CFStringRef theString)
{
  v4 = CFStringFind(theString, @"RecoveryOS", 0);
  if (v4.location == -1)
  {

    return CFStringCreateCopy(a1, theString);
  }

  else
  {
    Length = CFStringGetLength(theString);
    v6.length = Length - CFStringGetLength(@"RecoveryOS");
    v6.location = v4.length;

    return CFStringCreateWithSubstring(a1, theString, v6);
  }
}

uint64_t AMAuthInstallBundleCreatePersonalizedPathWithKey(const void *a1, CFStringRef theString1, const __CFString *a3, const __CFURL **a4)
{
  anURL = 0;
  if (!a1 || !a3 || !a4)
  {
    Copy = 0;
    v14 = 0;
    v11 = 0;
    v15 = 1;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (theString1)
  {
    v7 = CFStringCompare(theString1, @"BasebandFirmware", 0) == kCFCompareEqualTo;
  }

  else
  {
    v7 = 0;
  }

  IsImg4 = AMAuthInstallApIsImg4(a1);
  v9 = CFGetAllocator(a1);
  if (v7 || !IsImg4)
  {
    Copy = CFStringCreateCopy(v9, a3);
    v15 = 0;
    v14 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  Copy = CFURLCreateWithFileSystemPath(v9, a3, kCFURLPOSIXPathStyle, 0);
  v11 = Copy;
  if (!Copy)
  {
    goto LABEL_19;
  }

  v12 = CFGetAllocator(a1);
  v13 = AMAuthInstallApImg4CopyURLAddingExtension(v12, v11, &anURL);
  if (v13)
  {
    v15 = v13;
    AMAuthInstallBundleCreatePersonalizedPathWithKey_cold_1();
    Copy = 0;
    v14 = 0;
    goto LABEL_15;
  }

  Copy = anURL;
  if (!anURL)
  {
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  Copy = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  v14 = Copy;
  if (!Copy)
  {
LABEL_20:
    v15 = 2;
    goto LABEL_15;
  }

  Copy = CFRetain(Copy);
  v15 = 0;
LABEL_15:
  *a4 = Copy;
LABEL_16:
  SafeRelease(v11);
  SafeRelease(0);
  SafeRelease(anURL);
  SafeRelease(v14);
  return v15;
}

const __CFString *_AMAuthInstallBundlePersonalizeApplyPreferencesOverrides(void *a1)
{
  if (AMAuthInstallPreferencesGetBooleanValue(0, @"BAAForceEnable", 0))
  {
    AMAuthInstallEnableManagedRequest(a1, 0);
  }

  result = AMAuthInstallPreferencesGetBooleanValue(0, @"AlternateUpdateBAAForceEnable", 0);
  if (result)
  {

    return AMAuthInstallEnableAlternateUpdateRequest(a1, 0);
  }

  return result;
}

char *_AMAuthInstallBundleCreateDebugDirectory(CFURLRef *a1, const void *a2)
{
  SafeRelease(a1[42]);
  v4 = CFGetAllocator(a1);
  v5 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v4, a2, @"amai/debug", 1u, a1 + 42);
  if (v5)
  {
    v6 = v5;
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v5);
    AMAuthInstallLog(3, "_AMAuthInstallBundleCreateDebugDirectory", "failed to create debug directory within bundle: %@", LocalizedStatusString);
    AMAuthInstallLog(8, "_AMAuthInstallBundleCreateDebugDirectory", "bundle: %@", a2);
    return v6;
  }

  else
  {
    v9 = a1[42];

    return AMAuthInstallPlatformMakeDirectoryForURL(v9);
  }
}

uint64_t _AMRAuthInstallBundleModifyFirmwareEntries(uint64_t a1, CFDictionaryRef theDict, const __CFArray *a3, __CFArray *a4)
{
  BOOLean = *MEMORY[0x29EDB8EF8];
  Value = CFDictionaryGetValue(theDict, @"Info");
  if (Value)
  {
    v7 = CFDictionaryGetValue(Value, @"Variant");
    if (v7)
    {
      v8 = *(a1 + 496);
      if (v8)
      {
        v9 = CFStringCompare(v7, v8, 0);
        v10 = BOOLean;
        if (v9 == kCFCompareEqualTo)
        {
          v10 = *MEMORY[0x29EDB8F00];
        }

        BOOLean = v10;
      }
    }
  }

  v11 = CFDictionaryGetValue(theDict, @"Manifest");
  if (v11)
  {
    v12 = v11;
    Count = CFDictionaryGetCount(v11);
    v14 = malloc(8 * Count);
    v15 = malloc(8 * Count);
    CFDictionaryGetKeysAndValues(v12, v14, v15);
    if (Count >= 1)
    {
      v39 = a4;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      alloc = *MEMORY[0x29EDB8ED8];
      while (1)
      {
        v19 = v14[v17];
        v20 = v15[v17];
        v21 = CFGetTypeID(v20);
        TypeID = CFDictionaryGetTypeID();
        if (v21 != TypeID)
        {
          _AMRAuthInstallBundleModifyFirmwareEntries_cold_1(TypeID);
          v37 = 99;
          goto LABEL_33;
        }

        v23 = CFDictionaryGetValue(v20, @"Info");
        if (v23)
        {
          v24 = v23;
          v25 = _CFDictionaryGetBoolean(v23, @"IsFirmwarePayload", 0);
          v26 = _CFDictionaryGetBoolean(v24, @"IsSecondaryFirmwarePayload", 0) | v25;
          v27 = _CFDictionaryGetBoolean(v24, @"IsFUDFirmware", 0);
          v28 = v26 | v27 | _CFDictionaryGetBoolean(v24, @"IsLoadedByiBoot", 0);
          v29 = _CFDictionaryGetBoolean(v24, @"IsEarlyAccessFirmware", 0);
          v30 = v29 | _CFDictionaryGetBoolean(v24, @"IsiBootEANFirmware", 0);
          v31 = v28 | v30 | _CFDictionaryGetBoolean(v24, @"IsiBootNonEssentialFirmware", 0);
          v32 = *(a1 + 528);
          if (v32)
          {
            v31 |= _CFDictionaryGetBoolean(v32, v19, 0);
          }

          if (v31)
          {
            SafeRelease(v18);
            if (CFBooleanGetValue(BOOLean))
            {
              Copy = CFStringCreateWithFormat(alloc, 0, @"RecoveryOS%@", v19);
            }

            else
            {
              Copy = CFStringCreateCopy(alloc, v19);
            }

            v18 = Copy;
            v44.length = CFArrayGetCount(a3);
            v44.location = 0;
            if (CFArrayContainsValue(a3, v44, v18))
            {
              if (v16)
              {
                goto LABEL_28;
              }
            }

            else
            {
              CFArrayAppendValue(a3, v18);
              if (v16)
              {
                goto LABEL_28;
              }
            }

            v34 = CFDictionaryGetValue(v24, @"Path");
            if (v34)
            {
              CopyByDeletingLastComponent = _AMAuthInstallBundleComponentCreateCopyByDeletingLastComponent(alloc, v34);
              if (!CopyByDeletingLastComponent)
              {
                v16 = 0;
LABEL_35:
                v37 = 2;
                goto LABEL_33;
              }

              v36 = CopyByDeletingLastComponent;
              v16 = CFStringCreateWithFormat(alloc, 0, @"%@/manifest", CopyByDeletingLastComponent);
              CFRelease(v36);
              if (!v16)
              {
                goto LABEL_35;
              }

              if (v39)
              {
                CFArrayAppendValue(v39, v16);
              }
            }

            else
            {
              v16 = 0;
            }
          }
        }

LABEL_28:
        if (Count == ++v17)
        {
          goto LABEL_32;
        }
      }
    }

    v18 = 0;
    v16 = 0;
LABEL_32:
    v37 = 0;
  }

  else
  {
    v18 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v37 = 7;
  }

LABEL_33:
  SafeFree(v14);
  SafeFree(v15);
  SafeRelease(v16);
  SafeRelease(v18);
  return v37;
}

void _CFArrayRemoveValue(const __CFArray *a1, const void *a2)
{
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v6, a2);
  if ((FirstIndexOfValue & 0x8000000000000000) == 0)
  {

    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  }
}

uint64_t AMAuthInstallBundleShouldPersonalizeOSImage(const __CFDictionary *a1, const void *a2, const __CFString *a3, uint64_t a4)
{
  if (!a1)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_6(a4);
    return 0;
  }

  if (!a2)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_5(a4);
    return 0;
  }

  ManifestEntry = AMAuthInstallBundleGetManifestEntry(a1, @"Manifest", a3, a2, a4);
  if (!ManifestEntry)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_4(a4);
    return 0;
  }

  Value = CFDictionaryGetValue(ManifestEntry, @"OS");
  if (!Value)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_3(a4);
    return 0;
  }

  v7 = CFDictionaryGetValue(Value, @"Info");
  if (!v7)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_2(a4);
    return 0;
  }

  v8 = CFDictionaryGetValue(v7, @"Personalize");
  if (!v8)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_1(a4);
    return 0;
  }

  v9 = CFBooleanGetValue(v8);
  v10 = "Yes";
  if (!v9)
  {
    v10 = "No";
  }

  AMAuthInstallLog(6, "AMAuthInstallBundleShouldPersonalizeOSImage", "Personalize OS image = %s", v10);
  return v9;
}

const __CFDictionary *AMAuthInstallBundleGetManifestEntry(const __CFDictionary *a1, const __CFString *a2, const __CFString *a3, const void *a4, uint64_t a5)
{
  ValueForKeyPathInDict = a1;
  *v11 = 0;
  if (!a1)
  {
    AMAuthInstallBundleGetManifestEntry_cold_5(a5);
    goto LABEL_8;
  }

  if (!a2)
  {
    AMAuthInstallBundleGetManifestEntry_cold_4(a5);
LABEL_14:
    ValueForKeyPathInDict = 0;
    goto LABEL_8;
  }

  if (!a3)
  {
    AMAuthInstallBundleGetManifestEntry_cold_3(a5);
    goto LABEL_14;
  }

  if (!a4)
  {
    AMAuthInstallBundleGetManifestEntry_cold_2(a5);
    goto LABEL_14;
  }

  v8 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a4, a3, v11);
  if (v8)
  {
    AMAuthInstallBundleGetManifestEntry_cold_1(v8, a5);
    goto LABEL_14;
  }

  v9 = CFGetAllocator(ValueForKeyPathInDict);
  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v9, *v11, a2);
  if (!ValueForKeyPathInDict)
  {
    AMSupportCreateErrorInternal();
  }

LABEL_8:
  SafeRelease(*v11);
  return ValueForKeyPathInDict;
}

BOOL _AMAuthInstallBundleShouldPersonalizeOS(void *a1, const void *a2, const __CFString *a3, uint64_t a4)
{
  cf = 0;
  if (!a1)
  {
    _AMAuthInstallBundleShouldPersonalizeOS_cold_2(a4);
    return 0;
  }

  if (a2)
  {
    v5 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &cf);
    if (!v5)
    {
      CFGetAllocator(a1);
      ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
      v6 = ValueForKeyPathInDict != 0;
      v8 = "No";
      if (ValueForKeyPathInDict)
      {
        v8 = "Yes";
      }

      AMAuthInstallLog(6, "_AMAuthInstallBundleShouldPersonalizeOS", "Personalize OS = %s", v8);
      goto LABEL_9;
    }

    AMAuthInstallLog(3, "_AMAuthInstallBundleShouldPersonalizeOS", "failed to copy build variant %d", v5);
    AMSupportCreateErrorInternal();
  }

  else
  {
    _AMAuthInstallBundleShouldPersonalizeOS_cold_1(a4);
  }

  v6 = 0;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t _AMAuthInstallBundleLocalPolicyCopyGivenOrDefaultNSIH(const void *a1, const void *a2, CFTypeRef cf, CFTypeRef *a4)
{
  if (!a4)
  {
    return 1;
  }

  if (cf)
  {
    v5 = 0;
    *a4 = CFRetain(cf);
  }

  else
  {
    v8 = CFGetAllocator(a1);
    v14 = 0;
    v15 = 0;
    if (a1 && AMAuthInstallApIsImg4(a1))
    {
      v9 = @"amai/apimg4ticket.der";
    }

    else
    {
      v9 = @"amai/apticket.der";
    }

    v10 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v8, a2, v9, 0, &v14);
    if (v10)
    {
      v5 = v10;
      v12 = 0;
    }

    else
    {
      Digest = AMAuthInstallApCreateDigest(v14, 4096, 384, &v15);
      v12 = Digest;
      if (Digest)
      {
        v5 = 0;
        *a4 = CFRetain(Digest);
      }

      else
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundleLocalPolicyCopyDefaultNSIH", "failed to compute NSIH for %@: %@", v14, v15);
        v5 = 4;
      }
    }

    SafeRelease(v14);
    SafeRelease(v12);
    SafeRelease(v15);
  }

  return v5;
}

uint64_t AMAuthInstallBundleSetPropertiesWithBoardConfig(CFDictionaryRef *a1, uint64_t a2, int a3, const void *a4, int a5, const void *a6, const __CFString *a7)
{
  v7 = 0;
  theArray = 0;
  v8 = 1;
  if (a6 && a7)
  {
    v16 = AMAuthInstallBundleCopyPublishedVariantsArray(*MEMORY[0x29EDB8ED8], a6);
    if (v16)
    {
      v8 = v16;
      LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v16);
      AMAuthInstallLog(3, "AMAuthInstallBundleSetPropertiesWithBoardConfig", "failed to find published variants in bundle: %@", LocalizedStatusString);
      AMAuthInstallLog(8, "AMAuthInstallBundleSetPropertiesWithBoardConfig", "bundle: %@", a6);
LABEL_5:
      v7 = 0;
    }

    else
    {
      v39 = a1;
      v40 = a2;
      v18 = theArray;
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v20 = Count;
        v37 = a3;
        v38 = a5;
        cf = a4;
        v21 = 0;
        v8 = 8;
        do
        {
          *v41 = 0;
          v42 = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v18, v21);
          if (!ValueAtIndex)
          {
            AMAuthInstallBundleSetPropertiesWithBoardConfig_cold_2();
          }

          v23 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, @"Info");
          if (Value)
          {
            v25 = CFDictionaryGetValue(Value, @"DeviceClass");
            if (v25)
            {
              if (CFStringCompare(a7, v25, 1uLL) == kCFCompareEqualTo)
              {
                v26 = CFDictionaryGetValue(v23, @"ApBoardID");
                if (v26 && (v27 = v26, (v28 = CFDictionaryGetValue(v23, @"ApChipID")) != 0))
                {
                  v29 = v28;
                  v30 = CFDictionaryGetValue(v23, @"BbChipID");
                  v31 = CFDictionaryGetValue(v23, @"ApSecurityDomain");
                  if (_CFStringToUInt32(v27, &v42 + 1) && _CFStringToUInt32(v29, &v42) && (!v30 || _CFStringToUInt32(v30, &v41[1])) && (!v31 || _CFStringToUInt32(v31, v41)))
                  {
                    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                    v7 = Mutable;
                    if (Mutable)
                    {
                      _CFDictionarySetInteger64(Mutable, @"ECID", v40);
                      _CFDictionarySetInteger32(v7, @"ApChipID", v42);
                      _CFDictionarySetInteger32(v7, @"ApBoardID", SHIDWORD(v42));
                      if (v31)
                      {
                        v34 = v41[0];
                      }

                      else
                      {
                        v34 = 1;
                      }

                      _CFDictionarySetInteger32(v7, @"ApSecurityDomain", v34);
                      _CFDictionarySetBoolean(v7, @"ApProductionMode", v37);
                      v35 = AMAuthInstallApSetParameters(v39, v7);
                      if (v35)
                      {
                        v8 = v35;
                        AMAuthInstallBundleSetPropertiesWithBoardConfig_cold_1();
                      }

                      else
                      {
                        if (cf)
                        {
                          if (v30)
                          {
                            if (AMAuthInstallBasebandSetFusings(v39, v41[1], v38, cf))
                            {
                              AMAuthInstallLog(5, "AMAuthInstallBundleSetPropertiesWithBoardConfig", "baseband apparently doesn't support personalization");
                            }
                          }

                          else
                          {
                            AMAuthInstallLog(5, "AMAuthInstallBundleSetPropertiesWithBoardConfig", "no baseband chipid found in identity, but baseband returned snum. Can't preflight baseband personalization.");
                          }
                        }

                        v8 = 0;
                      }
                    }

                    else
                    {
                      v8 = 2;
                    }

                    goto LABEL_25;
                  }

                  v8 = 3;
                }

                else
                {
                  v8 = 7;
                }
              }
            }
          }

          ++v21;
        }

        while (v20 != v21);
        if (v8 != 8)
        {
          goto LABEL_5;
        }
      }

      AMAuthInstallLog(3, "AMAuthInstallBundleSetPropertiesWithBoardConfig", "failed to find any usable references to %@ in build manifest", a7);
      v7 = 0;
      v8 = 8;
    }
  }

LABEL_25:
  SafeRelease(v7);
  SafeRelease(theArray);
  return v8;
}

uint64_t AMAuthInstallBundleSetVariantSpecifiesRestoreBehavior(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 56) = a2;
  return result;
}

__CFString *AMAuthInstallBundleGetApTicketComponentPath(uint64_t a1)
{
  if (a1 && AMAuthInstallApIsImg4(a1))
  {
    return @"amai/apimg4ticket.der";
  }

  else
  {
    return @"amai/apticket.der";
  }
}

const __CFString *_AMAuthInstallBundleImageHasBuildString(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringCompare(result, @"iBSS", 0) && CFStringCompare(v1, @"iBEC", 0))
    {
      return (CFStringCompare(v1, @"LLB", 0) == kCFCompareEqualTo);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t _AMAuthInstallBundleGetDefaultResult(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    result = *MEMORY[0x29EDB8EF8];
    if (*MEMORY[0x29EDB8EF8] != a1)
    {
      return result;
    }

    goto LABEL_13;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    if (CFStringCompare(a1, &stru_2A1EE9D10, 0) == kCFCompareEqualTo)
    {
LABEL_13:
      v7 = MEMORY[0x29EDB8F00];
      return *v7;
    }
  }

  else
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      if (!valuePtr)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = CFGetTypeID(a1);
      if (v6 == CFDataGetTypeID() && !CFDataGetLength(a1))
      {
        goto LABEL_13;
      }
    }
  }

  v7 = MEMORY[0x29EDB8EF8];
  return *v7;
}

void _AMAuthInstallBundleCopyFirmwareData(const void *a1, const void *a2, __CFDictionary *a3)
{
  value = 0;
  if (AMAuthInstallSupportCreateDataFromMappedFileURL(*MEMORY[0x29EDB8ED8], &value, a2))
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleCopyFirmwareData", "failed to create data for %@", a1);
  }

  else
  {
    CFDictionarySetValue(a3, a1, value);
    SafeRelease(value);
  }
}

CFURLRef AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity(CFDictionaryRef **a1, const __CFURL *a2, const __CFDictionary *a3, const __CFString *a4, CFBooleanRef BOOLean, uint64_t a6)
{
  if (!a1)
  {
    AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_6(a6);
LABEL_25:
    v15 = 0;
    v8 = 0;
    goto LABEL_26;
  }

  if (!a3)
  {
    AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_5(a6);
    goto LABEL_25;
  }

  v8 = a4;
  if (!a4)
  {
    AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_4(a6);
    v15 = 0;
LABEL_26:
    v12 = 0;
    goto LABEL_18;
  }

  if (!a2)
  {
    AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_3(a6);
    goto LABEL_25;
  }

  if (!CFBooleanGetValue(BOOLean) || CFStringHasPrefix(v8, @"RecoveryOS") || (v12 = CFStringCreateWithFormat(0, 0, @"%@%@", @"RecoveryOS", v8)) == 0)
  {
    CFRetain(v8);
    v12 = v8;
  }

  if (BOOLean)
  {
    Value = CFBooleanGetValue(BOOLean);
  }

  else
  {
    Value = 0;
  }

  AMAuthInstallLog(6, "AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity", "%s: isRecovery = %d, entry = %@", "AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity", Value, v12);
  v14 = CFDictionaryGetValue(*a1[16], v12);
  if (!v14)
  {
    if (CFBooleanGetValue(BOOLean))
    {
      CFRelease(v12);
      v16 = CFGetAllocator(a1);
      v12 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v16, v8);
    }

    v17 = CFGetAllocator(a1);
    AMAuthInstallSupportGetValueForKeyPathInDict(v17, a3, v12);
    v18 = CFGetAllocator(a1);
    v8 = CFStringCreateWithFormat(v18, 0, @"%@.%@.%@.%@", @"Manifest", v12, @"Info", @"Path");
    if (v8)
    {
      v19 = CFGetAllocator(a1);
      ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v19, a3, v8);
      if (ValueForKeyPathInDict)
      {
        v21 = ValueForKeyPathInDict;
        v22 = CFGetAllocator(a1);
        v15 = CFURLCreateCopyAppendingPathComponent(v22, a2, v21, 0);
        goto LABEL_18;
      }

      AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_1(a6);
    }

    else
    {
      AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_2(a6);
    }

    v15 = 0;
    goto LABEL_18;
  }

  v15 = v14;
  CFRetain(v14);
  AMAuthInstallLog(8, "AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity", "using override: %@ = %@", v12, v15);
  v8 = 0;
LABEL_18:
  SafeRelease(v8);
  SafeRelease(v12);
  return v15;
}

uint64_t AMAuthInstallBundleAppendRecoveryOSiBootFirmwareEntriesToAssetArray(const __CFDictionary *a1, const __CFArray *a2)
{
  if (a1)
  {
    Count = CFDictionaryGetCount(a1);
    v5 = malloc(8 * Count);
    v6 = malloc(8 * Count);
    CFDictionaryGetKeysAndValues(a1, v5, v6);
    if (Count < 1)
    {
LABEL_11:
      v14 = 0;
    }

    else
    {
      v7 = 0;
      alloc = *MEMORY[0x29EDB8ED8];
      while (1)
      {
        v8 = v5[v7];
        v9 = v6[v7];
        v10 = CFGetTypeID(v9);
        TypeID = CFDictionaryGetTypeID();
        if (v10 != TypeID)
        {
          break;
        }

        Value = CFDictionaryGetValue(v9, @"Info");
        if (Value && _CFDictionaryGetBoolean(Value, @"IsLoadedByiBoot", 0))
        {
          v13 = CFStringCreateWithFormat(alloc, 0, @"RecoveryOS%@", v8);
          AMAuthInstallLog(6, "AMAuthInstallBundleAppendRecoveryOSiBootFirmwareEntriesToAssetArray", "Found %@: %@", @"IsLoadedByiBoot", v8);
          v17.length = CFArrayGetCount(a2);
          v17.location = 0;
          if (!CFArrayContainsValue(a2, v17, v13))
          {
            CFArrayAppendValue(a2, v13);
          }

          CFRelease(v13);
        }

        if (Count == ++v7)
        {
          goto LABEL_11;
        }
      }

      AMAuthInstallBundleAppendRecoveryOSiBootFirmwareEntriesToAssetArray_cold_1(TypeID);
      v14 = 99;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v14 = 7;
  }

  SafeFree(v5);
  SafeFree(v6);
  SafeRelease(0);
  return v14;
}

CFStringRef _AMAuthInstallBundleComponentCreateCopyByDeletingLastComponent(const __CFAllocator *a1, CFStringRef theString)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!CFStringGetCString(theString, buffer, 256, 0x8000100u))
  {
    return 0;
  }

  v3 = strlen(buffer);
  if (v3)
  {
    do
    {
      v4 = v3 - 1;
      v5 = buffer[v3 - 1] == 47 || v3 == 1;
      --v3;
    }

    while (!v5);
  }

  else
  {
    v4 = 0;
  }

  buffer[v4] = 0;
  return CFStringCreateWithCString(a1, buffer, 0x8000100u);
}

uint64_t _AMAuthInstallBundlePopulateManifestProperties(__CFData *a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  v56 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = *(a1 + 2);
    if (v4)
    {
      if (theDict)
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v55 = 0;
        v39 = 0u;
        v38 = 0u;
        v37 = 0u;
        v36 = 0u;
        v35 = 0u;
        v34 = 0u;
        v33 = 0u;
        v32 = 0u;
        v31 = 0u;
        v30 = 0u;
        v29 = 0u;
        v28 = 0u;
        v27 = 0u;
        v26 = 0u;
        v25 = 0u;
        v24 = 0u;
        v23 = @"UniqueBuildID";
        if (*(v4 + 136) == 0)
        {
          v22 = 1;
        }

        else
        {
          *&v24 = @"ProductMarketingVersion";
          v22 = 2;
        }

        v7 = &v23;
        *(&v23 + v22) = @"Ap,InternalUseOnlyUnit";
        *(&v23 + v22 + 1) = @"Ap,EngineeringUseOnlyUnit";
        *(&v23 + v22 + 2) = @"Ap,InternalUseOnlySW";
        *(&v23 + v22 + 3) = @"Ap,RestoreSecurityOverrides0";
        *(&v23 + (v22 | 4)) = @"Ap,RestoreSecurityOverrides1";
        *(&v23 + v22 + 5) = @"Ap,RestoreSecurityOverrides2";
        *(&v23 + v22 + 6) = @"Ap,RestoreSecurityOverrides3";
        *(&v23 + v22 + 7) = @"Ap,OSLongVersion";
        *(&v23 + (v22 | 8)) = @"x86,OSLongVersion";
        *(&v23 + v22 + 9) = @"PearlCertificationRootPub";
        *(&v23 + v22 + 10) = @"Ap,OSEnvironment";
        *(&v23 + v22 + 11) = @"AllowNeRDBoot";
        *(&v23 + v22 + 13) = @"Ap,CurrentOSSecurityVersion";
        *(&v23 + v22 + 14) = @"Ap,MinimumOSSecurityVersion";
        *(&v23 + v22 + 15) = @"Ap,EphemeralDataMode";
        *(&v23 + (v22 | 0x10)) = @"Ap,EnableGroundhog";
        *(&v23 + v22 + 17) = @"Ap,TargetType";
        *(&v23 + v22 + 18) = @"Ap,ProductType";
        *(&v23 + v22 + 19) = @"Ap,SoftwareUpdateDeviceID";
        *(&v23 + (v22 | 0x14)) = @"Ap,SDKPlatform";
        *(&v23 + v22 + 21) = @"Ap,Target";
        *(&v23 + v22 + 22) = @"Ap,OSReleaseType";
        *(&v23 + v22 + 23) = @"Ap,UniqueTagList";
        *(&v23 + (v22 | 0x18)) = @"Ap,ProductMarketingVersion";
        v8 = v22 + 25;
        *(&v23 + (v22 | 0xC)) = @"NeRDEpoch";
        do
        {
          v9 = *v7;
          Value = CFDictionaryGetValue(theDict, *v7);
          if (Value)
          {
            CFDictionaryAddValue(a3, v9, Value);
            AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Copying manifest property %@ into request", v9);
          }

          ++v7;
          --v8;
        }

        while (v8);
        v11 = CFDictionaryGetValue(theDict, @"Info");
        if (_CFDictionaryGetBoolean(v11, @"RequiresUIDMode", 0))
        {
          if (*(*(a1 + 2) + 184))
          {
            v12 = *(*(a1 + 2) + 184);
          }

          else
          {
            v12 = *MEMORY[0x29EDB8EF8];
          }

          CFDictionarySetValue(a3, @"UID_MODE", v12);
        }

        v13 = CFDictionaryGetValue(v11, @"RequestManifestProperties");
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFArrayGetTypeID() && CFArrayGetCount(v14) >= 1)
          {
            v16 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, v16);
              v18 = CFDictionaryGetValue(theDict, ValueAtIndex);
              if (v18 || (v18 = CFDictionaryGetValue(v11, ValueAtIndex)) != 0)
              {
                CFDictionaryAddValue(a3, ValueAtIndex, v18);
                AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Copying manifest property %@ into request. (Via BuildManifest)", ValueAtIndex);
              }

              ++v16;
            }

            while (CFArrayGetCount(v14) > v16);
          }
        }

        if (!CFDictionaryContainsKey(theDict, @"NeRDEpoch"))
        {
          goto LABEL_27;
        }

        v19 = CFGetAllocator(a1);
        Mutable = CFDataCreateMutable(v19, 0);
        if (Mutable)
        {
          CFDictionarySetValue(a3, @"PermitNeRDPivot", Mutable);
LABEL_27:
          AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Finished copying manifest entitlements.");
          goto LABEL_28;
        }

        _AMAuthInstallBundlePopulateManifestProperties_cold_1(0);
      }

      else
      {
        _AMAuthInstallBundlePopulateManifestProperties_cold_2(a1);
      }
    }

    else
    {
      _AMAuthInstallBundlePopulateManifestProperties_cold_3(a1);
    }
  }

  else
  {
    _AMAuthInstallBundlePopulateManifestProperties_cold_4(0);
  }

LABEL_28:

  return AMSupportSafeRelease();
}

__CFString *OUTLINED_FUNCTION_19_0(int a1)
{

  return AMAuthInstallGetLocalizedStatusString(v1, a1);
}

CFComparisonResult OUTLINED_FUNCTION_31(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t OUTLINED_FUNCTION_32(int a1, int a2, int a3, void *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CFStringRef theString1, uint64_t a25, const void *a26)
{

  return AMAuthInstallBundleCopyBuildIdentityForVariant(v26, a26, theString1, a4);
}

uint64_t AMAuthInstallCryptoCreateDigestForDataType(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3, int a4)
{
  switch(a4)
  {
    case 384:
      return AMAuthInstallCryptoCreateDigestForData_SHA384(a1, a2, a3);
    case 256:
      return AMAuthInstallCryptoCreateDigestForData_SHA256(a1, a2, a3);
    case 1:
      return AMAuthInstallCryptoCreateDigestForData(a1, a2, a3);
  }

  return 1;
}

uint64_t AMAuthInstallHttpUriEscapeString(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3)
{
  if (!theString)
  {
    AMAuthInstallHttpUriEscapeString_cold_3(a1);
LABEL_10:
    MutableCopy = 0;
    v9 = 1;
    goto LABEL_7;
  }

  if (!a3)
  {
    AMAuthInstallHttpUriEscapeString_cold_2(a1);
    goto LABEL_10;
  }

  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  if (MutableCopy)
  {
    v5 = off_29EE9AC80;
    v6 = 33;
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v11.length = CFStringGetLength(MutableCopy);
      v11.location = 0;
      CFStringFindAndReplace(MutableCopy, v7, v8, v11, 0);
      v5 += 2;
      --v6;
    }

    while (v6);
    v9 = 0;
    *a3 = CFRetain(MutableCopy);
  }

  else
  {
    AMAuthInstallHttpUriEscapeString_cold_1(0);
    v9 = 3;
  }

LABEL_7:
  SafeRelease(MutableCopy);
  return v9;
}

uint64_t AMAuthInstallHttpUriUnescapeString(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3)
{
  if (!theString)
  {
    AMAuthInstallHttpUriUnescapeString_cold_3(a1);
LABEL_11:
    MutableCopy = 0;
    v10 = 1;
    goto LABEL_8;
  }

  if (!a3)
  {
    AMAuthInstallHttpUriUnescapeString_cold_2(a1);
    goto LABEL_11;
  }

  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  if (MutableCopy)
  {
    v5 = -33;
    v6 = &off_29EE9AE80;
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v12.length = CFStringGetLength(MutableCopy);
      v12.location = 0;
      CFStringFindAndReplace(MutableCopy, v7, v8, v12, 0);
      v6 -= 2;
    }

    while (!__CFADD__(v5++, 1));
    v10 = 0;
    *a3 = CFRetain(MutableCopy);
  }

  else
  {
    AMAuthInstallHttpUriUnescapeString_cold_1(0);
    v10 = 3;
  }

LABEL_8:
  SafeRelease(MutableCopy);
  return v10;
}

CFArrayRef AMAuthInstallHTTPCopyDefaultTrustedSSLCACerts()
{
  v4[1] = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDB8ED8];
  v1 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], kAMAuthInstallHTTPTrustedCACert3, 1020, *MEMORY[0x29EDB8EE8]);
  v4[0] = v1;
  if (v1)
  {
    v2 = CFArrayCreate(v0, v4, 1, MEMORY[0x29EDB9000]);
    v1 = v4[0];
  }

  else
  {
    v2 = 0;
  }

  SafeRelease(v1);
  return v2;
}

uint64_t _AMAuthInstallLockClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMAuthInstallLockTypeID = result;
  return result;
}

uint64_t AMAuthInstallHttpMessageSendSync(const void *a1, const __CFData *a2, const __CFDictionary *a3)
{
  AMAuthInstallLog(8, "AMAuthInstallHttpMessageSendSync", "httpRequest=%@", a1);
  v13 = 10002;
  theData = 0;
  v6 = CFGetAllocator(a1);
  v7 = AMAuthInstallHttpMessageSendSyncNew(v6, a1, &theData, &v13, a3, 60.0);
  if (v7)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpMessageSendSync", "AMAuthInstallHttpMessageSendSyncNew() failed: %d", v7);
  }

  else if (a2)
  {
    Length = CFDataGetLength(a2);
    BytePtr = CFDataGetBytePtr(theData);
    v10 = CFDataGetLength(theData);
    v14.location = 0;
    v14.length = Length;
    CFDataReplaceBytes(a2, v14, BytePtr, v10);
  }

  return v13;
}

uint64_t AMAuthInstallHttpMessageSendSyncNew(CFAllocatorRef allocator, uint64_t a2, CFTypeRef *a3, _DWORD *a4, CFDictionaryRef theDict, double a6)
{
  valuePtr = a6;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(allocator, Count, theDict);
    if (CFDictionaryContainsKey(MutableCopy, *MEMORY[0x29EDC91D8]))
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains proxy information. Will attempt to use a proxy.");
    }

    Mutable = CFDictionaryContainsKey(MutableCopy, *MEMORY[0x29EDC91E8]);
    if (Mutable)
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains trusted server CAs. Will authenticate SSL against CAs.");
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    MutableCopy = Mutable;
  }

  if (!MutableCopy)
  {
    AMAuthInstallHttpMessageSendSyncNew_cold_3(Mutable);
LABEL_13:
    v13 = 2;
    goto LABEL_10;
  }

  v11 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
  if (!v11)
  {
    AMAuthInstallHttpMessageSendSyncNew_cold_2();
    goto LABEL_13;
  }

  CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDC91E0], v11);
  AMSupportHttpSendSync();
  AMAuthInstallHttpMessageSendSyncNew_cold_1();
  v13 = 16;
LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v13;
}

uint64_t AMAuthInstallHttpRequestManagedBaaCertificate(void *a1, void *a2)
{
  cf = 0;
  BaaCertificateData = AMAuthInstallHttpCreateBaaCertificateData(a1, 0, a2, &cf);
  if (!BaaCertificateData)
  {
    v4 = cf;
    if (cf)
    {
      if (*(a1[2] + 136))
      {
        CFRelease(*(a1[2] + 136));
        *(a1[2] + 136) = 0;
        v4 = cf;
      }

      *(a1[2] + 136) = CFRetain(v4);
    }
  }

  return BaaCertificateData;
}

uint64_t AMAuthInstallHttpCreateBaaCertificateData(void *a1, const __CFDictionary *a2, void *a3, CFDataRef *a4)
{
  v57[3] = *MEMORY[0x29EDCA608];
  theData = 0;
  v53 = 0;
  v51 = -1;
  v49 = 0;
  v50 = 0;
  if (!a1)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_11(0);
LABEL_44:
    v17 = 0;
    v15 = 0;
    v14 = 0;
    v19 = 0;
    v18 = 1;
    goto LABEL_40;
  }

  v5 = a1[2];
  if (!v5)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_10(a1);
    goto LABEL_44;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_9(a1);
    goto LABEL_44;
  }

  if (!MEMORY[0x2A1C78558])
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "DeviceIdentityCreateClientCertificateRequest is not available", a4);
    v17 = 0;
    v15 = 0;
    v14 = 0;
    v19 = 0;
    v18 = 13;
    goto LABEL_40;
  }

  v10 = *MEMORY[0x29EDC0FD0];
  v56[0] = *MEMORY[0x29EDC0F70];
  v56[1] = v10;
  v57[0] = v6;
  v57[1] = &unk_2A1EFD010;
  v56[2] = *MEMORY[0x29EDC0FB8];
  v11 = *MEMORY[0x29EDC0F80];
  v55[0] = *MEMORY[0x29EDC0FB0];
  v55[1] = v11;
  v12 = *MEMORY[0x29EDC0F90];
  v55[2] = *MEMORY[0x29EDC0FA0];
  v55[3] = v12;
  v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:v55 count:4];
  v57[2] = v13;
  v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v57 forKeys:v56 count:3];

  v48 = 0;
  v15 = DeviceIdentityCreateClientCertificateRequest();
  v16 = 0;
  v17 = v16;
  if (v16)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "Error creating baa request : %@", v16);
    if (a3)
    {
      *a3 = v17;
    }

    v18 = 6;
  }

  else
  {
    v18 = 1;
  }

  if (!v53)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_8();
LABEL_47:
    v19 = 0;
    goto LABEL_40;
  }

  if (!v15)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_7();
    goto LABEL_47;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"userAgentStringOverride");
    if (Value)
    {
      v21 = Value;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 setValue:v21 forHTTPHeaderField:@"User-Agent"];
      }
    }
  }

  if (AMAuthInstallPreferencesCopyStringValue(0, @"BAAOverrideURL"))
  {
    CFGetAllocator(a1);
    URLFromString = AMSupportCreateURLFromString();
  }

  else
  {
    URLFromString = [v15 URL];
  }

  v19 = URLFromString;
  if (!URLFromString)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_6();
    goto LABEL_40;
  }

  v23 = [v15 HTTPMethod];
  Request = CFHTTPMessageCreateRequest(0, v23, v19, *MEMORY[0x29EDB8528]);
  if (!Request)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_5();
    v19 = 0;
LABEL_59:
    v18 = 2;
    goto LABEL_40;
  }

  v25 = Request;
  v42 = a4;
  v43 = v17;
  v26 = v14;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = [v15 allHTTPHeaderFields];
  v27 = [(__CFURL *)v19 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v19);
        }

        v31 = *(*(&v44 + 1) + 8 * i);
        v32 = [(__CFURL *)v19 objectForKeyedSubscript:v31];
        CFHTTPMessageSetHeaderFieldValue(v25, v31, v32);
      }

      v28 = [(__CFURL *)v19 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v28);
  }

  v33 = [v15 HTTPBody];
  if (v33)
  {
    CFHTTPMessageSetBody(v25, [v15 HTTPBody]);
  }

  v34 = CFGetAllocator(a1);
  v35 = AMAuthInstallHttpMessageSendSyncNew(v34, v25, &theData, &v51, 0, 60.0);
  v14 = v26;
  if (v35)
  {
    v18 = v35;
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "AMAuthInstallHttpMessageSendSyncNew returned %d", v35);
    v17 = v43;
    goto LABEL_40;
  }

  v17 = v43;
  if (!theData)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_4();
LABEL_53:
    v18 = 16;
    goto LABEL_40;
  }

  if (v51 != 200)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "httpStatus is %d", v51);
    goto LABEL_53;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v38 = AMAuthInstallSupportCreateDecodedPEM(BytePtr, Length, &v50, &v49);
  if (v38)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "AMAuthInstallSupportCreateDecodedPEM returned %d", v38);
LABEL_57:
    v18 = 6;
    goto LABEL_40;
  }

  if (!v50)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_3();
    goto LABEL_57;
  }

  if (!v49)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_2();
    goto LABEL_57;
  }

  v39 = CFGetAllocator(a1);
  v40 = CFDataCreate(v39, v50, v49);
  if (!v40)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_1();
    goto LABEL_59;
  }

  v18 = 0;
  if (v42)
  {
    *v42 = v40;
  }

LABEL_40:
  AMSupportSafeFree();

  return v18;
}

uint64_t AMAuthInstallHttpRequestAlternateUpdateBaaCertificate(void *a1, void *a2)
{
  cf = 0;
  BaaCertificateData = AMAuthInstallHttpCreateBaaCertificateData(a1, &unk_2A1EFCFE8, a2, &cf);
  v4 = cf;
  if (BaaCertificateData)
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (!v5)
  {
    if (*(a1[2] + 144))
    {
      CFRelease(*(a1[2] + 144));
      *(a1[2] + 144) = 0;
      v4 = cf;
    }

    *(a1[2] + 144) = CFRetain(v4);
  }

  return BaaCertificateData;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_0_5()
{

  return CFDictionaryCreateMutable(v1, 0, v0, v2);
}

void (*AMAuthInstallLogSetHandler(void (*result)(int a1, uint64_t a2)))(int a1, uint64_t a2)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = _DefaultLogHandler;
  }

  _logHandler = v1;
  return result;
}

void _DefaultLogHandler(unsigned int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (_DefaultLogHandler_once != -1)
  {
    _DefaultLogHandler_cold_1();
  }

  if (a1 <= 2)
  {
    if (os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_FAULT))
    {
      _DefaultLogHandler_cold_5();
    }

    return;
  }

  if (a1 == 3)
  {
    if (os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_ERROR))
    {
      _DefaultLogHandler_cold_4();
    }

    return;
  }

  if (a1 <= 5)
  {
    v4 = _DefaultLogHandler_logHandle;
    if (!os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136446210;
    v10 = a2;
    v5 = v4;
    v6 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
    _os_log_impl(&dword_29849C000, v5, v6, "%{public}s", &v9, 0xCu);
    return;
  }

  if (a1 == 6)
  {
    v7 = _DefaultLogHandler_logHandle;
    if (!os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v9 = 136446210;
    v10 = a2;
    v5 = v7;
    v6 = OS_LOG_TYPE_INFO;
    goto LABEL_15;
  }

  v8 = os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_DEBUG);
  if (a1 > 7)
  {
    if (v8)
    {
      _DefaultLogHandler_cold_2();
    }
  }

  else if (v8)
  {
    _DefaultLogHandler_cold_3();
  }
}

void AMAuthInstallLog(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v6 = v5;
  v7 = v3;
  v24 = *MEMORY[0x29EDCA608];
  v8 = "";
  if (v4)
  {
    v8 = v4;
  }

  v9 = snprintf(__str, 0x1000uLL, "%s: ", v8);
  v10 = *MEMORY[0x29EDB8ED8];
  v11 = CFStringCreateWithCStringNoCopy(*MEMORY[0x29EDB8ED8], v6, 0x8000100u, *MEMORY[0x29EDB8EE8]);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v12 = CFStringCreateWithFormatAndArguments(v10, 0, v11, va);
  v13 = v12;
  if (!v12)
  {
LABEL_9:
    v21 = 0;
    v20 = 0;
    goto LABEL_14;
  }

  v14 = v9;
  v15 = 4096 - v9;
  Length = CFStringGetLength(v12);
  v17 = Length;
  if (4096 - v9 < Length && (v18 = malloc(v9 + Length + 1)) != 0)
  {
    v19 = v18;
    v15 = v17 + 1;
    memcpy(v18, __str, v9);
    v20 = v19;
  }

  else
  {
    v20 = 0;
    v19 = __str;
  }

  if (CFStringGetCString(v13, &v19[v14], v15, 0x8000100u))
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

LABEL_14:
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = "failed to format log message";
  }

  _logHandler(v7, v22);
  SafeRelease(v11);
  SafeRelease(v13);
  SafeFree(v20);
}

uint64_t AMAuthInstallDebugWriteObject(const void **cf, CFTypeRef a2, uint64_t a3, int a4)
{
  cfa = 0;
  if (!cf)
  {
    goto LABEL_19;
  }

  if ((cf[43] & a4) == 0)
  {
    v14 = 0;
LABEL_16:
    Data = 0;
    goto LABEL_20;
  }

  if (!cf[42])
  {
    CFGetAllocator(cf);
    v19 = AMAuthInstallSupportCopyURLToNewTempDirectory();
    if (v19)
    {
      v14 = v19;
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "failed to create debug output directory");
      goto LABEL_16;
    }
  }

  v7 = CFGetTypeID(a2);
  if (v7 == CFDataGetTypeID())
  {
    Data = CFRetain(a2);
    v9 = "";
    if (Data)
    {
      goto LABEL_6;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_20;
  }

  v16 = CFGetTypeID(a2);
  if (v16 != CFDictionaryGetTypeID())
  {
    v17 = CFGetTypeID(a2);
    if (v17 != CFArrayGetTypeID())
    {
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "can't prepare data for output to file");
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "%@", a2);
LABEL_19:
      Data = 0;
      v14 = 1;
      goto LABEL_20;
    }
  }

  v18 = CFGetAllocator(cf);
  Data = CFPropertyListCreateData(v18, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v9 = ".plist";
  if (!Data)
  {
    goto LABEL_13;
  }

LABEL_6:
  v10 = CFGetAllocator(cf);
  v11 = CFStringCreateWithFormat(v10, 0, @"%@%s", a3, v9);
  if (v11)
  {
    v12 = v11;
    v13 = CFGetAllocator(cf);
    v14 = AMAuthInstallSupportCopyURLWithAppendedComponent(v13, cf[42], v12, 0, &cfa);
    CFRelease(v12);
    if (!v14)
    {
      v15 = CFGetAllocator(cf);
      v14 = AMAuthInstallSupportWriteDataToFileURL(v15, Data, cfa, 0);
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "debug object written: %@", cfa);
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_20:
  SafeRelease(Data);
  SafeRelease(cfa);
  return v14;
}

void AMAuthInstallLogDumpMemory(uint64_t a1, uint64_t a2, const char *a3, unsigned __int8 *a4, int a5)
{
  v14 = *MEMORY[0x29EDCA608];
  AMAuthInstallLog(a1, a2, "[%s: %u bytes]", a3, a5);
  if (a5 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = a5 + 1;
    do
    {
      v11 = *a4++;
      v12 = snprintf(&v13[v9], 64 - v9, "%02x ", v11);
      if (++v8 > 0xF || v10 == 2)
      {
        AMAuthInstallLog(a1, "", "%s", v13);
        v9 = 0;
        v8 = 0;
      }

      else
      {
        v9 += v12;
      }

      --v10;
    }

    while (v10 > 1);
  }

  AMAuthInstallLog(a1, "", "-----------------------------------------------");
}