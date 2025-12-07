uint64_t dwContentConf_getTypeID()
{
  v1 = xmmword_1E7481400;
  if (dwContentConf_getTypeID_once != -1)
  {
    dispatch_once_f(&dwContentConf_getTypeID_once, &v1, dwConf_registerClass);
  }

  return dwContentConf_getTypeID_typeID;
}

uint64_t FigStreamingAssetDownloadContentConfigCreateCopy(const __CFAllocator *a1, void *a2, void *a3)
{
  if (a2)
  {
    dwContentConf_getTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      FigStreamingAssetDownloadContentConfigCreateCopy_cold_1(&v12);
      return v12;
    }

    v7 = Instance;
    v8 = a2[3];
    if (v8)
    {
      v8 = CFRetain(v8);
    }

    v7[3] = v8;
    v9 = a2[2];
    if (v9)
    {
      v7[2] = CFArrayCreateCopy(a1, v9);
    }

    v10 = a2[4];
    if (v10)
    {
      v7[4] = CFArrayCreateCopy(a1, v10);
    }
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigGetPrimaryContentConfig(uint64_t a1, __CFString *a2)
{
  if (a2 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    v3 = 24;
  }

  else
  {
    if (a2 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      return 0;
    }

    v3 = 32;
  }

  return *(a1 + v3);
}

uint64_t FigStreamingAssetDownloadConfigSetPrimaryContentConfig(uint64_t a1, CFTypeRef cf, __CFString *a3)
{
  if (a3 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    v5 = 24;
    if (!cf)
    {
LABEL_7:
      v6 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if (a3 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      return 4294950643;
    }

    v5 = 32;
    if (!cf)
    {
      goto LABEL_7;
    }
  }

  v6 = CFRetain(cf);
LABEL_8:
  result = 0;
  *(a1 + v5) = v6;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigGetAuxConfigs(uint64_t a1, __CFString *a2)
{
  if (a2 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    v3 = 40;
  }

  else
  {
    if (a2 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      return 0;
    }

    v3 = 48;
  }

  return *(a1 + v3);
}

uint64_t FigStreamingAssetDownloadConfigAddAuxConfig(uint64_t a1, void *value, __CFString *a3)
{
  if (a3 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    Mutable = *(a1 + 40);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *(a1 + 40) = Mutable;
      if (!Mutable)
      {
        FigStreamingAssetDownloadConfigAddAuxConfig_cold_2(&v8);
        return v8;
      }
    }
  }

  else
  {
    if (a3 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      return 4294950643;
    }

    Mutable = *(a1 + 48);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *(a1 + 48) = Mutable;
      if (!Mutable)
      {
        FigStreamingAssetDownloadConfigAddAuxConfig_cold_1(&v7);
        return v7;
      }
    }
  }

  CFArrayAppendValue(Mutable, value);
  return 0;
}

void *FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers(uint64_t a1, uint64_t a2)
{
  v4 = downloadConfig_copyPrimaryWithOnlyQualifiers(a1, a2, @"kFigEnvironmentalCondition_DefaultKey");
  if (v4)
  {
    v7 = v4;
    FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_1();
  }

  else
  {
    v5 = downloadConfig_copyPrimaryWithOnlyQualifiers(a1, a2, @"kFigEnvironmentalCondition_OnExpensiveNetworkKey");
    if (v5)
    {
      v7 = v5;
      FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_2();
    }

    else
    {
      v6 = downloadConfig_copyAuxConfigsWithOnlyQualifiers(a1, a2, @"kFigEnvironmentalCondition_DefaultKey");
      if (v6)
      {
        v7 = v6;
        FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_3();
      }

      else
      {
        v7 = downloadConfig_copyAuxConfigsWithOnlyQualifiers(a1, a2, @"kFigEnvironmentalCondition_OnExpensiveNetworkKey");
        if (v7)
        {
          FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_4();
        }
      }
    }
  }

  return v7;
}

uint64_t downloadConfig_copyPrimaryWithOnlyQualifiers(uint64_t a1, uint64_t a2, __CFString *a3)
{
  cf = 0;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (a3 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    v5 = 24;
  }

  else
  {
    if (a3 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      goto LABEL_7;
    }

    v5 = 32;
  }

  v6 = *(a1 + v5);
  if (v6)
  {
    v12 = downloadContentConfig_createCopyWithOnlyQualifiers(v6, &cf);
    if (v12)
    {
      v9 = v12;
      downloadConfig_copyPrimaryWithOnlyQualifiers_cold_1();
      goto LABEL_15;
    }

    v8 = cf;
    if (cf)
    {
LABEL_9:
      if (a3 == @"kFigEnvironmentalCondition_DefaultKey")
      {
        v10 = 24;
        if (!v8)
        {
LABEL_14:
          v9 = 0;
          *(a2 + v10) = v8;
          goto LABEL_15;
        }
      }

      else
      {
        if (a3 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
        {
          v9 = 4294950643;
          goto LABEL_15;
        }

        v10 = 32;
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      v8 = CFRetain(v8);
      goto LABEL_14;
    }
  }

LABEL_7:
  v7 = FigStreamingAssetDownloadContentConfigCreate(*MEMORY[0x1E695E480], &cf);
  if (!v7)
  {
    v8 = cf;
    goto LABEL_9;
  }

  v9 = v7;
  downloadConfig_copyPrimaryWithOnlyQualifiers_cold_2();
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigStreamingAssetDownloadConfigApplyMediaSelectionCriteriaToContentConfigs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria(v4, a2);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria(v5, a2);
  }

  v6 = *(a1 + 40);
  if (v6 && CFArrayGetCount(v6) >= 1)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v7);
      FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria(ValueAtIndex, a2);
      ++v7;
    }

    while (v7 < CFArrayGetCount(*(a1 + 40)));
  }

  v9 = *(a1 + 48);
  if (v9 && CFArrayGetCount(v9) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = CFArrayGetValueAtIndex(*(a1 + 48), v10);
      FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria(v11, a2);
      ++v10;
    }

    while (v10 < CFArrayGetCount(*(a1 + 48)));
  }

  return 0;
}

CFDictionaryRef FigStreamingAssetDownloadConfigCopyMediaSelectionCriteriaForInterstitials(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
  }

  else
  {
    return 0;
  }
}

uint64_t FigStreamingAssetDownloadConfigSetMediaSelectionCriteriaForInterstitials(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 120) = 0;
  }

  if (!a2)
  {
    return 0;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  *(a1 + 120) = MutableCopy;
  if (MutableCopy)
  {
    return 0;
  }

  FigStreamingAssetDownloadConfigSetMediaSelectionCriteriaForInterstitials_cold_1(&v7);
  return v7;
}

uint64_t FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForPrimary(uint64_t a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Mutable;
    if (*(a1 + 24))
    {
      CFArrayAppendValue(Mutable, @"kFigEnvironmentalCondition_DefaultKey");
    }

    if (*(a1 + 32))
    {
      CFArrayAppendValue(v5, @"kFigEnvironmentalCondition_OnExpensiveNetworkKey");
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForPrimary_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForAux(uint64_t a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = *(a1 + 40);
    if (v6 && CFArrayGetCount(v6) >= 1)
    {
      CFArrayAppendValue(v5, @"kFigEnvironmentalCondition_DefaultKey");
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      if (CFArrayGetCount(v7) >= 1)
      {
        CFArrayAppendValue(v5, @"kFigEnvironmentalCondition_OnExpensiveNetworkKey");
      }
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForAux_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t FigStreamingAssetDownloadConfigCreate(uint64_t a1, uint64_t *a2)
{
  dwconf_getTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a2 = v4;
  }

  else
  {
    FigStreamingAssetDownloadConfigCreate_cold_1(&v6);
    return v6;
  }

  return result;
}

CFTypeRef FigStreamingAssetDownloadConfigCopyAssetNameAndImage(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *a2 = v6;
  result = *(a1 + 64);
  if (result)
  {
    result = CFRetain(result);
  }

  *a3 = result;
  return result;
}

CFTypeRef FigStreamingAssetDownloadConfigSetAssetNameAndImage(uint64_t a1, CFTypeRef cf, const void *a3)
{
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 56) = v5;
  if (a3)
  {
    result = CFRetain(a3);
  }

  else
  {
    result = 0;
  }

  *(a1 + 64) = result;
  return result;
}

__n128 FigStreamingAssetDownloadConfigGetTimeRange@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  *a2 = *(a1 + 72);
  *(a2 + 16) = v2;
  result = *(a1 + 104);
  *(a2 + 32) = result;
  return result;
}

__n128 FigStreamingAssetDownloadConfigSetTimeRange(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 104) = *(a2 + 32);
  *(a1 + 88) = v3;
  *(a1 + 72) = result;
  return result;
}

uint64_t dwconf_getTypeID()
{
  v1 = xmmword_1E7481410;
  if (dwconf_getTypeID_once != -1)
  {
    dispatch_once_f(&dwconf_getTypeID_once, &v1, dwConf_registerClass);
  }

  return dwconf_getTypeID_typeID;
}

uint64_t FigStreamingAssetDownloadConfigCreateCopy(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    dwconf_getTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      FigStreamingAssetDownloadConfigCreateCopy_cold_1(&v15);
      return v15;
    }

    v7 = Instance;
    v8 = *(a2 + 64);
    if (v8)
    {
      *(Instance + 64) = CFDataCreateCopy(a1, v8);
    }

    v9 = *(a2 + 56);
    if (v9)
    {
      *(v7 + 56) = CFStringCreateCopy(a1, v9);
    }

    v10 = *(a2 + 40);
    if (v10)
    {
      *(v7 + 40) = CFArrayCreateMutableCopy(a1, 0, v10);
    }

    v11 = *(a2 + 48);
    if (v11)
    {
      *(v7 + 48) = CFArrayCreateMutableCopy(a1, 0, v11);
    }

    *(v7 + 16) = *(a2 + 16);
    v12 = *(a2 + 72);
    v13 = *(a2 + 88);
    *(v7 + 104) = *(a2 + 104);
    *(v7 + 88) = v13;
    *(v7 + 72) = v12;
    FigStreamingAssetDownloadContentConfigCreateCopy(a1, *(a2 + 24), (v7 + 24));
    FigStreamingAssetDownloadContentConfigCreateCopy(a1, *(a2 + 32), (v7 + 32));
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  *a3 = v7;
  return result;
}

void dwContentConf_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t dwConf_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t downloadConfig_serializeAuxContentConfigsGuts(const __CFArray *a1, const char *a2, void *a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      empty = 0;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
        v11 = downloadContentConfig_copySerializedRepresentation(ValueAtIndex, a2);
        if (v11)
        {
          v12 = v11;
          if (!empty)
          {
            empty = xpc_array_create_empty();
            if (!empty)
            {
              downloadConfig_serializeAuxContentConfigsGuts_cold_1(&v15);
              v13 = v15;
              goto LABEL_12;
            }
          }

          xpc_array_append_value(empty, v12);
          xpc_release(v12);
        }

        if (v7 == ++v9)
        {
          goto LABEL_11;
        }
      }
    }
  }

  empty = 0;
LABEL_11:
  v13 = 0;
  *a3 = empty;
LABEL_12:
  FigXPCRelease();
  FigXPCRelease();
  return v13;
}

uint64_t downloadConfig_deserializeAuxContentConfigsGuts(void *a1, uint64_t a2, __CFArray **a3)
{
  count = xpc_array_get_count(a1);
  if (count >= 1)
  {
    v7 = count;
    Mutable = 0;
    v9 = 0;
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9C0];
    while (1)
    {
      value = xpc_array_get_value(a1, v9);
      v13 = downloadContentConfig_deserializeAndCopyContentConfig(value, a2);
      if (v13)
      {
        v14 = v13;
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(v10, 0, v11);
          if (!Mutable)
          {
            downloadConfig_deserializeAuxContentConfigsGuts_cold_1(v14, &v16);
            return v16;
          }
        }

        CFArrayAppendValue(Mutable, v14);
        CFRelease(v14);
      }

      if (v7 == ++v9)
      {
        goto LABEL_10;
      }
    }
  }

  Mutable = 0;
LABEL_10:
  result = 0;
  *a3 = Mutable;
  return result;
}

void dwConf_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[15];
  if (v8)
  {

    CFRelease(v8);
  }
}

void OUTLINED_FUNCTION_4_30(uint64_t a1, const char *a2)
{

  xpc_dictionary_set_value(v2, a2, v3);
}

uint64_t OUTLINED_FUNCTION_5_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t FigVideoCompositorCreatevImage(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  FigVideoCompositorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    return v4;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    value = 0;
    v11 = *"v024f024ARGB ";
    qmemcpy(v12, "024x02fx024p02fpr46l", sizeof(v12));
    DesiredSourcePixelBufferAttributes = FigVideoCompositorCreateDesiredSourcePixelBufferAttributes(&v11, 9, &value);
    if (!DesiredSourcePixelBufferAttributes)
    {
      CFDictionarySetValue(v6, @"SourcePixelBufferAttributes", value);
    }

    if (value)
    {
      CFRelease(value);
    }

    if (DesiredSourcePixelBufferAttributes)
    {
      CFRelease(v6);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = v6;
      *(DerivedStorage + 56) = 0u;
      *(DerivedStorage + 72) = 0u;
      *(DerivedStorage + 88) = 0u;
      *(DerivedStorage + 104) = 0u;
      *(DerivedStorage + 120) = 0u;
      *(DerivedStorage + 136) = 0u;
      *(DerivedStorage + 152) = 0u;
      *(DerivedStorage + 168) = 0u;
      *a3 = 0;
    }
  }

  else
  {
    FigVideoCompositorCreatevImage_cold_1(&v11);
    return v11;
  }

  return DesiredSourcePixelBufferAttributes;
}

void vivc_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  via_cleanupVImageAdaptor(DerivedStorage + 56);
  via_cleanupVImageAdaptor(DerivedStorage + 120);
  v4 = *(DerivedStorage + 48);

  free(v4);
}

__CFString *vivc_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositor_vImage %p>\n", a1);
  CFDictionaryApplyFunction(*DerivedStorage, vivc_appendDebugDescriptionOfProperty, Mutable);
  return Mutable;
}

uint64_t vivc_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    vivc_CopyProperty_cold_1(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      UInt32 = FigCFNumberCreateUInt32();
    }

    else
    {
      if (CFEqual(a2, @"SupportsSpatialSourceBuffers"))
      {
        result = 0;
        v9 = MEMORY[0x1E695E4C0];
        goto LABEL_4;
      }

      Value = CFDictionaryGetValue(*v7, a2);
      if (!Value)
      {
        v10 = 0;
        goto LABEL_8;
      }

      UInt32 = CFRetain(Value);
    }

    v10 = UInt32;
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  result = 0;
  v9 = MEMORY[0x1E695E4D0];
LABEL_4:
  v10 = *v9;
LABEL_9:
  *a4 = v10;
  return result;
}

uint64_t vivc_SetProperty(const void *a1, const void *a2, const void *a3)
{
  v13[5] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    vivc_SetProperty_cold_2(v13);
    return LODWORD(v13[0]);
  }

  if (!a3)
  {
    vivc_SetProperty_cold_1(v13);
    return LODWORD(v13[0]);
  }

  v7 = DerivedStorage;
  v8 = 0;
  v13[0] = @"RenderDimensions";
  v13[1] = @"RenderPixelAspectRatio";
  v13[2] = @"RenderEdgeProcessingPixels";
  v13[3] = @"DestinationPixelBufferDesiredAttributes";
  v13[4] = @"RenderScale";
  while (!FigCFEqual())
  {
    v8 += 8;
    if (v8 == 40)
    {
      goto LABEL_12;
    }
  }

  CFGetAllocator(a1);
  vivc_CopyProperty(a1, a2, v9, &cf);
  if (!FigCFEqual())
  {
    v10 = *(v7 + 8);
    if (v10)
    {
      CFRelease(v10);
      *(v7 + 8) = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_12:
  CFDictionarySetValue(*v7, a2, a3);
  return 0;
}

uint64_t vivc_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 32) = a3;
  return 0;
}

double vifa_vImageFill(_DWORD *a1, vImage_Buffer *dest, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      if (*a1 == 16)
      {
        v6 = 0;
        v8[0] = 0;
        do
        {
          *(v8 + a1[v6 + 1]) = (*(a3 + v6 * 4) * 65535.0);
          ++v6;
        }

        while (v6 != 4);
        vImageBufferFill_ARGB16U(dest, v8, 0);
      }

      else if (*a1 == 8)
      {
        v4 = 0;
        LODWORD(v8[0]) = 0;
        do
        {
          *(v8 + a1[v4 + 1]) = (*(a3 + v4 * 4) * 255.0);
          ++v4;
        }

        while (v4 != 4);
        vImageBufferFill_ARGB8888(dest, v8, 0);
      }

      else
      {
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951795, "<<<< vImageVideoCompositor >>>>", 125, v3);
      }
    }

    else
    {
      vifa_vImageFill_cold_1(v8);
    }
  }

  else
  {
    vifa_vImageFill_cold_2(v8);
  }

  return result;
}

double vifa_vImageAffineWarpCG(_DWORD *a1, vImage_Buffer *src, vImage_Buffer *dest, void *tempBuffer, float64x2_t *a5, uint64_t a6, uint64_t flags)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a6)
    {
      *&v12.a = vcvt_hight_f32_f64(vcvt_f32_f64(*a5), a5[1]);
      *&v12.tx = vcvt_f32_f64(a5[2]);
      if (*a1 == 16)
      {
        v10 = 0;
        *backColor = 0;
        do
        {
          *&backColor[2 * a1[v10 + 1]] = (*(a6 + v10 * 4) * 65535.0);
          ++v10;
        }

        while (v10 != 4);
        vImageAffineWarp_ARGB16U(src, dest, tempBuffer, &v12, backColor, flags);
      }

      else if (*a1 == 8)
      {
        v8 = 0;
        *backColor = 0;
        do
        {
          backColor[a1[v8 + 1]] = (*(a6 + v8 * 4) * 255.0);
          ++v8;
        }

        while (v8 != 4);
        vImageAffineWarp_ARGB8888(src, dest, tempBuffer, &v12, backColor, flags);
      }

      else
      {
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951795, "<<<< vImageVideoCompositor >>>>", 158, v7);
      }
    }

    else
    {
      vifa_vImageAffineWarpCG_cold_1(backColor);
    }
  }

  else
  {
    vifa_vImageAffineWarpCG_cold_2(backColor);
  }

  return result;
}

CGAffineTransform *OUTLINED_FUNCTION_2_39(__n128 a1)
{
  *&STACK[0x230] = a1;

  return CGAffineTransformConcat(&STACK[0x270], &STACK[0x240], &STACK[0x210]);
}

__n128 OUTLINED_FUNCTION_3_28()
{
  result = *&STACK[0x270];
  v1 = *&STACK[0x280];
  v2 = *&STACK[0x290];
  *&STACK[0x240] = *&STACK[0x270];
  *&STACK[0x250] = v1;
  *&STACK[0x260] = v2;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderConfigureMediaSelectionsForAlternate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = 0;
  dispatch_sync_f(*DerivedStorage, v8, metadw_configureMediaSelectionsForAlternateDispatch);
  return v9;
}

void metadw_configureMediaSelectionsForAlternateDispatch(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    metadw_configureMediaSelectionsForAlternateDispatch_cold_1(&v9);
LABEL_16:
    v7 = v9;
    goto LABEL_9;
  }

  if (*(DerivedStorage + 256))
  {
    metadw_configureMediaSelectionsForAlternateDispatch_cold_2(&v9);
    goto LABEL_16;
  }

  if (!v2)
  {
    metadw_configureMediaSelectionsForAlternateDispatch_cold_5(&v9);
    goto LABEL_16;
  }

  if (!v3)
  {
    metadw_configureMediaSelectionsForAlternateDispatch_cold_4(&v9);
    goto LABEL_16;
  }

  v5 = FigMediaSelectionArrayCopyDescription(*(DerivedStorage + 8), v3);
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0xE00401043B4FBuLL);
  if (v6)
  {
    v6[2] = CFRetain(v2);
    v6[3] = CFRetain(v3);
    goto LABEL_7;
  }

  if (metadw_configureMediaSelectionsForAlternateDispatch_cold_3(&v9))
  {
LABEL_7:
    v7 = 0;
    *v6 = 0;
    v8 = *(DerivedStorage + 296);
    v6[1] = v8;
    *v8 = v6;
    *(DerivedStorage + 296) = v6;
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = v9;
  if (v5)
  {
LABEL_8:
    CFRelease(v5);
  }

LABEL_9:
  if (v7)
  {
    metadw_transitionToTerminalStateWithOSStatus(*a1, v7);
  }

  *(a1 + 6) = v7;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, NSObject *a6, void *a7, __CFString **a8)
{
  v35 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || (v13 = CFGetTypeID(a2), v13 != FigAssetGetTypeID()))
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_9(v34);
    return v34[0];
  }

  if (a3)
  {
    v14 = CFGetTypeID(a3);
    if (v14 != CFDictionaryGetTypeID())
    {
      FigStreamingAssetMetadataDownloaderCreate_cold_1(v34);
      return v34[0];
    }
  }

  if (!a8)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_8(v34);
    return v34[0];
  }

  FigAssetDownloaderGetClassID();
  v15 = CMDerivedObjectCreate();
  if (v15)
  {
    return v15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v17 = CFRetain(a1);
  }

  else
  {
    v17 = 0;
  }

  *(DerivedStorage + 8) = v17;
  *(DerivedStorage + 16) = CFRetain(a2);
  if (FigIsItOKToLogURLs())
  {
    v18 = FPSupport_GetAssetDoNotLogURLs(a2) == 0;
  }

  else
  {
    v18 = 0;
  }

  *(DerivedStorage + 218) = v18;
  if (a5)
  {
    if (a6)
    {
      if (a7)
      {
        dispatch_retain(a6);
        *(DerivedStorage + 136) = a6;
        __copy_assignment_8_8_t0w8_pa0_62591_8_pa0_48202_16_pa0_13082_24_pa0_11046_32_pa0_49729_40_pa0_62126_48_pa0_6100_56_pa0_11999_64_pa0_10804_72_pa0_24756_80_pa0_9655_88((DerivedStorage + 40), a7);
        v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        *(DerivedStorage + 32) = v19;
        if (!v19)
        {
          FigStreamingAssetMetadataDownloaderCreate_cold_7(v34);
          return v34[0];
        }
      }
    }
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"AssetDownloaderCreateOption_DebugIdentifier");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 152) = Value;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v21 = a4;
    if (!a4)
    {
      FigCFDictionaryGetBooleanIfPresent();
      goto LABEL_24;
    }
  }

  else
  {
    v21 = a4;
    if (!a4)
    {
      goto LABEL_24;
    }
  }

  *(DerivedStorage + 160) = FigStreamingAssetDownloadConfigGetDownloadsInterstitialAssets(v21);
LABEL_24:
  v22 = dispatch_queue_create("com.apple.coremedia.streamingassetmetadatadownloader.state", 0);
  *DerivedStorage = v22;
  if (!v22)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_6(v34);
    return v34[0];
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, 0, 0);
  *(DerivedStorage + 336) = Mutable;
  if (!Mutable)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_5(v34);
    return v34[0];
  }

  v24 = CFDictionaryCreateMutable(a1, 0, 0, 0);
  *(DerivedStorage + 344) = v24;
  if (!v24)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_4(v34);
    return v34[0];
  }

  v25 = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
  *(DerivedStorage + 328) = v25;
  if (!v25)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_3(v34);
    return v34[0];
  }

  v26 = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
  *(DerivedStorage + 320) = v26;
  if (!v26)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_2(v34);
    return v34[0];
  }

  *(DerivedStorage + 288) = 0;
  *(DerivedStorage + 296) = DerivedStorage + 288;
  *(DerivedStorage + 304) = 0;
  *(DerivedStorage + 312) = DerivedStorage + 304;
  v15 = FigRetainProxyCreate();
  if (v15)
  {
    return v15;
  }

  v27 = FigCFCopyCompactDescription();
  if (dword_1EAF16DD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v29 = 0;
  *a8 = 0;
  if (v27)
  {
    CFRelease(v27);
  }

  return v29;
}

void metadw_transitionToTerminalStateWithOSStatus(const void *a1, uint64_t a2)
{
  cf = 0;
  FigCreateErrorForOSStatus(a2, &cf);
  metadw_transitionToTerminalState(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void metadw_cancelResourceRequestForMetadataItems(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  for (i = *(DerivedStorage + 304); i; i = *i)
  {
    if (*(i + 16) != 5)
    {
      shouldRequestBeSentOverHTTP = metadw_shouldRequestBeSentOverHTTP(a1, i);
      CMBaseObjectGetDerivedStorage();
      if (shouldRequestBeSentOverHTTP)
      {
        if (*(i + 88))
        {
          if (dword_1EAF16DD8)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          metadw_clearHTTPRequestState(a1, i);
        }
      }

      else if (*(i + 104))
      {
        if (dword_1EAF16DD8)
        {
          v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        metadw_clearCustomURLRequestState(a1, i);
      }
    }
  }

  CFDictionaryRemoveAllValues(*(DerivedStorage + 336));
  CFDictionaryRemoveAllValues(*(DerivedStorage + 344));
  *(DerivedStorage + 352) = 0;
  *(DerivedStorage + 360) = 0;
}

BOOL metadw_shouldRequestBeSentOverHTTP(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCFHTTPIsHTTPBasedURL(*(a2 + 24));
  if (result)
  {
    return *(DerivedStorage + 216) == 0;
  }

  return result;
}

void metadw_clearHTTPRequestState(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 88);
  if (v4)
  {
    v5 = DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v6(v4);
    }

    v7 = *(a2 + 88);
    if (v7)
    {
      CFRelease(v7);
      *(a2 + 88) = 0;
    }

    *(a2 + 96) = 0;
    v8 = *(v5 + 336);

    CFDictionaryRemoveValue(v8, 0);
  }
}

void metadw_clearCustomURLRequestState(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 104);
  if (v4)
  {
    v5 = DerivedStorage;
    v6 = *(DerivedStorage + 184);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v7)
    {
      v7(v6, v4);
    }

    *(a2 + 104) = 0;
    v8 = *(v5 + 344);

    CFDictionaryRemoveValue(v8, 0);
  }
}

void metadw_sendDownloadFailedCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (*(v3 + 240))
  {
    metadw_sendDownloadFailedCallbackOnCallbackQueue_cold_1(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, SHIDWORD(v15), vars0);
  }

  else
  {
    v11 = *(DerivedStorage + 56);
    if (v11)
    {
      v11(a1[1], *a1, a1[2]);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v12 = a1[2];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[1];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

uint64_t metadw_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4[2] = 0;
  v5 = 0;
  v4[0] = a1;
  v4[1] = 0;
  dispatch_sync_f(*DerivedStorage, v4, metadw_invalidateDispatch);
  return v5;
}

void metadw_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  metadw_invalidateOnQueue(a1);
  v3 = *(DerivedStorage + 152);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 152) = 0;
  }

  v4 = *(DerivedStorage + 400);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 400) = 0;
  }

  v5 = *(DerivedStorage + 232);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 232) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t metadw_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  context[0] = a1;
  context[1] = a2;
  v12 = a3;
  v13 = 0;
  dispatch_sync_f(*DerivedStorage, context, metadw_copyPropertyDispatch);
  result = v13;
  if (!v13)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t metadw_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[3] = 0;
  v9 = 0;
  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  dispatch_sync_f(*DerivedStorage, context, metadw_setPropertyDispatch);
  return v9;
}

const __CFArray *metadw_copyPropertyDispatch(void *a1)
{
  v2 = a1[3];
  v3 = a1[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    metadw_copyPropertyDispatch_cold_1(&v7);
    result = 0;
    v6 = v7;
    goto LABEL_10;
  }

  if (!CFEqual(@"AssetDownloaderProperty_InterstitialURLs", v3))
  {
    result = 0;
    v6 = -12784;
    goto LABEL_10;
  }

  result = *(DerivedStorage + 400);
  if (!result)
  {
    goto LABEL_9;
  }

  if (CFArrayGetCount(result) < 1)
  {
    result = 0;
    goto LABEL_9;
  }

  result = CFArrayCreateCopy(v2, *(DerivedStorage + 400));
  if (result)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  metadw_copyPropertyDispatch_cold_2(&v8);
  result = 0;
  v6 = v8;
LABEL_10:
  *(a1 + 8) = v6;
  a1[2] = result;
  return result;
}

uint64_t metadw_start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x10600405C4CBD68uLL);
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    *v4 = v5;
    dispatch_async_f(*DerivedStorage, v4, metadw_startDispatch);
    return 0;
  }

  else
  {
    metadw_start_cold_1(&v7);
    return v7;
  }
}

uint64_t metadw_pause(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4[2] = 0;
  v5 = 0;
  v4[0] = a1;
  v4[1] = 0;
  dispatch_sync_f(*DerivedStorage, v4, metadw_pauseDispatch);
  return v5;
}

uint64_t metadw_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4[2] = 0;
  v5 = 0;
  v4[0] = a1;
  v4[1] = 0;
  dispatch_sync_f(*DerivedStorage, v4, metadw_stopDispatch);
  return v5;
}

uint64_t metadw_createMetadataDownloadItem(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, void *a8)
{
  v16 = malloc_type_calloc(1uLL, 0x98uLL, 0x10E0040DF620F7DuLL);
  if (v16)
  {
    v17 = v16;
    v16[5] = a1;
    *(v16 + 4) = a2;
    if (a3)
    {
      v18 = CFRetain(a3);
    }

    else
    {
      v18 = 0;
    }

    v17[3] = v18;
    if (a4)
    {
      v19 = CFRetain(a4);
    }

    else
    {
      v19 = 0;
    }

    v17[4] = v19;
    if (a5)
    {
      v20 = CFRetain(a5);
    }

    else
    {
      v20 = 0;
    }

    v17[6] = v20;
    if (a6)
    {
      v21 = CFRetain(a6);
    }

    else
    {
      v21 = 0;
    }

    v17[7] = v21;
    if (a7)
    {
      v22 = CFRetain(a7);
    }

    else
    {
      v22 = 0;
    }

    result = 0;
    v17[8] = v22;
    *a8 = v17;
  }

  else
  {
    metadw_createMetadataDownloadItem_cold_1(&v24);
    return v24;
  }

  return result;
}

uint64_t metadw_createCacheForStream(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  if (*(DerivedStorage + 217))
  {
    PeakBitRate = 0;
  }

  else
  {
    PeakBitRate = FigAlternateGetPeakBitRate(*(*(a2 + 40) + 16));
  }

  v7 = FigCFHTTPCreateURLString(*(a2 + 32));
  if (!v7)
  {
    metadw_createCacheForStream_cold_1(v16);
    return v16[0];
  }

  v8 = v7;
  v9 = *(a2 + 16);
  v10 = (v9 - 2);
  if (v10 >= 3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16[1]);
  }

  else
  {
    MediaStream = FigStreamingCacheCreateMediaStream(*(DerivedStorage + 24), v10, v7, *(a2 + 56), PeakBitRate, v9 == 4, &v14);
    if (!MediaStream)
    {
      v12 = FigStreamingCacheMediaStreamSetPersistent(*(DerivedStorage + 24), v14, *MEMORY[0x1E695E4D0]);
      if (!v12)
      {
        *a3 = v14;
      }

      goto LABEL_11;
    }
  }

  v12 = MediaStream;
LABEL_11:
  CFRelease(v8);
  return v12;
}

uint64_t metadw_processCryptKeysFromPlaylist(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v18 = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a3); ; i = 0)
  {
    if (v7 >= i)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
    AllocatorForMedia = FigGetAllocatorForMedia();
    Identifier = FigContentKeySpecifierGetIdentifier(ValueAtIndex);
    v12 = CFURLCreateWithString(AllocatorForMedia, Identifier, 0);
    if (FigCFHTTPIsHTTPBasedURL(v12) || CFSetContainsValue(*(DerivedStorage + 328), v12))
    {
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_8:
      CFRelease(v12);
      goto LABEL_9;
    }

    ResourceRequestForMetadataItem = metadw_createMetadataDownloadItem(*(a2 + 40), 5, v12, 0, 0, 0, ValueAtIndex, &v18);
    if (ResourceRequestForMetadataItem)
    {
      break;
    }

    v14 = v18;
    ResourceRequestForMetadataItem = metadw_createResourceRequestForMetadataItem(a1, v18);
    if (ResourceRequestForMetadataItem)
    {
      break;
    }

    CFSetAddValue(*(DerivedStorage + 328), v12);
    v15 = *(DerivedStorage + 312);
    *v14 = 0;
    v14[1] = v15;
    *v15 = v14;
    *(DerivedStorage + 312) = v14;
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_9:
    ++v7;
    if (a3)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v16 = ResourceRequestForMetadataItem;
  if (v12)
  {
    CFRelease(v12);
  }

  free(v18);
  return v16;
}

void metadw_appendUniqueInterstitialURL(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFArrayContainsValue())
  {
    v4 = *(DerivedStorage + 400);

    CFArrayAppendValue(v4, a2);
  }
}

void metadw_contentKeyRequestDidFail(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ++*(DerivedStorage + 376);

  metadw_checkIfDownloadIsComplete(a1);
}

void metadw_contentKeyRequestDidUpdateContentKeyBossToNewBoss(const void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (_os_feature_enabled_impl())
  {
    if (dword_1EAF16DD8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(DerivedStorage + 384);
    *(DerivedStorage + 384) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void metadw_sendDidFinishLoadingPlaylistsCallbackCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (*(v3 + 240))
  {
    metadw_sendDidFinishLoadingPlaylistsCallbackCallbackOnCallbackQueue_cold_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, SHIDWORD(v14), vars0);
  }

  else
  {
    v11 = *(DerivedStorage + 112);
    if (v11)
    {
      v11(a1[1], *a1);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v12 = a1[1];
  if (v12)
  {
    CFRelease(v12);
  }

  free(a1);
}

void metadw_sendDownloadSucceededCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (*(v3 + 240))
  {
    metadw_sendDownloadSucceededCallbackOnCallbackQueue_cold_1(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, SHIDWORD(v15), vars0);
  }

  else
  {
    v11 = *(DerivedStorage + 48);
    if (v11)
    {
      v11(a1[1], *a1);
    }

    v12 = *(DerivedStorage + 88);
    if (v12)
    {
      v12(a1[1], *a1);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v13 = a1[1];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

uint64_t metadw_copyMetadataDownloaderFromRetainProxy(uint64_t a1, void *a2)
{
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    metadw_copyMetadataDownloaderFromRetainProxy_cold_1(&v6);
    v4 = v6;
  }

  else
  {
    Owner = FigRetainProxyGetOwner();
    if (Owner)
    {
      Owner = CFRetain(Owner);
    }

    v4 = 0;
    *a2 = Owner;
  }

  FigRetainProxyUnlockMutex();
  return v4;
}

void *OUTLINED_FUNCTION_7_15()
{

  return malloc_type_calloc(1uLL, 0x18uLL, 0xE0040D4EF70FBuLL);
}

void OUTLINED_FUNCTION_15_8()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = (*v0 + 8);
  if (!*v0)
  {
    v4 = v1;
  }

  *v4 = v2;
  *v2 = v3;
}

void OUTLINED_FUNCTION_29_5()
{
  ++*(v1 + 360);

  metadw_checkIfDownloadIsComplete(v0);
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo(int a1, unsigned int a2, unsigned int a3, unsigned int a4, const __CFData *a5, void *a6, unint64_t a7, char *a8)
{
  v31 = a8;
  v51 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  blockBufferOut = 0;
  v15 = CMBlockBufferCreateEmpty(0, 0x20u, 1u, &blockBufferOut);
  if (v15)
  {
    goto LABEL_83;
  }

  v15 = FigAtomWriterInitWithBlockBuffer();
  if (v15)
  {
    goto LABEL_83;
  }

  v16 = FigAtomWriterBeginAtom();
  if (v16)
  {
    appended = v16;
    goto LABEL_86;
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  LODWORD(v38) = 0;
  v17 = FigAtomWriterInitWithParent();
  if (v17)
  {
    goto LABEL_82;
  }

  v17 = FigAtomWriterBeginAtom();
  if (v17)
  {
    goto LABEL_82;
  }

  LODWORD(v38) = bswap32(a2);
  appended = FigAtomWriterAppendData();
  FigAtomWriterEndAtom();
  if (appended)
  {
LABEL_86:
    FigAtomWriterEndAtom();
    goto LABEL_87;
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  DWORD2(v38) = 0;
  *&v38 = 0;
  v48 = 0;
  if (EC_GetEncryptionScheme(a6, &v48))
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_1(&v49);
LABEL_93:
    appended = v49;
    goto LABEL_19;
  }

  if (!v48)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_3(&v49);
    goto LABEL_93;
  }

  if (v48 >= 4)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_2(&v49);
    goto LABEL_93;
  }

  v17 = FigAtomWriterInitWithParent();
  if (v17 || (v17 = FigAtomWriterBeginAtom(), v17))
  {
LABEL_82:
    appended = v17;
    FigAtomWriterEndAtom();
    goto LABEL_86;
  }

  if (v48 == 1)
  {
    v19 = 845374051;
  }

  else
  {
    v19 = 1935893091;
  }

  if (v48 == 3)
  {
    v20 = 1668179299;
  }

  else
  {
    v20 = v19;
  }

  LODWORD(v38) = 0;
  *(&v38 + 4) = v20 | 0x10000000000;
  appended = FigAtomWriterAppendData();
LABEL_19:
  FigAtomWriterEndAtom();
  if (appended)
  {
    goto LABEL_86;
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v37 = 0;
  if (EC_GetEncryptionScheme(a6, &v37))
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_4(&v44);
LABEL_96:
    appended = v44;
    goto LABEL_65;
  }

  if (!v37)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_15(&v44);
    goto LABEL_96;
  }

  if (v37 >= 4)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_14(&v44);
    goto LABEL_96;
  }

  v21 = FigAtomWriterInitWithParent();
  if (!v21)
  {
    v21 = FigAtomWriterBeginAtom();
    if (!v21)
    {
      if (v37 == 1)
      {
        if (a1 != 1986618469)
        {
          appended = 0;
          goto LABEL_65;
        }

        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        LODWORD(v50) = 0;
        v49 = 0;
        v22 = FigAtomWriterInitWithParent();
        if (v22)
        {
          goto LABEL_63;
        }

        v22 = FigAtomWriterBeginAtom();
        if (v22)
        {
          goto LABEL_63;
        }

        if (a3 <= 0)
        {
          hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_13(&v48);
        }

        else if ((a4 & 0x80000000) != 0)
        {
          hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_12(&v48);
        }

        else
        {
          if (a4 + a3 == 10)
          {
            LODWORD(v49) = 0;
            HIDWORD(v49) = bswap32(a3);
            LODWORD(v50) = bswap32(a4);
            goto LABEL_62;
          }

          hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_11(&v48);
        }

LABEL_81:
        appended = v48;
        goto LABEL_64;
      }

      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v49 = 0;
      v50 = 0uLL;
      if (a5)
      {
        Length = CFDataGetLength(a5);
      }

      else
      {
        Length = 0;
      }

      v43 = Length;
      v42 = 0;
      if (a3 >= 0x10)
      {
        hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_10(&v48);
        goto LABEL_81;
      }

      if (a4 >= 0x10)
      {
        hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_9(&v48);
        goto LABEL_81;
      }

      if (EC_GetEncryptionScheme(a6, &v42))
      {
        hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_5(&v48);
        goto LABEL_81;
      }

      if (!v42)
      {
        hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_8(&v48);
        goto LABEL_81;
      }

      v22 = FigAtomWriterInitWithParent();
      if (v22)
      {
        goto LABEL_63;
      }

      v22 = FigAtomWriterBeginAtom();
      if (v22)
      {
        goto LABEL_63;
      }

      LODWORD(v49) = v42 != 3;
      if (v42 != 3)
      {
        BYTE5(v49) = a4 | (16 * a3);
        HIWORD(v49) = 1;
        LOBYTE(v50) = 0;
        goto LABEL_55;
      }

      if (a4 | a3)
      {
        hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_6(&v48);
        goto LABEL_81;
      }

      *(&v49 + 5) = 256;
      if (EC_HasPlayReadyInfo(a6))
      {
        PlayReadyKeyIdentifier = EC_GetPlayReadyKeyIdentifier(a6);
        if (!PlayReadyKeyIdentifier)
        {
LABEL_80:
          hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_7(&v48);
          goto LABEL_81;
        }
      }

      else if (EC_HasWidevineInfo(a6))
      {
        PlayReadyKeyIdentifier = EC_GetWidevineKeyIdentifier(a6);
        if (!PlayReadyKeyIdentifier)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (!EC_HasLegacyConfigInfo(a6))
        {
          goto LABEL_80;
        }

        PlayReadyKeyIdentifier = EC_GetLegacyConfigKeyIdentifier(a6);
        if (!PlayReadyKeyIdentifier)
        {
          goto LABEL_80;
        }
      }

      HIBYTE(v49) = 8;
      v50 = *CFDataGetBytePtr(PlayReadyKeyIdentifier);
LABEL_55:
      appended = FigAtomWriterAppendData();
      if (appended || BYTE6(v49) != 1 || HIBYTE(v49))
      {
        goto LABEL_64;
      }

      if (Length != 8 && Length != 16)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, blockBufferOut, v33);
        goto LABEL_63;
      }

      v22 = FigAtomWriterAppendData();
      if (v22)
      {
LABEL_63:
        appended = v22;
LABEL_64:
        FigAtomWriterEndAtom();
        goto LABEL_65;
      }

      CFDataGetBytePtr(a5);
LABEL_62:
      v22 = FigAtomWriterAppendData();
      goto LABEL_63;
    }
  }

  appended = v21;
LABEL_65:
  FigAtomWriterEndAtom();
  FigAtomWriterEndAtom();
  if (appended)
  {
    goto LABEL_87;
  }

  if (!a7 || *(&v34 + 1) == a7)
  {
    goto LABEL_77;
  }

  if (*(&v35 + 1) + 8 > a7)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_19(&v44);
    appended = v44;
    goto LABEL_87;
  }

  v15 = FigAtomWriterInitWithBlockBuffer();
  if (v15)
  {
LABEL_83:
    appended = v15;
    goto LABEL_87;
  }

  v25 = a7 - *(&v34 + 1);
  v26 = a7 - *(&v34 + 1) >= 7;
  v27 = a7 - *(&v34 + 1) - 7;
  if (v27 == 0 || !v26)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_18(&v44);
LABEL_104:
    v29 = 0;
    goto LABEL_107;
  }

  if (v25 >= 0x7D1)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_17(&v44);
    goto LABEL_104;
  }

  v28 = FigAtomWriterBeginAtom();
  if (v28)
  {
    appended = v28;
    v29 = 0;
    goto LABEL_76;
  }

  v29 = malloc_type_calloc(1uLL, v27, 0x8412AC64uLL);
  if (v29)
  {
    FigAtomWriterAppendData();
    appended = 0;
    goto LABEL_76;
  }

  hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_16(&v44);
LABEL_107:
  appended = v44;
LABEL_76:
  free(v29);
  FigAtomWriterEndAtom();
  if (!appended)
  {
LABEL_77:
    appended = 0;
    *v31 = blockBufferOut;
    return appended;
  }

LABEL_87:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return appended;
}

uint64_t FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV(const opaqueCMFormatDescription *a1, int *a2, _DWORD *a3, _DWORD *a4, _OWORD *a5, void *a6)
{
  MediaType = CMFormatDescriptionGetMediaType(a1);
  cf = 0;
  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_5(&v33);
    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
  if (!Value)
  {
    FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_4(&v33);
    goto LABEL_31;
  }

  v14 = CFDictionaryGetValue(Value, @"sinf");
  if (!v14)
  {
    FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_3(&v33);
    goto LABEL_31;
  }

  v15 = v14;
  v16 = CFGetTypeID(v14);
  if (v16 != CFArrayGetTypeID())
  {
    v27 = CFGetTypeID(v15);
    if (v27 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v15);
      Length = CFDataGetLength(v15);
      v23 = FigParseHLSfMP4SecurityInfoAndCopyIV(MediaType, BytePtr, Length, a2, a3, a4, a5, &cf);
      if (v23)
      {
        v24 = cf;
        if (!cf)
        {
          return v23;
        }

        goto LABEL_20;
      }

      goto LABEL_13;
    }

    FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_1(&v33);
LABEL_31:
    v23 = v33;
    goto LABEL_13;
  }

  if (CFArrayGetCount(v15) >= 1)
  {
    v17 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, v17);
      v19 = CFGetTypeID(ValueAtIndex);
      if (v19 != CFDataGetTypeID())
      {
        break;
      }

      v20 = CFDataGetBytePtr(ValueAtIndex);
      v21 = CFDataGetLength(ValueAtIndex);
      if (!FigParseHLSfMP4SecurityInfoAndCopyIV(MediaType, v20, v21, a2, a3, a4, a5, &cf))
      {
        v23 = 0;
        goto LABEL_13;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (++v17 >= CFArrayGetCount(v15))
      {
        goto LABEL_12;
      }
    }

    FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_2(&v33);
    goto LABEL_31;
  }

LABEL_12:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, a5, cf);
  v23 = v22;
LABEL_13:
  v24 = cf;
  if (a6 && !v23)
  {
    if (cf)
    {
      v25 = CFRetain(cf);
      v24 = cf;
    }

    else
    {
      v25 = 0;
    }

    *a6 = v25;
  }

  if (v24)
  {
LABEL_20:
    CFRelease(v24);
  }

  return v23;
}

uint64_t FigWriteHLSfMP4SecurityInfoPlaceholderIncludingAtomHeader(int a1, uint64_t a2, size_t *a3, size_t a4, size_t *a5)
{
  if (a1 == 1936684398 || a1 == 1986618469)
  {
    v6 = 89;
  }

  else
  {
    v6 = 40;
  }

  v7 = v6 + 8;
  if (a3)
  {
    *a3 = v7;
  }

  if (!a5)
  {
    return 0;
  }

  if (v7 > a4)
  {
    FigWriteHLSfMP4SecurityInfoPlaceholderIncludingAtomHeader_cold_1(&v9);
    return v9;
  }

  else
  {
    *a5 = (v7 << 24) | 0x666E733400000000;
    bzero(a5 + 1, v6);
    return 0;
  }
}

uint64_t FigCreateHLSfMP4SecurityInfoPlaceholderData(int a1, uint64_t a2, __CFData **a3)
{
  if (a1 == 1936684398 || a1 == 1986618469)
  {
    v5 = 89;
  }

  else
  {
    v5 = 40;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v5);
  if (Mutable)
  {
    v7 = Mutable;
    CFDataSetLength(Mutable, v5);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    bzero(MutableBytePtr, v5);
    result = 0;
    *a3 = v7;
  }

  else
  {
    FigCreateHLSfMP4SecurityInfoPlaceholderData_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t videoMentorRegisterCFTypes()
{
  sVideoMentorFrameNodeID = _CFRuntimeRegisterClass();
  result = _CFRuntimeRegisterClass();
  sVideoMentorRefreshGroupID = result;
  return result;
}

void videoMentorDependencyStateReset(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    videoMentorDependencyStateReset_cold_1(v2, a1);
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
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1[2], i);
        CFArrayRemoveAllValues(ValueAtIndex[5]);
        CFArrayRemoveAllValues(ValueAtIndex[6]);
      }
    }

    v9 = a1[2];
    if (v9)
    {
      CFRelease(v9);
      a1[2] = 0;
    }
  }

  v10 = a1[3];
  if (v10)
  {
    CFRelease(v10);
    a1[3] = 0;
  }

  v11 = MEMORY[0x1E6960C70];
  *(a1 + 16) = 0;
  *(a1 + 36) = *v11;
  *(a1 + 52) = *(v11 + 16);
  v12 = a1[8];
  if (v12)
  {
    CFRelease(v12);
    a1[8] = 0;
  }

  v13 = a1[9];
  if (v13)
  {
    CFRelease(v13);
    a1[9] = 0;
  }

  v14 = a1[10];
  if (v14)
  {
    CFRelease(v14);
    a1[10] = 0;
  }

  *(a1 + 88) = 0;
  v15 = a1[12];
  if (v15)
  {
    CFRelease(v15);
    a1[12] = 0;
  }
}

const __CFDictionary *videoMentorGetReadPolicyAfterPrerollFromMentorReadPolicy(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"ReadPolicy");
    if (result)
    {
      v1 = result;
      if (CFEqual(result, @"Immediate"))
      {
        return 2;
      }

      else if (CFEqual(v1, @"Scheduled"))
      {
        return 0;
      }

      else
      {
        return (4 * (CFEqual(v1, @"DeferUntilMakeDataReady") != 0));
      }
    }
  }

  return result;
}

uint64_t VideoMentorSetModeToReversePlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, const __CFDictionary *a6, const void *a7, const void *a8, CFTypeRef a9)
{
  v40 = 0;
  cf = 0;
  Policy = videoMentorGetReadPolicyAfterPrerollFromMentorReadPolicy(a6);
  PolicyFromPrerollPolicy = audioMentorGetInitialReadPolicyFromPrerollPolicy(a6, Policy);
  v36 = audioMentorGetModeChangePolicy(a6);
  IsCursorAccuracyExact = videoMentorIsCursorAccuracyExact(a6);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v42 = 0;
  FigCFDictionaryGetInt32IfPresent();
  if (a6)
  {
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetFloat32IfPresent();
    FigCFDictionaryGetFloat32IfPresent();
  }

  if (a2)
  {
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v17)
    {
      v18 = v17(a2, &cf);
      if (!v18)
      {
        goto LABEL_6;
      }

      v31 = v18;
    }

    else
    {
      v31 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v31, "<<<< VideoMentor >>>>", 9975, v9);
    goto LABEL_36;
  }

LABEL_6:
  if (a4)
  {
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v19)
    {
      v20 = v19(a4, &v40);
      if (!v20)
      {
        goto LABEL_9;
      }

      v33 = v20;
    }

    else
    {
      v33 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v33, "<<<< VideoMentor >>>>", 9979, v9);
LABEL_36:
    v30 = v32;
    goto LABEL_37;
  }

LABEL_9:
  FigSimpleMutexLock();
  if (!*a1)
  {
    v21 = *(a1 + 168);
    v22 = cf;
    *(a1 + 168) = cf;
    if (v22)
    {
      CFRetain(v22);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    v23 = *(a3 + 16);
    *(a1 + 176) = *a3;
    v24 = *(a1 + 200);
    v25 = v40;
    *(a1 + 192) = v23;
    *(a1 + 200) = v25;
    if (v25)
    {
      CFRetain(v25);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    v26 = *a5;
    *(a1 + 224) = *(a5 + 2);
    *(a1 + 208) = v26;
    *(a1 + 232) = -1;
    *(a1 + 236) = -1;
    *(a1 + 240) = PolicyFromPrerollPolicy;
    *(a1 + 244) = v36;
    *(a1 + 248) = 0;
    *(a1 + 252) = 0;
    *(a1 + 256) = 1065353216;
    *(a1 + 372) = IsCursorAccuracyExact;
    *(a1 + 373) = 1;
    *(a1 + 374) = 0;
    *(a1 + 452) = 0;
    v27 = *(a1 + 464);
    *(a1 + 464) = a7;
    if (a7)
    {
      CFRetain(a7);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    v28 = *(a1 + 472);
    *(a1 + 472) = a8;
    if (a8)
    {
      CFRetain(a8);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    v29 = *(a1 + 480);
    *(a1 + 480) = a9;
    if (a9)
    {
      CFRetain(a9);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    *(a1 + 112) = 3;
    *(a1 + 116) = 1;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  v30 = 0;
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  return v30;
}

uint64_t VideoMentorSetModeToEmptyEdit(uint64_t a1, const void *a2, const __CFDictionary *a3, const void *a4, const void *a5)
{
  PolicyFromPrerollPolicy = audioMentorGetInitialReadPolicyFromPrerollPolicy(a3, 0);
  v11 = audioMentorGetModeChangePolicy(a3);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigSimpleMutexLock();
  if (!*a1)
  {
    *(a1 + 240) = PolicyFromPrerollPolicy;
    *(a1 + 244) = v11;
    *(a1 + 374) = 0;
    *(a1 + 452) = 0;
    v12 = *(a1 + 456);
    *(a1 + 456) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 472);
    *(a1 + 472) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a1 + 480);
    *(a1 + 480) = a5;
    if (a5)
    {
      CFRetain(a5);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    *(a1 + 112) = 4;
    *(a1 + 116) = 1;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  return 0;
}

double VideoMentorSetProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    VideoMentorSetProperty_cold_2(&v13);
    return result;
  }

  if (*a1)
  {
    VideoMentorSetProperty_cold_1(&v13);
    return result;
  }

  if (FigCFEqual())
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFDictionaryGetTypeID())
      {
        FigSimpleMutexLock();
        CMTimeMakeFromDictionary(&v13, a3);
        *(a1 + 272) = v13;
LABEL_23:
        FigSimpleMutexUnlock();
      }
    }
  }

  else if (FigCFEqual())
  {
    if (a3)
    {
      v8 = CFGetTypeID(a3);
      if (v8 == CFDictionaryGetTypeID())
      {
        FigSimpleMutexLock();
        CMTimeMakeFromDictionary(&v13, a3);
        *(a1 + 296) = v13;
        goto LABEL_23;
      }
    }
  }

  else if (FigCFEqual())
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFDictionaryGetTypeID())
      {
        FigSimpleMutexLock();
        CMTimeMakeFromDictionary(&v13, a3);
        *(a1 + 320) = v13;
        goto LABEL_23;
      }
    }
  }

  else if (FigCFEqual())
  {
    if (a3)
    {
      v10 = CFGetTypeID(a3);
      if (v10 == CFDictionaryGetTypeID())
      {
        FigSimpleMutexLock();
        CMTimeMakeFromDictionary(&v13, a3);
        *(a1 + 344) = v13;
        goto LABEL_23;
      }
    }
  }

  else if (FigCFEqual())
  {
    if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 == CFNumberGetTypeID())
      {
        FigSimpleMutexLock();
        CFNumberGetValue(a3, kCFNumberFloat32Type, (a1 + 368));
        goto LABEL_23;
      }
    }
  }

  else
  {
    v12 = qword_1EAF16DF0;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294954512, "<<<< VideoMentor >>>>", 10114, v3);
  }

  return result;
}

uint64_t VideoMentorSetClientPID(_BYTE *a1, uint64_t a2)
{
  if (a1 && !*a1)
  {
    return FigThreadSetProperty();
  }

  else
  {
    return 4294954511;
  }
}

uint64_t VideoMentorSetThrottleForBackground(_BYTE *a1, int a2)
{
  if (!a1 || *a1)
  {
    return 4294954511;
  }

  valuePtr = 16 * (a2 != 0);
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v3 = FigThreadSetProperty();
  if (a1[41])
  {
    FigSampleCursorServiceGetFigBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v8(v7, @"PriorityOfConsistentThreadHandlingSampleCursors", v5);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}

uint64_t VideoMentorCopyPerformanceDictionary(unsigned int *a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    result = 0;
    *a2 = v4;
  }

  else
  {
    VideoMentorCopyPerformanceDictionary_cold_1(&v6);
    return v6;
  }

  return result;
}

__CFString *videoMentorDebugCopyKnownNodes(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *(a1 + 8);
  Count = CFDictionaryGetCount(v3);
  CFStringAppendFormat(Mutable, 0, @"Known nodes: %p (%d)\n", v3, Count);
  CFDictionaryApplyFunction(*(a1 + 8), videoMentorDebugCopyKnownNodesApplier, Mutable);
  return Mutable;
}

void videoMentorDebugCopyKnownNodesApplier(uint64_t a1, uint64_t a2, __CFString *a3)
{
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(a3, 0, @"\t%@\n", v4);

  CFRelease(v4);
}

void videoMentorDebugDumpGraphNode(FILE *a1, __CFSet *a2, const __CFDictionary *a3, uint64_t a4)
{
  if (!CFSetContainsValue(a2, a4))
  {
    CFSetSetValue(a2, a4);
    time.value = 0;
    asprintf(&time, "node_%p", a4);
    value = time.value;
    time = *(a4 + 104);
    Seconds = CMTimeGetSeconds(&time);
    time = *(a4 + 128);
    v10 = CMTimeGetSeconds(&time);
    fprintf(a1, "%s [ label = PTS %1.6f OPTS %1.6f\\n", value, Seconds, v10);
    v11 = " Sync";
    v12 = "";
    if (!*(a4 + 158))
    {
      v11 = "";
    }

    if (*(a4 + 159))
    {
      v13 = " Partial sync";
    }

    else
    {
      v13 = "";
    }

    v14 = "  Open GOP";
    if (!*(a4 + 160))
    {
      v14 = "";
    }

    if (*(a4 + 161))
    {
      v15 = " droppable";
    }

    else
    {
      v15 = "";
    }

    if (*(a4 + 162))
    {
      v16 = " leading";
    }

    else
    {
      v16 = "";
    }

    if (*(a4 + 157))
    {
      v17 = " STSA";
    }

    else
    {
      v17 = "";
    }

    if (*(a4 + 156))
    {
      v12 = " TSA";
    }

    fprintf(a1, "T%d%s%s%s%s%s%s%s", *(a4 + 152), v11, v13, v14, v15, v16, v17, v12);
    v18 = *(a4 + 56);
    if (v18)
    {
      time = *(v18 + 16);
      v19 = CMTimeGetSeconds(&time);
      fprintf(a1, " RG%1.6f", v19);
      v20 = *(a4 + 56);
      if (*(v20 + 58))
      {
        fwrite("(catchup)", 9uLL, 1uLL, a1);
        v20 = *(a4 + 56);
      }

      if (!*(v20 + 56))
      {
        fwrite("(undetermined)", 0xEuLL, 1uLL, a1);
      }
    }

    if ((*(a4 + 92) & 0x1D) == 1)
    {
      time = *(a4 + 80);
      v21 = CMTimeGetSeconds(&time);
      fprintf(a1, "\\nadjusted to %1.6f", v21);
    }

    fprintf(a1, "\\nnode %p", a4);
    v22 = *(a4 + 72);
    if (v22)
    {
      if (v22 == 1)
      {
        v23 = "NO";
      }

      else if (v22 == 2)
      {
        v23 = "YES";
      }

      else
      {
        v23 = "??";
      }
    }

    else
    {
      v23 = "UNK";
    }

    v24 = *(a4 + 68);
    if (v24)
    {
      if (v24 == 1)
      {
        v25 = "NO";
      }

      else if (v24 == 2)
      {
        v25 = "YES";
      }

      else
      {
        v25 = "??";
      }
    }

    else
    {
      v25 = "UNK";
    }

    v26 = *(a4 + 76);
    v27 = "undetermined";
    if (v26 == 2)
    {
      v27 = "selected";
    }

    if (v26 == 1)
    {
      v28 = "dropped";
    }

    else
    {
      v28 = v27;
    }

    fprintf(a1, "\\nR: %s L: %s S: %s", v23, v25, v28);
    fputc(34, a1);
    v29 = *(a4 + 56);
    if (v29)
    {
      v30 = CFDictionaryGetValue(a3, v29);
      if (!v30)
      {
        v30 = &videoMentorDebugDumpGraphNode_colorStrings[3 * videoMentorDebugDumpGraphNode_nextColorIndex];
        videoMentorDebugDumpGraphNode_nextColorIndex = (videoMentorDebugDumpGraphNode_nextColorIndex + 1) & 3;
        CFDictionarySetValue(a3, *(a4 + 56), v30);
      }

      v31 = *(a4 + 76);
      v32 = 1;
      if (v31 != 2)
      {
        v32 = 2;
      }

      if (v31)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      fprintf(a1, ", color = %s", v30[v33]);
    }

    fwrite("]\n", 2uLL, 1uLL, a1);
    Count = CFArrayGetCount(*(a4 + 24));
    if (Count >= 1)
    {
      v35 = Count;
      for (i = 0; i != v35; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a4 + 24), i);
        time.value = 0;
        asprintf(&time, "node_%p", ValueAtIndex);
        v38 = time.value;
        fprintf(a1, "%s -> %s\n", value, time.value);
        free(v38);
      }
    }

    if (*(a4 + 64))
    {
      fprintf(a1, "%s -> UnknownDepFor%s\n", value, value);
    }

    v39 = CFArrayGetCount(*(a4 + 40));
    if (v39 >= 1)
    {
      v40 = v39;
      for (j = 0; j != v40; ++j)
      {
        v42 = CFArrayGetValueAtIndex(*(a4 + 40), j);
        time.value = 0;
        asprintf(&time, "node_%p", v42);
        v43 = time.value;
        fprintf(a1, "%s -> %s [style = dotted]\n", value, time.value);
        free(v43);
      }
    }

    v44 = CFArrayGetCount(*(a4 + 24));
    if (v44 >= 1)
    {
      v45 = v44;
      for (k = 0; k != v45; ++k)
      {
        v47 = CFArrayGetValueAtIndex(*(a4 + 24), k);
        videoMentorDebugDumpGraphNode(a1, a2, a3, v47);
      }
    }

    v48 = CFArrayGetCount(*(a4 + 40));
    if (v48 >= 1)
    {
      v49 = v48;
      for (m = 0; m != v49; ++m)
      {
        v51 = CFArrayGetValueAtIndex(*(a4 + 40), m);
        videoMentorDebugDumpGraphNode(a1, a2, a3, v51);
      }
    }

    free(value);
  }
}

double videoMentorFrameNodeInit(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void videoMentorFrameNodeFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[7];
  if (v7)
  {

    CFRelease(v7);
  }
}

__CFString *videoMentorFrameNodeCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFCopyDescription(*(a1 + 16));
  time = *(a1 + 104);
  Seconds = CMTimeGetSeconds(&time);
  time = *(a1 + 128);
  v6 = CMTimeGetSeconds(&time);
  v7 = *(a1 + 92);
  v8 = *(a1 + 24);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
  }

  else
  {
    Count = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = CFArrayGetCount(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = CFArrayGetCount(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = CFArrayGetCount(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    time = *(v16 + 16);
    v17 = CMTimeGetSeconds(&time);
  }

  else
  {
    v17 = NAN;
  }

  v18 = *(a1 + 68);
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = "NO";
    }

    else if (v18 == 2)
    {
      v19 = "YES";
    }

    else
    {
      v19 = "??";
    }
  }

  else
  {
    v19 = "UNK";
  }

  v20 = *(a1 + 72);
  if (v20)
  {
    if (v20 == 1)
    {
      v21 = "NO";
    }

    else if (v20 == 2)
    {
      v21 = "YES";
    }

    else
    {
      v21 = "??";
    }
  }

  else
  {
    v21 = "UNK";
  }

  v22 = *(a1 + 76);
  v23 = "undetermined";
  if (v22 == 2)
  {
    v23 = "selected";
  }

  if (v22 == 1)
  {
    v24 = "dropped";
  }

  else
  {
    v24 = v23;
  }

  if (*(a1 + 64))
  {
    v25 = ", hasUnknownDependents";
  }

  else
  {
    v25 = "";
  }

  v26 = "(with adjustment)";
  if ((v7 & 1) == 0)
  {
    v26 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<VideoMentorFrameNode: %p, sampleCursor: %@ %1.6f/%1.6f%s, %d dependents (%d dropped), %d parents (%d dropped), refreshGroup: %p (%1.6f)%s, isLeaf: %s, isRoot: %s, state: %s>", a1, v4, *&Seconds, *&v6, v26, Count, v11, v13, v15, v16, *&v17, v25, v19, v21, v24);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

double refreshGroupInit(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void refreshGroupFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *refreshGroupCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = FigCFCopyCompactDescription();
  time = *(a1 + 16);
  Seconds = CMTimeGetSeconds(&time);
  if (*(a1 + 58))
  {
    v6 = "(catchup)";
  }

  else
  {
    v6 = "";
  }

  Count = CFArrayGetCount(*(a1 + 40));
  if (*(a1 + 56))
  {
    v8 = ", groupIsProcessed";
  }

  else
  {
    v8 = "";
  }

  if (*(a1 + 57))
  {
    v9 = ", commonParentNodesHaveBeenSelected";
  }

  else
  {
    v9 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<VideoMentorRefreshGroup: %p targetOPTS: %1.6f%s, %d nodes%s%s>", a1, *&Seconds, v6, Count, v8, v9);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

void videoMentorThreadReversePlayback(uint64_t a1, const void *a2, CMTime *a3, const void *a4, CMTime *a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, CFArrayRef *a14, const void *a15, CFTypeRef cf)
{
  v263 = *MEMORY[0x1E69E9840];
  v248 = a2;
  v247 = a4;
  v246 = 0;
  v245 = 0;
  v244 = 0;
  v243 = 0;
  v242 = 0;
  v241 = 0;
  v239 = 0;
  v226 = *MEMORY[0x1E6960C70];
  *&start.value = *MEMORY[0x1E6960C70];
  v224 = *(MEMORY[0x1E6960C70] + 16);
  start.epoch = v224;
  ++*(a1 + 932);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  *(a1 + 524) = 0;
  *(a1 + 492) = *(a1 + 488) != 0;
  *(a1 + 500) = 2;
  if (a8)
  {
    v21 = a8;
  }

  else
  {
    v21 = 2;
  }

  *(a1 + 496) = v21;
  v22 = *(a1 + 512);
  *(a1 + 512) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v23 = a9;
  if (v22)
  {
    CFRelease(v22);
  }

  Mutable = 0;
  theArray = 0;
  v230 = a15;
  *&v240.value = 0uLL;
  if (a9 == 2)
  {
    v23 = 1;
  }

  v240.epoch = 0;
  if (!a2)
  {
    memset(time1, 0, 24);
    *&time2.start.value = *&a3->value;
    time2.start.epoch = a3->epoch;
    LODWORD(v26) = videoMentorCreateCursorForPresentationTimeStamp(a1, a11, &time2.start.value, &v248);
    if (v26)
    {
      goto LABEL_77;
    }

    v53 = v248;
    v54 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v54)
    {
      v26 = v54(v53, time1);
      if (!v26)
      {
        if ((time1[0].flags & 0x1D) == 1)
        {
          time2.start = time1[0];
          lhs = *a3;
          if (CMTimeCompare(&time2.start, &lhs) || (v65 = FigSampleCursorStepInPresentationOrderAndReportStepsTaken(v248, -1, 0), !v65))
          {
            start = *a3;
            if (*a14 && CFArrayGetCount(*a14) >= 1 && !FigSampleCursorCopy(v248, &v246))
            {
              Mutable = 0;
              theArray = 0;
              rhs.value = 0;
              allocatora = *MEMORY[0x1E695E480];
              do
              {
                valuea = videoMentorGetCachedVideoFrameForCursor(a1, v246, *a14, cf);
                if (!valuea)
                {
                  break;
                }

                *&time2.start.value = v226;
                time2.start.epoch = v224;
                v95 = v246;
                v96 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (!v96 || v96(v95, &rhs) || FigSampleCursorGetPresentationTimeStamp(v246, &time2) || FigSampleCursorStepInPresentationOrderAndReportStepsTaken(v246, -1, &v239) || v239 != -1 || FigSampleCursorCopy(v246, &v244))
                {
                  break;
                }

                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
                }

                v97 = theArray;
                if (!theArray)
                {
                  v97 = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
                }

                CFArrayAppendValue(Mutable, valuea);
                theArray = v97;
                CFArrayAppendValue(v97, rhs.value);
                if (rhs.value)
                {
                  CFRelease(rhs.value);
                  rhs.value = 0;
                }

                start = time2.start;
                if (v248)
                {
                  CFRelease(v248);
                }

                v248 = v244;
                v244 = 0;
                time2.start = start;
                lhs = *a5;
              }

              while (CMTimeCompare(&time2.start, &lhs) > 0);
              if (rhs.value)
              {
                CFRelease(rhs.value);
                rhs.value = 0;
              }

              if (v246)
              {
                CFRelease(v246);
                v246 = 0;
              }

              if (v244)
              {
                CFRelease(v244);
                v244 = 0;
              }
            }

            else
            {
              Mutable = 0;
              theArray = 0;
            }

            goto LABEL_13;
          }

          LODWORD(v26) = v65;
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v65, "<<<< VideoMentor >>>>", 8419);
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v190, v191, v192);
          LODWORD(v26) = v64;
        }

LABEL_77:
        v27 = 0;
        v28 = 0;
        Mutable = 0;
        v59 = 0;
        v29 = 0;
        v30 = 0;
        v31 = MEMORY[0x1E695FF58];
        goto LABEL_83;
      }
    }

    else
    {
      v26 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8417);
    goto LABEL_77;
  }

LABEL_13:
  if (*a14)
  {
    CFRelease(*a14);
    *a14 = 0;
  }

  time1[0] = *a5;
  *&time2.start.value = *&a5->value;
  time2.start.epoch = a5->epoch;
  lhs = *a3;
  videoMentorThrottlingStateStartNewOrder(a1 + 584, &time1[0].value, &time2, &lhs, v248);
  if (v247 || (a5->flags & 0x1D) != 1)
  {
    v32 = 0;
    value = 0;
  }

  else
  {
    time1[0] = *a5;
    CursorForPresentationTimeStamp = videoMentorCreateCursorForPresentationTimeStamp(a1, a11, &time1[0].value, &v247);
    if (CursorForPresentationTimeStamp)
    {
      LODWORD(v26) = CursorForPresentationTimeStamp;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = MEMORY[0x1E695FF58];
      goto LABEL_82;
    }

    v32 = 1;
    value = 1;
  }

  if ((a3->flags & 0x1D) == 1)
  {
    goto LABEL_21;
  }

  v55 = v248;
  v56 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v56)
  {
    v26 = 4294954514;
    goto LABEL_68;
  }

  v26 = v56(v55, a3);
  if (v26)
  {
LABEL_68:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8491);
    goto LABEL_80;
  }

  if ((a3->flags & 0x1D) != 1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 8491);
    goto LABEL_137;
  }

LABEL_21:
  v33 = v247;
  if (!v247 || (a5->flags & 0x1D) == 1)
  {
    goto LABEL_23;
  }

  v58 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v58)
  {
    v26 = 4294954514;
    goto LABEL_79;
  }

  v26 = v58(v33, a5);
  if (v26)
  {
LABEL_79:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8495);
    goto LABEL_80;
  }

  if ((a5->flags & 0x1D) != 1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 8495);
    goto LABEL_137;
  }

LABEL_23:
  v34 = v248;
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v35)
  {
    v26 = 4294954514;
    goto LABEL_70;
  }

  v26 = v35(v34, &v246);
  if (v26)
  {
LABEL_70:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8503);
    goto LABEL_80;
  }

  allocator = v23;
  while (1)
  {
    v36 = v246;
    v37 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (!v37)
    {
      v26 = 4294954514;
LABEL_133:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8505);
      goto LABEL_80;
    }

    v38 = v37(v36, 1, &v239);
    if (v38)
    {
      v26 = v38;
      goto LABEL_133;
    }

    if (v239 != 1)
    {
      break;
    }

    v39 = v246;
    v40 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v40)
    {
      v26 = 4294954514;
LABEL_135:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8511);
      goto LABEL_80;
    }

    v41 = v40(v39, &v240);
    if (v41)
    {
      v26 = v41;
      goto LABEL_135;
    }

    if ((v240.flags & 0x1D) != 1)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 8511);
      goto LABEL_137;
    }

    time1[0] = v240;
    time2.start = start;
    if (CMTimeCompare(time1, &time2.start) < 0)
    {
      if (!v247 || (time1[0] = *a5, time2.start = v240, CMTimeCompare(time1, &time2.start) <= 0))
      {
        if (v244)
        {
          CFRelease(v244);
          v244 = 0;
        }

        v42 = v246;
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v43)
        {
          v26 = 4294954514;
LABEL_240:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8517);
          goto LABEL_80;
        }

        v44 = v43(v42, &v244);
        if (v44)
        {
          v26 = v44;
          goto LABEL_240;
        }
      }
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
    {
      break;
    }

    v45 = v246;
    v46 = v248;
    v47 = *(CMBaseObjectGetVTable() + 16);
    if (v47)
    {
      v48 = v47;
      if (!v46)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v48 = 0;
      if (!v46)
      {
LABEL_44:
        v49 = 0;
        goto LABEL_45;
      }
    }

    v49 = *(CMBaseObjectGetVTable() + 16);
LABEL_45:
    if (v48 == v49)
    {
      v50 = *(v48 + 80);
      if (v50)
      {
        if (v50(v45, v46, 1))
        {
          break;
        }
      }
    }

    LODWORD(v26) = -1;
    if (*(a1 + 116))
    {
      goto LABEL_80;
    }
  }

  v51 = v247;
  if (v247)
  {
    v52 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v52)
    {
      v26 = v52(v51, &v245);
      if (!v26)
      {
        while (1)
        {
          v76 = v245;
          v77 = *(*(CMBaseObjectGetVTable() + 16) + 168);
          if (!v77)
          {
            break;
          }

          v66 = v77(v76, -1, &v239);
          if (v66)
          {
            v26 = v66;
            goto LABEL_475;
          }

          if (v239 != -1)
          {
            goto LABEL_163;
          }

          v67 = v245;
          v68 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v68)
          {
            v26 = 4294954514;
            goto LABEL_477;
          }

          v69 = v68(v67, &v240);
          if (v69)
          {
            v26 = v69;
LABEL_477:
            v31 = MEMORY[0x1E695FF58];
            v30 = value;
            v59 = theArray;
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8544);
LABEL_478:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            goto LABEL_83;
          }

          if ((v240.flags & 0x1D) != 1)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 8544);
LABEL_137:
            LODWORD(v26) = v57;
LABEL_80:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            goto LABEL_81;
          }

          time1[0] = v240;
          time2.start = start;
          if (CMTimeCompare(time1, &time2.start) < 0)
          {
            time1[0] = *a5;
            time2.start = v240;
            if (CMTimeCompare(time1, &time2.start) <= 0)
            {
              if (v243)
              {
                CFRelease(v243);
                v243 = 0;
              }

              v70 = FigSampleCursorCopy(v245, &v243);
              if (v70)
              {
                LODWORD(v26) = v70;
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v70, "<<<< VideoMentor >>>>", 8549);
                goto LABEL_80;
              }
            }
          }

          if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
          {
            goto LABEL_163;
          }

          v71 = v247;
          v212 = v245;
          v72 = *(CMBaseObjectGetVTable() + 16);
          v73 = v72 ? v72 : 0;
          v74 = v71 ? *(CMBaseObjectGetVTable() + 16) : 0;
          if (v73 == v74)
          {
            v75 = *(v73 + 80);
            if (v75)
            {
              if (v75(v212, v71, 0))
              {
                goto LABEL_163;
              }
            }
          }

          LODWORD(v26) = -1;
          if (*(a1 + 116))
          {
            goto LABEL_80;
          }
        }

        v26 = 4294954514;
LABEL_475:
        v31 = MEMORY[0x1E695FF58];
        v30 = value;
        v59 = theArray;
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8538);
        goto LABEL_478;
      }
    }

    else
    {
      v26 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8535);
    goto LABEL_80;
  }

LABEL_163:
  v78 = v244;
  if (v244)
  {
    if (!a2 && v248)
    {
      CFRelease(v248);
      v78 = v244;
    }

    v248 = v78;
    v244 = 0;
  }

  v79 = v243;
  if (v243)
  {
    if (v247)
    {
      v80 = v32;
    }

    else
    {
      v80 = 0;
    }

    if (v80 == 1)
    {
      CFRelease(v247);
      v79 = v243;
    }

    v247 = v79;
    v243 = 0;
    value = 1;
  }

  videoMentorResetSavedListAndEnqueueMarker(a1);
  if (!v247)
  {
    v83 = allocator != 0;
    if (a10)
    {
      LOBYTE(v249.value) = 0;
      v82 = -1;
      goto LABEL_183;
    }

    v236 = v226;
    v237 = v224;
    v82 = -1;
    goto LABEL_242;
  }

  v81 = FigSampleCursorCompareInDecodeOrder_0(v247, v248);
  v82 = v81;
  v83 = allocator != 0;
  if (!a10)
  {
    v236 = v226;
    v237 = v224;
    if (v81 == 1)
    {
      v28 = 0;
      v29 = 0;
      v98 = Mutable;
      v99 = theArray;
LABEL_234:
      LODWORD(v26) = 0;
      Mutable = v98;
      v59 = v99;
      v31 = MEMORY[0x1E695FF58];
      v30 = value;
      goto LABEL_235;
    }

LABEL_242:
    v193 = v82;
    v198 = v83;
    v195 = 0;
    v29 = 0;
    v28 = 0;
    v100 = a1 + 320;
    v101 = (a1 + 344);
    v199 = (a1 + 560);
    v205 = *(MEMORY[0x1E6960C98] + 16);
    v206 = *MEMORY[0x1E6960C98];
    v204 = *(MEMORY[0x1E6960C98] + 32);
    while (1)
    {
      *&v234.value = v226;
      v234.epoch = v224;
      FigSimpleMutexLock();
      v260 = *v100;
      v261 = *(v100 + 8);
      v197 = *(a1 + 332);
      v196 = *(a1 + 336);
      v235 = *v101;
      FigSimpleMutexUnlock();
      v102 = v248;
      v233 = start;
      v259 = 0;
      *&time1[0].value = v206;
      *&time1[0].epoch = v205;
      *&time1[1].timescale = v204;
      v254 = 0;
      v242 = 0;
      v258 = 0;
      v257 = 0;
      v256 = 0;
      v103 = *(a1 + 536);
      if (v103)
      {
        videoMentorGetCursorPTSRange(v103, time1);
      }

      time2 = *&time1[0].value;
      lhs = start;
      CMTimeRangeContainsTime(&time2, &lhs);
      v104 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v104)
      {
        v26 = 4294954514;
LABEL_491:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 5438);
        goto LABEL_498;
      }

      v213 = v102;
      v105 = v104(v102, &v259);
      if (v105)
      {
        v26 = v105;
        goto LABEL_491;
      }

      v194 = 0;
      v211 = 0;
      v200 = 0;
      v201 = 0;
      v106 = 0;
      v107 = 3;
      for (i = 1; ; ++i)
      {
        v214 = v107;
        if (*(*(CMBaseObjectGetVTable() + 16) + 72))
        {
          v109 = v259;
          v110 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (!v110)
          {
            v26 = 4294954514;
LABEL_489:
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 5449);
            goto LABEL_498;
          }

          v111 = v110(v109, &v258 + 1, &v258, 0);
          if (v111)
          {
            v26 = v111;
            goto LABEL_489;
          }

          v112 = HIBYTE(v258);
          v113 = HIBYTE(v258) - 66;
          if (v113 > 0xE || ((1 << v113) & 0x4081) == 0)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v190, v191, v192);
            v27 = v259;
            if (!v163)
            {
              counta = 0;
              if (Mutable)
              {
                goto LABEL_360;
              }

              goto LABEL_367;
            }

LABEL_505:
            LODWORD(v26) = v163;
LABEL_81:
            v31 = MEMORY[0x1E695FF58];
            v30 = value;
LABEL_82:
            v59 = theArray;
            goto LABEL_83;
          }

          if (v214 != 3)
          {
            v137 = HIBYTE(v258) == 73;
            goto LABEL_312;
          }

          if (HIBYTE(v258) == 73)
          {
            if (v258)
            {
              if (v242)
              {
                v137 = 0;
                v136 = 1;
                goto LABEL_308;
              }

              v138 = v259;
              v139 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (!v139)
              {
                v26 = 4294954514;
LABEL_514:
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 5500);
                goto LABEL_498;
              }

              v140 = v139(v138, &v242);
              if (v140)
              {
                v26 = v140;
                goto LABEL_514;
              }

              v137 = 0;
              v112 = HIBYTE(v258);
LABEL_312:
              v136 = 1;
            }

            else
            {
              v137 = 1;
              v136 = 3;
LABEL_308:
              v112 = 73;
            }
          }

          else
          {
            v137 = 0;
            v136 = 3;
          }

          v214 = v136;
          v256 = v112 == 66;
          goto LABEL_314;
        }

        v251 = 0;
        v114 = v259;
        v115 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v115)
        {
          v26 = 4294954514;
LABEL_486:
          v31 = MEMORY[0x1E695FF58];
          v30 = value;
          v59 = theArray;
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 5513);
          goto LABEL_499;
        }

        v116 = v115(v114, &v257 + 1, &v257, &v251, &v256);
        if (v116)
        {
          v26 = v116;
          goto LABEL_486;
        }

        if (i == 1)
        {
          v106 = v251;
        }

        else if (v106 >= 1 && !v201 && v106 <= v251)
        {
          v106 = v251;
        }

        if (!HIBYTE(v257))
        {
          goto LABEL_293;
        }

        if (!videoMentorSyncFrameIsOpenGOP())
        {
          if (HIBYTE(v257))
          {
            v137 = 1;
            goto LABEL_314;
          }

LABEL_293:
          v137 = 0;
          if (v257 && v106 >= 1)
          {
            if (!v242)
            {
              v135 = FigSampleCursorCopy(v259, &v242);
              if (v135)
              {
                LODWORD(v26) = v135;
                videoMentorThreadReversePlayback_cold_1();
                goto LABEL_498;
              }
            }

            v137 = ++v200 >= v106;
            v201 = 1;
          }

          goto LABEL_314;
        }

        *&time2.start.value = v226;
        time2.start.epoch = v224;
        *&lhs.value = v226;
        lhs.epoch = v224;
        v117 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v117)
        {
          goto LABEL_465;
        }

        v118 = v117(v213, &time2);
        if (v118)
        {
LABEL_527:
          LODWORD(v26) = v118;
          goto LABEL_498;
        }

        v119 = v259;
        v120 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v120)
        {
LABEL_465:
          LODWORD(v26) = -12782;
          goto LABEL_498;
        }

        v118 = v120(v119, &lhs);
        if (v118)
        {
          goto LABEL_527;
        }

        rhs = time2.start;
        v262 = lhs;
        v121 = CMTimeCompare(&rhs, &v262);
        v137 = 0;
        if ((v121 & 0x80000000) == 0 && !v242)
        {
          rhs = lhs;
          v122 = v259;
          v123 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v123)
          {
            v26 = 4294954514;
LABEL_497:
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 5555);
            goto LABEL_498;
          }

          v207 = v106;
          v124 = i;
          v125 = v123(v122, &v242);
          if (v125)
          {
            v26 = v125;
            goto LABEL_497;
          }

          v202 = 0;
          while (1)
          {
            v262 = rhs;
            v249 = lhs;
            if (CMTimeCompare(&v262, &v249) > 0)
            {
              break;
            }

            v126 = v242;
            v127 = *(CMBaseObjectGetVTable() + 16);
            v128 = v127 ? v127 : 0;
            if (v213 && (v129 = *(CMBaseObjectGetVTable() + 16)) != 0)
            {
              v130 = v129;
            }

            else
            {
              v130 = 0;
            }

            if (v128 != v130 || !*(v128 + 32) || (*(v130 + 32))(v126, v213) != -1)
            {
              break;
            }

            v131 = v242;
            v132 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            if (!v132)
            {
              goto LABEL_465;
            }

            v118 = v132(v131, 1, &v254);
            if (v118)
            {
              goto LABEL_527;
            }

            if (v254 != 1)
            {
              break;
            }

            v133 = v242;
            v134 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (!v134)
            {
              goto LABEL_465;
            }

            v118 = v134(v133, &rhs);
            ++v202;
            if (v118)
            {
              goto LABEL_527;
            }
          }

          if (v202 <= 1 && v242)
          {
            CFRelease(v242);
            v242 = 0;
          }

          v137 = 1;
          i = v124;
          v106 = v207;
        }

LABEL_314:
        v141 = *(a1 + 528);
        if (v141)
        {
          v203 = v137;
          v208 = v106;
          count = i;
          v142 = v259;
          v143 = *(CMBaseObjectGetVTable() + 16);
          if (v143)
          {
            v144 = v143;
          }

          else
          {
            v144 = 0;
          }

          if (v142 && (v145 = *(CMBaseObjectGetVTable() + 16)) != 0)
          {
            v146 = v145;
          }

          else
          {
            v146 = 0;
          }

          if (v144 != v146 || !*(v144 + 32) || !(*(v146 + 32))(v141, v142))
          {
            v147 = *(a1 + 528);
            v148 = *(CMBaseObjectGetVTable() + 16);
            v149 = v148 ? v148 : 0;
            if (v213 && (v150 = *(CMBaseObjectGetVTable() + 16)) != 0)
            {
              v151 = v150;
            }

            else
            {
              v151 = 0;
            }

            if (v149 == v151 && *(v149 + 32) && (*(v151 + 32))(v147, v213))
            {
              v194 = 1;
            }
          }

          i = count;
          v106 = v208;
          v137 = v203;
        }

        if (v137)
        {
          goto LABEL_347;
        }

        v152 = v259;
        v153 = *(*(CMBaseObjectGetVTable() + 16) + 168);
        if (!v153)
        {
          v26 = 4294954514;
          goto LABEL_481;
        }

        v154 = v153(v152, -1, &v254);
        if (v154)
        {
          v26 = v154;
LABEL_481:
          v31 = MEMORY[0x1E695FF58];
          v30 = value;
          v59 = theArray;
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 5605);
LABEL_499:
          v27 = v259;
          goto LABEL_83;
        }

        if (v254 != -1)
        {
          break;
        }

        v107 = v214;
        if (*(a1 + 116))
        {
          LODWORD(v26) = -1;
          goto LABEL_498;
        }

        v155 = v211;
        if (!v256)
        {
          v155 = v211 + 1;
        }

        v211 = v155;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v190, v191, v192);
LABEL_347:
      counta = i;
      if (allocator)
      {
        if (allocator == 1)
        {
          v156 = *(a1 + 24);
          v157 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (v157)
          {
            v157(v156);
          }

          videoMentorResetSavedListAndEnqueueMarker(a1);
          *(a1 + 544) = -2;
          v158 = *(a1 + 528);
          if (v158)
          {
            CFRelease(v158);
            *(a1 + 528) = 0;
          }

          v159 = *(a1 + 536);
          if (v159)
          {
            CFRelease(v159);
            *(a1 + 536) = 0;
          }

          *v199 = v226;
          *(a1 + 576) = v224;
        }

        goto LABEL_359;
      }

      if (!v194)
      {
        goto LABEL_359;
      }

      if (v259)
      {
        CFRelease(v259);
        v259 = 0;
      }

      v183 = *(a1 + 528);
      v184 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v184)
      {
        v26 = 4294954514;
        goto LABEL_516;
      }

      v185 = v184(v183, &v259);
      if (v185)
      {
        v26 = v185;
LABEL_516:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 5672);
LABEL_498:
        v31 = MEMORY[0x1E695FF58];
        v30 = value;
        v59 = theArray;
        goto LABEL_499;
      }

      v186 = v259;
      v187 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v187)
      {
        v26 = 4294954514;
LABEL_518:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 5673);
        goto LABEL_498;
      }

      v188 = v187(v186, 1, &v254);
      if (v188)
      {
        v26 = v188;
        goto LABEL_518;
      }

      if (v254 != 1 && v259)
      {
        CFRelease(v259);
        v259 = 0;
      }

LABEL_359:
      v27 = v259;
      if (Mutable)
      {
LABEL_360:
        if (CFArrayGetCount(Mutable) >= 1)
        {
          lhs = *a5;
          rhs = *a3;
          v215 = CFArrayGetCount(Mutable);
          if (v215 >= 1)
          {
            v160 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v160);
              allocatorb = v160;
              v162 = CFArrayGetValueAtIndex(theArray, v160);
              time1[0] = lhs;
              time2.start = rhs;
              v163 = videoMentorThreadResendCachedSampleBuffer(a1, v162, ValueAtIndex, 0, v198, 1, a12, &time1[0].value, &time2.start.value, MEMORY[0x1E6960C70], cf);
              if (v163)
              {
                goto LABEL_505;
              }

              v198 = 0;
              ++v160;
            }

            while (v215 != (allocatorb + 1));
            v198 = 0;
          }
        }

        CFRelease(Mutable);
      }

LABEL_367:
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (!v242)
      {
        v165 = FigSampleCursorCopy(v27, &v241);
        if (!v165)
        {
          goto LABEL_373;
        }

        LODWORD(v26) = v165;
        videoMentorThreadReversePlayback_cold_10();
        goto LABEL_503;
      }

      v164 = FigSampleCursorCopy(v242, &v241);
      if (v164)
      {
        LODWORD(v26) = v164;
        videoMentorThreadReversePlayback_cold_7();
        goto LABEL_503;
      }

LABEL_373:
      v166 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v241, -1, &v239);
      if (v166)
      {
        LODWORD(v26) = v166;
        videoMentorThreadReversePlayback_cold_8();
        goto LABEL_503;
      }

      if (v239 != -1 && v241)
      {
        CFRelease(v241);
        v241 = 0;
      }

      if (!v28 || v195 < counta)
      {
        free(v28);
        v28 = malloc_type_calloc(counta, 0x20uLL, 0x10E004092DD265EuLL);
        if (v28)
        {
          goto LABEL_381;
        }

        videoMentorThreadReversePlayback_cold_9(time1);
        Mutable = 0;
        v59 = 0;
        LODWORD(v26) = time1[0].value;
LABEL_504:
        v31 = MEMORY[0x1E695FF58];
        v30 = value;
        goto LABEL_83;
      }

      counta = v195;
LABEL_381:
      if (videoMentorSyncFrameIsOpenGOP())
      {
        PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(v27, &v234);
        if (PresentationTimeStamp)
        {
          LODWORD(v26) = PresentationTimeStamp;
          Mutable = 0;
          v59 = 0;
          v29 = 0;
          goto LABEL_504;
        }
      }

      *v199 = v226;
      *(a1 + 576) = v224;
      time1[0].value = v260;
      *&time1[0].timescale = __PAIR64__(v197, v261);
      time1[0].epoch = v196;
      *&time2.start.value = *&a5->value;
      time2.start.epoch = a5->epoch;
      videoMentorThrottlingStateHandleDiscontinuity();
      LOBYTE(v233.value) = 0;
      memset(&time2, 0, 24);
      *theArraya = *MEMORY[0x1E6960CC0];
      *&lhs.value = *MEMORY[0x1E6960CC0];
      allocatorc = *(MEMORY[0x1E6960CC0] + 16);
      lhs.epoch = allocatorc;
      v168 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v168)
      {
        v29 = 0;
LABEL_501:
        LODWORD(v26) = -12782;
LABEL_502:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v190, v191, v192);
        goto LABEL_503;
      }

      v29 = 0;
      while (2)
      {
        v169 = v168(v27, &time2);
        if (v169)
        {
          LODWORD(v26) = v169;
          goto LABEL_502;
        }

        v171 = v205;
        v170 = v206;
        v172 = v204;
        if ((time2.start.flags & 0x1D) != 1)
        {
          videoMentorThreadReversePlayback_cold_6(time1);
          goto LABEL_511;
        }

        if (v234.flags)
        {
          time1[0] = time2.start;
          rhs = v234;
          v174 = CMTimeCompare(time1, &rhs);
          if (v174 < 1)
          {
            v173 = v174 >= 0;
          }

          else
          {
            *&v234.value = v226;
            v234.epoch = v224;
            v173 = 1;
          }

          v171 = v205;
          v170 = v206;
          v172 = v204;
        }

        else
        {
          v173 = 1;
        }

        if (v242)
        {
          if (FigSampleCursorCompareInDecodeOrder_0(v27, v242))
          {
            goto LABEL_395;
          }

          v171 = v205;
          v170 = v206;
          v172 = v204;
          if (v242)
          {
            CFRelease(v242);
            v172 = v204;
            v171 = v205;
            v170 = v206;
            v242 = 0;
          }
        }

        *&time1[0].value = v170;
        *&time1[0].epoch = v171;
        *&time1[1].timescale = v172;
        CursorPTSRange = videoMentorGetCursorPTSRange(v27, time1);
        if (CursorPTSRange)
        {
          goto LABEL_494;
        }

        if ((a5->flags & 0x1D) == 1)
        {
          rhs = time1[1];
          *&v262.value = *theArraya;
          v262.epoch = allocatorc;
          if (CMTimeCompare(&rhs, &v262))
          {
            v262 = time2.start;
            v249 = time1[1];
            CMTimeAdd(&rhs, &v262, &v249);
            v262 = *a5;
            if (CMTimeCompare(&rhs, &v262) < 1)
            {
LABEL_395:
              v175 = 1;
              goto LABEL_405;
            }
          }

          else
          {
            rhs = time2.start;
            v262 = *a5;
            if (CMTimeCompare(&rhs, &v262) < 0)
            {
              goto LABEL_395;
            }
          }
        }

        rhs = start;
        v262 = time2.start;
        v175 = CMTimeCompare(&rhs, &v262) < 1;
LABEL_405:
        if (!v173)
        {
          LOBYTE(v233.value) = 1;
          goto LABEL_413;
        }

        if (!*(*(CMBaseObjectGetVTable() + 16) + 72))
        {
          DependencyInfo = FigSampleCursorGetDependencyInfo(v27, 0, 0, 0, &v233);
          if (DependencyInfo)
          {
            LODWORD(v26) = DependencyInfo;
            videoMentorThreadReversePlayback_cold_5();
            goto LABEL_503;
          }

          goto LABEL_413;
        }

        LOBYTE(rhs.value) = 0;
        MPEG2FrameType = FigSampleCursorGetMPEG2FrameType(v27, &rhs, 0, 0);
        if (MPEG2FrameType)
        {
          LODWORD(v26) = MPEG2FrameType;
          videoMentorThreadReversePlayback_cold_2();
LABEL_503:
          Mutable = 0;
          v59 = 0;
          goto LABEL_504;
        }

        v178 = LOBYTE(rhs.value) - 66;
        if (v178 > 0xE || ((1 << v178) & 0x4081) == 0)
        {
          videoMentorThreadReversePlayback_cold_3(time1);
LABEL_511:
          LODWORD(v26) = time1[0].value;
          goto LABEL_503;
        }

        LOBYTE(v233.value) = LOBYTE(rhs.value) == 66;
LABEL_413:
        if (v175)
        {
          v180 = 0;
          goto LABEL_415;
        }

        if ((v197 & 0x1D) != 1 || (time1[0].value = v260, *&time1[0].timescale = __PAIR64__(v197, v261), time1[0].epoch = v196, *&rhs.value = *theArraya, rhs.epoch = allocatorc, CMTimeCompare(time1, &rhs) < 1))
        {
          v180 = 1;
          goto LABEL_423;
        }

        *&time1[0].value = v226;
        time1[0].epoch = v224;
        rhs.value = v260;
        rhs.timescale = v261;
        rhs.flags = v197;
        rhs.epoch = v196;
        v262 = v235;
        videoMentorThrottleDroppableFrames((a1 + 584), v27, &rhs, &v262);
        if (videoMentorPopCursorFromSelectedCursors(a1 + 584, v27, time1))
        {
          rhs = time1[0];
          v262 = time2.start;
          CMTimeSubtract(&lhs, &rhs, &v262);
          v180 = 1;
        }

        else
        {
          v180 = 0;
          ++*(a1 + 952);
        }

LABEL_415:
        if (v180 || !LOBYTE(v233.value))
        {
LABEL_423:
          time1[0] = *a5;
          v181 = v28 + 32 * v29;
          rhs = *a3;
          v262 = lhs;
          videoMentorThreadCreateSampleBuffer(a1, v27, v180 ^ 1, a12, &time1[0].value, &rhs.value, &v262.value, 1, cf, v181);
          if (CursorPTSRange)
          {
            goto LABEL_494;
          }

          v181[28] = v233.value;
          v181[29] = v180;
          v181[30] = 0;
          *(v181 + 6) = 0;
          ++v29;
          if (v180)
          {
            *v199 = *&time2.start.value;
            *(a1 + 576) = time2.start.epoch;
          }
        }

        v182 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v27, 1, &v239);
        if (v182)
        {
          LODWORD(v26) = v182;
          videoMentorThreadReversePlayback_cold_4();
          goto LABEL_503;
        }

        if (v239 != 1 || FigSampleCursorCompareInDecodeOrder_0(v27, v248) == 1)
        {
          goto LABEL_434;
        }

        if (v29 != counta)
        {
          LOBYTE(v233.value) = 0;
          memset(&time2, 0, 24);
          *&lhs.value = *theArraya;
          lhs.epoch = allocatorc;
          v168 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v168)
          {
            goto LABEL_501;
          }

          continue;
        }

        break;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v190, v191, v192);
      v29 = counta;
LABEL_434:
      if ((a7 & 0x80000000) == 0)
      {
        videoMentorThreadReduceReversedGroupToSatisfyPassLimit(v28, v29, a6, a7 + 1, v198);
      }

      CursorPTSRange = videoMentorThreadSendReversedGroup(a1, v28, v29, a6, v198, a12, cf, a13, &v236);
      if (CursorPTSRange)
      {
LABEL_494:
        LODWORD(v26) = CursorPTSRange;
        goto LABEL_503;
      }

      if (v27)
      {
        CFRelease(v27);
      }

      if (v242)
      {
        CFRelease(v242);
        v242 = 0;
      }

      videoMentorThreadReleaseSampleBuffersInReversalArray(v28, v29);
      if (v248)
      {
        CFRelease(v248);
      }

      v99 = v241;
      v248 = v241;
      v241 = 0;
      if (!v248)
      {
        v98 = 0;
        goto LABEL_234;
      }

      if (v247)
      {
        v193 = FigSampleCursorCompareInDecodeOrder_0(v247, v99);
      }

      allocator = 0;
      theArray = 0;
      Mutable = 0;
      v198 = 0;
      v98 = 0;
      v99 = 0;
      v195 = counta;
      v100 = a1 + 320;
      v101 = (a1 + 344);
      if (v193 == 1)
      {
        goto LABEL_234;
      }
    }
  }

  LOBYTE(v249.value) = 0;
  if (v81 == 1)
  {
LABEL_178:
    LODWORD(v26) = 0;
    v31 = MEMORY[0x1E695FF58];
LABEL_179:
    v30 = value;
    v59 = theArray;
    goto LABEL_180;
  }

LABEL_183:
  v221 = *(MEMORY[0x1E6960CC0] + 12);
  v227 = *(MEMORY[0x1E6960CC0] + 16);
  v225 = *MEMORY[0x1E6960C70];
  v223 = *(MEMORY[0x1E6960C70] + 8);
  while (2)
  {
    LOBYTE(v236) = 0;
    memset(time1, 0, 24);
    memset(&time2, 0, 24);
    v262.value = v225;
    v262.timescale = v223;
    v84 = v248;
    v85 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v85)
    {
      v26 = 4294954514;
LABEL_462:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v26, "<<<< VideoMentor >>>>", 8598);
LABEL_467:
      v31 = MEMORY[0x1E695FF58];
      v30 = value;
      v59 = theArray;
      goto LABEL_478;
    }

    v86 = v85(v84, &v240);
    if (v86)
    {
      v26 = v86;
      goto LABEL_462;
    }

    if ((v240.flags & 0x1D) != 1)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 8598);
LABEL_464:
      LODWORD(v26) = v93;
      goto LABEL_467;
    }

    v87 = v248;
    v88 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v88)
    {
      goto LABEL_190;
    }

    v89 = v88(v87, time1);
    if (!v89)
    {
      if ((time1[0].flags & 0x1D) == 1)
      {
        goto LABEL_191;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 8599);
      goto LABEL_464;
    }

    LODWORD(v26) = v89;
    if (v89 != -12782)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v89, "<<<< VideoMentor >>>>", 8599);
      goto LABEL_467;
    }

LABEL_190:
    *&time1[0].value = *MEMORY[0x1E6960CC0];
    time1[0].epoch = v227;
LABEL_191:
    lhs = v240;
    rhs = time1[0];
    CMTimeAdd(&time2.start, &lhs, &rhs);
    if (v247 && (lhs = *a5, rhs = time2.start, CMTimeCompare(&lhs, &rhs) > 0))
    {
      LOBYTE(v90) = 0;
    }

    else
    {
      lhs = v240;
      rhs = start;
      v90 = CMTimeCompare(&lhs, &rhs) >> 31;
    }

    LOBYTE(v236) = v90;
    FigSimpleMutexLock();
    v262.value = *(a1 + 272);
    v262.timescale = *(a1 + 280);
    v91 = *(a1 + 284);
    v92 = *(a1 + 288);
    FigSimpleMutexUnlock();
    if ((v91 & 0x1D) != 1)
    {
      v262.value = *MEMORY[0x1E6960CC0];
      v262.timescale = *(MEMORY[0x1E6960CC0] + 8);
      v91 = v221;
      v92 = v227;
    }

    lhs = v240;
    rhs.value = v262.value;
    rhs.timescale = v262.timescale;
    rhs.flags = v91;
    rhs.epoch = v92;
    v93 = videoMentorSimulateIFramesOnly(v248, &lhs, &rhs, (a1 + 560), -1, &v236, &v249);
    if (v93)
    {
      goto LABEL_464;
    }

    if (v236)
    {
      lhs = *a5;
      rhs = *a3;
      v93 = videoMentorThreadGenerateAndEnqueueFrame(a1, v248, 0, 0, v83, LOBYTE(v249.value), 1, 1, a12, &lhs.value, &rhs.value, MEMORY[0x1E6960C70], cf);
      v83 = 0;
      if (v93)
      {
        goto LABEL_464;
      }
    }

    v94 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v248, -1, &v239);
    if (v94)
    {
      LODWORD(v26) = v94;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v94, "<<<< VideoMentor >>>>", 8639);
      goto LABEL_467;
    }

    if (v239 == -1)
    {
      if (v247)
      {
        v82 = FigSampleCursorCompareInDecodeOrder_0(v247, v248);
      }

      if (v82 == 1)
      {
        goto LABEL_178;
      }

      continue;
    }

    break;
  }

  LODWORD(v26) = 0;
  v31 = MEMORY[0x1E695FF58];
  if (!v82)
  {
    goto LABEL_179;
  }

  v30 = value;
  v59 = theArray;
  if (v247)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v190, v191, v192);
    LODWORD(v26) = v189;
  }

LABEL_180:
  v28 = 0;
  v29 = 0;
LABEL_235:
  if (a15 && !v26)
  {
    LODWORD(v26) = audioMentorEnqueueBufferConsumedMarker(a1, a15);
    v230 = 0;
  }

  videoMentorEnqueueDrainAfterDecodingMarker(a1);
  v27 = 0;
  ++*(a1 + 936);
LABEL_83:
  if (*(a1 + 492))
  {
    videoMentorPostCollectorCoherenceConduitNotification(a1);
    *(a1 + 492) = 0;
  }

  if (a13 && (v26 + 1) <= 1)
  {
    videoMentorPostMinAndMaxUpcomingOutputPTS(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
  }

  videoMentorThreadFinishPreroll(a1, 0, cf);
  if (*v31 == 1)
  {
    kdebug_trace();
  }

  if (!*a1)
  {
    v60 = &kMentorNotification_StoppingDueToCompletion;
    if (v26)
    {
      v60 = &kMentorNotification_StoppingDueToError;
    }

    if (v26 == -1)
    {
      v61 = 0;
    }

    else
    {
      v61 = v26;
    }

    if (v26 == -1)
    {
      v60 = &kMentorNotification_ResettingDueToModeSwitch;
    }

    v62 = FigMentorNotificationPayloadCreate(*v60, cf, v61, *(a1 + 520), v230, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v62)
    {
      CFRelease(v62);
    }
  }

  if (v248)
  {
    CFRelease(v248);
    v248 = 0;
  }

  if (v30 && v247)
  {
    CFRelease(v247);
    v247 = 0;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v246)
  {
    CFRelease(v246);
    v246 = 0;
  }

  if (v245)
  {
    CFRelease(v245);
    v245 = 0;
  }

  if (v243)
  {
    CFRelease(v243);
    v243 = 0;
  }

  if (v242)
  {
    CFRelease(v242);
    v242 = 0;
  }

  if (v241)
  {
    CFRelease(v241);
    v241 = 0;
  }

  videoMentorThreadReleaseSampleBuffersInReversalArray(v28, v29);
  videoMentorThrottlingStateFree(a1 + 584);
  free(v28);
  v63 = *(a1 + 512);
  if (v63)
  {
    CFRelease(v63);
    *(a1 + 512) = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v59)
  {
    CFRelease(v59);
  }
}

uint64_t FigSampleCursorStepInPresentationOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t videoMentorGetCursorPTSRange(const void *a1, _OWORD *a2)
{
  v15 = 0;
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v3;
  a2[2] = *(v2 + 32);
  if (a1)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 232);
    if (v6 && !v6(a1, a2))
    {
      PresentationTimeRange = 0;
    }

    else
    {
      FigSampleCursorGetFigBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v9 || (!v9(v8, @"PresentationTimeRange", *MEMORY[0x1E695E480], &v15) ? (v10 = v15 == 0) : (v10 = 1), v10))
      {
        PresentationTimeRange = FigSampleCursorUtilityGetPresentationTimeRange(a1, a2);
      }

      else
      {
        CMTimeRangeMakeFromDictionary(&v14, v15);
        PresentationTimeRange = 0;
        v13 = *&v14.start.epoch;
        *a2 = *&v14.start.value;
        a2[1] = v13;
        a2[2] = *&v14.duration.timescale;
      }
    }
  }

  else
  {
    videoMentorGetCursorPTSRange_cold_1(&v14);
    PresentationTimeRange = LODWORD(v14.start.value);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return PresentationTimeRange;
}

uint64_t videoMentorEnqueueTimestampIntervalMarker(uint64_t a1, __int128 *a2, __int128 *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  FigCFDictionarySetCMTime();
  v5 = audioMentorEnqueueBufferConsumedMarker(a1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

void videoMentorResetSavedListAndEnqueueMarker(uint64_t result)
{
  v1 = 0;
  if (*(result + 552))
  {
    videoMentorResetSavedListAndEnqueueMarker_cold_1(&v1, result, (result + 552));
  }
}

void videoMentorUpdateDecoderState(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 544);
  v6 = v5;
  if (*(a1 + 548) && !*(a2 + 162))
  {
    *(a1 + 548) = 0;
    v6 = 0x7FFFFFFF;
    if (a3)
    {
LABEL_4:
      v7 = *(a2 + 16);
      if (v7)
      {
        v8 = CFRetain(v7);
      }

      else
      {
        v8 = 0;
      }

      if (*(a2 + 158))
      {
LABEL_13:
        v6 = 0x7FFFFFFF;
        goto LABEL_18;
      }

      if (*(a2 + 159))
      {
        v6 += v6 >> 31;
      }

      else
      {
        if (!*(a2 + 160))
        {
          if (!*(a2 + 156))
          {
            if (*(a2 + 157) && *(a1 + 544) < *(a2 + 152))
            {
              v6 = *(a2 + 152);
            }

            goto LABEL_18;
          }

          goto LABEL_13;
        }

        *(a1 + 548) = 1;
      }

LABEL_18:
      *(a1 + 544) = v6;
      if (v8)
      {
        v10 = *(a1 + 528);
        if (v10)
        {
          CFRelease(v10);
        }

        *(a1 + 528) = v8;
      }

      return;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  if (!*(a2 + 161))
  {
    v9 = *(a2 + 152);
    if (v5 >= v9)
    {
      v6 = v9 - 1;
    }
  }

  *(a1 + 544) = v6;
}

void videoMentorEnqueueDrainAfterDecodingMarker(uint64_t a1)
{
  v5 = 0;
  if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &v5))
  {
    CMSetAttachment(v5, *MEMORY[0x1E6960490], *MEMORY[0x1E695E4D0], 1u);
    v2 = *(a1 + 24);
    v3 = v5;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(v2, v3);
    }

    CFRelease(v5);
  }
}

uint64_t videoMentorFrameNodeCreate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    videoMentorFrameNodeCreate_cold_2(&v27);
    return v27;
  }

  v10 = Instance;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(v10 + 24) = Mutable;
  if (!Mutable)
  {
    v24 = 1641;
LABEL_21:
    videoMentorFrameNodeCreate_cold_1(v24, &v27);
    v22 = v27;
    goto LABEL_14;
  }

  v13 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  *(v10 + 32) = v13;
  if (!v13)
  {
    v24 = 1644;
    goto LABEL_21;
  }

  v14 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  *(v10 + 40) = v14;
  if (!v14)
  {
    v24 = 1647;
    goto LABEL_21;
  }

  v15 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  *(v10 + 48) = v15;
  if (!v15)
  {
    v24 = 1650;
    goto LABEL_21;
  }

  v16 = MEMORY[0x1E6960C70];
  v17 = *MEMORY[0x1E6960C70];
  *(v10 + 104) = *MEMORY[0x1E6960C70];
  v18 = *(v16 + 16);
  *(v10 + 120) = v18;
  *(v10 + 128) = v17;
  *(v10 + 144) = v18;
  if (a3 != -1)
  {
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v19)
    {
      v20 = v19(a3, v10 + 16);
      if (v20)
      {
LABEL_22:
        v22 = v20;
        goto LABEL_14;
      }

      v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v21)
      {
        v20 = v21(a3, v10 + 104);
        if (!v20)
        {
          v25 = *(v10 + 104);
          v26 = *(v10 + 120);
          videoMentorRemapTime(a1, a4, 0, &v25, &v27);
          *(v10 + 128) = v27;
          *(v10 + 144) = v28;
          goto LABEL_12;
        }

        goto LABEL_22;
      }
    }

    v22 = 4294954514;
LABEL_14:
    CFRelease(v10);
    return v22;
  }

LABEL_12:
  v22 = 0;
  *(v10 + 64) = 1;
  *a5 = v10;
  return v22;
}

uint64_t videoMentorRemapTime@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a4;
  *(a5 + 16) = *(a4 + 2);
  FigSimpleMutexLock();
  v10 = a1[8];
  if (v10)
  {
    v12 = *a4;
    v13 = *(a4 + 2);
    v10(a1[9], a2, a3, a5, &v12);
  }

  return FigSimpleMutexUnlock();
}

__CFString *videoMentorFrameNodeCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"VideoMentorFrameNode: %p, sampleCursor: %@\n", a1, a1[2]);
  return Mutable;
}

BOOL videoMentorFrameNodeIsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == v3)
  {
    return 1;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16) ? *(VTable + 16) : 0;
  v8 = *(CMBaseObjectGetVTable() + 16);
  v9 = v8 ? v8 : 0;
  return v7 != v9 || !*(v7 + 32) || (*(v9 + 32))(v2, v3) == 0;
}

CMTimeValue videoMentorFrameNodeHash(uint64_t a1)
{
  v2 = *(a1 + 104);
  CMTimeConvertScale(&v3, &v2, 1000000000, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
  return v3.value;
}

uint64_t videoMentorCopySyncCursorForCursor(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v32 = 0;
  v31 = 0;
  if (a4)
  {
    *a4 = 1;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
LABEL_41:
    value_low = 4294954514;
    goto LABEL_42;
  }

  v9 = v8(a2, &v32);
  if (v9)
  {
LABEL_46:
    value_low = v9;
  }

  else
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 64) != 0;
    if (v10 != (*(*(CMBaseObjectGetVTable() + 16) + 72) != 0))
    {
      v11 = 0;
      value = -1;
      v13 = MEMORY[0x1E6960C70];
      while (1)
      {
        v30 = 0;
        if (*(a1 + 116))
        {
          value_low = 0xFFFFFFFFLL;
          goto LABEL_42;
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 64))
        {
          LODWORD(v29.value) = 0;
          v14 = v32;
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (!v15)
          {
            goto LABEL_41;
          }

          v9 = v15(v14, &v31 + 1, &v31, &v29, 0);
          if (v9)
          {
            goto LABEL_46;
          }

          if (value < 0)
          {
            value = v29.value;
          }

          v16 = 1;
          if (!HIBYTE(v31))
          {
            goto LABEL_26;
          }
        }

        else
        {
          LOBYTE(v29.value) = 0;
          LOBYTE(v28.value) = 0;
          LOBYTE(time1.value) = 0;
          v17 = v32;
          v18 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (!v18)
          {
            goto LABEL_41;
          }

          v9 = v18(v17, &v29, &v28, &time1);
          if (v9)
          {
            goto LABEL_46;
          }

          if (LOBYTE(v28.value))
          {
            v16 = LOBYTE(v29.value) != 73;
          }

          else
          {
            v16 = 1;
          }

          HIBYTE(v31) = LOBYTE(v29.value) == 73;
          if (LOBYTE(v29.value) != 73)
          {
            goto LABEL_26;
          }
        }

        if (!videoMentorSyncFrameIsOpenGOP())
        {
          if (a4)
          {
            *a4 = 1;
          }

LABEL_26:
          if (v16)
          {
            goto LABEL_33;
          }

          goto LABEL_27;
        }

        if (a4)
        {
          *a4 = 0;
        }

LABEL_27:
        v29 = *v13;
        v28 = v29;
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v19)
        {
          goto LABEL_41;
        }

        v9 = v19(a2, &v29);
        if (v9)
        {
          goto LABEL_46;
        }

        v20 = v32;
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v21)
        {
          goto LABEL_41;
        }

        v9 = v21(v20, &v28);
        if (v9)
        {
          goto LABEL_46;
        }

        time1 = v29;
        v26 = v28;
        if (CMTimeCompare(&time1, &v26) < 0)
        {
          v31 = 1;
        }

LABEL_33:
        if (!v31 || value < 1 || (++v11, v11 < value))
        {
          if (!HIBYTE(v31))
          {
            v22 = v32;
            v23 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            if (!v23)
            {
              goto LABEL_41;
            }

            v9 = v23(v22, -1, &v30);
            if (v9)
            {
              goto LABEL_46;
            }

            if (v30 == -1)
            {
              continue;
            }
          }
        }

        value_low = 0;
        *a3 = v32;
        return value_low;
      }
    }

    videoMentorCopySyncCursorForCursor_cold_1(&v29);
    value_low = LODWORD(v29.value);
  }

LABEL_42:
  if (v32)
  {
    CFRelease(v32);
  }

  return value_low;
}

uint64_t videoMentorDependencyStateFillRefreshGroupsUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, CMTime *a6, CMTime *a7, CMTime *a8, int a9, void *a10)
{
  v99 = *MEMORY[0x1E69E9840];
  v88 = **&MEMORY[0x1E6960C70];
  v86 = v88;
  cf = 0;
  timescale = *(MEMORY[0x1E6960C70] + 8);
  value = *MEMORY[0x1E6960C70];
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = v18(a3, &v88);
  if (!v19)
  {
    v20 = a10;
    *a10 = 0;
    if (*(a2 + 32))
    {
      return 0;
    }

    if (a5 && (a8->flags & 0x1D) == 1)
    {
      if ((a6->flags & 0x1D) == 1)
      {
        time1 = *a6;
        time2 = *a8;
        CMTimeMaximum(&lhs, &time1, &time2);
        *a6 = lhs;
      }

      else
      {
        v22 = *&a8->value;
        a6->epoch = a8->epoch;
        *&a6->value = v22;
      }
    }

    v23 = *(a2 + 24);
    v24 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v24)
    {
      v19 = v24(v23, &v86);
      if (!v19)
      {
        lhs = v88;
        time1 = v86;
        if ((CMTimeCompare(&lhs, &time1) & 0x80000000) == 0)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
LABEL_14:
          if (v26 <= a9)
          {
            v79 = v27;
            v80 = *MEMORY[0x1E695E480];
            v76 = *MEMORY[0x1E695E4D0];
            v77 = a7;
            v78 = v20;
            while (!*(a2 + 33) && !*(a2 + 32))
            {
              if (*(a1 + 116))
              {
                v21 = 0xFFFFFFFFLL;
                goto LABEL_18;
              }

              v81 = v26;
              v33 = *(a2 + 24);
              v34 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (!v34)
              {
                goto LABEL_17;
              }

              v35 = v34(v33, &v86);
              if (v35)
              {
                goto LABEL_143;
              }

              time1 = v86;
              videoMentorRemapTime(a1, a4, 0, &time1.value, &lhs);
              value = lhs.value;
              timescale = lhs.timescale;
              if ((lhs.flags & 0x1D) != 1)
              {
                break;
              }

              flags = lhs.flags;
              epoch = lhs.epoch;
              lhs = v86;
              time1 = *(a2 + 104);
              if ((CMTimeCompare(&lhs, &time1) & 0x80000000) == 0)
              {
                *(a2 + 32) = 1;
                break;
              }

              if ((a6->flags & 0x1D) != 1 || (lhs = *a6, time1 = **&MEMORY[0x1E6960CC0], !CMTimeCompare(&lhs, &time1)) || (v38 = *(a2 + 48), (v38 & 0x1D) != 1))
              {
                *(a2 + 36) = value;
                *(a2 + 44) = timescale;
                *(a2 + 48) = flags;
                LOBYTE(v38) = flags;
                *(a2 + 52) = epoch;
              }

              if ((v38 & 0x1D) != 1)
              {
                break;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              lhs = *(a2 + 36);
              v35 = videoMentorRefreshGroupCreate(v80, &lhs.value, &cf);
              if (v35)
              {
LABEL_143:
                v21 = v35;
                goto LABEL_18;
              }

              FigSampleCursorGetFigBaseObject();
              v40 = v39;
              v41 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v41)
              {
                v41(v40, @"EagerlyFetchSampleDependencyAttributes", v76);
              }

              lhs.value = value;
              lhs.timescale = timescale;
              lhs.flags = flags;
              lhs.epoch = epoch;
              time1 = *(a2 + 36);
              if (CMTimeCompare(&lhs, &time1) <= 0)
              {
                v44 = v25;
                while (1)
                {
                  time2.value = 0;
                  type.value = 0;
                  if (*(a1 + 116))
                  {
                    v21 = 0xFFFFFFFFLL;
                    goto LABEL_120;
                  }

                  v74 = flags;
                  v75 = epoch;
                  NodeForCursor = videoMentorDependencyStateGetNodeForCursor(a1, a2, *(a2 + 24), a4, 1, &type);
                  if (NodeForCursor)
                  {
                    break;
                  }

                  v46 = type.value;
                  videoMentorRefreshGroupAddNode(cf, type.value);
                  v25 = *(v46 + 16);
                  if (v44)
                  {
                    v47 = *(CMBaseObjectGetVTable() + 16);
                    if (v47)
                    {
                      v48 = v47;
                    }

                    else
                    {
                      v48 = 0;
                    }

                    if (v25 && (v49 = *(CMBaseObjectGetVTable() + 16)) != 0)
                    {
                      v50 = v49;
                    }

                    else
                    {
                      v50 = 0;
                    }

                    if (v48 == v50 && *(v48 + 32) && (*(v50 + 32))(v44, v25) == -1)
                    {
                      v25 = *(type.value + 16);
                      if (v25)
                      {
                        CFRetain(*(type.value + 16));
                      }

                      CFRelease(v44);
                    }

                    else
                    {
                      v25 = v44;
                    }
                  }

                  else if (v25)
                  {
                    CFRetain(v25);
                  }

                  v51 = *(type.value + 16);
                  v52 = *(CMBaseObjectGetVTable() + 16);
                  if (v52)
                  {
                    v53 = v52;
                  }

                  else
                  {
                    v53 = 0;
                  }

                  if (a3 && (v54 = *(CMBaseObjectGetVTable() + 16)) != 0)
                  {
                    v55 = v54;
                  }

                  else
                  {
                    v55 = 0;
                  }

                  if (v53 != v55 || !*(v53 + 32) || !(*(v55 + 32))(v51, a3))
                  {
                    v79 = 1;
                  }

                  v56 = *(a2 + 24);
                  v57 = *(*(CMBaseObjectGetVTable() + 16) + 176);
                  if (!v57)
                  {
LABEL_124:
                    v21 = 4294954514;
LABEL_125:
                    v44 = v25;
                    goto LABEL_120;
                  }

                  v58 = v57(v56, 1, &time2);
                  if (v58)
                  {
                    goto LABEL_146;
                  }

                  if (time2.value != 1)
                  {
                    goto LABEL_117;
                  }

                  v59 = *(a2 + 24);
                  v60 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                  if (!v60)
                  {
                    goto LABEL_124;
                  }

                  v58 = v60(v59, &v86);
                  if (v58)
                  {
LABEL_146:
                    v21 = v58;
                    goto LABEL_125;
                  }

                  time1 = v86;
                  videoMentorRemapTime(a1, a4, 0, &time1.value, &lhs);
                  value = lhs.value;
                  flags = lhs.flags;
                  timescale = lhs.timescale;
                  epoch = lhs.epoch;
                  lhs = v86;
                  time1 = *(a2 + 104);
                  if ((CMTimeCompare(&lhs, &time1) & 0x80000000) == 0)
                  {
                    v74 = flags;
                    v75 = epoch;
LABEL_117:
                    *(a2 + 32) = 1;
                    epoch = v75;
                    flags = v74;
                    goto LABEL_47;
                  }

                  lhs.value = value;
                  lhs.timescale = timescale;
                  lhs.flags = flags;
                  lhs.epoch = epoch;
                  time1 = *(a2 + 36);
                  v44 = v25;
                  if (CMTimeCompare(&lhs, &time1) >= 1)
                  {
                    goto LABEL_47;
                  }
                }

                v21 = NodeForCursor;
LABEL_120:
                v25 = v44;
                goto LABEL_18;
              }

LABEL_47:
              v42 = cf;
              Count = CFArrayGetCount(*(cf + 5));
              if (Count < 1)
              {
                v20 = v78;
                v26 = v81;
              }

              else
              {
                CFArrayAppendValue(*(a2 + 16), v42);
                v26 = v81;
                if (v79)
                {
                  v26 = v81 + 1;
                }

                v20 = v78;
              }

              v84 = *&a6->value;
              v85 = a6->epoch;
              v83 = *v77;
              time1 = *a6;
              if (!*(a2 + 33) && (*(a2 + 48) & 1) != 0 && (BYTE12(v84) & 1) != 0)
              {
                v82 = v26;
                if ((v83.flags & 0x1D) == 1)
                {
                  lhs = *a6;
                  time2 = *v77;
                  CMTimeAdd(&time1, &lhs, &time2);
                }

                else
                {
                  v83 = *a6;
                }

                v61 = &v84;
                if (Count < 1)
                {
                  v61 = &v83;
                }

                lhs = *v61;
                if ((flags & 0x1D) == 1 && (time2.value = value, time2.timescale = timescale, time2.flags = flags, time2.epoch = epoch, type = *(a2 + 128), CMTimeCompare(&time2, &type) < 0))
                {
                  type.value = value;
                  type.timescale = timescale;
                  type.flags = flags;
                  type.epoch = epoch;
                }

                else
                {
                  type = *(a2 + 128);
                }

                rhs = *(a2 + 36);
                CMTimeSubtract(&time2, &type, &rhs);
                v97 = time2.value;
                v62 = time2.flags;
                v98 = time2.timescale;
                v63 = time2.epoch;
                if ((time2.flags & 0x1D) != 1)
                {
                  goto LABEL_111;
                }

                time2.value = v97;
                time2.timescale = v98;
                type = time1;
                if (CMTimeCompare(&time2, &type) < 1)
                {
                  goto LABEL_111;
                }

                time2.value = v97;
                time2.timescale = v98;
                time2.flags = v62;
                time2.epoch = v63;
                Seconds = CMTimeGetSeconds(&time2);
                time2 = v83;
                v65 = Seconds / CMTimeGetSeconds(&time2);
                if (v65 > 2147483650.0)
                {
                  v65 = 2147483650.0;
                }

                if (v65 - floor(v65) < 0.01)
                {
                  v65 = v65 + -1.0;
                }

                if (v65 > 1.0)
                {
                  memset(&time2, 0, sizeof(time2));
                  rhs = v83;
                  CMTimeMultiply(&type, &rhs, v65);
                  rhs = *(a2 + 36);
                  CMTimeAdd(&time2, &rhs, &type);
                  rhs = time2;
                  v89 = v83;
                  CMTimeAdd(&type, &rhs, &v89);
                  *(a2 + 36) = *&type.value;
                  v66 = type.epoch;
                }

                else
                {
LABEL_111:
                  type = *(a2 + 36);
                  rhs = lhs;
                  CMTimeAdd(&time2, &type, &rhs);
                  *(a2 + 36) = *&time2.value;
                  v66 = time2.epoch;
                }

                *(a2 + 52) = v66;
                *&time2.value = *(a2 + 36);
                time2.epoch = v66;
                type = *(a2 + 128);
                v67 = CMTimeCompare(&time2, &type);
                v26 = v82;
                if ((v67 & 0x80000000) == 0)
                {
                  *(a2 + 33) = 1;
                }
              }

              if (v26 > a9)
              {
                break;
              }
            }
          }

          v21 = 0;
          *v20 = v25;
          goto LABEL_25;
        }

        type.value = 0;
        v19 = videoMentorDependencyStateGetNodeForCursor(a1, a2, a3, a4, 1, &type);
        if (!v19)
        {
          v68 = type.value;
          ValueAtIndex = *(type.value + 56);
          if (ValueAtIndex)
          {
            v25 = 0;
LABEL_142:
            v73 = CFArrayGetCount(*(a2 + 16));
            v100.location = 0;
            v100.length = v73;
            v26 = v73 + ~CFArrayGetFirstIndexOfValue(*(a2 + 16), v100, ValueAtIndex);
            v27 = 1;
            goto LABEL_14;
          }

          memset(&lhs, 0, sizeof(lhs));
          time1 = v88;
          videoMentorRemapTime(a1, a4, 0, &time1.value, &lhs);
          v70 = CFArrayGetCount(*(a2 + 16));
          if (v70 < 1)
          {
            v71 = 0;
            ValueAtIndex = 0;
          }

          else
          {
            v71 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 16), v71);
              time1 = lhs;
              time2 = *(ValueAtIndex + 16);
              if (CMTimeCompare(&time1, &time2) < 1)
              {
                break;
              }

              if (v70 == ++v71)
              {
                v71 = v70;
                goto LABEL_136;
              }
            }
          }

          if (v71 != v70 && !ValueAtIndex[56])
          {
LABEL_139:
            videoMentorRefreshGroupAddNode(ValueAtIndex, v68);
            v25 = *(type.value + 16);
            if (v25)
            {
              CFRetain(*(type.value + 16));
            }

            v20 = a10;
            goto LABEL_142;
          }

LABEL_136:
          v72 = *MEMORY[0x1E695E480];
          time1 = lhs;
          v19 = videoMentorRefreshGroupCreate(v72, &time1.value, &cf);
          if (!v19)
          {
            ValueAtIndex = cf;
            CFArrayInsertValueAtIndex(*(a2 + 16), v71, cf);
            if (ValueAtIndex)
            {
              CFRelease(ValueAtIndex);
              cf = 0;
            }

            goto LABEL_139;
          }
        }
      }

      goto LABEL_145;
    }

LABEL_16:
    v25 = 0;
LABEL_17:
    v21 = 4294954514;
    goto LABEL_18;
  }

LABEL_145:
  v21 = v19;
  v25 = 0;
LABEL_18:
  LODWORD(time2.value) = 0;
  LOBYTE(type.value) = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v29 = time2.value;
  value_low = LOBYTE(type.value);
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
  {
    v31 = v29;
  }

  else
  {
    v31 = v29 & 0xFFFFFFFE;
  }

  if (v31)
  {
    LODWORD(time1.value) = 136315394;
    *(&time1.value + 4) = "videoMentorDependencyStateFillRefreshGroupsUntil";
    LOWORD(time1.flags) = 1024;
    *(&time1.flags + 2) = v21;
    _os_log_send_and_compose_impl(v31, 0, &lhs, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< VideoMentor >>>> %s: Failed. Err: %d", &time1, 18);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v25)
  {
    CFRelease(v25);
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

uint64_t videoMentorDependencyStateAddSamplesToGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __CFArray **a6, __CFSet **a7)
{
  v14 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v123[0] = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (*(a2 + 88))
  {
    v16 = 0;
LABEL_7:
    videoMentorDependencyStateCloseNodesWithUnknownDependents(a2, Mutable);
    goto LABEL_8;
  }

  allocator = v14;
  v110 = a3;
  v109 = a5;
  v101 = a6;
  v107 = 0;
  v16 = 0;
  v105 = *MEMORY[0x1E695E4D0];
  key = *MEMORY[0x1E6960450];
  v102 = *MEMORY[0x1E695E4C0];
  v99 = *MEMORY[0x1E6960400];
  v98 = *MEMORY[0x1E6960438];
  v18 = *MEMORY[0x1E695E738];
  v108 = a4;
  v111 = a1;
  while (1)
  {
    v121 = 0;
    v122 = 0;
    v19 = *(a2 + 80);
    v20 = *(CMBaseObjectGetVTable() + 16);
    if (v20)
    {
      v21 = v20;
      if (!a4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = 0;
      if (!a4)
      {
        goto LABEL_19;
      }
    }

    v22 = *(CMBaseObjectGetVTable() + 16);
    if (!v22)
    {
LABEL_19:
      v23 = 0;
      goto LABEL_20;
    }

    v23 = v22;
LABEL_20:
    if (v21 == v23 && *(v21 + 32) && (*(v23 + 32))(v19, a4) == 1)
    {
      goto LABEL_168;
    }

    if (*(a1 + 116))
    {
      v17 = 0xFFFFFFFFLL;
      goto LABEL_159;
    }

    NodeForCursor = videoMentorDependencyStateGetNodeForCursor(a1, a2, *(a2 + 80), v110, 1, &v122);
    if (NodeForCursor)
    {
LABEL_174:
      v17 = NodeForCursor;
      goto LABEL_159;
    }

    v120 = 0;
    v119 = 0;
    v118 = 0;
    v117 = 0;
    v116 = 0;
    v115 = 0;
    if (*(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      LOBYTE(time1.value) = 0;
      LOBYTE(value.value) = 0;
      v25 = *(a2 + 80);
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v26)
      {
        goto LABEL_166;
      }

      NodeForCursor = v26(v25, &time1, &v120 + 1, &value);
      if (NodeForCursor)
      {
        goto LABEL_174;
      }

      v27 = LOBYTE(time1.value) == 73;
      LOBYTE(v120) = LOBYTE(time1.value) == 73;
      v117 = LOBYTE(time1.value) == 66;
      v112 = v120;
    }

    else
    {
      v28 = *(a2 + 80);
      v29 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v29)
      {
        goto LABEL_166;
      }

      NodeForCursor = v29(v28, &v120, &v119, &v118, &v117);
      if (NodeForCursor)
      {
        goto LABEL_174;
      }

      v112 = (v120 | v119) != 0;
      if (v123[0])
      {
        CFRelease(v123[0]);
        v123[0] = 0;
      }

      FigSampleCursorGetFigBaseObject();
      v31 = v30;
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v32)
      {
        v32(v31, @"EagerlyFetchSampleDependencyAttributes", v105);
      }

      FigSampleCursorGetFigBaseObject();
      v34 = v33;
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v35)
      {
        if (!v35(v34, @"SampleDependencyAttributes", allocator, v123))
        {
          if (v123[0])
          {
            v36 = CFGetTypeID(v123[0]);
            if (v36 == CFDictionaryGetTypeID())
            {
              time1.value = 0;
              value.value = 0;
              if (CFDictionaryGetValueIfPresent(v123[0], key, &value) && value.value == v102)
              {
                v117 = 1;
              }

              ValueIfPresent = CFDictionaryGetValueIfPresent(v123[0], v99, &value);
              v38 = v112;
              v39 = value.value == v102 || v112;
              if (ValueIfPresent)
              {
                v38 = v39;
              }

              v112 = v38;
              if (CFDictionaryGetValueIfPresent(v123[0], v98, &time1))
              {
                FigCFDictionaryGetIntIfPresent();
              }

              FigCFDictionaryGetBooleanIfPresent();
              FigCFDictionaryGetBooleanIfPresent();
              FigCFDictionaryGetIntIfPresent();
            }
          }
        }
      }

      v27 = v120;
      if (v120 && (v116 == 21 || v116 == 16))
      {
        HIBYTE(v120) = 1;
      }
    }

    v40 = v122;
    *(v122 + 152) = HIDWORD(v116);
    *(v40 + 156) = HIBYTE(v115);
    *(v40 + 157) = v115;
    *(v40 + 158) = v27;
    *(v40 + 159) = v119;
    v41 = HIBYTE(v120);
    *(v40 + 160) = HIBYTE(v120);
    *(v40 + 161) = v117;
    if (v27 && !v41)
    {
      videoMentorDependencyStateCloseNodesWithUnknownDependents(a2, Mutable);
      v42 = *(a2 + 72);
      if (!v42)
      {
        goto LABEL_65;
      }

      if (v42[64])
      {
        v42[64] = 0;
        CFArrayAppendValue(Mutable, v42);
      }

LABEL_64:
      CFRelease(v42);
      *(a2 + 72) = 0;
      goto LABEL_65;
    }

    v43 = *(a2 + 72);
    if (v43)
    {
      if (v43 == *a2 || (time1 = *(v40 + 104), value = *(v43 + 104), v44 = CMTimeCompare(&time1, &value), *(v40 + 162) = v44 < 0, (v44 & 0x80000000) == 0))
      {
        videoMentorDependencyStateCloseNodesWithUnknownDependents(a2, Mutable);
        CFArrayAppendValue(*(a2 + 64), *(a2 + 72));
        v42 = *(a2 + 72);
        if (v42)
        {
          goto LABEL_64;
        }
      }
    }

LABEL_65:
    if (HIBYTE(v120))
    {
      *(a2 + 72) = CFRetain(v40);
    }

    if (v117)
    {
      *(v40 + 64) = 0;
      CFArrayAppendValue(Mutable, v40);
    }

    Count = CFArrayGetCount(*(a2 + 64));
    v46 = Count;
    v47 = SHIDWORD(v116);
    if (HIBYTE(v115) && Count > SHIDWORD(v116))
    {
      do
      {
        CountOfNodesWithUnknownDependentsAtLevel = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a2, v47);
        if (CountOfNodesWithUnknownDependentsAtLevel >= 1)
        {
          v49 = CountOfNodesWithUnknownDependentsAtLevel;
          for (i = 0; i != v49; ++i)
          {
            NodeWithUnknownDependentsAtLevel = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a2, v47, i);
            *(NodeWithUnknownDependentsAtLevel + 64) = 0;
            CFArrayAppendValue(Mutable, NodeWithUnknownDependentsAtLevel);
          }
        }

        CFArraySetValueAtIndex(*(a2 + 64), v47++, v18);
      }

      while (v47 != v46);
    }

    else if (v115)
    {
      if (Count > SHIDWORD(v116))
      {
        v52 = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a2, SHIDWORD(v116));
        if (v52 >= 1)
        {
          v53 = v52;
          for (j = 0; j != v53; ++j)
          {
            v55 = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a2, SHIDWORD(v116), j);
            *(v55 + 64) = 0;
            CFArrayAppendValue(Mutable, v55);
            CFArraySetValueAtIndex(*(a2 + 64), SHIDWORD(v116), v18);
          }
        }
      }
    }

    v56 = CFArrayGetCount(*(a2 + 64));
    if (v56 <= SHIDWORD(v116))
    {
      v57 = v56 - 1;
      do
      {
        CFArrayAppendValue(*(a2 + 64), v18);
        ++v57;
      }

      while (v57 < SHIDWORD(v116));
    }

    a1 = v111;
    if (!v112)
    {
      v103 = a7;
      v58 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(v58, v40);
      v59 = HIDWORD(v116);
      if ((v116 & 0x8000000000000000) == 0)
      {
        do
        {
          v60 = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a2, v59);
          if (v60 >= 1)
          {
            v61 = v60;
            for (k = 0; k != v61; ++k)
            {
              v63 = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a2, v59, k);
              v124.length = CFArrayGetCount(v58);
              v124.location = 0;
              if (CFArrayGetFirstIndexOfValue(v58, v124, v63) == -1)
              {
                videoMentorFrameNodeAddDependentNode(v63, v40);
              }

              CFArrayAppendValue(v58, v63);
              v64 = *(v63 + 4);
              v125.length = CFArrayGetCount(v64);
              v125.location = 0;
              CFArrayAppendArray(v58, v64, v125);
            }
          }
        }

        while (v59-- > 0);
      }

      a7 = v103;
      a1 = v111;
      if (v58)
      {
        CFRelease(v58);
      }
    }

    if (!CFArrayGetCount(*(v40 + 32)))
    {
      videoMentorFrameNodeAddDependentNode(*a2, v40);
    }

    if (!*(v40 + 64))
    {
      goto LABEL_109;
    }

    v66 = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a2, SHIDWORD(v116));
    if (!v112)
    {
      v71 = v66;
      if (v66 >= 1)
      {
        v72 = 0;
        do
        {
          v73 = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a2, SHIDWORD(v116), v72);
          *(v73 + 64) = 0;
          CFArrayAppendValue(Mutable, v73);
          ++v72;
        }

        while (v71 != v72);
      }

      v74 = *(a2 + 64);
      v75 = SHIDWORD(v116);
      goto LABEL_108;
    }

    v67 = SHIDWORD(v116);
    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 64), SHIDWORD(v116));
    if (ValueAtIndex == v18)
    {
      v74 = *(a2 + 64);
      v75 = v67;
LABEL_108:
      CFArraySetValueAtIndex(v74, v75, v40);
LABEL_109:
      if (!a7)
      {
        goto LABEL_146;
      }

      goto LABEL_110;
    }

    v69 = ValueAtIndex;
    if (CFGetTypeID(ValueAtIndex) == sVideoMentorFrameNodeID)
    {
      v70 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(v70, v69);
      CFArrayAppendValue(v70, v40);
      CFArraySetValueAtIndex(*(a2 + 64), v67, v70);
      CFRelease(v70);
      if (!a7)
      {
        goto LABEL_146;
      }
    }

    else
    {
      CFArrayAppendValue(v69, v40);
      if (!a7)
      {
        goto LABEL_146;
      }
    }

LABEL_110:
    v76 = *(a1 + 528);
    if (v76 && !v107)
    {
      v77 = *(a2 + 80);
      v78 = *(CMBaseObjectGetVTable() + 16);
      if (v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = 0;
      }

      v80 = *(CMBaseObjectGetVTable() + 16);
      if (v80)
      {
        v81 = v80;
      }

      else
      {
        v81 = 0;
      }

      if (v79 == v81 && *(v79 + 32) && (*(v81 + 32))(v77, v76))
      {
        v107 = 0;
        goto LABEL_123;
      }

      if (*(v40 + 160))
      {
        v107 = 1;
LABEL_123:
        a1 = v111;
        goto LABEL_146;
      }

      v104 = a7;
      v82 = *(v111 + 544);
      v16 = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
      v83 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      v84 = CFArrayGetCount(*(a2 + 64));
      if (v84 >= v82 + 1)
      {
        v85 = v82 + 1;
      }

      else
      {
        v85 = v84;
      }

      if (v82 == 0x7FFFFFFF)
      {
        v86 = v84;
      }

      else
      {
        v86 = v85;
      }

      if (v86 >= 1)
      {
        for (m = 0; m != v86; ++m)
        {
          v88 = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a2, m);
          if (v88 >= 1)
          {
            v89 = v88;
            for (n = 0; n != v89; ++n)
            {
              v91 = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a2, m, n);
              CFArrayAppendValue(v83, v91);
            }
          }
        }
      }

      CFArrayAppendValue(v83, v40);
      a7 = v104;
      a1 = v111;
      if (CFArrayGetCount(v83) >= 1)
      {
        do
        {
          v92 = CFArrayGetValueAtIndex(v83, 0);
          CFArrayRemoveValueAtIndex(v83, 0);
          if (!CFSetContainsValue(v16, v92))
          {
            CFSetSetValue(v16, v92);
            v93 = v92[4];
            v126.length = CFArrayGetCount(v93);
            v126.location = 0;
            CFArrayAppendArray(v83, v93, v126);
          }
        }

        while (CFArrayGetCount(v83) > 0);
      }

      if (v83)
      {
        CFRelease(v83);
      }

      v107 = 1;
    }

LABEL_146:
    if (v109)
    {
      if (*(v40 + 158) || *(v40 + 159))
      {
        *(v40 + 68) = 0x200000002;
      }

      else if (!*(v40 + 76))
      {
        *(v40 + 76) = 1;
        v96 = *(v40 + 56);
        if (v96)
        {
          --*(v96 + 80);
        }
      }
    }

    v94 = *(a2 + 80);
    v95 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (!v95)
    {
LABEL_166:
      v17 = 4294954514;
      goto LABEL_159;
    }

    NodeForCursor = v95(v94, 1, &v121);
    if (NodeForCursor)
    {
      goto LABEL_174;
    }

    a4 = v108;
    if (v121 != 1)
    {
      break;
    }

    if (*(a2 + 88))
    {
      goto LABEL_168;
    }
  }

  *(a2 + 88) = 1;
LABEL_168:
  if (v107)
  {
    a6 = v101;
  }

  else
  {
    a6 = v101;
    if (v16)
    {
      CFRelease(v16);
      v16 = 0;
    }
  }

  if (*(a2 + 88))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (a6)
  {
    *a6 = Mutable;
    Mutable = 0;
  }

  v17 = 0;
  if (a7)
  {
    *a7 = v16;
    v16 = 0;
  }

LABEL_159:
  if (v123[0])
  {
    CFRelease(v123[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v17;
}

uint64_t videoMentorReportIssueWithRefreshNode(uint64_t a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  v8 = 0;
  cf[0] = 0;
  if (a1)
  {
    v1 = *(a1 + 16);
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v2)
    {
      v2(v1, 0, 0, cf, &v8);
      if (!v8)
      {
        if (cf[0])
        {
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v4)
          {
            v4(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &v8);
          }
        }
      }
    }
  }

  if (FigCanTriggerTapToRadar())
  {
    RadarDescriptionString = FigTapToRadarCreateRadarDescriptionString();
    FigTriggerTapToRadar();
    if (RadarDescriptionString)
    {
      CFRelease(RadarDescriptionString);
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return 0;
}

void videoMentorAddRefreshGroupToProcess(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 80))
  {
    videoMentorRefreshGroupMarkAsProcessed(a2);
  }

  if (!*(a2 + 56))
  {
    Count = CFArrayGetCount(*(a1 + 96));
    if (Count < 1)
    {
LABEL_18:
      v14 = *(a1 + 96);

      CFArrayAppendValue(v14, a2);
      return;
    }

    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), v6);
      v8 = ValueAtIndex[8];
      v9 = *(a2 + 64);
      v10 = *(CMBaseObjectGetVTable() + 16);
      if (v10)
      {
        v11 = v10;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      v12 = *(CMBaseObjectGetVTable() + 16);
      if (!v12)
      {
LABEL_13:
        v13 = 0;
        goto LABEL_14;
      }

      v13 = v12;
LABEL_14:
      if (v11 != v13 || !*(v11 + 32) || (*(v13 + 32))(v8, v9) != -1)
      {
        if (ValueAtIndex != a2)
        {
          v15 = *(a1 + 96);

          CFArrayInsertValueAtIndex(v15, v6, a2);
        }

        return;
      }

      if (v5 == ++v6)
      {
        goto LABEL_18;
      }
    }
  }
}

CFIndex videoMentorDependencyStateProcessRefreshGroups(CFArrayRef *a1)
{
  result = CFArrayGetCount(a1[12]);
  if (result >= 1)
  {
    v3 = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[12], 0);
      CFRetain(ValueAtIndex);
      CFArrayRemoveValueAtIndex(a1[12], 0);
      if (!*(ValueAtIndex + 56) && !videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(a1, ValueAtIndex))
      {
        Count = CFArrayGetCount(ValueAtIndex[6]);
        if (Count >= 1)
        {
          for (i = Count; i > 0; i = CFArrayGetCount(ValueAtIndex[6]))
          {
            v7 = ValueAtIndex[6];
            v8 = 0;
            ValueAtIndex[6] = CFArrayCreateMutable(v3, 0, &kVideoMentorActionCallbacks);
            do
            {
              v9 = CFArrayGetValueAtIndex(v7, v8);
              videoMentorDependencyStateExecuteAction(a1, v9);
              ++v8;
            }

            while (i != v8);
            if (v7)
            {
              CFRelease(v7);
            }
          }
        }

        if (*(ValueAtIndex + 58))
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        v11 = CFArrayGetCount(ValueAtIndex[5]);
        if (v11 >= 1)
        {
          v12 = v11;
          for (j = 0; j != v12; ++j)
          {
            v14 = CFArrayGetValueAtIndex(ValueAtIndex[5], j);
            if (!*(v14 + 19))
            {
              v15 = *(v14 + 18);
              v16 = v15 == 1 || v15 == v10;
              if (v16 && *(v14 + 17) == 2)
              {
                v51 = 0;
                v52 = v14;
                videoMentorDependencyStateExecuteAction(a1, &v51);
              }
            }
          }
        }

        if (!videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(a1, ValueAtIndex) && !*(ValueAtIndex + 58))
        {
          if (*(ValueAtIndex + 21) >= 1)
          {
            v17 = CFArrayGetCount(ValueAtIndex[5]);
            if (v17 >= 1)
            {
              v18 = v17;
              for (k = 0; k != v18; ++k)
              {
                v20 = CFArrayGetValueAtIndex(ValueAtIndex[5], k);
                if (!*(v20 + 19) && *(v20 + 18) == 2 && *(v20 + 17) == 2)
                {
                  v51 = 0;
                  v52 = v20;
                  videoMentorDependencyStateExecuteAction(a1, &v51);
                }
              }
            }
          }

          if (!videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(a1, ValueAtIndex))
          {
            v21 = CFArrayGetCount(ValueAtIndex[5]);
            if (v21 >= 1)
            {
              v22 = v21;
              v23 = 0;
              v24 = 0;
              v25 = 0;
              do
              {
                v26 = CFArrayGetValueAtIndex(ValueAtIndex[5], v22 - 1);
                v27 = v26;
                v28 = *(v26 + 19);
                if (v23)
                {
                  if (!v28 && *(v26 + 18) == 2)
                  {
                    v29 = *(v26 + 17);
                    if (v29 == 2)
                    {
                      v51 = 0;
                      v52 = v26;
                      videoMentorDependencyStateExecuteAction(a1, &v51);
                    }

                    else if (v29 == 1)
                    {
                      ++v25;
                    }
                  }
                }

                else if (v28 || *(v26 + 18) != 2)
                {
                  v23 = 0;
                }

                else
                {
                  v49 = v25 + 1;
                  if (!v24)
                  {
                    v24 = v26;
                  }

                  v30 = CFArrayGetCount(v26[4]);
                  if (v30 < 1)
                  {
                    v23 = v27;
                  }

                  else
                  {
                    v31 = v30;
                    v47 = v24;
                    v32 = 0;
                    while (*(CFArrayGetValueAtIndex(v27[4], v32) + 19))
                    {
                      if (v31 == ++v32)
                      {
                        v23 = v27;
                        goto LABEL_61;
                      }
                    }

                    v23 = 0;
LABEL_61:
                    v24 = v47;
                  }

                  v25 = v49;
                }

                v33 = v22-- <= 1;
              }

              while (!v33);
              v50 = v25;
              v48 = v24;
              if (v23)
              {
                v34 = CFArrayGetCount(ValueAtIndex[5]);
                if (v34 >= 1)
                {
                  v35 = v34;
                  do
                  {
                    v36 = CFArrayGetValueAtIndex(ValueAtIndex[5], v35 - 1);
                    if (v36 == v23)
                    {
                      break;
                    }

                    v37 = v36;
                    if (!*(v36 + 19) && *(v36 + 18) == 2 && *(v36 + 17) == 2)
                    {
                      v38 = CFArrayGetCount(v36[4]);
                      if (v38 >= 1)
                      {
                        v39 = v38;
                        v40 = 0;
                        while (1)
                        {
                          v41 = CFArrayGetValueAtIndex(v37[4], v40);
                          if (!*(v41 + 19) && CFArrayGetCount(*(v41 + 3)) == 1)
                          {
                            break;
                          }

                          if (v39 == ++v40)
                          {
                            goto LABEL_76;
                          }
                        }

                        v51 = 0;
                        v52 = v37;
                        videoMentorDependencyStateExecuteAction(a1, &v51);
                      }
                    }

LABEL_76:
                    v33 = v35-- <= 1;
                  }

                  while (!v33);
                }
              }

              if (v50 == 1 && !*(ValueAtIndex + 21))
              {
                v51 = 1;
                v52 = v48;
                videoMentorDependencyStateExecuteAction(a1, &v51);
              }
            }

            if (!videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(a1, ValueAtIndex))
            {
              if (!*(ValueAtIndex + 57))
              {
                v42 = CFArrayGetCount(ValueAtIndex[5]);
                MutableCopy = 0;
                do
                {
                  if (v42 < 1)
                  {
                    break;
                  }

                  v44 = v42 + 1;
                  while (1)
                  {
                    v42 = v44 - 2;
                    v45 = CFArrayGetValueAtIndex(ValueAtIndex[5], v44 - 2);
                    if (!v45[19] && v45[18] != 1)
                    {
                      break;
                    }

                    if (--v44 <= 1)
                    {
                      goto LABEL_98;
                    }
                  }

                  v46 = videoMentorFrameNodeCopyUndeterminedParentNodes(v45);
                  if (MutableCopy)
                  {
                    videoMentorCFSetIntersectsWith(MutableCopy, v46);
                  }

                  else
                  {
                    MutableCopy = CFSetCreateMutableCopy(v3, 0, v46);
                  }

                  if (v46)
                  {
                    CFRelease(v46);
                  }
                }

                while (CFSetGetCount(MutableCopy));
LABEL_98:
                if (MutableCopy)
                {
                  if (CFSetGetCount(MutableCopy) >= 1)
                  {
                    CFSetApplyFunction(MutableCopy, videoMentorDependencyStateSelectNodeApplier, a1);
                  }

                  CFRelease(MutableCopy);
                }

                *(ValueAtIndex + 57) = 1;
              }

              videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(a1, ValueAtIndex);
            }
          }
        }
      }

      CFRelease(ValueAtIndex);
      result = CFArrayGetCount(a1[12]);
    }

    while (result > 0);
  }

  return result;
}

uint64_t FigSampleBufferConsumerGetPendingSampleBufferCount(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigSampleBufferConsumerSetAttachmentOnPendingSampleBuffersInPTSRange(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  VTable = CMBaseObjectGetVTable();
  v12 = *(VTable + 16);
  result = VTable + 16;
  v13 = *(v12 + 56);
  if (v13)
  {
    v16 = *a4;
    v17 = *(a4 + 2);
    v14 = *a5;
    v15 = *(a5 + 2);
    return v13(a1, a2, a3, &v16, &v14);
  }

  return result;
}

uint64_t FigSampleCursorGetMPEG2FrameType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t videoMentorSyncFrameIsOpenGOP()
{
  cf = 0;
  FigSampleCursorGetFigBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(v1, @"SampleDependencyAttributes", *MEMORY[0x1E695E480], &cf);
  }

  FigCFDictionaryGetIntIfPresent();
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t videoMentorRefreshGroupCreate(const __CFAllocator *a1, __int128 *a2, uint64_t *a3)
{
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    videoMentorRefreshGroupCreate_cold_2(&v14);
    return v14;
  }

  v7 = Instance;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v7 + 40) = Mutable;
  if (!Mutable)
  {
    v12 = 1690;
LABEL_9:
    videoMentorRefreshGroupCreate_cold_1(v12, v7, &v13);
    return v13;
  }

  v9 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &kVideoMentorActionCallbacks);
  *(v7 + 48) = v9;
  if (!v9)
  {
    v12 = 1693;
    goto LABEL_9;
  }

  result = 0;
  v11 = *a2;
  *(v7 + 32) = *(a2 + 2);
  *(v7 + 16) = v11;
  *a3 = v7;
  return result;
}

void videoMentorRefreshGroupAddNode(uint64_t a1, uint64_t a2)
{
  *(a2 + 56) = CFRetain(a1);
  CFArrayAppendValue(*(a1 + 40), a2);
  v4 = *(a2 + 76);
  if (v4 == 2)
  {
    ++*(a1 + 84);
  }

  else if (!v4)
  {
    ++*(a1 + 80);
  }

  Count = CFArrayGetCount(*(a1 + 40));
  v6 = *(a2 + 16);
  if (Count == 1)
  {
    v7 = *(a2 + 16);
    if (!v6)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v8 = *(a1 + 64);
  v9 = *(CMBaseObjectGetVTable() + 16);
  if (v9)
  {
    v10 = v9;
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    if (!v8)
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }
  }

  v11 = *(CMBaseObjectGetVTable() + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
LABEL_15:
  if (v10 == v12 && *(v10 + 32) && (*(v12 + 32))(v6, v8) == -1)
  {
    v7 = *(a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  v13 = *(a2 + 16);
  v14 = *(a1 + 72);
  v15 = *(CMBaseObjectGetVTable() + 16);
  if (v15)
  {
    v16 = v15;
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = 0;
    if (!v14)
    {
LABEL_26:
      v18 = 0;
      goto LABEL_27;
    }
  }

  v17 = *(CMBaseObjectGetVTable() + 16);
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v17;
LABEL_27:
  if (v16 == v18 && *(v16 + 32) && (*(v18 + 32))(v13, v14) == 1)
  {
    v6 = *(a2 + 16);
    if (!v7)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0;
    if (!v7)
    {
      goto LABEL_31;
    }
  }

LABEL_29:
  v19 = *(a1 + 64);
  *(a1 + 64) = v7;
  CFRetain(v7);
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_31:
  if (v6)
  {
    v20 = *(a1 + 72);
    *(a1 + 72) = v6;
    CFRetain(v6);
    if (v20)
    {

      CFRelease(v20);
    }
  }
}

uint64_t videoMentorActionArrayRetain(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 16, 0x1020040D5A9D86FLL, 0);
  v4 = v3;
  if (v3)
  {
    *v3 = *a2;
    *(v3 + 8) = CFRetain(*(a2 + 8));
  }

  return v4;
}

void videoMentorActionArrayRelease(const __CFAllocator *a1, CFTypeRef *a2)
{
  CFRelease(a2[1]);

  CFAllocatorDeallocate(a1, a2);
}

__CFString *videoMentorActionArrayCopyDescription(int *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  v4 = "drop";
  v5 = "select";
  v6 = *a1;
  v7 = "??";
  if (*a1 == 2)
  {
    v7 = "reclassify";
  }

  if (v6 != 1)
  {
    v5 = v7;
  }

  if (v6)
  {
    v4 = v5;
  }

  CFStringAppendFormat(Mutable, 0, @"VideoMentorAction: %p %s node %@\n", a1, v4, *(a1 + 1));
  return v3;
}

void videoMentorDependencyStateCloseNodesWithUnknownDependents(uint64_t a1, __CFArray *a2)
{
  Count = CFArrayGetCount(*(a1 + 64));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      CountOfNodesWithUnknownDependentsAtLevel = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a1, i);
      if (CountOfNodesWithUnknownDependentsAtLevel >= 1)
      {
        v8 = CountOfNodesWithUnknownDependentsAtLevel;
        for (j = 0; j != v8; ++j)
        {
          NodeWithUnknownDependentsAtLevel = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a1, i, j);
          *(NodeWithUnknownDependentsAtLevel + 64) = 0;
          CFArrayAppendValue(a2, NodeWithUnknownDependentsAtLevel);
        }
      }
    }
  }

  v11 = *(a1 + 64);

  CFArrayRemoveAllValues(v11);
}

CFIndex videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(uint64_t a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), a2);
  if (ValueAtIndex == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  v3 = ValueAtIndex;
  v4 = CFGetTypeID(ValueAtIndex);
  if (v4 != CFArrayGetTypeID())
  {
    return 1;
  }

  return CFArrayGetCount(v3);
}

const __CFArray *videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(uint64_t a1, CFIndex a2, CFIndex a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), a2);
  v5 = ValueAtIndex;
  if (!a3)
  {
    v6 = CFGetTypeID(ValueAtIndex);
    if (v6 != CFArrayGetTypeID())
    {
      return v5;
    }

    a3 = 0;
  }

  return CFArrayGetValueAtIndex(v5, a3);
}

void videoMentorFrameNodeAddDependentNode(CFMutableArrayRef *a1, CFMutableArrayRef *a2)
{
  if (a1 != a2)
  {
    CFArrayAppendValue(a1[3], a2);
    v5 = a2[4];

    CFArrayAppendValue(v5, a1);
  }
}

void videoMentorFrameNodeRemoveDependentNode(CFMutableArrayRef *a1, const __CFArray **a2, int a3)
{
  v6 = a1[3];
  v12.length = CFArrayGetCount(v6);
  v12.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v12, a2);
  CFArrayRemoveValueAtIndex(a1[3], FirstIndexOfValue);
  v8 = a2[4];
  v13.length = CFArrayGetCount(v8);
  v13.location = 0;
  v9 = CFArrayGetFirstIndexOfValue(v8, v13, a1);
  CFArrayRemoveValueAtIndex(a2[4], v9);
  if (a3)
  {
    CFArrayAppendValue(a1[5], a2);
    v10 = a2[6];

    CFArrayAppendValue(v10, a1);
  }
}

uint64_t videoMentorFrameNodeDetermineIfIsLeaf(const void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = CFArrayCreateMutable(v4, 0, 0);
  v7 = v6;
  if (Mutable)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_30:
    refreshed = 0;
    if (Mutable)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  CFArrayAppendValue(Mutable, a1);
  CFArrayAppendValue(v7, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count < 1)
  {
    refreshed = 0;
    goto LABEL_34;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    v12 = v10 - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v10 - 1);
    v14 = CFArrayGetValueAtIndex(v7, v10 - 1);
    v15 = CFArrayGetCount(ValueAtIndex[3]);
    v16 = v15;
    if (v10 > 0x2710 || v11 >> 4 > 0x270 || v15 >= 10001)
    {
      break;
    }

    if (!v14)
    {
      if (*(ValueAtIndex + 17))
      {
        goto LABEL_28;
      }

      if (*(ValueAtIndex + 64))
      {
        v21 = 1;
LABEL_26:
        *(ValueAtIndex + 17) = v21;
LABEL_28:
        CFArrayRemoveValueAtIndex(Mutable, v12);
        CFArrayRemoveValueAtIndex(v7, v12);
        goto LABEL_29;
      }
    }

    if (v15 > v14)
    {
      while (1)
      {
        v17 = CFArrayGetValueAtIndex(ValueAtIndex[3], v14);
        v18 = *(v17 + 7);
        if (!v18 || v18 != a2)
        {
          v20 = 1;
LABEL_22:
          *(ValueAtIndex + 17) = v20;
          goto LABEL_24;
        }

        v19 = v17;
        v20 = *(v17 + 17);
        if (!v20)
        {
          break;
        }

        if (v20 == 1)
        {
          goto LABEL_22;
        }

        if (v16 == ++v14)
        {
          goto LABEL_25;
        }
      }

      CFArraySetValueAtIndex(v7, v12, v14);
      CFArrayAppendValue(Mutable, v19);
      CFArrayAppendValue(v7, 0);
    }

LABEL_24:
    if (v14 == v16)
    {
LABEL_25:
      v21 = 2;
      goto LABEL_26;
    }

    if (*(ValueAtIndex + 17))
    {
      goto LABEL_28;
    }

LABEL_29:
    ++v11;
    v10 = CFArrayGetCount(Mutable);
    if (v10 <= 0)
    {
      goto LABEL_30;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  refreshed = videoMentorReportIssueWithRefreshNode(ValueAtIndex);
  if (Mutable)
  {
LABEL_34:
    CFRelease(Mutable);
  }

LABEL_35:
  if (v7)
  {
    CFRelease(v7);
  }

  return refreshed;
}

__n128 videoMentorRefreshGroupMarkAsProcessed(uint64_t a1)
{
  v11 = **&MEMORY[0x1E6960C70];
  CFArrayRemoveAllValues(*(a1 + 48));
  *(a1 + 56) = 1;
  Count = CFArrayGetCount(*(a1 + 40));
  if (Count >= 1)
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v5);
      if (*(ValueAtIndex + 19) == 2)
      {
        v8 = ValueAtIndex;
        if (!v6 || (time1 = v11, v9 = *(ValueAtIndex + 128), CMTimeCompare(&time1, &v9) < 0))
        {
          result = v8[8];
          *&v11.value = result;
          v11.epoch = v8[9].n128_i64[0];
          v6 = v8;
        }
      }

      ++v5;
    }

    while (v4 != v5);
    if (v6)
    {
      result = *(a1 + 16);
      v6[6].n128_u64[0] = *(a1 + 32);
      v6[5] = result;
    }
  }

  return result;
}

uint64_t videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(const void **a1, uint64_t a2)
{
  if (!*(a2 + 58) && *(a2 + 80) == 1 && !*(a2 + 84))
  {
    Count = CFArrayGetCount(*(a2 + 40));
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 40), v6);
        if (!ValueAtIndex[19])
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_8;
        }
      }

      v9[1] = ValueAtIndex;
      v9[0] = 1;
      videoMentorDependencyStateExecuteAction(a1, v9);
    }
  }

LABEL_8:
  if (!*(a2 + 80))
  {
    videoMentorRefreshGroupMarkAsProcessed(a2);
  }

  return *(a2 + 56);
}

CFMutableSetRef videoMentorFrameNodeCopyUndeterminedParentNodes(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = CFSetCreateMutable(v2, 0, MEMORY[0x1E695E9F8]);
  v5 = v4;
  if (Mutable)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_9:
    if (!Mutable)
    {
      return v5;
    }

    goto LABEL_6;
  }

  CFArrayAppendValue(Mutable, a1);
  if (CFArrayGetCount(Mutable) >= 1)
  {
    videoMentorFrameNodeCopyUndeterminedParentNodes_cold_1(Mutable, v5);
    goto LABEL_9;
  }

LABEL_6:
  CFRelease(Mutable);
  return v5;
}

void videoMentorCFSetIntersectsWith(CFSetRef theSet, uint64_t a2)
{
  Copy = CFSetCreateCopy(*MEMORY[0x1E695E480], theSet);
  v5[0] = theSet;
  v5[1] = a2;
  CFSetApplyFunction(Copy, videoMentorRemoveFromSetIfNotInIntersection, v5);
  CFRelease(Copy);
}

void videoMentorDependencyStateSelectNodeApplier(uint64_t result, const void **a2)
{
  if (*(result + 76) != 2)
  {
    v4[2] = v2;
    v4[3] = v3;
    v4[0] = 1;
    v4[1] = result;
    videoMentorDependencyStateExecuteAction(a2, v4);
  }
}

void videoMentorRemoveFromSetIfNotInIntersection(void *value, __CFSet **a2)
{
  if (!CFSetContainsValue(a2[1], value))
  {
    v4 = *a2;

    CFSetRemoveValue(v4, value);
  }
}

void videoMentorSavedFrameDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void videoMentorEnqueueEditBoundaryMarker(void *a1, uint64_t a2, CMTime *a3)
{
  v10 = 0;
  *&sampleTimingArray.duration.value = *MEMORY[0x1E6960CC0];
  sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960CC0] + 16);
  sampleTimingArray.presentationTimeStamp = *a3;
  sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v10))
  {
    v5 = a1[7];
    if (v5)
    {
      v5(a1[9], a2, v10);
    }

    CMSetAttachment(v10, *MEMORY[0x1E69604A8], *MEMORY[0x1E695E4D0], 1u);
    v6 = a1[3];
    v7 = v10;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v8(v6, v7);
    }

    CFRelease(v10);
  }
}

uint64_t videoMentorSimulateIFramesOnly(uint64_t a1, CMTime *a2, CMTime *a3, CMTime *a4, int a5, _BYTE *a6, _BYTE *a7)
{
  v27 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    LOBYTE(v26.value) = 0;
    LOBYTE(lhs.value) = 0;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v15)
    {
      v16 = v15(a1, &v26, &lhs, 0);
      if (!v16)
      {
        v17 = LOBYTE(v26.value) - 66;
        if (v17 > 0xE || ((1 << v17) & 0x4081) == 0)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24.value, v24.timescale, LODWORD(v24.epoch));
          return v22;
        }

        v18 = LOBYTE(v26.value) == 73;
        if (LOBYTE(lhs.value))
        {
          v18 = 0;
        }

        HIBYTE(v27) = v18;
        if (LOBYTE(v26.value) != 73)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v16, "<<<< VideoMentor >>>>", 5906, v7);
    return v16;
  }

  v19 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v19)
  {
    v16 = 4294954514;
    goto LABEL_17;
  }

  v16 = v19(a1, &v27 + 1, &v27, 0, 0);
  if (v16)
  {
LABEL_17:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v16, "<<<< VideoMentor >>>>", 5913, v7);
    return v16;
  }

  if (!(HIBYTE(v27) | v27))
  {
LABEL_9:
    v16 = 0;
    *a6 = 0;
    return v16;
  }

LABEL_13:
  if ((a4->flags & 0x1D) == 1)
  {
    memset(&v26, 0, sizeof(v26));
    if (a5 < 0)
    {
      lhs = *a4;
      *&v24.value = *&a2->value;
      epoch = a2->epoch;
    }

    else
    {
      lhs = *a2;
      *&v24.value = *&a4->value;
      epoch = a4->epoch;
    }

    v24.epoch = epoch;
    CMTimeSubtract(&v26, &lhs, &v24);
    lhs = v26;
    v24 = *a3;
    if (CMTimeCompare(&lhs, &v24) < 0)
    {
      *a6 = 0;
    }
  }

  if (!*a6)
  {
    return 0;
  }

  if (HIBYTE(v27))
  {
    *a7 = 1;
  }

  v16 = 0;
  v23 = *&a2->value;
  a4->epoch = a2->epoch;
  *&a4->value = v23;
  return v16;
}

void videoMentorDependencyStateForgetObsoleteRefreshGroups(uint64_t a1, uint64_t a2)
{
  cf = CFRetain(*(a2 + 16));
  Count = CFArrayGetCount(*(a1 + 16));
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i < v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
      v7 = *(ValueAtIndex + 9);
      v8 = *(CMBaseObjectGetVTable() + 16);
      if (v8)
      {
        v9 = v8;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = 0;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      v10 = *(CMBaseObjectGetVTable() + 16);
      if (v10)
      {
        v11 = v10;
        goto LABEL_10;
      }

LABEL_9:
      v11 = 0;
LABEL_10:
      if (v9 != v11 || !*(v9 + 32) || (*(v11 + 32))(cf, v7) != -1)
      {
        v12 = CFArrayGetCount(*(ValueAtIndex + 5));
        if (v12 >= 1)
        {
          v13 = v12;
          for (j = 0; j != v13; ++j)
          {
            v15 = CFArrayGetValueAtIndex(*(ValueAtIndex + 5), j);
            if (CFArrayGetCount(v15[3]) >= 1)
            {
              do
              {
                v16 = CFArrayGetValueAtIndex(v15[3], 0);
                if (v16[7] != ValueAtIndex || *(v15 + 17) == 1)
                {
                  v17 = CFArrayGetCount(v15[4]);
                  if (v17 >= 1)
                  {
                    v18 = v17;
                    for (k = 0; k != v18; ++k)
                    {
                      v20 = CFArrayGetValueAtIndex(v15[4], k);
                      videoMentorFrameNodeAddDependentNode(v20, v16);
                    }
                  }
                }

                videoMentorFrameNodeRemoveDependentNode(v15, v16, 0);
              }

              while (CFArrayGetCount(v15[3]) > 0);
            }

            if (CFArrayGetCount(v15[5]) >= 1)
            {
              do
              {
                v21 = CFArrayGetValueAtIndex(v15[5], 0);
                videoMentorFrameNodeRemoveDroppedDependentNode(v15, v21);
              }

              while (CFArrayGetCount(v15[5]) > 0);
            }

            if (CFArrayGetCount(v15[4]) >= 1)
            {
              do
              {
                v22 = CFArrayGetValueAtIndex(v15[4], 0);
                videoMentorFrameNodeRemoveDependentNode(v22, v15, 0);
              }

              while (CFArrayGetCount(v15[4]) > 0);
            }

            if (CFArrayGetCount(v15[6]) >= 1)
            {
              do
              {
                v23 = CFArrayGetValueAtIndex(v15[6], 0);
                videoMentorFrameNodeRemoveDroppedDependentNode(v23, v15);
              }

              while (CFArrayGetCount(v15[6]) > 0);
            }

            if (*(v15 + 64))
            {
              v24 = CFArrayGetCount(*(a1 + 64));
              v25.location = *(v15 + 38);
              if (v24 > v25.location)
              {
                v25.length = 1;
                CFArrayReplaceValues(*(a1 + 64), v25, a1, 1);
              }
            }

            v26 = *(a1 + 72);
            if (v26 == v15)
            {
              v27 = *a1;
              *(a1 + 72) = *a1;
              if (v27)
              {
                CFRetain(v27);
              }

              CFRelease(v26);
            }

            CFDictionaryRemoveValue(*(a1 + 8), v15);
          }
        }

        CFArrayRemoveAllValues(*(ValueAtIndex + 5));
        CFArrayRemoveAllValues(*(ValueAtIndex + 6));
        CFArrayRemoveValueAtIndex(*(a1 + 16), i--);
        --v4;
      }
    }
  }

  CFRelease(cf);
}

__n128 videoMentorThrottlingStateFree(uint64_t a1)
{
  videoMentorThrottlingStateClearSelectedCursors(a1);
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 80) = 0;
    free(v2);
  }

  *(a1 + 88) = 0;
  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v3 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(a1 + 32) = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  *(a1 + 48) = v5;
  *(a1 + 56) = result;
  *(a1 + 72) = v5;
  *(a1 + 152) = 0;
  return result;
}

void videoMentorPostMinAndMaxUpcomingOutputPTS(uint64_t a1, __int128 *a2, __int128 *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 3) & 0x1D) == 1)
  {
    v8 = *MEMORY[0x1E695E4D0];
    FigCFDictionarySetCMTime();
  }

  else
  {
    v8 = *MEMORY[0x1E695E4C0];
  }

  if ((*(a3 + 3) & 0x1D) == 1)
  {
    v8 = *v7;
    FigCFDictionarySetCMTime();
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6960590], v8);
  v9 = *(a1 + 24);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v10)
  {
    v10(v9, *MEMORY[0x1E69605A8], Mutable, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t FigSampleCursorGetMinimumUpcomingPresentationTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 208);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

void videoMentorFrameNodeRemoveDroppedDependentNode(CFMutableArrayRef *a1, void *a2)
{
  v4 = a1[5];
  v10.length = CFArrayGetCount(v4);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v10, a2);
  CFArrayRemoveValueAtIndex(a1[5], FirstIndexOfValue);
  v6 = a2[6];
  v11.length = CFArrayGetCount(v6);
  v11.location = 0;
  v7 = CFArrayGetFirstIndexOfValue(v6, v11, a1);
  v8 = a2[6];

  CFArrayRemoveValueAtIndex(v8, v7);
}

void videoMentorThrottlingStateClearSelectedCursors(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v1; ++i)
      {
        v6 = *(v3 + v4);
        if (v6)
        {
          CFRelease(v6);
          v3 = *(a1 + 80);
          v1 = *(a1 + 88);
          *(v3 + v4) = 0;
        }

        v4 += 32;
      }
    }
  }
}

__n128 videoMentorThrottlingStateStartNewOrder(uint64_t a1, __int128 *a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  videoMentorThrottlingStateClearSelectedCursors(a1);
  free(*(a1 + 80));
  *(a1 + 88) = 1;
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040B07D1DCCuLL);
  *(a1 + 80) = v10;
  if (!v10)
  {
    *(a1 + 88) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  if (a5)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v11)
    {
      v11(a5, a1);
    }
  }

  v12 = MEMORY[0x1E6960C70];
  v13 = *MEMORY[0x1E6960C70];
  *(a1 + 32) = *MEMORY[0x1E6960C70];
  v14 = *(v12 + 16);
  *(a1 + 48) = v14;
  *(a1 + 56) = v13;
  *(a1 + 72) = v14;
  *(a1 + 152) = 0;
  v15 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v15;
  v16 = *(a3 + 16);
  *(a1 + 104) = *a3;
  *(a1 + 120) = v16;
  v17 = a4[1].n128_u64[0];
  result = *a4;
  *(a1 + 128) = *a4;
  *(a1 + 144) = v17;
  return result;
}

void videoMentorThrottleDroppableFrames(void *a1, uint64_t a2, CMTime *a3, CMTime *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  *&v53.value = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v53.epoch = v8;
  v51.epoch = v8;
  cf = 0;
  v46 = *&v53.value;
  *&v51.value = *&v53.value;
  v50 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v9 || v9(a2, &v51))
  {
    goto LABEL_32;
  }

  if ((*(a1 + 11) & 0x1D) != 1 || (time1 = v51, time2 = *(a1 + 4), CMTimeCompare(&time1, &time2) >= 1))
  {
    if (!*(a1 + 152))
    {
      if (!*a1)
      {
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v12 || v12(a2, a1))
        {
LABEL_32:
          if (cf)
          {
            CFRelease(cf);
          }

          return;
        }
      }

      if ((*(a1 + 11) & 0x1D) != 1)
      {
        if ((*(a1 + 5) & 0x1D) == 1)
        {
          memset(&time1, 0, sizeof(time1));
          v10 = *(a1 + 12);
          time2 = *a3;
          CMTimeMultiplyByFloat64(&time1, &time2, v10);
          lhs = *(a1 + 1);
          rhs = time1;
          CMTimeAdd(&time2, &lhs, &rhs);
          *(a1 + 7) = *&time2.value;
          epoch = time2.epoch;
        }

        else
        {
          *(a1 + 7) = *&v51.value;
          epoch = v51.epoch;
        }

        a1[9] = epoch;
      }

      time1 = *(a1 + 7);
      time2 = *(a1 + 16);
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
LABEL_16:
        time1 = *(a1 + 7);
        time2 = *(a1 + 16);
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          memset(&time1, 0, sizeof(time1));
          time2 = *(a1 + 7);
          lhs = *(a1 + 16);
          CMTimeSubtract(&time1, &time2, &lhs);
          time2 = time1;
          Seconds = CMTimeGetSeconds(&time2);
          time2 = *a3;
          *(a1 + 12) = Seconds / CMTimeGetSeconds(&time2);
          *(a1 + 2) = *(a1 + 7);
          a1[6] = a1[9];
          while (1)
          {
            v14 = *a1;
            v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (!v15)
            {
              break;
            }

            if (v15(*&v14, &v53))
            {
              break;
            }

            time2 = v53;
            lhs = *(a1 + 16);
            if ((CMTimeCompare(&time2, &lhs) & 0x80000000) == 0)
            {
              break;
            }

            if (!videoMentorIsDroppableFrame(*a1))
            {
              v16 = *a1;
              v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (!v17 || v17(*&v16, &cf))
              {
                goto LABEL_32;
              }

              if (videoMentorPushCursorIntoSelectedCursors(a1, cf) < 0)
              {
                videoMentorThrottleDroppableFrames_cold_3();
                goto LABEL_32;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }
            }

            v18 = *a1;
            v19 = *(*(CMBaseObjectGetVTable() + 16) + 176);
            if (v19)
            {
              if (!v19(*&v18, 1, &v50) && v50 == 1)
              {
                continue;
              }
            }

            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      v21 = 0;
      v22 = -1;
      IsDroppableFrame = 1;
      while (1)
      {
        v24 = *a1;
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v25 || v25(*&v24, &v53))
        {
          goto LABEL_32;
        }

        time1 = v53;
        time2 = *(a1 + 7);
        if (CMTimeCompare(&time1, &time2) > 0 || *(a1 + 152))
        {
          break;
        }

        v30 = cf;
        if (cf && !IsDroppableFrame)
        {
          v31 = videoMentorPushCursorIntoSelectedCursors(a1, cf);
          if (v31 < 0)
          {
            videoMentorThrottleDroppableFrames_cold_1();
            goto LABEL_32;
          }

          v22 = v31;
          v21 = 1;
          v30 = cf;
        }

        if (v30)
        {
          CFRelease(v30);
          cf = 0;
        }

        v32 = *a1;
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v33)
        {
          goto LABEL_32;
        }

        if (v33(*&v32, &cf))
        {
          goto LABEL_32;
        }

        IsDroppableFrame = videoMentorIsDroppableFrame(cf);
        v34 = *a1;
        v35 = *(*(CMBaseObjectGetVTable() + 16) + 176);
        if (!v35 || v35(*&v34, 1, &v50))
        {
          goto LABEL_32;
        }

        if (v50 != 1)
        {
          *(a1 + 152) = 1;
        }

LABEL_89:
        time1 = *(a1 + 7);
        time2 = *(a1 + 16);
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      if (cf)
      {
        if (!IsDroppableFrame || !v21)
        {
          v26 = videoMentorPushCursorIntoSelectedCursors(a1, cf);
          if (v26 < 0)
          {
            videoMentorThrottleDroppableFrames_cold_2();
            goto LABEL_32;
          }

          v22 = v26;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }
      }

      else if (!v21)
      {
        v27 = 1;
LABEL_65:
        v48 = *&a3->value;
        v49 = a3->epoch;
        v47 = *a4;
        *&time1.value = v46;
        time1.epoch = v8;
        timescale = 0;
        value = 0;
        lhs = *a3;
        if ((v47.flags & 0x1D) == 1)
        {
          time2 = *a3;
          rhs = *a4;
          CMTimeAdd(&lhs, &time2, &rhs);
        }

        else
        {
          v47 = *a3;
        }

        v36 = &v48;
        if (v27)
        {
          v36 = &v47;
        }

        time2 = *v36;
        v37 = *a1;
        v38 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v38 && !v38(*&v37, &time1) && (time1.flags & 0x1D) == 1 && (rhs = time1, v55 = *(a1 + 16), CMTimeCompare(&rhs, &v55) < 0))
        {
          *&v55.value = *&time1.value;
          v39 = time1.epoch;
        }

        else
        {
          *&v55.value = *(a1 + 8);
          v39 = a1[18];
        }

        v55.epoch = v39;
        v54 = *(a1 + 7);
        CMTimeSubtract(&rhs, &v55, &v54);
        value = rhs.value;
        flags = rhs.flags;
        timescale = rhs.timescale;
        v41 = rhs.epoch;
        if ((rhs.flags & 0x1D) != 1)
        {
          goto LABEL_83;
        }

        rhs.value = value;
        rhs.timescale = timescale;
        v55 = lhs;
        if (CMTimeCompare(&rhs, &v55) < 1)
        {
          goto LABEL_83;
        }

        rhs.value = value;
        rhs.timescale = timescale;
        rhs.flags = flags;
        rhs.epoch = v41;
        v42 = CMTimeGetSeconds(&rhs);
        rhs = v47;
        v43 = v42 / CMTimeGetSeconds(&rhs);
        if (v43 > 2147483650.0)
        {
          v43 = 2147483650.0;
        }

        if (v43 - floor(v43) < 0.01)
        {
          v43 = v43 + -1.0;
        }

        if (v43 > 1.0)
        {
          rhs = v47;
          CMTimeMultiply(&v55, &rhs, v43);
          v54 = *(a1 + 7);
          CMTimeAdd(&rhs, &v54, &v55);
          *(a1 + 2) = *&rhs.value;
          v44 = rhs.epoch;
          a1[6] = rhs.epoch;
          *&v55.value = *(a1 + 2);
          v55.epoch = v44;
          *&v54.value = *&v47.value;
          v45 = v47.epoch;
        }

        else
        {
LABEL_83:
          *(a1 + 2) = *(a1 + 7);
          a1[6] = a1[9];
          v55 = *(a1 + 7);
          *&v54.value = *&time2.value;
          v45 = time2.epoch;
        }

        v54.epoch = v45;
        CMTimeAdd(&rhs, &v55, &v54);
        *(a1 + 7) = rhs;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        time1 = v51;
        time2 = *(a1 + 4);
        if (CMTimeCompare(&time1, &time2) < 1 || *(a1 + 152))
        {
          goto LABEL_16;
        }

        v21 = 0;
        v22 = -1;
        IsDroppableFrame = 1;
        goto LABEL_89;
      }

      v27 = 0;
      if (!*(a1 + 152) && (v22 & 0x8000000000000000) == 0)
      {
        v27 = 0;
        if (a1[11] > v22)
        {
          v28 = a1[10] + 32 * v22;
          v29 = *(a1 + 7);
          *(v28 + 24) = a1[9];
          *(v28 + 8) = v29;
        }
      }

      goto LABEL_65;
    }
  }
}

BOOL videoMentorPopCursorFromSelectedCursors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  if (!v4)
  {
    return *(a1 + 80) == 0;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(a1 + 80);
    v10 = *(v9 + v7);
    if (v10)
    {
      break;
    }

LABEL_14:
    ++v8;
    v7 += 32;
    if (v8 >= v4)
    {
      return *(a1 + 80) == 0;
    }
  }

  v11 = *(CMBaseObjectGetVTable() + 16);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(CMBaseObjectGetVTable() + 16);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v12 == v14 && *(v12 + 32) && (*(v14 + 32))(a2, v10))
  {
    v4 = *(a1 + 88);
    goto LABEL_14;
  }

  if (a3)
  {
    v16 = *(v9 + v7 + 8);
    *(a3 + 16) = *(v9 + v7 + 24);
    *a3 = v16;
  }

  v17 = *(v9 + v7);
  if (v17)
  {
    CFRelease(v17);
    *(v9 + v7) = 0;
  }

  v18 = MEMORY[0x1E6960C70];
  v19 = v9 + v7;
  *(v19 + 8) = *MEMORY[0x1E6960C70];
  *(v19 + 24) = *(v18 + 16);
  return 1;
}

CMTime *videoMentorThreadReduceReversedGroupToSatisfyPassLimit(CMTime *result, uint64_t a2, int a3, unsigned int a4, int a5)
{
  v5 = a2;
  v6 = result;
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3 + 1;
  if (a3 < 0)
  {
    v7 = a2;
  }

  v8 = v7 * a4;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &result[1].value + 5;
    v11 = a2;
    do
    {
      v12 = *v10;
      v10 += 32;
      if (v12)
      {
        ++v9;
      }

      --v11;
    }

    while (v11);
  }

  value = *MEMORY[0x1E6960C80];
  flags = *(MEMORY[0x1E6960C80] + 12);
  timescale = *(MEMORY[0x1E6960C80] + 8);
  v14 = v9 - v8;
  if (v9 <= v8 || a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v17 = 0;
    epoch = *(MEMORY[0x1E6960C80] + 16);
    v19 = &result[1].value + 4;
    v20 = a2;
    do
    {
      v21 = *v19;
      v19 += 32;
      if (v21)
      {
        ++v17;
      }

      --v20;
    }

    while (v20);
    v16 = 0;
    v29 = a5;
    if (a5 && a2 >= 1)
    {
      v22 = 0;
      v16 = 0;
      v23 = result;
      do
      {
        memset(&v32, 0, sizeof(v32));
        result = CMSampleBufferGetOutputPresentationTimeStamp(&v32, v23->value);
        if (BYTE5(v23[1].value))
        {
          time1 = v32;
          time2.value = value;
          time2.timescale = timescale;
          time2.flags = flags;
          time2.epoch = epoch;
          result = CMTimeCompare(&time1, &time2);
          if (result >= 1)
          {
            value = v32.value;
            flags = v32.flags;
            timescale = v32.timescale;
            epoch = v32.epoch;
            v16 = v22;
          }
        }

        v23 = (v23 + 32);
        ++v22;
      }

      while (v5 != v22);
    }

    if (v14 >= v17)
    {
      a5 = v29;
      if (v5 >= 1)
      {
        v26 = 0;
        v27 = v9 - v17;
        v28 = &v6[1].value + 5;
        do
        {
          if (*(v28 - 1))
          {
            *v28 = 0;
          }

          else if (*v28)
          {
            v26 += v14 - v17;
            if (v26 >= v27)
            {
              *v28 = 0;
              v26 -= v27;
            }
          }

          v28 += 32;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      a5 = v29;
      if (v5 >= 1)
      {
        v24 = 0;
        v25 = &v6[1].value + 5;
        do
        {
          if (*(v25 - 1))
          {
            v24 += v14;
            if (v24 >= v17)
            {
              *v25 = 0;
              v24 -= v17;
            }
          }

          v25 += 32;
          --v5;
        }

        while (v5);
      }
    }
  }

  if (a5)
  {
    if ((flags & 0x1D) == 1)
    {
      *(&v6[1].value + 32 * v16 + 5) = 1;
    }
  }

  return result;
}