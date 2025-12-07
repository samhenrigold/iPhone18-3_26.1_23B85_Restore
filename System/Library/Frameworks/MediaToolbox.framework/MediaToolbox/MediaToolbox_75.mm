uint64_t registerFigAirPlayMediaSelectionType()
{
  result = _CFRuntimeRegisterClass();
  sFigAirPlayMediaSelectionTypeID = result;
  return result;
}

double airPlayMediaSelection_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t airPlayMediaSelection_Finalize(uint64_t a1)
{
  *(a1 + 16) = 1;
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 112) = 0;
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 128) = 0;
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 96) = 0;
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 80) = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t aptapC_RegisterBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

CFDictionaryRef MTAudioProcessingTapCreateCFDictionaryFromPointer(void *a1, uint64_t a2)
{
  valuePtr = a2;
  keys = a1;
  v2 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  v3 = CFDictionaryCreate(v2, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (values)
  {
    CFRelease(values);
  }

  return v3;
}

CFDictionaryRef MTAudioProcessingTapCreateCFDictionaryFromPointerAndTrackID(void *a1, uint64_t a2, void *a3, int a4, void *a5, int a6)
{
  keys[3] = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v9 = a6;
  v10 = a4;
  keys[0] = a1;
  keys[1] = a3;
  keys[2] = a5;
  v6 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  cf = CFNumberCreate(v6, kCFNumberSInt32Type, &v10);
  v14 = CFNumberCreate(v6, kCFNumberSInt32Type, &v9);
  v7 = CFDictionaryCreate(v6, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

CFDictionaryRef MTAudioProcessingTapCreateCFDictionaryFromThreePointers(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  keys[3] = *MEMORY[0x1E69E9840];
  v10 = a4;
  valuePtr = a2;
  v9 = a6;
  keys[0] = a1;
  keys[1] = a3;
  keys[2] = a5;
  v6 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  cf = CFNumberCreate(v6, kCFNumberLongType, &v10);
  v14 = CFNumberCreate(v6, kCFNumberLongType, &v9);
  v7 = CFDictionaryCreate(v6, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

const __CFNumber *MTAudioProcessingTapGetPointerFromCFDictionary(void *key, CFDictionaryRef theDict)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(theDict, key);
  if (result)
  {
    if (CFNumberGetValue(result, kCFNumberLongType, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double MTAudioProcessingTapConvertStreamTimeToMediaTime@<D0>(int64_t value@<X1>, int32_t timescale@<W3>, unsigned int a3@<W0>, int64_t a4@<X2>, uint64_t a5@<X8>, double a6@<D0>, float a7@<S1>, float a8@<S2>)
{
  v15 = MEMORY[0x1E6960C98];
  v16 = *(MEMORY[0x1E6960C98] + 16);
  *a5 = *MEMORY[0x1E6960C98];
  *(a5 + 16) = v16;
  *(a5 + 32) = *(v15 + 32);
  v24 = **&MEMORY[0x1E6960C70];
  v23 = v24;
  memset(&v22, 0, sizeof(v22));
  CMTimeMake(&v22, value, timescale);
  memset(&v21, 0, sizeof(v21));
  CMTimeMake(&v21, a4, timescale);
  CMTimeMake(&v24, (a6 + 0.5), timescale);
  lhs = v24;
  v18 = v21;
  CMTimeSubtract(&v20, &lhs, &v18);
  v24 = v20;
  lhs = v20;
  CMTimeMultiplyByFloat64(&v20, &lhs, (a7 / a8));
  v24 = v20;
  lhs = v20;
  v18 = v22;
  CMTimeAdd(&v20, &lhs, &v18);
  v24 = v20;
  CMTimeMake(&v23, a3, timescale);
  lhs = v23;
  CMTimeMultiplyByFloat64(&v20, &lhs, fabsf(a7) / a8);
  v23 = v20;
  if (a7 < 0.0)
  {
    lhs = v24;
    v18 = v23;
    CMTimeSubtract(&v20, &lhs, &v18);
    v24 = v20;
  }

  *a5 = v24;
  result = *&v23.value;
  *(a5 + 24) = v23;
  return result;
}

CFTypeID MTAudioProcessingTapGetTypeID(void)
{
  MEMORY[0x19A8D3660](&MTAudioProcessingTapGetClassID_sRegisterBaseTypeOnce, aptapC_RegisterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTX3GCaptionGroupConverterFromSampleBufferCreate(void *a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    FigTX3GCaptionGroupConverterFromSampleBufferCreate_cold_4(&v7);
    return v7;
  }

  if (!a1)
  {
    FigTX3GCaptionGroupConverterFromSampleBufferCreate_cold_3(&v7);
    return v7;
  }

  if (!*a1)
  {
    FigTX3GCaptionGroupConverterFromSampleBufferCreate_cold_2(&v7);
    return v7;
  }

  if (!a1[1])
  {
    FigTX3GCaptionGroupConverterFromSampleBufferCreate_cold_1(&v7);
    return v7;
  }

  FigCaptionGroupConverterFromSampleBufferGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    *CMBaseObjectGetDerivedStorage() = *a1;
    *a3 = 0;
  }

  return v5;
}

__CFString *fcgcfs_tx3g_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTX3GCaptionGroupConverterFromSampleBufferf %p>", a1);
  return Mutable;
}

uint64_t fcgcfs_tx3g_getFontFamilyNameFromTx3gFontName(const __CFString *a1)
{
  if (CFStringCompare(a1, @"ProportionalSansSerif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611C0];
    return *v4;
  }

  if (CFStringCompare(a1, @"ProportionalSerif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611B8];
    return *v4;
  }

  if (CFStringCompare(a1, @"MonospaceSansSerif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611B0];
    return *v4;
  }

  if (CFStringCompare(a1, @"MonospaceSerif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6960A50];
    return *v4;
  }

  if (CFStringCompare(a1, @"Serif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611D0];
    return *v4;
  }

  if (CFStringCompare(a1, @"SansSerif", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611C8];
    return *v4;
  }

  if (CFStringCompare(a1, @"Monospace", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611A0];
    return *v4;
  }

  if (CFStringCompare(a1, @"Casual", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6961180];
    return *v4;
  }

  if (CFStringCompare(a1, @"Cursive", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6961188];
    return *v4;
  }

  if (CFStringCompare(a1, @"Fantasy", 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6960A40];
    return *v4;
  }

  v2 = *MEMORY[0x1E6961190];
  if (CFStringCompare(a1, @"SmallCapital", 1uLL))
  {
    return v2;
  }

  else
  {
    return *MEMORY[0x1E6960A80];
  }
}

uint64_t OUTLINED_FUNCTION_4_152(uint64_t a1)
{

  return FigCaptionDynamicStyleCreate();
}

uint64_t RegisterFigBasicAESCPEProtectorType()
{
  FigCPEProtectorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t ExternalProtectionStatusChangedCallback_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigBasicAESCPEProtectorInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    if (*DerivedStorage)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (*v2)
      {
        CFRelease(*v2);
        *v2 = 0;
      }
    }

    v3 = v2[1];
    if (v3)
    {
      CFRelease(v3);
      v2[1] = 0;
    }
  }

  return 0;
}

__CFString *FigBasicAESCPEProtectorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = Mutable;
  if (DerivedStorage && Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigBasicAESBasicAESCPEProtector>");
  }

  return v5;
}

uint64_t FigTTMLDivCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a4)
  {
    FigTTMLDivCreate_cold_2(&v16);
    return v16;
  }

  FigTTMLNodeGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
  if (v8)
  {
    return v8;
  }

  v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (v8)
  {
    return v8;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v15 = 197;
LABEL_14:
    FigTTMLBodyCreate_cold_1(v15, &v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v11;
  if (!v11)
  {
    v15 = 200;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  FigTTMLParseNode(a2, figTTMLDivConsumeChildNode, a3);
  v13 = v12;
  if (!v12)
  {
    *a4 = 0;
  }

  return v13;
}

uint64_t figTTMLDivConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(*a2);
  BlockClassNode = FigTTMLParseAndCreateBlockClassNode();
  if (BlockClassNode)
  {
    return BlockClassNode;
  }

  CFGetAllocator(*a2);
  BlockClassNode = FigTTMLParseAndCreateAnimationClassNode();
  if (BlockClassNode)
  {
    return BlockClassNode;
  }

  v10 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  v8 = v10;
  if (a3 && !v10)
  {
    v8 = 0;
    *a3 = 0;
  }

  return v8;
}

void figTTMLDiv_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 136) = 0;
  }

  v3 = *(DerivedStorage + 144);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLDiv_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"div: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLDiv_CopyChildNodeArray(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
    result = 0;
    *a2 = ConcatenationOfTwoArrays;
  }

  else
  {
    figTTMLDiv_CopyChildNodeArray_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figTTMLDiv_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 3;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLDiv_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

BOOL FigPKDCPESupportsFormatDescription(const opaqueCMFormatDescription *a1)
{
  cf = 0;
  v1 = PKDCopyDecryptFormatTypeFromFormatDescription(a1, &cf);
  v2 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  return !v3;
}

uint64_t RegisterFigBasicAESCPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBasicAESCPESupportsFormatDescription(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  result = 0;
  if (MediaSubType <= 2053202274)
  {
    if (MediaSubType <= 1902207330)
    {
      if (MediaSubType != 1667331683)
      {
        v4 = 1700886115;
        goto LABEL_15;
      }
    }

    else if (MediaSubType != 1902207331 && MediaSubType != 1902212707)
    {
      v4 = 1903587385;
      goto LABEL_15;
    }
  }

  else if (MediaSubType > 2053207650)
  {
    if (MediaSubType != 2053464883)
    {
      v3 = 30307;
      goto LABEL_14;
    }
  }

  else if ((MediaSubType - 2053202739) > 0x3D || ((1 << (MediaSubType - 51)) & 0x2020000000000001) == 0)
  {
    v3 = 24931;
LABEL_14:
    v4 = v3 | 0x7A610000;
LABEL_15:
    if (MediaSubType != v4)
    {
      return result;
    }
  }

  return 1;
}

uint64_t FigBasicAESCPECryptorCreate(const void *a1, const void *a2, const __CFDictionary *a3, uint64_t a4, CFTypeRef *a5)
{
  v5 = 4294955146;
  if (a1 && a2 && a5)
  {
    MEMORY[0x19A8D3660](&FigBasicAESCPECryptorGetClassID_sRegisterFigBasicAESCPECryptorTypeOnce, RegisterFigBasicAESCPECryptorType);
    v10 = CMDerivedObjectCreate();
    if (v10)
    {
      return v10;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      return 4294955145;
    }

    v12 = DerivedStorage;
    v13 = FigSimpleMutexCreate();
    v12[10] = v13;
    if (!v13)
    {
      return 4294955145;
    }

    *v12 = CFRetain(a1);
    v12[5] = CFRetain(*MEMORY[0x1E6960FF8]);
    v14 = CFRetain(a2);
    v12[11] = v14;
    FigCPEExternalProtectionMonitorBeginMonitoring(v14);
    CMNotificationCenterGetDefaultLocalCenter();
    v10 = FigNotificationCenterAddWeakListener();
    if (v10)
    {
      return v10;
    }

    else
    {
      if (a3)
      {
        Value = CFDictionaryGetValue(a3, @"CryptKeyAttributes");
        if (Value)
        {
          Value = CFRetain(Value);
        }

        v12[12] = Value;
      }

      v5 = 0;
      *a5 = 0;
    }
  }

  return v5;
}

uint64_t ExternalProtectionStatusChangedCallback_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigBasicAESCPECryptorInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 73) = 1;
  if (*(DerivedStorage + 88))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    FigCPEExternalProtectionMonitorEndMonitoring(*(DerivedStorage + 88));
    v2 = *(DerivedStorage + 88);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 88) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  FigCryptDispose(*(DerivedStorage + 32));
  *(DerivedStorage + 32) = 0;
  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 96) = 0;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigBasicAESCPECryptorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBasicAESCPECryptorInvalidate(a1);
  v3 = DerivedStorage[6];
  if (v3)
  {
    CFRelease(v3);
  }

  if (DerivedStorage[7])
  {
    FigH264Bridge_HLSfMP4ParsingInfoDestroy();
    DerivedStorage[7] = 0;
  }

  result = DerivedStorage[10];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    DerivedStorage[10] = 0;
  }

  return result;
}

__CFString *FigBasicAESCPECryptorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 73))
  {
    v5 = 1;
  }

  else
  {
    v5 = Mutable == 0;
  }

  if (!v5)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigBasicAESCPECryptor: protectorParent<%@> >", *DerivedStorage);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

void FigBasicAESCPECryptorDecryptAAC(uint64_t a1, char *a2, char *a3, size_t a4)
{
  v8 = ADTSGetADTSHeaderSize(a2) + 16;

  FigBasicAESCPECryptorDecryptAudio(a1, a2, a3, a4, v8);
}

void FigBasicAESCPECryptorDecryptAudio(uint64_t a1, char *__src, char *__dst, size_t __n, size_t a5)
{
  v5 = __n;
  v6 = __dst;
  v7 = __src;
  v8 = __n - a5;
  if (__n < a5)
  {
    goto LABEL_12;
  }

  v18 = 0;
  v19 = 0;
  v17 = 0;
  if (a5)
  {
    memcpy(__dst, __src, a5);
    v7 += a5;
    v6 += a5;
    v5 = v8;
  }

  v11 = v5 & 0xFFFFFFFFFFFFFFF0;
  if ((v5 & 0xFFFFFFFFFFFFFFF0) == 0)
  {
LABEL_11:
    v5 &= 0xFu;
LABEL_12:
    if (v5)
    {
      memcpy(v6, v7, v5);
    }

    return;
  }

  v12 = *(a1 + 32);
  BytePtr = CFDataGetBytePtr(*(a1 + 16));
  Length = CFDataGetLength(*(a1 + 16));
  FigCryptSetIV(v12, BytePtr, Length);
  if (!v15)
  {
    FigCryptDecryptMemory(*(a1 + 32), 1, 0, v7, v5 & 0xFFFFFFFFFFFFFFF0, &v19, v6, v5 & 0xFFFFFFFFFFFFFFF0, &v18, &v17);
    if (!v16)
    {
      if (v11 != v19 || v11 != v18 || v17)
      {
        FigBasicAESCPECryptorDecryptAudio_cold_1(&v20);
        return;
      }

      v7 += v11;
      v6 += v11;
      goto LABEL_11;
    }
  }
}

void FigBasicAESCPECryptorDecryptEAC3(uint64_t a1, _BYTE *a2, char *a3, unint64_t a4)
{
  if (a4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      FrameSize = DolbyGetFrameSize(a2);
      v8 += FrameSize;
      if (v8 > a4)
      {
        FigBasicAESCPECryptorDecryptEAC3_cold_2(&v23);
        return;
      }

      v10 = FrameSize;
      if (FrameSize >= 0x10)
      {
        v22 = 0;
        v23 = 0;
        v21 = 0;
        *a3 = *a2;
        v11 = a2 + 16;
        v12 = a3 + 16;
        v13 = FrameSize & 0xFFFFFFF0;
        v14 = v13 - 16;
        if (v13 != 16)
        {
          if (!v7)
          {
            v19 = *(a1 + 32);
            BytePtr = CFDataGetBytePtr(*(a1 + 16));
            Length = CFDataGetLength(*(a1 + 16));
            FigCryptSetIV(v19, BytePtr, Length);
            if (v16)
            {
              return;
            }

            v7 = 1;
          }

          FigCryptDecryptMemory(*(a1 + 32), 1, 0, a2 + 16, (v10 & 0xFFFFFFF0) - 16, &v23, a3 + 16, (v10 & 0xFFFFFFF0) - 16, &v22, &v21);
          if (v17)
          {
            return;
          }

          if (v14 != v23 || v14 != v22 || v21)
          {
            FigBasicAESCPECryptorDecryptEAC3_cold_1(&v24);
            return;
          }

          v11 = &a2[v13];
          v12 = &a3[v13];
        }

        v10 &= 0xFu;
        a3 = v12;
        a2 = v11;
      }

      if (v10)
      {
        memcpy(a3, a2, v10);
        a2 += v10;
        a3 += v10;
      }
    }

    while (v8 < a4);
  }
}

uint64_t FigBasicAESCPECryptorDecryptH264_FPS(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (!v4)
  {
    FigBasicAESCPECryptorDecryptH264_FPS_cold_1(&v14);
    return v14;
  }

  if (*(a1 + 56))
  {
    return FigBasicAESCPECryptorDecryptHLSfMP4NALs_FPS(a1, a2);
  }

  v12 = 0;
  v13 = 0;
  Extensions = CMFormatDescriptionGetExtensions(v4);
  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
  v8 = CFDictionaryGetValue(Value, @"avcC");
  if (v8)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v8))
    {
      CFArrayGetValueAtIndex(v8, 0);
    }
  }

  result = FigH264Bridge_CreateHLSfMP4ParsingInfoFromAVCCData();
  if (!result)
  {
    result = FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV(*(a1 + 48), 0, &v13, &v12, 0, 0);
    if (!result)
    {
      v11 = v12;
      *(a1 + 64) = v13;
      *(a1 + 68) = v11;
      return FigBasicAESCPECryptorDecryptHLSfMP4NALs_FPS(a1, a2);
    }
  }

  return result;
}

uint64_t FigBasicAESCPECryptorDecryptHEVC_FPS(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (!v4)
  {
    FigBasicAESCPECryptorDecryptHEVC_FPS_cold_1(&v16);
    return v16;
  }

  if (*(a1 + 56))
  {
    return FigBasicAESCPECryptorDecryptHLSfMP4NALs_FPS(a1, a2);
  }

  v14 = 0;
  v15 = 0;
  Extensions = CMFormatDescriptionGetExtensions(v4);
  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
  v8 = CFDictionaryGetValue(Value, @"hvcC");
  if (v8)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v8))
    {
      CFArrayGetValueAtIndex(v8, 0);
    }
  }

  v10 = CFDictionaryGetValue(Value, @"lhvC");
  if (v10)
  {
    v11 = CFArrayGetTypeID();
    if (v11 == CFGetTypeID(v10))
    {
      CFArrayGetValueAtIndex(v10, 0);
    }
  }

  result = FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData();
  if (!result)
  {
    result = FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV(*(a1 + 48), 0, &v15, &v14, 0, 0);
    if (!result)
    {
      v13 = v14;
      *(a1 + 64) = v15;
      *(a1 + 68) = v13;
      return FigBasicAESCPECryptorDecryptHLSfMP4NALs_FPS(a1, a2);
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_7_103()
{

  return memcpy(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_8_89(uint64_t a1)
{

  return FigSimpleMutexLock();
}

double OUTLINED_FUNCTION_9_80(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, size_t *a6, char *a7, uint64_t a8, size_t *a9, _BYTE *a10)
{

  return FigCryptDecryptMemory(a1, 1, 0, a4, v10, a6, a7, v10, a9, a10);
}

uint64_t fnpe_GetInterfaceType(uint64_t result)
{
  if (result)
  {
    type = nw_interface_get_type(result);
    if (type > nw_interface_type_cellular)
    {
      if (type == nw_interface_type_wired)
      {
        return 2;
      }

      else
      {
        return type == nw_interface_type_loopback;
      }
    }

    else if (type == nw_interface_type_wifi)
    {
      if (nw_interface_get_subtype() == 1002)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else if (type == nw_interface_type_cellular)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeID figHTTPRequestStatsGetInterfaceCounts(const void *a1, void *a2, void *a3, void *a4)
{
  v8 = CFGetTypeID(a1);
  result = CFDictionaryGetTypeID();
  if (v8 == result)
  {
    Value = CFDictionaryGetValue(a1, @"_kCFNTimingDataNStatWifiRXPackets");
    v11 = CFDictionaryGetValue(a1, @"_kCFNTimingDataNStatCellRXPackets");
    result = CFDictionaryGetValue(a1, @"_kCFNTimingDataNStatWiredRXPackets");
    v12 = result;
    if (Value)
    {
      valuePtr = 0;
      result = CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
      *a3 = valuePtr;
    }

    if (v11)
    {
      valuePtr = 0;
      result = CFNumberGetValue(v11, kCFNumberLongLongType, &valuePtr);
      *a4 = valuePtr;
    }

    if (v12)
    {
      valuePtr = 0;
      result = CFNumberGetValue(v12, kCFNumberLongLongType, &valuePtr);
      *a2 = valuePtr;
    }
  }

  return result;
}

uint64_t RegisterFigAssetDownloaderBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetDownloaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetDownloaderGetClassID_sRegisterFigAssetDownloaderBaseTypeOnce, RegisterFigAssetDownloaderBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigTTMLSynchronicTree()
{
  result = _CFRuntimeRegisterClass();
  sFigTTMLSynchronicTreeID = result;
  return result;
}

uint64_t figTTMLSynchronicTreeCompareDocumentOrderIndex(uint64_t a1, uint64_t a2, int a3)
{
  DocumentOrderIndex = FigTTMLNodeGetDocumentOrderIndex(a1);
  v6 = FigTTMLNodeGetDocumentOrderIndex(a2);
  v7 = DocumentOrderIndex > v6;
  if (DocumentOrderIndex < v6)
  {
    v7 = -1;
  }

  return v7 * a3;
}

uint64_t FigTTMLSynchronicTreeCopyTextNodeArray(uint64_t a1, CFMutableArrayRef *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    CFSetApplyFunction(*(a1 + 56), figTTMLSynchronicTreeCollectTextNode, Mutable);
    v11.length = CFArrayGetCount(Mutable);
    v11.location = 0;
    CFArraySortValues(Mutable, v11, figTTMLSynchronicTreeCompareDocumentOrderIndex, 1);
    v5 = 0;
    *a2 = Mutable;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
    v5 = v7;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v5;
}

void figTTMLSynchronicTreeCollectTextNode(const void *a1, __CFArray *a2)
{
  v4 = 0;
  if (!FigTTMLNodeGetNodeType(a1, &v4) && v4 == 14)
  {
    CFArrayAppendValue(a2, a1);
  }
}

uint64_t FigTTMLSynchronicTreeCopyCaptionArray(uint64_t a1, __CFArray **a2)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v7 = CFArrayCreateMutable(v4, 0, v5);
  v8 = v7;
  if (!a2)
  {
    FigTTMLSynchronicTreeCopyCaptionArray_cold_4(v18);
    goto LABEL_18;
  }

  if (!Mutable)
  {
    FigTTMLSynchronicTreeCopyCaptionArray_cold_3(v18);
LABEL_18:
    v16 = LODWORD(v18[0]);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    FigTTMLSynchronicTreeCopyCaptionArray_cold_2(v18);
    v16 = LODWORD(v18[0]);
    goto LABEL_15;
  }

  CFSetApplyFunction(*(a1 + 56), figTTMLSynchronicTreeCollectCaptionNode, v7);
  v19.length = CFArrayGetCount(v8);
  v19.location = 0;
  CFArraySortValues(v8, v19, figTTMLSynchronicTreeCompareDocumentOrderIndex, 1);
  Count = CFArrayGetCount(v8);
  if (Count)
  {
    v10 = Count;
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
      if (v12)
      {
        CFRelease(v12);
      }

      v15 = CFArrayCreateMutable(v4, 0, v13);
      if (!v15)
      {
        FigTTMLSynchronicTreeCopyCaptionArray_cold_1(v18);
        goto LABEL_18;
      }

      v12 = v15;
      v18[0] = ValueAtIndex;
      v18[1] = v15;
      CFSetApplyFunction(*(a1 + 56), figTTMLSynchronicTreeCollectDescendantTextNode, v18);
      v20.length = CFArrayGetCount(v12);
      v20.location = 0;
      CFArraySortValues(v12, v20, figTTMLSynchronicTreeCompareDocumentOrderIndex, 1);
      CFArrayAppendValue(Mutable, v12);
      ++v11;
    }

    while (v10 != v11);
    *a2 = Mutable;
    CFRelease(v12);
    v16 = 0;
    Mutable = 0;
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_11:
    if (!Mutable)
    {
      return v16;
    }

    goto LABEL_15;
  }

  v16 = 0;
  *a2 = Mutable;
  Mutable = 0;
LABEL_14:
  CFRelease(v8);
  if (Mutable)
  {
LABEL_15:
    CFRelease(Mutable);
  }

  return v16;
}

void figTTMLSynchronicTreeCollectCaptionNode(const void *a1, __CFArray *a2)
{
  v4 = 0;
  if (!FigTTMLNodeGetNodeType(a1, &v4) && v4 == 4)
  {
    CFArrayAppendValue(a2, a1);
  }
}

uint64_t FigTTMLSynchronicTreeCopyCSS(uint64_t a1, const void *a2, void *a3)
{
  v6 = CFDictionaryGetValue(*(a1 + 72), a2);
  value = v6;
  if (v6)
  {
    v7 = CFRetain(v6);
    result = 0;
LABEL_3:
    *a3 = v7;
    return result;
  }

  v9 = FigTTMLSynchronicTreeCopySSS(a1, a2, &value);
  if (!v9)
  {
    CFDictionaryAddValue(*(a1 + 72), a2, value);
    result = 0;
    v7 = value;
    goto LABEL_3;
  }

  v10 = v9;
  if (value)
  {
    CFRelease(value);
  }

  return v10;
}

void figTTMLSynchronicTreeAppendStyleAttribute(const __CFString *a1, uint64_t a2, __CFDictionary *a3)
{
  if (figTTMLSynchronicTreeIsStyleAttribute(a1))
  {
    FigCaptionDynamicStyleCreateMutable();
    CFDictionaryAddValue(a3, a1, 0);
  }
}

void figTTMLSynchronicTreeInheritStyle(void *key, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  cf = 0;
  v3 = *(a2 + 24);
  if (v3)
  {
    goto LABEL_48;
  }

  if (CFDictionaryContainsKey(*(a2 + 16), key))
  {
LABEL_3:
    v5 = cf;
    goto LABEL_4;
  }

  v29 = 0;
  NodeType = FigTTMLNodeGetNodeType(*(a2 + 8), &v29);
  if (NodeType)
  {
    goto LABEL_47;
  }

  if ((v29 - 3) < 4 || v29 == 14)
  {
    ParentNode = FigTTMLNodeGetParentNode(*(a2 + 8));
    if (!ParentNode)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v29 != 2)
    {
      goto LABEL_3;
    }

    ParentNode = *(*a2 + 48);
    if (!ParentNode)
    {
      goto LABEL_3;
    }
  }

  NodeType = FigTTMLSynchronicTreeCopyCSS(*a2, ParentNode, &cf);
  if (NodeType)
  {
LABEL_47:
    v3 = NodeType;
LABEL_48:
    v14 = 0;
    goto LABEL_49;
  }

  v5 = cf;
  Value = CFDictionaryGetValue(cf, key);
  if (Value)
  {
    v10 = Value;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    FigTTMLNodeGetActiveTimeRange(ParentNode, &v23);
    if (!NodeType)
    {
      FigTTMLNodeGetActiveTimeRange(*(a2 + 8), &v26);
      if (!NodeType)
      {
        v39 = v25;
        v40 = v26;
        v41 = v27;
        v11 = DWORD1(v28);
        v42 = v28;
        v37 = v23;
        v38 = v24;
        v12 = *(&v28 + 1);
        v35 = 0;
        v36 = 0;
        v13 = CFGetTypeID(v10);
        if (v13 != FigCaptionDynamicStyleGetTypeID() || FigCaptionDynamicStyleGetKeyFrameCount() <= 1)
        {
          v36 = CFRetain(v10);
LABEL_21:
          v3 = 0;
          v14 = v36;
          v36 = 0;
          goto LABEL_22;
        }

        FigCaptionDynamicStyleGetInitialValue();
        Mutable = FigCaptionDynamicStyleCreateMutable();
        if (!Mutable)
        {
          KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
          if (KeyFrameCount < 1)
          {
            goto LABEL_21;
          }

          v17 = KeyFrameCount;
          v18 = 0;
          while (1)
          {
            v34 = 0.0;
            if (v35)
            {
              CFRelease(v35);
            }

            Mutable = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
            if (Mutable)
            {
              break;
            }

            *&lhs.value = v40;
            lhs.epoch = v41;
            *&rhs.value = v37;
            rhs.epoch = v38;
            CMTimeSubtract(&time, &lhs, &rhs);
            Seconds = CMTimeGetSeconds(&time);
            v20 = v34;
            if ((v11 & 0x1D) == 1)
            {
              time.value = *(&v41 + 1);
              time.timescale = v42;
              time.flags = v11;
              time.epoch = v12;
              v21 = CMTimeGetSeconds(&time);
            }

            else
            {
              v21 = INFINITY;
            }

            v22 = v20 - Seconds;
            if (v20 - Seconds < 0.0)
            {
              v22 = 0.0;
            }

            if (v21 >= v22)
            {
              Mutable = FigCaptionDynamicStyleAddKeyFrameValue();
              if (Mutable)
              {
                break;
              }

              if (v17 != ++v18)
              {
                continue;
              }
            }

            goto LABEL_21;
          }
        }

        v3 = Mutable;
        v14 = 0;
LABEL_22:
        if (v35)
        {
          CFRelease(v35);
        }

        if (v36)
        {
          CFRelease(v36);
        }

        if (!v3)
        {
          CFDictionaryAddValue(*(a2 + 16), key, v14);
          if (!v14)
          {
            goto LABEL_3;
          }

LABEL_28:
          CFRelease(v14);
          goto LABEL_3;
        }

LABEL_49:
        *(a2 + 24) = v3;
        if (!v14)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_47;
  }

LABEL_4:
  if (v5)
  {
    CFRelease(v5);
  }
}

CFMutableDictionaryRef figTTMLSynchronicTree_Init(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = CFGetAllocator(a1);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  *(a1 + 64) = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = CFGetAllocator(a1);
  result = CFDictionaryCreateMutable(v5, 0, v3, v4);
  *(a1 + 72) = result;
  return result;
}

void figTTMLSynchronicTree_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }
}

void figTTMLSynchronicTreeSortTimeline(int a1, CFArrayRef theArray)
{
  v3.length = CFArrayGetCount(theArray);
  v3.location = 0;

  CFArraySortValues(theArray, v3, figTTMLSynchronicTreeSortTimelineComparator, 0);
}

uint64_t figTTMLSynchronicTreeSortTimelineComparator(const __CFArray *a1, const __CFArray *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  v4 = CFArrayGetValueAtIndex(a2, 0);
  memset(&v10, 0, sizeof(v10));
  CMTimeRangeMakeFromDictionary(&v10, ValueAtIndex);
  memset(&v9, 0, sizeof(v9));
  CMTimeRangeMakeFromDictionary(&v9, v4);
  time1 = v10.start;
  start = v9.start;
  v5 = CMTimeCompare(&time1, &start);
  if (v5 < 0)
  {
    return -1;
  }

  else
  {
    return v5 != 0;
  }
}

CFArrayRef figTTMLSynchronicTreeInitializeAnimatableStylesOnce()
{
  values[34] = *MEMORY[0x1E69E9840];
  values[0] = @"http://www.w3.org/ns/ttml#styling backgroundColor";
  values[1] = @"http://www.w3.org/ns/ttml#styling color";
  values[2] = @"http://www.w3.org/ns/ttml#styling direction";
  values[3] = @"http://www.w3.org/ns/ttml#styling display";
  values[4] = @"http://www.w3.org/ns/ttml#styling displayAlign";
  values[5] = @"http://www.w3.org/ns/ttml#styling extent";
  values[6] = @"http://www.w3.org/ns/ttml#styling fontFamily";
  values[7] = @"http://www.w3.org/ns/ttml#styling fontSize";
  values[8] = @"http://www.w3.org/ns/ttml#styling fontStyle";
  values[9] = @"http://www.w3.org/ns/ttml#styling fontWeight";
  values[10] = @"http://www.w3.org/ns/ttml#styling lineHeight";
  values[11] = @"http://www.w3.org/ns/ttml#styling opacity";
  values[12] = @"http://www.w3.org/ns/ttml#styling origin";
  values[13] = @"http://www.w3.org/ns/ttml#styling overflow";
  values[14] = @"http://www.w3.org/ns/ttml#styling padding";
  values[15] = @"http://www.w3.org/ns/ttml#styling position";
  values[16] = @"http://www.w3.org/ns/ttml#styling showBackground";
  values[17] = @"http://www.w3.org/ns/ttml#styling textAlign";
  values[18] = @"http://www.w3.org/ns/ttml#styling textDecoration";
  values[19] = @"http://www.w3.org/ns/ttml#styling textOutline";
  values[20] = @"http://www.w3.org/ns/ttml#styling unicodeBidi";
  values[21] = @"http://www.w3.org/ns/ttml#styling visibility";
  values[22] = @"http://www.w3.org/ns/ttml#styling wrapOption";
  values[23] = @"http://www.w3.org/ns/ttml#styling writingMode";
  values[24] = @"http://www.w3.org/ns/ttml#styling zIndex";
  values[25] = @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay";
  values[26] = @"http://www.w3.org/ns/ttml/profile/imsc1#styling fillLineGap";
  values[27] = @"urn:ebu:tt:style linePadding";
  values[28] = @"urn:ebu:tt:style multiRowAlign";
  values[29] = @"http://www.w3.org/ns/ttml#styling textEmphasis";
  values[30] = @"http://www.w3.org/ns/ttml#styling shear";
  values[31] = @"http://www.w3.org/ns/ttml#styling disparity";
  values[32] = @"http://www.w3.org/ns/ttml#styling luminanceGain";
  values[33] = @"http://www.w3.org/ns/ttml#styling textShadow";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 34, MEMORY[0x1E695E9C0]);
  sAnimatableStyles = result;
  return result;
}

void OUTLINED_FUNCTION_0_207(const __CFDictionary *a1)
{

  CFDictionaryApplyFunction(a1, figTTMLSynchronicTreeMergeStyleset, v1);
}

CMTime *OUTLINED_FUNCTION_2_186(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CMTime *rhs, uint64_t a36, CMTime *lhs, uint64_t a38, CMTime *a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 rhsa, uint64_t rhs_16, uint64_t a45, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a49, uint64_t a50)
{
  rhsa = *(v50 - 256);
  rhs_16 = *(v50 - 240);

  return CMTimeSubtract(&a50, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_4_154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{

  return FigCaptionDynamicStyleCreate();
}

void FigCaptionRendererCaptionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 40) = 0;
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 32) = 0;
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  v6 = *(DerivedStorage + 80);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 80) = 0;
  }

  v7 = *(DerivedStorage + 56);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 56) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v8 = *(DerivedStorage + 8);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *FigCaptionRendererCaptionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCaption: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererCaption_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCaption <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererCaption_FigCaptionRendererIntervalProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCaption <FigCaptionRendererIntervalProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererIntervalProtocol_GetRange(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererIntervalProtocol_SetRange(uint64_t a1, double a2, double a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v7 = *(ProtocolVTable + 16);
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v8(v5, a2, a3);
      }
    }
  }

  return 0;
}

__CFString *FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCaption <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetViewport(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 64);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetCGBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 96);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetCGSize(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 112);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetCGOrigin(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 128);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_PurgeImageCache(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 160);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetZOrder(uint64_t a1, double a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 256);
  if (!v7)
  {
    return 4294954514;
  }

  v5.n128_f64[0] = a2;

  return v7(v3, v5);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 272);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E695F050];
  v6 = *(a2 + 320);
  v5 = *(a2 + 328);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v434.origin = *MEMORY[0x1E695F050];
  v434.size = v7;
  v424 = v7;
  origin = v434.origin;
  v433.origin = v434.origin;
  v433.size = v7;
  v431 = 0;
  data = 0;
  v430 = 0;
  v429 = 0;
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v9 = *(ProtocolVTable + 16);
    if (v9)
    {
      v10 = *(v9 + 48);
      if (v10)
      {
        v10(a1, &v429);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v12 + 72);
      if (v13)
      {
        v13(a1, &v434);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v14 = CMBaseObjectGetProtocolVTable();
  if (v14)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = *(v15 + 104);
      if (v16)
      {
        v16(a1, &v433);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v17 = CMBaseObjectGetProtocolVTable();
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v18 + 208);
      if (v19)
      {
        v19(a1, &data);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v20 = CMBaseObjectGetProtocolVTable();
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v21 + 184);
      if (v22)
      {
        v22(a1, &v431 + 4);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v23 = CMBaseObjectGetProtocolVTable();
  if (v23)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = *(v24 + 192);
      if (v25)
      {
        v25(a1, &v431);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v26 = CMBaseObjectGetProtocolVTable();
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v27 + 224);
      if (v28)
      {
        v28(a1, &v430);
      }
    }
  }

  *(a2 + 757) = 0;
  *(a2 + 757) = CTIsExuberatedLanguage();
  if (!v430)
  {
    goto LABEL_355;
  }

  x = v4->origin.x;
  y = v4->origin.y;
  width = v4->size.width;
  height = v4->size.height;
  v469.origin.x = v4->origin.x;
  v469.origin.y = y;
  v469.size.width = width;
  v469.size.height = height;
  if (CGRectEqualToRect(v434, v469) || v434.size.width <= 0.0 || v434.size.height <= 0.0)
  {
    goto LABEL_355;
  }

  v413 = v5;
  v33 = *MEMORY[0x1E695E480];
  MutableCopy = CFAttributedStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(DerivedStorage + 32));
  values[0] = 0;
  v441.origin = origin;
  v441.size = v424;
  v35 = CMBaseObjectGetDerivedStorage();
  v36 = *(v35 + 40);
  if (v36)
  {
    v37 = CFDictionaryGetValue(v36, @"region") == 0;
  }

  else
  {
    v37 = 1;
  }

  rect2 = width;
  v403 = y;
  v405 = x;
  v427.location = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v38 = CMBaseObjectGetProtocolVTable();
  if (v38)
  {
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = *(v39 + 72);
      if (v40)
      {
        v40(a1, &v441);
      }
    }
  }

  FCRGetVideoPresentationBounds(*(a2 + 376), *(a2 + 384), *(a2 + 344), *(a2 + 352), *(a2 + 360), *(a2 + 368));
  v42 = v41;
  v44 = v43;
  LODWORD(compareOptions) = 0;
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v45 = CMBaseObjectGetProtocolVTable();
  if (v45)
  {
    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = *(v46 + 48);
      if (v47)
      {
        v47(a1, &compareOptions);
      }
    }
  }

  alloc = v33;
  if (v37)
  {
    FCRGetOverscanSafeRectForVideo(a2);
    v49 = v48 * 0.15;
    v50 = 3.0;
LABEL_77:
    v76 = v49 / v50;
    *values = v49 / v50;
    goto LABEL_83;
  }

  if (*(v35 + 16) != 7)
  {
    __s1[0].a = 0.0;
    LODWORD(effectiveRange.location) = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v69 = CMBaseObjectGetProtocolVTable();
    if (v69)
    {
      v70 = *(v69 + 16);
      if (v70)
      {
        v71 = *(v70 + 16);
        if (v71)
        {
          v71(a1, __s1);
        }
      }
    }

    a = __s1[0].a;
    FigCaptionRendererRegionProtocolGetProtocolID();
    v73 = CMBaseObjectGetProtocolVTable();
    if (v73)
    {
      v74 = *(v73 + 16);
      if (v74)
      {
        v75 = *(v74 + 48);
        if (v75)
        {
          v75(*&a, &effectiveRange);
        }
      }
    }

    v49 = v441.size.height / SLODWORD(effectiveRange.location);
    v50 = 1.3;
    goto LABEL_77;
  }

  valuePtr = 0.0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v51 = CMBaseObjectGetProtocolVTable();
  if (v51)
  {
    v52 = *(v51 + 16);
    if (v52)
    {
      v53 = *(v52 + 16);
      if (v53)
      {
        v53(a1, &valuePtr);
      }
    }
  }

  aStr = MutableCopy;
  v54 = valuePtr;
  v55 = MEMORY[0x1E695F058];
  v56 = 0;
  if (valuePtr == 0.0)
  {
    v77 = *(MEMORY[0x1E695F058] + 16);
    *&__s1[0].a = *MEMORY[0x1E695F058];
    *&__s1[0].c = v77;
  }

  else
  {
    do
    {
      v57 = v54;
      __s1[0].a = 0.0;
      FigCaptionRendererBaseProtocolGetProtocolID();
      v58 = CMBaseObjectGetProtocolVTable();
      if (v58)
      {
        v59 = *(v58 + 16);
        if (v59)
        {
          v60 = *(v59 + 8);
          if (v60)
          {
            v60(*&v57, __s1);
          }
        }
      }

      v61 = *&valuePtr;
      if (*&__s1[0].a && !strcmp(*&__s1[0].a, "FigCaptionRendererTTMLRegion"))
      {
        v56 = v61;
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v62 = CMBaseObjectGetProtocolVTable();
      if (v62)
      {
        v63 = *(v62 + 16);
        if (v63)
        {
          v64 = *(v63 + 16);
          if (v64)
          {
            v64(v61, &valuePtr);
          }
        }
      }

      v54 = valuePtr;
    }

    while (valuePtr != 0.0);
    v65 = v55[1];
    *&__s1[0].a = *v55;
    *&__s1[0].c = v65;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v66 = CMBaseObjectGetProtocolVTable();
    if (v66)
    {
      v67 = *(v66 + 16);
      v33 = alloc;
      if (v67)
      {
        v68 = *(v67 + 104);
        if (v68)
        {
          v68(*&v57, __s1);
        }
      }
    }

    else
    {
      v33 = alloc;
    }
  }

  effectiveRange = 0;
  v436 = 0u;
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometrySizeMake();
  if (v56)
  {
    FigCaptionRendererTTMLRegionGetCellResolution(v56, &effectiveRange);
  }

  v76 = v44 * 0.041;
  *values = v44 * 0.041;
  MutableCopy = aStr;
LABEL_83:
  if (v44 > v42)
  {
    v76 = v42 / v44 * v76;
    values[0] = *&v76;
  }

  LOBYTE(v437) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  if (!LOBYTE(v437) && (*(a2 + 376) == 0.0 || *(a2 + 384) == 0.0))
  {
    v76 = v76 * 0.9;
    values[0] = *&v76;
  }

  if (compareOptions == 1)
  {
    v78 = *(a2 + 728);
    if (v78 > 0.0)
    {
      v76 = v78 * 0.8;
      *values = v78 * 0.8;
    }
  }

  v79 = *(v35 + 16);
  if (v79 == 3)
  {
    goto LABEL_107;
  }

  effectiveRange.location = 0;
  effectiveRange.length = 0;
  if (v79 != 7)
  {
    Attribute = CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E69631D8], &effectiveRange);
    if (!Attribute)
    {
      v80 = *MEMORY[0x1E6960868];
      goto LABEL_103;
    }

    v82 = Attribute;
    CFRetain(Attribute);
LABEL_101:
    CFNumberGetValue(v82, kCFNumberCGFloatType, values);
    CFRelease(v82);
    v84 = values[0];
    memset(__s1, 0, 48);
    FCRGetTransform(__s1, *(a2 + 376), *(a2 + 384), *(a2 + 360), *(a2 + 368));
    v76 = __s1[0].b + *&v84 * __s1[0].d;
    values[0] = *&v76;
    goto LABEL_107;
  }

  v80 = *MEMORY[0x1E6960868];
  if (CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E6960868], &effectiveRange))
  {
    memset(__s1, 0, 32);
    FigTextMarkupSizeMakeFromSimplifiedDictionary();
    if (LODWORD(__s1[0].b) == 1886679840 || LODWORD(__s1[0].b) == 1886920736)
    {
      FigGeometryDimensionGetCGFloat();
      valuePtr = v81;
      v82 = CFNumberCreate(v33, kCFNumberCGFloatType, &valuePtr);
      if (v82)
      {
        goto LABEL_101;
      }
    }
  }

LABEL_103:
  if (CFAttributedStringGetAttribute(MutableCopy, 0, v80, &effectiveRange))
  {
    memset(__s1, 0, 32);
    FigTextMarkupSizeMakeFromSimplifiedDictionary();
    if (LODWORD(__s1[0].d) == 1986535456 && *(a2 + 56) == 1)
    {
      v85 = v44 * __s1[0].c / 100.0;
      if (v85 > 0.0)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_107:
  v86 = *(a2 + 200);
  if (v86 > 0.0)
  {
    v85 = v76 * v86;
LABEL_109:
    *&v427.location = v85;
    goto LABEL_111;
  }

  *&v427.location = v76;
LABEL_111:
  v87 = CFNumberCreate(v33, kCFNumberCGFloatType, &v427);
  v448.length = CFAttributedStringGetLength(MutableCopy);
  v448.location = 0;
  CFAttributedStringSetAttribute(MutableCopy, v448, @"kFCRSubtitleRenderer_FontSizeToUse", v87);
  if (v87)
  {
    CFRelease(v87);
  }

  rect = *&v427.location;
  *(v35 + 24) = v427.location;
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  v428 = 100.0;
  v88 = CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E69609A0], &effectiveRange);
  if (v88)
  {
    CFNumberGetValue(v88, kCFNumberCGFloatType, &v428);
  }

  v89 = *MEMORY[0x1E6960998];
  v90 = v428 / 100.0;
  v91 = CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E6960998], &effectiveRange);
  v92 = CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E69608F0], &effectiveRange);
  v93 = *MEMORY[0x1E695E4D0];
  if (v92)
  {
    _ZF = v92 == v93;
  }

  else
  {
    _ZF = 0;
  }

  v95 = !_ZF;
  FCRGetOverscanSafeRectForVideo(a2);
  v98 = v96;
  if (v91)
  {
    if (v95)
    {
      if (v90 * v434.size.height >= v97)
      {
        v99 = v97;
      }

      else
      {
        v99 = v90 * v434.size.height;
      }
    }

    else
    {
      v99 = *(MEMORY[0x1E695F040] + 24);
    }
  }

  else
  {
    if (v95)
    {
      if (v90 * v434.size.width >= v96)
      {
        v99 = v96;
      }

      else
      {
        v99 = v90 * v434.size.width;
      }
    }

    else
    {
      v99 = *(MEMORY[0x1E695F040] + 16);
    }

    v98 = v97;
  }

  v427.location = 0;
  v427.length = 0;
  v100 = *MEMORY[0x1E6960930];
  if (CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E6960930], &v427) || CFAttributedStringGetAttribute(MutableCopy, 0, *MEMORY[0x1E6960970], &v427))
  {
    updateCMRubyAttributeForCoreTextRender(DerivedStorage, MutableCopy, 1);
  }

  v101 = *MEMORY[0x1E695F060];
  v102 = *(MEMORY[0x1E695F060] + 8);
  v437 = 0.0;
  compareOptions = 0;
  v412 = v6;
  v398 = v89;
  if (MutableCopy)
  {
    rect1 = v91;
    ckCaptionSetupText(DerivedStorage, MutableCopy, 0, a2, rect);
    v103 = CFAttributedStringCreateMutableCopy(v33, 0, MutableCopy);
    if (!v103)
    {
      FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_1();
      goto LABEL_145;
    }

    v104 = v103;
    v441.origin.y = 0.0;
    v441.origin.x = 0.0;
    v105 = CFAttributedStringGetAttribute(v103, 0, v89, &v441);
    setupHighlight_0(a2, v104);
    if (CFAttributedStringGetLength(v104) < 1)
    {
      attrName = v93;
      v144 = v100;
LABEL_215:
      CFRelease(v104);
      Length = CFAttributedStringGetLength(MutableCopy);
      v165 = CFNumberCreate(v33, kCFNumberCGFloatType, &compareOptions);
      if (v165)
      {
        v166 = v165;
        v451.location = 0;
        v451.length = Length;
        CFAttributedStringSetAttribute(MutableCopy, v451, @"kFCRSubtitleRenderer_SuggestLineHeight", v165);
        CFRelease(v166);
      }

      v167 = CFNumberCreate(v33, kCFNumberCGFloatType, &v437);
      v91 = rect1;
      if (v167)
      {
        v168 = v167;
        v452.location = 0;
        v452.length = Length;
        CFAttributedStringSetAttribute(MutableCopy, v452, @"kFCRSubtitleRenderer_LinePadding", v167);
        CFRelease(v168);
      }

      v100 = v144;
      v93 = attrName;
      goto LABEL_220;
    }

    if (v105 && *(DerivedStorage + 128))
    {
      __s1[0].a = *MEMORY[0x1E6965AA8];
      values[0] = v93;
      v106 = CFDictionaryCreate(v33, __s1, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v106)
      {
        goto LABEL_144;
      }

      v107 = v106;
      v108 = CTTypesetterCreateWithAttributedStringAndOptions(v104, v106);
      if (!v108)
      {
        goto LABEL_144;
      }

      v394 = v107;
      v109 = v108;
      v110 = CTFramesetterCreateWithTypesetter(v108);
      if (!v110)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v110 = CTFramesetterCreateWithAttributedString(v104);
      v394 = 0;
      v109 = 0;
      if (!v110)
      {
LABEL_144:
        CFRelease(v104);
LABEL_145:
        v91 = rect1;
        goto LABEL_220;
      }
    }

    framesetter = v110;
    v391 = v109;
    FrameAttributesDictionary_0 = createFrameAttributesDictionary_0(DerivedStorage, v105);
    v112 = CFAttributedStringGetLength(v104);
    Mutable = CGPathCreateMutable();
    attrName = v93;
    if (Mutable)
    {
      v114 = 0.0;
      v455.origin.x = 0.0;
      v455.origin.y = 0.0;
      v115 = v112;
      v116 = Mutable;
      v455.size.width = v99;
      v455.size.height = v98;
      CGPathAddRect(Mutable, 0, v455);
      v449.location = 0;
      cf = v116;
      v449.length = v115;
      Frame = CTFramesetterCreateFrame(framesetter, v449, v116, FrameAttributesDictionary_0);
      v118 = 0.0;
      if (Frame)
      {
        v119 = Frame;
        theDict = FrameAttributesDictionary_0;
        aStra = MutableCopy;
        Lines = CTFrameGetLines(Frame);
        if (Lines)
        {
          v121 = Lines;
          Count = CFArrayGetCount(Lines);
          if (Count >= 1)
          {
            v123 = Count;
            v380 = v100;
            __s1[0].a = 0.0;
            values[0] = 0;
            valuePtr = 0.0;
            ValueAtIndex = CFArrayGetValueAtIndex(v121, 0);
            CTLineGetTypographicBounds(ValueAtIndex, &__s1[0].a, values, &valuePtr);
            v125 = 0;
            v126 = __s1[0].a;
            v127 = values[0];
            v128 = valuePtr;
            do
            {
              v129 = CFArrayGetValueAtIndex(v121, v125);
              v130 = CTLineGetStringRange(v129);
              if (v125)
              {
                v131 = 112;
              }

              else
              {
                v131 = 96;
              }

              if (v125)
              {
                v132 = 120;
              }

              else
              {
                v132 = 104;
              }

              *(DerivedStorage + v131) = v130.location;
              *(DerivedStorage + v132) = v130.length;
              ++v125;
            }

            while (v123 != v125);
            v133 = v126 + *&v127;
            v439 = 0;
            Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6965A08]);
            if (!Value || (CFNumberGetValue(Value, kCFNumberSInt32Type, &v439), v114 = 0.0, !v439))
            {
              v135 = 0;
              v114 = 0.0;
              do
              {
                v136 = CFArrayGetValueAtIndex(v121, v135);
                v137 = CTLineGetStringRange(v136);
                if (v137.length >= 1)
                {
                  for (i = v137.length + v137.location - 1; ; --i)
                  {
                    String = CFAttributedStringGetString(v104);
                    CharacterAtIndex = CFStringGetCharacterAtIndex(String, i);
                    if (i <= v137.location)
                    {
                      break;
                    }

                    if (CharacterAtIndex != 13 && CharacterAtIndex != 10)
                    {
                      break;
                    }
                  }
                }

                TypographicBounds = CTLineGetTypographicBounds(v136, &__s1[0].a, values, &valuePtr);
                if (v114 < TypographicBounds)
                {
                  v114 = TypographicBounds;
                }

                ++v135;
              }

              while (v135 != v123);
            }

            v118 = v133 + v128;
            v33 = alloc;
            v100 = v380;
          }
        }

        CFRelease(v119);
        MutableCopy = aStra;
        FrameAttributesDictionary_0 = theDict;
      }

      CFRelease(cf);
      v143.location = 0;
      v112 = v115;
    }

    else
    {
      v143.location = 0;
      v114 = 0.0;
      v118 = 0.0;
    }

    compareOptions = *&v118;
    v143.length = v112;
    v454.width = v99;
    v454.height = v98;
    v145 = CTFramesetterSuggestFrameSizeWithConstraints(framesetter, v143, 0, v454, 0);
    if (v145.width >= v114)
    {
      v146 = v145.width;
    }

    else
    {
      v146 = v114;
    }

    if (*(DerivedStorage + 16) == 1)
    {
      v147 = v145.width;
    }

    else
    {
      v147 = v146;
    }

    __s1[0].b = 0.0;
    __s1[0].a = 0.0;
    Attributes = CFAttributedStringGetAttributes(v104, 0, __s1);
    EdgeStyle = getEdgeStyle(*(a2 + 128), *(a2 + 272), Attributes, *MEMORY[0x1E6960818]);
    v150 = FrameAttributesDictionary_0;
    v144 = v100;
    if (EdgeStyle == 4)
    {
      v151 = v118 * 10.0 / 100.0;
    }

    else if (EdgeStyle == 3 || (v151 = 0.0, EdgeStyle == 2))
    {
      if (rect > 60.0)
      {
        v151 = rect * 0.0882352941 / 1.5;
      }

      else
      {
        v151 = rect * 0.0882352941;
      }
    }

    __s1[0].a = v151;
    v152 = CFAttributedStringGetLength(MutableCopy);
    v153 = CFNumberCreate(v33, kCFNumberCGFloatType, __s1);
    if (v153)
    {
      v154 = v153;
      v450.location = 0;
      v450.length = v152;
      CFAttributedStringSetAttribute(MutableCopy, v450, @"kFigSubtitleRenderer_CompensationInTextLayout", v153);
      CFRelease(v154);
    }

    v155 = v118;
    *(DerivedStorage + 20) = v155;
    if (!CFAttributedStringGetAttribute(v104, 0, *MEMORY[0x1E69608C0], &v441))
    {
      v157 = 0.0;
      v158 = v394;
LABEL_208:
      if (v150)
      {
        CFRelease(v150);
      }

      CFRelease(framesetter);
      if (v391)
      {
        CFRelease(v391);
      }

      v163 = v147 + v151 * 2.0;
      if (v158)
      {
        CFRelease(v158);
      }

      v102 = ceil(v145.height + v151 * 2.0);
      v101 = v163 + v157 * 2.0;
      goto LABEL_215;
    }

    FigTextMarkupDimensionMakeFromSimplifiedDictionary();
    v157 = 0.0;
    v158 = v394;
    if (v156 <= 1701650463)
    {
      if (v156 != 622862368)
      {
        if (v156 == 1667591276)
        {
          FigGeometryDimensionGetCGFloat();
          v157 = v160 * *(a2 + 720);
        }

        goto LABEL_207;
      }

      FigGeometryDimensionGetCGFloat();
      v161 = v162 / 100.0;
    }

    else
    {
      if (v156 != 1701650464)
      {
        if (v156 == 1886679840 || v156 == 1886920736)
        {
          FigGeometryDimensionGetCGFloat();
          v157 = v159;
        }

        goto LABEL_207;
      }

      FigGeometryDimensionGetCGFloat();
    }

    v157 = rect * v161;
LABEL_207:
    v437 = v157;
    goto LABEL_208;
  }

LABEL_220:
  if (CFAttributedStringGetAttribute(MutableCopy, 0, v100, &v427))
  {
    updateCMRubyAttributeForCoreTextRender(DerivedStorage, MutableCopy, 0);
  }

  v169 = v429;
  if (FigCFEqual())
  {
    *&v170 = 0.7;
  }

  else if (FigCFEqual())
  {
    *&v170 = 0.59;
  }

  else if (FigCFEqual())
  {
    *&v170 = 0.53;
  }

  else
  {
    v170 = *(&unk_196E7BAE0 + (FigCFEqual() == 0));
  }

  rect1a = *&v170;
  if (FigCFEqual())
  {
    v171.f64[0] = 0.11;
  }

  else if (FigCFEqual())
  {
    v171.f64[0] = 0.07;
  }

  else if (FigCFEqual())
  {
    v171.f64[0] = 0.26;
  }

  else
  {
    v172 = FigCFEqual();
    v171.f64[0] = 0.1;
    if (v172)
    {
      v171.f64[0] = 0.0;
    }
  }

  if (v169 == 1)
  {
    if (rect <= 12.0)
    {
      v101 = ceil(v101);
      v102 = ceil(*(a2 + 728));
    }

    else
    {
      v102 = *(a2 + 728);
    }

    v180 = 0uLL;
    v173 = v102;
    v174 = v101;
  }

  else
  {
    if (*(a2 + 757))
    {
      v171.f64[0] = 0.4;
    }

    if (rect <= 12.0)
    {
      v171.f64[1] = rect1a;
      v101 = ceil(v101);
      v102 = ceil(v102);
      v181 = vcvt_f32_f64(vrndpq_f64(vmulq_n_f64(v171, rect)));
      v174 = v101 + v181.f32[1];
      v173 = v102 + v181.f32[0];
      v179 = vcvtq_f64_f32(vmul_f32(v181, 0x3F0000003F000000));
    }

    else
    {
      v173 = v102 + rect * v171.f64[0];
      v171.f64[1] = rect1a;
      v174 = v101 + rect * rect1a;
      __asm { FMOV            V1.2D, #0.5 }

      v179 = vmulq_f64(vmulq_n_f64(v171, rect), _Q1);
    }

    v180 = vaddq_f64(v179, 0);
  }

  v182 = v180.f64[1];
  v183 = 0.0;
  if (rect <= 12.0)
  {
    v184 = 0.0;
  }

  else
  {
    v456.origin.x = 0.0;
    rectb = v180.f64[0];
    v456.origin.y = 0.0;
    v456.size.width = v174;
    v456.size.height = v173;
    v457 = CGRectIntegral(v456);
    v184 = v457.origin.x;
    v183 = v457.origin.y;
    v174 = v457.size.width;
    v173 = v457.size.height;
    v457.origin.x = v182;
    v457.origin.y = rectb;
    v457.size.width = v101;
    v457.size.height = v102;
    *(&v180 - 8) = CGRectIntegral(v457);
    v182 = v185;
    v101 = v186;
    v102 = v187;
  }

  if (v91)
  {
    v188 = v180.f64[0];
  }

  else
  {
    v188 = v182;
  }

  recta = v188;
  if (v91)
  {
    v189 = v182;
  }

  else
  {
    v189 = v180.f64[0];
  }

  rect1b = v189;
  if (v91)
  {
    v190 = v102;
  }

  else
  {
    v190 = v101;
  }

  framesettera = *&v190;
  if (v91)
  {
    v191 = v183;
  }

  else
  {
    v101 = v102;
    v191 = v184;
  }

  if (v91)
  {
    v192 = v173;
  }

  else
  {
    v184 = v183;
    v192 = v174;
  }

  LODWORD(v33) = vcvtpd_s64_f64(v192);
  if (v91)
  {
    v173 = v174;
  }

  LODWORD(v91) = vcvtpd_s64_f64(v173);
  v431 = __PAIR64__(v33, v91);
  v193 = *(a2 + 340);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v194 = CMBaseObjectGetProtocolVTable();
  if (!v194 || (v195 = *(v194 + 16)) == 0)
  {
    a_low = 4294954508;
    goto LABEL_282;
  }

  v196 = *(v195 + 200);
  if (!v196)
  {
    a_low = 4294954514;
    goto LABEL_282;
  }

  v197 = v196(a1, v33, v91, v193);
  if (v197)
  {
    a_low = v197;
    goto LABEL_282;
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v198 = CMBaseObjectGetProtocolVTable();
  if (v198)
  {
    v200 = *(v198 + 16);
    v198 += 16;
    v199 = v200;
    if (v200)
    {
      v201 = *(v199 + 208);
      if (v201)
      {
        v198 = v201(a1, &data);
      }
    }
  }

  aStrb = MutableCopy;
  if (!data)
  {
    FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_8(v198);
    a_low = 0;
    goto LABEL_539;
  }

  attrNamea = v93;
  v202 = *MEMORY[0x1E695F1C0];
  v203 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!v203)
  {
    FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_7(__s1);
    a_low = LODWORD(__s1[0].a);
    goto LABEL_539;
  }

  v204 = v203;
  v205 = CGBitmapContextCreate(data, *(a2 + 340) * HIDWORD(v431), v431 * *(a2 + 340), 8uLL, 4 * *(a2 + 340) * HIDWORD(v431), v203, 0x4001u);
  if (!v205)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v373, LODWORD(v374), v375);
    a_low = v372;
    goto LABEL_535;
  }

  v206 = v205;
  CGContextScaleCTM(v205, *(a2 + 340), *(a2 + 340));
  v207 = FigRECGCommandsContextCreate();
  *v392 = *(MEMORY[0x1E695EFD0] + 16);
  *v395 = *MEMORY[0x1E695EFD0];
  *&__s1[0].a = *MEMORY[0x1E695EFD0];
  *&__s1[0].c = *v392;
  stringRange = *(MEMORY[0x1E695EFD0] + 32);
  *&__s1[0].tx = stringRange;
  CGContextSetTextMatrix(v206, __s1);
  if (v207)
  {
    *&__s1[0].a = *v395;
    *&__s1[0].c = *v392;
    *&__s1[0].tx = stringRange;
    CGContextSetTextMatrix(v207, __s1);
    CGColorSpaceRelease(v204);
    *(a2 + 328) = v207;
    cfa = v207;
  }

  else
  {
    CGColorSpaceRelease(v204);
    cfa = *(a2 + 328);
  }

  *(a2 + 320) = v206;
  v441.origin.y = 0.0;
  v441.origin.x = 0.0;
  valuePtr = 0.0;
  v209 = CFAttributedStringGetAttribute(aStrb, 0, @"kFCRSubtitleRenderer_FontSizeToUse", &v441);
  v4 = MEMORY[0x1E695F050];
  v397 = v207;
  if (!v209 || (CFNumberGetValue(v209, kCFNumberCGFloatType, &valuePtr), valuePtr <= 0.0) || (v458.origin.x = recta, v458.origin.y = rect1b, *&v458.size.width = framesettera, v458.size.height = v101, v470.origin.y = v403, v470.origin.x = v405, v470.size.width = rect2, v470.size.height = height, CGRectEqualToRect(v458, v470)))
  {
    CGColorRelease(0);
    goto LABEL_290;
  }

  v236 = CFAttributedStringGetAttributes(aStrb, 0, &v441);
  v237 = *MEMORY[0x1E69607C0];
  v238 = v101;
  color = copyContentColor_0(*(a2 + 16), *(a2 + 160), *(a2 + 40), v236, *MEMORY[0x1E69607C0], *(a2 + 184));
  if (color)
  {
    values[0] = 0;
    v239 = *(a2 + 744);
    v381 = v236;
    if (v239 && CFDictionaryGetValueIfPresent(v239, @"styleOptions", values))
    {
      Components = CGColorGetComponents(color);
      v241 = CGColorGetComponents(color)[3];
      CGColorFromCFArray = createCGColorFromCFArray(values[0], v237, 0);
      v243 = CGColorGetComponents(CGColorFromCFArray);
      v244 = 0;
      if (v241 > 0.0)
      {
        v245 = v243[3];
        if (v241 < v245)
        {
          *&__s1[0].a = *Components;
          __s1[0].c = Components[2];
          __s1[0].d = v245;
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v244 = DeviceRGB;
          if (DeviceRGB)
          {
            v247 = CGColorCreate(DeviceRGB, &__s1[0].a);
            if (v247)
            {
              v248 = v247;
              CGColorRelease(color);
              color = v248;
            }
          }
        }
      }
    }

    else
    {
      v244 = 0;
      CGColorFromCFArray = 0;
    }

    CGColorSpaceRelease(v244);
    CGColorRelease(CGColorFromCFArray);
    v236 = v381;
  }

  else
  {
    color = 0;
  }

  v253 = valuePtr;
  if (FigCFEqual())
  {
    v254 = 0.35;
  }

  else if (FigCFEqual())
  {
    v254 = 0.15;
  }

  else if (FigCFEqual())
  {
    v254 = 0.26;
  }

  else
  {
    v324 = FigCFEqual();
    v254 = 0.23;
    if (v324)
    {
      v254 = 0.0;
    }
  }

  v325 = ceil(v253 * v254);
  *(DerivedStorage + 136) = v325;
  CGContextSaveGState(v206);
  v326 = cfa;
  if (cfa)
  {
    CGContextSaveGState(cfa);
    CGContextSetFontRenderingStyle();
    CGContextSetFontRenderingStyle();
    CGContextSetShouldSmoothFonts(v206, 0);
    CGContextSetShouldSmoothFonts(cfa, 0);
    CGContextSetShouldAntialias(v206, 1);
    CGContextSetShouldAntialias(cfa, 1);
    CGContextSetInterpolationQuality(v206, kCGInterpolationHigh);
    CGContextSetInterpolationQuality(cfa, kCGInterpolationHigh);
    if (!color)
    {
      goto LABEL_451;
    }

    CGContextSetFillColorWithColor(v206, color);
    CGContextSetFillColorWithColor(cfa, color);
    fillRoundedRect(v206, v191, v184, v192, v173, v325);
    v327 = cfa;
  }

  else
  {
    CGContextSetFontRenderingStyle();
    CGContextSetShouldSmoothFonts(v206, 0);
    CGContextSetShouldAntialias(v206, 1);
    CGContextSetInterpolationQuality(v206, kCGInterpolationHigh);
    if (!color)
    {
      goto LABEL_451;
    }

    CGContextSetFillColorWithColor(v206, color);
    v327 = v206;
  }

  fillRoundedRect(v327, v191, v184, v192, v173, v325);
LABEL_451:
  key = *MEMORY[0x1E6960988];
  if (CFDictionaryContainsKey(v236, *MEMORY[0x1E6960988]))
  {
    if (!CGColorSpaceCreateWithName(v202))
    {
      FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_3();
      v329 = 0;
      Image = 0;
      v343 = 0;
      goto LABEL_543;
    }

    theDicta = CGColorSpaceCreateWithName(v202);
    v328 = CGBitmapContextCreate(0, *(a2 + 340) * v33, *(a2 + 340) * v91, 8uLL, 4 * *(a2 + 340) * v33, theDicta, 0x4001u);
    v329 = v328;
    if (!v328)
    {
      FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_2();
      goto LABEL_542;
    }

    *&__s1[0].a = *v395;
    *&__s1[0].c = *v392;
    *&__s1[0].tx = stringRange;
    CGContextSetTextMatrix(v328, __s1);
    values[0] = 0;
    v330 = CFDictionaryGetValue(v236, key);
    CFNumberGetValue(v330, kCFNumberCGFloatType, values);
    v331 = *values / 100.0;
    if (fabs(*values) > 100.0)
    {
      v331 = 0.0;
    }

    values[0] = *&v331;
    v332 = CFDictionaryContainsKey(v236, v398);
    v333 = values[0];
    v334 = alloc;
    if (v332)
    {
      __s1[0].a = 1.0;
      *&__s1[0].b = values[0];
      *&__s1[0].c = xmmword_196E7BAF0;
      *&__s1[0].tx = 0uLL;
      v463.origin.x = v191;
      v463.origin.y = v184;
      v463.size.width = v192;
      v463.size.height = v173;
      v464 = CGRectApplyAffineTransform(v463, __s1);
      __s1[0].a = 1.0;
      *&__s1[0].b = v333;
      *&__s1[0].c = xmmword_196E7BAF0;
      *&__s1[0].tx = 0uLL;
      v335 = v173 / v464.size.height;
      CGContextConcatCTM(v329, __s1);
      v336 = *(a2 + 340);
      v337 = v335 * v336;
    }

    else
    {
      *&__s1[0].a = xmmword_196E7BB00;
      *&__s1[0].c = values[0];
      __s1[0].d = 1.0;
      *&__s1[0].tx = 0uLL;
      v465.origin.x = v191;
      v465.origin.y = v184;
      v465.size.width = v192;
      v465.size.height = v173;
      v466 = CGRectApplyAffineTransform(v465, __s1);
      *&__s1[0].a = xmmword_196E7BB00;
      *&__s1[0].c = v333;
      __s1[0].d = 1.0;
      *&__s1[0].tx = 0uLL;
      v339 = v192 / v466.size.width;
      CGContextConcatCTM(v329, __s1);
      v337 = *(a2 + 340);
      v336 = v339 * v337;
    }

    CGContextScaleCTM(v329, v336, v337);
    CGContextSetFontRenderingStyle();
    CGContextSetShouldSmoothFonts(v329, 0);
    CGContextSetShouldAntialias(v329, 1);
    CGContextSetInterpolationQuality(v329, kCGInterpolationHigh);
    *(a2 + 320) = v329;
    v338 = v238;
    v326 = cfa;
    if (cfa)
    {
      *(a2 + 328) = v329;
    }
  }

  else
  {
    theDicta = 0;
    v329 = 0;
    v334 = alloc;
    v338 = v238;
  }

  if (attrNamea != CFDictionaryGetValue(*(DerivedStorage + 40), @"FigFCRPreview_DisableTextEdge") && (getEdgeStyle(*(a2 + 128), *(a2 + 272), v236, *MEMORY[0x1E6960818]) - 1) >= 3)
  {
    v344 = CFAttributedStringCreateMutableCopy(v334, 0, aStrb);
    if (v344)
    {
      v345 = v344;
      setupHighlight_0(a2, v344);
      v396 = v345;
      if (ckCaptionSetupText(DerivedStorage, v345, 2, a2, valuePtr) || ckCaptionDrawText(DerivedStorage, v345, a2, 1, 1, valuePtr, recta, rect1b, *&framesettera, v338) || (v371 = CFAttributedStringCreateMutableCopy(v334, 0, aStrb)) == 0)
      {
        Image = 0;
        v346 = v345;
        v343 = theDicta;
        goto LABEL_519;
      }

      v341 = v371;
      v379 = 0;
      goto LABEL_466;
    }

LABEL_542:
    Image = 0;
    v343 = theDicta;
    goto LABEL_543;
  }

  v340 = CFAttributedStringCreateMutableCopy(v334, 0, aStrb);
  if (!v340)
  {
    goto LABEL_542;
  }

  v341 = v340;
  setupHighlight_0(a2, v340);
  v396 = 0;
  v379 = 1;
LABEL_466:
  v399 = v341;
  if (ckCaptionSetupText(DerivedStorage, v341, 1, a2, valuePtr))
  {
    Image = 0;
    v343 = theDicta;
    goto LABEL_518;
  }

  v382 = v236;
  v347 = *(DerivedStorage + 56);
  if (!v347)
  {
    goto LABEL_516;
  }

  v348 = CFArrayGetCount(v347);
  if (v348 < 1)
  {
    goto LABEL_516;
  }

  v349 = v348;
  v377 = @"CMTextHighlightAttributeKey_BackgroundColor";
  v375 = @"CMTextHighlightAttributeKey_FocusIndex";
  v376 = @"CMTextHighlightAttributeKey_CompareFlags";
  attrNameb = *MEMORY[0x1E69659D8];
  v406 = *MEMORY[0x1E6965630];
  v350 = 0;
  v378 = v329;
  stringRangea = v348;
  do
  {
    v351 = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v350);
    if (!v351)
    {
      goto LABEL_512;
    }

    v352 = v351;
    if (!CFDictionaryGetValue(v351, @"CMTextHighlightAttributeKey_StringToHighlight"))
    {
      goto LABEL_512;
    }

    v353 = CFAttributedStringGetString(v399);
    v354 = CFDictionaryGetValue(v352, @"CMTextHighlightAttributeKey_CueID");
    if (v354 && CFStringCompare(v353, v354, 0))
    {
      goto LABEL_511;
    }

    rect2a = CFDictionaryGetValue(v352, @"CMTextHighlightAttributeKey_StringToHighlight");
    LODWORD(values[0]) = 0;
    memset(__s1, 0, 32);
    v355 = CFDictionaryGetValue(v352, @"CMTextHighlightAttributeKey_ForegroundColor");
    for (j = 0; j != 4; ++j)
    {
      if (v355)
      {
        if (!FigCFArrayGetFloatAtIndex())
        {
          goto LABEL_511;
        }

        v357 = *values;
      }

      else
      {
        v357 = *(&xmmword_196E7BB58 + j);
      }

      *(&__s1[0].a + j) = v357;
    }

    v358 = createCGColorFromCFArray(0, 0, __s1);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v358, 0.5);
    v359 = CFDictionaryGetValue(v352, @"CMTextHighlightAttributeKey_BackgroundColor");
    v360 = 0;
    v393 = v350;
    while (1)
    {
      if (!v359)
      {
        v361 = dbl_196E7BB78[v360];
        goto LABEL_490;
      }

      if (!FigCFArrayGetFloatAtIndex())
      {
        break;
      }

      v361 = *values;
LABEL_490:
      *(&__s1[0].a + v360++) = v361;
      if (v360 == 4)
      {
        v362 = createCGColorFromCFArray(0, 0, __s1);
        v363 = CGColorCreateCopyWithAlpha(v362, 0.7);
        LODWORD(compareOptions) = 0;
        FigCFDictionaryGetIntIfPresent();
        LODWORD(v437) = -1;
        FigCFDictionaryGetIntIfPresent();
        v453.length = CFStringGetLength(v353);
        v453.location = 0;
        Results = CFStringCreateArrayWithFindResults(alloc, v353, rect2a, v453, compareOptions);
        if (Results)
        {
          v365 = Results;
          rect2b = v363;
          if (CFArrayGetCount(Results) >= 1)
          {
            v366 = 0;
            do
            {
              v367 = CFArrayGetValueAtIndex(v365, v366);
              v368 = v367;
              v369 = v358;
              v370 = v362;
              if (LODWORD(v437) != -1)
              {
                if (v366 + cueHighlightFocusIndexStart == SLODWORD(v437))
                {
                  v369 = v358;
                }

                else
                {
                  v369 = CopyWithAlpha;
                }

                if (v366 + cueHighlightFocusIndexStart == SLODWORD(v437))
                {
                  v370 = v362;
                }

                else
                {
                  v370 = rect2b;
                }
              }

              CFAttributedStringSetAttribute(v399, *v367, attrNameb, v369);
              CFAttributedStringSetAttribute(v399, *v368, v406, v370);
              ++v366;
            }

            while (v366 < CFArrayGetCount(v365));
          }

          cueHighlightFocusIndexStart += CFArrayGetCount(v365);
          CFRelease(v365);
          v363 = rect2b;
        }

        if (v358)
        {
          goto LABEL_504;
        }

        goto LABEL_505;
      }
    }

    v363 = 0;
    v362 = 0;
    if (v358)
    {
LABEL_504:
      CFRelease(v358);
    }

LABEL_505:
    if (CopyWithAlpha)
    {
      CFRelease(CopyWithAlpha);
    }

    v329 = v378;
    if (v362)
    {
      CFRelease(v362);
    }

    v350 = v393;
    if (v363)
    {
      CFRelease(v363);
    }

LABEL_511:
    v326 = cfa;
    v349 = stringRangea;
LABEL_512:
    ++v350;
  }

  while (v350 != v349);
LABEL_516:
  v343 = theDicta;
  if (ckCaptionDrawText(DerivedStorage, v399, a2, 0, v379, valuePtr, recta, rect1b, *&framesettera, v238) || !CFDictionaryContainsKey(v382, key))
  {
    Image = 0;
  }

  else
  {
    *(a2 + 320) = v206;
    if (v326)
    {
      *(a2 + 328) = v326;
    }

    Image = CGBitmapContextCreateImage(v329);
    if (Image)
    {
      v467.origin.x = v191;
      v467.origin.y = v184;
      v467.size.width = v192;
      v467.size.height = v173;
      CGContextDrawImage(v206, v467, Image);
      if (v326)
      {
        v468.origin.x = v191;
        v468.origin.y = v184;
        v468.size.width = v192;
        v468.size.height = v173;
        CGContextDrawImage(v326, v468, Image);
      }
    }

    else
    {
      FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_4();
    }
  }

LABEL_518:
  CFRelease(v399);
  v346 = v396;
  if (v396)
  {
LABEL_519:
    CFRelease(v346);
  }

LABEL_543:
  CGContextRestoreGState(v206);
  if (v326)
  {
    CGContextRestoreGState(v326);
  }

  CGColorRelease(color);
  if (Image)
  {
    CGImageRelease(Image);
  }

  if (v329)
  {
    CGContextRelease(v329);
  }

  v4 = MEMORY[0x1E695F050];
  if (v343)
  {
    CGColorSpaceRelease(v343);
  }

LABEL_290:
  v210 = CGBitmapContextCreateImage(v206);
  if (!v210)
  {
    FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_6(__s1);
    goto LABEL_538;
  }

  v211 = v210;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v212 = CMBaseObjectGetProtocolVTable();
  if (v212)
  {
    v213 = *(v212 + 16);
    if (v213)
    {
      v214 = *(v213 + 168);
      if (v214)
      {
        v214(a1, v211);
      }
    }
  }

  CGImageRelease(v211);
  if (!v397)
  {
LABEL_302:
    FigCaptionRendererNodeProtocolGetProtocolID();
    v220 = CMBaseObjectGetProtocolVTable();
    if (v220)
    {
      v221 = *(v220 + 16);
      if (v221)
      {
        v222 = *(v221 + 216);
        if (v222)
        {
          v222(a1, 0);
        }
      }
    }

    FigCaptionRendererNodeProtocolGetProtocolID();
    v223 = CMBaseObjectGetProtocolVTable();
    if (v223)
    {
      v224 = *(v223 + 16);
      if (v224)
      {
        v225 = *(v224 + 112);
        if (v225)
        {
          v225(a1, v192, v173);
        }
      }
    }

    v226 = v433.origin;
    v433.size.width = v192;
    v433.size.height = v173;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v227 = CMBaseObjectGetProtocolVTable();
    if (v227)
    {
      v228 = *(v227 + 16);
      if (v228)
      {
        v229 = *(v228 + 96);
        if (v229)
        {
          v229(a1, v226.x, v226.y, v192, v173);
        }
      }
    }

    if (*(DerivedStorage + 88))
    {
      v230 = aStrb;
      if (aStrb)
      {
        v230 = CFRetain(aStrb);
      }

      *(DerivedStorage + 80) = v230;
    }

    if (aStrb && *(a2 + 756))
    {
      if (CFAttributedStringGetLength(aStrb))
      {
        *(a2 + 756) = 0;
        if (dword_1EAF17A78)
        {
          LODWORD(values[0]) = 0;
          LOBYTE(valuePtr) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v232 = values[0];
          v233 = LOBYTE(valuePtr);
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, LOBYTE(valuePtr)))
          {
            v234 = v232;
          }

          else
          {
            v234 = v232 & 0xFFFFFFFE;
          }

          if (v234)
          {
            LODWORD(v441.origin.x) = 136315394;
            *(&v441.origin.x + 4) = "FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw";
            WORD2(v441.origin.y) = 2112;
            *(&v441.origin.y + 6) = aStrb;
            _os_log_send_and_compose_impl(v234, 0, __s1, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v233, "<<<< FigCaptionRendererCaption >>>> %s: CaptionRendererOutput Data : %@", &v441, 22);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v4 = MEMORY[0x1E695F050];
          if (dword_1EAF17A78)
          {
            LODWORD(values[0]) = 0;
            LOBYTE(valuePtr) = 0;
            v249 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v250 = values[0];
            v251 = LOBYTE(valuePtr);
            if (os_log_type_enabled(v249, LOBYTE(valuePtr)))
            {
              v252 = v250;
            }

            else
            {
              v252 = v250 & 0xFFFFFFFE;
            }

            if (v252)
            {
              LODWORD(v441.origin.x) = 136316162;
              *(&v441.origin.x + 4) = "FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw";
              WORD2(v441.origin.y) = 2048;
              *(&v441.origin.y + 6) = v433.origin.x;
              HIWORD(v441.size.width) = 2048;
              v441.size.height = v433.origin.y;
              v442 = 2048;
              v443 = v433.size.width;
              v444 = 2048;
              v445 = v433.size.height;
              LODWORD(v374) = 52;
              _os_log_send_and_compose_impl(v252, 0, __s1, 128, &dword_1962D5000, v249, v251, "<<<< FigCaptionRendererCaption >>>> %s: CaptionRendererOutput CGBounds : x=%f, y=%f, w=%f, h=%f", &v441, v374, *&v375, *&v376, *&v377);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v4 = MEMORY[0x1E695F050];
          }
        }
      }

      CGContextRelease(v206);
      v6 = v412;
      v235 = aStrb;
    }

    else
    {
      CGContextRelease(v206);
      v6 = v412;
      v235 = aStrb;
      if (!aStrb)
      {
LABEL_353:
        *(a2 + 320) = v6;
        if (v413)
        {
          *(a2 + 328) = v413;
        }

LABEL_355:
        v255 = *DerivedStorage;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v256 = CMBaseObjectGetProtocolVTable();
        if (v256)
        {
          v257 = *(v256 + 16);
          if (v257)
          {
            v258 = *(v257 + 280);
            if (v258)
            {
              v258(v255, a2);
            }
          }
        }

        if (!v6 && !*(a2 + 296))
        {
          return 0;
        }

        a_low = 0;
        if (CGRectEqualToRect(v433, *v4))
        {
          return a_low;
        }

        v259 = v433.size.width;
        if (v433.size.width <= 0.0 || v433.size.height <= 0.0 || !data)
        {
          return a_low;
        }

        if (*(a2 + 296))
        {
          *&__s1[0].a = origin;
          *&__s1[0].c = v424;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v260 = CMBaseObjectGetProtocolVTable();
          if (v260)
          {
            v261 = *(v260 + 16);
            if (v261)
            {
              v262 = *(v261 + 104);
              if (v262)
              {
                v262(a1, __s1);
              }
            }
          }

          v263 = CFDictionaryGetValue(*(a2 + 296), a1);
          if (!*(a2 + 336))
          {
            v264 = *(MEMORY[0x1E695F058] + 16);
            v441.origin = *MEMORY[0x1E695F058];
            v441.size = v264;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v265 = CMBaseObjectGetProtocolVTable();
            if (v265)
            {
              v266 = *(v265 + 16);
              if (v266)
              {
                v267 = *(v266 + 72);
                if (v267)
                {
                  v267(a1, &v441);
                }
              }
            }

            b = __s1[0].b;
            if (v429 == 7)
            {
              v269 = v441.size.height - __s1[0].b - __s1[0].d;
            }

            else
            {
              v274 = __s1[0].a;
              v275 = *&__s1[0].c;
              MidY = CGRectGetMidY(*(&b - 1));
              v277 = CGRectGetMidY(v441);
              v269 = v277 + v277 - MidY + __s1[0].d * -0.5;
            }

            __s1[0].b = v269;
          }

          v278 = *(DerivedStorage + 136);
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v279 = CMBaseObjectGetProtocolVTable();
          if (v279)
          {
            v280 = *(v279 + 16);
            if (v280)
            {
              v281 = *(v280 + 152);
              if (v281)
              {
                v281(v263, v278);
              }
            }
          }

          Alpha = *(a2 + 184);
          v283 = *(DerivedStorage + 32);
          if (v283 && CFAttributedStringGetLength(v283) >= 1)
          {
            v441.origin.y = 0.0;
            v441.origin.x = 0.0;
            v284 = CFAttributedStringGetAttributes(*(DerivedStorage + 32), 0, &v441);
            v285 = copyContentColor_0(*(a2 + 16), *(a2 + 160), *(a2 + 40), v284, *MEMORY[0x1E69607C0], *(a2 + 184));
            v286 = v285;
            if (v285)
            {
              Alpha = CGColorGetAlpha(v285);
            }
          }

          else
          {
            v286 = 0;
          }

          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v287 = CMBaseObjectGetProtocolVTable();
          if (v287)
          {
            v288 = *(v287 + 16);
            if (v288)
            {
              v289 = *(v288 + 168);
              if (v289)
              {
                v289(v263, Alpha);
              }
            }
          }

          v290 = *&__s1[0].c;
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v291 = CMBaseObjectGetProtocolVTable();
          if (v291)
          {
            v292 = *(v291 + 16);
            if (v292)
            {
              v293 = *(v292 + 88);
              if (v293)
              {
                v293(v263, *&v290, *(&v290 + 1));
              }
            }
          }

          v459.origin.x = __s1[0].a;
          v459.origin.y = __s1[0].b;
          v459.size = *&__s1[0].c;
          MidX = CGRectGetMidX(v459);
          v460.origin.x = __s1[0].a;
          v460.origin.y = __s1[0].b;
          v460.size = *&__s1[0].c;
          v295 = CGRectGetMidY(v460);
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v296 = CMBaseObjectGetProtocolVTable();
          if (v296)
          {
            v297 = *(v296 + 16);
            if (v297)
            {
              v298 = *(v297 + 72);
              if (v298)
              {
                v298(v263, MidX, v295);
              }
            }
          }

          v441.origin.x = 0.0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v299 = CMBaseObjectGetProtocolVTable();
          if (v299 && (v300 = *(v299 + 16)) != 0 && (v301 = *(v300 + 176)) != 0)
          {
            v301(a1, &v441);
            v302 = v441.origin.x;
          }

          else
          {
            v302 = 0.0;
          }

          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v303 = CMBaseObjectGetProtocolVTable();
          if (v303)
          {
            v304 = *(v303 + 16);
            if (v304)
            {
              v305 = *(v304 + 120);
              if (v305)
              {
                v305(v263, *&v302);
              }
            }
          }

          effectiveRange.location = 0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v306 = CMBaseObjectGetProtocolVTable();
          if (v306)
          {
            v307 = *(v306 + 16);
            if (v307)
            {
              v308 = *(v307 + 400);
              if (v308)
              {
                v308(a1, &effectiveRange);
                location = effectiveRange.location;
                if (effectiveRange.location)
                {
                  FigCaptionRendererOutputNodeProtocolGetProtocolID();
                  v310 = CMBaseObjectGetProtocolVTable();
                  if (v310)
                  {
                    v311 = *(v310 + 16);
                    if (v311)
                    {
                      v312 = *(v311 + 200);
                      if (v312)
                      {
                        v312(v263, location);
                      }
                    }
                  }
                }
              }
            }
          }

          if (v286)
          {
            CFRelease(v286);
          }

          return 0;
        }

        v270 = (v433.size.height + v433.origin.y);
        v271 = v434.origin.y;
        if (v433.origin.y <= v434.origin.y)
        {
          v273 = 0;
        }

        else
        {
          v272 = v434.origin.y + v434.size.height;
          if (v433.origin.y > v434.origin.y + v434.size.height)
          {
            return 0;
          }

          if (v433.size.height + v433.origin.y <= v272)
          {
            v273 = 0;
          }

          else
          {
            v270 = v272;
            v273 = (v433.size.height - (v272 - v433.origin.y));
          }

          v271 = v433.origin.y;
        }

        v313 = v433.origin.x;
        v314 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        if (!v314)
        {
          FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_11(__s1);
          return LODWORD(__s1[0].a);
        }

        v204 = v314;
        v315 = v270 - v271;
        if (v315 >= v431)
        {
          v316 = v431;
        }

        else
        {
          v316 = v270 - v271;
        }

        if (v316 + v273 <= v431 || v273 <= 0)
        {
          v318 = v273;
        }

        else
        {
          v318 = v431 - v316;
        }

        v319 = CGBitmapContextCreate(data + v318 * *(a2 + 340) * 4 * HIDWORD(v431) * *(a2 + 340), HIDWORD(v431) * *(a2 + 340), *(a2 + 340) * v316, 8uLL, 4 * HIDWORD(v431) * *(a2 + 340), v314, 0x4001u);
        if (v319)
        {
          v206 = v319;
          CGContextScaleCTM(v319, *(a2 + 340), *(a2 + 340));
          v320 = *(MEMORY[0x1E695EFD0] + 16);
          *&__s1[0].a = *MEMORY[0x1E695EFD0];
          *&__s1[0].c = v320;
          *&__s1[0].tx = *(MEMORY[0x1E695EFD0] + 32);
          CGContextSetTextMatrix(v206, __s1);
          CGColorSpaceRelease(v204);
          v321 = CGBitmapContextCreateImage(v206);
          if (!v321)
          {
            FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_9(__s1);
            aStrb = 0;
            goto LABEL_538;
          }

          v322 = v321;
          v461.origin.y = v271;
          v461.size.height = v315;
          v461.origin.x = v313;
          v461.size.width = v259;
          v462 = CGRectIntegral(v461);
          CGContextDrawImage(v6, v462, v322);
          CGImageRelease(v322);
          CGContextRelease(v206);
          return 0;
        }

        FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_10(__s1);
        aStrb = 0;
        a_low = LODWORD(__s1[0].a);
LABEL_535:
        CGColorSpaceRelease(v204);
        goto LABEL_539;
      }
    }

    CFRelease(v235);
    goto LABEL_353;
  }

  v215 = FigRECGCommandsContextCreate();
  if (v215)
  {
    v216 = v215;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v217 = CMBaseObjectGetProtocolVTable();
    if (v217)
    {
      v218 = *(v217 + 16);
      if (v218)
      {
        v219 = *(v218 + 392);
        if (v219)
        {
          v219(a1, v216);
        }
      }
    }

    CFRelease(v216);
    goto LABEL_302;
  }

  FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Draw_cold_5(__s1);
LABEL_538:
  a_low = LODWORD(__s1[0].a);
  CGContextRelease(v206);
LABEL_539:
  MutableCopy = aStrb;
LABEL_282:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return a_low;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Layout(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(MEMORY[0x1E695F050] + 16);
  v52.origin = *MEMORY[0x1E695F050];
  v52.size = v5;
  v51 = *MEMORY[0x1E695F060];
  v6 = *MEMORY[0x1E695EFF8];
  v49[1] = v5;
  v50 = v6;
  v49[0] = v52.origin;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v9 = *(v8 + 72);
      if (v9)
      {
        v9(a1, v49);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v10 = CMBaseObjectGetProtocolVTable();
  if (v10)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v11 + 104);
      if (v12)
      {
        v12(a1, &v52);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v13 = CMBaseObjectGetProtocolVTable();
  if (v13)
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v14 + 120);
      if (v15)
      {
        v15(a1, &v51);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v16 = CMBaseObjectGetProtocolVTable();
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v17 + 136);
      if (v18)
      {
        v18(a1, &v50);
      }
    }
  }

  if (v52.origin.x != v50.x || v52.origin.y != v50.y)
  {
    v52.origin = v50;
    v19 = v50;
    size = v52.size;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v21 = CMBaseObjectGetProtocolVTable();
    if (v21)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = *(v22 + 96);
        if (v23)
        {
          v23(a1, v19.x, v19.y, size.width, size.height);
        }
      }
    }
  }

  if (v52.size.width != v51.width || v52.size.height != v51.height)
  {
    v52.size = v51;
    origin = v52.origin;
    v25 = v51;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v26 = CMBaseObjectGetProtocolVTable();
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v27 + 96);
        if (v28)
        {
          v28(a1, origin.x, origin.y, v25.width, v25.height);
        }
      }
    }

    FigCaptionRendererNodeProtocolGetProtocolID();
    v29 = CMBaseObjectGetProtocolVTable();
    if (v29)
    {
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = *(v30 + 216);
        if (v31)
        {
          v31(a1, 1);
        }
      }
    }
  }

  v32 = *(a2 + 312);
  if (v32)
  {
    theDict = 0;
    FigCaptionRendererLayoutContextGetSubtitleSample(v32, &theDict);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"SubtitleContent");
      if (Value)
      {
        v34 = Value;
        Count = CFArrayGetCount(Value);
        v47 = 0;
        FigCaptionRendererLayoutContextGetMapping(*(a2 + 312), a1, &v47);
        if (Count >= 1)
        {
          v36 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v34, v36);
            if (ValueAtIndex)
            {
              v38 = ValueAtIndex;
              if (CFAttributedStringGetLength(ValueAtIndex))
              {
                if (v38 == v47)
                {
                  break;
                }
              }
            }

            if (Count == ++v36)
            {
              goto LABEL_49;
            }
          }

          Length = CFAttributedStringGetLength(v38);
          if (*(DerivedStorage + 88))
          {
            v53.location = 0;
            v53.length = Length;
            CFAttributedStringReplaceAttributedString(v38, v53, *(DerivedStorage + 80));
          }

          else
          {
            v40 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, (DerivedStorage + 24));
            v54.location = 0;
            v54.length = Length;
            CFAttributedStringSetAttribute(v38, v54, @"kFigSubtitleRenderer_FontSizeToUse", v40);
            if (v40)
            {
              CFRelease(v40);
            }
          }

          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v52);
          v55.location = 0;
          v55.length = Length;
          CFAttributedStringSetAttribute(v38, v55, @"kFigSubtitleRenderer_SuggestTextLayout", DictionaryRepresentation);
          if (DictionaryRepresentation)
          {
            CFRelease(DictionaryRepresentation);
          }
        }
      }
    }
  }

LABEL_49:
  v42 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v43 = CMBaseObjectGetProtocolVTable();
  if (!v43)
  {
    return 4294954508;
  }

  v44 = *(v43 + 16);
  if (!v44)
  {
    return 4294954508;
  }

  v45 = *(v44 + 288);
  if (v45)
  {
    return v45(v42, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1)
{
  v41 = *MEMORY[0x1E695EFF8];
  v48 = *MEMORY[0x1E695EFF8];
  __s1 = 0;
  theArray = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v4 = *(ProtocolVTable + 16)) == 0)
  {
    v23 = 4294954508;
LABEL_28:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17A70, v23, "<<<< FigCaptionRendererCaption >>>>", 5647, v1);
    return v23;
  }

  v5 = *(v4 + 344);
  if (!v5)
  {
    v23 = 4294954514;
    goto LABEL_28;
  }

  v6 = v5(a1, &theArray);
  if (v6)
  {
    v23 = v6;
    goto LABEL_28;
  }

  if (!theArray || !CFArrayGetCount(theArray))
  {
    return 0;
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v7 = CMBaseObjectGetProtocolVTable();
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v8 + 136);
      if (v9)
      {
        v9(a1, &v48);
      }
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  FigCaptionRendererBaseProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11 && (v12 = *(v11 + 16)) != 0)
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      v14 = v13(ValueAtIndex, &__s1);
      if (!v14)
      {
        if (__s1 && !strcmp(__s1, "FigCaptionRendererMoveToAction"))
        {
          v45 = v41;
          v44 = 0;
          FigCaptionRendererMoveToActionProtocolGetProtocolID();
          v15 = CMBaseObjectGetProtocolVTable();
          if (v15)
          {
            v16 = *(v15 + 16);
            if (v16)
            {
              v17 = *(v16 + 8);
              if (v17)
              {
                v17(ValueAtIndex, &v45);
              }
            }
          }

          FigCaptionRendererActionProtocolGetProtocolID();
          v18 = CMBaseObjectGetProtocolVTable();
          if (v18)
          {
            v19 = *(v18 + 16);
            if (v19)
            {
              v20 = *(v19 + 8);
              if (v20)
              {
                v20(ValueAtIndex, &v44);
              }
            }
          }

          v21 = v44;
          if (v44 < 33)
          {
            v22 = vsubq_f64(v45, v48);
          }

          else
          {
            v22 = vdivq_f64(vsubq_f64(v45, v48), vdupq_lane_s64(COERCE__INT64((v44 / 0x21u + 1)), 0));
          }

          if (v22.f64[0] != 0.0 || v22.f64[1] != 0.0)
          {
            v42 = vaddq_f64(v22, v48);
            v48 = v42;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v25 = CMBaseObjectGetProtocolVTable();
            if (v25)
            {
              v26 = *(v25 + 16);
              if (v26)
              {
                v27 = *(v26 + 128);
                if (v27)
                {
                  v27(a1, v42, v42.n128_f64[1]);
                }
              }
            }

            FigCaptionRendererNodeProtocolGetProtocolID();
            v28 = CMBaseObjectGetProtocolVTable();
            if (v28)
            {
              v29 = *(v28 + 16);
              if (v29)
              {
                v30 = *(v29 + 232);
                if (v30)
                {
                  v30(a1, 1);
                }
              }
            }
          }

          CFArrayRemoveValueAtIndex(theArray, 0);
          if (v21 >= 33)
          {
            v31 = v44;
            value = 0;
            FigCaptionRendererMoveToActionCreate(&value);
            v32 = value;
            v33 = v45;
            FigCaptionRendererMoveToActionProtocolGetProtocolID();
            v34 = CMBaseObjectGetProtocolVTable();
            if (v34)
            {
              v35 = *(v34 + 16);
              if (v35)
              {
                v36 = *(v35 + 16);
                if (v36)
                {
                  v36(v32, v33.f64[0], v33.f64[1]);
                }
              }
            }

            v37 = value;
            FigCaptionRendererActionProtocolGetProtocolID();
            v38 = CMBaseObjectGetProtocolVTable();
            if (v38)
            {
              v39 = *(v38 + 16);
              if (v39)
              {
                v40 = *(v39 + 16);
                if (v40)
                {
                  v40(v37, (v31 - 33));
                }
              }
            }

            CFArrayInsertValueAtIndex(theArray, 0, value);
            if (value)
            {
              CFRelease(value);
            }
          }
        }

        return 0;
      }

      v23 = v14;
    }

    else
    {
      v23 = 4294954514;
    }
  }

  else
  {
    v23 = 4294954508;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17A70, v23, "<<<< FigCaptionRendererCaption >>>>", 5659, v1);
  return v23;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    return 0;
  }

  v6 = DerivedStorage;
  v26 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v9 = *(v8 + 248);
      if (v9)
      {
        v9(a1, &v26 + 1);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v10 = CMBaseObjectGetProtocolVTable();
  if (v10)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v11 + 240);
      if (v12)
      {
        v12(a1, &v26);
      }
    }
  }

  if (HIBYTE(v26))
  {
    FigCaptionRendererNodeProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (v13)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = *(v14 + 296);
        if (v15)
        {
          v15(a1, a2);
        }
      }
    }
  }

  if (v26)
  {
    FigCaptionRendererNodeProtocolGetProtocolID();
    v16 = CMBaseObjectGetProtocolVTable();
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = *(v17 + 288);
        if (v18)
        {
          v18(a1, a2);
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v19 = CMBaseObjectGetProtocolVTable();
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *(v20 + 280);
      if (v21)
      {
        v21(a1, a2);
      }
    }
  }

  v22 = *v6;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v23 = CMBaseObjectGetProtocolVTable();
  if (!v23)
  {
    return 4294954508;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
    return 4294954508;
  }

  v25 = *(v24 + 304);
  if (v25)
  {
    return v25(v22, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 312);
  if (!v6)
  {
    return 4294954514;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  return v6(v3, v11);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_RemoveAllActions(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 328);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 344);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 352);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 360);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 368);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 376);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 384);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetPCTContextData(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 392);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetPCTContextData(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 400);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

void updateCMRubyAttributeForCoreTextRender(uint64_t a1, CFAttributedStringRef aStr, int a3)
{
  v62.location = 0;
  v62.length = 0;
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  Length = CFAttributedStringGetLength(aStr);
  if (Length < 1)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  str = 0;
  v6 = *MEMORY[0x1E6960930];
  key = *MEMORY[0x1E6960938];
  attrName = *MEMORY[0x1E6960948];
  v55 = *MEMORY[0x1E6960B78];
  v54 = *MEMORY[0x1E6960B70];
  v7 = *MEMORY[0x1E695E480];
  v57 = *MEMORY[0x1E6960B38];
  v8 = *MEMORY[0x1E6960958];
  v51 = *MEMORY[0x1E6960998];
  while (1)
  {
    Attributes = CFAttributedStringGetAttributes(aStr, v4, &effectiveRange);
    if (!Attributes)
    {
      goto LABEL_66;
    }

    v10 = Attributes;
    if (CFDictionaryContainsKey(Attributes, v6))
    {
      Value = CFDictionaryGetValue(v10, v6);
      v12 = CFAttributedStringGetAttributes(Value, 0, &v62);
      v13 = CFDictionaryGetValue(v12, key);
      v14 = CFDictionaryGetValue(v12, attrName);
      v15 = CFAttributedStringGetLength(Value);
      if (v14)
      {
        v16 = CFStringCompare(v14, *MEMORY[0x1E6960B88], 0);
        if (!a3 && v16 == kCFCompareEqualTo)
        {
          *(a1 + 89) = 1;
          v17 = v62;
          if (effectiveRange.length + effectiveRange.location <= *(a1 + 104) + *(a1 + 96))
          {
            v18 = v55;
          }

          else
          {
            v18 = v54;
          }

          CFAttributedStringSetAttribute(Value, v17, attrName, v18);
          CFAttributedStringSetAttribute(aStr, effectiveRange, v6, Value);
        }
      }

      if (v13)
      {
        v19 = CFStringCompare(v13, *MEMORY[0x1E6960B50], 0);
        if (a3)
        {
          if (v19 == kCFCompareEqualTo && effectiveRange.length == v15 && effectiveRange.length >= 1)
          {
            break;
          }
        }
      }
    }

LABEL_24:
    v24 = *MEMORY[0x1E6960970];
    if (CFDictionaryContainsKey(v10, *MEMORY[0x1E6960970]))
    {
      v25 = CFDictionaryGetValue(v10, v24);
      v26 = CFDictionaryGetValue(v25, *MEMORY[0x1E6960BE8]);
      v27 = CFDictionaryGetValue(v25, *MEMORY[0x1E6960BC8]);
      v28 = CFDictionaryGetValue(v25, *MEMORY[0x1E6960BA8]);
      v29 = CFDictionaryGetValue(v25, *MEMORY[0x1E6960BE0]);
      v30 = CFAttributedStringGetAttribute(aStr, 0, v51, &v62) ? -443 : 9679;
      chars = v30;
      if (v26)
      {
        v31 = CFStringCompare(v26, *MEMORY[0x1E6960BF0], 0);
        if (a3 && v31 == kCFCompareEqualTo)
        {
          goto LABEL_31;
        }

        v36 = CFStringCompare(v26, *MEMORY[0x1E6960C00], 0);
        if (a3)
        {
          if (v36 == kCFCompareEqualTo)
          {
            if (!v27 || !v28)
            {
              goto LABEL_31;
            }

            v37 = CFStringCompare(v27, *MEMORY[0x1E6960BD0], 0);
            if (CFStringCompare(v28, *MEMORY[0x1E6960BB0], 0))
            {
              if (CFStringCompare(v28, *MEMORY[0x1E6960BB8], 0))
              {
                if (CFStringCompare(v28, *MEMORY[0x1E6960BC0], 0) == kCFCompareEqualTo)
                {
                  if (v37)
                  {
                    v38 = -442;
                  }

                  else
                  {
                    v38 = -443;
                  }

                  goto LABEL_74;
                }

LABEL_31:
                v5 = CFStringCreateWithCharacters(v7, &chars, 1);
                if (!v5)
                {
                  goto LABEL_75;
                }

                if (effectiveRange.length >= 1)
                {
                  v32 = 0;
                  while (1)
                  {
                    v33 = CFAttributedStringCreate(v7, v5, 0);
                    if (!v33)
                    {
                      goto LABEL_75;
                    }

                    v34 = v33;
                    if (v29)
                    {
                      v66.location = 0;
                      v66.length = 1;
                      CFAttributedStringSetAttribute(v33, v66, attrName, v29);
                    }

                    UInt32 = FigCFNumberCreateUInt32();
                    v67.location = 0;
                    v67.length = 1;
                    CFAttributedStringSetAttribute(v34, v67, v8, UInt32);
                    v68.location = v32 + effectiveRange.location;
                    v68.length = 1;
                    CFAttributedStringSetAttribute(aStr, v68, v6, v34);
                    if (UInt32)
                    {
                      CFRelease(UInt32);
                    }

                    CFRelease(v34);
                    if (++v32 >= effectiveRange.length)
                    {
                      goto LABEL_51;
                    }
                  }
                }

                goto LABEL_51;
              }

              if (v37)
              {
                v38 = 9702;
              }

              else
              {
                v38 = 8226;
              }
            }

            else if (v37)
            {
              v38 = 9675;
            }

            else
            {
              v38 = 9679;
            }

LABEL_74:
            chars = v38;
            goto LABEL_31;
          }
        }
      }
    }

LABEL_51:
    v39 = *MEMORY[0x1E6960950];
    if (CFDictionaryContainsKey(v10, *MEMORY[0x1E6960950]))
    {
      v40 = CFDictionaryGetValue(v10, v39);
      v41 = *MEMORY[0x1E6960B90];
      if (CFDictionaryGetValue(v40, *MEMORY[0x1E6960B90]))
      {
        if (!CFDictionaryContainsKey(v10, v6))
        {
          chars = 12288;
          str = CFStringCreateWithCharacters(v7, &chars, 1);
          if (!str)
          {
            goto LABEL_75;
          }

          if (effectiveRange.length >= 1)
          {
            v42 = 0;
            while (1)
            {
              v43 = CFAttributedStringCreate(v7, str, 0);
              if (!v43)
              {
                break;
              }

              v44 = v43;
              v45 = CFDictionaryGetValue(v40, v41);
              v46 = FigCFEqual();
              v47 = v55;
              if (v42)
              {
                v47 = v54;
              }

              if (v46)
              {
                v48 = v47;
              }

              else
              {
                v48 = v45;
              }

              v69.location = 0;
              v69.length = 1;
              CFAttributedStringSetAttribute(v44, v69, attrName, v48);
              v49 = FigCFNumberCreateUInt32();
              v70.location = 0;
              v70.length = 1;
              CFAttributedStringSetAttribute(v44, v70, v8, v49);
              v71.location = v42 + effectiveRange.location;
              v71.length = 1;
              CFAttributedStringSetAttribute(aStr, v71, v6, v44);
              if (v49)
              {
                CFRelease(v49);
              }

              CFRelease(v44);
              if (++v42 >= effectiveRange.length)
              {
                goto LABEL_66;
              }
            }

LABEL_75:
            v22 = 0;
            goto LABEL_76;
          }
        }
      }
    }

LABEL_66:
    v4 = effectiveRange.length + effectiveRange.location;
    if (effectiveRange.length + effectiveRange.location >= Length)
    {
      goto LABEL_75;
    }
  }

  v20 = 0;
  while (1)
  {
    v72.location = v20;
    v72.length = 1;
    v21 = CFAttributedStringCreateWithSubstring(v7, Value, v72);
    v22 = v21;
    if (!v6)
    {
      break;
    }

    v63.location = 0;
    v63.length = 1;
    CFAttributedStringSetAttribute(v21, v63, key, v57);
    v23 = FigCFNumberCreateUInt32();
    v64.location = 0;
    v64.length = 1;
    CFAttributedStringSetAttribute(v22, v64, v8, v23);
    v65.location = v20 + effectiveRange.location;
    v65.length = 1;
    CFAttributedStringSetAttribute(aStr, v65, v6, v22);
    if (v23)
    {
      CFRelease(v23);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (++v20 >= effectiveRange.length)
    {
      goto LABEL_24;
    }
  }

LABEL_76:
  if (v5)
  {
    CFRelease(v5);
  }

  if (str)
  {
    CFRelease(str);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

CGColorRef copyContentColor_0(uint64_t a1, CGColorRef color, uint64_t a3, const __CFDictionary *a4, void *key, CGFloat a6)
{
  if (a1 || !color)
  {
    v10 = 1;
    if (!a4 || !key || (Copy = createCGColorFromCFArray(a4, key, 0), v10 = Copy == 0, !Copy))
    {
LABEL_8:
      Copy = CGColorCreateCopy(color);
      if (!Copy)
      {
        return Copy;
      }
    }
  }

  else
  {
    Copy = CGColorCreateCopy(color);
    v10 = 1;
    if (!Copy)
    {
      goto LABEL_8;
    }
  }

  if (a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if (a6 >= 0.0)
  {
    if (v11)
    {
      CopyWithAlpha = CGColorCreateCopyWithAlpha(Copy, a6);
      if (CopyWithAlpha)
      {
        v13 = CopyWithAlpha;
        CGColorRelease(Copy);
        return v13;
      }
    }
  }

  return Copy;
}

uint64_t ckCaptionSetupText(uint64_t a1, CFAttributedStringRef aStr, int a3, uint64_t a4, double a5)
{
  v6 = a5;
  v7 = aStr;
  v8 = a1;
  keys[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 == 1)
    {
      if (!*(a1 + 89))
      {
        return 0;
      }

      v9 = a4;
      v10 = 0;
    }

    else
    {
      *&valuePtr = 0;
      values[0] = 0;
      Length = CFAttributedStringGetLength(aStr);
      calculateAndCopyStrokeAttributes(a4, &valuePtr, values, v6);
      if (valuePtr)
      {
        v247.location = 0;
        v247.length = Length;
        CFAttributedStringSetAttribute(v7, v247, *MEMORY[0x1E6965A58], valuePtr);
      }

      if (values[0])
      {
        v248.location = 0;
        v248.length = Length;
        CFAttributedStringSetAttribute(v7, v248, *MEMORY[0x1E6965A60], values[0]);
      }

      if (valuePtr)
      {
        CFRelease(valuePtr);
      }

      if (values[0])
      {
        CFRelease(values[0]);
      }

      v9 = a4;
      aStr = v7;
      a5 = v6;
      v10 = 2;
    }

    setupRubyAnnotation_0(v9, aStr, v10, a5);
    return 0;
  }

  v176 = FigCFEqual();
  if (!v176)
  {
    v12 = *(a4 + 664);
    v13 = *(v8 + 48);
    *(a4 + 664) = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  v14 = CFAttributedStringGetLength(v7);
  String = CFAttributedStringGetString(v7);
  v16 = malloc_type_calloc(v14, 2uLL, 0x1000040BDFB0063uLL);
  v17 = MEMORY[0x1E695E480];
  if (v16)
  {
    v18 = v16;
    LODWORD(valuePtr) = 1;
    v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v19)
    {
      v20 = v19;
      v184 = v8;
      v241.location = 0;
      v241.length = v14;
      CFStringGetCharacters(String, v241, v18);
      v21 = 0;
      v22 = v14 - 1;
      if (v14 >= 1)
      {
        v23 = 0;
LABEL_16:
        v24.location = -1;
        do
        {
          v25 = v18[v23];
          if ((vmaxv_u16(vcgt_u16(0x51C019C0003000C0, vadd_s16(vdup_n_s16(v25), 0xB200CC00CE40CFC0))) & 1) != 0 || (v25 + 1792) < 0x200u || (v25 + 464) < 0x20u || (v25 + 256) < 0xF0u || (v25 & 0xFF80) == 0x2E80 || (v25 & 0xFFC0) == 0x3000 || (v25 & 0xFE00) == 0x3200)
          {
            if (v24.location < 0)
            {
              v24.location = v23;
            }
          }

          else if ((v24.location & 0x8000000000000000) == 0)
          {
            v24.length = v23 - v24.location;
            v26 = v22;
            CFAttributedStringSetAttribute(v7, v24, @"kFCRSubtitleRenderer_LanguageCategory", v20);
            v22 = v26;
            v21 = 1;
            v27 = v22 == v23++;
            if (v27)
            {
              goto LABEL_36;
            }

            goto LABEL_16;
          }

          ++v23;
        }

        while (v14 != v23);
        if ((v24.location & 0x8000000000000000) == 0)
        {
          v24.length = v14 - v24.location;
          CFAttributedStringSetAttribute(v7, v24, @"kFCRSubtitleRenderer_LanguageCategory", v20);
          v21 = 1;
        }
      }

LABEL_36:
      CFRelease(v20);
      v8 = v184;
      v17 = MEMORY[0x1E695E480];
    }

    else
    {
      v21 = 0;
    }

    free(v18);
  }

  else
  {
    v21 = 0;
  }

  effectiveRange.length = 0;
  effectiveRange.location = 0;
  v173 = *MEMORY[0x1E6960998];
  v201 = CFAttributedStringGetAttribute(v7, 0, *MEMORY[0x1E6960998], &effectiveRange);
  v28 = CFAttributedStringGetLength(v7);
  if (v21 && v201)
  {
    if (!*(v8 + 128))
    {
      v242.location = 0;
      v242.length = v28;
      CFAttributedStringSetAttribute(v7, v242, *MEMORY[0x1E6965B50], *MEMORY[0x1E695E4D0]);
    }

    Mutable = CFDictionaryCreateMutable(*v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294950093;
    }

    v30 = Mutable;
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965640], *MEMORY[0x1E6965650]);
    v243.location = 0;
    v243.length = v28;
    CFAttributedStringSetAttribute(v7, v243, *MEMORY[0x1E6965648], v30);
    CFRelease(v30);
  }

  v31 = CTParagraphStyleCreate(0, 0);
  if (!v31)
  {
    return 4294950095;
  }

  v32 = v31;
  CTParagraphStyleSetCompositionLanguage();
  v244.location = 0;
  v244.length = v28;
  v178 = *MEMORY[0x1E6965A30];
  CFAttributedStringSetAttribute(v7, v244, *MEMORY[0x1E6965A30], v32);
  CFRelease(v32);
  range.length = 0;
  range.location = 0;
  v209 = *MEMORY[0x1E695E4D0];
  if (v28 < 1)
  {
    cf = 0;
    v157 = 0;
    v73 = 0;
LABEL_350:
    setupRubyAnnotation_0(a4, v7, 0, v6);
    v246.length = CFAttributedStringGetLength(v7);
    range.location = 0;
    range.length = v246.length;
    v246.location = 0;
    CFAttributedStringSetAttribute(v7, v246, @"kFCRSubtitleRenderer_CommonSetupDone", v209);
    v11 = 0;
    if (!v157)
    {
      goto LABEL_352;
    }

    goto LABEL_351;
  }

  v199 = 0;
  v186 = 0;
  cf = 0;
  v206 = *MEMORY[0x1E6965798];
  v195 = *MEMORY[0x1E6960878];
  key = *MEMORY[0x1E6960890];
  allocator = *v17;
  attrName = *MEMORY[0x1E6965A10];
  v180 = *MEMORY[0x1E6960868];
  v190 = *MEMORY[0x1E69608A8];
  v189 = *MEMORY[0x1E69607D0];
  v188 = *MEMORY[0x1E6960990];
  v170 = *MEMORY[0x1E6965B48];
  v187 = *MEMORY[0x1E6960860];
  v215 = *MEMORY[0x1E6961178];
  v181 = *MEMORY[0x1E6965790];
  attribute = *MEMORY[0x1E6965808];
  v182 = *MEMORY[0x1E6965830];
  v167 = *MEMORY[0x1E6960858];
  v161 = *MEMORY[0x1E6960880];
  v207 = *MEMORY[0x1E69608B0];
  v171 = *MEMORY[0x1E6965A20];
  v160 = *MEMORY[0x1E69657C8];
  v169 = *MEMORY[0x1E69657A8];
  v165 = *MEMORY[0x1E6965678];
  v194 = *MEMORY[0x1E69607B0];
  theString2 = *MEMORY[0x1E69607A0];
  v172 = *MEMORY[0x1E6960790];
  v166 = *MEMORY[0x1E6960788];
  v163 = *MEMORY[0x1E6960780];
  v162 = *MEMORY[0x1E6960798];
  v183 = *MEMORY[0x1E6960C18];
  v33 = *MEMORY[0x1E6960930];
  v208 = *MEMORY[0x1E6960948];
  v193 = *MEMORY[0x1E69608B8];
  v174 = *MEMORY[0x1E6960C10];
  v192 = *MEMORY[0x1E6960898];
  v200 = *MEMORY[0x1E69659D8];
  v191 = *MEMORY[0x1E6965658];
  v179 = *MEMORY[0x1E69608A0];
  v198 = (a4 + 208);
  v202 = v28;
  v185 = v8;
  v164 = *MEMORY[0x1E6960930];
  while (1)
  {
    v239[0] = xmmword_196E7BB18;
    v239[1] = unk_196E7BB28;
    v34 = CFRetain(@"Helvetica");
    Attributes = CFAttributedStringGetAttributes(v7, range.length + range.location, &range);
    theDict = Attributes;
    if (!Attributes)
    {
      color = 0;
      v203 = 0;
      LODWORD(v39) = 0;
      LODWORD(v40) = 0;
      v214 = 0;
      v212 = 0;
      v41 = v6;
      v42 = v206;
      goto LABEL_187;
    }

    CGColorFromCFArray = copyContentColor_0(*a4, *(a4 + 144), *(a4 + 24), Attributes, v195, *(a4 + 168));
    if (!CGColorFromCFArray)
    {
      CGColorFromCFArray = createCGColorFromCFArray(0, 0, v239);
    }

    if (!v201 || !CFDictionaryContainsKey(Attributes, key))
    {
      goto LABEL_69;
    }

    v37 = CFDictionaryGetValue(Attributes, key);
    v38 = v37;
    LODWORD(valuePtr) = 0;
    if (!v37)
    {
      goto LABEL_56;
    }

    CFNumberGetValue(v37, kCFNumberIntType, &valuePtr);
    if (valuePtr == -1)
    {
      break;
    }

    if (valuePtr <= 4)
    {
LABEL_56:
      CFAttributedStringSetAttribute(v7, range, attrName, v38);
    }

LABEL_69:
    if (*(a4 + 56) != 1 || !CFDictionaryContainsKey(Attributes, v180))
    {
      LODWORD(valuePtr) = 0;
      checkCJKContent(*(a4 + 664), &valuePtr);
      LOBYTE(values[0]) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      v41 = v6;
      v48 = v199;
      if (valuePtr == 4)
      {
        v41 = v6;
        if (!LOBYTE(values[0]))
        {
          MACaptionAppearanceGetRelativeCharacterSizeForLanguage();
          v60 = *(a4 + 200);
          v41 = v6;
          if (v59 != v60)
          {
            v41 = v59 * v6 / v60;
          }
        }
      }

      goto LABEL_103;
    }

    v41 = v6;
    v48 = v199;
    if (!CFDictionaryGetValue(Attributes, v180))
    {
      goto LABEL_103;
    }

    v49 = *(a4 + 376);
    v50 = *(a4 + 384);
    v51 = *(a4 + 344);
    v52 = *(a4 + 352);
    v53 = *(a4 + 360);
    v54 = *(a4 + 368);
    *values = 0u;
    v223 = 0u;
    FigTextMarkupSizeMakeFromSimplifiedDictionary();
    v55 = DWORD2(v223);
    FCRGetVideoPresentationBounds(v49, v50, v51, v52, v53, v54);
    if (v55 <= 1986535455)
    {
      if (v55 > 1886679839)
      {
        if (v55 != 1886679840 && v55 != 1886920736)
        {
          goto LABEL_102;
        }

        FigGeometryDimensionGetCGFloat();
        v62 = v61;
        valuePtr = 0u;
        v225 = 0u;
        v226 = 0u;
        FCRGetTransform(&valuePtr, v49, v50, v53, v54);
        v41 = *(&valuePtr + 1) + v62 * *(&v225 + 1);
      }

      else
      {
        if (v55 == 622862368)
        {
          v58 = *&v223 / 100.0;
        }

        else
        {
          if (v55 != 1701650464)
          {
            goto LABEL_102;
          }

          v58 = *&v223;
        }

        v41 = v58 * v6;
      }

      goto LABEL_101;
    }

    if (v55 > 1986881901)
    {
      if (v55 != 1986881902)
      {
        if (v55 != 1987518496 || v56 <= 0.0)
        {
LABEL_102:
          v41 = v6;
          goto LABEL_103;
        }

        goto LABEL_93;
      }

      if (v57 > v56)
      {
        goto LABEL_85;
      }

      goto LABEL_99;
    }

    if (v55 != 1986535456)
    {
      if (v55 != 1986879864)
      {
        goto LABEL_102;
      }

      if (v57 <= v56)
      {
LABEL_85:
        if (v56 == 0.0)
        {
          goto LABEL_102;
        }

LABEL_93:
        v41 = v56 * (*values / 100.0);
        goto LABEL_101;
      }

LABEL_99:
      if (v57 == 0.0)
      {
        goto LABEL_102;
      }

      goto LABEL_100;
    }

    if (v57 <= 0.0)
    {
      goto LABEL_102;
    }

LABEL_100:
    v41 = v57 * (*&v223 / 100.0);
LABEL_101:
    if (v41 <= 0.0)
    {
      goto LABEL_102;
    }

LABEL_103:
    v63 = v209 == CFDictionaryGetValue(Attributes, v190);
    v214 = v209 == CFDictionaryGetValue(Attributes, v189);
    if (v209 == CFDictionaryGetValue(Attributes, v188))
    {
      LODWORD(valuePtr) = 1;
      v64 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      CFAttributedStringSetAttribute(v7, range, v170, v64);
      if (v64)
      {
        CFRelease(v64);
      }
    }

    value = *(a4 + 656) != v63 || !v176 || *(a4 + 657) != v214;
    v65 = *(v8 + 16);
    v212 = v63;
    color = CGColorFromCFArray;
    if (v65 == 7 || v65 == 4)
    {
      if (CFDictionaryContainsKey(Attributes, v187))
      {
        v66 = CFDictionaryGetValue(Attributes, v187);
        if (v66)
        {
          v67 = v66;
          Count = CFArrayGetCount(v66);
          if (Count >= 1)
          {
            v69 = Count;
            v70 = 0;
            while (1)
            {
              LODWORD(v218) = 0;
              *&valuePtr = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(v67, v70);
              values[0] = CFDictionaryGetValue(ValueAtIndex, v215);
              if (FigCFDictionaryGetInt32IfPresent())
              {
                if (LODWORD(v218) == 1)
                {
                  keys[0] = v181;
                  v73 = CFDictionaryCreate(allocator, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (!v73)
                  {
                    goto LABEL_371;
                  }

                  v74 = CTFontDescriptorCreateWithAttributesAndOptions();
                  if (!v74)
                  {
                    v186 = 0;
LABEL_371:
                    v11 = 0;
                    goto LABEL_368;
                  }

                  v75 = v74;
                  MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v74, 0);
                  if (MatchingFontDescriptor)
                  {
                    cf = MatchingFontDescriptor;
                    v78 = values[0];
                    if (values[0])
                    {
                      CFRetain(values[0]);
                    }

                    v186 = v75;
                    v199 = v73;
                    if (!v34)
                    {
LABEL_133:
                      v72 = 0;
                      v79 = 1;
                      v80 = 1;
                      v42 = v206;
                      goto LABEL_143;
                    }

LABEL_132:
                    CFRelease(v34);
                    goto LABEL_133;
                  }

                  CFRelease(v75);
                  CFRelease(v73);
                  cf = 0;
                  v186 = 0;
                  v48 = 0;
                }

                else if (!LODWORD(v218))
                {
                  if (FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle())
                  {
                    v72 = v198[valuePtr];
                    if (v72)
                    {
                      v199 = v48;
                      if (v34)
                      {
                        CFRelease(v34);
                      }

                      v78 = CTFontDescriptorCopyAttribute(v72, attribute);
                      v79 = 0;
                      v80 = 1;
                      v42 = v182;
                      goto LABEL_143;
                    }
                  }
                }
              }

              if (v69 == ++v70)
              {
                v199 = v48;
                break;
              }
            }
          }
        }
      }

      else if (CFDictionaryContainsKey(Attributes, v167))
      {
        v77 = CFDictionaryGetValue(Attributes, v167);
        if (v77)
        {
          v78 = v77;
          CFRetain(v77);
          if (!v34)
          {
            goto LABEL_133;
          }

          goto LABEL_132;
        }
      }

      else if (CFDictionaryContainsKey(Attributes, v161) && CFDictionaryGetValue(Attributes, v161))
      {
        *&valuePtr = 0;
        if (FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle() && (v81 = v198[valuePtr]) != 0)
        {
          if (v34)
          {
            CFRelease(v34);
          }

          v34 = CTFontDescriptorCopyAttribute(v81, attribute);
          v80 = 1;
          v42 = v182;
        }

        else
        {
          v80 = 0;
          v42 = v206;
        }

        v79 = 0;
        v72 = 0;
        goto LABEL_142;
      }
    }

    v79 = 0;
    v80 = 0;
    v72 = 0;
    v42 = v206;
LABEL_142:
    v78 = v34;
LABEL_143:
    v82 = *(v8 + 16);
    if (v82 == 3)
    {
      CFRetain(@"Helvetica");
      if (v78)
      {
LABEL_150:
        CFRelease(v78);
      }

      v79 = 1;
      v80 = 1;
      v42 = v206;
      v78 = @"Helvetica";
      goto LABEL_153;
    }

    if (v82 != 1)
    {
      goto LABEL_153;
    }

    CFRetain(@"CourierNewPSMT");
    if (v78)
    {
      CFRelease(v78);
    }

    if (*(v8 + 16) == 3)
    {
      CFRetain(@"Helvetica");
      v78 = @"CourierNewPSMT";
      goto LABEL_150;
    }

    v79 = 1;
    v80 = 1;
    v42 = v182;
    v78 = @"CourierNewPSMT";
LABEL_153:
    v203 = v79;
    if (*(a4 + 64))
    {
      if (v80)
      {
        v40 = v78;
        goto LABEL_162;
      }

      v83 = (a4 + 208);
      v84 = *v198;
      if (v78)
      {
        CFRelease(v78);
      }
    }

    else
    {
      if (v78)
      {
        CFRelease(v78);
      }

      v83 = (a4 + 208);
      v84 = *v198;
    }

    v40 = CTFontDescriptorCopyAttribute(v84, attribute);
    v72 = *v83;
    v42 = v182;
LABEL_162:
    v85 = v207;
    if (v72)
    {
      v86 = *(a4 + 640);
      if (v86)
      {
        CFRelease(v86);
        v85 = v207;
        *(a4 + 640) = 0;
      }

      v39 = *(a4 + 648);
      if (v39 == v72)
      {
        v87 = v40;
        LODWORD(v39) = 0;
        LODWORD(v40) = 0;
        goto LABEL_183;
      }

      *(a4 + 648) = v72;
      CFRetain(v72);
      v87 = v40;
      if (v39)
      {
        CFRelease(v39);
        LODWORD(v39) = 0;
      }

      LODWORD(v40) = 1;
      goto LABEL_178;
    }

    v88 = *(a4 + 648);
    if (v88)
    {
      CFRelease(v88);
      v85 = v207;
      *(a4 + 648) = 0;
    }

    v89 = *(a4 + 640);
    if (!v89)
    {
      *(a4 + 640) = v40;
      v87 = v40;
      if (v40)
      {
        CFRetain(v40);
        v85 = v207;
        LODWORD(v40) = 0;
      }

      LODWORD(v39) = 1;
      goto LABEL_183;
    }

    if (v40)
    {
      if (CFStringCompare(v89, v40, 0))
      {
        v90 = *(a4 + 640);
        *(a4 + 640) = v40;
        CFRetain(v40);
        v87 = v40;
        if (v90)
        {
          CFRelease(v90);
        }

        LODWORD(v40) = 0;
        LODWORD(v39) = 1;
      }

      else
      {
        v87 = v40;
        LODWORD(v39) = 0;
        LODWORD(v40) = 0;
      }

LABEL_178:
      v85 = v207;
      goto LABEL_183;
    }

    v87 = 0;
    LODWORD(v39) = 0;
LABEL_183:
    v91 = v85;
    if (CFDictionaryContainsKey(theDict, v85))
    {
      v92 = CFDictionaryGetValue(theDict, v91);
      if (v92)
      {
        CFAttributedStringSetAttribute(v7, range, v171, v92);
      }
    }

    v34 = v87;
    LODWORD(Attributes) = value;
LABEL_187:
    v93 = *(a4 + 632);
    valuea = v34;
    if (v93)
    {
      Size = CTFontGetSize(v93);
      v95 = v39 | Attributes;
      v96 = *(a4 + 632);
      if (!(v95 | v40) && v41 == Size)
      {
        v28 = v202;
        v97 = v208;
        v98 = theDict;
        if (!v96)
        {
          goto LABEL_191;
        }

        goto LABEL_257;
      }

      if (v96)
      {
        CFRelease(*(a4 + 632));
        *(a4 + 632) = 0;
      }
    }

    v101 = *(a4 + 648);
    v102 = *(v8 + 48);
    values[0] = 0;
    LODWORD(v218) = 0;
    if (!v34)
    {
      v104 = 0;
      v28 = v202;
      v97 = v208;
      v98 = theDict;
      goto LABEL_256;
    }

    checkCJKContent(v102, &v218);
    v97 = v208;
    if (LODWORD(v218) == 1)
    {
      if (*(a4 + 64) == 1)
      {
        v103 = v203;
      }

      else
      {
        v103 = 1;
      }
    }

    else
    {
      v103 = 1;
    }

    v105 = (v209 != CFDictionaryGetValue(*(v8 + 40), @"FigFCRPreview_JapaneseV2")) & v103;
    if ((v105 & 1) == 0)
    {
      *&valuePtr = *(a4 + 64);
      v106 = MACaptionAppearanceCopyFontDescriptorForLanguage();
LABEL_205:
      v107 = v106;
      v204 = 0;
      v108 = v212;
      if (v106)
      {
        goto LABEL_206;
      }

LABEL_330:
      CopyWithAttributes = 0;
      v118 = 0;
      v104 = 0;
      v28 = v202;
      goto LABEL_247;
    }

    if (v101)
    {
      v106 = CFRetain(v101);
      goto LABEL_205;
    }

    v119 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v108 = v212;
    if (v119)
    {
      v120 = v119;
      if (v206 == v42)
      {
        CFDictionaryAddValue(v119, v181, valuea);
      }

      else if (v182 == v42)
      {
        CFDictionaryAddValue(v119, attribute, valuea);
        if (CFStringCompare(valuea, @"CourierNewPSMT", 1uLL) == kCFCompareEqualTo)
        {
          v121 = *(a4 + 720);
          *&valuePtr = v121;
          if (v121 > 0.0)
          {
            v122 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            if (v122)
            {
              v123 = v122;
              CFDictionaryAddValue(v120, v160, v122);
              CFRelease(v123);
            }
          }
        }
      }

      v204 = v120;
      v107 = CTFontDescriptorCreateWithAttributes(v120);
      if (!v107)
      {
        goto LABEL_330;
      }

LABEL_206:
      v109 = v108 | (2 * v214);
      CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v107, v109, 3u);
      if (!CopyWithSymbolicTraits)
      {
        if (!v108)
        {
          goto LABEL_220;
        }

        SInt32 = FigCFNumberCreateSInt32();
        UInt32 = FigCFNumberCreateUInt32();
        CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v107, SInt32, UInt32);
        CopyWithSymbolicTraits = CopyWithFeature;
        if (!v214)
        {
          goto LABEL_212;
        }

        if (CopyWithFeature)
        {
          v114 = CTFontDescriptorCreateCopyWithSymbolicTraits(CopyWithFeature, v109, 2u);
          if (v114)
          {
            v115 = v114;
            CFRelease(CopyWithSymbolicTraits);
            CopyWithSymbolicTraits = v115;
          }

LABEL_212:
          if (SInt32)
          {
LABEL_213:
            CFRelease(SInt32);
          }
        }

        else
        {
          CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v107, v109, 2u);
          if (SInt32)
          {
            goto LABEL_213;
          }
        }

        if (UInt32)
        {
          CFRelease(UInt32);
        }

        if (!CopyWithSymbolicTraits)
        {
LABEL_220:
          CopyWithSymbolicTraits = CFRetain(v107);
          if ((v105 & 1) == 0)
          {
            goto LABEL_221;
          }

LABEL_218:
          v28 = v202;
          if (CopyWithSymbolicTraits)
          {
            CopyWithAttributes = CFRetain(CopyWithSymbolicTraits);
          }

          else
          {
            CopyWithAttributes = 0;
          }

          v118 = 0;
LABEL_235:
          v104 = CTFontCreateWithFontDescriptor(CopyWithAttributes, v41, 0);
          if (!v104 || !v204 || (LODWORD(v218) & 0xFFFFFFFE) != 2)
          {
            goto LABEL_243;
          }

          *&valuePtr = qword_1E7497700[LODWORD(v218)];
          v124 = CFArrayCreate(allocator, &valuePtr, 1, MEMORY[0x1E695E9C0]);
          if (v124)
          {
            v125 = v124;
            v126 = CTFontCopyDefaultCascadeListForLanguages(v104, v124);
            if (v126)
            {
              v127 = v126;
              CFDictionarySetValue(v204, v165, v126);
              CFRelease(v107);
              CFRelease(v104);
              v128 = CTFontDescriptorCreateWithAttributes(v204);
              v107 = v128;
              if (v128)
              {
                v104 = CTFontCreateWithFontDescriptor(v128, v41, 0);
              }

              else
              {
                v104 = 0;
              }

              v33 = v164;
              CFRelease(v127);
              CFRelease(v125);
              v28 = v202;
              if (v107)
              {
                goto LABEL_243;
              }

              goto LABEL_244;
            }

            CFRelease(v125);
          }

          v28 = v202;
          goto LABEL_243;
        }
      }

      if (v105)
      {
        goto LABEL_218;
      }

LABEL_221:
      valuePtr = xmmword_1E7497720;
      keys[0] = v169;
      values[0] = CFArrayCreate(0, &valuePtr, 2, MEMORY[0x1E695E9C0]);
      v28 = v202;
      if (values[0])
      {
        v117 = CFDictionaryCreate(allocator, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v117)
        {
          v118 = v117;
          CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(CopyWithSymbolicTraits, v117);
          if (!CopyWithAttributes)
          {
            if (CopyWithSymbolicTraits)
            {
              CopyWithAttributes = CFRetain(CopyWithSymbolicTraits);
            }

            else
            {
              CopyWithAttributes = 0;
            }
          }

          goto LABEL_235;
        }
      }

      v104 = 0;
      v118 = 0;
      CopyWithAttributes = 0;
LABEL_243:
      CFRelease(v107);
LABEL_244:
      if (CopyWithSymbolicTraits)
      {
        CFRelease(CopyWithSymbolicTraits);
      }

      v97 = v208;
LABEL_247:
      v98 = theDict;
      if (v204)
      {
        CFRelease(v204);
      }

      goto LABEL_249;
    }

    v104 = 0;
    v118 = 0;
    CopyWithAttributes = 0;
    v28 = v202;
    v98 = theDict;
LABEL_249:
    if (values[0])
    {
      CFRelease(values[0]);
    }

    if (v118)
    {
      CFRelease(v118);
    }

    if (CopyWithAttributes)
    {
      CFRelease(CopyWithAttributes);
    }

    v8 = v185;
LABEL_256:
    *(a4 + 632) = v104;
    *(a4 + 656) = v212;
    *(a4 + 657) = v214;
    if (!v104)
    {
LABEL_191:
      v11 = 4294950093;
      v99 = color;
      v100 = valuea;
      goto LABEL_319;
    }

LABEL_257:
    v129 = *(v8 + 16);
    v130 = *(v8 + 64);
    valuePtr = 0uLL;
    v131 = CFAttributedStringGetAttribute(v7, 0, v194, &valuePtr);
    if (v131)
    {
      v132 = v131;
      if (CFStringCompare(v131, theString2, 0))
      {
        if (CFStringCompare(v132, v172, 0))
        {
          if (CFStringCompare(v132, v166, 0))
          {
            if (CFStringCompare(v132, v163, 0))
            {
              if (CFStringCompare(v132, v162, 0))
              {
                v133 = 2 * (v129 != 7);
              }

              else
              {
                v133 = 1;
              }
            }

            else
            {
              v133 = 1;
            }
          }

          else
          {
            v133 = 0;
          }
        }

        else
        {
          v133 = 2;
        }
      }

      else
      {
        v133 = 4;
      }
    }

    else if (CFAttributedStringGetAttribute(v7, 0, v173, &valuePtr))
    {
      v133 = 0;
    }

    else
    {
      v133 = 2 * (v129 != 7);
    }

    v99 = color;
    if (v129 == 7 && v130 && CFStringCompare(v130, v183, 1uLL) == kCFCompareEqualTo)
    {
      if (v133)
      {
        if (v133 == 1)
        {
          LOBYTE(v133) = 0;
        }
      }

      else
      {
        LOBYTE(v133) = 1;
      }
    }

    v219 = v133;
    Ascent = CTFontGetAscent(*(a4 + 632));
    Descent = CTFontGetDescent(*(a4 + 632));
    keys[0] = 0;
    Leading = 0.0;
    if (*(v8 + 16) != 1)
    {
      v137 = *(a4 + 632);
      v138 = CTFontGetAscent(v137);
      v139 = CTFontGetDescent(v137);
      Leading = CTFontGetLeading(v137);
      if (Leading <= (v138 + v139) * 0.2)
      {
        Leading = (v138 + v139) * 0.2;
      }
    }

    keys[0] = *&Leading;
    v218 = Ascent + Descent;
    v217 = Ascent + Descent + Leading;
    valuePtr = 0uLL;
    v140 = CFAttributedStringGetLength(v7);
    if (v140 >= 1)
    {
      v141 = v140;
      v142 = 0;
      v143 = 0;
      v144 = 0;
      do
      {
        v145 = CFAttributedStringGetAttributes(v7, v142, &valuePtr);
        if (v145)
        {
          v146 = v145;
          if (CFDictionaryContainsKey(v145, v33))
          {
            v147 = CFDictionaryGetValue(v146, v33);
            values[1] = 0;
            values[0] = 0;
            v148 = CFAttributedStringGetAttributes(v147, 0, values);
            CFDictionaryGetValue(v148, v97);
            if (FigCFEqual())
            {
              v144 = 1;
            }

            else if (FigCFEqual())
            {
              v143 = 1;
            }
          }
        }

        v142 = *(&valuePtr + 1) + valuePtr;
      }

      while (*(&valuePtr + 1) + valuePtr < v141);
      v27 = (v143 & v144) == 0;
      v99 = color;
      if (!v27)
      {
        goto LABEL_295;
      }
    }

    if (*(v8 + 16) == 7)
    {
LABEL_295:
      v217 = 0.0;
    }

    v98 = theDict;
    v100 = valuea;
    if (!CFDictionaryGetValue(theDict, v193))
    {
      goto LABEL_307;
    }

    FigTextMarkupDimensionMakeFromSimplifiedDictionary();
    v150 = 0.0;
    if (v149 > 1886679839)
    {
      if (v149 == 1886679840 || v149 == 1886920736)
      {
        FigGeometryDimensionGetCGFloat();
      }

      goto LABEL_306;
    }

    if (v149 == 622862368)
    {
      FigGeometryDimensionGetCGFloat();
      v151 = v152 / 100.0;
      goto LABEL_305;
    }

    if (v149 == 1701650464)
    {
      FigGeometryDimensionGetCGFloat();
LABEL_305:
      v150 = v41 * v151;
    }

LABEL_306:
    v218 = v150;
    v217 = v150;
LABEL_307:
    LOBYTE(values[0]) = -1;
    v153 = *(v8 + 64);
    if (v153)
    {
      if (CFStringCompare(v153, v174, 1uLL))
      {
        if (CFStringCompare(*(v8 + 64), v183, 1uLL) == kCFCompareEqualTo)
        {
          LOBYTE(values[0]) = 1;
        }
      }

      else
      {
        LOBYTE(values[0]) = 0;
      }
    }

    v154 = CFDictionaryGetValue(theDict, v192);
    if (v154)
    {
      if (CFArrayGetCount(v154) >= 1)
      {
        LODWORD(valuePtr) = 0;
        if (FigCFArrayGetInt32AtIndex())
        {
          LOBYTE(values[0]) = valuePtr & 1;
        }
      }
    }

    LODWORD(valuePtr) = 0;
    *(&valuePtr + 1) = 1;
    *&v225 = &v219;
    DWORD2(v225) = 15;
    *&v226 = 8;
    *(&v226 + 1) = keys;
    v227 = 14;
    v228 = 8;
    v229 = keys;
    v230 = 9;
    v231 = 8;
    v232 = &v218;
    v233 = 8;
    v234 = 8;
    v235 = &v217;
    v236 = 13;
    v237 = 1;
    v238 = values;
    v155 = CTParagraphStyleCreate(&valuePtr, 6uLL);
    CFAttributedStringSetAttribute(v7, range, v200, v99);
    CFAttributedStringSetAttribute(v7, range, v191, *(a4 + 632));
    if (v155)
    {
      CFAttributedStringSetAttribute(v7, range, v178, v155);
      CFRelease(v155);
      v11 = 0;
    }

    else
    {
      v11 = 4294950093;
    }

LABEL_319:
    CGColorRelease(v99);
    if (v100)
    {
      CFRelease(v100);
    }

    if (*(v8 + 16) == 7 && v209 == CFDictionaryGetValue(v98, v179))
    {
      valuePtr = 0u;
      v225 = 0u;
      v156 = createCGColorFromCFArray(0, 0, &valuePtr);
      CFAttributedStringRemoveAttribute(v7, range, v200);
      CFAttributedStringSetAttribute(v7, range, v200, v156);
      CGColorRelease(v156);
    }

    if (v11)
    {
      goto LABEL_367;
    }

    if (range.length + range.location >= v28)
    {
      v73 = v199;
      v157 = v186;
      goto LABEL_350;
    }
  }

  v43 = CFAttributedStringGetString(v7);
  v44 = malloc_type_calloc(v28, 2uLL, 0x1000040BDFB0063uLL);
  if (v44)
  {
    v45 = v44;
    v245.location = 0;
    v245.length = v28;
    CFStringGetCharacters(v43, v245, v44);
    if (range.length >= 1)
    {
      v46 = 0;
      while (v45[range.location + v46] - 48 < 0xA)
      {
        if (range.length == ++v46)
        {
          if (range.length >= 5uLL)
          {
            goto LABEL_68;
          }

          goto LABEL_66;
        }
      }

      if ((range.length - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_68;
      }

LABEL_66:
      v47 = FigCFNumberCreateSInt32();
      CFAttributedStringSetAttribute(v7, range, attrName, v47);
      if (v47)
      {
        CFRelease(v47);
      }
    }

LABEL_68:
    free(v45);
    goto LABEL_69;
  }

  v11 = 4294950095;
LABEL_367:
  v73 = v199;
LABEL_368:
  v157 = v186;
  if (v186)
  {
LABEL_351:
    CFRelease(v157);
  }

LABEL_352:
  if (v73)
  {
    CFRelease(v73);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void setupHighlight_0(void *a1, const __CFAttributedString *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"fcr_custom_background_render", @"com.apple.coremedia", 0);
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  Length = CFAttributedStringGetLength(a2);
  if (Length >= 1)
  {
    v5 = Length;
    v6 = 0;
    v7 = *MEMORY[0x1E695F1C0];
    v8 = *MEMORY[0x1E6960810];
    v9 = *MEMORY[0x1E69607C0];
    attrName = *MEMORY[0x1E6965630];
    v29 = *MEMORY[0x1E6965A90];
    v28 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      Attributes = CFAttributedStringGetAttributes(a2, v6, &effectiveRange);
      if (Attributes)
      {
        break;
      }

LABEL_27:
      v6 = effectiveRange.length + effectiveRange.location;
      if (effectiveRange.length + effectiveRange.location >= v5)
      {
        return;
      }
    }

    v11 = Attributes;
    v12 = CGColorSpaceCreateWithName(v7);
    *components = 0u;
    *v33 = 0u;
    v13 = CFDictionaryContainsKey(v11, v8);
    v14 = v8;
    if ((v13 || (v15 = CFDictionaryContainsKey(v11, v9), v14 = v9, v15)) && (CGColorFromCFArray = createCGColorFromCFArray(v11, v14, 0)) != 0)
    {
      v17 = CGColorFromCFArray;
      if (a1[1])
      {
        v18 = CGColorGetComponents(CGColorFromCFArray);
        *components = *v18;
        v33[0] = v18[2];
        goto LABEL_14;
      }

      v19 = a1[19];
      if (!v19)
      {
LABEL_14:
        if (a1[4])
        {
          v22 = (CGColorGetComponents(v17) + 3);
          goto LABEL_17;
        }

LABEL_16:
        v22 = (a1 + 22);
LABEL_17:
        v33[1] = *v22;
        v23 = CGColorCreate(v12, components);
        CGColorRelease(v17);
        if (v12)
        {
          CFRelease(v12);
        }

        if (!v23)
        {
          goto LABEL_26;
        }

        if (AppBooleanValue)
        {
          if (CGColorGetAlpha(v23) == 0.0)
          {
LABEL_25:
            CFAttributedStringSetAttribute(a2, effectiveRange, v29, v28);
LABEL_26:
            CGColorRelease(v23);
            goto LABEL_27;
          }

          v24 = effectiveRange;
          v25 = a2;
          v26 = @"kFCRSubtitleRenderer_CharacterBackgroundColor";
        }

        else
        {
          v24 = effectiveRange;
          v25 = a2;
          v26 = attrName;
        }

        CFAttributedStringSetAttribute(v25, v24, v26, v23);
        goto LABEL_25;
      }

      v20 = 0;
    }

    else
    {
      v17 = 0;
      v19 = a1[19];
      if (!v19)
      {
        goto LABEL_16;
      }

      v20 = 1;
    }

    v21 = CGColorGetComponents(v19);
    *components = *v21;
    v33[0] = v21[2];
    v22 = (a1 + 22);
    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }
}

CFDictionaryRef createFrameAttributesDictionary_0(uint64_t a1, CFStringRef theString1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = *MEMORY[0x1E6965A08];
  valuePtr = 0;
  if (theString1)
  {
    if (CFStringCompare(theString1, *MEMORY[0x1E6960C38], 0))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    valuePtr = v3;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    if (CFStringCompare(v4, *MEMORY[0x1E6960C10], 1uLL) && CFStringCompare(*(a1 + 64), *MEMORY[0x1E6960C18], 1uLL))
    {
      if (CFStringCompare(*(a1 + 64), *MEMORY[0x1E6960C28], 1uLL))
      {
        if (CFStringCompare(*(a1 + 64), *MEMORY[0x1E6960C20], 1uLL) == kCFCompareEqualTo)
        {
          valuePtr = 2;
        }
      }

      else
      {
        valuePtr = 1;
      }
    }

    else
    {
      valuePtr = 0;
    }
  }

  v5 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  return CFDictionaryCreate(v5, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

const __CFString *checkCJKContent(const __CFString *theString2, int *a2)
{
  if (theString2)
  {
    v3 = theString2;
    theString2 = CFStringCompare(@"yue", theString2, 1uLL);
    if (theString2 && (theString2 = CFStringCompare(@"yue-Hant", v3, 1uLL)) != 0 && (theString2 = CFStringCompare(@"cmn-Hant", v3, 1uLL)) != 0 && (theString2 = CFStringCompare(@"zh-cmn-Hant", v3, 1uLL)) != 0 && (theString2 = CFStringCompare(@"zh-Hant", v3, 1uLL)) != 0)
    {
      theString2 = CFStringCompare(@"cmn-Hans", v3, 1uLL);
      if (theString2 && (theString2 = CFStringCompare(@"zh-cmn-Hans", v3, 1uLL)) != 0 && (theString2 = CFStringCompare(@"zh-cmn", v3, 1uLL)) != 0 && (theString2 = CFStringCompare(@"zh-Hans", v3, 1uLL)) != 0)
      {
        v4 = 1;
        theString2 = CFStringCompare(@"ja", v3, 1uLL);
        if (theString2)
        {
          v4 = 1;
          theString2 = CFStringCompare(@"ja-JP", v3, 1uLL);
          if (theString2)
          {
            theString2 = CFStringCompare(@"ko", v3, 1uLL);
            if (theString2 && (theString2 = CFStringCompare(@"ko-KR", v3, 1uLL)) != 0)
            {
              v4 = 0;
            }

            else
            {
              v4 = 4;
            }
          }
        }
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 3;
    }

    if (a2)
    {
      *a2 = v4;
    }
  }

  return theString2;
}

void setupRubyAnnotation_0(uint64_t a1, CFAttributedStringRef aStr, int a3, double a4)
{
  v5 = aStr;
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  Length = CFAttributedStringGetLength(aStr);
  if (Length >= 1)
  {
    v7 = Length;
    v8 = 0;
    v9 = *MEMORY[0x1E69659D8];
    v10 = *MEMORY[0x1E6960930];
    key = *MEMORY[0x1E6960938];
    theString2 = *MEMORY[0x1E6960B68];
    v40 = *MEMORY[0x1E6960B58];
    v41 = *MEMORY[0x1E6960B38];
    v39 = *MEMORY[0x1E6960B40];
    v37 = *MEMORY[0x1E6960B48];
    v35 = *MEMORY[0x1E6960B30];
    v36 = *MEMORY[0x1E6960B60];
    v51 = *MEMORY[0x1E6960940];
    attrName = *MEMORY[0x1E6965638];
    v11 = *MEMORY[0x1E695E480];
    v48 = *MEMORY[0x1E6965A48];
    v47 = *MEMORY[0x1E6965A40];
    v46 = *MEMORY[0x1E695E4D0];
    v43 = *MEMORY[0x1E6965A58];
    v42 = *MEMORY[0x1E6965A60];
    v50 = *MEMORY[0x1E6960948];
    v49 = *MEMORY[0x1E6965A38];
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      Attributes = CFAttributedStringGetAttributes(v5, v8, &effectiveRange);
      if (Attributes)
      {
        v13 = Attributes;
        v14 = CFDictionaryContainsKey(Attributes, v9) ? CFDictionaryGetValue(v13, v9) : 0;
        if (CFDictionaryContainsKey(v13, v10))
        {
          break;
        }
      }

LABEL_43:
      v8 = effectiveRange.length + effectiveRange.location;
      if (effectiveRange.length + effectiveRange.location >= v7)
      {
        return;
      }
    }

    Value = CFDictionaryGetValue(v13, v10);
    String = CFAttributedStringGetString(Value);
    v55.location = 0;
    v55.length = 0;
    v17 = CFAttributedStringGetAttributes(Value, 0, &v55);
    v18 = CFDictionaryGetValue(v17, key);
    if (v18)
    {
      v19 = v18;
      if (CFStringCompare(v18, theString2, 0) == kCFCompareEqualTo)
      {
        v20 = kCTRubyAlignmentStart;
        goto LABEL_22;
      }

      if (CFStringCompare(v19, v41, 0))
      {
        if (CFStringCompare(v19, v40, 0))
        {
          if (CFStringCompare(v19, v39, 0))
          {
            if (CFStringCompare(v19, v37, 0))
            {
              if (CFStringCompare(v19, v36, 0))
              {
                v20 = 2 * (CFStringCompare(v19, v35, 0) != kCFCompareEqualTo);
              }

              else
              {
                v20 = kCTRubyAlignmentLineEdge;
              }
            }

            else
            {
              v20 = kCTRubyAlignmentDistributeSpace;
            }
          }

          else
          {
            v20 = kCTRubyAlignmentDistributeLetter;
          }
        }

        else
        {
          v20 = kCTRubyAlignmentEnd;
        }

        goto LABEL_22;
      }
    }

    v20 = kCTRubyAlignmentCenter;
LABEL_22:
    v21 = CFDictionaryGetValue(v17, v51);
    if (v21)
    {
      CFAttributedStringSetAttribute(v5, effectiveRange, attrName, v21);
    }

    v58 = 0;
    valuePtr = 0x3FE0000000000000;
    v57 = 0;
    if (a3 == 2)
    {
      if (*(a1 + 688))
      {
        v34 = a4 * 0.5;
      }

      else
      {
        v34 = a4;
      }

      calculateAndCopyStrokeAttributes(a1, &v58, &v57, v34);
    }

    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v23 = v11;
    v24 = Mutable;
    if (Mutable)
    {
      v25 = v20;
      v26 = v5;
      v27 = String;
      v28 = v7;
      v29 = v10;
      v30 = CFNumberCreate(v23, kCFNumberCGFloatType, &valuePtr);
      CFDictionaryAddValue(v24, v48, v30);
      if (v30)
      {
        CFRelease(v30);
      }

      CFDictionaryAddValue(v24, v47, v46);
      CFDictionaryAddValue(v24, v9, v14);
      if (v58)
      {
        CFDictionaryAddValue(v24, v43, v58);
      }

      v10 = v29;
      if (v57)
      {
        CFDictionaryAddValue(v24, v42, v57);
      }

      Copy = CFDictionaryCreateCopy(allocator, v24);
      v7 = v28;
      String = v27;
      v5 = v26;
      v20 = v25;
    }

    else
    {
      setupRubyAnnotation_cold_1_0();
      Copy = 0;
    }

    if (v58)
    {
      CFRelease(v58);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    CFDictionaryGetValue(v17, v50);
    v32 = FigCFEqual() != 0;
    v33 = CTRubyAnnotationCreateWithAttributes(v20, kCTRubyOverhangNone, v32, String, Copy);
    CFAttributedStringSetAttribute(v5, effectiveRange, v49, v33);
    if (v33)
    {
      CFRelease(v33);
    }

    v11 = allocator;
    if (Copy)
    {
      CFRelease(Copy);
    }

    goto LABEL_43;
  }
}

void fillRoundedRect(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGContextBeginPath(a1);
  if (a6 <= 1.0)
  {
    v21.origin.x = a2;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    CGContextAddRect(a1, v21);
  }

  else
  {
    CGContextSaveGState(a1);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    MinX = CGRectGetMinX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    MinY = CGRectGetMinY(v18);
    CGContextTranslateCTM(a1, MinX, MinY);
    CGContextScaleCTM(a1, a6, a6);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    v14 = CGRectGetWidth(v19) / a6;
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    v15 = CGRectGetHeight(v20) / a6;
    CGContextMoveToPoint(a1, v14, v15 * 0.5);
    CGContextAddArcToPoint(a1, v14, v15, v14 * 0.5, v15, 1.0);
    CGContextAddArcToPoint(a1, 0.0, v15, 0.0, v15 * 0.5, 1.0);
    CGContextAddArcToPoint(a1, 0.0, 0.0, v14 * 0.5, 0.0, 1.0);
    CGContextAddArcToPoint(a1, v14, 0.0, v14, v15 * 0.5, 1.0);
    CGContextClosePath(a1);
    CGContextRestoreGState(a1);
  }

  CGContextFillPath(a1);
}

uint64_t ckCaptionDrawText(uint64_t a1, const __CFAttributedString *a2, uint64_t a3, int a4, int a5, double a6, double a7, double a8, double a9, double a10)
{
  v125 = *MEMORY[0x1E69E9840];
  v20 = *(a3 + 320);
  v21 = *(a3 + 328);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"fcr_custom_background_render", @"com.apple.coremedia", 0);
  v114 = a4;
  if (a4 == 1)
  {
    CGContextSetLineJoin(v20, kCGLineJoinRound);
    if (v21)
    {
      CGContextSetLineJoin(v21, kCGLineJoinRound);
    }

    v23 = 0.0;
    v24 = 0.0;
  }

  else
  {
    if (a6 <= 60.0)
    {
      v24 = a6 * 0.0882352941;
    }

    else
    {
      v24 = a6 * 0.0882352941 / 1.5;
    }

    if (*(a3 + 336))
    {
      v24 = -v24;
    }

    v23 = 0.0;
  }

  effectiveRange.location = 0;
  effectiveRange.length = 0;
  Attributes = CFAttributedStringGetAttributes(a2, 0, &effectiveRange);
  EdgeStyle = getEdgeStyle(*(a3 + 128), *(a3 + 272), Attributes, *MEMORY[0x1E6960818]);
  if (EdgeStyle > 2)
  {
    if (EdgeStyle == 3)
    {
      if (a6 <= 60.0)
      {
        v23 = a6 * 0.0882352941;
      }

      else
      {
        v23 = a6 * 0.0882352941 / 1.5;
      }

      v24 = -v23;
    }

    else if (EdgeStyle == 4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (EdgeStyle == 1)
    {
      goto LABEL_30;
    }

    if (EdgeStyle == 2)
    {
      if (a6 <= 60.0)
      {
        v23 = a6 * -0.0882352941;
        v24 = a6 * 0.0882352941;
      }

      else
      {
        v23 = a6 * 0.0882352941 / -1.5;
        v24 = a6 * 0.0882352941 / 1.5;
      }
    }
  }

  v27 = *(a3 + 340);
  v28 = v23 * v27;
  v29 = v24 * v27;
  effectiveRange = xmmword_196E7BB38;
  v124 = *algn_196E7BB48;
  v30 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (v30)
  {
    v31 = v30;
    v32 = CGColorCreate(v30, &effectiveRange.location);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v32, *(a3 + 168));
    CGColorRelease(v32);
    CGColorSpaceRelease(v31);
  }

  else
  {
    CopyWithAlpha = 0;
  }

  v129.width = v28;
  v129.height = v29;
  CGContextSetShadowWithColor(*(a3 + 320), v129, *(a3 + 340) * 4.0, CopyWithAlpha);
  v34 = *(a3 + 328);
  if (v34)
  {
    v130.width = v28;
    v130.height = v29;
    CGContextSetShadowWithColor(v34, v130, *(a3 + 340) * 4.0, CopyWithAlpha);
  }

  CGColorRelease(CopyWithAlpha);
LABEL_30:
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    v36 = Mutable;
    v121.location = 0;
    v121.length = 0;
    theString1 = CFAttributedStringGetAttribute(a2, 0, *MEMORY[0x1E6960998], &v121);
    if (theString1 && *(a1 + 128))
    {
      v37 = *MEMORY[0x1E6965AA8];
      values = *MEMORY[0x1E695E4D0];
      effectiveRange.location = v37;
      v38 = CFDictionaryCreate(*MEMORY[0x1E695E480], &effectiveRange, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v38)
      {
        return 0;
      }

      v39 = v38;
      v40 = CTTypesetterCreateWithAttributedStringAndOptions(a2, v38);
      if (!v40)
      {
        return 0;
      }

      v41 = v40;
      v42 = CTFramesetterCreateWithTypesetter(v40);
      if (!v42)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v42 = CTFramesetterCreateWithAttributedString(a2);
      v41 = 0;
      v39 = 0;
      if (!v42)
      {
LABEL_36:
        v43 = 4294950093;
LABEL_118:
        CFRelease(v36);
        return v43;
      }
    }

    framesetter = v42;
    FrameAttributesDictionary_0 = createFrameAttributesDictionary_0(a1, theString1);
    effectiveRange.location = 0;
    Attribute = CFAttributedStringGetAttribute(a2, 0, @"kFigSubtitleRenderer_CompensationInTextLayout", &v121);
    if (Attribute)
    {
      CFNumberGetValue(Attribute, kCFNumberCGFloatType, &effectiveRange);
    }

    v131.origin.x = a7 + *&effectiveRange.location;
    v131.origin.y = a8 + *&effectiveRange.location;
    v131.size.width = a9 - *&effectiveRange.location * 2.0;
    v131.size.height = a10 - *&effectiveRange.location * 2.0;
    v116 = a8 + *&effectiveRange.location;
    v117 = a7 + *&effectiveRange.location;
    CGPathAddRect(v36, 0, v131);
    v126.location = 0;
    v126.length = 0;
    v46 = CTFramesetterCreateFrame(framesetter, v126, v36, FrameAttributesDictionary_0);
    if (FrameAttributesDictionary_0)
    {
      CFRelease(FrameAttributesDictionary_0);
    }

    if (v46)
    {
      if (!a5)
      {
        goto LABEL_109;
      }

      if (!AppBooleanValue)
      {
        goto LABEL_109;
      }

      Lines = CTFrameGetLines(v46);
      if (!Lines)
      {
        goto LABEL_109;
      }

      v48 = Lines;
      Count = CFArrayGetCount(Lines);
      if (Count < 1)
      {
        goto LABEL_109;
      }

      frame = v46;
      v102 = v41;
      v103 = v39;
      v104 = v36;
      v105 = v21;
      v49 = 0;
      v50 = 0;
      allocator = *MEMORY[0x1E695E480];
      dx = a6 / -10.0;
      v108 = *MEMORY[0x1E695EFF8];
      v113 = a6 / -40.0;
      v51 = theString1;
      v107 = v48;
LABEL_48:
      effectiveRange = v108;
      v127.location = v50;
      v127.length = 1;
      CTFrameGetLineOrigins(frame, v127, &effectiveRange);
      ValueAtIndex = CFArrayGetValueAtIndex(v48, v50);
      GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
      v54 = CFArrayGetCount(GlyphRuns);
      v55 = MEMORY[0x19A8CC770](allocator, v49, 24 * v54, 0x102004024DAA5DELL, 0);
      if (v55)
      {
        v49 = v55;
        TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(ValueAtIndex);
        IsRightToLeft = CTLineIsRightToLeft();
        if (v54 < 1)
        {
          goto LABEL_106;
        }

        v57 = IsRightToLeft;
        v58 = 0;
        v59 = 0;
        v118 = -INFINITY;
        rect = INFINITY;
        while (1)
        {
          v60 = CFArrayGetValueAtIndex(GlyphRuns, v59);
          CTRunGetBackgroundBounds();
          v62 = v61;
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v128.location = 0;
          v128.length = 0;
          ImageBounds = CTRunGetImageBounds(v60, 0, v128);
          x = ImageBounds.origin.x;
          y = ImageBounds.origin.y;
          width = ImageBounds.size.width;
          height = ImageBounds.size.height;
          v73 = CTRunGetAttributes(v60);
          if (v66 < 0.0 || v68 < 0.0 || width < 0.0 || height < 0.0)
          {
            goto LABEL_94;
          }

          v74 = v73;
          if (TrailingWhitespaceWidth > 0.0)
          {
            v75 = v57 ^ 1;
            if (v59)
            {
              v75 = 1;
            }

            if (v75)
            {
              if (v59 == v54 - 1)
              {
                v77 = v57;
              }

              else
              {
                v77 = 1;
              }

              if (v77)
              {
                goto LABEL_69;
              }

              v76 = TrailingWhitespaceWidth;
              if (TrailingWhitespaceWidth >= v66)
              {
                v76 = v66;
              }
            }

            else
            {
              v76 = TrailingWhitespaceWidth;
              if (TrailingWhitespaceWidth >= v66)
              {
                v76 = v66;
              }

              v62 = v62 + v76;
            }

            v66 = v66 - v76;
          }

LABEL_69:
          if (v66 == 0.0)
          {
LABEL_94:
            if (++v59 == v54)
            {
              v91 = v58;
              if (v58 < 1)
              {
                goto LABEL_106;
              }

LABEL_99:
              v92 = v49;
              do
              {
                if (*v92)
                {
                  v93 = v92[1];
                  v94 = v92[2] - v93;
                  if (v51)
                  {
                    v95 = -v93;
                    v96 = -v94;
                    v93 = rect;
                    v94 = v118 - rect;
                  }

                  else
                  {
                    v95 = rect;
                    v96 = v118 - rect;
                  }

                  v137 = CGRectOffset(*&v93, v117 + *&effectiveRange.location, v116 + *&effectiveRange.length);
                  v97 = v137.origin.x;
                  v98 = v137.origin.y;
                  v99 = v137.size.width;
                  v100 = v137.size.height;
                  CGContextSetFillColorWithColor(v20, *v92);
                  v138.origin.x = v97;
                  v138.origin.y = v98;
                  v138.size.width = v99;
                  v138.size.height = v100;
                  CGContextAddRect(v20, v138);
                  CGContextFillPath(v20);
                }

                v92 += 3;
                --v91;
              }

              while (v91);
LABEL_106:
              ++v50;
              v48 = v107;
              if (v50 == Count)
              {
                CFAllocatorDeallocate(allocator, v49);
                goto LABEL_108;
              }

              goto LABEL_48;
            }
          }

          else
          {
            if (v114 == 1)
            {
              v133.origin.x = x;
              v133.origin.y = y;
              v133.size.width = width;
              v133.size.height = height;
              v134 = CGRectInset(v133, dx, dx);
              x = v134.origin.x;
              y = v134.origin.y;
              width = v134.size.width;
              height = v134.size.height;
            }

            v135.origin.x = x;
            v135.origin.y = y;
            v135.size.width = width;
            v135.size.height = height;
            v136 = CGRectInset(v135, v113, v113);
            if (v62 >= v136.origin.x)
            {
              v78 = v136.origin.x;
            }

            else
            {
              v78 = v62;
            }

            v79 = v136.origin.x + v136.size.width;
            if (v66 + v62 <= v79)
            {
              v80 = v79;
            }

            else
            {
              v80 = v66 + v62;
            }

            if (v64 >= v136.origin.y)
            {
              v81 = v136.origin.y;
            }

            else
            {
              v81 = v64;
            }

            v82 = v136.origin.y + v136.size.height;
            if (v64 + v68 > v82)
            {
              v82 = v64 + v68;
            }

            v83 = rect;
            if (rect >= v81)
            {
              v83 = v81;
            }

            rect = v83;
            v84 = v118;
            if (v118 <= v82)
            {
              v84 = v82;
            }

            v118 = v84;
            Value = CFDictionaryGetValue(v74, @"kFCRSubtitleRenderer_CharacterBackgroundColor");
            v86 = Value;
            if (v58)
            {
              v87 = &v49[3 * v58];
              v88 = CGColorEqualToColor(Value, *(v87 - 3));
              v89 = *(v87 - 1);
              if (v88)
              {
                if (v89 <= v80)
                {
                  v89 = v80;
                }

                *(v87 - 1) = v89;
              }

              else
              {
                v90 = (v78 + v89) * 0.5;
                *(v87 - 1) = v90;
                *v87 = v86;
                v87[1] = v90;
                v87[2] = v80;
                ++v58;
              }

              v51 = theString1;
              goto LABEL_94;
            }

            *v49 = Value;
            v49[1] = v78;
            v49[2] = v80;
            ++v59;
            v91 = 1;
            v58 = 1;
            v51 = theString1;
            if (v59 == v54)
            {
              goto LABEL_99;
            }
          }
        }
      }

      ckCaptionDrawText_cold_1(&effectiveRange);
LABEL_108:
      v36 = v104;
      v21 = v105;
      v41 = v102;
      v39 = v103;
      v46 = frame;
LABEL_109:
      CTFrameDraw(v46, v20);
      if (v21)
      {
        CTFrameDraw(v46, v21);
      }

      CFRelease(v46);
      v43 = 0;
    }

    else
    {
      v43 = 4294950093;
    }

    CFRelease(framesetter);
    if (v41)
    {
      CFRelease(v41);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    goto LABEL_118;
  }

  return 4294950093;
}

__CFString *FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCaption <FigCaptionRendererCaptionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetAttributes(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  *(DerivedStorage + 40) = 0;
  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *(DerivedStorage + 40) = v5;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetContent(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = 0;
  if (a2)
  {
    v6 = CFRetain(a2);
  }

  else
  {
    v6 = 0;
  }

  *(DerivedStorage + 32) = v6;
  if (v5)
  {
    CFRelease(v5);
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v9 = *(v8 + 232);
      if (v9)
      {
        v9(a1, 1);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v10 = CMBaseObjectGetProtocolVTable();
  if (v10)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v11 + 216);
      if (v12)
      {
        v12(a1, 1);
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetExtendedLanguageTagString(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetTextHighlightArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_GetInvisible_0(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E695E4D0];
  if (!*(DerivedStorage + 72))
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  *a2 = *v4;
  return 0;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetWritingMode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetLayoutSampleWithCTAttributes(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 88) = CFEqual(a2, *MEMORY[0x1E695E4D0]) != 0;
  return 0;
}

uint64_t RegisterFigCaptionRendererCaptionBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

double ftu_Init(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void ftu_Finalize(uint64_t a1)
{
  if (*(a1 + 72))
  {
    RunLoopSource = IOSurfaceAcceleratorGetRunLoopSource();
    CFRunLoopRemoveSource(*(a1 + 96), RunLoopSource, *MEMORY[0x1E695E8D0]);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRunLoopStop(v3);
    FigThreadJoin();
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 72) = 0;
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }
}

__CFString *ftu_CopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"[FigTransformUtility %p retainCount:%ld", a1, v4);
  CFStringAppendFormat(Mutable, 0, @"]\n");
  return Mutable;
}

uint64_t __FigTransformUtilityGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigTransformUtilityGetTypeID_sTypeID = result;
  return result;
}

uint64_t FigTransformUtilityCreate(uint64_t a1, const void *a2)
{
  if (FigTransformUtilityGetTypeID_sRegisterOnce != -1)
  {
    FigTransformUtilityCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    FigTransformUtilityCreate_cold_2(Instance, a2, &v5, &v6);
    return v6;
  }

  else
  {
    FigTransformUtilityCreate_cold_3();
    return 0;
  }
}

uint64_t ftu_callbackThread(uint64_t a1)
{
  *(a1 + 96) = CFRunLoopGetCurrent();
  memset(&v4, 0, 72);
  v4.perform = ftu_noop;
  v2 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &v4);
  CFRunLoopAddSource(*(a1 + 96), v2, *MEMORY[0x1E695E8D0]);
  CFRelease(v2);
  dispatch_semaphore_signal(*(a1 + 112));
  CFRunLoopRun();
  return 0;
}

CFTypeRef __FigTransformUtilityGenerateReplacementImageBufferAsync_block_invoke(void *a1)
{
  v2 = a1[11];
  *(*(a1[4] + 8) + 24) = *(v2 + 40);
  *(*(a1[5] + 8) + 24) = *(v2 + 48);
  *(*(a1[6] + 8) + 24) = *(v2 + 56);
  *(*(a1[7] + 8) + 24) = *(v2 + 64);
  v4 = *(v2 + 32);
  v3 = (v2 + 32);
  *(*(a1[8] + 8) + 24) = v4;
  *(*(a1[9] + 8) + 24) = v3[1];
  result = *(v3 + 7);
  if (!result)
  {
    if (!*v3)
    {
      result = 0;
      goto LABEL_3;
    }

    v6 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v3);
    *(a1[11] + 88) = CFDictionaryCreate(v6, MEMORY[0x1E69A85C0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(values);
    result = *(a1[11] + 88);
    if (!result)
    {
      goto LABEL_3;
    }
  }

  result = CFRetain(result);
LABEL_3:
  *(*(a1[10] + 8) + 24) = result;
  return result;
}

double ftu_computeSourceImageRectForCroppedDimensions(unint64_t a1, double result, double a3, double a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a6)
  {
    return result + a4 / a1 * vcvtd_n_f64_u64(a1 - a6, 1uLL);
  }

  return result;
}

void ftu_blitComplete(NSObject *a1, uint64_t a2, void *a3)
{
  dispatch_semaphore_signal(a1);
  if (*a3)
  {
    (*a3)(*(a3 + 1), *(a3 + 2));
  }

  CFRelease(*(a3 + 2));
  dispatch_release(a1);

  free(a3);
}

void FigTransformUtilityRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigTransformUtilitySetRotation(uint64_t a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  if (valuePtr == 180)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (valuePtr == 270)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __FigTransformUtilitySetRotation_block_invoke;
  v8[3] = &__block_descriptor_tmp_9_4;
  if (valuePtr == 90)
  {
    v6 = 4;
  }

  else
  {
    v6 = v4;
  }

  v9 = v6;
  v8[4] = a1;
  dispatch_sync(v5, v8);
  return 0;
}

void __FigTransformUtilitySetRotation_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 32))
  {
    v4 = *(v2 + 88);
    if (v4)
    {
      CFRelease(v4);
      *(*(a1 + 32) + 88) = 0;
      v1 = *(a1 + 40);
      v2 = *(a1 + 32);
    }

    *(v2 + 32) = v1;
  }
}

uint64_t FigTransformUtilitySetVideoGravity(uint64_t a1, uint64_t a2)
{
  if (FigCFEqual())
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (FigCFEqual() != 0);
  }

  v4 = *(a1 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __FigTransformUtilitySetVideoGravity_block_invoke;
  v6[3] = &__block_descriptor_tmp_16_9;
  v6[4] = a1;
  v7 = v3;
  dispatch_sync(v4, v6);
  return 0;
}

uint64_t FigTransformUtilitySetMinImageBounds(uint64_t a1, CFDictionaryRef dict)
{
  size.width = 0.0;
  size.height = 0.0;
  CGSizeMakeWithDictionaryRepresentation(dict, &size);
  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigTransformUtilitySetMinImageBounds_block_invoke;
  block[3] = &__block_descriptor_tmp_17_6;
  block[4] = a1;
  v6 = size;
  dispatch_sync(v3, block);
  return 0;
}

uint64x2_t __FigTransformUtilitySetMinImageBounds_block_invoke(uint64_t a1)
{
  __asm { FMOV            V1.2D, #0.5 }

  result = vcvtq_u64_f64(vaddq_f64(*(a1 + 40), _Q1));
  *(*(a1 + 32) + 40) = result;
  return result;
}

uint64_t FigTransformUtilitySetMaxImageBounds(uint64_t a1, CFDictionaryRef dict)
{
  size.width = 0.0;
  size.height = 0.0;
  CGSizeMakeWithDictionaryRepresentation(dict, &size);
  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigTransformUtilitySetMaxImageBounds_block_invoke;
  block[3] = &__block_descriptor_tmp_18_5;
  block[4] = a1;
  v6 = size;
  dispatch_sync(v3, block);
  return 0;
}

uint64x2_t __FigTransformUtilitySetMaxImageBounds_block_invoke(uint64_t a1)
{
  __asm { FMOV            V1.2D, #0.5 }

  result = vcvtq_u64_f64(vaddq_f64(*(a1 + 40), _Q1));
  *(*(a1 + 32) + 56) = result;
  return result;
}

BOOL OUTLINED_FUNCTION_2_187(double a1, double a2, double a3, double a4)
{
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  return CGRectEqualToRect(*&a1, *&v9);
}

uint64_t RegisterFigItemIntegratedTimelineType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigItemIntegratedTimelineCreate(const void *a1, void *a2, CFTypeRef *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v6 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigItemIntegratedTimelineGetClassID_sRegisterFigItemIntegratedTimelineTypeOnce, RegisterFigItemIntegratedTimelineType);
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v26 = 2914;
LABEL_21:
    FigItemIntegratedTimelineCreate_cold_3(v26, v27);
    return v27[0];
  }

  v9 = DerivedStorage;
  v10 = FigReentrantMutexCreate();
  *v9 = v10;
  if (!v10)
  {
    v26 = 2917;
    goto LABEL_21;
  }

  FigSimpleMutexLock();
  if (dword_1EAF17A98)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    v12 = CFRetain(a1);
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1E6960C98];
  v14 = *(MEMORY[0x1E6960C98] + 16);
  *(v9 + 104) = *MEMORY[0x1E6960C98];
  *(v9 + 8) = v12;
  *(v9 + 120) = v14;
  *(v9 + 136) = *(v13 + 32);
  v15 = MEMORY[0x1E6960C70];
  *(v9 + 208) = *MEMORY[0x1E6960C70];
  *(v9 + 224) = *(v15 + 16);
  *(v9 + 80) = *a2;
  *(v9 + 88) = a2[1];
  *(v9 + 96) = a2[2];
  *(v9 + 64) = FigDispatchQueueCreateWithPriority();
  *(v9 + 352) = FPSupport_InitialSeekIDForSource(5);
  *(v9 + 72) = FigDispatchQueueCreateWithPriority();
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v16 = CMBaseObjectGetDerivedStorage();
  if (!*(v16 + 320))
  {
    v17 = v16;
    v18 = FigDispatchQueueCreateWithPriority();
    *(v17 + 320) = v18;
    if (!v18)
    {
      FigItemIntegratedTimelineCreate_cold_1();
    }
  }

  CMBaseObjectGetDerivedStorage();
  v19 = CFArrayCreate(v6, 0, 0, MEMORY[0x1E695E9C0]);
  if (v19)
  {
    v20 = v19;
    FigPlaybackItemGetFigBaseObject();
    v22 = v21;
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v23)
    {
      v23(v22, @"IntegratedTimelineTimeOffsets", v20);
    }

    CFRelease(v20);
  }

  else
  {
    FigItemIntegratedTimelineCreate_cold_2();
  }

  fiit_checkAndUpdateIfPrimaryIsReadyForInspection(0);
  fiit_updatePrimaryItemSeekableTimeRange(0, 0);
  fiit_updatePrimaryItemStartMoment(0);
  fiit_rebuildSegmentList(0);
  fiit_unlockAndPostSnapshotOutOfSyncNotification(0);
  v24 = 0;
  *a3 = 0;
  return v24;
}

void FigCFRelease_15(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fiit_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(CMBaseObjectGetDerivedStorage() + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  fiit_cancelScanTracking(a1);
  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  fiit_setCoordinator(a1, 0);
  v5 = DerivedStorage[4];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[4] = 0;
  }

  v6 = DerivedStorage[7];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[7] = 0;
  }

  v7 = DerivedStorage[5];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[5] = 0;
  }

  v8 = DerivedStorage[8];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[8] = 0;
  }

  v9 = DerivedStorage[9];
  if (v9)
  {
    dispatch_release(v9);
    DerivedStorage[9] = 0;
  }

  v10 = DerivedStorage[19];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[19] = 0;
  }

  v11 = DerivedStorage[6];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[6] = 0;
  }

  v12 = DerivedStorage[30];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[30] = 0;
  }

  v13 = DerivedStorage[40];
  if (v13)
  {
    dispatch_release(v13);
    DerivedStorage[40] = 0;
  }

  return FigSimpleMutexDestroy();
}

void fiit_cancelScanTracking(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 304);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 304) = 0;
  }

  v3 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 328) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 344) = *(v3 + 16);
  v4 = *(DerivedStorage + 312);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(DerivedStorage + 312));
    *(DerivedStorage + 312) = 0;
    if (dword_1EAF17A98)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 356) = 0;
  }
}

BOOL fiit_isTrackingScan(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 356);
  return (v2 > 2.0 || v2 < 0.0) && *(DerivedStorage + 304) && *(DerivedStorage + 312) != 0;
}

void fiit_clearPendingSeekState(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 232) = 0;
  v2 = MEMORY[0x1E6960C70];
  v3 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 248) = *MEMORY[0x1E6960C70];
  v4 = *(v2 + 16);
  *(DerivedStorage + 264) = v4;
  *(DerivedStorage + 272) = v3;
  *(DerivedStorage + 288) = v4;
  v5 = *(DerivedStorage + 240);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 240) = 0;
  }
}

void fiit_postNotification(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v8 = malloc_type_malloc(0x18uLL, 0xE004074F98F5AuLL);
  if (v8)
  {
    v16 = v8;
    *v8 = a2;
    if (a3)
    {
      v17 = CFRetain(a3);
    }

    else
    {
      v17 = 0;
    }

    v16[1] = v17;
    if (a4)
    {
      v18 = CFRetain(a4);
    }

    else
    {
      v18 = 0;
    }

    v16[2] = v18;
    v19 = *(a1 + 64);

    dispatch_async_f(v19, v16, fiit_postNotificationFromDispatch);
  }

  else
  {
    fiit_postNotification_cold_1(0, v9, v10, v11, v12, v13, v14, v15, v20, v21, SHIDWORD(v21), v22);
  }
}