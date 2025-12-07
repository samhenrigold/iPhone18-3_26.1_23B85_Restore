uint64_t dataSource_SetDevicePSGInfoInternal(uint64_t a1, const __CFDictionary *a2)
{
  v24 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFDictionaryCopyArrayOfKeys();
  if (!v3)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v4 = v3;
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  v5 = APSSettingsCopyKeys(0);
  if (!v5)
  {
    goto LABEL_46;
  }

  for (i = 0; i < CFArrayGetCount(v5); ++i)
  {
    CFStringGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    if (CFStringHasPrefix(TypedValueAtIndex, @"PSGDataSource::PSGInfo::"))
    {
      if (CFEqual(TypedValueAtIndex, @"wirelessdisplay_enable_timestamps_diagnostic"))
      {
        v8 = @"com.apple.coremedia";
      }

      else
      {
        v8 = @"com.apple.airplay";
      }

      CFPreferencesSetAppValue(TypedValueAtIndex, 0, v8);
      v24 = 0;
    }
  }

  v9 = 0;
  v10 = *MEMORY[0x277CBECE8];
  while (v9 < CFArrayGetCount(v4))
  {
    CFStringGetTypeID();
    v11 = CFArrayGetTypedValueAtIndex();
    Value = CFDictionaryGetValue(a2, v11);
    v13 = CFStringCreateF(0, "%@%@", @"PSGDataSource::PSGInfo::", v11);
    if (v11)
    {
      if (!CFDictionaryGetValue(Value, @"PGUUID") || !CFDictionaryGetValue(Value, @"PGName") || !CFDictionaryGetValue(Value, @"PGType") || !CFDictionaryGetValue(Value, @"PGMemberID"))
      {
        APSLogErrorAt(0);
        goto LABEL_50;
      }

      if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSPSGDataSource, "OSStatus dataSource_SetDevicePSGInfoInternal(APSPSGDataSourceRef, CFDictionaryRef)", 33554482, "[%{ptr}] deviceID %@ devicePSGInfo %@\n", a1, v11, Value);
      }

      MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, Value);
      if (!MutableCopy)
      {
        APSLogErrorAt(0);
        v24 = -6728;
        if (gLogCategory_APSPSGDataSource <= 90 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSPSGDataSource, "OSStatus dataSource_SetDevicePSGInfoInternal(APSPSGDataSourceRef, CFDictionaryRef)", 33554522, "[%{ptr}] Setting devicePSGInfo prefs failed with error: %#m\n", a1, 4294960568);
        }

        goto LABEL_56;
      }

      v17 = MutableCopy;
      if (CFEqual(v13, @"wirelessdisplay_enable_timestamps_diagnostic"))
      {
        v18 = @"com.apple.coremedia";
      }

      else
      {
        v18 = @"com.apple.airplay";
      }

      CFPreferencesSetAppValue(v13, v17, v18);
      v24 = 0;
      if (v13)
      {
LABEL_35:
        CFRelease(v13);
      }
    }

    else
    {
      v14 = *(DerivedStorage + 16);
      if (v14 && CFDictionaryContainsKey(v14, v13))
      {
        v15 = CFEqual(v13, @"wirelessdisplay_enable_timestamps_diagnostic") ? @"com.apple.coremedia" : @"com.apple.airplay";
        CFPreferencesSetAppValue(v13, 0, v15);
        v24 = 0;
        if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSPSGDataSource, "OSStatus dataSource_SetDevicePSGInfoInternal(APSPSGDataSourceRef, CFDictionaryRef)", 33554482, "[%{ptr}] devicePSGInfo cleared from prefs for device %@\n", a1, 0);
        }
      }

      v17 = 0;
      if (v13)
      {
        goto LABEL_35;
      }
    }

    if (v17)
    {
      CFRelease(v17);
    }

    ++v9;
  }

  v19 = *(DerivedStorage + 16);
  if (a2)
  {
    CFRetain(a2);
  }

  *(DerivedStorage + 16) = a2;
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_46:
  v13 = 0;
LABEL_50:
  if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSPSGDataSource, "OSStatus dataSource_SetDevicePSGInfoInternal(APSPSGDataSourceRef, CFDictionaryRef)", 33554482, "[%{ptr}] devicePSGInfo prefs updated for device.\n", a1, v21);
  }

LABEL_56:
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  notify_post("com.apple.airplay.prefsChanged");
  if (v13)
  {
    CFRelease(v13);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(v4);
  return v24;
}

uint64_t dataSource_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a4)
  {
    v7 = *(DerivedStorage + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __dataSource_CopyProperty_block_invoke;
    v10[3] = &unk_2784A3CB8;
    v10[6] = a4;
    v10[7] = DerivedStorage;
    v10[4] = &v11;
    v10[5] = a2;
    dispatch_sync(v7, v10);
    v8 = *(v12 + 6);
  }

  else
  {
    APSLogErrorAt(0);
    v8 = 4294960591;
    *(v12 + 6) = -6705;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

void dataSource_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dataSource_Stop(a1);
  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 32) = 0;
  }

  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t APSPSGDataSourceSetDevicePSGInfo(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APSPSGDataSourceSetDevicePSGInfo_block_invoke;
  block[3] = &unk_2784A3C80;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_2223256F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APSPSGDataSourceSetDevicePSGInfo_block_invoke(uint64_t a1)
{
  result = dataSource_SetDevicePSGInfoInternal(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

const void *APSPSGDataSourceCopyDevicePSGInfo(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  if (!a2 || (v4 = CFStringCreateF(0, "%@%@", @"PSGDataSource::PSGInfo::", a2)) == 0)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v5 = v4;
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  TypeID = CFDictionaryGetTypeID();
  v7 = APSSettingsCopyValueEx(v5, TypeID, &v11);
  v8 = v7;
  if (v11)
  {
    if (!v7)
    {
      APSLogErrorAt(0);
      v11 = -6727;
    }

    goto LABEL_6;
  }

  if (gLogCategory_APSPSGDataSource <= 90)
  {
    if (gLogCategory_APSPSGDataSource == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    LogPrintF(&gLogCategory_APSPSGDataSource, "CFDictionaryRef APSPSGDataSourceCopyDevicePSGInfo(APSPSGDataSourceRef, CFStringRef)", 33554522, " [%{ptr}] Getting devicePSGInfo for deviceID %@ failed with error: %#m\n", a1, a2, v10);
  }

LABEL_6:
  CFRelease(v5);
  return v8;
}

uint64_t APSPSGDataSourceGetShared(void *a1)
{
  if (APSPSGDataSourceGetShared_once != -1)
  {
    dispatch_once(&APSPSGDataSourceGetShared_once, &__block_literal_global_2585);
  }

  *a1 = APSPSGDataSourceGetShared_psgDataSource;
  return APSPSGDataSourceGetShared_err;
}

uint64_t __APSPSGDataSourceGetShared_block_invoke()
{
  result = APSPSGDataSourceCreate(*MEMORY[0x277CBECE8], &APSPSGDataSourceGetShared_psgDataSource);
  APSPSGDataSourceGetShared_err = result;
  if (!result)
  {
    v1 = APSPSGDataSourceGetShared_psgDataSource;
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v2)
    {
      result = v2(v1);
      APSPSGDataSourceGetShared_err = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = 4294954514;
      APSPSGDataSourceGetShared_err = -12782;
    }
  }

  return APSLogErrorAt(result);
}

uint64_t APSCFArrayGetEmpty()
{
  if (APSCFArrayGetEmpty_sAPSCFArrayEmptyOnce != -1)
  {
    dispatch_once(&APSCFArrayGetEmpty_sAPSCFArrayEmptyOnce, &__block_literal_global_2589);
  }

  return APSCFArrayGetEmpty_sAPSCFArrayEmpty;
}

CFArrayRef __APSCFArrayGetEmpty_block_invoke()
{
  result = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
  APSCFArrayGetEmpty_sAPSCFArrayEmpty = result;
  return result;
}

uint64_t APSCFArraySetUInt64AtIndex(__CFArray *a1, CFIndex a2, uint64_t a3)
{
  if (a1)
  {
    Int64 = CFNumberCreateInt64();
    if (Int64)
    {
      v6 = Int64;
      CFArraySetValueAtIndex(a1, a2, Int64);
      CFRelease(v6);
      return 0;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSCFArrayGetUInt64AtIndex(const __CFArray *a1, CFIndex a2, uint64_t *a3)
{
  if (a1)
  {
    CFArrayGetValueAtIndex(a1, a2);
    v4 = CFGetInt64();
    result = 0;
    *a3 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

void APSCFArrayReverse(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  v3 = CFArrayGetCount(a1);
  if (v3 >= 2)
  {
    v4 = 0;
    v5 = v3 / 2;
    v6 = Count - 1;
    do
    {
      CFArrayExchangeValuesAtIndices(a1, v4++, v6--);
    }

    while (v5 != v4);
  }
}

CFStringRef APSCreateNewUUIDString()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v2 = CFUUIDCreateString(v0, v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t APSCFStringParseUInt32s(const __CFString *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  theSet = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *buffer = 0u;
  v34 = 0u;
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  v6 = Length;
  theString = a1;
  v44 = 0;
  v45 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v42 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v46 = 0;
  v47 = 0;
  v13 = 64;
  v43 = CStringPtr;
  do
  {
    if (v12 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v12;
    }

    v15 = v45;
    if (v45 <= v12)
    {
      v17 = 0;
    }

    else
    {
      if (v42)
      {
        v16 = &v42[v44];
LABEL_12:
        v17 = v16[v12];
        goto LABEL_14;
      }

      if (!v43)
      {
        v22 = v46;
        if (v47 <= v12 || v46 > v12)
        {
          v24 = v14 + v9;
          v25 = v13 - v14;
          v26 = v12 - v14;
          v27 = v26 + 64;
          if (v26 + 64 >= v45)
          {
            v27 = v45;
          }

          v46 = v26;
          v47 = v27;
          if (v45 >= v25)
          {
            v15 = v25;
          }

          v48.location = v26 + v44;
          v48.length = v15 + v24;
          CFStringGetCharacters(theString, v48, buffer);
          v22 = v46;
        }

        v16 = &buffer[-v22];
        goto LABEL_12;
      }

      v17 = v43[v44 + v12];
    }

LABEL_14:
    IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, v17);
    if (IsCharacterMember)
    {
      if (10 * v11 + v17 - 48 < v11)
      {
        APSLogErrorAt(0);
        return 4294960553;
      }

      v10 = 1;
      v11 = 10 * v11 + v17 - 48;
    }

    else
    {
      if (v10)
      {
        v19 = 0;
      }

      else
      {
        v19 = v11;
      }

      if (v10 && a2)
      {
        v20 = a2(v11, a3);
        if (v20)
        {
          v28 = v20;
LABEL_47:
          APSLogErrorAt(v20);
          return v28;
        }

        v19 = 0;
      }

      v21 = CFCharacterSetIsCharacterMember(theSet, v17);
      if (!v21)
      {
        APSLogErrorAt(v21);
        return 4294960579;
      }

      v10 = 0;
      v11 = v19;
    }

    ++v12;
    --v9;
    ++v13;
  }

  while (v6 != v12);
  v28 = 0;
  if (a2)
  {
    if (IsCharacterMember)
    {
      v20 = a2(v11, a3);
      v28 = v20;
      if (v20)
      {
        goto LABEL_47;
      }
    }
  }

  return v28;
}

uint64_t APSCFStringCountUInt32s(const __CFString *a1, void *a2)
{
  v6 = 0;
  v3 = APSCFStringParseUInt32s(a1, apsCFUtils_stringCountUInt32sCallback, &v6);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else if (a2)
  {
    *a2 = v6;
  }

  return v4;
}

BOOL APSCFDictionaryPairIsKeyPresentAndEqual(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Value = FigCFDictionaryGetValue();
  v4 = FigCFDictionaryGetValue();
  result = 0;
  if (Value)
  {
    if (v4)
    {
      return CFEqual(Value, v4) != 0;
    }
  }

  return result;
}

uint64_t APSCFDataCreateWithBase64String(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x277CBEA90]);

    return [v2 initWithBase64EncodedString:a1 options:0];
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t APSCFDictionaryGetBooleanIfPresent(uint64_t a1, uint64_t a2, BOOL *a3)
{
  Int64 = CFDictionaryGetInt64();
  if (a3)
  {
    *a3 = Int64 != 0;
  }

  return 1;
}

void APSCFSetAddSet(void *context, CFSetRef theSet)
{
  if (context)
  {
    if (theSet)
    {
      CFSetApplyFunction(theSet, apsCFUtils_setAddSetApplier, context);
    }
  }
}

uint64_t APSSockAddrToCFString(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1 && a3)
  {
    v4 = SockAddrToString();
    if (v4)
    {
      v6 = v4;
      APSLogErrorAt(v4);
    }

    else
    {
      v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
      *a3 = v5;
      if (v5)
      {
        return 0;
      }

      else
      {
        APSLogErrorAt(0);
        return 4294960568;
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v6;
}

uint64_t APSCFStringToSockAddr(uint64_t CString, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!CString)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    CString = 0;
LABEL_10:
    APSLogErrorAt(CString);
    return 4294960591;
  }

  v4 = CString;
  if (!CFStringGetCStringPtr(CString, 0x8000100u))
  {
    CString = CFStringGetCString(v4, buffer, 128, 0x8000100u);
    if (!CString)
    {
      goto LABEL_10;
    }
  }

  v5 = StringToSockAddr();
  v6 = v5;
  if (v5)
  {
    APSLogErrorAt(v5);
  }

  return v6;
}

uint64_t APSCFDictionarySetSockAddr(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  value = 0;
  if (a1 && a2 && a3)
  {
    if (*(a3 + 1))
    {
      v7 = APSSockAddrToCFString(a3, a4, &value);
      v4 = v7;
      if (v7)
      {
        APSLogErrorAt(v7);
      }

      else
      {
        CFDictionarySetValue(a1, a2, value);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  return v4;
}

uint64_t APSCFDictionaryGetSockAddr(const __CFDictionary *a1, const void *a2, void *a3, unint64_t a4, uint64_t *a5)
{
  v13 = 0;
  if (a3)
  {
    if (a4 <= 0xF)
    {
      APSLogErrorAt(0);
      v8 = 4294960553;
    }

    else
    {
      v8 = 0;
      v13 = 16;
      *a3 = 0;
      a3[1] = 0;
      if (a1)
      {
        if (a2)
        {
          Value = CFDictionaryGetValue(a1, a2);
          v8 = Value;
          if (Value)
          {
            v10 = CFGetTypeID(Value);
            if (v10 == CFStringGetTypeID())
            {
              v11 = APSCFStringToSockAddr(v8, a3, a4, &v13);
              v8 = v11;
              if (v11)
              {
                APSLogErrorAt(v11);
              }
            }

            else
            {
              APSLogErrorAt(0);
              v8 = 4294960540;
            }
          }
        }
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    v8 = 4294960591;
  }

  if (a5)
  {
    *a5 = v13;
  }

  return v8;
}

CFDictionaryRef *APSIntrospectorAddCommand(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (APSIntrospectorInit_once != -1)
  {
    dispatch_once_f(&APSIntrospectorInit_once, 0, introsp_init);
  }

  result = gIntrospector;
  if (gIntrospector)
  {
    if (a1 && a3 && a4)
    {

      return introsp_addCommand(result, a1, a2, a3, a4, 0);
    }

    else
    {

      return APSLogErrorAt(0);
    }
  }

  return result;
}

uint64_t introsp_addCommand(CFDictionaryRef *a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, char a6)
{
  if (a2 && a4)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*a1, a2);
    if (Value)
    {
      v13 = Value;
      result = FigSimpleMutexUnlock();
      if (*v13 != a4)
      {
        if (gLogCategory_APSIntrospector <= 90)
        {
          if (gLogCategory_APSIntrospector != -1)
          {
            return LogPrintF(&gLogCategory_APSIntrospector, "void introsp_addCommand(IntrospectorData *, CFStringRef, const void *, APSIntrospectorCommand, CFStringRef, Boolean)", 33554522, "can't add '%@' command: it has already been added\n", a2);
          }

          result = _LogCategory_Initialize();
          if (result)
          {
            return LogPrintF(&gLogCategory_APSIntrospector, "void introsp_addCommand(IntrospectorData *, CFStringRef, const void *, APSIntrospectorCommand, CFStringRef, Boolean)", 33554522, "can't add '%@' command: it has already been added\n", a2);
          }
        }

        return result;
      }

      FigSimpleMutexLock();
      v13[1] = a3;
    }

    else
    {
      v15 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040A81CF768uLL);
      *v15 = a4;
      v15[1] = a3;
      if (a5)
      {
        v16 = CFRetain(a5);
      }

      else
      {
        v16 = 0;
      }

      v15[2] = v16;
      v15[3] = FigReentrantMutexCreate();
      *(v15 + 32) = a6;
      CFDictionaryAddValue(*a1, a2, v15);
    }

    return FigSimpleMutexUnlock();
  }

  return APSLogErrorAt(0);
}

void introsp_init()
{
  if (!IsAppleInternalBuild())
  {
    return;
  }

  gIntrospector = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040FB85C623uLL);
  *gIntrospector = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  v0 = FigSimpleMutexCreate();
  v1 = gIntrospector;
  *(gIntrospector + 8) = v0;
  *(v1 + 40) = -1;
  *(v1 + 44) = 0;
  *&v15.sa_len = 0;
  *&v15.sa_data[6] = 0;
  v17 = 0;
  v16 = 0;
  v14 = 1;
  v2 = socket(2, 1, 6);
  if (v2 < 0)
  {
    if (*__error())
    {
      v3 = *__error();
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = 4294960596;
    }

    v5 = v3;
    goto LABEL_28;
  }

LABEL_5:
  setsockopt(v2, 0xFFFF, 4130, &v14, 4u);
  v14 = 1;
  if (!setsockopt(v2, 0xFFFF, 4, &v14, 4u))
  {
    goto LABEL_8;
  }

  if (!*__error())
  {
    v3 = 4294960596;
    goto LABEL_23;
  }

  v3 = *__error();
  if (v3)
  {
LABEL_23:
    v5 = v3;
    goto LABEL_28;
  }

LABEL_8:
  v4 = 0;
  *&v15.sa_data[6] = 0;
  *&v15.sa_len = 528;
  *&v15.sa_data[2] = 16777343;
  while (1)
  {
    *v15.sa_data = bswap32(v4 + 6060) >> 16;
    if (!bind(v2, &v15, 0x10u))
    {
      break;
    }

    if (*__error())
    {
      v3 = *__error();
      if (!v3)
      {
        break;
      }
    }

    else
    {
      v3 = 4294960596;
    }

    if (++v4 == 10)
    {
      v5 = v3;
      goto LABEL_28;
    }
  }

  if (!listen(v2, 5))
  {
    goto LABEL_19;
  }

  if (*__error())
  {
    v3 = *__error();
    if (!v3)
    {
LABEL_19:
      *(v1 + 40) = v2;
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __introsp_savePort_block_invoke;
      block[3] = &__block_descriptor_tmp_18_2596;
      v19 = v4 + 6060;
      dispatch_async(global_queue, block);
      introsp_addCommand(v1, @"echo", 0, introsp_cmdEcho, @"output arguments in single quotes", 0);
      introsp_addCommand(v1, @"exit", v1, introsp_cmdQuit, @"quit (same as 'quit')", 1);
      introsp_addCommand(v1, @"fignote", 0, introsp_cmdFigNote, @"change or show fignote log variables", 0);
      introsp_addCommand(v1, @"help", v1, introsp_cmdHelp, @"list available commands and their brief descriptions", 0);
      introsp_addCommand(v1, @"logging", 0, introsp_cmdLogging, @"modify or show current log settings", 0);
      introsp_addCommand(v1, @"progname", 0, introsp_cmdProgName, @"show the program name", 0);
      introsp_addCommand(v1, @"prompt", v1, introsp_cmdPrompt, @"turn the prompt on/off", 0);
      introsp_addCommand(v1, @"quit", v1, introsp_cmdQuit, @"quit (same as 'exit')", 1);
      introsp_addCommand(v1, @"GET", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"HEAD", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"POST", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"PUT", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"DELETE", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"CONNECT", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"OPTIONS", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"TRACE", v1, introsp_cmdQuit, 0, 1);
      introsp_addCommand(v1, @"PATCH", v1, introsp_cmdQuit, 0, 1);
      v7 = dispatch_queue_create("com.apple.airplay.introspector", 0);
      *(v1 + 24) = v7;
      v8 = dispatch_source_create(MEMORY[0x277D85D28], *(v1 + 40), 0, v7);
      *(v1 + 32) = v8;
      dispatch_set_context(v8, v1);
      dispatch_source_set_event_handler_f(*(v1 + 32), introsp_serverHandleConnection);
      dispatch_resume(*(v1 + 32));
      if (gLogCategory_APSIntrospector <= 50 && (gLogCategory_APSIntrospector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSIntrospector, "void introsp_serverStart(IntrospectorData *)", 33554482, "listening on port %d\n", v4 + 6060);
      }

      return;
    }
  }

  else
  {
    v3 = 4294960596;
  }

  v5 = v3;
LABEL_28:
  APSLogErrorAt(v5);
  if (gLogCategory_APSIntrospector <= 90 && (gLogCategory_APSIntrospector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSIntrospector, "void introsp_serverStart(IntrospectorData *)", 33554522, "can't start APSIntrospector server: %#m\n", v3);
  }

  v9 = gIntrospector;
  if (gIntrospector)
  {
    v10 = *(gIntrospector + 32);
    if (v10)
    {
      dispatch_source_cancel(*(gIntrospector + 32));
      dispatch_release(v10);
      v9 = gIntrospector;
      *(gIntrospector + 32) = 0;
    }

    v11 = *(v9 + 24);
    if (v11)
    {
      dispatch_release(v11);
      v9 = gIntrospector;
      *(gIntrospector + 24) = 0;
    }

    if (*v9)
    {
      CFRelease(*v9);
      v9 = gIntrospector;
    }

    if (*(v9 + 8))
    {
      FigSimpleMutexDestroy();
      v9 = gIntrospector;
    }

    free(*(v9 + 16));
    v12 = *(v9 + 40);
    if (v12 < 0)
    {
      v13 = gIntrospector;
    }

    else
    {
      if (close(v12) && *__error())
      {
        __error();
      }

      v13 = gIntrospector;
      *(gIntrospector + 40) = -1;
    }

    free(v13);
    gIntrospector = 0;
  }

  if ((v2 & 0x80000000) == 0 && close(v2) && *__error())
  {
    __error();
  }
}

void __introsp_savePort_block_invoke(uint64_t a1)
{
  name = 0;
  out_token = 0;
  v2 = getprogname();
  ASPrintF(&name, "%s.%s", "com.apple.airplay.introspector", v2);
  v3 = notify_register_check(name, &out_token);
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    notify_set_state(out_token, *(a1 + 32));
    notify_post(name);
  }

  free(name);
}

uint64_t introsp_serverHandleConnection(uint64_t a1)
{
  v1 = a1;
  v57 = *MEMORY[0x277D85DE8];
  v2 = accept(*(a1 + 40), 0, 0);
  if (v2 < 0)
  {
    result = __error();
    if (*result)
    {
      result = __error();
      v48 = *result;
      if (!v48)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v48 = 4294960596;
    }

    if (gLogCategory_APSIntrospector <= 90)
    {
      if (gLogCategory_APSIntrospector != -1)
      {
        return LogPrintF(&gLogCategory_APSIntrospector, "void introsp_serverHandleConnection(void *)", 33554522, "can't accept new connection: %#m\n", v48);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APSIntrospector, "void introsp_serverHandleConnection(void *)", 33554522, "can't accept new connection: %#m\n", v48);
      }
    }

    return result;
  }

LABEL_2:
  v55 = 1;
  setsockopt(v2, 0xFFFF, 4130, &v55, 4u);
  v3 = malloc_type_malloc(0x800uLL, 0xED218EF3uLL);
  v52 = malloc_type_malloc(0x800uLL, 0xDC30F0ADuLL);
  v54 = malloc_type_malloc(0x208uLL, 0x10040436913F5uLL);
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x1010040787528ABuLL);
  v5 = malloc_type_malloc(0x1000uLL, 0x6988A0D7uLL);
  *(v4 + 1) = v5;
  *v4 = v5;
  *(v4 + 1) = xmmword_22234D420;
  *(v4 + 8) = v2;
  v4[36] = 0;
  v6 = fdopen(v2, "w");
  v53 = v6;
  if (!v6)
  {
    APSLogErrorAt(0);
    goto LABEL_101;
  }

  setlinebuf(v6);
  if (!*(v1 + 16))
  {
    v7 = APSGetDeviceNameCString(v56, 64);
    v8 = getprogname();
    ASPrintF(v1 + 16, "%s:%s ap> ", v7, v8);
  }

  v9 = MEMORY[0x277CBECE8];
  *(v1 + 44) = 0;
  alloc = *v9;
  v10 = MEMORY[0x277D85DE0];
  v49 = v3;
  v50 = v1;
  while (1)
  {
    v12 = 0;
    v13 = v3;
    while (1)
    {
      v14 = *(v4 + 3);
      v15 = (v4 + 8);
      if (v14 <= 0)
      {
        break;
      }

LABEL_15:
      v16 = *v15;
      *(v4 + 3) = v14 - 1;
      *(v4 + 1) = v16 + 1;
      LOBYTE(v16) = *v16;
      *v13++ = v16;
      if (v16 == 10)
      {
        goto LABEL_20;
      }

LABEL_16:
      if (++v12 == 2047)
      {
LABEL_20:
        *v13 = 0;
        goto LABEL_21;
      }
    }

    do
    {
      v14 = read(*(v4 + 8), *v4, *(v4 + 2));
      *(v4 + 3) = v14;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

    while (*__error() == 4);
    v14 = *(v4 + 3);
    if ((v14 & 0x8000000000000000) == 0)
    {
LABEL_14:
      v15 = v4;
      if (v14)
      {
        goto LABEL_15;
      }

      v17 = -1;
      goto LABEL_97;
    }

    APSLogErrorAt(0);
    v17 = *__error();
    if (!v17)
    {
      *v13++ = 0;
      goto LABEL_16;
    }

LABEL_97:
    *v13 = 0;
    v2 = -1;
    if (!v12 || v17 != -1)
    {
      goto LABEL_101;
    }

LABEL_21:
    v18 = 0;
    v19 = 0;
    v20 = v3;
LABEL_22:
    if (v18 == 64)
    {
      goto LABEL_72;
    }

    v21 = *v20;
    if (*v20)
    {
      break;
    }

LABEL_67:
    v38 = v53;
    v37 = v54;
    if (v18)
    {
      goto LABEL_73;
    }

LABEL_94:
    if (*(v1 + 44))
    {
      v11 = "\n";
      if (!*(v1 + 45))
      {
        v11 = "";
      }

      fprintf(v38, "%s%s", *(v1 + 16), v11);
      fflush(v38);
    }
  }

  while (1)
  {
    if ((v21 & 0x80) == 0)
    {
      if ((*(v10 + 4 * v21 + 60) & 0x4000) == 0)
      {
        break;
      }

      goto LABEL_28;
    }

    if (!__maskrune(v21, 0x4000uLL))
    {
      break;
    }

LABEL_28:
    v22 = *++v20;
    v21 = v22;
    if (!v22)
    {
      goto LABEL_67;
    }
  }

  if (!*v20 || *v20 == 35)
  {
    goto LABEL_67;
  }

  v23 = v3;
  v24 = 0;
  v25 = v19;
  v26 = v52;
  v54[v18] = &v52[v19];
  if (v19 <= 2046)
  {
    v27 = 2046;
  }

  else
  {
    v27 = v19;
  }

  v28 = v27 + 1;
  while (2)
  {
    while (2)
    {
      v29 = v20;
      v31 = *v20++;
      v30 = v31;
      v32 = v31;
      if (v31 > 38)
      {
        if (v30 != 39)
        {
          if (v30 != 92)
          {
            goto LABEL_57;
          }

          v33 = *v20;
          if (*v20)
          {
            v34 = v24 == 0;
            if (v33 == 92)
            {
              v34 = 1;
            }

            v35 = v33 == v24 || v34;
            v36 = v29 + 2;
            if (v35)
            {
              v20 = v36;
              LOBYTE(v32) = v33;
            }

            else
            {
              LOBYTE(v32) = 92;
            }
          }

          else
          {
            LOBYTE(v32) = 92;
          }

          goto LABEL_64;
        }

LABEL_41:
        if (!v24 || v32 == v24)
        {
          if (v24)
          {
            v24 = 0;
          }

          else
          {
            v24 = v32;
          }

          continue;
        }

        v20 = v29 + 1;
        goto LABEL_64;
      }

      break;
    }

    if (v30 == 34)
    {
      goto LABEL_41;
    }

    if (v30)
    {
LABEL_57:
      if ((v32 & 0x80000000) != 0)
      {
        if (!__maskrune(v32, 0x4000uLL))
        {
          goto LABEL_62;
        }
      }

      else if ((*(v10 + 4 * v32 + 60) & 0x4000) == 0)
      {
        goto LABEL_62;
      }

      if (!v24)
      {
        v19 = v25 + 1;
        v52[v25] = 0;
        ++v18;
        v3 = v23;
        v1 = v50;
        if (v32)
        {
          goto LABEL_22;
        }

        goto LABEL_67;
      }

LABEL_62:
      v26 = v52;
LABEL_64:
      v26[v25++] = v32;
      if (v28 == v25)
      {
        v46 = "line is too long";
LABEL_70:
        v38 = v53;
        fprintf(v53, "Parse error: %s\n", v46);
        v3 = v23;
        v1 = v50;
        goto LABEL_94;
      }

      continue;
    }

    break;
  }

  v26[v25] = 0;
  v46 = "unmatched quote";
  if (v24)
  {
    goto LABEL_70;
  }

  v18 = (v18 + 1);
  v3 = v23;
  v1 = v50;
LABEL_72:
  v38 = v53;
  v37 = v54;
LABEL_73:
  v39 = CFStringCreateWithCString(alloc, *v37, 0x8000100u);
  if (!v39)
  {
    fprintf(v38, "%s: command string could not be created\n");
    goto LABEL_87;
  }

  v40 = v39;
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*v1, v40);
  FigSimpleMutexUnlock();
  CFRelease(v40);
  if (!Value)
  {
    fprintf(v38, "%s: no such command found, use 'help' to list available commands\n");
LABEL_87:
    if (*(v1 + 44))
    {
      goto LABEL_94;
    }

    goto LABEL_100;
  }

  if (*MEMORY[0x277D85E78] >= 2)
  {
    *MEMORY[0x277D85E78] = 1;
    *MEMORY[0x277D85E88] = 1;
  }

  v37[v18] = 0;
  if (gLogCategory_APSIntrospector <= 30 && (gLogCategory_APSIntrospector != -1 || _LogCategory_Initialize()))
  {
    Mutable = CFStringCreateMutable(alloc, 0);
    if (v18 >= 1)
    {
      v43 = v18;
      v44 = v54;
      do
      {
        v45 = *v44++;
        CFStringAppendFormat(Mutable, 0, @"'%s' ", v45);
        --v43;
      }

      while (v43);
    }

    if (gLogCategory_APSIntrospector <= 30 && (gLogCategory_APSIntrospector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSIntrospector, "void ap_logCommand(LogLevel, int, char **)", 33554462, "will run command: %@\n", Mutable);
    }

    CFRelease(Mutable);
    v38 = v53;
    v37 = v54;
    v3 = v49;
  }

  FigSimpleMutexLock();
  (*Value)(Value[1], v38, v18, v37);
  FigSimpleMutexUnlock();
  if (!*(Value + 32))
  {
    goto LABEL_94;
  }

LABEL_100:
  v2 = -1;
LABEL_101:
  free(*v4);
  if (v4[36])
  {
    close(*(v4 + 8));
  }

  free(v4);
  free(v3);
  free(v52);
  free(v54);
  result = v53;
  if (v53)
  {
    result = fclose(v53);
  }

  if ((v2 & 0x80000000) == 0)
  {
    result = close(v2);
    if (result)
    {
      result = __error();
      if (*result)
      {
        return __error();
      }
    }
  }

  return result;
}

uint64_t introsp_cmdPrompt(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *(result + 44) = 1;
  if (a3 >= 2)
  {
    v4 = result;
    v5 = *(a4 + 8);
    result = strcmp(v5, "line");
    if (result)
    {
      result = strcmp(v5, "off");
      if (!result)
      {
        *(v4 + 44) = 0;
      }
    }

    else
    {
      *(v4 + 45) = 1;
    }
  }

  return result;
}

void introsp_cmdLogging(uint64_t a1, uint64_t a2, unsigned int a3, const char **a4)
{
  if (a3 < 2)
  {
    if (LogShow())
    {
      FPrintF(a2, "%s: can't get log settings: %#m\n", *a4);
    }

    else
    {
      FPrintF(a2, "%s\n", 0);
      free(0);
    }
  }

  else
  {
    v6 = 8 * a3;
    v7 = 8;
    do
    {
      if (LogControl())
      {
        FPrintF(a2, "%s: can't add '%s' setting: %#m\n", *a4, a4[v7 / 8]);
      }

      v7 += 8;
    }

    while (v6 != v7);
  }
}

void introsp_cmdHelp(CFDictionaryRef *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v8 = a3 - 1;
  FigSimpleMutexLock();
  if (v8)
  {
    v9 = v8;
    v10 = malloc_type_malloc(16 * v8, 0x600405BB7FD7CuLL);
    v29[3] = 0;
    if (a3 >= 2)
    {
      v11 = 0;
      v12 = a4 + 8;
      v13 = *MEMORY[0x277CBECE8];
      do
      {
        v14 = CFStringCreateWithCString(v13, *(v12 + 8 * v11), 0x8000100u);
        v10[2 * v29[3]] = v14;
        Value = CFDictionaryGetValue(*a1, v10[2 * v29[3]]);
        if (Value)
        {
          v16 = Value[2];
        }

        else
        {
          v16 = 0;
        }

        v10[2 * v29[3] + 1] = v16;
        v11 = v29[3] + 1;
        v29[3] = v11;
      }

      while (v11 < v8);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    Count = CFDictionaryGetCount(*a1);
    v10 = malloc_type_malloc(16 * Count, 0x600405BB7FD7CuLL);
    v22 = MEMORY[0x277D85DD0];
    v23 = 0x40000000;
    v24 = __introsp_cmdHelp_block_invoke;
    v25 = &unk_2784A3E60;
    v26 = &v28;
    v27 = v10;
    CFDictionaryApplyBlock();
    v9 = v29[3];
    FigSimpleMutexUnlock();
    qsort(v10, v9, 0x10uLL, compareDescriptions);
  }

  v29[3] = 0;
  if (v9 >= 1)
  {
    for (i = 0; i < v9; v29[3] = i)
    {
      v19 = &v10[2 * i];
      v21 = *v19;
      v20 = v19[1];
      if (!v20)
      {
        v20 = @"no such command";
      }

      FPrintF(a2, "%@ -- %@\n", v21, v20, v22, v23, v24, v25, v26, v27);
      CFRelease(v10[2 * v29[3]]);
      i = v29[3] + 1;
    }
  }

  free(v10);
  _Block_object_dispose(&v28, 8);
}

void *__introsp_cmdHelp_block_invoke(void *result, CFTypeRef cf, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = result;
    result = CFRetain(cf);
    *(v4[5] + 16 * *(*(v4[4] + 8) + 24)) = result;
    *(v4[5] + 16 * (*(*(v4[4] + 8) + 24))++ + 8) = *(a3 + 16);
  }

  return result;
}

void introsp_cmdFigNote(uint64_t a1, uint64_t a2, int a3, const char **a4)
{
  if (a3 < 3)
  {
LABEL_29:
    FPrintF(a2, "Usage: %s change <domain> <key> <value>\nOr:    %s show <domain> [<key>]\n", *a4, *a4);
    return;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[2], 0x8000100u);
  v9 = a4[1];
  if (!strcmp(v9, "change"))
  {
    if (a3 == 5)
    {
      v11 = CFStringCreateWithCString(v7, a4[3], 0x8000100u);
      TextToInt32();
      Value = FigNote_ChangeValue();
      goto LABEL_18;
    }
  }

  else
  {
    if (strcmp(v9, "show"))
    {
      goto LABEL_4;
    }

    if (a3 == 3)
    {
      Value = FigNote_CopyKeys();
      if (!Value)
      {
        Count = CFArrayGetCount(0);
        if (Count >= 1)
        {
          v14 = Count;
          for (i = 0; i != v14; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(0, i);
            FPrintF(a2, "%@\n", ValueAtIndex);
          }
        }

        CFRelease(0);
      }

      v11 = 0;
      goto LABEL_18;
    }

    if (a3 == 4)
    {
      v11 = CFStringCreateWithCString(v7, a4[3], 0x8000100u);
      Value = FigNote_GetValue();
      if (!Value)
      {
        FPrintF(a2, "%u\n", 0);
      }

LABEL_18:
      v12 = 1;
      if (!v8)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

LABEL_4:
  Value = 0;
  v11 = 0;
  v12 = 0;
  if (v8)
  {
LABEL_19:
    CFRelease(v8);
  }

LABEL_20:
  if (v11)
  {
    CFRelease(v11);
  }

  if (Value)
  {
    if (Value == -16682)
    {
      FPrintF(a2, "%s: no such domain or key\n");
    }

    else if (Value == -16683)
    {
      FPrintF(a2, "%s: operation not supported\n");
    }

    else
    {
      FPrintF(a2, "%s: unknown error: %d\n");
    }
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_29;
  }
}

uint64_t introsp_cmdQuit(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 44))
    {
      return FPrintF(a2, "Buh bye\n");
    }
  }

  return result;
}

uint64_t introsp_cmdEcho(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v5 = a3 - 1;
    v6 = (a4 + 8);
    do
    {
      v7 = *v6++;
      FPrintF(a2, "'%s' ", v7);
      --v5;
    }

    while (v5);
  }

  return FPrintF(a2, "\n");
}

void APSIntrospectorSetCommandContext(const void *a1, uint64_t a2)
{
  if (APSIntrospectorInit_once != -1)
  {
    dispatch_once_f(&APSIntrospectorInit_once, 0, introsp_init);
  }

  v4 = gIntrospector;
  if (gIntrospector)
  {
    if (a1)
    {
      FigSimpleMutexLock();
      Value = CFDictionaryGetValue(*v4, a1);
      FigSimpleMutexUnlock();
      if (Value)
      {
        FigSimpleMutexLock();
        Value[1] = a2;

        FigSimpleMutexUnlock();
      }

      else if (gLogCategory_APSIntrospector <= 90 && (gLogCategory_APSIntrospector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSIntrospector, "void APSIntrospectorSetCommandContext(CFStringRef, const void *)", 33554522, "can't set context for '%@' command: no such command\n", a1);
      }
    }

    else
    {

      APSLogErrorAt(0);
    }
  }
}

void APSIntrospectorCollectionShow(NSObject **a1, uint64_t a2, int a3, const char **a4)
{
  if (a3 < 2)
  {
    v7 = *a1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __APSIntrospectorCollectionShow_block_invoke_2;
    v9[3] = &__block_descriptor_tmp_12_2711;
    v9[4] = a1;
    v9[5] = a2;
    v8 = v9;
  }

  else
  {
    if (strcmp(a4[1], "count"))
    {
      FPrintF(a2, "Usage: %s [count]\n", *a4);
      return;
    }

    v7 = *a1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APSIntrospectorCollectionShow_block_invoke;
    block[3] = &__block_descriptor_tmp_2709;
    block[4] = a1;
    block[5] = a2;
    v8 = block;
  }

  dispatch_sync(v7, v8);
}

uint64_t __APSIntrospectorCollectionShow_block_invoke(uint64_t a1)
{
  Count = CFSetGetCount(*(*(a1 + 32) + 8));
  v3 = "s";
  if (Count == 1)
  {
    v3 = "";
  }

  return FPrintF(*(a1 + 40), "%s: %d object%s\n", *(*(a1 + 32) + 16), Count, v3);
}

void __APSIntrospectorCollectionShow_block_invoke_2(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = v1;
  v1[2] = 0x2000000000;
  v2 = 1;
  CFSetApplyBlock();
  _Block_object_dispose(v1, 8);
}

uint64_t __APSIntrospectorCollectionShow_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = FPrintF(*(a1 + 40), "Object %d:\n%@\n\n", *(*(*(a1 + 32) + 8) + 24), a2);
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

void APSIntrospectorInit()
{
  if (APSIntrospectorInit_once != -1)
  {
    dispatch_once_f(&APSIntrospectorInit_once, 0, introsp_init);
  }
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATGetTypeID()
{
  if (gAPSAudioProtocolDriverSenderHoseControllerAPATInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioProtocolDriverSenderHoseControllerAPATInitOnce, 0, _APSAudioProtocolDriverSenderHoseControllerAPATGetTypeID);
  }

  return gAPSAudioProtocolDriverSenderHoseControllerAPATTypeID;
}

uint64_t _APSAudioProtocolDriverSenderHoseControllerAPATGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSAudioProtocolDriverSenderHoseControllerAPATTypeID = result;
  return result;
}

uint64_t _APSAudioProtocolDriverSenderHoseControllerAPATFinalize(void *a1)
{
  APSRateControllerAVCWrapperStop(a1[31]);
  v2 = a1[2];
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v3(v2, @"APSAudioProtocolDriverHoseProperty_DataPacer", 0);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[22];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[24];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[37];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[38];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[31];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[26];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[27];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[11];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[12];
  if (v14)
  {
    CFRelease(v14);
  }

  result = FigSimpleMutexDestroy();
  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
  {
    if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1)
    {
      return LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "void _APSAudioProtocolDriverSenderHoseControllerAPATFinalize(CFTypeRef)", 33554482, "[%{ptr}] finalized", a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "void _APSAudioProtocolDriverSenderHoseControllerAPATFinalize(CFTypeRef)", 33554482, "[%{ptr}] finalized", a1);
    }
  }

  return result;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATCreate(const void *a1, uint64_t a2, __int16 a3, void *a4, const void *a5, uint64_t a6, const void *a7, const void *a8, uint64_t *a9)
{
  v49 = 0;
  cf = 0;
  if (!a8)
  {
    APSLogErrorAt(0);
    return -6705;
  }

  if (!a9)
  {
    APSLogErrorAt(0);
    v18 = 0;
    v34 = 0;
    v42 = 0;
    v44 = 0;
    v47 = -6705;
LABEL_98:
    v49 = v47;
    goto LABEL_76;
  }

  if (gAPSAudioProtocolDriverSenderHoseControllerAPATInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioProtocolDriverSenderHoseControllerAPATInitOnce, 0, _APSAudioProtocolDriverSenderHoseControllerAPATGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  v18 = Instance;
  if (!Instance || ((*(Instance + 352) = 0, *(Instance + 320) = 0u, *(Instance + 336) = 0u, *(Instance + 288) = 0u, *(Instance + 304) = 0u, *(Instance + 256) = 0u, *(Instance + 272) = 0u, *(Instance + 224) = 0u, *(Instance + 240) = 0u, *(Instance + 192) = 0u, *(Instance + 208) = 0u, *(Instance + 160) = 0u, *(Instance + 176) = 0u, *(Instance + 128) = 0u, *(Instance + 144) = 0u, *(Instance + 96) = 0u, *(Instance + 112) = 0u, *(Instance + 64) = 0u, *(Instance + 80) = 0u, *(Instance + 32) = 0u, *(Instance + 48) = 0u, *(Instance + 16) = 0u, !a1) ? (v19 = 0) : (v19 = CFRetain(a1)), (*(v18 + 16) = v19, *(v18 + 112) = a2, *(v18 + 114) = a2 - 1, *(v18 + 184) = -1, v20 = MEMORY[0x277CC0898], *(v18 + 124) = *MEMORY[0x277CC0898], *(v18 + 140) = *(v20 + 16), *(v18 + 80) = a3, *(v18 + 56) = *a4, *(v18 + 64) = a4[1], *(v18 + 72) = a4[2], !a5) ? (v21 = 0) : (v21 = CFRetain(a5)), *(v18 + 48) = v21, v22 = FigSimpleMutexCreate(), (*(v18 + 104) = v22) == 0))
  {
    APSLogErrorAt(0);
    v34 = 0;
LABEL_96:
    v42 = 0;
LABEL_97:
    v44 = 0;
    v47 = -6728;
    goto LABEL_98;
  }

  v23 = APSGetFBOPropertyInt64(a1, @"APSAudioProtocolDriverHoseProperty_AudioBufferSize", &v49);
  LODWORD(v24) = v23 / 5;
  if (v23 / 5 >= 0x4000)
  {
    v24 = 0x4000;
  }

  else
  {
    v24 = v24;
  }

  *(v18 + 24) = v23 - v24;
  *(v18 + 40) = APSGetFBOPropertyInt64(a1, @"APSAudioProtocolDriverHoseProperty_AudioBatchMaxSize", &v49);
  if (v49)
  {
    *(v18 + 40) = 64;
    v49 = 0;
  }

  v25 = APSGetFBOPropertyInt64(a1, @"APSAudioProtocolDriverHoseProperty_AudioBatchTargetDurationMs", &v49) * 0.001;
  *(v18 + 32) = v25;
  if (v49)
  {
    *(v18 + 32) = 0x3FD0000000000000;
    v49 = 0;
    v25 = 0.25;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
  {
    if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1)
    {
LABEL_22:
      LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus APSAudioProtocolDriverSenderHoseControllerAPATCreate(APSAudioProtocolDriverHoseDataAPATRef, uint16_t, uint16_t, const APSAudioProtocolDriverSenderHoseControllerAPATMessageCallbacks, CFTypeRef, uint32_t, APSAudioHoseMetricCollectorRef, APSDataPacerRef, APSAudioProtocolDriverSenderHoseControllerAPATRef *)", 33554482, "HoseData [%{ptr}] highWatermarkBytes = %d startSeqNum = %u audioBatchMaxSize = %llu audioBatchTargetDurationSecs = %1.3f\n", a1, *(v18 + 24), a2, *(v18 + 40), *&v25);
      goto LABEL_24;
    }

    if (_LogCategory_Initialize())
    {
      v25 = *(v18 + 32);
      goto LABEL_22;
    }
  }

LABEL_24:
  v26 = *MEMORY[0x277CBECE8];
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v27)
  {
    v27(a1, @"APSAudioProtocolDriverHoseProperty_Name", v26, v18 + 88);
  }

  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v28)
  {
    v28(a1, @"APSAudioProtocolDriverHoseProperty_InputEncryptionKey", v26, &cf);
  }

  if (cf)
  {
    v29 = APSCryptorChaCha20Poly1305Create(v26, cf, 1, (v18 + 208));
    v49 = v29;
    if (v29)
    {
      goto LABEL_99;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  else
  {
    if (APSCryptorGetNull_sAPSCryptorNullOnce != -1)
    {
      dispatch_once_f(&APSCryptorGetNull_sAPSCryptorNullOnce, &APSCryptorGetNull_sAPSCryptorNull, nullCryptor_create);
    }

    *(v18 + 208) = CFRetain(APSCryptorGetNull_sAPSCryptorNull);
  }

  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v30)
  {
    v30(a1, @"APSAudioProtocolDriverHoseProperty_OutputEncryptionKey", v26, &cf);
  }

  if (cf)
  {
    v29 = APSCryptorChaCha20Poly1305Create(v26, cf, 1, (v18 + 216));
    v49 = v29;
    if (!v29)
    {
      v31 = *(v18 + 216);
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v32)
      {
        v33 = v32(v31);
      }

      else
      {
        v33 = 0;
      }

      *(v18 + 224) = v33;
      *(v18 + 232) = APSSettingsGetIntWithOverrideAndDefault(@"apatSRTCPEncrypt", 0, 1) != 0;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_47;
    }

LABEL_99:
    APSLogErrorAt(v29);
    v34 = 0;
    goto LABEL_74;
  }

  if (APSCryptorGetNull_sAPSCryptorNullOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetNull_sAPSCryptorNullOnce, &APSCryptorGetNull_sAPSCryptorNull, nullCryptor_create);
  }

  *(v18 + 216) = CFRetain(APSCryptorGetNull_sAPSCryptorNull);
LABEL_47:
  *(v18 + 337) = 0u;
  *(v18 + 312) = 0u;
  *(v18 + 328) = 0u;
  *(v18 + 117) = 1;
  v34 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v34)
  {
    APSLogErrorAt(0);
    goto LABEL_96;
  }

  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v36 = *(ProtocolVTable + 16)) == 0)
  {
    Mutable = 4294954508;
LABEL_72:
    v49 = Mutable;
    goto LABEL_73;
  }

  v37 = *(v36 + 8);
  if (!v37)
  {
    Mutable = 4294954514;
    goto LABEL_72;
  }

  Mutable = v37(a1, APSAudioProtocolDriverSenderHoseControllerAPATCreate_rtpCallbacks, v34);
  v49 = Mutable;
  if (!Mutable)
  {
    pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
    v39 = CMBaseObjectGetProtocolVTable();
    if (v39 && (v40 = *(v39 + 16)) != 0)
    {
      v41 = *(v40 + 24);
      if (v41)
      {
        Mutable = v41(a1, APSAudioProtocolDriverSenderHoseControllerAPATCreate_rtcpCallbacks, v34);
        v49 = Mutable;
        if (!Mutable)
        {
          Mutable = APSRTCPCCFBProcessorCreate((v18 + 176));
          v49 = Mutable;
          if (!Mutable)
          {
            Mutable = APSRTCPCCFBProcessorHintLimitSeqNum(*(v18 + 176), a2);
            v49 = Mutable;
            if (!Mutable)
            {
              Mutable = APSRTCPCCFBProcessorSetRateControlFeedbackInformationCallback(*(v18 + 176), hoseControllerAPAT_processCCFBRateControlFeedbackInformationCallback, v34);
              v49 = Mutable;
              if (!Mutable)
              {
                Mutable = APSRTPSeqNumRangeSetCreateMutable(v26, (v18 + 192));
                v49 = Mutable;
                if (!Mutable)
                {
                  Mutable = APSRTCPCCFBProcessorSetRequestRetransmitCallback(*(v18 + 176), hoseControllerAPAT_processCCFBRetransmitRequestCallback, v34);
                  v49 = Mutable;
                  if (!Mutable)
                  {
                    v42 = CFDictionaryCreateMutable(v26, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (v42)
                    {
                      FigCFDictionarySetInt32();
                      v43 = APSDataPacerBitRateCreate(v26, 0, v42, (v18 + 304));
                      v49 = v43;
                      if (!v43)
                      {
                        v44 = CFStringCreateF(&v49, "%{ptr}", v18);
                        v45 = v49;
                        if (v49 || (v45 = APSRateControllerAVCWrapperCreate(v44, a6, (v18 + 248)), (v49 = v45) != 0) || (v45 = APSRateControllerAVCWrapperSetProbingSequenceRequestedCallback(*(v18 + 248), hoseControllerAPAT_ProbingSequenceRequestedWithIDCallback, v34), (v49 = v45) != 0) || (v45 = APSDataPacerCongestionControlCreate(v26, *(v18 + 248), *(v18 + 304), a8, (v18 + 296)), (v49 = v45) != 0) || (v45 = APSAudioProtocolDriverHoseSetProperty(a1, *(v18 + 296)), (v49 = v45) != 0))
                        {
                          APSLogErrorAt(v45);
                        }

                        else
                        {
                          APSRateControllerAVCWrapperStart(*(v18 + 248));
                          v49 = 0;
                          if (a7)
                          {
                            *(v18 + 96) = CFRetain(a7);
                          }

                          *a9 = v18;
                          v18 = 0;
                        }

                        goto LABEL_76;
                      }

                      APSLogErrorAt(v43);
                      goto LABEL_75;
                    }

                    APSLogErrorAt(0);
                    goto LABEL_97;
                  }
                }
              }
            }
          }
        }

        goto LABEL_73;
      }

      Mutable = 4294954514;
    }

    else
    {
      Mutable = 4294954508;
    }

    v49 = Mutable;
  }

LABEL_73:
  APSLogErrorAt(Mutable);
LABEL_74:
  v42 = 0;
LABEL_75:
  v44 = 0;
LABEL_76:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  return v49;
}

uint64_t APSAudioProtocolDriverHoseSetProperty(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, @"APSAudioProtocolDriverHoseProperty_DataPacer", a2);
}

uint64_t hoseControllerAPAT_ProbingSequenceRequestedWithIDCallback(uint64_t a1, int a2, int a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = v5;
  if (a3 && v5)
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
    *(v6 + 260) = a2;
    *(v6 + 264) = a3;
    *(v6 + 257) = 1;
  }

  else if (!v5)
  {
    return 0;
  }

  CFRelease(v6);
  return 0;
}

uint64_t hoseControllerAPAT_processCCFBRetransmitRequestCallback(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus hoseControllerAPAT_processCCFBRetransmitRequestCallback(CFTypeRef, APSRTPSeqNumRangeSetRef)", 33554462, "[%{ptr}] hoseControllerAPAT_processCCFBRetransmitRequestCallback inLostSequenceNumbers=%@", v4, a2);
  }

  v5 = v4[24];
  if (v5)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v12 = 4294960591;
LABEL_23:
    v13 = v12;
    goto LABEL_18;
  }

  v7 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a2, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_addRangeApplier, v5);
  if (v7)
  {
    v12 = v7;
    goto LABEL_23;
  }

  v8 = v4[2];
  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v10 = *(ProtocolVTable + 16)) == 0)
  {
    v12 = 4294954508;
LABEL_17:
    v13 = v12;
LABEL_18:
    APSLogErrorAt(v13);
    goto LABEL_19;
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
    v12 = 4294954514;
    goto LABEL_17;
  }

  v12 = v11(v8);
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_19:
  CFRelease(v4);
  return v12;
}

uint64_t hoseControllerAPAT_processCCFBRateControlFeedbackInformationCallback(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (a2)
  {
    if (CFDictionaryGetCount(*(a2 + 24)))
    {
      FigSimpleMutexCheckIsLockedOnThisThread();
      v5 = APSRateControllerAVCWrapperAddFeedbackReport(*(v4 + 248), a2);
      if (v5)
      {
        a2 = v5;
        APSLogErrorAt(v5);
        goto LABEL_8;
      }

      if (!*(v4 + 256))
      {
        *(v4 + 256) = 1;
        APSDataPacerCongestionControlSetRateControllerPrimed(*(v4 + 296), 1);
      }
    }

    a2 = 0;
  }

LABEL_8:
  CFRelease(v4);
  return a2;
}

uint64_t hoseControllerAPAT_ReceiveRTCPDataBBuf(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = v5;
  if (!a3 || !v5)
  {
    v8 = 0;
    if (!v5)
    {
      return v8;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v7 = FigCFEqual();
  if (!v7)
  {
LABEL_11:
    APSLogErrorAt(v7);
    v8 = 4294960591;
    goto LABEL_6;
  }

  FigSimpleMutexLock();
  v10.length = CFArrayGetCount(a3);
  v10.location = 0;
  CFArrayApplyFunction(a3, v10, hoseControllerAPAT_receiveSecureRTCPDataBBufApplierInternal, v6);
  FigSimpleMutexUnlock();
  v8 = 0;
LABEL_6:
  CFRelease(v6);
  return v8;
}

void hoseControllerAPAT_receiveSecureRTCPDataBBufApplierInternal(void *a1, void *a2)
{
  cf = 0;
  CMGetAttachment(a1, @"arrivalTicks", 0);
  UInt64 = FigCFNumberGetUInt64();
  if (!UInt64)
  {
    UInt64 = mach_absolute_time();
  }

  if (APSRTCPBBufIsKnown(a1))
  {
    if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
    {
      dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
    }

    v5 = APSSRTCPBBufCopyRTCPBBuf(a1, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, a2[26], &cf);
    v6 = v5;
    if (v5 == -6754)
    {
      APSAudioHoseMetricCollectorIncrementRTCPSignatureFailureCountForHose(a2[12], a2[2]);
LABEL_8:
      v7 = v6;
LABEL_9:
      APSLogErrorAt(v7);
      goto LABEL_12;
    }

    if (v5)
    {
      goto LABEL_8;
    }

    v8 = *MEMORY[0x277CBECE8];
    v9[0] = a2;
    v9[1] = UInt64;
    v7 = APSCompoundRTCPBBufApplyFunction(cf, v8, hoseControllerAPAT_receiveRTCPDataBBufApplierInternal, v9);
    if (v7)
    {
      goto LABEL_9;
    }
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t hoseControllerAPAT_receiveRTCPDataBBufApplierInternal(OpaqueCMBlockBuffer *a1, uint64_t *a2)
{
  if (!APSRTCPBBufIsCCFB(a1))
  {
    return 0;
  }

  v5 = *a2;
  v4 = a2[1];
  cf = 0;
  v14 = 0;
  v6 = APSCompactNTPMakeWithUpTicks(v4, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  v13 = -1;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v7 = APSRTCPBBufIsCCFB(a1);
  if (!v7)
  {
    APSLogErrorAt(v7);
    v11 = 4294960591;
    goto LABEL_10;
  }

  ReportTimestamp = APSRTCPCCFBBBufGetReportTimestamp(a1, &v14);
  if (ReportTimestamp)
  {
    v11 = ReportTimestamp;
LABEL_21:
    APSLogErrorAt(ReportTimestamp);
    goto LABEL_10;
  }

  ReportTimestamp = APSRTCPCCFBBBufGetTrailingUnReceivedRangeWithMediaSourceSSRC(a1, *(v5 + 80) << 16, &v13);
  if (ReportTimestamp)
  {
    v11 = ReportTimestamp;
    goto LABEL_21;
  }

  *(v5 + 184) = v13;
  ReportTimestamp = APSRTCPCCFBBBufCopyRecordsWithMediaSourceSSRC(a1, *MEMORY[0x277CBECE8], *(v5 + 80) << 16, &cf);
  if (ReportTimestamp)
  {
    v11 = ReportTimestamp;
    goto LABEL_21;
  }

  if (!cf)
  {
    *(v5 + 188) = 1;
    return 0;
  }

  v9 = CFDictionaryGetCount(*(cf + 3)) == 0;
  v10 = cf;
  *(v5 + 188) = v9;
  if (!v10)
  {
    return 0;
  }

  if (!CFDictionaryGetCount(v10[3]))
  {
    v11 = 0;
    goto LABEL_10;
  }

  ReportTimestamp = APSRTCPCCFBProcessorUpdateFeedback(*(v5 + 176), cf, v14, v6);
  v11 = ReportTimestamp;
  if (ReportTimestamp)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    APSLogErrorAt(v11);
  }

  return v11;
}

uint64_t hoseControllerAPAT_CopyRTCPDataBBufsToSend(uint64_t a1, uint64_t a2, CFArrayRef *a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (a2)
  {
    v7 = FigCFEqual();
    if (v7)
    {
      *a3 = 0;
      FigSimpleMutexLock();
      if (!*(v6 + 200))
      {
LABEL_21:
        v17 = 0;
        v16 = 0;
        *(v6 + 328) = *(v6 + 328);
        *a3 = 0;
        goto LABEL_22;
      }

      cf = 0;
      values = 0;
      FigSimpleMutexCheckIsLockedOnThisThread();
      v8 = *(v6 + 176);
      if (v8 && (v9 = *(v8 + 16)) != 0)
      {
        v10 = *(v9 + 16);
      }

      else
      {
        v10 = 0;
      }

      if (hoseControllerAPAT_shouldGenerateRTCPDiscardReportPacketInternal(v6, v10))
      {
        v11 = *MEMORY[0x277CBECE8];
        v12 = APSRTCPXRRLEBlockBBufCreateWithSeqNumRangeSet(*MEMORY[0x277CBECE8], 0x19u, *(v6 + 80) << 16, v10, 1, &values);
        if (v12)
        {
          v16 = v12;
          APSLogErrorAt(v12);
          v17 = 0;
        }

        else
        {
          v13 = CFArrayCreate(v11, &values, 1, MEMORY[0x277CBF128]);
          if (v13)
          {
            v14 = v13;
            v15 = APSRTCPXRBBufCreateWithRTCPXRBlockBBufs(v11, *(v6 + 80) << 16, v13, &cf);
            v16 = v15;
            if (v15)
            {
              APSLogErrorAt(v15);
              if (cf)
              {
                CFRelease(cf);
              }

              v17 = 0;
            }

            else
            {
              v17 = cf;
              cf = 0;
            }

            CFRelease(v14);
          }

          else
          {
            APSLogErrorAt(0);
            v17 = 0;
            v16 = 4294960568;
          }
        }
      }

      else
      {
        v17 = 0;
        v16 = 0;
      }

      if (values)
      {
        CFRelease(values);
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        if (!v17)
        {
          v16 = 0;
          goto LABEL_22;
        }

        v18 = CFArrayEnsureCreatedAndAppend();
        if (!v18)
        {
          *(v6 + 200) = 0;
          CFRelease(v17);
          values = 0;
          goto LABEL_21;
        }

        v16 = v18;
      }

      APSLogErrorAt(v18);
LABEL_22:
      FigSimpleMutexUnlock();
      if (v17)
      {
        CFRelease(v17);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v7 = 0;
  }

  APSLogErrorAt(v7);
  v16 = 4294960591;
LABEL_24:
  CFRelease(v6);
  return v16;
}

BOOL hoseControllerAPAT_shouldGenerateRTCPDiscardReportPacketInternal(uint64_t a1, uint64_t a2)
{
  Span = APSRTPSeqNumRangeSetGetSpan(a2);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (HIWORD(Span))
  {
    return 1;
  }

  result = 1;
  if (*(a1 + 184) <= 0x8000FFFF && *(a1 + 184) == Span)
  {
    return *(a1 + 188) == 0;
  }

  return result;
}

uint64_t hoseControllerAPAT_CopyAudioDataBBufs(uint64_t a1, uint64_t a2, const __CFArray **a3, char *a4)
{
  v79 = 0.0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (a2)
  {
    v78 = a2;
    if (FigCFEqual())
    {
      if (a3)
      {
        if (a4)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          if (Mutable)
          {
            v10 = Mutable;
            v11 = (*(v8 + 64))(*(v8 + 48));
            if (v11)
            {
              APSLogErrorAt(v11);
              goto LABEL_124;
            }

            FigSimpleMutexLock();
            ++*(v8 + 240);
            v12 = mach_absolute_time();
            v13 = APSCompactNTPMakeWithUpTicks(v12, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
            LODWORD(time2.value) = 0;
            FigSimpleMutexCheckIsLockedOnThisThread();
            v14 = *(v8 + 176);
            if (v14)
            {
              v15 = *(v14 + 16);
              if (v15)
              {
                v16 = *(v15 + 16);
                if (v16)
                {
                  if (*(v16 + 24) && *(v14 + 24))
                  {
                    v17 = *(v14 + 32);
                    RTOEstimate = APSRTCPCCFBProcessorGetRTOEstimate(v14, &time2);
                    if (!RTOEstimate)
                    {
                      time.value = MEMORY[0x277D85DD0];
                      *&time.timescale = 0x40000000;
                      time.epoch = __hoseControllerAPAT_copyAudioDataBBufsForRetransmissionInternal_block_invoke;
                      v81 = &__block_descriptor_tmp_2724;
                      v82 = &v79;
                      v83 = v8;
                      v84 = v10;
                      v85 = vrev64_s32(v17);
                      value = time2.value;
                      v87 = v13;
                      v19 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(v16, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_blockApplier, &time);
                      if (!v19)
                      {
                        goto LABEL_15;
                      }

                      v75 = v19;
LABEL_149:
                      v73 = v75;
                      goto LABEL_133;
                    }

                    v75 = RTOEstimate;
                    if (RTOEstimate != -6718)
                    {
                      APSLogErrorAt(RTOEstimate);
                      goto LABEL_149;
                    }
                  }
                }
              }
            }

LABEL_15:
            FigSimpleMutexCheckIsLockedOnThisThread();
            v76 = a3;
            v77 = a4;
            if (*(v8 + 116))
            {
              if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 10 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus hoseControllerAPAT_copyAudioDataBBufsUntilRestingInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef, APSAudioProtocolDriverHoseDataAPATRef, CFMutableArrayRef, Float64 *, Boolean *)", 33554442, "[%{ptr}] Hose [%{ptr}] is resting\n", v8, v78);
              }

              v60 = 0;
              v46 = 0;
              goto LABEL_108;
            }

            v20 = *(v8 + 120);
            if (!v20)
            {
              goto LABEL_22;
            }

            if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
            {
              if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_21;
                }

                v20 = *(v8 + 120);
              }

              LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus hoseControllerAPAT_copyAudioDataBBufsUntilRestingInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef, APSAudioProtocolDriverHoseDataAPATRef, CFMutableArrayRef, Float64 *, Boolean *)", 33554482, "[%{ptr}] Hose [%{ptr}] has flush pending, pausing data transmission, flushPendingCount = %d \n", v8, v78, v20);
            }

LABEL_21:
            *(v8 + 116) = 0;
LABEL_22:
            v21 = MEMORY[0x277CC0898];
            v22 = 1;
            v23 = v78;
            while (1)
            {
              v24 = *(v8 + 116);
              if (!v22)
              {
                goto LABEL_102;
              }

              if (*(v8 + 116))
              {
                goto LABEL_104;
              }

              if (v79 >= *(v8 + 32))
              {
                goto LABEL_103;
              }

              if (CFArrayGetCount(v10) >= *(v8 + 40))
              {
                v24 = *(v8 + 116);
LABEL_102:
                if (v24)
                {
                  goto LABEL_104;
                }

LABEL_103:
                if (!CFArrayGetCount(v10))
                {
LABEL_104:
                  updated = hoseControllerAPAT_processAndUpdateProbingSequenceInternal(v8, 1, 0);
                  if (updated)
                  {
                    v46 = updated;
                    goto LABEL_134;
                  }
                }

                if ((*(v8 + 160) & 1) != 0 && (time = *(v8 + 148), time2 = *(v8 + 124), !CMTimeCompare(&time, &time2)))
                {
                  v60 = 1;
                  v71 = hoseControllerAPAT_processAndUpdateProbingSequenceInternal(v8, 1, 0);
                  v46 = v71;
                  if (v71)
                  {
                    APSLogErrorAt(v71);
                  }
                }

                else
                {
                  v46 = 0;
                  v60 = *(v8 + 116);
                }

LABEL_108:
                *(v8 + 117) = CFArrayGetCount(v10) == 0;
                if (v46)
                {
                  v73 = v46;
                  goto LABEL_133;
                }

                time.value = 0;
                Count = CFArrayGetCount(v10);
                if (Count < 1)
                {
                  v63 = 0;
LABEL_119:
                  *(v8 + 336) += v63;
                  *(v8 + 328) += CFArrayGetCount(v10);
                  if (!*(v8 + 352) && v63)
                  {
                    *(v8 + 352) = 1;
                    hoseControllerAPAT_updateHoseStatsInternal(v8);
                  }

                  *v76 = v10;
                  v10 = 0;
                  *v77 = v60;
                }

                else
                {
                  v62 = Count;
                  v63 = 0;
                  v64 = 0;
                  while (1)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v10, v64);
                    if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
                    {
                      dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
                    }

                    v66 = APSSRTPBBufCreateWithRTPBBuf(APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, ValueAtIndex, *(v8 + 216), &time);
                    if (v66)
                    {
                      break;
                    }

                    DataLength = CMBlockBufferGetDataLength(time.value);
                    CFArraySetValueAtIndex(v10, v64, time.value);
                    if (time.value)
                    {
                      CFRelease(time.value);
                      time.value = 0;
                    }

                    v63 += DataLength;
                    if (v62 == ++v64)
                    {
                      goto LABEL_119;
                    }
                  }

                  v72 = v66;
                  APSLogErrorAt(v66);
                  if (time.value)
                  {
                    CFRetain(time.value);
                  }

                  v73 = v72;
LABEL_133:
                  APSLogErrorAt(v73);
                }

                FigSimpleMutexUnlock();
LABEL_124:
                v68 = (*(v8 + 72))(*(v8 + 48));
                CFRelease(v8);
                if (v10)
                {
                  v69 = v10;
                  goto LABEL_126;
                }

                return v68;
              }

              v96 = 0;
              v95 = 0;
              v93 = *v21;
              v94 = 0;
              v92 = 0.0;
              v91 = 0;
              v90 = 0;
              v89 = v93;
              v88 = 0;
              FigSimpleMutexCheckIsLockedOnThisThread();
              v25 = *(v8 + 184);
              v26 = *(v8 + 112);
              if (v25 <= 0x8000FFFF && (((v25 - 0x10000) & 0x80000000) != 0 || (v25 - v26) > 0 || HIWORD(v25) <= (v26 - v25)))
              {
                if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 30)
                {
                  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1)
                  {
                    goto LABEL_88;
                  }

                  if (_LogCategory_Initialize())
                  {
                    v26 = *(v8 + 112);
LABEL_88:
                    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus hoseControllerAPAT_copySingleAudioDataBBufInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef, APSAudioProtocolDriverHoseDataAPATRef, CFMutableArrayRef, Float64 *, Boolean *)", 33554462, "[%{ptr}] Requested seqNum: %u, is not within CCFB unreceived range", v8, v26);
                  }
                }

                v22 = 0;
                v46 = 0;
                goto LABEL_71;
              }

              PayloadType = (*(v8 + 56))(*(v8 + 48), v26, &v95, &v94, &v93, &v92, &v91, &v96);
              if (PayloadType)
              {
                v46 = PayloadType;
                goto LABEL_59;
              }

              if (!v96)
              {
                v54 = *(v8 + 114);
                v55 = *(v8 + 112);
                if (v54 == v55)
                {
                  v56 = 30;
                }

                else
                {
                  v56 = 50;
                }

                if (v56 >= gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT)
                {
                  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1)
                  {
                    goto LABEL_81;
                  }

                  v59 = _LogCategory_Initialize();
                  v55 = *(v8 + 112);
                  if (v59)
                  {
                    v54 = *(v8 + 114);
LABEL_81:
                    if (v54 == v55)
                    {
                      v57 = 33554462;
                    }

                    else
                    {
                      v57 = 33554482;
                    }

                    time = *(v8 + 124);
                    Seconds = CMTimeGetSeconds(&time);
                    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus hoseControllerAPAT_copySingleAudioDataBBufInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef, APSAudioProtocolDriverHoseDataAPATRef, CFMutableArrayRef, Float64 *, Boolean *)", v57, "[%{ptr}] No message for HoseData [%{ptr}]. Requested seqNum: %u, lastSentMediaTime: %f", v8, v23, v55, *&Seconds);
                    LOWORD(v55) = *(v8 + 112);
                  }
                }

                v22 = 0;
                v46 = 0;
                *(v8 + 114) = v55;
                goto LABEL_71;
              }

              v28 = CMBlockBufferGetDataLength(v96);
              v29 = *(v8 + 224);
              PayloadType = APSRTPBBufGetPayloadType(v96, &v90);
              if (PayloadType)
              {
                v46 = PayloadType;
                goto LABEL_59;
              }

              v30 = v90;
              v31 = v95;
              *(v8 + 114) = v95;
              v32 = v31 + 1;
              *(v8 + 112) = v31 + 1;
              if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 10)
              {
                if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_38;
                  }

                  v32 = *(v8 + 112);
                }

                time = v93;
                v33 = CMTimeGetSeconds(&time);
                LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus hoseControllerAPAT_copySingleAudioDataBBufInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef, APSAudioProtocolDriverHoseDataAPATRef, CFMutableArrayRef, Float64 *, Boolean *)", 33554442, "Enqueue to send audio packet with seqNum:%u, mediaTime:%f", v32, v33);
              }

LABEL_38:
              if (v30 == 115 || v30 == 112)
              {
                CMGetAttachment(v96, @"startWaterMark", 0);
                if (FigCFEqual())
                {
                  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus hoseControllerAPAT_copySingleAudioDataBBufInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef, APSAudioProtocolDriverHoseDataAPATRef, CFMutableArrayRef, Float64 *, Boolean *)", 33554482, "[%{ptr}] Hose [%{ptr}] encountered StartWaterMark attachment for seqNum: %u, scheduling SendWindow now!", v8, v23, v95);
                  }

                  *(v8 + 200) = 1;
                  v34 = *(v8 + 16);
                  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
                  ProtocolVTable = CMBaseObjectGetProtocolVTable();
                  if (ProtocolVTable)
                  {
                    v36 = *(ProtocolVTable + 16);
                    if (v36)
                    {
                      v37 = *(v36 + 32);
                      if (v37)
                      {
                        v37(v34);
                      }
                    }
                  }
                }

                v38 = *&v93.value;
                *(v8 + 124) = *&v93.value;
                epoch = v93.epoch;
                *(v8 + 140) = v93.epoch;
                *&time2.value = v38;
                time2.epoch = epoch;
                pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
                v40 = CMBaseObjectGetProtocolVTable();
                if (!v40 || (v41 = *(v40 + 16)) == 0)
                {
                  v46 = 4294954508;
LABEL_58:
                  PayloadType = v46;
                  goto LABEL_59;
                }

                v42 = *(v41 + 8);
                if (!v42)
                {
                  v46 = 4294954514;
                  goto LABEL_58;
                }

                time = time2;
                v43 = v42(v23, &time);
                if (v43)
                {
                  v46 = v43;
                  goto LABEL_58;
                }
              }

              v44 = v94;
              FigSimpleMutexCheckIsLockedOnThisThread();
              v45 = *(v8 + 24);
              if (v45 <= v44)
              {
                if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 10)
                {
                  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1)
                  {
                    goto LABEL_56;
                  }

                  if (_LogCategory_Initialize())
                  {
                    v45 = *(v8 + 24);
LABEL_56:
                    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "Boolean hoseControllerAPAT_dataHoseAPATIsHighWaterMarkReachedInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef, uint64_t)", 33554442, "DataHose [%{ptr}] reached highwater: %u", v44, v45);
                  }
                }

                *(v8 + 116) = 1;
              }

              v47 = v91;
              v48 = v94;
              FigSimpleMutexCheckIsLockedOnThisThread();
              v49 = *(v8 + 24);
              FigSimpleMutexCheckIsLockedOnThisThread();
              if (v47 >= 3 && v49 - 1000 > v48 && *(v8 + 257))
              {
                *(v8 + 272) = *(v8 + 260);
                *(v8 + 280) = 0;
                *(v8 + 284) = *(v8 + 240);
                *(v8 + 257) = 0;
                APSDataPacerCongestionControlSetProbing(*(v8 + 296), 1);
                *(v8 + 288) = 1;
              }

              v50 = v29 + v28;
              PayloadType = APSDataPacerBitRateUpdate(*(v8 + 304), v50, v92);
              v23 = v78;
              if (PayloadType)
              {
                v46 = PayloadType;
              }

              else
              {
                PayloadType = hoseControllerAPAT_processAndUpdateProbingSequenceInternal(v8, 0, &v88);
                if (PayloadType)
                {
                  v46 = PayloadType;
                }

                else
                {
                  HostTimeClock = CMClockGetHostTimeClock();
                  CMClockGetTime(&v89, HostTimeClock);
                  v52 = *(v8 + 176);
                  v53 = v95;
                  time2 = v89;
                  CMTimeConvertScale(&time, &time2, 0x10000, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
                  PayloadType = APSRTCPCCFBProcessorAddPacketSizeAndSendTime(v52, v53, v50, LODWORD(time.value), v88, *(v8 + 272));
                  v46 = PayloadType;
                  if (!PayloadType)
                  {
                    CFArrayAppendValue(v10, v96);
                    v79 = v92 + v79;
                    v22 = 1;
                    goto LABEL_71;
                  }
                }
              }

LABEL_59:
              APSLogErrorAt(PayloadType);
              v22 = 0;
LABEL_71:
              if (v96)
              {
                CFRelease(v96);
              }

              if (v46)
              {
                updated = v46;
LABEL_134:
                APSLogErrorAt(updated);
                v60 = 0;
                goto LABEL_108;
              }
            }
          }

          v68 = 4294960568;
        }

        else
        {
          v68 = 4294960591;
        }
      }

      else
      {
        v68 = 4294960591;
      }
    }

    else
    {
      v68 = 4294960591;
    }
  }

  else
  {
    v68 = 4294960591;
  }

  APSLogErrorAt(0);
  v69 = v8;
LABEL_126:
  CFRelease(v69);
  return v68;
}

uint64_t __hoseControllerAPAT_copyAudioDataBBufsForRetransmissionInternal_block_invoke(uint64_t a1, int a2)
{
  v23 = 0;
  v20 = *MEMORY[0x277CC0898];
  v21 = *(MEMORY[0x277CC0898] + 16);
  v22 = 0;
  key_4 = 0.0;
  key = 0;
  destinationBuffer = 0;
  cf = 0;
  v15 = 0;
  if ((a2 & 0xFFFF0000) != 0)
  {
    v3 = 0;
    v4 = *MEMORY[0x277CBECE8];
    v5 = HIWORD(a2);
    v6 = a2;
    do
    {
      v7 = *(a1 + 40);
      if (**(a1 + 32) >= *(v7 + 32))
      {
        break;
      }

      Count = *(a1 + 48);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
        v7 = *(a1 + 40);
      }

      if (Count >= *(v7 + 40))
      {
        break;
      }

      MostRecentPacketSendTime = APSRTCPCCFBProcessorGetMostRecentPacketSendTime(*(v7 + 176), v6, &v23 + 1, &v23, &v15);
      if (MostRecentPacketSendTime)
      {
        goto LABEL_40;
      }

      v10 = APSRTPSeqNumRangeSetContainsSeqNum(*(*(a1 + 40) + 192), v6);
      if (v10)
      {
        APSRTPSeqNumRangeSetRemoveSeqNumRange(*(*(a1 + 40) + 192), v6 | 0x10000);
      }

      if (*(a1 + 56) - v23 >= 1)
      {
        v11 = v10 && !v15;
        if (v11 || (*(a1 + 60) - HIDWORD(v23)) >= *(a1 + 64))
        {
          MostRecentPacketSendTime = (*(*(a1 + 40) + 56))(*(*(a1 + 40) + 48), v6, &key, &v22, &v20, &key_4, &key + 2, &cf);
          if (MostRecentPacketSendTime)
          {
            goto LABEL_40;
          }

          v12 = cf;
          if (!cf)
          {
            if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT > 50)
            {
              goto LABEL_30;
            }

            if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus hoseControllerAPAT_copyAudioDataBBufsForRetransmissionInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef, CFMutableArrayRef, Float64 *)_block_invoke", 33554482, "[%{ptr}] There are no valid seqNums after %u in the protocolDriverSender txBuffer", *(a1 + 40), v6);
            }

            break;
          }

          if (key != v6)
          {
            goto LABEL_24;
          }

          MostRecentPacketSendTime = APSRTPBBufCreateMutableHeaderCopy(cf, v4, &destinationBuffer);
          if (MostRecentPacketSendTime)
          {
            goto LABEL_40;
          }

          sourceBytes = bswap32((*(*(a1 + 40) + 80) << 16) | 0xBAD);
          if (!destinationBuffer)
          {
            MostRecentPacketSendTime = 4294960591;
LABEL_40:
            APSLogErrorAt(MostRecentPacketSendTime);
            break;
          }

          MostRecentPacketSendTime = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 8uLL, 4uLL);
          if (MostRecentPacketSendTime)
          {
            goto LABEL_40;
          }

          CFArrayAppendValue(*(a1 + 48), destinationBuffer);
          v13 = *(a1 + 40);
          **(a1 + 32) = key_4 + **(a1 + 32);
          ++*(v13 + 320);
          MostRecentPacketSendTime = APSRTCPCCFBProcessorSetRetransmitTime(*(v13 + 176), key, *(a1 + 68));
          if (MostRecentPacketSendTime)
          {
            goto LABEL_40;
          }

          v12 = cf;
          if (cf)
          {
LABEL_24:
            CFRelease(v12);
            cf = 0;
          }

          if (destinationBuffer)
          {
            CFRelease(destinationBuffer);
            destinationBuffer = 0;
          }
        }
      }

      ++v6;
      ++v3;
    }

    while (v3 < v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_30:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return 0;
}

uint64_t hoseControllerAPAT_processAndUpdateProbingSequenceInternal(uint64_t a1, int a2, _BYTE *a3)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v6 = *(a1 + 288);
  if (v6 == 2)
  {
    if (*(a1 + 240) != *(a1 + 284))
    {
      APSDataPacerCongestionControlSetProbing(*(a1 + 296), 0);
      result = 0;
      *(a1 + 288) = 0;
      return result;
    }

    return 0;
  }

  if (v6 != 1)
  {
    return 0;
  }

  v7 = *(a1 + 280);
  if (v7 < *(a1 + 276))
  {
    if (a2)
    {
      if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
      {
        if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          v7 = *(a1 + 280);
        }

        LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus hoseControllerAPAT_processAndUpdateProbingSequenceInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef, Boolean, Boolean *)", 33554482, "[%{ptr}] (%@) Ending probing sequence early. SequenceID: %u Number of packets processed: %u", a1, *(a1 + 88), *(a1 + 272), v7);
      }

LABEL_13:
      result = 0;
      *(a1 + 288) = 2;
      return result;
    }

    *(a1 + 280) = v7 + 1;
    *(a1 + 284) = *(a1 + 240);
    *a3 = 1;
    if (*(a1 + 280) == *(a1 + 276))
    {
      goto LABEL_13;
    }

    return 0;
  }

  APSLogErrorAt(0);
  return 4294960587;
}

double hoseControllerAPAT_updateHoseStatsInternal(uint64_t a1)
{
  value[0] = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  mach_absolute_time();
  if ((UpTicksToMilliseconds() - *(a1 + 312)) < 0x3E9)
  {
    return result;
  }

  v3 = *(a1 + 176);
  if (!v3)
  {
    APSLogErrorAt(0);
    goto LABEL_37;
  }

  if (!*(v3 + 40))
  {
LABEL_37:
    v5 = 0;
    v6 = 0;
    v4 = -1;
    goto LABEL_5;
  }

  CMTimeMake(&time, *(v3 + 44), 0x10000);
  CMTimeConvertScale(&value[1], &time, 1000, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  v4 = *&value[1];
  v5 = 1;
  v6 = *&value[1];
LABEL_5:
  if (APSRTCPCCFBProcessorGetRTOEstimate(*(a1 + 176), value))
  {
    v7 = -1;
  }

  else
  {
    CMTimeMake(&time, value[0], 0x10000);
    CMTimeConvertScale(&value[1], &time, 1000, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
    v7 = *&value[1];
  }

  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
  {
    if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize())
    {
      v8 = *(a1 + 88);
      v9 = *(a1 + 112);
      time = *(a1 + 124);
      Seconds = CMTimeGetSeconds(&time);
      LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "void hoseControllerAPAT_updateHoseStatsInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef)", 33554482, "[%{ptr}] (%@) SeqNum: %u, lastSentMediaTime: %1.3f, TotalTxByteCount: %llu, TotalRTPTxByteCount: %llu, TotalRTCPTxByteCount: %llu, TxPacketCount: %llu, ReTxPacketCount: %llu, RTT Estimate: %lld ms, RTO Estimate: %lld ms", a1, v8, v9, *&Seconds, *(a1 + 344) + *(a1 + 336), *(a1 + 336), *(a1 + 344), *(a1 + 328), *(a1 + 320), v4, v7);
    }

    if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50)
    {
      if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize())
      {
        v11 = *(a1 + 88);
        v12 = [*(*(a1 + 248) + 24) bandwidthEstimation];
        v13 = [*(*(a1 + 248) + 24) owrd];
        v14 = *(a1 + 304);
        MaxBitrate = APSRateControllerAVCWrapperGetMaxBitrate(*(a1 + 248));
        LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "void hoseControllerAPAT_updateHoseStatsInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef)", 33554482, "[%{ptr}] (%@) BandwidthEstimation: %zu kbps, OWRD: %zu ms, minBitRateDataPacer: %@, maxBitrate: %llu ", a1, v11, v12, v13, v14, MaxBitrate);
      }

      if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
      {
        v16 = *(a1 + 176);
        if (v16)
        {
          v16 = *(v16 + 16);
          if (v16)
          {
            v16 = *(v16 + 16);
          }
        }

        LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "void hoseControllerAPAT_updateHoseStatsInternal(APSAudioProtocolDriverSenderHoseControllerAPATRef)", 33554482, "[%{ptr}] (%@) TUR: %u..<%u, SendWindow: %@", a1, *(a1 + 88), *(a1 + 184), *(a1 + 186) + *(a1 + 184), v16);
      }
    }
  }

  if (*(a1 + 352))
  {
    v17 = *(a1 + 176);
    if (v17 && (v18 = *(v17 + 16)) != 0)
    {
      v19 = *(v18 + 16);
    }

    else
    {
      v19 = 0;
    }

    Span = APSRTPSeqNumRangeSetGetSpan(v19);
    if (v19)
    {
      v21 = *(v19 + 24);
    }

    else
    {
      v21 = 0;
    }

    APSAudioHoseMetricCollectorUpdateSendWindowDataForHose(*(a1 + 96), *(a1 + 16), HIWORD(Span), v21);
    v22 = *(a1 + 96);
    v23 = *(a1 + 16);
    TargetBitrate = APSRateControllerAVCWrapperGetTargetBitrate(*(a1 + 248));
    MinBitrate = APSRateControllerAVCWrapperGetMinBitrate(*(a1 + 248));
    v26 = APSRateControllerAVCWrapperGetMaxBitrate(*(a1 + 248));
    APSAudioHoseMetricCollectorUpdateRateControllerDataForHose(v22, v23, TargetBitrate, MinBitrate, v26, 1000 * [*(*(a1 + 248) + 24) bandwidthEstimation], objc_msgSend(*(*(a1 + 248) + 24), "owrd"));
    APSAudioHoseMetricCollectorUpdateAPATTransmissionDataForHose(*(a1 + 96), *(a1 + 16), *(a1 + 328), *(a1 + 320), *(a1 + 336), *(a1 + 344));
    if (v5)
    {
      APSAudioHoseMetricCollectorUpdateRoundTripTimeDataForHose(*(a1 + 96), *(a1 + 16), v6);
    }

    APSAudioHoseMetricCollectorUpdateSlotsAvailableCountForHose(*(a1 + 96), *(a1 + 16), *(a1 + 186));
  }

  mach_absolute_time();
  *(a1 + 312) = UpTicksToMilliseconds();
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  return result;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATTriggerBurst(uint64_t a1)
{
  FigSimpleMutexLock();
  *(a1 + 116) = 0;
  v2 = *(a1 + 120);
  FigSimpleMutexUnlock();
  if (v2)
  {
    return 0;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 10 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus APSAudioProtocolDriverSenderHoseControllerAPATTriggerBurst(APSAudioProtocolDriverSenderHoseControllerAPATRef)", 33554442, "[%{prt}] Hose [%{ptr}] APSAudioProtocolDriverSenderHoseControllerAPATTriggerBurst", a1, *(a1 + 16));
  }

  v3 = *(a1 + 16);
  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0)
  {
    v7 = 4294954508;
LABEL_12:
    APSLogErrorAt(v7);
    return v7;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = 4294954514;
    goto LABEL_12;
  }

  v7 = v6(v3);
  if (v7)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerNotifyPendingFlushForHose(uint64_t a1)
{
  FigSimpleMutexLock();
  ++*(a1 + 120);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerNotifyFlushCompleteForHose(uint64_t a1)
{
  FigSimpleMutexLock();
  --*(a1 + 120);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATNotifyAudioDataAvailableIfNecessary(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 116);
  v3 = *(a1 + 117);
  FigSimpleMutexUnlock();
  if (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT <= 10 && (gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT != -1 || _LogCategory_Initialize()))
  {
    v4 = "true";
    if (v2)
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    if (!v3)
    {
      v4 = "false";
    }

    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderHoseControllerAPAT, "OSStatus APSAudioProtocolDriverSenderHoseControllerAPATNotifyAudioDataAvailableIfNecessary(APSAudioProtocolDriverSenderHoseControllerAPATRef)", 33554442, "[%{ptr}] Hose [%{ptr}] APSAudioProtocolDriverSenderHoseControllerAPATNotifyAudioDataAvailableIfNecessary isResting: %s, potentialEndofClientCallback: %s", a1, *(a1 + 16), v5, v4);
  }

  if (v2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v10 = *(ProtocolVTable + 16)) == 0)
  {
    v7 = 4294954508;
LABEL_22:
    APSLogErrorAt(v7);
    return v7;
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
    v7 = 4294954514;
    goto LABEL_22;
  }

  v7 = v11(v8);
  if (v7)
  {
    goto LABEL_22;
  }

  return v7;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATForceTransmitDataAtMediaTime(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a2 + 16);
  *(a1 + 148) = *a2;
  *(a1 + 164) = v4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATCancelAllForcedDataTransmissions(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = MEMORY[0x277CC0898];
  *(a1 + 148) = *MEMORY[0x277CC0898];
  *(a1 + 164) = *(v2 + 16);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATPrunePacketsWithinRange(void *a1, unsigned int a2)
{
  if (a2 > 0x8000FFFF)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  FigSimpleMutexLock();
  v4 = APSRTCPCCFBProcessorFlushPacketsWithinRange(a1[22], a2);
  if (v4)
  {
    v5 = v4;
    goto LABEL_10;
  }

  v4 = APSRTCPCCFBProcessorHintLimitSeqNum(a1[22], (HIWORD(a2) + a2));
  if (v4)
  {
    v5 = v4;
    goto LABEL_10;
  }

  v4 = APSRTPSeqNumRangeSetRemoveSeqNumRange(a1[24], a2);
  v5 = v4;
  if (v4)
  {
LABEL_10:
    APSLogErrorAt(v4);
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATFlush(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 16);
  pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v4 = *(ProtocolVTable + 16)) == 0)
  {
    v6 = 4294954508;
LABEL_7:
    APSLogErrorAt(v6);
    goto LABEL_8;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    v6 = 4294954514;
    goto LABEL_7;
  }

  v8 = *MEMORY[0x277CC08F0];
  v9 = *(MEMORY[0x277CC08F0] + 16);
  v6 = v5(v2, &v8);
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_8:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATFlushFromTime(uint64_t a1, CMTime *a2)
{
  FigSimpleMutexLock();
  time1 = *a2;
  v11 = *(a1 + 124);
  if (CMTimeCompare(&time1, &v11) < 0)
  {
    v5 = *&a2->value;
    *(a1 + 140) = a2->epoch;
    *(a1 + 124) = v5;
    v6 = *(a1 + 16);
    v11 = *a2;
    pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v8 = *(ProtocolVTable + 16)) != 0)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        time1 = v11;
        v4 = v9(v6, &time1);
        if (!v4)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 4294954514;
      }
    }

    else
    {
      v4 = 4294954508;
    }

    APSLogErrorAt(v4);
    goto LABEL_10;
  }

  v4 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATTick(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 176);
  if (v2 && (v3 = *(v2 + 16)) != 0)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  if (!hoseControllerAPAT_shouldGenerateRTCPDiscardReportPacketInternal(a1, v4))
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 16);
  pthread_once(&APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataAPATProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataAPATProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v7 = *(ProtocolVTable + 16)) == 0)
  {
    v10 = 4294954508;
LABEL_13:
    APSLogErrorAt(v10);
    goto LABEL_14;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    v10 = 4294954514;
    goto LABEL_13;
  }

  v9 = v8(v5);
  if (v9)
  {
    v10 = v9;
    goto LABEL_13;
  }

  *(a1 + 200) = 1;
LABEL_11:
  hoseControllerAPAT_updateHoseStatsInternal(a1);
  v10 = 0;
LABEL_14:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATGetLastDeliveredSeqNum(uint64_t a1, _WORD *a2)
{
  if (a2 && a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 136))
    {
      v4 = *(a1 + 176);
      if (v4 && (v5 = *(v4 + 16)) != 0)
      {
        v6 = *(v5 + 16);
      }

      else
      {
        v6 = 0;
      }

      v7 = 0;
      *a2 = APSRTPSeqNumRangeSetGetSpan(v6) - 1;
    }

    else
    {
      APSLogErrorAt(0);
      v7 = 4294960569;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v7;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATProbingSequenceRequestedWithID(uint64_t a1, int a2, int a3)
{
  if (a1 && a3)
  {
    FigSimpleMutexLock();
    *(a1 + 260) = a2;
    *(a1 + 264) = a3;
    *(a1 + 257) = 1;
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t APSAudioProtocolDriverSenderHoseControllerAPATProbingStatus(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v2 = *(a1 + 288);
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v2;
}

uint64_t APSCMNotificationCenterPostNotificationAsync(const void *a1, const void *a2, const void *a3, const void *a4, int a5, NSObject *a6, dispatch_qos_class_t qos_class)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APSCMNotificationCenterPostNotificationAsync_block_invoke;
  block[3] = &__block_descriptor_tmp_2746;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = a4;
  v16 = a5;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos_class, 0, block);
  if (!v12)
  {
    return 4294960568;
  }

  v13 = v12;
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  dispatch_async(a6, v13);
  _Block_release(v13);
  return 0;
}

void __APSCMNotificationCenterPostNotificationAsync_block_invoke(void *a1)
{
  CMNotificationCenterPostNotification();
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {

    CFRelease(v5);
  }
}

double APSRoundToSignificantFigures(int a1, double a2)
{
  if (a2 == 0.0 || a1 == 0)
  {
    return 0.0;
  }

  v5 = log10(fabs(a2));
  v6 = __exp10(floor(v5) - (a1 - 1));
  return v6 * round(a2 / v6);
}

uint64_t APSHTTPParseByteRangeRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  *a4 = 0;
  *a5 = -1;
  result = HTTPParseByteRangeRequest();
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    if (*a4 < 0)
    {
      if (v10 != -1)
      {
        return 4294960586;
      }

      *a4 = v9 + a3;
    }

    else if ((v10 & 0x8000000000000000) == 0 && v10 <= a3)
    {
LABEL_9:
      if (v10 <= a3 && v9 < v10)
      {
        return 0;
      }

LABEL_13:
      if (gLogCategory_AirPlayHTTPUtilities <= 50)
      {
        if (gLogCategory_AirPlayHTTPUtilities == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return 4294960586;
          }

          v9 = *a4;
          v10 = *a5;
        }

        LogPrintF(&gLogCategory_AirPlayHTTPUtilities, "OSStatus APSHTTPParseByteRangeRequest(const char *, size_t, int64_t, int64_t *, int64_t *)", 50, "### Bad range (start=%lld, end=%lld, size=%lld)\n", v9, v10, a3);
      }

      return 4294960586;
    }

    *a5 = a3;
    v9 = *a4;
    v10 = a3;
    if (*a4 < 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t APSHTTPOpenLocalFile(const __CFString *a1, int *a2, off_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x401uLL);
  memset(&v11, 0, sizeof(v11));
  CString = CFStringGetCString(a1, buffer, 1025, 0x8000100u);
  v7 = -1;
  v8 = 4294960585;
  if (!CString || !buffer[0])
  {
    goto LABEL_21;
  }

  v7 = open(buffer, 0);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_6:
    if (fcntl(v7, 48, 1) && *__error())
    {
      __error();
    }

    if (fcntl(v7, 45, 1) && *__error())
    {
      __error();
    }

    if (!fstat(v7, &v11))
    {
      v8 = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    if (*__error())
    {
      v8 = *__error();
      if (v7 < 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 4294960596;
      if (v7 < 0)
      {
        goto LABEL_21;
      }
    }

    if (v8)
    {
      close(v7);
      v7 = -1;
    }

LABEL_21:
    if (a2)
    {
      goto LABEL_22;
    }

LABEL_26:
    close(v7);
    if (!a3)
    {
      return v8;
    }

    goto LABEL_23;
  }

  if (*__error())
  {
    v8 = *__error();
    if (v8)
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  v8 = 4294960596;
  if (!a2)
  {
    goto LABEL_26;
  }

LABEL_22:
  *a2 = v7;
  if (a3)
  {
LABEL_23:
    tv_sec = v11.st_mtimespec.tv_sec;
    *a3 = v11.st_size;
    a3[1] = tv_sec;
  }

  return v8;
}

uint64_t APSCryptorCBCCreate(uint64_t a1, const __CFData *a2, const __CFData *a3, CFTypeRef *a4)
{
  if (!a2)
  {
    v8 = 4294895585;
    APSLogErrorAt(0);
    return v8;
  }

  if (!a3)
  {
    v8 = 4294895585;
    v7 = 0;
LABEL_19:
    APSLogErrorAt(v7);
    return v8;
  }

  if (APSCryptorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetClassID_sRegisterOnce, &APSCryptorGetClassID_sClassID, cryptor_registerBaseClass);
  }

  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v8 = v7;
    goto LABEL_19;
  }

  CMBaseObjectGetDerivedStorage();
  CFDataGetBytePtr(a2);
  CFDataGetBytePtr(a3);
  v7 = AES_CBCFrame_Init();
  if (v7)
  {
    v8 = v7;
    goto LABEL_19;
  }

  CFDataGetBytePtr(a2);
  CFDataGetBytePtr(a3);
  v7 = AES_CBCFrame_Init();
  if (v7)
  {
    v8 = v7;
    goto LABEL_19;
  }

  if (gLogCategory_APSCryptorCBC <= 30 && (gLogCategory_APSCryptorCBC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSCryptorCBC, "OSStatus APSCryptorCBCCreate(CFAllocatorRef, CFDataRef, CFDataRef, APSCryptorRef *)", 33554462, "APSCryptorCBC %p created.\n", 0);
  }

  v8 = 0;
  *a4 = 0;
  return v8;
}

uint64_t cbcCryptor_DecryptMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t *a8)
{
  CMBaseObjectGetDerivedStorage();
  if (a7 < a5)
  {
    APSLogErrorAt(0);
    return 4294895585;
  }

  else
  {
    v11 = AES_CBCFrame_Update();
    if (v11)
    {
      v12 = v11;
      APSLogErrorAt(v11);
    }

    else
    {
      v12 = 0;
      if (a8)
      {
        *a8 = a5;
      }
    }
  }

  return v12;
}

uint64_t cbcCryptor_EncryptMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  CMBaseObjectGetDerivedStorage();
  if (a7 < a5)
  {
    APSLogErrorAt(0);
    return 4294895585;
  }

  else
  {
    v9 = AES_CBCFrame_Update();
    v10 = v9;
    if (v9)
    {
      APSLogErrorAt(v9);
    }
  }

  return v10;
}

__CFString *cbcCryptor_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSCryptorCBC %p>", a1);
  return Mutable;
}

uint64_t cbcCryptor_Finalize(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSCryptorCBC <= 30 && (gLogCategory_APSCryptorCBC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSCryptorCBC, "void cbcCryptor_Finalize(CMBaseObjectRef)", 33554462, "APSCryptor %p finalizing\n", a1);
  }

  AES_CBCFrame_Final();

  return AES_CBCFrame_Final();
}

uint64_t APSWiFiTransactionGetTypeID()
{
  if (gAPSWiFiTransactionInitOnce != -1)
  {
    dispatch_once_f(&gAPSWiFiTransactionInitOnce, 0, _APSWiFiTransactionGetTypeID);
  }

  return gAPSWiFiTransactionTypeID;
}

uint64_t _APSWiFiTransactionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSWiFiTransactionTypeID = result;
  return result;
}

void _APSWiFiTransactionFinalize(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 16);
    v7 = *(a1 + 48);
    v3 = [MEMORY[0x277D7BB38] shared];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___APSWiFiTransactionFinalize_block_invoke;
    v8[3] = &__block_descriptor_64_e8_v16__0q8l;
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = v2;
    v11 = a1;
    [v3 endTransaction:v2 completionHandler:v8];
  }

  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___APSWiFiTransactionPostTransactionReleasedEvent_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v4, block);
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    _Block_release(v6);
    *(a1 + 24) = 0;
  }
}

uint64_t APSWiFiTransactionCreate(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  *label = 0u;
  v18 = 0u;
  if (!a4)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (gAPSWiFiTransactionInitOnce != -1)
  {
    dispatch_once_f(&gAPSWiFiTransactionInitOnce, 0, _APSWiFiTransactionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v9 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = a2;
  *(Instance + 56) = a3;
  SNPrintF(label, 64, "APSWiFiTransaction.eventQueue.%{ptr}", Instance);
  v10 = dispatch_queue_create(label, 0);
  v9[4] = v10;
  if (!v10)
  {
    APSLogErrorAt(0);
    v13 = 4294960568;
    goto LABEL_13;
  }

  if (a1 >= 4)
  {
    v14 = v9[7];
    if (*v14 <= 90)
    {
      if (*v14 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v14 = v9[7];
      }

      LogPrintF(v14, "OSStatus APSWiFiTransactionCreate(APSWiFiTransactionType, void *, LogCategory *, APSWiFiTransactionRef *)", 33554522, "[%{ptr}] Failed to request transaction for invalid type: %d", v9[6], a1);
    }

LABEL_12:
    v13 = 4294960591;
    goto LABEL_13;
  }

  v9[2] = qword_22234DB78[a1];
  CFRetain(v9);
  v11 = [MEMORY[0x277D7BB38] shared];
  v12 = v9[2];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __APSWiFiTransactionCreate_block_invoke;
  v16[3] = &__block_descriptor_40_e8_v16__0q8l;
  v16[4] = v9;
  [v11 beginTransaction:v12 completionHandler:v16];
  v13 = 0;
  *a4 = CFRetain(v9);
LABEL_13:
  CFRelease(v9);
  return v13;
}

void __APSWiFiTransactionCreate_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = a2 == 0;
  if (a2)
  {
    v5 = 90;
  }

  else
  {
    v5 = 50;
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  if (v5 >= *v7)
  {
    if (*v7 == -1)
    {
      v14 = _LogCategory_Initialize();
      v6 = *(a1 + 32);
      if (!v14)
      {
        goto LABEL_19;
      }

      v7 = *(v6 + 56);
    }

    v8 = "Failed to start";
    if (!a2)
    {
      v8 = "Started";
    }

    v9 = *(v6 + 16);
    v10 = "AirPlaySoloMode";
    v11 = "AirPlayOverInfrastructure";
    v12 = "?";
    if (v9 == 19)
    {
      v12 = "MediaPlaying";
    }

    if (v9 != 17)
    {
      v11 = v12;
    }

    if (v9 != 9)
    {
      v10 = v11;
    }

    if (v9 == 5)
    {
      v13 = "AirPlaySinkMode";
    }

    else
    {
      v13 = v10;
    }

    LogPrintF(v7, "OSStatus APSWiFiTransactionCreate(APSWiFiTransactionType, void *, LogCategory *, APSWiFiTransactionRef *)_block_invoke", v5 | 0x2000000u, "[%{ptr}] %s %s Transaction [%{ptr}]%?{end} error: %ld", *(v6 + 48), v8, v13, v6, v4, a2);
    v6 = *(a1 + 32);
  }

LABEL_19:
  *(v6 + 40) = a2 == 0;

  CFRelease(v6);
}

void APSWiFiTransactionUpdateTransaction(int *a1, uint64_t a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  if (a5)
  {
    if (a3 < 4)
    {
      if (*a1 <= 50)
      {
        v10 = off_2784A3F30[a3];
        v11 = qword_22234DB78[a3];
        if (*a1 != -1 || _LogCategory_Initialize())
        {
          if (v11 == 5)
          {
            v12 = "AirPlaySinkMode";
          }

          else if (v11 == 9)
          {
            v12 = "AirPlaySoloMode";
          }

          else
          {
            v12 = "AirPlayOverInfrastructure";
            if (v11 != 17)
            {
              v12 = v10;
            }
          }

          v14 = "started";
          if (!a4)
          {
            v14 = "stopped";
          }

          LogPrintF(a1, "void APSWiFiTransactionUpdateTransaction(LogCategory *, void *, APSWiFiTransactionType, Boolean, APSWiFiTransactionRef *)", 33554482, "[%{ptr}] %s %s", a2, v12, v14);
        }
      }

      v15 = *a5;
      if (a4)
      {
        if (!v15)
        {

          APSWiFiTransactionCreate(a3, a2, a1, a5);
        }
      }

      else if (v15)
      {
        CFRelease(v15);
        *a5 = 0;
      }

      return;
    }

    v13 = 4294960591;
  }

  else
  {
    v13 = 0;
  }

  APSLogErrorAt(v13);
}

void APSWiFiTransactionSetReleaseHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __APSWiFiTransactionSetReleaseHandler_block_invoke;
  v3[3] = &unk_2784A3EF0;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_sync(v2, v3);
}

void __APSWiFiTransactionSetReleaseHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _Block_copy(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  if (v5)
  {
    _Block_release(v5);
    v4 = *(a1 + 40);
  }

  *(v4 + 24) = v3;
}

uint64_t APSKeyHolderGetClassID()
{
  if (APSKeyHolderGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSKeyHolderGetClassID_sRegisterOnce, &APSKeyHolderGetClassID_sClassID, keyHolder_registerBaseClass);
  }

  return APSKeyHolderGetClassID_sClassID;
}

uint64_t keyHolder_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&keyHolder_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSKeyHolderGetTypeID()
{
  if (APSKeyHolderGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSKeyHolderGetClassID_sRegisterOnce, &APSKeyHolderGetClassID_sClassID, keyHolder_registerBaseClass);
  }

  v1 = APSKeyHolderGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSContiguousAllocatorGetTypeID()
{
  if (gAPSContiguousAllocatorInitOnce != -1)
  {
    dispatch_once_f(&gAPSContiguousAllocatorInitOnce, 0, _APSContiguousAllocatorGetTypeID);
  }

  return gAPSContiguousAllocatorTypeID;
}

uint64_t _APSContiguousAllocatorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSContiguousAllocatorTypeID = result;
  return result;
}

void _APSContiguousAllocatorFinalize(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    malloc_zone_free(*(a1 + 16), v1);
    *(a1 + 24) = 0;
  }
}

uint64_t APSContiguousAllocatorCreate(size_t a1, malloc_zone_t *a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  if (gAPSContiguousAllocatorInitOnce != -1)
  {
    dispatch_once_f(&gAPSContiguousAllocatorInitOnce, 0, _APSContiguousAllocatorGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v11 = Instance;
  v12 = 4294895215;
  *(Instance + 96) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  if (a1 < 5)
  {
LABEL_22:
    APSLogErrorAt(0);
    CFRelease(v11);
    return v12;
  }

  if (!a2)
  {
    a2 = malloc_default_zone();
  }

  *(v11 + 16) = a2;
  *(v11 + 72) = a3;
  *(v11 + 88) = a1;
  *(v11 + 56) = a1;
  *(v11 + 64) = a4;
  if (a4)
  {
    v13 = malloc_type_zone_memalign(a2, a4, a1, 0x2246DD45uLL);
  }

  else
  {
    v13 = malloc_type_zone_calloc(a2, 1uLL, a1, 0x100004077774924uLL);
  }

  *(v11 + 24) = v13;
  if (!v13)
  {
    v12 = 4294895216;
    goto LABEL_22;
  }

  if (*(v11 + 64))
  {
    bzero(v13, a1);
    v13 = *(v11 + 24);
  }

  v14 = *(v11 + 56);
  *(v11 + 32) = &v13[v14];
  *(v11 + 40) = v13;
  *(v11 + 48) = v13;
  if (gLogCategory_APSContiguousAllocator > 50)
  {
    goto LABEL_17;
  }

  if (gLogCategory_APSContiguousAllocator == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_17;
    }

    v14 = *(v11 + 56);
  }

  LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorCreate(size_t, malloc_zone_t *, uint32_t, uint8_t, APSContiguousAllocatorRef *)", 33554482, "Created APSContiguousAllocator: size = %zu bytes minBlockSize = %zu bytes\n", v14, a3);
LABEL_17:
  v12 = 0;
  *a5 = v11;
  return v12;
}

uint64_t APSContiguousAllocatorAcquireBlock(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v17 = 4294895215;
LABEL_39:
    APSLogErrorAt(0);
    goto LABEL_29;
  }

  if (*(a1 + 72) > a2)
  {
    v17 = 4294895215;
    goto LABEL_39;
  }

  v5 = *(a1 + 64);
  if (v5 && a2 % v5)
  {
    v17 = 4294895215;
    goto LABEL_39;
  }

  if (a2 >= 0xFFFFFFFC)
  {
    v17 = 4294895215;
    goto LABEL_39;
  }

  if (!a3)
  {
    v17 = 4294895215;
    goto LABEL_39;
  }

  v6 = (a2 + 4);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8 <= v7 && *(a1 + 80))
  {
    if (v8 < v7)
    {
      if (v6 > v7 - v8)
      {
        goto LABEL_22;
      }

LABEL_15:
      v10 = v8 + v6;
      *v8 = a2;
      v11 = v8 + 1;
      *(a1 + 48) = v10;
      v12 = *(a1 + 80);
      v13 = v12 + v6;
      *(a1 + 80) = v13;
      v14 = *(a1 + 56);
      if (v13 <= v14)
      {
        v15 = *(a1 + 88);
        v16 = v15 - v6;
        *(a1 + 88) = v15 - v6;
        if (v15 - v6 >= 0 && v15 + v12 == v14)
        {
          *a3 = v11;
          if (gLogCategory_APSContiguousAllocator <= 10)
          {
            if (gLogCategory_APSContiguousAllocator == -1)
            {
              if (!_LogCategory_Initialize())
              {
                return 0;
              }

              v14 = *(a1 + 56);
              v13 = *(a1 + 80);
              v16 = *(a1 + 88);
            }

            LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorAcquireBlock(APSContiguousAllocatorRef, uint32_t, uint8_t **)", 33554442, "APSContiguousAllocatorAcquireBlock read = %p region = %p size = %zu (total size = %zu) totalSpace = %zu acquiredSpace = %zu freeSpace = %zu wasted = %zu\n", *(a1 + 40), v11, a2, (a2 + 4), v14, v13, v16, *(a1 + 96));
          }

          return 0;
        }
      }

LABEL_40:
      APSLogErrorAt(0);
      v17 = 4294895214;
      goto LABEL_29;
    }

    if (*(a1 + 88) != *(a1 + 96))
    {
      goto LABEL_40;
    }
  }

  else
  {
    v9 = *(a1 + 32) - v8;
    if (v6 <= v9)
    {
      goto LABEL_15;
    }

    v8 = *(a1 + 24);
    if (v6 <= v7 - v8)
    {
      *(a1 + 96) = v9;
      goto LABEL_15;
    }
  }

LABEL_22:
  v17 = 4294895212;
  if (gLogCategory_APSContiguousAllocator > 20)
  {
    return v17;
  }

  if (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize())
  {
    LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorAcquireBlock(APSContiguousAllocatorRef, uint32_t, uint8_t **)", 33554452, "APSContiguousAllocatorAcquireBlock not enough space, allocation failed.\n");
  }

LABEL_29:
  if (gLogCategory_APSContiguousAllocator <= 20 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorAcquireBlock(APSContiguousAllocatorRef, uint32_t, uint8_t **)", 33554452, "### ERROR APSContiguousAllocatorAcquireBlock err = %d\n", v17);
  }

  return v17;
}

uint64_t APSContiguousAllocatorGetFirstAcquiredBlock(uint64_t a1, void *a2)
{
  v2 = 4294895213;
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      if (*(a1 + 80))
      {
        *a2 = *(a1 + 40) + 4;
      }

      else
      {
        *a2 = 0;
      }

      return v2;
    }

    v2 = 4294895215;
  }

  APSLogErrorAt(0);
  if (gLogCategory_APSContiguousAllocator <= 90 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorGetFirstAcquiredBlock(APSContiguousAllocatorRef, uint8_t **)", 33554522, "### ERROR APSContiguousAllocatorGetFirstAcquiredBlock err = %d\n", v2);
  }

  return v2;
}

uint64_t APSContiguousAllocatorRelinquishBlock(void *a1, char *a2, uint64_t a3, _DWORD *a4)
{
  v8 = 4294895215;
  if (a1)
  {
    if (a3)
    {
      if (a2)
      {
        v9 = a1[5];
        if (v9 + 4 == a2)
        {
          if (a1[3] > a2)
          {
            v10 = 0;
          }

          else
          {
            if (a1[4] > a2)
            {
              v10 = *(a2 - 1);
              if (gLogCategory_APSContiguousAllocator > 10)
              {
                goto LABEL_11;
              }

              if (gLogCategory_APSContiguousAllocator == -1)
              {
                if (!_LogCategory_Initialize())
                {
LABEL_11:
                  if (v10 != a3)
                  {
                    goto LABEL_45;
                  }

                  bzero((a1[5] + 4), a3);
                  *(a2 - 1) = 0;
                  v11 = a1[4];
                  v12 = (a1[5] + a3 + 4);
                  a1[5] = v12;
                  if (v12 >= v11 || ((v11 - v12) & 0xFFFFFFFC) == 0 || !*v12 && v12 != a1[6])
                  {
                    v12 = a1[3];
                    a1[5] = v12;
                    a1[12] = 0;
                  }

                  if (a4 && v12 + 1 != a4 && gLogCategory_APSContiguousAllocator <= 90 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorRelinquishBlock(APSContiguousAllocatorRef, uint8_t *, uint32_t, uint8_t *)", 33554522, "### ERROR APSContiguousAllocatorRelinquishBlock inNextBlock !=(inAllocator->read + sizeof( uint32_t))\n", 0);
                  }

                  v13 = a1[10] - (a3 + 4);
                  a1[10] = v13;
                  v8 = 4294895214;
                  if (v13 < 0)
                  {
                    goto LABEL_44;
                  }

                  v14 = a1[11] + a3 + 4;
                  a1[11] = v14;
                  v15 = a1[7];
                  if (v14 > v15 && gLogCategory_APSContiguousAllocator <= 90)
                  {
                    if (gLogCategory_APSContiguousAllocator == -1)
                    {
                      v16 = _LogCategory_Initialize();
                      v14 = a1[11];
                      v15 = a1[7];
                      if (!v16)
                      {
                        goto LABEL_29;
                      }

                      v13 = a1[10];
                    }

                    LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorRelinquishBlock(APSContiguousAllocatorRef, uint8_t *, uint32_t, uint8_t *)", 33554522, "### ERROR APSContiguousAllocatorRelinquishBlock blockSize = %u totalSpace = %zu acquiredSpace = %zu freeSpace = %zu\n", a3, v15, v13, v14);
                    v14 = a1[11];
                    v15 = a1[7];
                  }

LABEL_29:
                  if (v14 <= v15)
                  {
                    if (gLogCategory_APSContiguousAllocator <= 10)
                    {
                      if (gLogCategory_APSContiguousAllocator != -1 || (v17 = _LogCategory_Initialize(), v14 = a1[11], v15 = a1[7], v17))
                      {
                        LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorRelinquishBlock(APSContiguousAllocatorRef, uint8_t *, uint32_t, uint8_t *)", 33554442, "APSContiguousAllocatorRelinquishBlock totalSpace = %zu acquiredSpace = %zu freeSpace = %zu wastedSpace = %zu\n", v15, a1[10], v14, a1[12]);
                        v14 = a1[11];
                        v15 = a1[7];
                      }
                    }

                    if (a1[10] + v14 == v15)
                    {
                      return 0;
                    }
                  }

LABEL_44:
                  v10 = a3;
                  goto LABEL_45;
                }

                v9 = a1[5];
              }

              LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorRelinquishBlock(APSContiguousAllocatorRef, uint8_t *, uint32_t, uint8_t *)", 33554442, "APSContiguousAllocatorRelinquishBlock read = %p inBlock = %p inBlockSize = %zu blockSize = %zu inNextBlock = %p\n", v9, a2, a3, v10, a4);
              goto LABEL_11;
            }

            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_45:
  APSLogErrorAt(0);
  if (gLogCategory_APSContiguousAllocator <= 90 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorRelinquishBlock(APSContiguousAllocatorRef, uint8_t *, uint32_t, uint8_t *)", 33554522, "### ERROR APSContiguousAllocatorRelinquishBlock err = %d read = %p inBlock = %p inBlockSize = %zu blockSize = %zu inNextBlock = %p\n", v8, a1[5], a2, a3, v10, a4);
  }

  return v8;
}

uint64_t APSContiguousAllocatorRelinquishBlockFromAddress(unint64_t *a1, char *a2, uint64_t a3)
{
  v3 = 4294895214;
  if (!a1)
  {
    v3 = 4294895215;
    goto LABEL_33;
  }

  if (!a3 || !a2 || (v7 = a1[3], v7 > a2) || a1[4] <= a2)
  {
    v3 = 4294895215;
    goto LABEL_33;
  }

  v8 = a2 - 4;
  if ((a2 - 4) < v7)
  {
    v3 = 4294895215;
    goto LABEL_33;
  }

  v9 = *v8;
  if (gLogCategory_APSContiguousAllocator <= 30 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorRelinquishBlockFromAddress(APSContiguousAllocatorRef, uint8_t *, uint32_t)", 33554462, "APSContiguousAllocatorRelinquishBlockFromAddress read = %p write = %p inBlock = %p inBlockSize = %zu blockSize = %zu totalSpace = %zu acquiredSpace = %zu freeSpace = %zu wastedSpace = %zu\n", a1[5], a1[6], a2, a3, v9, a1[7], a1[10], a1[11], a1[12]);
  }

  if (!v9)
  {
    return 0;
  }

  if (v9 != a3)
  {
    v3 = 4294895215;
    goto LABEL_33;
  }

  v11 = a1[5];
  v10 = a1[6];
  if (v10 > v11)
  {
    if (v10 >= a1[4])
    {
      goto LABEL_33;
    }

    v12 = v10 - v8;
    bzero(a2 - 4, v10 - v8);
    v13 = a1[11] + v12;
    a1[11] = v13;
    v14 = a1[7];
    if (v13 > v14)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  if (v8 < v10)
  {
    v12 = v10 - v8;
    bzero(a2 - 4, v10 - v8);
    v13 = a1[11] + v12;
    a1[11] = v13;
    v14 = a1[7];
    if (v13 > v14)
    {
      goto LABEL_33;
    }

LABEL_19:
    v15 = a1[10] - v12;
    a1[10] = v15;
    goto LABEL_24;
  }

  if (v8 >= v11)
  {
    v16 = a1[3];
    v17 = v10 - v16;
    bzero(v16, v10 - v16);
    v18 = a1[11] + v17;
    a1[11] = v18;
    if (v18 <= a1[7])
    {
      a1[10] -= v17;
      v19 = a1[4] - &v8[a1[12]];
      bzero(a2 - 4, v19);
      v13 = a1[11] + v19;
      a1[11] = v13;
      v14 = a1[7];
      if (v13 <= v14)
      {
        v15 = a1[10] - v19;
        a1[10] = v15;
        a1[12] = 0;
LABEL_24:
        a1[6] = v8;
        if (gLogCategory_APSContiguousAllocator > 30)
        {
          goto LABEL_28;
        }

        if (gLogCategory_APSContiguousAllocator == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_28:
            if (a1[10] + a1[11] != a1[7])
            {
              goto LABEL_33;
            }

            return 0;
          }

          v14 = a1[7];
          v15 = a1[10];
          v13 = a1[11];
        }

        LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorRelinquishBlockFromAddress(APSContiguousAllocatorRef, uint8_t *, uint32_t)", 33554462, "APSContiguousAllocatorRelinquishBlockFromAddress read = %p inBlock = %p inBlockSize = %zu totalSpace = %zu acquiredSpace = %zu freeSpace = %zu wastedSpace = %zu\n", a1[5], a2, a3, v14, v15, v13, a1[12]);
        goto LABEL_28;
      }
    }
  }

LABEL_33:
  APSLogErrorAt(0);
  if (gLogCategory_APSContiguousAllocator <= 90 && (gLogCategory_APSContiguousAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSContiguousAllocator, "OSStatus APSContiguousAllocatorRelinquishBlockFromAddress(APSContiguousAllocatorRef, uint8_t *, uint32_t)", 33554522, "### ERROR APSContiguousAllocatorRelinquishBlockFromAddress err = %d\n", v3);
  }

  return v3;
}

uint64_t APSContiguousAllocatorGetTotalFreeBlockSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 88);
  }

  APSLogErrorAt(a1);
  return 0;
}

unint64_t APSContiguousAllocatorGetNextAvailableBlockSize(void *a1)
{
  if (!a1)
  {
    APSLogErrorAt(a1);
    return 0;
  }

  v2 = a1[5];
  v1 = a1[6];
  if (v1 > v2 || !a1[10])
  {
    v3 = a1[4] - v1;
    v4 = v2 - a1[3];
    if (v4 > v3)
    {
      v3 = v4;
    }

    goto LABEL_8;
  }

  if (v1 < v2)
  {
    v3 = v2 - v1;
LABEL_8:
    v5 = v3 >= 4;
    v6 = v3 - 4;
    if (!v5)
    {
      v6 = 0;
    }

    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  if (v6 >= 0xFFFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

float APSVolumeConvertDBToLinearGain(float a1)
{
  result = 0.0;
  if (a1 > -30.0)
  {
    result = __exp10f(a1 / 20.0);
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

float APSVolumeConvertLinearGainToDB(float a1)
{
  if (a1 <= 0.0)
  {
    return -144.0;
  }

  else
  {
    return log10f(a1) * 20.0;
  }
}

void APSVolumeConvertDBToClampedSliderValue(float a1)
{
  TranslateValue();
  *&v1 = v1;
  if (*&v1 > 1.0 || (TranslateValue(), v3 = v2, v3 >= 0.0))
  {
    TranslateValue();
    *&v4 = v4;
    if (*&v4 <= 1.0)
    {
      TranslateValue();
    }
  }
}

float APSVolumeConvertSliderValueToLinearGain(float a1)
{
  TranslateValue();
  v2 = v1;
  result = 0.0;
  if (v2 > -30.0)
  {
    result = __exp10f(v2 / 20.0);
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

float APSVolumeConvertLinearGainToSliderValue(float a1)
{
  if (a1 > 0.0)
  {
    log10f(a1);
  }

  TranslateValue();
  return v1;
}

BOOL APSVolumeDBValuesAreNoticeablyDifferent(float a1, float a2)
{
  TranslateValue();
  *&v4 = v4;
  v5 = fabsf(*&v4 + 30.0);
  TranslateValue();
  *&v6 = v6;
  v7 = fabsf(*&v6 + 30.0);
  v8 = fabsf(a1 + 144.0);
  if (v8 < v5)
  {
    v9 = -30.0;
  }

  else
  {
    v9 = a1;
  }

  v10 = fabsf(a2 + 144.0);
  if (v10 < v5)
  {
    v11 = -30.0;
  }

  else
  {
    v11 = a2;
  }

  if (fabsf(v9 + 30.0) >= 0.00000011921)
  {
    v12 = fabsf(v11 + 30.0) < 0.00000011921;
    v14 = v8 < v5;
    v13 = fabsf(a1);
    v14 = !v14 && v13 < 0.00000011921;
    v15 = v14;
    v16 = fabsf(a2);
    v18 = v10 >= v5 && v16 < 0.00000011921;
    if (((v12 | (v15 | v18)) & 1) == 0)
    {
      v7 = v5;
    }
  }

  return vabds_f32(v9, v11) >= v7;
}

BOOL APSVolumeSliderValuesAreNoticeablyDifferent(float a1, float a2)
{
  TranslateValue();
  *&v4 = v4;
  if (vabds_f32(a1, *&v4) < 0.0099999)
  {
    TranslateValue();
    a1 = v5;
  }

  TranslateValue();
  *&v6 = v6;
  if (vabds_f32(a2, *&v6) < 0.0099999)
  {
    TranslateValue();
    a2 = v7;
  }

  TranslateValue();
  *&v8 = v8;
  v9 = vabds_f32(a1, *&v8);
  v10 = 0.00000011921;
  if (v9 >= 0.00000011921)
  {
    TranslateValue();
    *&v11 = v11;
    v12 = vabds_f32(a2, *&v11);
    v10 = 0.00000011921;
    if (v12 >= 0.00000011921)
    {
      TranslateValue();
      *&v13 = v13;
      v14 = vabds_f32(a1, *&v13);
      v10 = 0.00000011921;
      if (v14 >= 0.00000011921)
      {
        TranslateValue();
        *&v15 = v15;
        v16 = vabds_f32(a2, *&v15);
        v10 = 0.00000011921;
        if (v16 >= 0.00000011921)
        {
          v10 = 0.0099999;
        }
      }
    }
  }

  return vabds_f32(a1, a2) >= v10;
}

const char *APSGetVolumeFadeTypeName(int a1)
{
  v1 = "Invalid";
  if (a1 == 2)
  {
    v1 = "FadeOut";
  }

  if (a1 == 1)
  {
    return "FadeIn";
  }

  else
  {
    return v1;
  }
}

uint64_t APSVolumeControlTypeFromEx(int a1, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  if (a2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (a1 != 10)
  {
    v3 = 0;
  }

  if (a1 != 9)
  {
    v2 = v3;
  }

  if (a1 == 8)
  {
    v4 = 4;
  }

  else
  {
    v4 = v2;
  }

  if (a1 == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  if (a1 == 2)
  {
    v5 = 2;
  }

  if (a1 == 1)
  {
    v5 = 1;
  }

  if (a1 <= 7)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t APSVolumeControlTypeToEx(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_22234D4B0[a1 - 1];
  }
}

const char *APSGetAPVolumeControlTypeName(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_2784A3F50[a1];
  }
}

const char *APSGetFigEndpointVolumeControlTypeName(unint64_t a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_2784A3F78[a1];
  }
}

const char *APSGetAPMuteControlTypeName(int a1)
{
  if ((a1 - 1) > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_2784A3F98[a1 - 1];
  }
}

uint64_t APSRTPSeqNumRangeSetGetTypeID()
{
  if (APSRTPSeqNumRangeSetGetTypeID_sOnce != -1)
  {
    dispatch_once_f(&APSRTPSeqNumRangeSetGetTypeID_sOnce, &APSRTPSeqNumRangeSetGetTypeID_sTypeID, rtpSeqNumRangeSet_registerClass);
  }

  return APSRTPSeqNumRangeSetGetTypeID_sTypeID;
}

uint64_t rtpSeqNumRangeSet_registerClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

CFStringRef rtpSeqNumRangeSet_CopyFormattingDesc(uint64_t a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFGetAllocator(a1);
  if (*(a1 + 28))
  {
    v6 = *(a1 + 26);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(v4, a2, @"<APSRTPSeqNumRangeSet %p [%p]>{ rtpSeqNumCount = %u, rtpSeqNumLimit = %d, rtpSeqNumRanges = %@ }", a1, v5, *(a1 + 24), v6, *(a1 + 16));
}

void rtpSeqNumRangeSet_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t APSRTPSeqNumRangeSetCreateMutable(const __CFAllocator *a1, void *a2)
{
  if (!a2)
  {
    return 4294960591;
  }

  if (APSRTPSeqNumRangeSetGetTypeID_sOnce != -1)
  {
    dispatch_once_f(&APSRTPSeqNumRangeSetGetTypeID_sOnce, &APSRTPSeqNumRangeSetGetTypeID_sTypeID, rtpSeqNumRangeSet_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    *(Instance + 24) = 0;
    *(Instance + 28) = 0;
    memset(&v8, 0, 24);
    v8.copyDescription = rtpSeqNumRangeSet_ArrayValueCopyDesc;
    v8.equal = 0;
    v6 = CFArrayCreateMutable(a1, 0, &v8);
    v5[2] = v6;
    if (v6)
    {
      result = 0;
      *a2 = v5;
      return result;
    }

    CFRelease(v5);
  }

  return 4294960568;
}

uint64_t APSRTPSeqNumRangeSetCreateMutableCopy(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  result = 4294960591;
  if (a2 && a3)
  {
    if (APSRTPSeqNumRangeSetGetTypeID_sOnce != -1)
    {
      dispatch_once_f(&APSRTPSeqNumRangeSetGetTypeID_sOnce, &APSRTPSeqNumRangeSetGetTypeID_sTypeID, rtpSeqNumRangeSet_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      *(Instance + 24) = 0;
      *(Instance + 28) = 0;
      MutableCopy = CFArrayCreateMutableCopy(a1, 0, *(a2 + 16));
      *(v8 + 16) = MutableCopy;
      if (MutableCopy)
      {
        result = 0;
        *(v8 + 24) = *(a2 + 24);
        *(v8 + 28) = *(a2 + 28);
        *a3 = v8;
        return result;
      }

      CFRelease(v8);
    }

    return 4294960568;
  }

  return result;
}

BOOL APSRTPSeqNumRangeSetContainsSeqNum(_BOOL8 result, unsigned int a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  Count = CFArrayGetCount(*(result + 16));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 16), 0);
  if ((ValueAtIndex - a2) > 0)
  {
    return 0;
  }

  if ((ValueAtIndex + HIWORD(ValueAtIndex) - a2) > 0)
  {
    return 1;
  }

  if (v5 == 1)
  {
    return 0;
  }

  v7 = CFArrayGetValueAtIndex(*(v3 + 16), v5 - 1);
  if (((a2 - (v7 + HIWORD(v7))) & 0x8000) == 0)
  {
    return 0;
  }

  if (((a2 - v7) & 0x8000) == 0)
  {
    return 1;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v10.location = 0;
  v10.length = v5;
  v8 = CFArrayBSearchValues(*(v3 + 16), v10, (a2 | 0xFFFF0000), rtpSeqNumRangeSet_ArrayValueCompare, 0);
  v9 = CFArrayGetValueAtIndex(*(v3 + 16), v8 - 1);
  result = 0;
  if (((v9 - 0x10000) & 0x80000000) == 0 && (v9 - a2) <= 0)
  {
    return HIWORD(v9) > (a2 - v9);
  }

  return result;
}

unint64_t rtpSeqNumRangeSet_ArrayValueCompare(uint64_t a1, uint64_t a2)
{
  v2 = (a1 - a2);
  if (!((a1 - a2) << 48))
  {
    v2 = WORD1(a1) - WORD1(a2);
  }

  return (v2 != 0) | (v2 >> 63);
}

uint64_t APSRTPSeqNumRangeSetGetSeqNumCount(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetSeqNumRangeCount(uint64_t result)
{
  if (result)
  {
    LOWORD(result) = CFArrayGetCount(*(result + 16));
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetSpan(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count <= 0)
    {
      v6 = 0;
      LOWORD(a1) = *(v1 + 26);
    }

    else
    {
      v3 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 16), 0);
      v5 = CFArrayGetValueAtIndex(*(v1 + 16), v3 - 1);
      LODWORD(a1) = APSRTPSeqNumRangeUnion(ValueAtIndex, v5);
      v6 = a1 & 0xFFFF0000;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 | a1;
}

uint64_t APSRTPSeqNumRangeSetRemoveAllSeqNumRanges(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  CFArrayRemoveAllValues(*(a1 + 16));
  result = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t APSRTPSeqNumRangeSetAddSeqNumRange(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  v3 = WORD1(a2);
  if (WORD1(a2) > 0x8000u)
  {
    return 4294960591;
  }

  if (!WORD1(a2))
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 16));
  v6 = *(a1 + 16);
  if (!Count)
  {
    CFArrayAppendValue(v6, (a2 | (v3 << 16)));
    *(a1 + 24) = WORD1(a2);
    goto LABEL_9;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
  v8 = CFArrayGetValueAtIndex(*(a1 + 16), Count - 1);
  v9 = APSRTPSeqNumRangeUnion(ValueAtIndex, v8);
  if (APSRTPSeqNumRangeUnion(v9, a2 | (v3 << 16)) > 0x8000FFFF)
  {
    return 4294960545;
  }

  if (((v8 - a2 + HIWORD(v8)) & 0x8000) != 0)
  {
    CFArrayAppendValue(*(a1 + 16), (a2 | (v3 << 16)));
    *(a1 + 24) += WORD1(a2);
LABEL_9:
    if (!*(a1 + 28) || ((*(a1 + 26) - ((a2 >> 16) + a2)) & 0x8000) != 0)
    {
      result = 0;
      *(a1 + 26) = WORD1(a2) + a2;
      *(a1 + 28) = 1;
      return result;
    }

    return 0;
  }

  if (rtpSeqNumRangeSet_tryOrderedMergeIntoIndex(a1, Count - 1, v8, a2 | (v3 << 16), 0))
  {
    goto LABEL_9;
  }

  if (((a2 - ValueAtIndex) & 0x8000) != 0 && v3 < (ValueAtIndex - a2))
  {
    v11 = *(a1 + 16);
    v12 = 0;
  }

  else
  {
    if (rtpSeqNumRangeSet_tryOrderedMergeIntoIndex(a1, 0, ValueAtIndex, a2 | (v3 << 16), 1))
    {
      return 0;
    }

    v17.location = 0;
    v17.length = Count;
    v13 = CFArrayBSearchValues(*(a1 + 16), v17, (a2 | 0xFFFF0000), rtpSeqNumRangeSet_ArrayValueCompare, 0);
    v14 = v13 - 1;
    if (v13 >= 1)
    {
      v15 = CFArrayGetValueAtIndex(*(a1 + 16), v14);
      if (rtpSeqNumRangeSet_tryOrderedMergeIntoIndex(a1, v14, v15, a2 | (v3 << 16), 0))
      {
        return 0;
      }
    }

    v16 = CFArrayGetValueAtIndex(*(a1 + 16), v13);
    if (rtpSeqNumRangeSet_tryOrderedMergeIntoIndex(a1, v13, v16, a2 | (v3 << 16), 1))
    {
      return 0;
    }

    v11 = *(a1 + 16);
    v12 = v13;
  }

  CFArrayInsertValueAtIndex(v11, v12, (a2 | (v3 << 16)));
  result = 0;
  *(a1 + 24) += WORD1(a2);
  return result;
}

uint64_t rtpSeqNumRangeSet_tryOrderedMergeIntoIndex(uint64_t a1, CFIndex a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = APSRTPSeqNumRangeMerge(a3, a4);
  if (v10 < 0x10000)
  {
    return 0;
  }

  v11 = v10;
  if (!a5 && v10 != a3)
  {
    return 0;
  }

  v12 = HIWORD(v10);
  if (HIWORD(v10) > HIWORD(a3))
  {
    v13 = a2 + 1;
    *(a1 + 24) = *(a1 + 24) - HIWORD(a3) + HIWORD(v10);
    Count = CFArrayGetCount(*(a1 + 16));
    if (a2 + 1 < Count)
    {
      v15 = Count;
      v16 = a2 + 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v16);
        v5 = v5 & 0xFFFFFFFF00000000 | v11 | (v12 << 16);
        v18 = APSRTPSeqNumRangeMerge(v5, ValueAtIndex);
        if (v18 < 0x10000)
        {
          break;
        }

        v19 = HIWORD(v18) - v12;
        if (HIWORD(v18) <= v12)
        {
          LOWORD(v19) = 0;
        }

        *(a1 + 24) = *(a1 + 24) - HIWORD(ValueAtIndex) + v19;
        ++v16;
        v11 = v18;
        v12 = HIWORD(v18);
        if (v15 == v16)
        {
          v12 = HIWORD(v18);
          v11 = v18;
          v16 = v15;
          break;
        }
      }

      if (v16 > v13)
      {
        v21.location = a2 + 1;
        v21.length = v16 - v13;
        CFArrayReplaceValues(*(a1 + 16), v21, 0, 0);
      }
    }

    CFArraySetValueAtIndex(*(a1 + 16), a2, (v11 | (v12 << 16)));
  }

  return 1;
}

uint64_t APSRTPSeqNumRangeSetRemoveSeqNumRange(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (a2 > 0x8000FFFF)
  {
    return 4294960591;
  }

  if ((a2 & 0xFFFF0000) == 0)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 16));
  v5 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
  v8 = CFArrayGetValueAtIndex(*(a1 + 16), v5);
  v9 = v8;
  v10 = ValueAtIndex;
  v11 = v8;
  v12 = APSRTPSeqNumRangeUnion(v10, v8);
  v13 = v12;
  v14 = APSRTPSeqNumRangeIntersection(v12, a2);
  if (v14 < 0x10000)
  {
    return 0;
  }

  v15 = v14;
  if (v13 != v14 && (v14 | v13) >= 0x10000 && (v13 < 0x80010000 || v14 < 0x80010000))
  {
    if (rtpSeqNumRangeSet_tryOrderedSubtractAtIndex(a1, 0, v10, v14))
    {
      return 0;
    }

    if ((v9 - v15) <= 0)
    {
      v21 = a1;
      v22 = v5;
      v20 = v11;
    }

    else
    {
      v23.location = 0;
      v23.length = v6;
      v18 = CFArrayBSearchValues(*(a1 + 16), v23, a2, rtpSeqNumRangeSet_ArrayValueCompare, 0);
      v19 = CFArrayGetValueAtIndex(*(a1 + 16), v18 - 1);
      if (rtpSeqNumRangeSet_tryOrderedSubtractAtIndex(a1, v18 - 1, v19, v15))
      {
        return 0;
      }

      v20 = CFArrayGetValueAtIndex(*(a1 + 16), v18);
      v21 = a1;
      v22 = v18;
    }

    rtpSeqNumRangeSet_tryOrderedSubtractAtIndex(v21, v22, v20, v15);
    return 0;
  }

  CFArrayRemoveAllValues(*(a1 + 16));
  result = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t rtpSeqNumRangeSet_tryOrderedSubtractAtIndex(uint64_t a1, CFIndex a2, unsigned int ValueAtIndex, unsigned int a4)
{
  Count = CFArrayGetCount(*(a1 + 16));
  v9 = 0;
  v10 = a4;
  v11 = a2;
  while (1)
  {
    v12 = APSRTPSeqNumRangeIntersection(ValueAtIndex, v10);
    if (v12 < 0x10000)
    {
      break;
    }

    *(a1 + 24) -= HIWORD(v12);
    v13 = HIWORD(ValueAtIndex) - HIWORD(v12);
    if (ValueAtIndex == v12)
    {
      if (HIWORD(ValueAtIndex) != HIWORD(v12))
      {
        if ((HIWORD(ValueAtIndex) - HIWORD(v12)) <= 0x8000u)
        {
          v18 = (HIWORD(v12) + v12) | (v13 << 16);
        }

        else
        {
          v18 = 0xFFFFFFFFLL;
        }

        CFArraySetValueAtIndex(*(a1 + 16), a2, v18);
LABEL_21:
        v9 = 1;
        break;
      }
    }

    else
    {
      v14 = v12 - ValueAtIndex;
      if ((HIWORD(ValueAtIndex) - HIWORD(v12)) > (v12 - ValueAtIndex))
      {
        v15 = v13 - v14;
        if (v15 <= 0x8000u)
        {
          v16 = (HIWORD(v12) + v12) | (v15 << 16);
        }

        else
        {
          v16 = 0xFFFFFFFFLL;
        }

        CFArraySetValueAtIndex(*(a1 + 16), a2, v16);
        if (v14 <= 0x8000u)
        {
          v17 = ValueAtIndex | (v14 << 16);
        }

        else
        {
          v17 = 0xFFFFFFFFLL;
        }

        CFArrayInsertValueAtIndex(*(a1 + 16), a2, v17);
        goto LABEL_21;
      }

      CFArraySetValueAtIndex(*(a1 + 16), a2, (ValueAtIndex | (v13 << 16)));
      ++v11;
    }

    if (++a2 >= Count)
    {
      goto LABEL_21;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), a2);
    v9 = 1;
  }

  if (a2 > v11)
  {
    v20.location = v11;
    v20.length = a2 - v11;
    CFArrayReplaceValues(*(a1 + 16), v20, 0, 0);
  }

  return v9;
}

uint64_t APSRTPSeqNumRangeSetHintLimitSeqNum(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (*(a1 + 28) && ((*(a1 + 26) - a2) & 0x8000) == 0)
  {
    return 0;
  }

  result = 0;
  *(a1 + 26) = a2;
  *(a1 + 28) = 1;
  return result;
}

uint64_t APSRTPSeqNumRangeSetAddSeqNumRangeSet(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a2, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_addRangeApplier, a1);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(uint64_t a1, char a2, unsigned int a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  if (a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  result = 4294960591;
  if (a1 && a4)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    v12 = Count - 1;
    if (Count >= 1)
    {
      if (a3 > 0x8000FFFF)
      {
        v13 = 0;
        v14 = 0;
        IndexOfRangeForSeqNum = 0;
        goto LABEL_12;
      }

      if ((a3 & 0xFFFF0000) != 0)
      {
        Span = APSRTPSeqNumRangeSetGetSpan(a1);
        v17 = APSRTPSeqNumRangeIntersection(Span, a3);
        if (v17 >= 0x10000)
        {
          v18 = v17;
          v14 = v17;
          IndexOfRangeForSeqNum = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(a1, Count, v17);
          v12 = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(a1, Count, (v18 + HIWORD(v18) - 1));
          v13 = v18 & 0xFFFF0000;
LABEL_12:
          if (a2)
          {
            v19 = IndexOfRangeForSeqNum;
          }

          else
          {
            v19 = v12;
          }

          if (a2)
          {
            v20 = v12;
          }

          else
          {
            v20 = IndexOfRangeForSeqNum;
          }

          v21 = v19 + v6;
          if (v20 != v19 + v6)
          {
            v22 = v14 | v13;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v20);
              v24 = ValueAtIndex;
              if (a3 > 0x8000FFFF)
              {
                goto LABEL_23;
              }

              IndexOfRangeForSeqNum = ValueAtIndex | IndexOfRangeForSeqNum & 0xFFFFFFFF00000000;
              v14 = v14 & 0xFFFFFFFF00000000 | v22;
              v25 = APSRTPSeqNumRangeIntersection(IndexOfRangeForSeqNum, v14);
              if (v25 >= 0x10000)
              {
                break;
              }

LABEL_24:
              v20 += v6;
              if (v21 == v20)
              {
                return 0;
              }
            }

            v24 = v25;
LABEL_23:
            Count = Count & 0xFFFFFFFF00000000 | v24;
            result = a4(Count, a5);
            if (result)
            {
              return result;
            }

            goto LABEL_24;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

CFIndex rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(uint64_t a1, CFIndex a2, unsigned int a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
  if ((ValueAtIndex - a3) > 0 || (ValueAtIndex - 0x10000) >= 0 && HIWORD(ValueAtIndex) > (a3 - ValueAtIndex))
  {
    return 0;
  }

  v7 = CFArrayGetValueAtIndex(*(a1 + 16), a2 - 1);
  if (((a3 - (v7 + HIWORD(v7))) & 0x8000) != 0)
  {
    if (((v7 - 0x10000) & 0x80000000) != 0 || (v7 - a3) > 0 || HIWORD(v7) <= (a3 - v7))
    {
      v10.location = 0;
      v10.length = a2;
      a2 = CFArrayBSearchValues(*(a1 + 16), v10, (a3 | 0xFFFF0000), rtpSeqNumRangeSet_ArrayValueCompare, 0);
      v8 = CFArrayGetValueAtIndex(*(a1 + 16), a2 - 1);
      if (((v8 - 0x10000) & 0x80000000) == 0 && (v8 - a3) <= 0 && HIWORD(v8) > (a3 - v8))
      {
        --a2;
      }
    }

    else
    {
      --a2;
    }
  }

  return a2;
}

uint64_t APSRTPSeqNumRangeSetRemoveSeqNumRangeSet(const void *a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v10 = 0u;
  *cf = 0u;
  v2 = 4294960591;
  if (a1 && a2)
  {
    Span = APSRTPSeqNumRangeSetGetSpan(a1);
    if (Span < 0x10000 || (v6 = Span, v7 = APSRTPSeqNumRangeSetGetSpan(a2), v7 < 0x10000) || APSRTPSeqNumRangeIntersection(v6, v7) < 0x10000)
    {
      v2 = 0;
    }

    else
    {
      v8 = CFGetAllocator(a1);
      if (APSRTPSeqNumRangeSetGetTypeID_sOnce != -1)
      {
        dispatch_once_f(&APSRTPSeqNumRangeSetGetTypeID_sOnce, &APSRTPSeqNumRangeSetGetTypeID_sTypeID, rtpSeqNumRangeSet_registerClass);
      }

      _CFRuntimeInitStaticInstance();
      LODWORD(cf[1]) = 0;
      BYTE4(cf[1]) = 0;
      memset(&callBacks, 0, 24);
      callBacks.copyDescription = rtpSeqNumRangeSet_ArrayValueCopyDesc;
      callBacks.equal = 0;
      cf[0] = CFArrayCreateMutable(v8, 0, &callBacks);
      if (cf[0])
      {
        v12 = &v10;
        LOWORD(v13) = v6;
        v2 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a2, 0, v6, rtpSeqNumRangeSet_invertApplier, &v12);
        if (!v2)
        {
          rtpSeqNumRangeSet_invertApplier((HIWORD(v6) + v6), &v12);
          v2 = APSRTPSeqNumRangeSetFilterWithRangeSet(a1, &v10);
        }
      }

      else
      {
        v2 = 4294960568;
      }
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v2;
}

uint64_t rtpSeqNumRangeSet_invertApplier(int a1, unsigned __int16 *a2)
{
  v4 = a2[4];
  if (v4 != a1)
  {
    v5 = (a1 - v4);
    v6 = v4 | ((a1 - v4) << 16);
    if (v5 > 0x8000)
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = v6;
    }

    CFArrayAppendValue(*(*a2 + 16), v7);
    *(*a2 + 24) += WORD1(v7);
  }

  a2[4] = a1 + HIWORD(a1);
  return 0;
}

uint64_t APSRTPSeqNumRangeSetFilterWithRangeSet(unint64_t a1, unint64_t a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    Span = APSRTPSeqNumRangeSetGetSpan(a1);
    if (Span < 0x10000)
    {
      return 0;
    }

    else
    {
      v6 = Span;
      v7 = APSRTPSeqNumRangeSetGetSpan(a2);
      if (v7 >= 0x10000 && APSRTPSeqNumRangeIntersection(v6, v7) >> 16)
      {
        Count = CFArrayGetCount(*(a1 + 16));
        v9 = *(a1 + 24);
        result = APSRTPSeqNumRangeSetApplyFunctionWithFilterRangeSet(a1, 0, a2, rtpSeqNumRangeSet_appendApplier, a1);
        if (!result)
        {
          v10.location = 0;
          v10.length = Count;
          CFArrayReplaceValues(*(a1 + 16), v10, 0, 0);
          result = 0;
          *(a1 + 24) -= v9;
        }
      }

      else
      {
        CFArrayRemoveAllValues(*(a1 + 16));
        result = 0;
        *(a1 + 24) = 0;
      }
    }
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetApplyFunctionWithFilterRangeSet(unint64_t a1, char a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v7 = 1;
  if (a2)
  {
    v7 = -1;
  }

  v42 = v7;
  result = 4294960591;
  if (a1 && a4)
  {
    v10 = a3;
    if (a3)
    {
      Count = CFArrayGetCount(*(a1 + 16));
      if (Count < 1)
      {
        return 0;
      }

      v13 = Count;
      v14 = CFArrayGetCount(*(v10 + 16));
      if (v14 < 1)
      {
        return 0;
      }

      v15 = v14;
      Span = APSRTPSeqNumRangeSetGetSpan(a1);
      v17 = APSRTPSeqNumRangeSetGetSpan(v10);
      v18 = APSRTPSeqNumRangeIntersection(Span, v17);
      if (v18 < 0x10000)
      {
        return 0;
      }

      else
      {
        v38 = a4;
        v19 = v18;
        IndexOfRangeForSeqNum = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(a1, v13, v18);
        v21 = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(a1, v13, (v19 + WORD1(v19) - 1));
        v41 = v19;
        v22 = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(v10, v15, v19);
        v23 = rtpSeqNumRangeSet_findIndexOfRangeForSeqNum(v10, v15, (v19 + WORD1(v19) - 1));
        if (a2)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        v35 = v24;
        if (a2)
        {
          v25 = v23;
        }

        else
        {
          v25 = v22;
        }

        if (a2)
        {
          v26 = IndexOfRangeForSeqNum;
        }

        else
        {
          v26 = v21;
        }

        v40 = v26;
        if (a2)
        {
          IndexOfRangeForSeqNum = v21;
        }

        v27 = a1;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), IndexOfRangeForSeqNum);
        v34 = v10;
        v29 = CFArrayGetValueAtIndex(*(v10 + 16), v25);
LABEL_21:
        v37 = v25;
        v30 = v29;
        v31 = v29 + HIWORD(v29);
        while (1)
        {
          v22 = v22 & 0xFFFFFFFF00000000 | ValueAtIndex;
          v32 = APSRTPSeqNumRangeIntersection(v22, v30);
          if (v32 >= 0x10000)
          {
            a1 = a1 & 0xFFFFFFFF00000000 | v32;
            result = v38(a1, a5);
            if (result)
            {
              break;
            }
          }

          v33 = (ValueAtIndex - v31 + HIWORD(ValueAtIndex));
          if (v33 <= 0)
          {
            if (v40 == IndexOfRangeForSeqNum)
            {
              return 0;
            }

            IndexOfRangeForSeqNum += v42;
            ValueAtIndex = CFArrayGetValueAtIndex(*(v27 + 16), IndexOfRangeForSeqNum);
            v10 = v10 & 0xFFFFFFFF00000000 | ValueAtIndex;
            v5 = v5 & 0xFFFFFFFF00000000 | v41;
            if (APSRTPSeqNumRangeIntersection(v10, v5) < 0x10000)
            {
              return 0;
            }

            if (v33 < 0)
            {
              continue;
            }
          }

          if (v37 != v35)
          {
            v25 = v37 + v42;
            v29 = CFArrayGetValueAtIndex(*(v34 + 16), v37 + v42);
            v36 = v36 & 0xFFFFFFFF00000000 | v41;
            if (APSRTPSeqNumRangeIntersection(v29, v41) >> 16)
            {
              goto LABEL_21;
            }
          }

          return 0;
        }
      }
    }

    else
    {

      return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a1, a2, 0xFFFFFFFF, a4, a5);
    }
  }

  return result;
}

uint64_t rtpSeqNumRangeSet_appendApplier(void *value, uint64_t a2)
{
  v3 = WORD1(value);
  CFArrayAppendValue(*(a2 + 16), value);
  *(a2 + 24) += v3;
  return 0;
}

uint64_t APSRTPSeqNumRangeSetGetFirstSeqNum(uint64_t a1, _WORD *a2)
{
  v5 = 0;
  result = 4294960591;
  if (a1 && a2)
  {
    result = APSRTPSeqNumRangeSetGetFirstSeqNumRange(a1, &v5);
    if (!result)
    {
      *a2 = v5;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetFirstSeqNumRange(uint64_t a1, unsigned int *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    if (CFArrayGetCount(*(a1 + 16)) < 1)
    {
      return 4294960532;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
      result = 0;
      *a2 = ValueAtIndex;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetLastSeqNum(uint64_t a1, _WORD *a2)
{
  v5 = 0;
  result = 4294960591;
  if (a1 && a2)
  {
    result = APSRTPSeqNumRangeSetGetLastSeqNumRange(a1, &v5);
    if (!result)
    {
      *a2 = v5 + HIWORD(v5) - 1;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetLastSeqNumRange(uint64_t a1, unsigned int *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      return 4294960532;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), Count - 1);
      result = 0;
      *a2 = ValueAtIndex;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetGetSeqNumAfterSeqNum(uint64_t a1, int a2, _WORD *a3)
{
  v3 = 4294960591;
  if (a1 && a3)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      return 4294960546;
    }

    v8 = Count;
    v9 = a2 + 1;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), Count - 1);
    if (((v9 - (ValueAtIndex + HIWORD(ValueAtIndex))) & 0x8000) == 0)
    {
      return 4294960546;
    }

    if (((v9 - ValueAtIndex) & 0x8000) != 0)
    {
      if (v8 == 1)
      {
        goto LABEL_13;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
      if (((v9 - ValueAtIndex) & 0x8000) != 0)
      {
        goto LABEL_13;
      }

      if (((v9 - (ValueAtIndex + HIWORD(ValueAtIndex))) & 0x8000) == 0)
      {
        v14.location = 0;
        v14.length = v8;
        v11 = CFArrayBSearchValues(*(a1 + 16), v14, (v9 | 0xFFFF0000), rtpSeqNumRangeSet_ArrayValueCompare, 0);
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v11 - 1);
        if (((ValueAtIndex - 0x10000) & 0x80000000) != 0 || (ValueAtIndex - v9) > 0 || (v12 = HIWORD(ValueAtIndex) > (v9 - ValueAtIndex), LOWORD(ValueAtIndex) = v9, !v12))
        {
          LOWORD(ValueAtIndex) = CFArrayGetValueAtIndex(*(a1 + 16), v11);
        }

        goto LABEL_13;
      }
    }

    LOWORD(ValueAtIndex) = v9;
LABEL_13:
    v3 = 0;
    *a3 = ValueAtIndex;
  }

  return v3;
}

uint64_t APSRTPSeqNumRangeSetGetSeqNumBeforeSeqNum(uint64_t a1, int a2, _WORD *a3)
{
  result = 4294960591;
  if (a1 && a3)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      return 4294960546;
    }

    v8 = Count;
    v9 = a2 - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
    if (((v9 - ValueAtIndex) & 0x8000) != 0)
    {
      return 4294960546;
    }

    if (((v9 - (ValueAtIndex + HIWORD(ValueAtIndex))) & 0x8000) != 0)
    {
      goto LABEL_14;
    }

    if (v8 == 1)
    {
      v15 = ValueAtIndex + HIWORD(ValueAtIndex);
    }

    else
    {
      v11 = CFArrayGetValueAtIndex(*(a1 + 16), v8 - 1);
      v12 = v11 + HIWORD(v11);
      if (((v9 - v12) & 0x8000) == 0)
      {
        LOWORD(v9) = v12 - 1;
        goto LABEL_14;
      }

      if (((v9 - v11) & 0x8000) == 0)
      {
        goto LABEL_14;
      }

      v16.location = 0;
      v16.length = v8;
      v13 = CFArrayBSearchValues(*(a1 + 16), v16, (v9 | 0xFFFF0000), rtpSeqNumRangeSet_ArrayValueCompare, 0);
      v14 = CFArrayGetValueAtIndex(*(a1 + 16), v13 - 1);
      if (((v14 - 0x10000) & 0x80000000) == 0 && (v14 - v9) <= 0 && HIWORD(v14) > (v9 - v14))
      {
        goto LABEL_14;
      }

      LOWORD(v15) = v14 + HIWORD(v14);
    }

    LOWORD(v9) = v15 - 1;
LABEL_14:
    result = 0;
    *a3 = v9;
  }

  return result;
}

uint64_t APSRTPSeqNumRangeSetApplyBlock(uint64_t a1, char a2, uint64_t a3)
{
  if (a1 && a3)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a1, a2, 0xFFFFFFFF, rtpSeqNumRangeSet_blockApplier, a3);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPSeqNumRangeSetApplyBlockWithFilterRange(uint64_t a1, char a2, unsigned int a3, uint64_t a4)
{
  if (a1 && a4)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a1, a2, a3, rtpSeqNumRangeSet_blockApplier, a4);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPSeqNumRangeSetApplyBlockWithFilterRangeSet(unint64_t a1, char a2, unint64_t a3, uint64_t a4)
{
  if (a1 && a4)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRangeSet(a1, a2, a3, rtpSeqNumRangeSet_blockApplier, a4);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPSeqNumRangeSetGetLimitSeqNum(uint64_t a1, _WORD *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    if (*(a1 + 28))
    {
      result = 0;
      *a2 = *(a1 + 26);
    }

    else
    {
      return 4294960578;
    }
  }

  return result;
}

uint64_t APSRotatingKeyMapperInitialize(uint64_t a1)
{
  if (*a1)
  {
    APSLogErrorAt(0);
    return 0;
  }

  else
  {
    v2 = FigSimpleMutexCreate();
    *(a1 + 8) = v2;
    if (v2 && (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(a1 + 16) = Mutable) != 0) && (v4 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(a1 + 24) = v4) != 0) && (v5 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(a1 + 32) = v5) != 0) && (v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(a1 + 40) = v6) != 0) && (v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(a1 + 48) = v7) != 0))
    {
      result = 0;
      *a1 = 1;
    }

    else
    {
      APSLogErrorAt(0);
      APSRotatingKeyMapperClear(a1);
      return 4294960568;
    }
  }

  return result;
}

void APSRotatingKeyMapperClear(uint64_t a1)
{
  FigSimpleMutexDestroy();
  *(a1 + 8) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
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

  *a1 = 0;
}

_BYTE *APSRotatingKeyMapperIsInitialized(_BYTE *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t APSRotatingKeyMapperSetDesiredKeyForID(CFDictionaryRef *a1, const void *a2, const void *a3, const void **a4)
{
  FigSimpleMutexLock();
  if (a3)
  {
    v8 = CFDictionaryContainsKey(a1[4], a3) != 0;
  }

  else
  {
    v8 = 0;
  }

  Value = CFDictionaryGetValue(a1[2], a2);
  v10 = CFDictionaryGetValue(a1[5], a2);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = Value;
  }

  if (v11 == a3)
  {
    goto LABEL_22;
  }

  v12 = v10;
  if (a3)
  {
    if (v11 && CFEqual(a3, v11))
    {
      goto LABEL_22;
    }
  }

  if (a3 == 0 || v8)
  {
    if (v12)
    {
      CFDictionaryRemoveValue(a1[5], a2);
      CFDictionaryRemoveValue(a1[6], v12);
    }

    if (!v8)
    {
      goto LABEL_22;
    }

LABEL_19:
    if (Value)
    {
      CFDictionaryRemoveValue(a1[4], Value);
      CFDictionaryRemoveValue(a1[3], a2);
    }

    CFDictionarySetValue(a1[2], a2, a3);
    CFDictionarySetValue(a1[3], a3, a2);
    goto LABEL_22;
  }

  if (v12)
  {
    CFDictionaryRemoveValue(a1[6], v12);
  }

  CFDictionarySetValue(a1[5], a2, a3);
  CFDictionarySetValue(a1[6], a3, a2);
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_22:
  FigSimpleMutexUnlock();
  if (a4)
  {
    *a4 = APSRotatingKeyMapperCopyDataForID(a1, a2);
  }

  return 0;
}

const void *APSRotatingKeyMapperCopyDataForID(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  if (Value)
  {
    v5 = CFDictionaryGetValue(*(a1 + 32), Value);
    v6 = v5;
    if (v5)
    {
      CFRetain(v5);
    }
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t APSRotatingKeyMapperRemoveID(CFDictionaryRef *a1, const void *a2)
{
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(a1[2], a2);
  v5 = CFDictionaryGetValue(a1[5], a2);
  CFDictionaryRemoveValue(a1[2], a2);
  if (Value)
  {
    CFDictionaryRemoveValue(a1[3], Value);
  }

  if (v5)
  {
    CFDictionaryRemoveValue(a1[5], a2);
    CFDictionaryRemoveValue(a1[6], v5);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSRotatingKeyMapperSetDataForKey(CFDictionaryRef *a1, const void *a2, const void *a3, void *a4)
{
  FigSimpleMutexLock();
  if (CFDictionaryContainsKey(a1[4], a2))
  {
    Value = CFDictionaryGetValue(a1[3], 0);
  }

  else
  {
    Value = CFDictionaryGetValue(a1[6], a2);
    if (Value)
    {
      v9 = CFDictionaryGetValue(a1[2], Value);
      if (v9)
      {
        v10 = v9;
        CFDictionaryRemoveValue(a1[4], v9);
        CFDictionaryRemoveValue(a1[3], v10);
      }

      CFDictionaryRemoveValue(a1[5], Value);
      CFDictionaryRemoveValue(a1[6], a2);
      CFDictionarySetValue(a1[2], Value, a2);
      CFDictionarySetValue(a1[3], a2, Value);
    }
  }

  CFDictionarySetValue(a1[4], a2, a3);
  FigSimpleMutexUnlock();
  if (a4)
  {
    *a4 = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  return 0;
}

uint64_t APSRemoteConfigGetTypeID()
{
  if (gAPSRemoteConfigInitOnce != -1)
  {
    dispatch_once_f(&gAPSRemoteConfigInitOnce, 0, _APSRemoteConfigGetTypeID);
  }

  return gAPSRemoteConfigTypeID;
}

uint64_t _APSRemoteConfigGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRemoteConfigTypeID = result;
  return result;
}

void _APSRemoteConfigFinalize(uint64_t a1)
{
  if (gLogCategory_APSRemoteConfig <= 50 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRemoteConfig, "void _APSRemoteConfigFinalize(CFTypeRef)", 33554482, "[%{ptr}] finalize", a1);
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_source_cancel(v2);
    if (*(a1 + 64))
    {
      dispatch_resume(*(a1 + 56));
      *(a1 + 64) = 0;
    }

    dispatch_release(*(a1 + 56));
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    dispatch_sync_f(v3, 0, remoteConfig_nop);
    v4 = *(a1 + 48);
    if (v4)
    {
      dispatch_release(v4);
      *(a1 + 48) = 0;
    }
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 32) = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 40) = 0;
  }

  FigSimpleMutexDestroy();
  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }
}

CFTypeRef _APSRemoteConfigCreate(const __CFSet *a1, uint64_t a2)
{
  if (gAPSRemoteConfigInitOnce != -1)
  {
    dispatch_once_f(&gAPSRemoteConfigInitOnce, 0, _APSRemoteConfigGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    Instance[3] = 0u;
    Instance[4] = 0u;
    Instance[1] = 0u;
    Instance[2] = 0u;
    v6 = *MEMORY[0x277CBECE8];
    Copy = CFSetCreateCopy(*MEMORY[0x277CBECE8], a1);
    *(v5 + 16) = Copy;
    if (Copy && (v8 = FigSimpleMutexCreate(), (*(v5 + 24) = v8) != 0) && (Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(v5 + 32) = Mutable) != 0) && (v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0), v11 = dispatch_queue_create("APSRemoteConfig.update", v10), (*(v5 + 48) = v11) != 0) && (v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v11), (*(v5 + 56) = v12) != 0) && (*(v5 + 64) = 1, v13 = dispatch_queue_create("APSRemoteConfig.notification", 0), (*(v5 + 72) = v13) != 0))
    {
      remoteConfig_update(v5, 1);
      if (a2)
      {
        dispatch_set_context(*(v5 + 56), v5);
        dispatch_source_set_event_handler_f(*(v5 + 56), remoteConfig_updateTimerFire);
        v14 = *(v5 + 56);
        v15 = dispatch_time(0, 1000000000 * a2);
        dispatch_source_set_timer(v14, v15, 1000000000 * a2, 0x3B9ACA00uLL);
        if (*(v5 + 64))
        {
          *(v5 + 64) = 0;
          dispatch_resume(*(v5 + 56));
        }
      }

      if (gLogCategory_APSRemoteConfig <= 50 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSRemoteConfig, "APSRemoteConfigRef _APSRemoteConfigCreate(CFSetRef, uint32_t)", 33554482, "[%{ptr}] created inUpdateIntervalSecs = %d", v5, a2);
      }

      v16 = CFRetain(v5);
    }

    else
    {
      APSLogErrorAt(0);
      v16 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v16;
}

void remoteConfig_update(uint64_t a1, int a2)
{
  cf = 0;
  theDict = 0;
  context = a1;
  Mutable = FigRCLCreateConfiguration();
  if (Mutable)
  {
    goto LABEL_15;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  theDict = Mutable;
  if (!Mutable)
  {
    goto LABEL_15;
  }

  FigSimpleMutexLock();
  CFSetApplyFunction(*(a1 + 16), remoteConfig_updateApplier, &context);
  FigSimpleMutexUnlock();
  Count = CFDictionaryGetCount(theDict);
  if (!a2 && Count >= 1)
  {
    if (gLogCategory_APSRemoteConfig <= 50 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSRemoteConfig, "void remoteConfig_update(APSRemoteConfigRef, Boolean)", 33554482, "[%{ptr}] posting 'ConfigDidChange' with keys %@", a1, theDict);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    Mutable = FigDispatchAsyncPostNotification();
    if (Mutable)
    {
LABEL_15:
      APSLogErrorAt(Mutable);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }
}

void remoteConfig_updateTimerFire(uint64_t a1)
{
  if (gLogCategory_APSRemoteConfig <= 50 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRemoteConfig, "void remoteConfig_updateTimerFire(void *)", 33554482, "[%{ptr}] update timer fire", a1);
  }

  remoteConfig_update(a1, 0);
}

void remoteConfig_updateApplier(void *key, CFMutableDictionaryRef *a2)
{
  v4 = *(*a2 + 5);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, key);
    if (Value)
    {
      v5 = CFRetain(Value);
      goto LABEL_4;
    }
  }

  else if (a2[1])
  {
    v5 = FigRCLCopyCFType();
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:
  v7 = CFDictionaryGetValue(*(*a2 + 4), key);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  if (FigCFEqual())
  {
    Mutable = 0;
  }

  else
  {
    if (gLogCategory_APSRemoteConfig <= 50 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSRemoteConfig, "void remoteConfig_updateApplier(const void *, void *)", 33554482, "[%{ptr}] updating key '%@' from value '%@' to value '%@'", *a2, key, v8, v6);
    }

    v9 = *(*a2 + 4);
    if (v6)
    {
      CFDictionarySetValue(v9, key, v6);
    }

    else
    {
      CFDictionaryRemoveValue(v9, key);
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      CFDictionaryAddValue(a2[2], key, Mutable);
    }

    else
    {
      APSLogErrorAt(0);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t APSRemoteConfigGetShared()
{
  if (APSRemoteConfigGetShared_once != -1)
  {
    dispatch_once_f(&APSRemoteConfigGetShared_once, &APSRemoteConfigGetShared_config, remoteConfig_createShared);
  }

  return APSRemoteConfigGetShared_config;
}

void remoteConfig_createShared(CFTypeRef *a1)
{
  v2 = CFSetCreate(*MEMORY[0x277CBECE8], kAPSRemoteConfigKeyList, 4, MEMORY[0x277CBF158]);
  if (v2)
  {
    v3 = v2;
    IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"remoteConfigUpdateIntervalSecs", 0, 3600);
    v5 = _APSRemoteConfigCreate(v3, IntWithOverrideAndDefault);
    if (v5)
    {
      v6 = v5;
      *a1 = CFRetain(v5);
      CFRelease(v3);
      v7 = v6;
    }

    else
    {
      APSLogErrorAt(0);
      *a1 = 0;
      v7 = v3;
    }

    CFRelease(v7);
  }

  else
  {
    APSLogErrorAt(0);
    *a1 = 0;
  }
}

CFTypeRef APSRemoteConfigCopyValue(uint64_t a1, void *value)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v2 = value;
  if (!value)
  {
    APSLogErrorAt(0);
    return v2;
  }

  v4 = CFSetContainsValue(*(a1 + 16), value);
  if (!v4)
  {
    APSLogErrorAt(v4);
    if (gLogCategory_APSRemoteConfig <= 90 && (gLogCategory_APSRemoteConfig != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSRemoteConfig, "CFTypeRef APSRemoteConfigCopyValue(APSRemoteConfigRef, APSRemoteConfigKey)", 33554522, "### [%{ptr}] invalid key '%@'", a1, v2);
    }

    return 0;
  }

  FigSimpleMutexLock();
  v5 = CFDictionaryGetValue(*(a1 + 32), v2);
  if (v5)
  {
    v2 = CFRetain(v5);
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APSRemoteConfigGetBooleanIfPresent(uint64_t a1, void *a2, Boolean *a3)
{
  if (a1 && a2 && (v4 = APSRemoteConfigCopyValue(a1, a2)) != 0)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      if (a3)
      {
        *a3 = CFBooleanGetValue(v5);
      }

      v7 = 1;
    }

    else
    {
      APSLogErrorAt(0);
      v7 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v7;
}

uint64_t _APSRemoteConfigSetFakeRCLData(uint64_t a1, const __CFDictionary *a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 40) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a2);
    }

    return FigSimpleMutexUnlock();
  }

  else
  {

    return APSLogErrorAt(0);
  }
}

void _APSRemoteConfigUpdateNow(uint64_t a1)
{
  if (a1)
  {
    remoteConfig_update(a1, 0);
  }

  else
  {
    APSLogErrorAt(0);
  }
}

CFDataRef APSFeaturesCreateFromEndpointInfoFeatureRepresentations(const __CFString *a1, unint64_t a2, unsigned int *a3)
{
  v6 = 0;
  if (a1)
  {
    v4 = APSFeaturesCreateFromStringRepresentation(a1, &v6);
    if (v6)
    {
      APSLogErrorAt(v6);
      if (v6)
      {
        if (v4)
        {
          CFRelease(v4);
          v4 = 0;
          if (!a3)
          {
            return v4;
          }

          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v4 = APSFeaturesCreateFromLegacyFlags(a2);
    if (!v4)
    {
      APSLogErrorAt(0);
      v6 = -6728;
      if (!a3)
      {
        return v4;
      }

      goto LABEL_9;
    }
  }

  if (a3)
  {
LABEL_9:
    *a3 = v6;
  }

  return v4;
}

BOOL APSFeaturesIsEmpty(const __CFData *a1)
{
  if (!a1)
  {
    return 1;
  }

  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (Length < 1)
  {
    return 1;
  }

  if (*BytePtr)
  {
    return 0;
  }

  v5 = 0;
  while (Length - 1 != v5)
  {
    if (BytePtr[++v5])
    {
      return v5 >= Length;
    }
  }

  v5 = Length;
  return v5 >= Length;
}

uint64_t APSFeaturesHasFeature(const __CFData *a1, uint64_t a2)
{
  if (a2 >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = a2 + 7;
  }

  if (!a1)
  {
LABEL_8:
    APSLogErrorAt(0);
    return 0;
  }

  v3 = a2;
  if (v2 >> 3 < CFDataGetLength(a1))
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (BytePtr)
    {
      return (BytePtr[v2 >> 3] >> (v3 - (v2 & 0xF8))) & 1;
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t APSFeaturesHasAllFeatures(CFDataRef theData, const __CFData *a2)
{
  BytePtr = theData;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    BytePtr = CFDataGetBytePtr(BytePtr);
    if (!a2)
    {
      return 1;
    }
  }

  else
  {
    Length = 0;
    if (!a2)
    {
      return 1;
    }
  }

  v5 = CFDataGetLength(a2);
  v6 = CFDataGetBytePtr(a2);
  if (v5 < 1)
  {
    return 1;
  }

  v7 = 0;
  while (!v6[v7] || v7 < Length && (v6[v7] & ~*(BytePtr + v7)) == 0)
  {
    if (v5 == ++v7)
    {
      return 1;
    }
  }

  return 0;
}

UInt8 *APSFeaturesSetFeature(__CFData *a1, uint64_t a2)
{
  if (CFDataGetLength(a1) <= a2 / 8)
  {
    CFDataSetLength(a1, a2 / 8 + 1);
  }

  result = CFDataGetMutableBytePtr(a1);
  result[a2 / 8] |= 1 << (a2 % 8);
  return result;
}

const UInt8 *APSFeaturesSetAllFeatures(__CFData *a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  if (CFDataGetLength(a1) < Length)
  {
    CFDataSetLength(a1, Length);
  }

  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  result = CFDataGetBytePtr(theData);
  if (Length >= 1)
  {
    do
    {
      v7 = *result++;
      *MutableBytePtr++ |= v7;
      --Length;
    }

    while (Length);
  }

  return result;
}

uint64_t APSFeaturesClearFeature(const __CFData *a1, uint64_t a2)
{
  result = CFDataGetLength(a1);
  v5 = a2 + 7;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  if (result > v5 >> 3)
  {
    v6 = v5 >> 3;
    v7 = a2 - 8 * (v5 >> 3);
    result = CFDataGetMutableBytePtr(a1);
    *(result + v6) &= ~(1 << v7);
  }

  return result;
}

const UInt8 *APSFeaturesClearAllFeatures(CFDataRef theData, const __CFData *a2)
{
  MutableBytePtr = theData;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    MutableBytePtr = CFDataGetMutableBytePtr(MutableBytePtr);
    if (a2)
    {
LABEL_3:
      v5 = CFDataGetLength(a2);
      result = CFDataGetBytePtr(a2);
      goto LABEL_6;
    }
  }

  else
  {
    Length = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  result = 0;
LABEL_6:
  if (v5 >= Length)
  {
    v7 = Length;
  }

  else
  {
    v7 = v5;
  }

  if (v7 >= 1)
  {
    do
    {
      v8 = *result++;
      *MutableBytePtr &= ~v8;
      MutableBytePtr = (MutableBytePtr + 1);
      --v7;
    }

    while (v7);
  }

  return result;
}

unint64_t APSFeaturesGetLegacyFlags(unint64_t result, _DWORD *a2)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = result;
  Length = CFDataGetLength(result);
  BytePtr = CFDataGetBytePtr(v3);
  v6 = Length - 1;
  if (Length >= 1)
  {
    v7 = BytePtr;
    v8 = 0;
    result = 0;
    if (v6 >= 7)
    {
      v6 = 7;
    }

    v9 = 8 * v6 + 8;
    do
    {
      v10 = *v7++;
      result |= v10 << v8;
      v8 += 8;
    }

    while (v9 != v8);
LABEL_7:
    if (!a2)
    {
      return result;
    }

    goto LABEL_8;
  }

  result = 0;
  if (!a2)
  {
    return result;
  }

LABEL_8:
  *a2 = 0;
  return result;
}

uint64_t APSPriorityDispatchSourceGetTypeID()
{
  if (gAPSPriorityDispatchSourceInitOnce != -1)
  {
    dispatch_once_f(&gAPSPriorityDispatchSourceInitOnce, 0, _APSPriorityDispatchSourceGetTypeID);
  }

  return gAPSPriorityDispatchSourceTypeID;
}

uint64_t _APSPriorityDispatchSourceGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSPriorityDispatchSourceTypeID = result;
  return result;
}

void _APSPriorityDispatchSourceFinalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && !*(a1 + 88))
  {
    atomic_store(1u, (v2 + 56));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    dispatch_source_cancel(v3);
    if (*(a1 + 89))
    {
      dispatch_resume(*(a1 + 80));
      *(a1 + 89) = 0;
    }

    dispatch_release(*(a1 + 80));
    *(a1 + 80) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 72) = 0;
  }

  if (*(a1 + 56))
  {
    FigSimpleMutexDestroy();
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t APSPriorityDispatchSourceCreate(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, const void *a6, __int128 *a7, CFTypeRef *a8)
{
  v8 = 4294960591;
  if (a4 && a7 && a8 && *(a7 + 1))
  {
    if (gAPSPriorityDispatchSourceInitOnce != -1)
    {
      dispatch_once_f(&gAPSPriorityDispatchSourceInitOnce, 0, _APSPriorityDispatchSourceGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v18 = Instance;
      *(Instance + 112) = 0;
      *(Instance + 80) = 0u;
      *(Instance + 96) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 64) = 0u;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      if (gAPSPriorityDispatchSourceSharedContextInitOnce != -1)
      {
        dispatch_once_f(&gAPSPriorityDispatchSourceSharedContextInitOnce, 0, _APSPriorityDispatchSourceSharedContextGetTypeID);
      }

      v19 = _CFRuntimeCreateInstance();
      *(v18 + 40) = v19;
      if (v19 && ((v19[2] = 0u, v19[3] = 0u, v19[1] = 0u, *(v18 + 16) = a1, *(v18 + 24) = a2, *(v18 + 32) = a3, !a6) ? (v20 = 0) : (v20 = CFRetain(a6)), *(v18 + 48) = v20, dispatch_retain(a4), v21 = *(v18 + 40), *(v21 + 16) = a4, v22 = *a7, *(v21 + 40) = *(a7 + 2), *(v21 + 24) = v22, atomic_store(0, (*(v18 + 40) + 56)), v23 = FigSimpleMutexCreate(), (*(v18 + 56) = v23) != 0))
      {
        *(v18 + 64) = a5;
        *(v18 + 72) = 0;
        *(v18 + 80) = 0;
        *(v18 + 89) = 1;
        *(v18 + 96) = -1;
        *(v18 + 104) = -1;
        *(v18 + 112) = -1;
        if (*(v18 + 16) == MEMORY[0x277D85D00])
        {
          *(v18 + 96) = 0;
          *(v18 + 104) = a2;
        }

        v8 = priorityDispatchSource_setPriority(v18, a5, 1);
        if (!v8)
        {
          *a8 = CFRetain(v18);
        }
      }

      else
      {
        v8 = 4294960568;
      }

      CFRelease(v18);
    }

    else
    {
      return 4294960568;
    }
  }

  return v8;
}

uint64_t priorityDispatchSource_setPriority(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  FigSimpleMutexLock();
  if (*(a1 + 88))
  {
    v20 = 4294960573;
    goto LABEL_40;
  }

  if (!a3 && *(a1 + 64) == v4)
  {
    v20 = 0;
    goto LABEL_40;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    Queue = APSPriorityDispatchQueuePoolGetQueue(v6, v4);
    if (Queue)
    {
      v8 = Queue;
      dispatch_retain(Queue);
      goto LABEL_10;
    }

    v20 = 4294960569;
LABEL_40:
    FigSimpleMutexUnlock();
    return v20;
  }

  if (v4 == 5)
  {
    dispatch_retain(*(*(a1 + 40) + 16));
    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = FigDispatchQueueCreateWithPriority();
    if (!v8)
    {
      v20 = 4294960568;
      goto LABEL_40;
    }
  }

LABEL_10:
  v9 = dispatch_source_create(*(a1 + 16), *(a1 + 24), *(a1 + 32), v8);
  if (v9 && (v10 = *(a1 + 89), (v11 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL)) != 0))
  {
    v12 = v11;
    *v11 = v9;
    v11[1] = CFRetain(*(a1 + 40));
    v13 = *(a1 + 80);
    if (v13)
    {
      dispatch_source_cancel(v13);
      if (*(a1 + 89))
      {
        dispatch_resume(*(a1 + 80));
        *(a1 + 89) = 0;
      }

      dispatch_release(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    v14 = *(a1 + 72);
    if (v14)
    {
      dispatch_release(v14);
      *(a1 + 72) = 0;
    }

    v15 = *(a1 + 16);
    if (v15 == MEMORY[0x277D85D38] || v15 == MEMORY[0x277D85D00])
    {
      dispatch_source_set_timer(v9, *(a1 + 96), *(a1 + 104), *(a1 + 112));
    }

    dispatch_set_context(v9, v12);
    v16 = *(a1 + 48) == 0;
    v17 = v4 == 5;
    if (v17 && v16)
    {
      v18 = priorityDispatchSource_targetQueueEventHandler;
    }

    else
    {
      v18 = priorityDispatchSource_sourceEventHandler;
    }

    if (v17 && v16)
    {
      v19 = priorityDispatchSource_targetQueueCancelHandler;
    }

    else
    {
      v19 = priorityDispatchSource_sourceCancelHandler;
    }

    dispatch_source_set_event_handler_f(v9, v18);
    dispatch_source_set_cancel_handler_f(v9, v19);
    *(a1 + 64) = v4;
    dispatch_retain(v8);
    *(a1 + 72) = v8;
    dispatch_retain(v9);
    *(a1 + 80) = v9;
    *(a1 + 89) = v10;
    if (!v10)
    {
      dispatch_resume(v9);
    }

    v20 = 0;
  }

  else
  {
    v20 = 4294960568;
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  return v20;
}

void priorityDispatchSource_sourceCancelHandler(CFTypeRef *a1)
{
  v2 = CFRetain(a1[1]);
  dispatch_sync_f(*(a1[1] + 2), a1, priorityDispatchSource_targetQueueCancelHandler);

  CFRelease(v2);
}

void priorityDispatchSource_targetQueueCancelHandler(void *a1)
{
  v2 = 1;
  atomic_compare_exchange_strong_explicit((a1[1] + 56), &v2, 2u, memory_order_relaxed, memory_order_relaxed);
  v3 = a1[1];
  if (v2 == 1)
  {
    v4 = v3[5];
    if (v4)
    {
      v4(v3[3]);
      v3 = a1[1];
    }
  }

  CFRelease(v3);

  free(a1);
}

uint64_t _APSPriorityDispatchSourceSharedContextGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSPriorityDispatchSourceSharedContextTypeID = result;
  return result;
}

void _APSPriorityDispatchSourceSharedContextFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }
}

uintptr_t APSPriorityDispatchSourceGetData(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 48)) != 0)
  {
    return dispatch_source_get_data(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t APSPriorityDispatchSourceSetTimer(uint64_t a1, dispatch_time_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294960591;
  }

  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D85D38];
  if (v5 != MEMORY[0x277D85D38] && v5 != MEMORY[0x277D85D00])
  {
    return 4294960540;
  }

  FigSimpleMutexLock();
  if (*(a1 + 88))
  {
    v12 = 4294960573;
  }

  else
  {
    *(a1 + 96) = a2;
    if (*(a1 + 16) == v6)
    {
      a2 = dispatch_time(a2, 0);
      *(a1 + 96) = a2;
    }

    *(a1 + 104) = a3;
    *(a1 + 112) = a4;
    dispatch_source_set_timer(*(a1 + 80), a2, a3, a4);
    v12 = 0;
  }

  FigSimpleMutexUnlock();
  return v12;
}

uint64_t APSPriorityDispatchSourceSetPriority(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return priorityDispatchSource_setPriority(a1, a2, 0);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSPriorityDispatchSourceCancel(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  FigSimpleMutexLock();
  if (!*(a1 + 88))
  {
    atomic_store(1u, (*(a1 + 40) + 56));
    v2 = *(a1 + 80);
    if (v2)
    {
      dispatch_source_cancel(v2);
      if (*(a1 + 89))
      {
        dispatch_resume(*(a1 + 80));
        *(a1 + 89) = 0;
      }

      dispatch_release(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    *(a1 + 88) = 1;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APSVersionUtilsGetShortVersionLength(const char *a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    v4 = a1[v2++];
  }

  while ((v4 - 48) < 0xA);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v4 != 46)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    result = v5;
    v7 = a1[v5++];
  }

  while ((v7 - 48) < 0xA);
  if (result == v2)
  {
    goto LABEL_9;
  }

  if (v7)
  {
    if (v7 != 46)
    {
      goto LABEL_9;
    }

    v8 = v5;
    do
    {
      result = v8;
      v9 = a1[v8++] - 48;
    }

    while (v9 < 0xA);
    if (result == v5)
    {
LABEL_9:
      APSLogErrorAt(0);
      if (gLogCategory_APSVersionUtils <= 90 && (gLogCategory_APSVersionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSVersionUtils, "size_t APSVersionUtilsGetShortVersionLength(const char *)", 33554522, "Invalid AirPlay version: %s", a1);
      }

      return 0;
    }
  }

  return result;
}

void APSGetFBOPropertyCMTime(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, CMTime *a4@<X8>)
{
  *a4 = **&MEMORY[0x277CC0898];
  cf = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = v8(a1, a2, *MEMORY[0x277CBECE8], &cf);
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = cf == 0;
    }

    if (!v10)
    {
      v11 = CFGetTypeID(cf);
      if (v11 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(a4, cf);
      }

      v9 = 0;
    }

    if (a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = -12782;
    if (a3)
    {
LABEL_10:
      *a3 = v9;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t APSGetFBOPropertyCString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  cf = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v11 = 0;
    v9 = -12782;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = v8(a1, a2, *MEMORY[0x277CBECE8], &cf);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = cf == 0;
  }

  if (!v10)
  {
    v11 = CFGetCString();
    v9 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }

LABEL_9:
    *a5 = v9;
    goto LABEL_10;
  }

  v11 = 0;
  if (a5)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

double APSGetFBOPropertyDouble(uint64_t a1, uint64_t a2, int *a3)
{
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v7 = 0.0;
  if (v6)
  {
    v8 = v6(a1, a2, *MEMORY[0x277CBECE8], &cf);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = cf == 0;
    }

    if (!v9)
    {
      CFGetDouble();
      v7 = v10;
      v8 = 0;
    }

    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = -12782;
    if (a3)
    {
LABEL_8:
      *a3 = v8;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

CFTypeRef APSIsFBOPropertyNonNull(uint64_t a1, uint64_t a2, int *a3)
{
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v7 = -12782;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = v6(a1, a2, *MEMORY[0x277CBECE8], &cf);
  if (a3)
  {
LABEL_5:
    *a3 = v7;
  }

LABEL_6:
  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return (cf != 0);
  }

  return result;
}

BOOL APSIsFBOPropertyAvailable(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(a1, a2, *MEMORY[0x277CBECE8], &cf) == 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

BOOL APSIsFBOPropertyEqual(uint64_t a1, uint64_t a2, CFTypeRef a3, int *a4)
{
  cf1 = 0;
  if (a1)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = v8(a1, a2, *MEMORY[0x277CBECE8], &cf1);
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        if (cf1 == a3)
        {
          v10 = 1;
        }

        else
        {
          v10 = 0;
          if (a3 && cf1)
          {
            v10 = CFEqual(cf1, a3) != 0;
          }
        }

        v9 = 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = -12782;
    }
  }

  else
  {
    v10 = 0;
    v9 = -6705;
  }

  if (a4)
  {
    *a4 = v9;
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v10;
}

uint64_t APSSetFBOPropertyCString(uint64_t a1, uint64_t a2, char *cStr, CFIndex numBytes)
{
  if (numBytes == -1)
  {
    v6 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    if (v6)
    {
      goto LABEL_3;
    }

    return 4294960596;
  }

  v6 = CFStringCreateWithBytes(0, cStr, numBytes, 0x8000100u, 0);
  if (!v6)
  {
    return 4294960596;
  }

LABEL_3:
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v9 = v8(a1, a2, v7);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v7);
  return v9;
}

uint64_t APSSetFBOPropertyData(uint64_t a1, uint64_t a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreate(0, bytes, length);
  if (!v6)
  {
    return 4294960596;
  }

  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v9 = v8(a1, a2, v7);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v7);
  return v9;
}

uint64_t APSSetFBOPropertyDouble(uint64_t a1, uint64_t a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v5)
  {
    return 4294960568;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v8 = v7(a1, a2, v6);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t APSSetFBOPropertyDictionary(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 4294960591;
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], theDict);
  if (!Copy)
  {
    return 4294960568;
  }

  v6 = Copy;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v8 = v7(a1, a2, v6);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t APSRecycleBinGetTypeID()
{
  if (gAPSRecycleBinInitOnce != -1)
  {
    dispatch_once_f(&gAPSRecycleBinInitOnce, 0, _APSRecycleBinGetTypeID);
  }

  return gAPSRecycleBinTypeID;
}

uint64_t _APSRecycleBinGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRecycleBinTypeID = result;
  return result;
}

void *_APSRecycleBinFinalize(void *a1)
{
  _X20 = 0;
  _X21 = 0;
  __asm { CASPA           X20, X21, X20, X21, [X8] }

  if (_X20)
  {
    do
    {
      v9 = _X20[1];
      v10 = a1[5];
      if (v10)
      {
        v10(*_X20);
      }

      free(_X20);
      _X20 = v9;
    }

    while (v9);
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPA           X0, X1, X0, X1, [X8]; void * }

  if (result)
  {
    do
    {
      v14 = result[1];
      free(result);
      result = v14;
    }

    while (v14);
  }

  v15 = a1[6];
  if (v15)
  {
    v16 = a1[2];

    return v15(v16);
  }

  return result;
}

uint64_t APSRecycleBinCreate(__int128 *a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294960591;
  }

  if (gAPSRecycleBinInitOnce != -1)
  {
    dispatch_once_f(&gAPSRecycleBinInitOnce, 0, _APSRecycleBinGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v7 = Instance;
  _X0 = 0;
  *(v7 + 16) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 32) = 0u;
  v9 = *(v7 + 64);
  do
  {
    _X5 = *(v7 + 72);
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v9;
    v9 = _X4;
  }

  while (!_ZF);
  _X0 = 0;
  v17 = *(v7 + 80);
  do
  {
    _X5 = *(v7 + 88);
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v17;
    v17 = _X4;
  }

  while (!_ZF);
  atomic_store(0, (v7 + 96));
  if (a1)
  {
    v20 = *a1;
    v21 = a1[1];
    *(v7 + 48) = *(a1 + 4);
    *(v7 + 16) = v20;
    *(v7 + 32) = v21;
  }

  if (a2)
  {
    if (*(v7 + 24))
    {
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v24 = malloc_type_malloc(0x10uLL, 0xE0040CF218873uLL);
        if (!v24)
        {
          break;
        }

        _X22 = v24;
        v26 = (*(v7 + 24))(*(v7 + 16), v24);
        if (v26)
        {
          v30 = v26;
          free(_X22);
          goto LABEL_25;
        }

        _X22[1] = v22;
        v27 = *(v7 + 64);
        do
        {
          _X3 = *(v7 + 72);
          __asm { CASP            X2, X3, X22, X23, [X8] }

          _ZF = _X2 == v27;
          v27 = _X2;
        }

        while (!_ZF);
        atomic_fetch_add_explicit((v7 + 96), 1uLL, memory_order_relaxed);
        ++v23;
        v22 = _X22;
        if (v23 == a2)
        {
          __dmb(0xBu);
          goto LABEL_23;
        }
      }

      v30 = 4294960568;
    }

    else
    {
      v30 = 4294960561;
    }
  }

  else
  {
LABEL_23:
    v30 = 0;
    *a3 = CFRetain(v7);
  }

LABEL_25:
  CFRelease(v7);
  return v30;
}

uint64_t APSRecycleBinTakeItem(uint64_t a1, void *a2)
{
  v22 = 0;
  v2 = 4294960591;
  if (a1 && a2)
  {
    _X4 = 0;
    _X5 = 0;
    __asm { CASP            X4, X5, X4, X5, [X8] }

    _X6 = _X4;
    while (_X6)
    {
      _X2 = _X6;
      __dmb(9u);
      _X8 = _X6[1];
      _X7 = 0;
      __asm { CASPA           X6, X7, X8, X9, [X10] }

      if (_X6 == _X2)
      {
        _X4 = 0;
        v22 = *_X2;
        _X5 = 0;
        __asm { CASP            X4, X5, X4, X5, [X8] }

        do
        {
          _X2[1] = _X4;
          _X1 = 0;
          __asm { CASPL           X0, X1, X2, X3, [X8] }

          _ZF = _X0 == _X4;
          _X4 = _X0;
        }

        while (!_ZF);
LABEL_12:
        v2 = 0;
        *a2 = v22;
        return v2;
      }
    }

    v20 = *(a1 + 24);
    if (v20)
    {
      v2 = v20(*(a1 + 16), &v22);
      if (v2)
      {
        return v2;
      }

      goto LABEL_12;
    }

    return 4294960546;
  }

  return v2;
}

uint64_t APSRecycleBinAddItem(uint64_t a1, uint64_t a2)
{
  result = 4294960591;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      _X0 = 0;
      _X1 = 0;
      __asm { CASP            X0, X1, X0, X1, [X8] }

      _X2 = _X0;
      while (_X2)
      {
        _X20 = _X2;
        __dmb(9u);
        _X4 = _X2[1];
        _X3 = 0;
        __asm { CASP            X2, X3, X4, X5, [X8] }

        if (_X2 == _X20)
        {
          goto LABEL_9;
        }
      }

      v16 = malloc_type_malloc(0x10uLL, 0xE0040CF218873uLL);
      if (!v16)
      {
        return 4294960568;
      }

      _X20 = v16;
      atomic_fetch_add_explicit((a1 + 96), 1uLL, memory_order_relaxed);
LABEL_9:
      v17 = *(a1 + 32);
      if (v17)
      {
        v4 = v17(v4);
      }

      _X0 = 0;
      *_X20 = v4;
      _X1 = 0;
      __asm { CASP            X0, X1, X0, X1, [X8] }

      do
      {
        _X20[1] = _X0;
        _X3 = 0;
        __asm { CASPL           X2, X3, X20, X21, [X8] }

        _ZF = _X2 == _X0;
        _X0 = _X2;
      }

      while (!_ZF);
      return 0;
    }
  }

  return result;
}

uint64_t APSEventRecorderGetTypeID()
{
  if (APSEventRecorderGetTypeID_once != -1)
  {
    dispatch_once_f(&APSEventRecorderGetTypeID_once, &APSEventRecorderGetTypeID_typeID, eventRecorder_registerCMClass);
  }

  return APSEventRecorderGetTypeID_typeID;
}

uint64_t eventRecorder_registerCMClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APSEventRecorderCreate(int a1, const void *a2, unsigned int a3, int *a4, uint64_t a5, uint64_t *a6)
{
  if (!a3 || !a6)
  {
    APSLogErrorAt(0);
    return 4294895135;
  }

  if (APSEventRecorderGetTypeID_once != -1)
  {
    dispatch_once_f(&APSEventRecorderGetTypeID_once, &APSEventRecorderGetTypeID_typeID, eventRecorder_registerCMClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v20 = 4294895136;
    APSLogErrorAt(0);
    return v20;
  }

  v13 = Instance;
  *(Instance + 112) = 0;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  Mutable = pthread_mutex_init((Instance + 40), 0);
  if (Mutable)
  {
    v20 = Mutable;
LABEL_32:
    APSLogErrorAt(Mutable);
    CFRelease(v13);
    return v20;
  }

  v15 = a3;
  Mutable = malloc_type_calloc(a3, 0x18uLL, 0x10000400CE834B2uLL);
  *(v13 + 112) = Mutable;
  if (!Mutable)
  {
    v20 = 4294895136;
    goto LABEL_32;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  *(v13 + 32) = Mutable;
  if (!Mutable)
  {
    v20 = 4294895136;
    goto LABEL_32;
  }

  *(v13 + 104) = a3;
  *(v13 + 16) = a1;
  if (a2)
  {
    v16 = CFRetain(a2);
  }

  else
  {
    v16 = 0;
  }

  *(v13 + 24) = v16;
  if (a4)
  {
    v17 = (*(v13 + 112) + 16);
    do
    {
      v18 = *a4++;
      *v17 = v18;
      v17 += 6;
      --v15;
    }

    while (v15);
  }

  if (a5)
  {
    eventRecorder_addChildToParent(a5, v13);
  }

  if (gLogCategory_APSEventRecorder <= 30 && (gLogCategory_APSEventRecorder != -1 || _LogCategory_Initialize()))
  {
    if (a5)
    {
      v19 = *(a5 + 24);
    }

    else
    {
      v19 = 0;
    }

    LogPrintF(&gLogCategory_APSEventRecorder, "OSStatus APSEventRecorderCreate(APSEventRecorderType, CFStringRef, uint32_t, APSSignPost *, APSEventRecorderRef, APSEventRecorderRef *)", 33554462, "Created eventRecorder = %{ptr} (%@), type = 0x%x, eventCount = %d, parentEventRecorder = %@\n", v13, *(v13 + 24), *(v13 + 16), *(v13 + 104), v19);
  }

  v20 = 0;
  *a6 = v13;
  return v20;
}

uint64_t eventRecorder_addChildToParent(uint64_t a1, const void *a2)
{
  result = 4294895135;
  if (a1)
  {
    if (a2)
    {
      pthread_mutex_lock((a1 + 40));
      CFArrayAppendValue(*(a1 + 32), a2);
      pthread_mutex_unlock((a1 + 40));
      return 0;
    }
  }

  return result;
}

uint64_t APSEventRecorderGetType(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t APSEventRecorderCopyName(uint64_t result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = *(result + 24);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294895135;
    }
  }

  return result;
}

uint64_t APSEventRecorderGetEventTime(uint64_t result, int a2)
{
  if (result)
  {
    if ((a2 & 0xFFFF000) == *(result + 16) && (a2 & 0xFFFu) < *(result + 104))
    {
      return *(*(result + 112) + 24 * (a2 & 0xFFF));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t APSEventRecorderResetEvent(uint64_t result, int a2)
{
  if (result && (a2 & 0xFFFF000) == *(result + 16) && (a2 & 0xFFFu) < *(result + 104))
  {
    v2 = (*(result + 112) + 24 * (a2 & 0xFFF));
    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

uint64_t APSEventRecorderReset(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 104);
    if (v2)
    {
      v3 = 0;
      v4 = 24 * v2;
      do
      {
        v5 = (*(result + 112) + v3);
        *v5 = 0;
        v5[1] = 0;
        v3 += 24;
      }

      while (v4 != v3);
    }

    pthread_mutex_lock((result + 40));
    CFArrayRemoveAllValues(*(v1 + 32));

    return pthread_mutex_unlock((v1 + 40));
  }

  return result;
}

uint64_t APSEventRecorderGetTimeBetweenEventsInMilliSecond(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (!a1 || !a3)
  {
    return 0;
  }

  if ((a2 & 0xFFFF000) == *(a1 + 16) && (a2 & 0xFFFu) < *(a1 + 104))
  {
    v5 = *(*(a1 + 112) + 24 * (a2 & 0xFFF));
  }

  else
  {
    v5 = 0;
  }

  if ((a4 & 0xFFFF000) == *(a3 + 16) && (a4 & 0xFFFu) < *(a3 + 104))
  {
    v6 = *(*(a3 + 112) + 24 * (a4 & 0xFFF));
  }

  else
  {
    v6 = 0;
  }

  if (v6 < v5)
  {
    APSLogErrorAt(0);
    return 0;
  }

  return UpTicksToMilliseconds();
}

uint64_t APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive(const void *a1, int a2, const void *a3, int a4)
{
  v5 = 0;
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx(a1, a2, a3, a4, 0, &v5);
  return v5;
}