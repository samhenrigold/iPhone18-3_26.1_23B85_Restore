uint64_t FigUserDataSerializerCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigUserDataSerializerCopyProperty_cold_1(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"freeAtomSize"))
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = (v7 + 8);
  }

  else
  {
    if (!CFEqual(a2, @"minimumSize"))
    {
      if (!CFEqual(a2, @"format"))
      {
        return 4294954512;
      }

      v10 = CFRetain(@"com.apple.quicktime.udta");
      goto LABEL_7;
    }

    v8 = *MEMORY[0x1E695E480];
    v9 = (v7 + 12);
  }

  v10 = CFNumberCreate(v8, kCFNumberSInt32Type, v9);
LABEL_7:
  v11 = v10;
  result = 0;
  *a4 = v11;
  return result;
}

uint64_t FigUserDataSerializerAddItem(const void *a1, const void *a2, __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v36 = 0;
  cf = 0;
  value = 0;
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigUserDataSerializerAddItem_cold_4(&v37);
    goto LABEL_60;
  }

  if (!a2 || !a3 || !a4)
  {
    FigUserDataSerializerAddItem_cold_3(&v37);
    goto LABEL_60;
  }

  v11 = DerivedStorage;
  ActualKey = FigUserDataCreateActualKey(a1, a2, a3, &v36, &key);
  if (ActualKey)
  {
    goto LABEL_61;
  }

  if (*(v11 + 16))
  {
    if (v36 == 1952540515 || v36 == 1851878757)
    {
      goto LABEL_21;
    }

    if (v36 == -1453039239)
    {
      v13 = CFGetTypeID(a4);
      if (v13 == CFStringGetTypeID())
      {
        goto LABEL_31;
      }

      v14 = CFGetTypeID(a4);
      TypeID = CFDateGetTypeID();
      goto LABEL_22;
    }

    if (HIBYTE(v36) == 169 || FigUserDataWeKnowIsISOText(v36))
    {
LABEL_21:
      v14 = CFGetTypeID(a4);
      TypeID = CFStringGetTypeID();
    }

    else
    {
      v14 = CFGetTypeID(a4);
      TypeID = CFDataGetTypeID();
    }

LABEL_22:
    if (v14 != TypeID)
    {
      FigUserDataSerializerAddItem_cold_6(&v37);
LABEL_60:
      NewItem = v37;
      goto LABEL_43;
    }

    goto LABEL_31;
  }

  if (v36 > 1970430323)
  {
    if (v36 == 2037543523 || v36 == 1970430324)
    {
      v16 = CFGetTypeID(a4);
      v17 = CFNumberGetTypeID();
      goto LABEL_30;
    }
  }

  else
  {
    if (v36 == 1684108389)
    {
      v19 = CFGetTypeID(a4);
      if (v19 == CFStringGetTypeID())
      {
        goto LABEL_31;
      }

      v16 = CFGetTypeID(a4);
      v17 = CFDateGetTypeID();
      goto LABEL_30;
    }

    if (v36 == 1952540515)
    {
      v16 = CFGetTypeID(a4);
LABEL_25:
      v17 = CFStringGetTypeID();
      goto LABEL_30;
    }
  }

  IsISOText = FigISOUserDataWeKnowIsISOText(v36);
  v16 = CFGetTypeID(a4);
  if (IsISOText)
  {
    goto LABEL_25;
  }

  v17 = CFDataGetTypeID();
LABEL_30:
  if (v16 != v17)
  {
    FigUserDataSerializerAddItem_cold_5(&v37);
    goto LABEL_60;
  }

LABEL_31:
  Mutable = *v11;
  if (!*v11)
  {
    v21 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *v11 = Mutable;
    if (!Mutable)
    {
      FigUserDataSerializerAddItem_cold_2(&v37);
      goto LABEL_60;
    }
  }

  if (!CFDictionaryGetValueIfPresent(Mutable, key, &value))
  {
    NewItem = FigUserDataCreateNewItem(a1, a4, a5, &cf);
    if (NewItem)
    {
      goto LABEL_43;
    }

    v29 = cf;
    CFDictionarySetValue(*v11, key, cf);
    if (!v29)
    {
      goto LABEL_45;
    }

LABEL_44:
    CFRelease(v29);
    goto LABEL_45;
  }

  v22 = CFGetTypeID(value);
  if (v22 == CFDictionaryGetTypeID())
  {
    v23 = value;
    if (FigCFEqual() && FigQTUserDataPropertiesIndicateSameLanguageCode(v23, a5))
    {
      goto LABEL_42;
    }

    ActualKey = FigUserDataCreateNewItem(a1, a4, a5, &cf);
    if (!ActualKey)
    {
      v24 = CFGetAllocator(a1);
      v25 = CFArrayCreateMutable(v24, 0, MEMORY[0x1E695E9C0]);
      if (!v25)
      {
        FigUserDataSerializerAddItem_cold_1(&v37);
        goto LABEL_60;
      }

      v26 = v25;
      CFArrayAppendValue(v25, v23);
      v27 = cf;
      CFArrayAppendValue(v26, cf);
      CFDictionarySetValue(*v11, key, v26);
      if (v27)
      {
        CFRelease(v27);
        cf = 0;
      }

      CFRelease(v26);
LABEL_42:
      NewItem = 0;
      goto LABEL_43;
    }

LABEL_61:
    NewItem = ActualKey;
LABEL_43:
    v29 = cf;
    if (!cf)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (FigCFEqual() && CFArrayGetCount(value) >= 1)
  {
    v31 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(value, v31);
      if (FigQTUserDataPropertiesIndicateSameLanguageCode(ValueAtIndex, a5))
      {
        goto LABEL_42;
      }
    }

    while (++v31 < CFArrayGetCount(value));
  }

  NewItem = FigUserDataCreateNewItem(a1, a4, a5, &cf);
  if (NewItem)
  {
    goto LABEL_43;
  }

  v29 = cf;
  CFArrayAppendValue(value, cf);
  if (v29)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (key)
  {
    CFRelease(key);
  }

  return NewItem;
}

CFDictionaryRef *FigUserDataSerializerContainsKey(const void *a1, const void *a2, __CFString *a3)
{
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (!DerivedStorage)
  {
    FigUserDataSerializerContainsKey_cold_2();
    return v7;
  }

  if (a2 && a3)
  {
    if (*DerivedStorage)
    {
      ActualKey = FigUserDataCreateActualKey(a1, a2, a3, 0, &key);
      v10 = key;
      if (ActualKey)
      {
        v7 = 0;
        if (!key)
        {
          return v7;
        }
      }

      else
      {
        v7 = CFDictionaryContainsKey(*v7, key);
        v10 = key;
        if (!key)
        {
          return v7;
        }
      }

      CFRelease(v10);
      return v7;
    }
  }

  else
  {
    FigUserDataSerializerContainsKey_cold_1();
  }

  return 0;
}

BOOL FigQTUserDataPropertiesIndicateSameLanguageCode(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v7 = 0;
  PackedLanguageCodeFromProperties = FigQTUserDataGetPackedLanguageCodeFromProperties(a1, &v7);
  v6 = 0;
  v4 = FigQTUserDataGetPackedLanguageCodeFromProperties(a2, &v6);
  result = 0;
  if (PackedLanguageCodeFromProperties && v4)
  {
    return v7 == v6;
  }

  return result;
}

uint64_t FigUserDataCreateNewItem(const void *a1, const void *a2, const __CFDictionary *a3, __CFDictionary **a4)
{
  v7 = CFGetAllocator(a1);
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v9 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"value", a2);
    result = 0;
    *a4 = v9;
  }

  else
  {
    FigUserDataCreateNewItem_cold_1(&v11);
    return v11;
  }

  return result;
}

BOOL FigQTUserDataGetPackedLanguageCodeFromProperties(const __CFDictionary *a1, _WORD *a2)
{
  Value = CFDictionaryGetValue(a1, @"locale");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFLocaleGetTypeID())
    {
      PackedISO639_2TFromLocale = FigMetadataGetPackedISO639_2TFromLocale(v5);
      goto LABEL_13;
    }
  }

  v8 = CFDictionaryGetValue(a1, @"languageCode");
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CFGetTypeID(v8);
  if (v10 != CFNumberGetTypeID())
  {
    v12 = CFGetTypeID(v9);
    if (v12 == CFStringGetTypeID())
    {
      PackedISO639_2TFromLocale = FigMetadataGetPackedISO639_2T(v9);
LABEL_13:
      v11 = 1;
      if (!a2)
      {
        return v11;
      }

      goto LABEL_14;
    }

    return 0;
  }

  valuePtr = 0;
  CFNumberGetValue(v9, kCFNumberSInt16Type, &valuePtr);
  v11 = valuePtr > 0x3FFu && valuePtr != 0x7FFF;
  if (v11)
  {
    PackedISO639_2TFromLocale = valuePtr;
  }

  else
  {
    PackedISO639_2TFromLocale = 0;
  }

  if (a2)
  {
LABEL_14:
    if (v11)
    {
      *a2 = PackedISO639_2TFromLocale;
      return 1;
    }
  }

  return v11;
}

uint64_t FigUserDataSerializerCreateCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!a3)
    {
      FigUserDataSerializerCreateCopy_cold_1(&v14);
      return v14;
    }

    v6 = DerivedStorage;
    FigMetadataSerializerCreateUserDataCommon(a1, 1, &v13);
    v8 = v7;
    v9 = v13;
    if (v8)
    {
      goto LABEL_11;
    }

    v10 = CMBaseObjectGetDerivedStorage();
    if (*v6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, *v6);
    }

    else
    {
      MutableCopy = 0;
    }

    v8 = 0;
    *v10 = MutableCopy;
    *(v10 + 8) = *(v6 + 8);
    *(v10 + 16) = *(v6 + 16);
    v9 = v13;
  }

  else
  {
    FigUserDataSerializerCreateCopy_cold_2(&v14);
    v9 = 0;
    v8 = v14;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  if (!v8)
  {
    *a3 = v9;
    return v8;
  }

LABEL_11:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

uint64_t FigVTTNoteBlockCreate(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTNoteBlockCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTNoteBlock_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTNoteBlock_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"note: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figVTTNoteBlock_GetNodeType(uint64_t a1, _DWORD *a2)
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
    figVTTNoteBlock_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTNoteBlock_copyNodeDocumentSerialization(uint64_t a1, CFStringRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
    v4 = *(DerivedStorage + 8);
    if (v4 && (v5 = CFRetain(v4)) != 0)
    {
      v6 = v5;
      *a2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@\n%@\n", @"NOTE", v5);
      CFRelease(v6);
      return 0;
    }

    else
    {
      figVTTNoteBlock_copyNodeDocumentSerialization_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    figVTTNoteBlock_copyNodeDocumentSerialization_cold_2(&v9);
    return v9;
  }
}

uint64_t frlo_registerFigRenderedLegibleOutputManager()
{
  result = _CFRuntimeRegisterClass();
  sFigRenderedLegibleOutputManagerID = result;
  return result;
}

uint64_t FigRenderedLegibleOutputManagerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = (a2 | a3) != 0;
  if ((a4 == 0) == v5)
  {
    FigRenderedLegibleOutputManagerCreate_cold_1(label);
    return *label;
  }

  if (!a5)
  {
    FigRenderedLegibleOutputManagerCreate_cold_7(label);
    return *label;
  }

  *a5 = 0;
  MEMORY[0x19A8D3660](&FigRenderedLegibleOutputManagerGetTypeID_sRegisterFigRenderedLegibleOutputManagerOnce, frlo_registerFigRenderedLegibleOutputManager);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigRenderedLegibleOutputManagerCreate_cold_6(label);
    return *label;
  }

  v11 = Instance;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  v11[9] = Mutable;
  if (!Mutable)
  {
    FigRenderedLegibleOutputManagerCreate_cold_5(label);
LABEL_25:
    v19 = *label;
    goto LABEL_15;
  }

  v14 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], 0);
  v11[8] = v14;
  if (!v14)
  {
    FigRenderedLegibleOutputManagerCreate_cold_4(label);
    goto LABEL_25;
  }

  v15 = FigCaptionRendererSessionCreate(0, 0, v11, v11 + 12);
  if (!v15)
  {
    v16 = v11[12];
    if (!v16)
    {
      v19 = 0;
      goto LABEL_15;
    }

    v15 = FigCaptionRendererSessionSetLegibleOutputDevice(v16);
    if (!v15)
    {
      snprintf(__str, 0x100uLL, "com.apple.coremedia.renderedlegibleoutput.notificationqueue<%p>", v11);
      v17 = dispatch_queue_create(__str, 0);
      v11[3] = v17;
      if (v17)
      {
        snprintf(label, 0x100uLL, "com.apple.coremedia.renderedlegibleoutput.messagequeue<%p>", v11);
        v18 = dispatch_queue_create(label, 0);
        v11[2] = v18;
        if (v18)
        {
          if (a4 && v5)
          {
            v11[4] = a2;
            v11[5] = a3;
            v11[6] = FigCFWeakReferenceHolderCreateWithReferencedObject();
          }

          v19 = 0;
          *a5 = CFRetain(v11);
        }

        else
        {
          FigRenderedLegibleOutputManagerCreate_cold_2(&v21);
          v19 = v21;
        }

        goto LABEL_15;
      }

      FigRenderedLegibleOutputManagerCreate_cold_3(label);
      goto LABEL_25;
    }
  }

  v19 = v15;
LABEL_15:
  CFRelease(v11);
  return v19;
}

uint64_t FigRenderedLegibleOutputManagerSetRenderedLegibleOutputsDict(dispatch_queue_t *cf, CFTypeRef a2)
{
  v3 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v6[0] = cf;
  if (a2)
  {
    v4 = CFRetain(a2);
  }

  else
  {
    v4 = 0;
  }

  v6[1] = v4;
  dispatch_sync_f(v3[2], v6, frlo_setLegibleOutputsDictDo);
  return 0;
}

void frlo_setLegibleOutputsDictDo(CFTypeRef *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v3[7];
  v3[7] = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a1;
  CFDictionaryApplyFunction(*(*a1 + 9), frlo_finalizeFigRenderedLegibleOutputApplier, 0);
  CFDictionaryRemoveAllValues(v5[9]);
  CFDictionaryRemoveAllValues(v5[8]);
  v6 = v5[7];
  if (v6)
  {
    CFDictionaryApplyFunction(v6, frlo_rebuildFigRenderedLegibleOutputs_applier, v5);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v7 = a1[1];
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t FigRenderedLegibleOutputManagerSetNonForcedEnabledForMediaType(dispatch_queue_t *cf, int a2, unsigned __int8 a3)
{
  v5 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v7 = cf;
  v8 = a2;
  v9 = a3;
  dispatch_sync_f(v5[2], &v7, frlo_setNonForcedEnabledForMediaTypeDo);
  return 0;
}

void frlo_setNonForcedEnabledForMediaTypeDo(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 1935832172)
  {
    v6 = *(a1 + 12);
    v4 = *a1;
    *(*a1 + 81) = v6;
    v5 = frlo_clearPreviousSubtitles;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v2 != 1668047728)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 12);
    v4 = *a1;
    *(*a1 + 80) = v3;
    v5 = frlo_clearPreviousClosedCaptions;
    if (!v3)
    {
LABEL_6:
      CFDictionaryApplyFunction(v4[9], v5, 0);
LABEL_7:
      v4 = *a1;
      if (!*a1)
      {
        return;
      }
    }
  }

  CFRelease(v4);
}

CFMutableArrayRef FigRenderedLegibleOutputManagerEnsureRenderPipelinesForFormat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = Mutable;
  if (Mutable)
  {
    v11[0] = a1;
    v11[1] = a2;
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = Mutable;
    v11[5] = 0;
    dispatch_sync_f(*(a1 + 16), v11, frlo_ensureRenderPipelinesForFormatDo);
  }

  else
  {
    FigRenderedLegibleOutputManagerEnsureRenderPipelinesForFormat_cold_1();
  }

  return v9;
}

void frlo_ensureRenderPipelinesForFormatDo(void *a1)
{
  v2 = *(*a1 + 56);
  if (v2 && CFDictionaryGetCount(v2) >= 1 && a1[4])
  {
    v3 = *(*a1 + 56);

    CFDictionaryApplyFunction(v3, frlo_ensureRenderPipelinesForFormatDo_applier, a1);
  }
}

uint64_t FigRenderedLegibleOutputManagerForgetAboutRenderedLegibleOutputRenderPipelines(uint64_t a1)
{
  context = a1;
  dispatch_sync_f(*(a1 + 16), &context, frlo_forgetAboutRenderedLegibleOutputRenderPipelinesDo);
  return 0;
}

void frlo_forgetAboutRenderedLegibleOutputRenderPipelinesDo(uint64_t a1)
{
  CFDictionaryRemoveAllValues(*(*a1 + 64));
  v2 = *(*a1 + 72);

  CFDictionaryApplyFunction(v2, frlo_forgetAboutRenderPipelines, 0);
}

uint64_t FigRenderedLegibleOutputManagerForgetAboutRenderedLegibleOutputRenderPipeline(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  dispatch_sync_f(*(a1 + 16), v3, frlo_forgetAboutRenderedLegibleOutputRenderPipelineDo);
  return 0;
}

void frlo_forgetAboutRenderedLegibleOutputRenderPipelineDo(const void **a1)
{
  CFDictionaryRemoveValue(*(*a1 + 8), a1[1]);
  v2 = *(*a1 + 9);

  CFDictionaryApplyFunction(v2, frlo_forgetAboutRenderPipeline, a1);
}

double frlo_init(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void frlo_finalize(void *a1)
{
  a1[4] = 0;
  a1[5] = 0;
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    dispatch_release(v4);
    a1[3] = 0;
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
    CFDictionaryApplyFunction(v6, frlo_finalizeFigRenderedLegibleOutputApplier, 0);
    v7 = a1[9];
    if (v7)
    {
      CFRelease(v7);
      a1[9] = 0;
    }
  }

  v8 = a1[7];
  if (v8)
  {
    CFRelease(v8);
    a1[7] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    CFRelease(v9);
    a1[11] = 0;
  }

  v10 = a1[12];
  if (v10)
  {

    CFRelease(v10);
  }
}

__CFString *frlo_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigRenderedLegibleOutputManager %p>", a1);
  return Mutable;
}

void frlo_finalizeFigRenderedLegibleOutputApplier(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    v3 = a2[6];
    if (v3)
    {
      CFRelease(v3);
      a2[6] = 0;
    }

    v4 = a2[7];
    if (v4)
    {
      CFRelease(v4);
      a2[7] = 0;
    }

    if (*a2)
    {
      CFRelease(*a2);
    }

    free(a2);
  }
}

void frlo_rebuildFigRenderedLegibleOutputs_applier(const void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  v13 = **&MEMORY[0x1E6960CC0];
  Value = CFDictionaryGetValue(theDict, @"RenderedLegibleOutputKey_AdvanceInterval");
  if (Value)
  {
    seconds.value = 0;
    CFNumberGetValue(Value, kCFNumberDoubleType, &seconds);
    CMTimeMakeWithSeconds(&v13, *&seconds.value, 1000);
  }

  *&seconds.value = *MEMORY[0x1E695F060];
  v7 = CFDictionaryGetValue(theDict, @"RenderedLegibleOutputKey_VideoDisplaySize");
  CGSizeMakeWithDictionaryRepresentation(v7, &seconds);
  v8 = seconds.value;
  v9 = *&seconds.timescale;
  seconds = v13;
  v10 = malloc_type_calloc(1uLL, 0x40uLL, 0x10600404838DB4AuLL);
  if (v10)
  {
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    *v10 = v11;
    *(v10 + 8) = seconds;
    *(v10 + 4) = v8;
    *(v10 + 5) = v9;
    goto LABEL_8;
  }

  if (frlo_rebuildFigRenderedLegibleOutputs_applier_cold_1())
  {
LABEL_8:
    CFDictionaryAddValue(*(a3 + 72), a1, v10);
  }
}

void frlo_newSubtitleSampleArrivedCallback(const void *a1, const void *a2, __int128 *a3, char a4, char a5, void *a6, double a7, double a8, double a9, double a10)
{
  v20 = malloc_type_calloc(1uLL, 0x60uLL, 0x10E004010A499B0uLL);
  if (a6)
  {
    v21 = CFRetain(a6);
  }

  else
  {
    v21 = 0;
  }

  *v20 = v21;
  if (a2)
  {
    v22 = CFRetain(a2);
  }

  else
  {
    v22 = 0;
  }

  *(v20 + 2) = v22;
  v23 = *a3;
  *(v20 + 5) = *(a3 + 2);
  *(v20 + 24) = v23;
  v20[48] = a4;
  v20[49] = a5;
  *(v20 + 7) = a7;
  *(v20 + 8) = a8;
  *(v20 + 9) = a9;
  *(v20 + 10) = a10;
  if (a1)
  {
    v24 = CFRetain(a1);
  }

  else
  {
    v24 = 0;
  }

  *(v20 + 1) = v24;
  v25 = a6[2];

  dispatch_async_f(v25, v20, frlo_convertSubtitleSampleIntoPixelBuffersDo);
}

void frlo_renderPipelineDidFlush(const void *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *v4 = v5;
  if (a1)
  {
    v6 = CFRetain(a1);
  }

  else
  {
    v6 = 0;
  }

  v4[1] = v6;
  v7 = a2[2];

  dispatch_async_f(v7, v4, frlo_renderPipelineDidFlushDo);
}

void frlo_invokeCallbackAndDisposeContext(void *a1)
{
  if (a1[1])
  {
    if (a1[2])
    {
      v2 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v2)
      {
        v3 = v2;
        (a1[1])(*a1, v2);
        CFRelease(v3);
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void frlo_invokeFlushCallbackAndDisposeContext(void *a1)
{
  if (a1[1])
  {
    if (a1[2])
    {
      v2 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v2)
      {
        v3 = v2;
        (a1[1])(*a1, v2);
        CFRelease(v3);
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void frlo_forgetAboutRenderPipelines(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2)
  {
    CFRelease(v2);
    *(a2 + 56) = 0;
  }
}

void frlo_forgetAboutRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 48);
  v3 = *(a2 + 48);
  v5 = *(a3 + 8);
  if (v3 == v5)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = *(a2 + 56);
  v6 = (a2 + 56);
  v3 = v7;
  if (v7 == v5 && v3 != 0)
  {
    v4 = v6;
LABEL_8:
    CFRelease(v3);
    *v4 = 0;
  }
}

void *OUTLINED_FUNCTION_2_78()
{

  return malloc_type_calloc(1uLL, 0x18uLL, 0xE00403260BBE2uLL);
}

double FigMetadataSerializerCreateForiTunes(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    FigMetadataSerializerGetClassID();
    if (!CMDerivedObjectCreate())
    {
      CMBaseObjectGetDerivedStorage();
      *a2 = 0;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954716, "<<<< FMDW_ITUNES >>>>", 1114, v2);
  }

  return result;
}

void FigiTunesMetadataSerializerFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    v3 = *DerivedStorage;
    if (v3)
    {
      CFRelease(v3);
      *v2 = 0;
    }

    v4 = v2[1];
    if (v4)
    {
      CFRelease(v4);
      v2[1] = 0;
    }
  }

  else
  {
    FigiTunesMetadataSerializerFinalize_cold_1();
  }
}

__CFString *FigiTunesMetadataSerializerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    CFStringAppendFormat(Mutable, 0, @" FigiTunesMetadataSerializer %p\n", DerivedStorage);
    CFStringAppendFormat(Mutable, 0, @"  - handle name: %@\n", *(v3 + 8));
    CFStringAppendFormat(Mutable, 0, @"  - free atom size: %d\n", *(v3 + 16));
    CFStringAppendFormat(Mutable, 0, @"  - minimum container size: %d\n", *(v3 + 20));
    CFStringAppendFormat(Mutable, 0, @"%@", *v3);
  }

  else
  {
    FigiTunesMetadataSerializerCopyDebugDescription_cold_1();
  }

  return Mutable;
}

uint64_t FigiTunesMetadataSerializerCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigiTunesMetadataSerializerCopyProperty_cold_1(&v14);
    return v14;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, @"handlerName"))
  {
    if (CFEqual(a2, @"freeAtomSize"))
    {
      v10 = *MEMORY[0x1E695E480];
      v11 = v7 + 2;
    }

    else
    {
      if (!CFEqual(a2, @"minimumSize"))
      {
        if (!CFEqual(a2, @"format"))
        {
          return 4294954512;
        }

        v8 = @"com.apple.itunes";
        goto LABEL_4;
      }

      v10 = *MEMORY[0x1E695E480];
      v11 = v7 + 20;
    }

    v9 = CFNumberCreate(v10, kCFNumberSInt32Type, v11);
    goto LABEL_11;
  }

  v8 = v7[1];
  if (!v8)
  {
    return 4294954513;
  }

LABEL_4:
  v9 = CFRetain(v8);
LABEL_11:
  v13 = v9;
  result = 0;
  *a4 = v13;
  return result;
}

void FigiTunesMetadataSerializerSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigiTunesMetadataSerializerSetProperty_cold_1(&v19);
    return;
  }

  v7 = DerivedStorage;
  if (CFEqual(@"handlerName", a2))
  {
    if (a3)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        v9 = *(v7 + 8);
        *(v7 + 8) = CFRetain(a3);
        if (v9)
        {
          CFRelease(v9);
        }

        return;
      }
    }

    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 297;
  }

  else if (CFEqual(@"freeAtomSize", a2))
  {
    if (a3)
    {
      v13 = CFNumberGetTypeID();
      if (v13 == CFGetTypeID(a3))
      {
        valuePtr = 0;
        if (CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
        {
          *(v7 + 16) = valuePtr;
        }

        else
        {
          v15 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954715, "<<<< FMDW_ITUNES >>>>", 308, v3);
        }

        return;
      }
    }

    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 311;
  }

  else
  {
    if (!CFEqual(@"minimumSize", a2))
    {
      return;
    }

    if (a3)
    {
      v14 = CFNumberGetTypeID();
      if (v14 == CFGetTypeID(a3))
      {
        v17 = 0;
        if (CFNumberGetValue(a3, kCFNumberSInt32Type, &v17))
        {
          *(v7 + 20) = v17;
        }

        else
        {
          v16 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 4294954715, "<<<< FMDW_ITUNES >>>>", 322, v3);
        }

        return;
      }
    }

    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 325;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954715, "<<<< FMDW_ITUNES >>>>", v12, v11);
}

uint64_t FigiTunesMetadataSerializerAddItem(const void *a1, __CFString *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  cf = 0;
  value = 0;
  v24 = 0;
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigiTunesMetadataSerializerAddItem_cold_4(&v28);
LABEL_37:
    v20 = 0;
    goto LABEL_38;
  }

  if (!a2 || !a3 || !a4)
  {
    FigiTunesMetadataSerializerAddItem_cold_3(&v28);
    goto LABEL_37;
  }

  v11 = DerivedStorage;
  v12 = CFGetAllocator(a1);
  FigiTunesMetadataCreateActualKey(v12, a2, a3, &v24, &key);
  if (v13)
  {
LABEL_32:
    NewItem = v13;
    goto LABEL_33;
  }

  Mutable = *v11;
  if (!*v11)
  {
    v15 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *v11 = Mutable;
    if (!Mutable)
    {
      FigiTunesMetadataSerializerAddItem_cold_2(&v28);
      goto LABEL_37;
    }
  }

  if (!CFDictionaryGetValueIfPresent(Mutable, key, &value))
  {
    NewItem = FigiTunesMetadataCreateNewItem(a1, v24, a4, a5, &cf);
    if (!NewItem)
    {
      v20 = cf;
      CFDictionarySetValue(*v11, key, cf);
      goto LABEL_22;
    }

    goto LABEL_33;
  }

  v16 = CFGetTypeID(value);
  if (v16 == CFDictionaryGetTypeID())
  {
    v17 = value;
    v13 = FigiTunesMetadataCreateNewItem(a1, v24, a4, a5, &cf);
    if (!v13)
    {
      v18 = CFGetAllocator(a1);
      v19 = CFArrayCreateMutable(v18, 0, MEMORY[0x1E695E9C0]);
      v20 = v19;
      if (value)
      {
        CFArrayAppendValue(v19, v17);
        v21 = cf;
        CFArrayAppendValue(v20, cf);
        CFDictionarySetValue(*v11, key, v20);
        if (v21)
        {
          CFRelease(v21);
          cf = 0;
        }

        if (v20)
        {
          CFRelease(v20);
          v20 = 0;
        }

        NewItem = 0;
LABEL_17:
        if (cf)
        {
          CFRelease(cf);
          if (!v20)
          {
            goto LABEL_24;
          }

LABEL_23:
          CFRelease(v20);
          goto LABEL_24;
        }

LABEL_22:
        if (!v20)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      FigiTunesMetadataSerializerAddItem_cold_1(&v28);
LABEL_38:
      NewItem = v28;
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  NewItem = FigiTunesMetadataCreateNewItem(a1, v24, a4, a5, &cf);
  if (NewItem)
  {
LABEL_33:
    v20 = 0;
    goto LABEL_17;
  }

  v20 = cf;
  CFArrayAppendValue(value, cf);
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (key)
  {
    CFRelease(key);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return NewItem;
}

double FigiTunesMetadataCreateActualKey(const __CFAllocator *a1, __CFString *a2, const __CFString *a3, unint64_t a4, unint64_t a5)
{
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!(a4 | a5))
  {
    FigiTunesMetadataCreateActualKey_cold_7(&v29);
    return result;
  }

  v12 = CommonKeyToShortKeyMapping;
  valuePtr = 0;
  if (CFEqual(a2, @"comn"))
  {
    v13 = CFGetTypeID(a3);
    if (v13 != CFStringGetTypeID())
    {
      FigiTunesMetadataCreateActualKey_cold_1(&v29);
      return result;
    }

    Value = CFDictionaryGetValue(v12, a3);
    valuePtr = Value;
    if (!Value)
    {
      FigiTunesMetadataCreateActualKey_cold_2(&v29);
      return result;
    }

    v15 = bswap32(Value);
    v16 = CFStringCreateWithFormat(a1, 0, @"%c%c%c%c", v15, BYTE1(v15), BYTE2(v15), HIBYTE(v15));
    a2 = @"itsk";
    goto LABEL_17;
  }

  if (!CFEqual(a2, @"itsk"))
  {
    if (CFEqual(a2, @"itlk"))
    {
      v20 = CFGetTypeID(a3);
      if (v20 != CFStringGetTypeID())
      {
        FigiTunesMetadataCreateActualKey_cold_6(&v29);
        return result;
      }

      v16 = CFRetain(a3);
      goto LABEL_17;
    }

    emitter = fig_log_get_emitter();
    v25 = v5;
    v26 = 4294954712;
    v27 = 858;
LABEL_30:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v26, "<<<< FMDW_ITUNES >>>>", v27, v25);
  }

  v18 = CFGetTypeID(a3);
  if (v18 == CFStringGetTypeID())
  {
    if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
    {
      FigiTunesMetadataCreateActualKey_cold_5(&v29);
      return result;
    }

    v19 = CFRetain(a3);
    goto LABEL_16;
  }

  v21 = CFGetTypeID(a3);
  if (v21 != CFNumberGetTypeID())
  {
    emitter = fig_log_get_emitter();
    v25 = v5;
    v26 = 4294954715;
    v27 = 847;
    goto LABEL_30;
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
    FigiTunesMetadataCreateActualKey_cold_3(&v29);
    return result;
  }

  v22 = bswap32(valuePtr);
  v19 = CFStringCreateWithFormat(a1, 0, @"%c%c%c%c", v22, BYTE1(v22), BYTE2(v22), HIBYTE(v22));
LABEL_16:
  v16 = v19;
  if (valuePtr == 757935405)
  {
    FigiTunesMetadataCreateActualKey_cold_4(&v29);
    if (v16)
    {
      goto LABEL_26;
    }

    return result;
  }

LABEL_17:
  if (a5)
  {
    *a5 = v16;
    v16 = 0;
  }

  if (!a4)
  {
    if (!v16)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (a2)
  {
    v23 = CFRetain(a2);
  }

  else
  {
    v23 = 0;
  }

  *a4 = v23;
  if (v16)
  {
LABEL_26:
    CFRelease(v16);
  }

  return result;
}

uint64_t FigiTunesMetadataCreateNewItem(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4, __CFDictionary **a5)
{
  v9 = CFGetAllocator(a1);
  if (a4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, a4);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v11 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"value", a3);
    CFDictionarySetValue(v11, @"keyspace", a2);
    result = 0;
    *a5 = v11;
  }

  else
  {
    FigiTunesMetadataCreateNewItem_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t FigiTunesMetadataSerializerCreateBBuf(const void *a1, CMBlockBufferRef *a2)
{
  v21 = 0;
  blockBufferOut = 0;
  memset(v20, 0, sizeof(v20));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigiTunesMetadataSerializerCreateBBuf_cold_3(&context);
    v9 = 0;
    v8 = context;
    goto LABEL_34;
  }

  if (!a2)
  {
    FigiTunesMetadataSerializerCreateBBuf_cold_2(&context);
    return context;
  }

  v5 = DerivedStorage;
  v6 = *DerivedStorage;
  if ((!v6 || !CFDictionaryGetCount(v6)) && !v5[1] && !*(v5 + 4) && !*(v5 + 5))
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_34;
  }

  v7 = CFGetAllocator(a1);
  v8 = CMBlockBufferCreateEmpty(v7, 8u, 0, &blockBufferOut);
  v9 = blockBufferOut;
  if (v8)
  {
    goto LABEL_41;
  }

  v10 = FigAtomWriterInitWithBlockBuffer();
  if (v10)
  {
    v8 = v10;
    v9 = blockBufferOut;
    goto LABEL_41;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  appended = FigAtomWriterBeginAtom();
  if (appended)
  {
    goto LABEL_32;
  }

  appended = FigAtomWriterAppendVersionAndFlags();
  if (appended)
  {
    goto LABEL_32;
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  appended = FigAtomWriterInitWithParent();
  if (appended)
  {
    goto LABEL_32;
  }

  v25 = 0;
  context = 0uLL;
  *&v27 = 0;
  WORD4(v27) = 0;
  v13 = CMBaseObjectGetDerivedStorage();
  DWORD2(context) = 1919509613;
  appended = FigAtomWriterBeginAtom();
  if (appended)
  {
    goto LABEL_32;
  }

  v14 = MEMORY[0x1E695E480];
  if (*(v13 + 8))
  {
    BytesFromCFString = FigCreateBytesFromCFString();
    if (!BytesFromCFString)
    {
      FigiTunesMetadataSerializerCreateBBuf_cold_1(&v30);
      v8 = v30;
      if (v30)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    v16 = BytesFromCFString;
  }

  else
  {
    v16 = 0;
  }

  v17 = FigAtomWriterAppendData();
  if (!v17)
  {
    if (v25 < 1 || (v17 = FigAtomWriterAppendData(), !v17))
    {
      v17 = FigAtomWriterEndAtom();
    }
  }

  v8 = v17;
  if (v16)
  {
    CFAllocatorDeallocate(*v14, v16);
  }

  if (v8)
  {
    goto LABEL_33;
  }

LABEL_25:
  v18 = CMBaseObjectGetDerivedStorage();
  appended = FigAtomWriterBeginAtom();
  if (!appended)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    context = 0u;
    appended = FigAtomWriterInitWithParent();
    if (!appended)
    {
      if (*v18)
      {
        CFDictionaryApplyFunction(*v18, FigiTunesMetadataWriteItemAtom, &context);
      }

      appended = FigAtomWriterEndAtom();
      if (!appended)
      {
        appended = FigMetadataWriteFreeAtom(v20, v23, *(v11 + 16), *(v11 + 20));
        if (!appended)
        {
          appended = FigAtomWriterEndAtom();
        }
      }
    }
  }

LABEL_32:
  v8 = appended;
LABEL_33:
  v9 = blockBufferOut;
LABEL_34:
  if (a2 && !v8)
  {
    *a2 = v9;
    return v8;
  }

LABEL_41:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

uint64_t FigiTunesMetadataSerializerCreateCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!a3)
    {
      FigiTunesMetadataSerializerCreateCopy_cold_1(&v15);
      return v15;
    }

    v6 = DerivedStorage;
    FigMetadataSerializerCreateForiTunes(a1, &v14);
    v8 = v7;
    v9 = v14;
    if (v8)
    {
      goto LABEL_13;
    }

    v10 = CMBaseObjectGetDerivedStorage();
    if (*v6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, *v6);
    }

    else
    {
      MutableCopy = 0;
    }

    *v10 = MutableCopy;
    v12 = *(v6 + 8);
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    v8 = 0;
    v10[1] = v12;
    v10[2] = *(v6 + 16);
    v9 = v14;
  }

  else
  {
    FigiTunesMetadataSerializerCreateCopy_cold_2(&v15);
    v9 = 0;
    v8 = v15;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  if (!v8)
  {
    *a3 = v9;
    return v8;
  }

LABEL_13:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

uint64_t FigEndpointManagerForNeroGetShared()
{
  if (LoadOctaviaPlugin_sCreateOnce != -1)
  {
    FigEndpointManagerForNeroGetShared_cold_1();
  }

  v1 = 0;
  if (!sFigNeroEndpointManagerGetShared)
  {
    return 0;
  }

  sFigNeroEndpointManagerGetShared(&v1);
  return v1;
}

uint64_t FigEndpointManagerForCameraPreviewGetShared()
{
  if (LoadOctaviaPlugin_sCreateOnce != -1)
  {
    FigEndpointManagerForNeroGetShared_cold_1();
  }

  v1 = 0;
  if (!sFigNeroEndpointManagerForCameraPreviewGetShared)
  {
    return 0;
  }

  sFigNeroEndpointManagerForCameraPreviewGetShared(&v1);
  return v1;
}

double __LoadOctaviaPlugin_block_invoke()
{
  v0 = dlopen("/System/Library/Audio/Plug-Ins/HAL/OctaviaHalogen.driver/OctaviaHalogen", 4);
  octaviaPlugin = v0;
  if (!v0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_7:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return result;
  }

  sFigNeroEndpointManagerGetShared = dlsym(v0, "FigNeroEndpointManagerGetShared");
  if (!sFigNeroEndpointManagerGetShared)
  {
    v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  sFigNeroEndpointManagerForCameraPreviewGetShared = dlsym(octaviaPlugin, "FigNeroEndpointManagerForCameraPreviewGetShared");
  if (!sFigNeroEndpointManagerForCameraPreviewGetShared)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    goto LABEL_7;
  }

  return result;
}

uint64_t FigAssetReaderCreateWithAsset(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  IsServerProcess = FigServer_IsServerProcess();
  FigKTraceInit();
  if (!a2)
  {
    FigAssetReaderCreateWithAsset_cold_4(&v14);
LABEL_25:
    v8 = 0;
    goto LABEL_27;
  }

  if (!a4)
  {
    FigAssetReaderCreateWithAsset_cold_3(&v14);
    goto LABEL_25;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!IsServerProcess)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v8 = FigOSTransactionCreate();
  if (v8)
  {
LABEL_9:
    FigAssetReaderGetClassID();
    LoggingIdentifier = CMDerivedObjectCreate();
    if (!LoggingIdentifier)
    {
      Storage = remakerFamily_getStorage(0);
      LoggingIdentifier = remakerFamily_generateLoggingIdentifier(82, (Storage + 41));
      if (!LoggingIdentifier)
      {
        *(Storage + 456) = -1;
        *(Storage + 72) = CFRetain(a2);
        FigCFDictionaryGetBooleanIfPresent();
        if (!*(Storage + 32))
        {
          *(Storage + 56) = 0;
          if (!IsServerProcess)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        LoggingIdentifier = assetReader_ensureRemakerQueue(0);
        if (!LoggingIdentifier)
        {
          if (!IsServerProcess)
          {
LABEL_15:
            Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
            *(Storage + 80) = Mutable;
            if (Mutable)
            {
              *(Storage + 8) = FigReentrantMutexCreate();
              *(Storage + 64) = FigReentrantMutexCreate();
              remakerFamily_SetRemakerState(0, 1, 0);
              v12 = 0;
              *a4 = 0;
              goto LABEL_17;
            }

            FigAssetReaderCreateWithAsset_cold_2(&v14);
            goto LABEL_27;
          }

LABEL_14:
          *(Storage + 448) = v8;
          v8 = 0;
          goto LABEL_15;
        }
      }
    }

    v12 = LoggingIdentifier;
    goto LABEL_17;
  }

  FigAssetReaderCreateWithAsset_cold_1(&v14);
LABEL_27:
  v12 = v14;
LABEL_17:
  if (v8)
  {
    os_release(v8);
  }

  return v12;
}

uint64_t assetReader_ensureRemakerQueue(uint64_t a1)
{
  Storage = remakerFamily_getStorage(a1);
  if (*(Storage + 56))
  {
    return 0;
  }

  v2 = Storage;
  v3 = FigDispatchQueueCreateWithPriorityAndClientPID();
  *(v2 + 56) = v3;
  if (v3)
  {
    return 0;
  }

  assetReader_ensureRemakerQueue_cold_1(&v5);
  return v5;
}

void assetReader_SetProperty(const void *a1, const void *a2, const void *a3)
{
  Storage = remakerFamily_getStorage(a1);
  if (CFEqual(a2, @"AssetReader_ClientSecTask"))
  {
    if (*Storage == 1)
    {
      if (a3)
      {
        v7 = CFGetTypeID(a3);
        if (v7 == SecTaskGetTypeID())
        {
          v8 = *(Storage + 440);
          *(Storage + 440) = a3;
          CFRetain(a3);
          if (v8)
          {
            CFRelease(v8);
          }
        }

        else
        {
          assetReader_SetProperty_cold_2(&v16);
        }
      }

      else
      {
        v10 = *(Storage + 440);
        if (v10)
        {
          CFRelease(v10);
          *(Storage + 440) = 0;
        }
      }
    }

    else
    {
      assetReader_SetProperty_cold_1(&v16);
    }
  }

  else if (CFEqual(a2, @"AssetReader_ClientPID"))
  {
    if (*Storage == 1)
    {
      if (a3 && (v9 = CFGetTypeID(a3), v9 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, (Storage + 36));

        remakerfamily_updateClientPID(a1);
      }

      else
      {
        assetReader_SetProperty_cold_4(&v16);
      }
    }

    else
    {
      assetReader_SetProperty_cold_3(&v16);
    }
  }

  else if (CFEqual(a2, @"AssetReader_ThrottleForBackground"))
  {
    if (*Storage == 1)
    {
      if (a3 && (v11 = CFGetTypeID(a3), v11 == CFBooleanGetTypeID()))
      {
        *(Storage + 40) = CFBooleanGetValue(a3);

        remakerfamily_updateThrottleForBackground(a1);
      }

      else
      {
        assetReader_SetProperty_cold_6(&v16);
      }
    }

    else
    {
      assetReader_SetProperty_cold_5(&v16);
    }
  }

  else if (CFEqual(a2, @"AssetReader_IOPolicy"))
  {
    if (*Storage == 1)
    {
      if (a3 && (v12 = CFGetTypeID(a3), v12 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(a3, kCFNumberIntType, (Storage + 456));

        remakerfamily_updateIOPolicy(a1);
      }

      else
      {
        assetReader_SetProperty_cold_8(&v16);
      }
    }

    else
    {
      assetReader_SetProperty_cold_7(&v16);
    }
  }

  else if (CFEqual(a2, @"AssetReader_RealTime"))
  {
    if (*Storage == 1)
    {
      if (a3 && (v13 = CFGetTypeID(a3), v13 == CFBooleanGetTypeID()))
      {
        *(Storage + 32) = CFBooleanGetValue(a3);
      }

      else
      {
        assetReader_SetProperty_cold_10(&v16);
      }
    }

    else
    {
      assetReader_SetProperty_cold_9(&v16);
    }
  }

  else if (CFEqual(a2, @"AssetReader_MinimizeMemoryUsage"))
  {
    if (*Storage >= 4u)
    {
      assetReader_SetProperty_cold_12(&v16);
    }

    else if (a3 && (v14 = CFGetTypeID(a3), v14 == CFBooleanGetTypeID()))
    {
      Value = CFBooleanGetValue(a3);
      *(Storage + 425) = Value;
      remakerFamily_setMemoryUsage(a1, Value);
    }

    else
    {
      assetReader_SetProperty_cold_11(&v16);
    }
  }
}

uint64_t assetReader_EnableDecodedAudioExtractionFromTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v14)
  {
    return v14(a1, a2, a3, a4, a5, 0, 0, a6, a7);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, _DWORD *a7)
{
  v13 = a1;
  v192 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  v187 = 0;
  v188 = 0;
  v186 = 0;
  v185 = 0;
  v183 = 0;
  v184 = 0;
  v181 = 0;
  v182 = 0;
  v179 = 0;
  v180 = 0;
  v178 = 1;
  v177 = 0;
  v175 = 0;
  tagCollectionsOut = 0;
  v173 = 0;
  v174 = 0;
  v165 = v13;
  if (*Storage != 1)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_1(&tagBuffer);
    v50 = 0;
    v51 = 0;
    v31 = 0;
    v32 = 0;
    Mutable = 0;
    v52 = 0;
    v53 = 0;
    value_low = LODWORD(tagBuffer.start.value);
    goto LABEL_67;
  }

  v15 = Storage;
  v16 = *(Storage + 72);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v17)
  {
    goto LABEL_66;
  }

  v155 = a3;
  v18 = v17(v16, a2, &v187);
  if (v18)
  {
LABEL_238:
    value_low = v18;
    v50 = 0;
    v51 = 0;
    v31 = 0;
    v32 = 0;
    goto LABEL_239;
  }

  v19 = v187;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v20)
  {
LABEL_66:
    v50 = 0;
    v51 = 0;
    v31 = 0;
    v32 = 0;
    Mutable = 0;
    v52 = 0;
    v53 = 0;
    value_low = 4294954514;
    goto LABEL_67;
  }

  v18 = v20(v19, 0, &v186);
  if (v18)
  {
    goto LABEL_238;
  }

  if (v186 != 1635088502 && v186 != 1986618469)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v137, v139, v141);
    return v56;
  }

  v21 = CFGetTypeID(v13);
  v18 = remakerFamily_copyFormatDescription(v21, v187, &v183);
  if (v18)
  {
    goto LABEL_238;
  }

  v18 = remakerFamily_createChannel(v13, a2, v186, &v188);
  if (v18)
  {
    goto LABEL_238;
  }

  TrackRotationAngle = remakerFamily_getTrackRotationAngle(v187, &v185 + 1, &v185);
  *v145 = a4;
  theDict = a6;
  *v151 = a5;
  v143 = a7;
  v144 = a2;
  v162 = v15;
  if (!a6)
  {
    v164 = 0;
    v26 = 0;
    v31 = 0;
    v32 = 0;
    Mutable = 0;
    goto LABEL_106;
  }

  cf = 0;
  value = 0;
  if (CFDictionaryGetValueIfPresent(a6, @"AssetReader_MatrixHandling", &value) && CFEqual(value, @"AssetReader_PreserveMatrix"))
  {
    TrackRotationAngle = 0;
    v185 = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (CFDictionaryGetValueIfPresent(a6, @"RemakerVideoProcessingOption_VideoFrameRateConversionAlgorithm", &cf))
  {
    if (cf)
    {
      v22 = CFGetTypeID(cf);
      if (v22 == CFStringGetTypeID() && FigCFEqual() && (*(a5 + 12) & 0x1D) == 1)
      {
        v23 = v188;
        *(v188 + 49) = 1;
        v24 = *(a5 + 16);
        *(v23 + 328) = *a5;
        *(v23 + 344) = v24;
      }
    }
  }

  if (FigCFDictionaryGetInt32IfPresent() && *(v188 + 68))
  {
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (FigCFDictionaryGetBooleanIfPresent() && *(v188 + 121))
  {
    FigCFDictionaryGetCMTimeIfPresent();
  }

  FigCFDictionaryGetBooleanIfPresent();
  theArray = 0;
  if (!CFDictionaryGetValueIfPresent(a6, *MEMORY[0x1E69839B8], &theArray) && !CFDictionaryGetValueIfPresent(a6, *MEMORY[0x1E69839B0], &theArray))
  {
    v164 = 0;
    v26 = 0;
    v31 = 0;
    v32 = 0;
    Mutable = 0;
    goto LABEL_65;
  }

  if (!theArray || (Count = CFArrayGetCount(theArray), Count <= 0))
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_16(&tagBuffer);
    v31 = 0;
    v32 = 0;
    Mutable = 0;
LABEL_220:
    value_low = LODWORD(tagBuffer.start.value);
LABEL_221:
    v50 = 0;
    v51 = 0;
    goto LABEL_222;
  }

  v26 = Count;
  v27 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_15(&tagBuffer);
    goto LABEL_218;
  }

  if (CMVideoFormatDescriptionCopyTagCollectionArray(v183, &tagCollectionsOut))
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_2(&tagBuffer);
    goto LABEL_218;
  }

  if (!tagCollectionsOut || (v29 = CFArrayGetCount(tagCollectionsOut), v26 > v29))
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_14(&tagBuffer);
LABEL_218:
    v31 = 0;
LABEL_219:
    v32 = 0;
    goto LABEL_220;
  }

  v30 = v29;
  v31 = CFArrayCreateMutable(v27, v29, MEMORY[0x1E695E9C0]);
  if (!v31)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_13(&tagBuffer);
    goto LABEL_219;
  }

  v157 = Mutable;
  v32 = CFArrayCreateMutable(v27, v30, MEMORY[0x1E695E9C0]);
  if (!v32)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_12(&tagBuffer);
    value_low = LODWORD(tagBuffer.start.value);
    goto LABEL_226;
  }

  v33 = v27;
  v34 = 0;
  *v163 = *MEMORY[0x1E6960630];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(tagCollectionsOut, v34);
    *&tagBuffer.start.value = *v163;
    *&v169.value = *v163;
    numberOfTagsCopied.value = 0;
    TagsWithCategory = CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_VideoLayerID, &tagBuffer, 1, &numberOfTagsCopied.value);
    if (TagsWithCategory || (TagsWithCategory = CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_StereoView, &v169, 1, &numberOfTagsCopied.value), TagsWithCategory))
    {
      value_low = TagsWithCategory;
LABEL_226:
      Mutable = v157;
      goto LABEL_221;
    }

    FigTagGetSInt64Value();
    FigCFArrayAppendInt64();
    FigTagGetFlagsValue();
    FigCFArrayAppendInt64();
    ++v34;
  }

  while (v30 != v34);
  v37 = 0;
  v38 = 1295;
  Mutable = v157;
  do
  {
    tagBuffer.start.value = 0;
    if (!FigCFArrayGetInt64AtIndex())
    {
      goto LABEL_228;
    }

    if (!FigCFArrayContainsInt64())
    {
      v38 = 1298;
LABEL_228:
      assetReader_EnableDecodedVideoExtractionFromTrack_cold_11(v38, &tagBuffer, &v169);
      value_low = LODWORD(v169.value);
      goto LABEL_221;
    }

    ++v37;
  }

  while (v26 != v37);
  v39 = theArray;
  v169.value = 0;
  if (!theArray || (v40 = CFGetTypeID(theArray), v40 != CFArrayGetTypeID()))
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_9(&tagBuffer);
LABEL_250:
    v135 = LODWORD(tagBuffer.start.value);
    goto LABEL_254;
  }

  v41 = CFGetTypeID(v31);
  if (v41 != CFArrayGetTypeID())
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_3(&tagBuffer);
    goto LABEL_250;
  }

  v42 = v32;
  v43 = CFGetTypeID(v32);
  if (v43 != CFArrayGetTypeID())
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_4(&tagBuffer);
    v135 = LODWORD(tagBuffer.start.value);
LABEL_253:
    v32 = v42;
LABEL_254:
    a6 = theDict;
    v15 = v162;
    if (!v135)
    {
      goto LABEL_215;
    }

    goto LABEL_255;
  }

  v44 = CFArrayGetCount(v39);
  v45 = CFArrayGetCount(v31);
  v164 = CFArrayCreateMutable(v33, v44, MEMORY[0x1E695E9C0]);
  if (!v164)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_8(&tagBuffer);
    v135 = LODWORD(tagBuffer.start.value);
    Mutable = v157;
    goto LABEL_253;
  }

  if (v44 < 1)
  {
    goto LABEL_63;
  }

  v46 = 0;
  while (1)
  {
    numberOfTagsCopied.value = 0;
    flagsForTag[0] = 0;
    if (!FigCFArrayGetInt64AtIndex())
    {
      assetReader_EnableDecodedVideoExtractionFromTrack_cold_7(&v189);
      goto LABEL_234;
    }

    if (v45 < 1)
    {
      goto LABEL_59;
    }

    v47 = 0;
    while (1)
    {
      v189 = 0;
      if (!FigCFArrayGetInt64AtIndex())
      {
        assetReader_EnableDecodedVideoExtractionFromTrack_cold_6(&v189, &v190);
        v135 = v190;
        goto LABEL_212;
      }

      if (numberOfTagsCopied.value == v189)
      {
        break;
      }

      if (v45 == ++v47)
      {
        goto LABEL_59;
      }
    }

    FigCFArrayGetInt64AtIndex();
LABEL_59:
    v48 = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, numberOfTagsCopied.value);
    tagBuffer.start.value = *&v48.category;
    *&tagBuffer.start.timescale = v48.value;
    *&tagBuffer.start.epoch = CMTagMakeWithFlagsValue(kCMTagCategory_StereoView, flagsForTag[0]);
    v49 = CMTagCollectionCreate(v33, &tagBuffer, 2, &v169);
    if (v49)
    {
      break;
    }

    CFArrayAppendValue(v164, v169.value);
    if (v169.value)
    {
      CFRelease(v169.value);
      v169.value = 0;
    }

    if (++v46 == v44)
    {
LABEL_63:
      Mutable = v157;
      v32 = v42;
      a6 = theDict;
      v15 = v162;
      goto LABEL_64;
    }
  }

  assetReader_EnableDecodedVideoExtractionFromTrack_cold_5(v49, &v189);
LABEL_234:
  v135 = v189;
LABEL_212:
  Mutable = v157;
  v32 = v42;
  a6 = theDict;
  v15 = v162;
  if (v169.value)
  {
    CFRelease(v169.value);
  }

  CFRelease(v164);
  if (v135)
  {
LABEL_255:
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_10(v135, &tagBuffer);
    goto LABEL_220;
  }

LABEL_215:
  v164 = 0;
LABEL_64:
  *(*(v188 + 152) + 160) = 1;
LABEL_65:
  FigCFDictionaryGetBooleanIfPresent();
LABEL_106:
  if (FigRemakerIsFormatDescriptionProtected(v183))
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_17(&tagBuffer);
    v51 = 0;
    v52 = 0;
LABEL_259:
    v53 = 0;
LABEL_260:
    value_low = LODWORD(tagBuffer.start.value);
    goto LABEL_261;
  }

  v57 = v188;
  *(v188 + 50) = 1;
  *(*(v57 + 152) + 28) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v58 = remakerFamily_setupMultiPassTrackIfNecessary(v13, v188, a6);
  if (v58)
  {
    goto LABEL_229;
  }

  v59 = CFGetAllocator(v13);
  v58 = FigVisualContextCreateBasic(v59, 0, &v184);
  if (v58)
  {
    goto LABEL_229;
  }

  if (*(*(v188 + 152) + 160) && v26 >= 1)
  {
    for (i = 0; i != v26; ++i)
    {
      if (i)
      {
        v61 = CFGetAllocator(v13);
        v58 = FigVisualContextCreateBasic(v61, 0, &v175);
        if (v58)
        {
          goto LABEL_229;
        }

        v62 = v175;
      }

      else
      {
        if (v184)
        {
          v62 = CFRetain(v184);
        }

        else
        {
          v62 = 0;
        }

        v175 = v62;
      }

      CFArrayAppendValue(Mutable, v62);
      if (v175)
      {
        CFRelease(v175);
        v175 = 0;
      }
    }
  }

  if (!TrackRotationAngle && !v185)
  {
    v63 = v184;
    if (v184)
    {
      v63 = CFRetain(v184);
    }

    v64 = *v145;
    *(*(v188 + 152) + 112) = v63;
    if (v155)
    {
      v65 = CFRetain(v155);
    }

    else
    {
      v65 = 0;
    }

    v153 = 0;
    v156 = 0;
    v161 = 0;
    v179 = v65;
LABEL_180:
    v110 = CFGetAllocator(v13);
    v111 = v183;
    remakerFamily_getLowWaterLevel(*(v15 + 32), &tagBuffer);
    remakerFamily_getHighWaterLevel(*(v15 + 32), &v169);
    v109 = remakerFamily_createRenderPipelineOptions(v110, v111, &tagBuffer.start.value, &v169.value, 0, 0, *(v15 + 424), 0, 0, *(v15 + 32), 0, 0, *(v15 + 426), v15 + 41, v144, &v182);
    if (!v109)
    {
      v109 = remakerFamily_createRemakerVideoDecoderSpecification(v13, a6, &v181);
      if (!v109)
      {
        if (!v64 || (v112 = CFGetAllocator(v13), v109 = remakerFamily_createVideoPixelTransferProperties(v112, v64, 0, &v180), !v109))
        {
          v113 = CFGetAllocator(v13);
          v114 = v113;
          v115 = v181;
          v116 = v188 + 56;
          if (Mutable)
          {
            v50 = v164;
            value_low = FigVideoRenderPipelineCreateWithVisualContextGroup(v113, v181, v179, v180, 1, Mutable, v164, 0, v182, (v188 + 56));
            goto LABEL_199;
          }

          v148 = v179;
          v150 = v32;
          v152 = v180;
          v159 = v182;
          v146 = v184;
          v117 = v177;
          v118 = *(v188 + 120);
          v119 = CFDictionaryCreateMutable(v113, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v119)
          {
            v120 = v119;
            v121 = MEMORY[0x1E695E4D0];
            if (v117)
            {
              v122 = MEMORY[0x1E695E4D0];
              CFDictionarySetValue(v119, @"EnsureModifiableImageBuffers", *MEMORY[0x1E695E4D0]);
              v121 = v122;
            }

            if (v118)
            {
              CFDictionarySetValue(v120, @"LimitImageQueueCapacityToOneFrame", *v121);
            }

            v32 = v150;
            if (CFDictionaryGetCount(v120))
            {
              value_low = FigVideoRenderPipelineCreateWithVisualContext(v114, v115, v148, v152, 1, v146, v120, v159, v116);
              CFRelease(v120);
            }

            else
            {
              CFRelease(v120);
              value_low = FigVideoRenderPipelineCreateWithVisualContext(v114, v115, v148, v152, 1, v146, 0, v159, v116);
            }

            v50 = v164;
LABEL_199:
            if (!value_low)
            {
              if (theDict)
              {
                v123 = CFDictionaryGetValue(theDict, @"AssetReader_DecompressionProperties");
                v124 = CFDictionaryGetValue(theDict, @"AssetReader_FieldMode");
              }

              else
              {
                v124 = 0;
                v123 = 0;
              }

              v53 = v153;
              v51 = v156;
              v125 = remakerFamily_setVideoRenderPipelineProperties(v165, v188, v178, 0, v183, v124, *(v15 + 32), *(v15 + 426), v123, v180);
              if (!v125)
              {
                v125 = assetReader_ensureRemakerQueue(v165);
                if (!v125)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  v125 = FigNotificationCenterAddWeakListeners();
                  if (!v125)
                  {
                    v126 = v188;
                    v127 = remakerFamily_getStorage(v165);
                    v128 = *(v127 + 152) + 1;
                    *(v127 + 152) = v128;
                    *(v126 + 300) = v128;
                    v129 = v188;
                    v130 = *(v188 + 152);
                    *(v130 + 152) = v50;
                    *(v130 + 120) = Mutable;
                    v131 = MEMORY[0x1E6960C70];
                    *(v130 + 164) = *MEMORY[0x1E6960C70];
                    *(v130 + 180) = *(v131 + 16);
                    *(v129 + 240) = v161;
                    v132 = *(v129 + 152);
                    *(v132 + 128) = v153;
                    if (!*(v132 + 72))
                    {
                      assetReaderTrack_setUpOutputVisualContextSemaphore(v132);
                      if (v133)
                      {
                        goto LABEL_208;
                      }

LABEL_210:
                      v134 = v188;
                      *v143 = *(v188 + 300);
                      remakerFamily_commitChannel(v165, v134);
                      v50 = 0;
                      Mutable = 0;
                      v52 = 0;
                      v53 = 0;
                      value_low = 0;
                      v188 = 0;
                      goto LABEL_67;
                    }

                    assetReaderTrack_setUpOutputBufferQueueSemaphore(v132);
                    if (!v133)
                    {
                      goto LABEL_210;
                    }

LABEL_208:
                    value_low = v133;
                    v50 = 0;
LABEL_239:
                    Mutable = 0;
LABEL_222:
                    v52 = 0;
                    v53 = 0;
                    goto LABEL_67;
                  }
                }
              }

              value_low = v125;
LABEL_189:
              v52 = v161;
              goto LABEL_67;
            }

LABEL_188:
            v53 = v153;
            v51 = v156;
            goto LABEL_189;
          }

          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v138, v140, v142);
          if (!v136)
          {
            value_low = FigVideoRenderPipelineCreateWithVisualContext(v114, v115, v148, v152, 1, v146, 0, v159, v116);
            v32 = v150;
            v15 = v162;
            v50 = v164;
            goto LABEL_199;
          }

          value_low = v136;
          Mutable = 0;
          v32 = v150;
LABEL_187:
          v50 = v164;
          goto LABEL_188;
        }
      }
    }

    goto LABEL_241;
  }

  v66 = CFGetAllocator(v13);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v58 = CMBufferQueueCreate(v66, 0, CallbacksForUnsortedSampleBuffers, (*(v188 + 152) + 72));
  if (v58)
  {
LABEL_229:
    value_low = v58;
    v51 = 0;
LABEL_230:
    v52 = 0;
    v53 = 0;
    goto LABEL_261;
  }

  v149 = v32;
  v158 = Mutable;
  v68 = v183;
  if (!v155)
  {
    v75 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v75)
    {
      goto LABEL_223;
    }

    v74 = v75;
    v73 = 0;
    v71 = 0;
LABEL_141:
    FigCFDictionarySetInt32();
LABEL_142:
    if (!v73 || !v71)
    {
      CMVideoFormatDescriptionGetDimensions(v68);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
    }

    goto LABEL_146;
  }

  v69 = CFDictionaryGetValue(v155, *MEMORY[0x1E6966130]);
  v70 = CFDictionaryGetValue(v155, *MEMORY[0x1E6966208]);
  v71 = v70 != 0;
  v72 = CFDictionaryGetValue(v155, *MEMORY[0x1E69660B8]);
  v73 = v72 != 0;
  if (!v69 || !v70 || !v72)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v155);
    if (!MutableCopy)
    {
      goto LABEL_223;
    }

    v74 = MutableCopy;
    if (v69)
    {
      goto LABEL_142;
    }

    goto LABEL_141;
  }

  v74 = CFRetain(v155);
  if (!v74)
  {
LABEL_223:
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_21(&tagBuffer);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    value_low = LODWORD(tagBuffer.start.value);
    goto LABEL_224;
  }

LABEL_146:
  v156 = v74;
  v77 = CFGetAllocator(v13);
  v78 = HIBYTE(v185);
  v79 = v185;
  v154 = v184;
  v169 = *(v15 + 88);
  numberOfTagsCopied = *(v15 + 112);
  v80 = v13;
  CMTimeRangeFromTimeToTime(&tagBuffer, &v169, &numberOfTagsCopied);
  v81 = *(*(v188 + 152) + 72);
  CMTimeMake(&v169, 1, 10);
  CMTimeMake(&numberOfTagsCopied, 1, 30);
  if (*(v15 + 32))
  {
    v82 = 30;
  }

  else
  {
    v82 = 31;
  }

  v51 = v74;
  *flagsForTag = **v151;
  v167 = *(*v151 + 16);
  FigMediaProcessorCreateForVideoRotation(v77, TrackRotationAngle, v78, v79, v74, 0, v154, flagsForTag, &tagBuffer.start.value, v81, &v169, &numberOfTagsCopied, 0, v82, (v188 + 232));
  if (v83 || (v83 = assetReader_ensureRemakerQueue(v80), a6 = theDict, v83))
  {
    value_low = v83;
    v52 = 0;
    v53 = 0;
LABEL_224:
    Mutable = v158;
    v32 = v149;
LABEL_261:
    v50 = v164;
    goto LABEL_67;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v84 = FigNotificationCenterAddWeakListeners();
  Mutable = v158;
  v32 = v149;
  if (v84)
  {
    value_low = v84;
    goto LABEL_230;
  }

  if (!*(*(v188 + 152) + 160))
  {
    v52 = 0;
    v153 = 0;
    goto LABEL_177;
  }

  v85 = CFGetAllocator(v165);
  v52 = CFArrayCreateMutable(v85, v26, MEMORY[0x1E695E9C0]);
  if (!v52)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_19(&tagBuffer);
    goto LABEL_259;
  }

  v86 = CFGetAllocator(v165);
  v87 = CFArrayCreateMutable(v86, v26, MEMORY[0x1E695E9C0]);
  v53 = v87;
  if (!v87)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_18(&tagBuffer);
    goto LABEL_260;
  }

  v153 = v87;
  if (v26 < 1)
  {
LABEL_177:
    v161 = v52;
    v64 = *v145;
    v13 = v165;
    if (!FigMediaProcessorGetSampleBufferProcessor(*(v188 + 232)))
    {
      assetReader_EnableDecodedVideoExtractionFromTrack_cold_20(&tagBuffer);
      value_low = LODWORD(tagBuffer.start.value);
      goto LABEL_187;
    }

    v105 = CFGetAllocator(v165);
    FigSampleBufferProcessorGetFigBaseObject();
    v107 = v106;
    v108 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v108)
    {
      value_low = 4294954514;
      goto LABEL_187;
    }

    v109 = v108(v107, @"SampleBufferProcessor_SourcePixelBufferAttributes", v105, &v179);
    if (!v109)
    {
      goto LABEL_180;
    }

LABEL_241:
    value_low = v109;
    goto LABEL_187;
  }

  v88 = 0;
  while (!v88)
  {
    v102 = v188;
    v103 = *(v188 + 232);
    if (v103)
    {
      v103 = CFRetain(v103);
      v102 = v188;
    }

    v174 = v103;
    v104 = *(*(v102 + 152) + 72);
    if (v104)
    {
      v104 = CFRetain(v104);
    }

    v173 = v104;
LABEL_170:
    CFArrayAppendValue(v52, v174);
    if (v174)
    {
      CFRelease(v174);
      v174 = 0;
    }

    CFArrayAppendValue(v53, v173);
    v15 = v162;
    if (v173)
    {
      CFRelease(v173);
      v173 = 0;
    }

    if (v26 == ++v88)
    {
      a6 = theDict;
      goto LABEL_177;
    }
  }

  v89 = v52;
  v90 = CFGetAllocator(v165);
  v91 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v92 = CMBufferQueueCreate(v90, 0, v91, &v173);
  if (v92)
  {
    value_low = v92;
    v50 = v164;
    v52 = v89;
    goto LABEL_237;
  }

  v93 = CFGetAllocator(v165);
  v94 = HIBYTE(v185);
  v95 = v185;
  v96 = CFArrayGetValueAtIndex(Mutable, v88);
  v169 = *(v162 + 88);
  numberOfTagsCopied = *(v162 + 112);
  CMTimeRangeFromTimeToTime(&tagBuffer, &v169, &numberOfTagsCopied);
  v97 = v173;
  CMTimeMake(&v169, 1, 10);
  CMTimeMake(&numberOfTagsCopied, 1, 30);
  if (*(v162 + 32))
  {
    v98 = 30;
  }

  else
  {
    v98 = 31;
  }

  *flagsForTag = **v151;
  v167 = *(*v151 + 16);
  v99 = v93;
  v51 = v156;
  FigMediaProcessorCreateForVideoRotation(v99, TrackRotationAngle, v94, v95, v156, 0, v96, flagsForTag, &tagBuffer.start.value, v97, &v169, &numberOfTagsCopied, 0, v98, &v174);
  if (!v100)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v101 = FigNotificationCenterAddWeakListeners();
    Mutable = v158;
    v32 = v149;
    v52 = v89;
    v53 = v153;
    if (v101)
    {
      value_low = v101;
      goto LABEL_261;
    }

    goto LABEL_170;
  }

  value_low = v100;
  Mutable = v158;
  v32 = v149;
  v50 = v164;
  v52 = v89;
LABEL_237:
  v53 = v153;
LABEL_67:
  remakerFamily_discardChannel(v165, v188);
  if (v187)
  {
    CFRelease(v187);
  }

  if (v184)
  {
    CFRelease(v184);
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v181)
  {
    CFRelease(v181);
  }

  if (v180)
  {
    CFRelease(v180);
  }

  if (v179)
  {
    CFRelease(v179);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v175)
  {
    CFRelease(v175);
  }

  if (v174)
  {
    CFRelease(v174);
  }

  if (v173)
  {
    CFRelease(v173);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  return value_low;
}

uint64_t assetReader_EnableVideoCompositionExtraction(const void *a1, const __CFArray *a2, __CFString *a3, const void *a4, const void *a5, int a6, const __CFArray *a7, uint64_t a8, const void *a9, __int128 *a10, unsigned int a11, int a12, uint64_t a13, int a14, uint64_t a15, const __CFDictionary *a16, int a17, const __CFDictionary *a18, const __CFDictionary *a19, uint64_t a20, uint64_t a21, const __CFDictionary *a22, _DWORD *a23)
{
  v24 = *a10;
  v25 = *(a10 + 2);
  return assetReader_EnableVideoCompositionExtraction3(a1, a2, 0, 0, 0, a3, a4, a5, a6, a7, a8, a9, &v24, a11, a12, a13, SHIDWORD(a13), a14, a15, a16, a17, a18, a19, a20, a19, a22, a23);
}

uint64_t assetReader_EnableAudioMixdownExtraction(const void *a1, const __CFArray *a2, AudioStreamBasicDescription *a3, size_t a4, const AudioChannelLayout *a5, uint64_t a6, const __CFDictionary *a7, uint64_t a8, _DWORD *a9)
{
  Storage = remakerFamily_getStorage(a1);
  formatDescriptionOut = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  if (*Storage != 1)
  {
    assetReader_EnableAudioMixdownExtraction_cold_1(&v62);
LABEL_72:
    value_low = LODWORD(v62.value);
    remakerFamily_discardChannel(a1, 0);
    goto LABEL_53;
  }

  if (!a2)
  {
    assetReader_EnableAudioMixdownExtraction_cold_8(&v62);
    goto LABEL_72;
  }

  if (!a3)
  {
    assetReader_EnableAudioMixdownExtraction_cold_7(&v62);
    goto LABEL_72;
  }

  if (!a3->mChannelsPerFrame)
  {
    assetReader_EnableAudioMixdownExtraction_cold_6(&v62);
    goto LABEL_72;
  }

  if (a3->mSampleRate == 0.0)
  {
    assetReader_EnableAudioMixdownExtraction_cold_5(&v62);
    goto LABEL_72;
  }

  if (a3->mFormatID != 1819304813)
  {
    assetReader_EnableAudioMixdownExtraction_cold_2(&v62);
    goto LABEL_72;
  }

  v15 = Storage;
  Count = CFArrayGetCount(a2);
  v17 = malloc_type_calloc(8uLL, Count, 0xACA99D20uLL);
  if (a7)
  {
    Value = CFDictionaryGetValue(a7, @"RemakerFamilyAudioProcessingOption_TimePitchAlgorithm");
  }

  else
  {
    Value = 0;
  }

  v18 = CFGetAllocator(a1);
  v19 = CMAudioFormatDescriptionCreate(v18, a3, a4, a5, 0, 0, 0, &formatDescriptionOut);
  if (v19 || (v19 = remakerFamily_createChannel(a1, 0, 1936684398, &v66), v19))
  {
    value_low = v19;
    v34 = a1;
    goto LABEL_48;
  }

  v20 = v66;
  *(v66 + 48) = 0;
  *(v20 + 50) = 1;
  v21 = CFGetAllocator(a1);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v23 = CMBufferQueueCreate(v21, 0, CallbacksForUnsortedSampleBuffers, (v66 + 208));
  if (v23 || (v24 = CFRetain(*(v66 + 208)), v25 = v66, *(*(v66 + 152) + 72) = v24, v26 = *(v25 + 208), CMTimeMake(&v62, 2, 1), CMTimeMake(&v61, 1, 1), FigSampleBufferConsumerCreateForBufferQueue(v26, &v62.value, &v61.value, &v64), v23) || (*(v15 + 32) ? (v27 = 30) : (v27 = 0), FigActivitySchedulerCreateForNewThread(*MEMORY[0x1E695E480], v27, @"com.apple.coremedia.readerOfflineMixer", &v63), v23))
  {
    value_low = v23;
    v34 = a1;
    goto LABEL_48;
  }

  v28 = remakerFamily_setupMultiPassTrackIfNecessary(a1, v66, a8);
  if (v28 || (v29 = v66, v30 = remakerFamily_getStorage(a1), v31 = *(v30 + 152) + 1, *(v30 + 152) = v31, *(v29 + 300) = v31, v32 = CFGetAllocator(a1), v28 = FigAudioQueueOfflineMixerCreate(v32, a3, a4, a5, 0, v64, v63, (v66 + 200)), v28))
  {
    value_low = v28;
    v34 = a1;
    goto LABEL_48;
  }

  v33 = assetReader_ensureRemakerQueue(a1);
  v34 = a1;
  if (v33)
  {
    goto LABEL_63;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v33 = FigNotificationCenterAddWeakListeners();
  if (v33)
  {
    goto LABEL_63;
  }

  if (Count < 1)
  {
LABEL_73:
    assetReader_EnableAudioMixdownExtraction_cold_3(&v62);
    value_low = LODWORD(v62.value);
    goto LABEL_48;
  }

  v57 = 0;
  v35 = 0;
  v36 = v17;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v35);
    v62.value = 0;
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      assetReader_EnableAudioMixdownExtraction_cold_4(&v61);
      value_low = LODWORD(v61.value);
      goto LABEL_48;
    }

    v38 = CFDictionaryGetValue(ValueAtIndex, @"AssetReaderSource_AudioCurves");
    if (v38)
    {
      v39 = CFRetain(v38);
      if (v39)
      {
        goto LABEL_29;
      }
    }

    v62.value = CFDictionaryGetValue(ValueAtIndex, @"AssetReaderSource_AudioVolumeCurve");
    if (v62.value)
    {
      v40 = CFGetAllocator(v34);
      v39 = CFDictionaryCreate(v40, kFigAudioCurvesKey_Volume, &v62, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v39)
      {
        value_low = 4294954510;
        goto LABEL_48;
      }

LABEL_29:
      v41 = v39;
      goto LABEL_31;
    }

    v41 = 0;
LABEL_31:
    v42 = CFDictionaryGetValue(ValueAtIndex, @"AssetReaderSource_AudioProcessingTap");
    v43 = CFDictionaryGetValue(ValueAtIndex, @"RemakerFamilyAudioProcessingOption_TimePitchAlgorithmSourceTrack");
    v44 = CFDictionaryGetValue(ValueAtIndex, @"AssetReaderSource_CinematicAudioParameters");
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = Value;
    }

    v34 = a1;
    value_low = remakerFamily_createAudioMixdownSourceTrack(a1, 0, v41, v42, v44, v45, a8, formatDescriptionOut, v36);
    if (v41)
    {
      CFRelease(v41);
    }

    if (value_low != -12138)
    {
      if (value_low)
      {
        goto LABEL_48;
      }

      v47 = *(v66 + 200);
      FigRenderPipelineGetFigBaseObject();
      v49 = v48;
      v50 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v50)
      {
        value_low = 4294954514;
        goto LABEL_48;
      }

      v51 = v50(v49, @"OfflineMixer", v47);
      if (v51)
      {
        value_low = v51;
        goto LABEL_48;
      }

      *(*v36 + 304) = *(v66 + 300);
      ++v57;
    }

    ++v35;
    ++v36;
  }

  while (Count != v35);
  if (v57 <= 0)
  {
    goto LABEL_73;
  }

  assetReaderTrack_setUpOutputBufferQueueSemaphore(*(v66 + 152));
  if (!v33)
  {
    *a9 = *(v66 + 300);
    v52 = v17;
    v53 = Count;
    do
    {
      remakerFamily_commitChannel(a1, *v52);
      *v52++ = 0;
      --v53;
    }

    while (v53);
    remakerFamily_commitChannel(a1, v66);
    value_low = 0;
    v66 = 0;
    goto LABEL_48;
  }

LABEL_63:
  value_low = v33;
LABEL_48:
  remakerFamily_discardChannel(v34, v66);
  if (v17)
  {
    if (Count >= 1)
    {
      v54 = v17;
      do
      {
        v55 = *v54++;
        remakerFamily_discardChannel(v34, v55);
        --Count;
      }

      while (Count);
    }

    free(v17);
  }

LABEL_53:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  return value_low;
}

uint64_t assetReader_StartExtractionForTimeRange(const void *a1, __int128 *a2, uint64_t a3)
{
  Storage = remakerFamily_getStorage(a1);
  v7 = *a2;
  *(Storage + 104) = *(a2 + 2);
  *(Storage + 88) = v7;
  v8 = *(a3 + 16);
  *(Storage + 112) = *a3;
  *(Storage + 128) = v8;
  *(Storage + 136) = 0;

  return assetReader_startExtractionForTimeRangeCommon(a1);
}

uint64_t assetReader_StartExtractionForTimeRanges(uint64_t a1, __int128 *a2, CFIndex a3)
{
  Storage = remakerFamily_getStorage(a1);
  if (*Storage >= 4u)
  {
    assetReader_StartExtractionForTimeRanges_cold_4(&range);
    goto LABEL_16;
  }

  if (a3 <= 0)
  {
    assetReader_StartExtractionForTimeRanges_cold_3(&range);
    goto LABEL_16;
  }

  if (!a2)
  {
    assetReader_StartExtractionForTimeRanges_cold_2(&range);
LABEL_16:
    value_low = LODWORD(range.start.value);
    if (!LODWORD(range.start.value))
    {
      return value_low;
    }

    goto LABEL_13;
  }

  v7 = Storage;
  Count = CFArrayGetCount(*(Storage + 80));
  if (Count < 1)
  {
LABEL_9:
    v13 = a2[1];
    *&range.start.value = *a2;
    *&range.start.epoch = v13;
    *&range.duration.timescale = a2[2];
    CMTimeRangeGetEnd(&v20, &range);
    v17 = *a2;
    v18 = *(a2 + 2);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v14)
    {
      *&range.start.value = v17;
      range.start.epoch = v18;
      v21 = v20;
      value_low = v14(a1, &range, &v21);
      if (!value_low)
      {
        return value_low;
      }
    }

    else
    {
      value_low = 4294954514;
    }
  }

  else
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 80), v10);
      if (!ValueAtIndex[356])
      {
        assetReader_StartExtractionForTimeRanges_cold_1(&range);
        goto LABEL_16;
      }

      v12 = remakerFamily_resetTrackMultiPassTimeRanges(ValueAtIndex, a2, a3);
      if (v12)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_9;
      }
    }

    value_low = v12;
  }

LABEL_13:
  remakerfamily_setFailureStatusIfError(a1, value_low);
  remakerFamily_invalidateAllMediaProcessors(a1);
  return value_low;
}

uint64_t assetReader_StartExtractionForTimeRangesFromTrack(const void *a1, uint64_t a2, uint64_t a3, CFIndex a4)
{
  v6 = a2;
  Storage = remakerFamily_getStorage(a1);
  ChannelByExtractionID = assetReader_getChannelByExtractionID(a1, v6);
  if (ChannelByExtractionID && *(ChannelByExtractionID + 16))
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    v27 = 0;
    if (v10)
    {
      v11 = v10;
      if (*Storage >= 7u)
      {
        assetReader_StartExtractionForTimeRangesFromTrack_cold_4(&v25);
      }

      else if (*(v10 + 356))
      {
        if (a4 <= 0)
        {
          assetReader_StartExtractionForTimeRangesFromTrack_cold_2(&v25);
        }

        else
        {
          if (a3)
          {
            Segment = assetReader_ensureRemakerQueue(a1);
            if (Segment)
            {
              goto LABEL_31;
            }

            Segment = remakerFamily_resetTrackMultiPassTimeRanges(v11, a3, a4);
            if (Segment)
            {
              goto LABEL_31;
            }

            if (*(v11 + 416))
            {
              v13 = *(a3 + 16);
              *&v25.start.value = *a3;
              *&v25.start.epoch = v13;
              *&v25.duration.timescale = *(a3 + 32);
              Segment = remakerFamily_resetSourceRenderersForNextSegment(v11, &v25, 1);
              if (Segment)
              {
                goto LABEL_31;
              }
            }

            else
            {
              Segment = remakerFamily_createMultiPassPlaybackBossForTrack(v11, (v11 + 416));
              if (Segment)
              {
                goto LABEL_31;
              }

              *(v11 + 424) = 0;
              v18 = *(v11 + 416);
              v19 = *(a3 + 16);
              *&v25.start.value = *a3;
              *&v25.start.epoch = v19;
              *&v25.duration.timescale = *(a3 + 32);
              CMTimeRangeGetEnd(&v26, &v25);
              *&v25.start.value = *a3;
              v25.start.epoch = *(a3 + 16);
              Segment = FigPlaybackBossSendSamplesForTimeRange(v18, &v25.start, &v26, 4);
              if (Segment)
              {
                goto LABEL_31;
              }

              Segment = remakerFamily_createRelatedTrackArray(v11, &v27);
              if (Segment)
              {
                goto LABEL_31;
              }

              Count = CFArrayGetCount(v27);
              if (Count >= 1)
              {
                v21 = Count;
                v22 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v27, v22);
                  v24 = *(a3 + 16);
                  *&v25.start.value = *a3;
                  *&v25.start.epoch = v24;
                  *&v25.duration.timescale = *(a3 + 32);
                  CMTimeRangeGetEnd(&v26, &v25);
                  *&v25.start.value = *a3;
                  v25.start.epoch = *(a3 + 16);
                  Segment = remakerFamily_startTrack(ValueAtIndex, &v25.start.value, &v26.value);
                  if (Segment)
                  {
                    goto LABEL_31;
                  }
                }

                while (v21 != ++v22);
              }
            }

            remakerFamily_SetRemakerState(a1, 3, 0);
            Segment = remakerfamily_updateClientPID(a1);
            if (!Segment)
            {
              remakerfamily_updateThrottleForBackground(a1);
              value_low = v14;
              if (v14)
              {
LABEL_14:
                v16 = 0;
                goto LABEL_15;
              }

LABEL_16:
              CFRelease(v11);
              goto LABEL_17;
            }

LABEL_31:
            value_low = Segment;
            goto LABEL_14;
          }

          assetReader_StartExtractionForTimeRangesFromTrack_cold_1(&v25);
        }
      }

      else
      {
        assetReader_StartExtractionForTimeRangesFromTrack_cold_3(&v25);
      }

      value_low = LODWORD(v25.start.value);
      if (LODWORD(v25.start.value))
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v27 = 0;
  }

  if (!assetReader_StartExtractionForTimeRangesFromTrack_cold_5(&v25))
  {
    v11 = 0;
    value_low = LODWORD(v25.start.value);
    v16 = 1;
LABEL_15:
    remakerfamily_setFailureStatusIfError(a1, value_low);
    remakerFamily_invalidateAllMediaProcessors(a1);
    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  value_low = 0;
LABEL_17:
  if (v27)
  {
    CFRelease(v27);
  }

  return value_low;
}

uint64_t assetReader_StartExtractionForTime(const void *a1, __int128 *a2)
{
  Storage = remakerFamily_getStorage(a1);
  v5 = *a2;
  *(Storage + 104) = *(a2 + 2);
  *(Storage + 88) = v5;
  v6 = *(a2 + 2);
  *(Storage + 112) = *a2;
  *(Storage + 128) = v6;
  *(Storage + 136) = 1;

  return assetReader_startExtractionForTimeRangeCommon(a1);
}

uint64_t assetReader_EnableVideoCompositionExtraction2(const void *a1, const __CFArray *a2, const __CFArray *a3, __CFString *a4, const void *a5, const void *a6, int a7, const __CFArray *a8, uint64_t a9, const void *a10, __int128 *a11, unsigned int a12, int a13, uint64_t a14, int a15, uint64_t a16, const __CFDictionary *a17, int a18, const __CFDictionary *a19, const __CFDictionary *a20, uint64_t a21, uint64_t a22, const __CFDictionary *a23, _DWORD *a24)
{
  v25 = *a11;
  v26 = *(a11 + 2);
  return assetReader_EnableVideoCompositionExtraction3(a1, a2, a3, 0, 0, a4, a5, a6, a7, a8, a9, a10, &v25, a12, a13, a14, SHIDWORD(a14), a15, a16, a17, a18, a19, a20, a21, a20, a23, a24);
}

void assetReaderTrack_dataBecameReady(uint64_t a1)
{
  if (a1 && *(a1 + 16) && (v2 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v3 = v2;
    assetReaderTrack_safelyPostNotificationWithExtractionID(a1, @"AssetReader_SampleBufferNowAvailable");
    FigSemaphoreSignal();

    CFRelease(v3);
  }

  else
  {
    assetReaderTrack_dataBecameReady_cold_1();
  }
}

void assetReaderTrack_endOfDataReached(uint64_t a1)
{
  if (a1 && *(a1 + 16) && (v2 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v3 = v2;
    assetReaderTrack_safelyPostNotificationWithExtractionID(a1, @"AssetReader_SampleBufferNowAvailable");
    assetReaderTrack_safelyPostNotificationWithExtractionID(a1, @"AssetReader_EndOfDataReached");
    FigSemaphoreSignal();

    CFRelease(v3);
  }

  else
  {
    assetReaderTrack_endOfDataReached_cold_1();
  }
}

uint64_t assetReaderTrack_copyRemaker(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (*(v1 + 16))
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v2);
  return v3;
}

void assetReaderTrack_outputQueueBecameEmpty(uint64_t a1)
{
  if (a1 && *(a1 + 16) && (v2 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v3 = v2;
    v4 = assetReaderTrack_copyRemaker(a1);
    if (v4)
    {
      v5 = v4;
      if (v3[356])
      {
        remakerFamily_startNextSegmentIfMultiPassComplete(v3);
      }

      CFRelease(v5);
    }

    else
    {
      assetReaderTrack_outputQueueBecameEmpty_cold_1();
    }

    CFRelease(v3);
  }

  else
  {
    assetReaderTrack_outputQueueBecameEmpty_cold_2();
  }
}

void assetReaderTrack_sourceImageAvailable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4 || !*(a4 + 16) || (v5 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetReaderTrack_sourceImageAvailable_cold_2();
    return;
  }

  v6 = v5;
  if (!*(a4 + 160))
  {
    goto LABEL_21;
  }

  v14 = **&MEMORY[0x1E6960C70];
  v13 = **&MEMORY[0x1E6960C88];
  v7 = *(a4 + 120);
  if (v7)
  {
    Count = CFArrayGetCount(v7);
    CFArrayGetValueAtIndex(*(a4 + 120), 0);
    if (Count >= 1)
    {
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a4 + 120), v9);
        if (FigVisualContextGetEarliestSequentialImageTime(ValueAtIndex, 0, &v14, 0))
        {
          goto LABEL_17;
        }

        if (v9)
        {
          time1 = v13;
          v11 = v14;
          if (CMTimeCompare(&time1, &v11))
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = v14;
        }
      }

      while (Count != ++v9);
    }
  }

  else
  {
    CFArrayGetValueAtIndex(0, 0);
  }

  time1 = v13;
  v11 = *(a4 + 164);
  if (CMTimeCompare(&time1, &v11))
  {
    *(a4 + 164) = v13;
LABEL_21:
    assetReaderTrack_sourceImageAvailable_cold_1(a4);
  }

LABEL_17:
  CFRelease(v6);
}

void assetReaderTrack_sourceNoMoreImages(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 16) && (v3 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    assetReaderTrack_sourceNoMoreImages_cold_1(a2, v3);
  }

  else
  {
    assetReaderTrack_sourceNoMoreImages_cold_2();
  }
}

void assetReaderTrack_visualContextBecameEmpty(uint64_t a1)
{
  if (a1 && *(a1 + 16))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v2 = 0;
  }

  v3 = assetReaderTrack_copyRemaker(a1);
  Storage = remakerFamily_getStorage(v3);
  if (v3)
  {
    if (v2)
    {
      assetReaderTrack_visualContextBecameEmpty_cold_1(Storage, v2);
    }

    else
    {
      assetReaderTrack_visualContextBecameEmpty_cold_2();
    }

    v2 = v3;
  }

  else if (!v2)
  {
    return;
  }

  CFRelease(v2);
}

uint64_t assetReader_startExtractionForTimeRangeCommon(const void *a1)
{
  Storage = remakerFamily_getStorage(a1);
  if (*Storage >= 7u)
  {
    assetReader_startExtractionForTimeRangeCommon_cold_2(&v22);
    goto LABEL_41;
  }

  v3 = Storage;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  SinglePassPlaybackBoss = assetReader_ensureRemakerQueue(a1);
  if (SinglePassPlaybackBoss)
  {
LABEL_37:
    started = SinglePassPlaybackBoss;
    goto LABEL_38;
  }

  Count = CFArrayGetCount(*(v3 + 10));
  if (Count < 1)
  {
LABEL_28:
    if (*v3 != 1)
    {
      goto LABEL_46;
    }

    v17 = *(v3 + 47);
    if (v17)
    {
      CFRelease(v17);
      *(v3 + 47) = 0;
    }

    SinglePassPlaybackBoss = remakerFamily_createSinglePassPlaybackBoss(a1, v3 + 47);
    if (!SinglePassPlaybackBoss)
    {
LABEL_46:
      remakerFamily_SetRemakerState(a1, 3, 0);
      SinglePassPlaybackBoss = remakerfamily_updateClientPID(a1);
      if (!SinglePassPlaybackBoss)
      {
        remakerfamily_updateThrottleForBackground(a1);
        if (!SinglePassPlaybackBoss)
        {
          SinglePassPlaybackBoss = remakerFamily_startAllSinglePassTracks(a1);
          if (!SinglePassPlaybackBoss)
          {
            started = remakerFamily_startAllMultiPassTracks(a1, 0);
            if (!started)
            {
              return started;
            }

            goto LABEL_38;
          }
        }
      }
    }

    goto LABEL_37;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 10), v7);
    v9 = ValueAtIndex;
    if (!ValueAtIndex[356])
    {
      break;
    }

    if (*(ValueAtIndex + 75))
    {
      if (*v3 == 3)
      {
        start = *(v3 + 22);
        v20 = *(v3 + 28);
        CMTimeRangeFromTimeToTime(&v22, &start, &v20);
        SinglePassPlaybackBoss = remakerFamily_resetSourceRenderersForNextSegment(v9, &v22, 1);
        if (SinglePassPlaybackBoss)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v16 = *(ValueAtIndex + 52);
        if (v16)
        {
          CFRelease(v16);
          *(v9 + 416) = 0;
        }

        SinglePassPlaybackBoss = remakerFamily_createMultiPassPlaybackBossForTrack(v9, (v9 + 416));
        if (SinglePassPlaybackBoss)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_27:
    if (++v7 == v6)
    {
      goto LABEL_28;
    }
  }

  if ((*v3 - 3) > 2)
  {
    goto LABEL_27;
  }

  start = *(v3 + 22);
  v20 = *(v3 + 28);
  CMTimeRangeFromTimeToTime(&v22, &start, &v20);
  SinglePassPlaybackBoss = remakerFamily_resetSourceRenderersForNextSegment(v9, &v22, 1);
  if (SinglePassPlaybackBoss)
  {
    goto LABEL_37;
  }

  v10 = *(v9 + 232);
  if (!v10)
  {
    goto LABEL_27;
  }

  *(v9 + 256) = 0;
  FigMediaProcessorReset(v10, 1);
  if (SinglePassPlaybackBoss)
  {
    goto LABEL_37;
  }

  if (!*(*(v9 + 152) + 160))
  {
    goto LABEL_27;
  }

  v11 = *(v9 + 240);
  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = CFArrayGetCount(v11);
  if (v12 < 2)
  {
    goto LABEL_27;
  }

  v13 = v12;
  v14 = 1;
  while (1)
  {
    v15 = CFArrayGetValueAtIndex(*(v9 + 240), v14);
    if (!v15)
    {
      break;
    }

    FigMediaProcessorReset(v15, 1);
    if (SinglePassPlaybackBoss)
    {
      goto LABEL_37;
    }

    if (v13 == ++v14)
    {
      goto LABEL_27;
    }
  }

  assetReader_startExtractionForTimeRangeCommon_cold_1(&v22);
LABEL_41:
  started = LODWORD(v22.start.value);
  if (LODWORD(v22.start.value))
  {
LABEL_38:
    remakerfamily_setFailureStatusIfError(a1, started);
    remakerFamily_invalidateAllMediaProcessors(a1);
  }

  return started;
}

uint64_t assetReader_getChannelByExtractionID(uint64_t a1, int a2)
{
  Storage = remakerFamily_getStorage(a1);
  Count = CFArrayGetCount(*(Storage + 80));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(Storage + 80), v6);
    if (ValueAtIndex[75] == a2)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return *(ValueAtIndex + 19);
}

__n128 OUTLINED_FUNCTION_10_31()
{
  *(v1 - 208) = *(v0 + 88);
  *(v1 - 192) = *(v0 + 104);
  return *(v0 + 112);
}

uint64_t OUTLINED_FUNCTION_11_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32)
{
  a31 = *v33;
  a32 = *(v33 + 16);

  return assetReader_createTaggedBufferGroupSampleBuffer(v32, &a31, v34 - 240);
}

__n128 OUTLINED_FUNCTION_21_17()
{
  result = *(v0 - 192);
  *(v0 - 160) = result;
  *(v0 - 144) = *(v0 - 176);
  return result;
}

uint64_t RegisterFigBufferedAirPlayAudioChainSubPipeType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlayAudioChainSubPipeGetTypeID()
{
  MEMORY[0x19A8D3660](&FigBufferedAirPlayAudioChainSubPipeGetClassID_sRegisterFigBufferedAirPlayAudioChainSubPipeTypeOnce, RegisterFigBufferedAirPlayAudioChainSubPipeType);

  return CMBaseClassGetCFTypeID();
}

double FigMetadataSerializerCreateForQuickTimeMetadata(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    FigMetadataSerializerGetClassID();
    if (!CMDerivedObjectCreate())
    {
      CMBaseObjectGetDerivedStorage();
      *a2 = 0;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954716, "<<<< FMDW_QTMETA >>>>", 2124, v2);
  }

  return result;
}

void FigQuickTimeMetadataSerializerFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    v3 = *DerivedStorage;
    if (v3)
    {
      CFRelease(v3);
      *v2 = 0;
    }

    v4 = v2[1];
    if (v4)
    {
      CFRelease(v4);
      v2[1] = 0;
    }

    v5 = v2[2];
    if (v5)
    {
      CFRelease(v5);
      v2[2] = 0;
    }

    v6 = v2[3];
    if (v6)
    {
      CFRelease(v6);
      v2[3] = 0;
    }
  }

  else
  {
    FigQuickTimeMetadataSerializerFinalize_cold_1();
  }
}

__CFString *FigQuickTimeMetadataSerializerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    CFStringAppendFormat(Mutable, 0, @" FigQuickTimeMetadataSerializer %p\n", DerivedStorage);
    CFStringAppendFormat(Mutable, 0, @"  - handle name: %@\n", *(v3 + 24));
    CFStringAppendFormat(Mutable, 0, @"  - free atom size: %d\n", *(v3 + 32));
    CFStringAppendFormat(Mutable, 0, @"  - minimum container size: %d\n", *(v3 + 36));
    CFStringAppendFormat(Mutable, 0, @"%@", *v3);
  }

  else
  {
    FigQuickTimeMetadataSerializerCopyDebugDescription_cold_1();
  }

  return Mutable;
}

uint64_t FigQuickTimeMetadataSerializerCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigQuickTimeMetadataSerializerCopyProperty_cold_1(&v14);
    return v14;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, @"handlerName"))
  {
    if (CFEqual(a2, @"freeAtomSize"))
    {
      v10 = *MEMORY[0x1E695E480];
      v11 = v7 + 4;
    }

    else
    {
      if (!CFEqual(a2, @"minimumSize"))
      {
        if (!CFEqual(a2, @"format"))
        {
          return 4294954512;
        }

        v8 = @"com.apple.quicktime.mdta";
        goto LABEL_4;
      }

      v10 = *MEMORY[0x1E695E480];
      v11 = v7 + 36;
    }

    v9 = CFNumberCreate(v10, kCFNumberSInt32Type, v11);
    goto LABEL_11;
  }

  v8 = v7[3];
  if (!v8)
  {
    return 4294954513;
  }

LABEL_4:
  v9 = CFRetain(v8);
LABEL_11:
  v13 = v9;
  result = 0;
  *a4 = v13;
  return result;
}

void FigQuickTimeMetadataSerializerSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigQuickTimeMetadataSerializerSetProperty_cold_1(&v17);
    return;
  }

  v7 = DerivedStorage;
  if (CFEqual(@"handlerName", a2))
  {
    if (a3)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        v9 = *(v7 + 24);
        *(v7 + 24) = CFRetain(a3);
        if (v9)
        {
          CFRelease(v9);
        }

        return;
      }
    }

    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 371;
  }

  else if (CFEqual(@"freeAtomSize", a2))
  {
    if (a3)
    {
      v13 = CFNumberGetTypeID();
      if (v13 == CFGetTypeID(a3))
      {
        valuePtr = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        *(v7 + 32) = valuePtr;
        return;
      }
    }

    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 382;
  }

  else
  {
    if (!CFEqual(@"minimumSize", a2))
    {
      return;
    }

    if (a3)
    {
      v14 = CFNumberGetTypeID();
      if (v14 == CFGetTypeID(a3))
      {
        v15 = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &v15);
        *(v7 + 36) = v15;
        return;
      }
    }

    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 393;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954715, "<<<< FMDW_QTMETA >>>>", v12, v11);
}

uint64_t FigQuickTimeMetadataSerializerAddItem(const void *a1, __CFString *a2, const void *a3, const void *a4, const __CFDictionary *a5)
{
  v60 = *MEMORY[0x1E69E9840];
  theDict = 0;
  value = 0;
  key = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigQuickTimeMetadataSerializerAddItem_cold_9(&rect);
    goto LABEL_95;
  }

  if (!a2 || !a3 || !a4)
  {
    FigQuickTimeMetadataSerializerAddItem_cold_8(&rect);
    goto LABEL_95;
  }

  v11 = DerivedStorage;
  if (CFStringGetLength(a2) != 4)
  {
    FigQuickTimeMetadataSerializerAddItem_cold_1(&rect);
    goto LABEL_95;
  }

  v12 = CFGetAllocator(a1);
  ActualKey = FigQuickTimeMetadataCreateActualKey(v12, a2, a3, &cf, &key);
  if (ActualKey)
  {
    goto LABEL_99;
  }

  v58 = 0;
  if (!a5)
  {
    goto LABEL_41;
  }

  FigMetadataGetNumericalDataTypeForMetadataProperties(@"com.apple.quicktime.mdta", a5, @"com.apple.quicktime.mdta", &v58, 0);
  if (v14)
  {
    goto LABEL_41;
  }

  if (v58 <= 70)
  {
    if (v58 > 29)
    {
      if ((v58 - 65) < 3)
      {
        goto LABEL_36;
      }

      if (v58 == 30)
      {
        v50 = CFGetTypeID(a4);
        if (v50 != CFDictionaryGetTypeID() || CFDictionaryGetCount(a4) != 4)
        {
          goto LABEL_94;
        }

        v51 = 0;
        *&rect.origin.x = @"widthPixels";
        *&rect.origin.y = @"heightPixels";
        *&rect.size.width = @"widthPoints";
        *&rect.size.height = @"heightPoints";
        while (1)
        {
          TypeID = CFDictionaryGetValue(a4, *(&rect.origin.x + v51));
          if (!TypeID)
          {
            goto LABEL_40;
          }

          v52 = CFGetTypeID(TypeID);
          if (v52 != CFNumberGetTypeID())
          {
            LODWORD(TypeID) = 0;
            goto LABEL_40;
          }

          v51 += 8;
          if (v51 == 32)
          {
            goto LABEL_37;
          }
        }
      }

      if (v58 == 70)
      {
        v45 = CFGetTypeID(a4);
        if (v45 != CFDictionaryGetTypeID())
        {
          goto LABEL_94;
        }

        rect.origin.x = 0.0;
        rect.origin.y = 0.0;
        LODWORD(TypeID) = CGPointMakeWithDictionaryRepresentation(a4, &rect.origin);
        goto LABEL_40;
      }
    }

    else
    {
      if ((v58 - 21) < 4)
      {
        goto LABEL_36;
      }

      if ((v58 - 1) < 3)
      {
        v17 = CFGetTypeID(a4);
        TypeID = CFStringGetTypeID();
LABEL_39:
        LODWORD(TypeID) = v17 == TypeID;
        goto LABEL_40;
      }
    }

    goto LABEL_97;
  }

  if (v58 <= 78)
  {
    if ((v58 - 74) >= 5)
    {
      if (v58 != 71)
      {
        if (v58 == 72)
        {
          v15 = CFGetTypeID(a4);
          if (v15 == CFDictionaryGetTypeID())
          {
            memset(&rect, 0, sizeof(rect));
            LODWORD(TypeID) = CGRectMakeWithDictionaryRepresentation(a4, &rect);
            goto LABEL_40;
          }

LABEL_94:
          FigQuickTimeMetadataSerializerAddItem_cold_2(&rect);
LABEL_95:
          v35 = 0;
LABEL_96:
          x_low = LODWORD(rect.origin.x);
          goto LABEL_55;
        }

        goto LABEL_97;
      }

      v53 = CFGetTypeID(a4);
      if (v53 != CFDictionaryGetTypeID())
      {
        goto LABEL_94;
      }

      rect.origin.x = 0.0;
      rect.origin.y = 0.0;
      LODWORD(TypeID) = CGSizeMakeWithDictionaryRepresentation(a4, &rect);
LABEL_40:
      if (TypeID)
      {
        goto LABEL_41;
      }

      goto LABEL_94;
    }

LABEL_36:
    v24 = CFGetTypeID(a4);
    if (v24 == CFNumberGetTypeID())
    {
LABEL_37:
      LODWORD(TypeID) = 1;
      goto LABEL_40;
    }

    v17 = CFGetTypeID(a4);
    TypeID = CFBooleanGetTypeID();
    goto LABEL_39;
  }

  if (v58 > 82)
  {
    switch(v58)
    {
      case 'S':
LABEL_77:
        v46 = CFGetTypeID(a4);
        if (v46 == CFArrayGetTypeID() && CFArrayGetCount(a4) == 9)
        {
          v47 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a4, v47);
            if (!ValueAtIndex)
            {
              break;
            }

            v49 = CFGetTypeID(ValueAtIndex);
            if (v49 != CFNumberGetTypeID())
            {
              break;
            }

            if (++v47 == 9)
            {
              goto LABEL_41;
            }
          }
        }

        goto LABEL_94;
      case 'T':
        LODWORD(TypeID) = qtmetadata_checkIsValidAndReturnRasterRectangleValueArray(a4, 0, 0);
        goto LABEL_40;
      case 'U':
        LODWORD(TypeID) = qtmetadata_checkIsValidAndReturnExtendedRasterRectangleValue(a4, 0, 0, 0, 0, 0, 0, 0, 0);
        goto LABEL_40;
    }

LABEL_97:
    v17 = CFGetTypeID(a4);
    TypeID = CFDataGetTypeID();
    goto LABEL_39;
  }

  if ((v58 - 80) >= 2)
  {
    if (v58 == 79)
    {
      goto LABEL_77;
    }

    goto LABEL_97;
  }

  v18 = CFGetTypeID(a4);
  if (v18 != CFArrayGetTypeID())
  {
    goto LABEL_94;
  }

  v19 = v58;
  if (v58 == 80)
  {
    if (CFArrayGetCount(a4) < 3)
    {
      goto LABEL_94;
    }

    v19 = v58;
  }

  if (v19 == 81 && CFArrayGetCount(a4) < 2)
  {
    goto LABEL_94;
  }

  if (CFArrayGetCount(a4) >= 1)
  {
    v20 = 0;
    do
    {
      v21 = CFArrayGetValueAtIndex(a4, v20);
      rect.origin.x = 0.0;
      rect.origin.y = 0.0;
      if (!v21)
      {
        goto LABEL_94;
      }

      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 != CFDictionaryGetTypeID() || !CGPointMakeWithDictionaryRepresentation(v22, &rect.origin))
      {
        goto LABEL_94;
      }
    }

    while (++v20 < CFArrayGetCount(a4));
  }

LABEL_41:
  if (!*v11)
  {
    v25 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v25, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *v11 = Mutable;
    if (!Mutable)
    {
      FigQuickTimeMetadataSerializerAddItem_cold_7(&rect);
      goto LABEL_95;
    }
  }

  if (!v11[1])
  {
    v27 = CFGetAllocator(a1);
    v28 = CFArrayCreateMutable(v27, 0, MEMORY[0x1E695E9C0]);
    v11[1] = v28;
    if (!v28)
    {
      FigQuickTimeMetadataSerializerAddItem_cold_6(&rect);
      goto LABEL_95;
    }
  }

  if (!v11[2])
  {
    v29 = CFGetAllocator(a1);
    v30 = CFArrayCreateMutable(v29, 0, MEMORY[0x1E695E9C0]);
    v11[2] = v30;
    if (!v30)
    {
      FigQuickTimeMetadataSerializerAddItem_cold_5(&rect);
      goto LABEL_95;
    }
  }

  if (!CFDictionaryGetValueIfPresent(*v11, key, &value))
  {
    x_low = FigQuickTimeMetadataCreateNewItem(a1, cf, a4, a5, &theDict);
    if (!x_low)
    {
      CFArrayAppendValue(v11[1], key);
      *&rect.origin.x = CFArrayGetCount(v11[1]);
      v39 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &rect);
      v40 = theDict;
      CFDictionarySetValue(theDict, @"keyIndex", v39);
      CFRelease(v39);
      CFDictionarySetValue(*v11, key, v40);
      CFArrayAppendValue(v11[2], v40);
      CFRelease(v40);
      theDict = 0;
    }

    goto LABEL_54;
  }

  v31 = CFGetTypeID(value);
  if (v31 == CFDictionaryGetTypeID())
  {
    v32 = value;
    v33 = CFDictionaryGetValue(value, @"keyIndex");
    ActualKey = FigQuickTimeMetadataCreateNewItem(a1, cf, a4, a5, &theDict);
    if (!ActualKey)
    {
      v34 = CFGetAllocator(a1);
      v35 = CFArrayCreateMutable(v34, 0, MEMORY[0x1E695E9C0]);
      if (value)
      {
        v36 = theDict;
        CFDictionarySetValue(theDict, @"keyIndex", v33);
        CFArrayAppendValue(v35, v32);
        CFArrayAppendValue(v35, v36);
        CFDictionarySetValue(*v11, key, v35);
        CFArrayAppendValue(v11[2], v36);
        CFRelease(v36);
        v37 = v35;
LABEL_62:
        CFRelease(v37);
        x_low = 0;
        goto LABEL_63;
      }

      FigQuickTimeMetadataSerializerAddItem_cold_4(&rect);
      goto LABEL_96;
    }

    goto LABEL_99;
  }

  ActualKey = FigQuickTimeMetadataCreateNewItem(a1, cf, a4, a5, &theDict);
  if (!ActualKey)
  {
    v41 = CFArrayGetValueAtIndex(value, 0);
    if (v41)
    {
      v42 = CFDictionaryGetValue(v41, @"keyIndex");
      v43 = theDict;
      CFDictionarySetValue(theDict, @"keyIndex", v42);
      CFArrayAppendValue(value, v43);
      CFArrayAppendValue(v11[2], v43);
      v37 = v43;
      goto LABEL_62;
    }

    FigQuickTimeMetadataSerializerAddItem_cold_3(&rect);
    goto LABEL_95;
  }

LABEL_99:
  x_low = ActualKey;
LABEL_54:
  v35 = 0;
LABEL_55:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v35)
  {
    CFRelease(v35);
  }

LABEL_63:
  if (cf)
  {
    CFRelease(cf);
  }

  if (key)
  {
    CFRelease(key);
  }

  return x_low;
}

uint64_t FigQuickTimeMetadataSerializerContainsKey(const void *a1, __CFString *a2, const void *a3)
{
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2 && a3)
    {
      v7 = DerivedStorage;
      if (CFStringGetLength(a2) == 4)
      {
        if (*v7)
        {
          v10 = CFGetAllocator(a1);
          ActualKey = FigQuickTimeMetadataCreateActualKey(v10, a2, a3, 0, &key);
          v12 = key;
          if (ActualKey)
          {
            v8 = 0;
            if (!key)
            {
              return v8;
            }
          }

          else
          {
            v8 = CFDictionaryContainsKey(*v7, key);
            v12 = key;
            if (!key)
            {
              return v8;
            }
          }

          CFRelease(v12);
          return v8;
        }
      }

      else
      {
        FigQuickTimeMetadataSerializerContainsKey_cold_1();
      }
    }

    else
    {
      FigQuickTimeMetadataSerializerContainsKey_cold_2();
    }
  }

  else
  {
    FigQuickTimeMetadataSerializerContainsKey_cold_3();
  }

  return 0;
}

uint64_t FigQuickTimeMetadataCreateNewItem(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4, __CFDictionary **a5)
{
  v9 = CFGetAllocator(a1);
  if (a4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, a4);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v11 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"value", a3);
    CFDictionarySetValue(v11, @"key", a2);
    result = 0;
    *a5 = v11;
  }

  else
  {
    FigQuickTimeMetadataCreateNewItem_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t qtmetadata_checkIsValidAndReturnRasterRectangleValueArray(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 != CFArrayGetTypeID() || CFArrayGetCount(v5) != 6)
    {
      return 0;
    }

    if (a2 && (a3 & 0xFFFFFFFFFFFFFFFELL) != 0xC)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
      return 0;
    }

    v7 = 0;
    while (1)
    {
      result = FigCFArrayGetInt32AtIndex();
      if (!result)
      {
        break;
      }

      if (a2)
      {
        *(a2 + 2 * v7) = bswap32(0) >> 16;
      }

      if (++v7 == 6)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t qtmetadata_checkIsValidAndReturnExtendedRasterRectangleValue(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _WORD *a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  if (result)
  {
    v14 = result;
    v15 = CFGetTypeID(result);
    if (v15 != CFArrayGetTypeID() || CFArrayGetCount(v14) < 6)
    {
      return 0;
    }

    if (a2 && (a3 & 0xFFFFFFFFFFFFFFFELL) != 0xC)
    {
      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954715, "<<<< FMDW_QTMETA >>>>", 477, v9);
      return 0;
    }

    for (i = 0; i != 6; ++i)
    {
      result = FigCFArrayGetInt32AtIndex();
      if (!result)
      {
        return result;
      }

      if (a2)
      {
        *(a2 + 2 * i) = bswap32(0) >> 16;
      }
    }

    Count = CFArrayGetCount(v14);
    if (Count == 7)
    {
      v19 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 4294954715, "<<<< FMDW_QTMETA >>>>", 513, v9);
      return 0;
    }

    if (Count == 6)
    {
      if (a4)
      {
        *a4 = 0;
      }

      if (a5)
      {
        *a5 = 0;
      }

      return 1;
    }

    result = FigCFArrayGetInt32AtIndex();
    if (result)
    {
      if (a4)
      {
        *a4 = 0;
      }

      result = FigCFArrayGetInt32AtIndex();
      if (result)
      {
        if (a5)
        {
          *a5 = 0;
        }

        if (CFArrayGetCount(v14) < 8)
        {
          v20 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 4294954715, "<<<< FMDW_QTMETA >>>>", 557, v9);
          return 0;
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf(const void *a1, CMBlockBufferRef *a2)
{
  v135 = *MEMORY[0x1E69E9840];
  v110 = 0;
  blockBufferOut = 0;
  memset(v109, 0, sizeof(v109));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!a2)
    {
      FigQuickTimeMetadataSerializerCreateBBuf_cold_9(v134);
      return LODWORD(v134[0].origin.x);
    }

    v5 = DerivedStorage;
    v6 = *DerivedStorage;
    if (v6 && CFDictionaryGetCount(v6) || v5[3] || *(v5 + 8) || *(v5 + 9))
    {
      v7 = CFGetAllocator(a1);
      x_low = CMBlockBufferCreateEmpty(v7, 8u, 0, &blockBufferOut);
      v9 = blockBufferOut;
      if (x_low)
      {
        goto LABEL_243;
      }

      v10 = FigAtomWriterInitWithBlockBuffer();
      if (v10)
      {
        x_low = v10;
        v9 = blockBufferOut;
        goto LABEL_243;
      }

      v11 = CMBaseObjectGetDerivedStorage();
      v12 = FigAtomWriterBeginAtom();
      if (v12)
      {
        goto LABEL_229;
      }

      v113 = 0;
      memset(v112, 0, sizeof(v112));
      v12 = FigAtomWriterInitWithParent();
      if (v12)
      {
        goto LABEL_229;
      }

      *buffer = 0;
      memset(v134, 0, 26);
      v13 = CMBaseObjectGetDerivedStorage();
      LODWORD(v134[0].origin.y) = 1635017837;
      v12 = FigAtomWriterBeginAtom();
      if (v12)
      {
        goto LABEL_229;
      }

      v14 = MEMORY[0x1E695E480];
      v106 = v11;
      if (*(v13 + 24))
      {
        BytesFromCFString = FigCreateBytesFromCFString();
        if (!BytesFromCFString)
        {
          FigQuickTimeMetadataSerializerCreateBBuf_cold_1(v118);
          x_low = LODWORD(v118[0]);
          if (LODWORD(v118[0]))
          {
            goto LABEL_230;
          }

          goto LABEL_24;
        }

        v16 = BytesFromCFString;
      }

      else
      {
        v16 = 0;
      }

      appended = FigAtomWriterAppendData();
      if (!appended)
      {
        if (*buffer < 1 || (appended = FigAtomWriterAppendData(), !appended))
        {
          appended = FigAtomWriterEndAtom();
        }
      }

      x_low = appended;
      if (v16)
      {
        CFAllocatorDeallocate(*v14, v16);
      }

      if (!x_low)
      {
LABEL_24:
        LODWORD(v114) = 0;
        v134[0].origin.x = 0.0;
        LODWORD(point.x) = 0;
        key = CMBaseObjectGetDerivedStorage();
        v18 = *(key + 1);
        if (!v18)
        {
          goto LABEL_45;
        }

        Count = CFArrayGetCount(v18);
        if (!Count)
        {
          goto LABEL_45;
        }

        v20 = Count;
        if (HIDWORD(Count))
        {
          FigQuickTimeMetadataSerializerCreateBBuf_cold_3(buffer);
          x_low = *buffer;
          if (*buffer)
          {
            goto LABEL_230;
          }

          goto LABEL_45;
        }

        v12 = FigAtomWriterBeginAtom();
        if (v12)
        {
          goto LABEL_229;
        }

        v12 = FigAtomWriterAppendVersionAndFlags();
        if (v12)
        {
          goto LABEL_229;
        }

        LODWORD(v118[0]) = bswap32(v20);
        v12 = FigAtomWriterAppendData();
        if (v12)
        {
          goto LABEL_229;
        }

        v21 = 0;
        v22 = *v14;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(key + 1), v21);
          Value = CFDictionaryGetValue(ValueAtIndex, @"key");
          v25 = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
          v134[0].origin.x = 0.0;
          v26 = CFGetTypeID(Value);
          TypeID = CFStringGetTypeID();
          if (v26 == TypeID)
          {
            BytePtr = FigCreateBytesFromCFString();
            if (!BytePtr)
            {
              FigQuickTimeMetadataSerializerCreateBBuf_cold_2(buffer);
              x_low = *buffer;
LABEL_44:
              v14 = MEMORY[0x1E695E480];
              if (x_low)
              {
                break;
              }

LABEL_45:
              v34 = CMBaseObjectGetDerivedStorage();
              v12 = FigAtomWriterBeginAtom();
              if (!v12)
              {
                v117 = 0;
                v115 = 0u;
                v116 = 0u;
                v114 = 0u;
                v12 = FigAtomWriterInitWithParent();
                if (!v12)
                {
                  v35 = *(v34 + 16);
                  if (v35)
                  {
                    v36 = CFArrayGetCount(v35);
                    if (v36 >= 1)
                    {
                      v37 = v36;
                      v38 = 0;
                      v107 = *MEMORY[0x1E695E6D0];
                      v39 = *v14;
                      while (1)
                      {
                        v40 = CFArrayGetValueAtIndex(*(v34 + 16), v38);
                        valuePtr = 0;
                        v119 = 0;
                        memset(v118, 0, sizeof(v118));
                        v41 = CFDictionaryGetValue(v40, @"keyIndex");
                        CFNumberGetValue(v41, kCFNumberSInt32Type, &valuePtr);
                        v12 = FigAtomWriterBeginAtom();
                        if (v12)
                        {
                          goto LABEL_229;
                        }

                        v12 = FigAtomWriterInitWithParent();
                        if (v12)
                        {
                          goto LABEL_229;
                        }

                        if (!CFDictionaryContainsKey(v40, @"storageLocation"))
                        {
                          break;
                        }

                        if (FigCFDictionaryGetDictionaryValue())
                        {
                          if (FigCFDictionaryGetNumberValue())
                          {
                            UInt64 = FigCFNumberGetUInt64();
                            DataValue = FigCFDictionaryGetDataValue();
                            if (DataValue)
                            {
                              Length = CFDataGetLength(DataValue);
                              v133[0] = 0;
                              v126[0] = 0;
                              LOBYTE(v129) = -120;
                              LOWORD(cf) = 0;
                              *&v134[0].origin.x = bswap64(UInt64);
                              *buffer = bswap64(Length);
                              v12 = FigAtomWriterBeginAtom();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterEndAtom();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

LABEL_207:
                              x_low = FigAtomWriterEndAtom();
                              if (x_low)
                              {
                                goto LABEL_230;
                              }

                              goto LABEL_208;
                            }

                            FigQuickTimeMetadataSerializerCreateBBuf_cold_4(v134);
                          }

                          else
                          {
                            FigQuickTimeMetadataSerializerCreateBBuf_cold_5(v134);
                          }
                        }

                        else
                        {
                          FigQuickTimeMetadataSerializerCreateBBuf_cold_6(v134);
                        }

                        x_low = LODWORD(v134[0].origin.x);
                        if (LODWORD(v134[0].origin.x))
                        {
                          goto LABEL_230;
                        }

LABEL_208:
                        if (++v38 == v37)
                        {
                          goto LABEL_226;
                        }
                      }

                      v128 = 0;
                      v127 = 0;
                      cf = 0;
                      *v126 = 0;
                      v12 = FigAtomWriterBeginAtom();
                      if (v12)
                      {
                        goto LABEL_229;
                      }

                      v45 = CFDictionaryGetValue(v40, @"value");
                      if (v45)
                      {
                        v46 = CFRetain(v45);
                      }

                      else
                      {
                        v46 = 0;
                      }

                      v129 = 0;
                      FigMetadataGetNumericalDataTypeForMetadataProperties(@"com.apple.quicktime.mdta", v40, @"com.apple.quicktime.mdta", &v127, v126);
                      if (v47)
                      {
                        v48 = CFGetTypeID(v46);
                        if (v48 == CFStringGetTypeID() || v48 == CFDateGetTypeID())
                        {
                          v127 = 1;
                          goto LABEL_73;
                        }

                        if (v48 == CFNumberGetTypeID() || v48 == CFBooleanGetTypeID())
                        {
                          if (CFNumberIsFloatType(v46))
                          {
                            if (CFNumberGetByteSize(v46) == 4)
                            {
                              v67 = 23;
                            }

                            else
                            {
                              v67 = 24;
                            }

LABEL_165:
                            v127 = v67;
                          }

                          else
                          {
                            v127 = 21;
                            if (CFNumberGetByteSize(v46) == 8)
                            {
                              v134[0].origin.x = 0.0;
                              v134[0].origin.y = 0.0;
                              CFNumberGetValue(v46, kCFNumberMaxType|kCFNumberSInt8Type, v134);
                              if (!*&v134[0].origin.x && (*&v134[0].origin.y & 0x8000000000000000) != 0)
                              {
                                v67 = 22;
                                goto LABEL_165;
                              }
                            }
                          }
                        }
                      }

                      else if ((v127 - 23) >= 0xFFFFFFFE)
                      {
                        if (v46)
                        {
                          v56 = CFGetTypeID(v46);
                          if (v56 == CFNumberGetTypeID() || (v57 = CFGetTypeID(v46), v57 == CFBooleanGetTypeID()))
                          {
                            if (*v126 && !FigMetadataDataLengthCanHoldValue(v126[0], v127 == 21, v46))
                            {
                              *v126 = 0;
                            }
                          }
                        }
                      }

LABEL_73:
                      v129 = bswap32(v127 & 0xFFFFFF);
                      v49 = FigAtomWriterAppendData();
                      if (v49)
                      {
                        goto LABEL_216;
                      }

                      v50 = CFDictionaryGetValue(v40, @"locale");
                      if (v50)
                      {
                        v51 = v50;
                        PackedISO639_2TFromLocale = FigMetadataGetPackedISO639_2TFromLocale(v50);
                        v53 = CFLocaleGetValue(v51, v107);
                        if (v53)
                        {
                          BYTE2(v134[0].origin.x) = 0;
                          LOWORD(v134[0].origin.x) = 0;
                          CString = CFStringGetCString(v53, v134, 3, 0x600u);
                          v55 = bswap32(LOWORD(v134[0].origin.x)) >> 16;
                          if (!CString)
                          {
                            v55 = 0;
                          }

LABEL_88:
                          HIWORD(v128) = __rev16(PackedISO639_2TFromLocale);
                          LOWORD(v128) = __rev16(v55);
                          v49 = FigAtomWriterAppendData();
                          if (v49)
                          {
                            goto LABEL_216;
                          }

                          if (v127 > 23)
                          {
                            switch(v127)
                            {
                              case 'A':
                              case 'K':
                                goto LABEL_91;
                              case 'B':
                              case 'L':
                                goto LABEL_101;
                              case 'C':
                              case 'M':
                                goto LABEL_160;
                              case 'D':
                              case 'E':
                              case 'I':
                              case 'R':
                              case 'S':
                                goto LABEL_149;
                              case 'F':
                                if (!v46)
                                {
                                  goto LABEL_199;
                                }

                                v88 = CFGetTypeID(v46);
                                if (v88 != CFDictionaryGetTypeID())
                                {
                                  goto LABEL_199;
                                }

                                v134[0].origin.x = 0.0;
                                v134[0].origin.y = 0.0;
                                if (!CGPointMakeWithDictionaryRepresentation(v46, &v134[0].origin))
                                {
                                  goto LABEL_199;
                                }

                                goto LABEL_186;
                              case 'G':
                                if (!v46)
                                {
                                  goto LABEL_199;
                                }

                                v97 = CFGetTypeID(v46);
                                if (v97 != CFDictionaryGetTypeID())
                                {
                                  goto LABEL_199;
                                }

                                v134[0].origin.x = 0.0;
                                v134[0].origin.y = 0.0;
                                if (!CGSizeMakeWithDictionaryRepresentation(v46, v134))
                                {
                                  goto LABEL_199;
                                }

LABEL_186:
                                *buffer = vrev32_s8(vcvt_f32_f64(v134[0].origin));
                                goto LABEL_198;
                              case 'H':
                                if (!v46)
                                {
                                  goto LABEL_199;
                                }

                                v98 = CFGetTypeID(v46);
                                if (v98 != CFDictionaryGetTypeID())
                                {
                                  goto LABEL_199;
                                }

                                memset(v134, 0, 32);
                                if (!CGRectMakeWithDictionaryRepresentation(v46, v134))
                                {
                                  goto LABEL_199;
                                }

                                *buffer = vrev32q_s8(vcvt_hight_f32_f64(vcvt_f32_f64(v134[0].origin), v134[0].size));
                                goto LABEL_198;
                              case 'J':
                              case 'N':
                                goto LABEL_158;
                              case 'O':
                                v105 = a2;
                                if (!v46)
                                {
                                  goto LABEL_181;
                                }

                                v89 = CFGetTypeID(v46);
                                if (v89 != CFArrayGetTypeID() || CFArrayGetCount(v46) != 9)
                                {
                                  goto LABEL_181;
                                }

                                v90 = -9;
                                v91 = v134;
                                do
                                {
                                  v92 = CFArrayGetValueAtIndex(v46, v90 + 9);
                                  if (!v92)
                                  {
                                    goto LABEL_181;
                                  }

                                  v93 = v92;
                                  v94 = CFGetTypeID(v92);
                                  if (v94 != CFNumberGetTypeID())
                                  {
                                    goto LABEL_181;
                                  }

                                  CFNumberGetValue(v93, kCFNumberDoubleType, v91);
                                  *&v91->origin.x = bswap64(*&v91->origin.x);
                                  v91 = (v91 + 8);
                                }

                                while (!__CFADD__(v90++, 1));
                                v96 = FigAtomWriterAppendData();
                                if (!v96)
                                {
LABEL_181:
                                  v61 = 0;
                                  goto LABEL_182;
                                }

                                x_low = v96;
                                v61 = 0;
LABEL_224:
                                a2 = v105;
                                goto LABEL_202;
                              case 'P':
                              case 'Q':
                                if (!v46)
                                {
                                  goto LABEL_199;
                                }

                                v78 = CFGetTypeID(v46);
                                if (v78 != CFArrayGetTypeID())
                                {
                                  goto LABEL_199;
                                }

                                v79 = v127;
                                if (v127 != 80)
                                {
                                  goto LABEL_138;
                                }

                                if (CFArrayGetCount(v46) < 3)
                                {
                                  goto LABEL_199;
                                }

                                v79 = v127;
LABEL_138:
                                if (v79 == 81 && CFArrayGetCount(v46) < 2)
                                {
                                  goto LABEL_199;
                                }

                                v105 = a2;
                                point.x = 0.0;
                                point.y = 0.0;
                                v103 = 8 * CFArrayGetCount(v46);
                                v61 = malloc_type_calloc(1uLL, v103, 0x114FD564uLL);
                                if (!v61)
                                {
                                  FigQuickTimeMetadataSerializerCreateBBuf_cold_7(&point, v134);
                                  x_low = LODWORD(v134[0].origin.x);
                                  goto LABEL_224;
                                }

                                if (CFArrayGetCount(v46) < 1)
                                {
                                  goto LABEL_147;
                                }

                                v80 = 0;
                                break;
                              case 'T':
                                if (!qtmetadata_checkIsValidAndReturnRasterRectangleValueArray(v46, v134, 12))
                                {
                                  goto LABEL_199;
                                }

                                goto LABEL_198;
                              case 'U':
                                v122 = 0;
                                memset(v134, 0, 60);
                                v131 = 0u;
                                memset(v132, 0, sizeof(v132));
                                *buffer = 0u;
                                if (!qtmetadata_checkIsValidAndReturnExtendedRasterRectangleValue(v46, v133, 12, &v122 + 1, &v122, v134, 0x3CuLL, buffer, 0x3CuLL))
                                {
                                  goto LABEL_199;
                                }

                                v49 = FigAtomWriterAppendData();
                                if (v49)
                                {
                                  goto LABEL_216;
                                }

                                v121 = v122 & 0xF | (16 * HIBYTE(v122));
                                v49 = FigAtomWriterAppendData();
                                if (v49)
                                {
                                  goto LABEL_216;
                                }

                                if (HIBYTE(v122))
                                {
                                  v49 = FigAtomWriterAppendData();
                                  if (v49)
                                  {
                                    goto LABEL_216;
                                  }
                                }

                                if (!v122)
                                {
                                  goto LABEL_199;
                                }

LABEL_198:
                                v49 = FigAtomWriterAppendData();
                                if (!v49)
                                {
                                  goto LABEL_199;
                                }

                                goto LABEL_216;
                              default:
                                if (v127 == 24)
                                {
                                  if (v46)
                                  {
                                    v99 = CFGetTypeID(v46);
                                    if (v99 == CFNumberGetTypeID() || (v100 = CFGetTypeID(v46), v100 == CFBooleanGetTypeID()))
                                    {
                                      v134[0].origin.x = 0.0;
                                      v86 = v46;
                                      v87 = kCFNumberFloat64Type;
                                      goto LABEL_159;
                                    }
                                  }

                                  goto LABEL_199;
                                }

                                if (v127 != 30)
                                {
                                  goto LABEL_149;
                                }

                                if (!v46)
                                {
                                  goto LABEL_199;
                                }

                                v68 = CFGetTypeID(v46);
                                if (v68 != CFDictionaryGetTypeID() || CFDictionaryGetCount(v46) != 4)
                                {
                                  goto LABEL_199;
                                }

                                v104 = a2;
                                v69 = 0;
                                *&v134[0].origin.x = @"widthPixels";
                                *&v134[0].origin.y = @"heightPixels";
                                v70 = buffer;
                                *&v134[0].size.width = @"widthPoints";
                                *&v134[0].size.height = @"heightPoints";
                                do
                                {
                                  v71 = CFDictionaryGetValue(v46, *(&v134[0].origin.x + v69));
                                  if (!v71 || (v72 = v71, v73 = CFGetTypeID(v71), v73 != CFNumberGetTypeID()))
                                  {
                                    a2 = v104;
                                    goto LABEL_199;
                                  }

                                  CFNumberGetValue(v72, kCFNumberSInt32Type, v70);
                                  *v70 = bswap32(*v70);
                                  v70 += 4;
                                  v69 += 8;
                                }

                                while (v69 != 32);
                                v49 = FigAtomWriterAppendData();
                                a2 = v104;
                                if (!v49)
                                {
                                  goto LABEL_199;
                                }

                                goto LABEL_216;
                            }

                            do
                            {
                              v81 = CFArrayGetValueAtIndex(v46, v80);
                              if (!v81 || (v82 = v81, v83 = CFGetTypeID(v81), v83 != CFDictionaryGetTypeID()) || !CGPointMakeWithDictionaryRepresentation(v82, &point))
                              {
LABEL_182:
                                a2 = v105;
                                goto LABEL_200;
                              }

                              v61[v80++] = vrev32_s8(vcvt_f32_f64(point));
                            }

                            while (v80 < CFArrayGetCount(v46));
LABEL_147:
                            v84 = FigAtomWriterAppendData();
                            a2 = v105;
                            if (!v84)
                            {
                              goto LABEL_200;
                            }

LABEL_201:
                            x_low = v84;
LABEL_202:
                            if (cf)
                            {
                              CFRelease(cf);
                            }

                            free(v61);
                            if (v46)
                            {
                              CFRelease(v46);
                            }

                            if (x_low)
                            {
                              break;
                            }

                            goto LABEL_207;
                          }

                          if ((v127 - 1) >= 3)
                          {
                            if ((v127 - 21) >= 2)
                            {
                              if (v127 == 23)
                              {
                                if (v46)
                                {
                                  v74 = CFGetTypeID(v46);
                                  if (v74 == CFNumberGetTypeID() || (v75 = CFGetTypeID(v46), v75 == CFBooleanGetTypeID()))
                                  {
                                    LODWORD(v134[0].origin.x) = 0;
                                    v76 = v46;
                                    v77 = kCFNumberFloat32Type;
                                    goto LABEL_161;
                                  }
                                }
                              }

                              else
                              {
LABEL_149:
                                if (v46)
                                {
                                  v85 = CFGetTypeID(v46);
                                  if (v85 == CFDataGetTypeID())
                                  {
                                    CFDataGetLength(v46);
                                    CFDataGetBytePtr(v46);
                                    goto LABEL_162;
                                  }
                                }
                              }
                            }

                            else
                            {
                              v58 = CFGetTypeID(v46);
                              if (v58 == CFNumberGetTypeID() || (v59 = CFGetTypeID(v46), v59 == CFBooleanGetTypeID()))
                              {
                                ByteSize = *v126;
                                if (!*v126)
                                {
                                  ByteSize = CFNumberGetByteSize(v46);
                                }

                                v61 = 0;
                                x_low = 4294954709;
                                if (ByteSize <= 3)
                                {
                                  if (ByteSize == 1)
                                  {
LABEL_91:
                                    LOBYTE(v134[0].origin.x) = 0;
                                    CFNumberGetValue(v46, kCFNumberSInt8Type, v134);
                                  }

                                  else
                                  {
                                    if (ByteSize != 2)
                                    {
                                      goto LABEL_202;
                                    }

LABEL_101:
                                    LOWORD(v134[0].origin.x) = 0;
                                    CFNumberGetValue(v46, kCFNumberSInt16Type, v134);
                                    LOWORD(v134[0].origin.x) = bswap32(LOWORD(v134[0].origin.x)) >> 16;
                                  }

                                  goto LABEL_162;
                                }

                                if (ByteSize != 4)
                                {
                                  if (ByteSize != 8)
                                  {
                                    goto LABEL_202;
                                  }

LABEL_158:
                                  v134[0].origin.x = 0.0;
                                  v86 = v46;
                                  v87 = kCFNumberSInt64Type;
LABEL_159:
                                  CFNumberGetValue(v86, v87, v134);
                                  *&v134[0].origin.x = bswap64(*&v134[0].origin.x);
LABEL_162:
                                  v84 = FigAtomWriterAppendData();
                                  v61 = 0;
                                  if (v84)
                                  {
                                    goto LABEL_201;
                                  }

LABEL_200:
                                  v84 = FigAtomWriterEndAtom();
                                  goto LABEL_201;
                                }

LABEL_160:
                                LODWORD(v134[0].origin.x) = 0;
                                v76 = v46;
                                v77 = kCFNumberSInt32Type;
LABEL_161:
                                CFNumberGetValue(v76, v77, v134);
                                LODWORD(v134[0].origin.x) = bswap32(LODWORD(v134[0].origin.x));
                                goto LABEL_162;
                              }
                            }

LABEL_199:
                            v61 = 0;
                            goto LABEL_200;
                          }

                          if (!v46)
                          {
                            goto LABEL_199;
                          }

                          v62 = CFGetTypeID(v46);
                          if (v62 == CFDateGetTypeID())
                          {
                            v49 = FigMetadataCopyISO8601GMTStringFromDate(v46, &cf);
                            if (!v49)
                            {
                              v63 = cf;
                              if (!cf)
                              {
                                CFRelease(v46);
                                v61 = 0;
                                v46 = 0;
                                goto LABEL_200;
                              }

                              CFRetain(cf);
                              CFRelease(v46);
                              v46 = v63;
                              goto LABEL_107;
                            }

LABEL_216:
                            x_low = v49;
                          }

                          else
                          {
LABEL_107:
                            v64 = CFGetTypeID(v46);
                            if (v64 != CFStringGetTypeID())
                            {
                              goto LABEL_199;
                            }

                            v124 = 0;
                            if (!CFStringGetLength(v46))
                            {
                              goto LABEL_199;
                            }

                            v65 = FigCreateBytesFromCFString();
                            if (!v65)
                            {
                              FigQuickTimeMetadataSerializerCreateBBuf_cold_8(&v124, v134);
                              v61 = 0;
                              x_low = LODWORD(v134[0].origin.x);
                              goto LABEL_202;
                            }

                            v66 = v65;
                            x_low = FigAtomWriterAppendData();
                            CFAllocatorDeallocate(v39, v66);
                            if (!x_low)
                            {
                              goto LABEL_199;
                            }
                          }

                          v61 = 0;
                          goto LABEL_202;
                        }
                      }

                      else
                      {
                        PackedISO639_2TFromLocale = 0;
                      }

                      v55 = 0;
                      goto LABEL_88;
                    }
                  }

LABEL_226:
                  v12 = FigAtomWriterEndAtom();
                  if (!v12)
                  {
                    v12 = FigMetadataWriteFreeAtom(v109, v112, *(v106 + 32), *(v106 + 36));
                    if (!v12)
                    {
                      v12 = FigAtomWriterEndAtom();
                    }
                  }
                }
              }

LABEL_229:
              x_low = v12;
              break;
            }
          }

          else
          {
            *&v134[0].origin.x = CFDataGetLength(Value);
            BytePtr = CFDataGetBytePtr(Value);
          }

          LODWORD(v114) = bswap32(LODWORD(v134[0].origin.x) + 8);
          v29 = FigAtomWriterAppendData();
          if (v29)
          {
            goto LABEL_235;
          }

          *buffer = 0;
          v30 = CFStringGetLength(v25);
          v136.location = 0;
          v136.length = v30;
          Bytes = CFStringGetBytes(v25, v136, 0, 0, 0, buffer, 4, 0);
          v32 = *buffer;
          v33 = bswap32(*buffer);
          if (v30 == Bytes)
          {
            v32 = v33;
          }

          LODWORD(point.x) = bswap32(v32);
          v29 = FigAtomWriterAppendData();
          if (v29 || (v29 = FigAtomWriterAppendData(), v29))
          {
LABEL_235:
            x_low = v29;
            if (v26 == TypeID && BytePtr != 0)
            {
              CFAllocatorDeallocate(v22, BytePtr);
            }

            break;
          }

          if (v26 == TypeID)
          {
            CFAllocatorDeallocate(v22, BytePtr);
          }

          if (v20 == ++v21)
          {
            x_low = FigAtomWriterEndAtom();
            goto LABEL_44;
          }
        }
      }

LABEL_230:
      v9 = blockBufferOut;
    }

    else
    {
      v9 = 0;
      x_low = 0;
    }
  }

  else
  {
    FigQuickTimeMetadataSerializerCreateBBuf_cold_10(v134);
    v9 = 0;
    x_low = LODWORD(v134[0].origin.x);
  }

  if (a2 && !x_low)
  {
    *a2 = v9;
    return x_low;
  }

LABEL_243:
  if (v9)
  {
    CFRelease(v9);
  }

  return x_low;
}

uint64_t FigQuickTimeMetadataSerializerCreateCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!a3)
    {
      FigQuickTimeMetadataSerializerCreateCopy_cold_1(&v19);
      return v19;
    }

    v6 = DerivedStorage;
    FigMetadataSerializerCreateForQuickTimeMetadata(a1, &v18);
    v8 = v7;
    v9 = v18;
    if (v8)
    {
      goto LABEL_19;
    }

    v10 = CMBaseObjectGetDerivedStorage();
    if (*v6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, *v6);
    }

    else
    {
      MutableCopy = 0;
    }

    *v10 = MutableCopy;
    v12 = *(v6 + 8);
    if (v12)
    {
      v13 = CFArrayCreateMutableCopy(a1, 0, v12);
    }

    else
    {
      v13 = 0;
    }

    v10[1] = v13;
    v14 = *(v6 + 16);
    if (v14)
    {
      v15 = CFArrayCreateMutableCopy(a1, 0, v14);
    }

    else
    {
      v15 = 0;
    }

    v10[2] = v15;
    v16 = *(v6 + 24);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    v8 = 0;
    v10[3] = v16;
    v10[4] = *(v6 + 32);
    v9 = v18;
  }

  else
  {
    FigQuickTimeMetadataSerializerCreateCopy_cold_2(&v19);
    v9 = 0;
    v8 = v19;
    if (!a3)
    {
      goto LABEL_19;
    }
  }

  if (!v8)
  {
    *a3 = v9;
    return v8;
  }

LABEL_19:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

double FigImageQueueCreateForCoreAnimationWithOptions(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  if (a4)
  {
    FigImageQueueGetClassID();
    if (CMDerivedObjectCreate())
    {
      LoggingIdentifierOfLength = 0;
      v9 = 0;
LABEL_4:
      if (LoggingIdentifierOfLength)
      {
        CFRelease(LoggingIdentifierOfLength);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      return result;
    }

    MEMORY[0x19A8D3660](&sPIQCACreateRegistrationDictionaryMutexOnce, piqca_createRegistrationDictionaryMutex);
    MEMORY[0x19A8D3660](&sCAImageQueueSetEDRDeadlineMutexOnce, piqca_loadCAImageQueueSetEDRDeadline);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = FigOSTransactionCreate();
    *(DerivedStorage + 3000) = v12;
    if (!v12)
    {
      FigImageQueueCreateForCoreAnimationWithOptions_cold_6(&v36);
      LoggingIdentifierOfLength = 0;
      v9 = 0;
      goto LABEL_4;
    }

    *(DerivedStorage + 3232) = 0;
    StringIfPresent = FigCFDictionaryGetStringIfPresent();
    v14 = MEMORY[0x1E695E480];
    if (StringIfPresent)
    {
      v15 = *MEMORY[0x1E695E480];
      LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
      v16 = CFStringCreateWithFormat(v15, 0, @"%@:IQ/%@", 0, LoggingIdentifierOfLength);
      v9 = v16;
      if (v16)
      {
        CFStringGetCString(v16, (DerivedStorage + 3232), 32, 0x600u);
      }
    }

    else
    {
      v9 = 0;
      LoggingIdentifierOfLength = 0;
    }

    *(DerivedStorage + 3264) = 1;
    v17 = *MEMORY[0x1E695E4C0];
    if (v17 == FigCFDictionaryGetValue())
    {
      *(DerivedStorage + 3264) = 0;
    }

    *(DerivedStorage + 8) = FigSimpleMutexCreate();
    v18 = malloc_type_calloc(0x18uLL, 1uLL, 0x3B5A9EE2uLL);
    *(DerivedStorage + 16) = v18;
    *v18 = 0;
    v18[4] = 1;
    *(*(DerivedStorage + 16) + 8) = FigSimpleMutexCreate();
    *(DerivedStorage + 2912) = FigSimpleMutexCreate();
    v19 = *v14;
    Mutable = CFDictionaryCreateMutable(*v14, 0, 0, MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 120) = Mutable;
    if (!Mutable)
    {
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, DerivedStorage + 3232);
      goto LABEL_4;
    }

    v21 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    CFDictionarySetValue(*(DerivedStorage + 120), 0, v21);
    *DerivedStorage = a2;
    CFRetain(a2);
    *(DerivedStorage + 49) = 1;
    *(DerivedStorage + 137) = 0;
    *(DerivedStorage + 212) = 0x100000001;
    *(DerivedStorage + 56) = 0;
    CAImageQueueSetFlags();
    *(DerivedStorage + 88) = 0;
    *(DerivedStorage + 96) = 0x404E000000000000;
    *(DerivedStorage + 3016) = 4;
    *(DerivedStorage + 3020) = 0;
    CAImageQueueSetEnhancementMode();
    CAImageQueueSetFlags();
    if (defaultDisableColorMatching_alreadyChecked == 1)
    {
      if (!defaultDisableColorMatching_result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v22 = MGGetBoolAnswer();
      defaultDisableColorMatching_result = v22 ^ 1;
      defaultDisableColorMatching_alreadyChecked = 1;
      if (v22)
      {
LABEL_23:
        if (defaultEnableDisplayTracking_alreadyChecked == 1)
        {
          if (!defaultEnableDisplayTracking_result)
          {
            goto LABEL_31;
          }
        }

        else
        {
          defaultEnableDisplayTracking_result = FigGetCFPreferenceNumberWithDefault();
          defaultEnableDisplayTracking_alreadyChecked = 1;
          if (!defaultEnableDisplayTracking_result)
          {
LABEL_31:
            FigBytePumpGetFigBaseObject();
            *(DerivedStorage + 132) = 1;
            *(DerivedStorage + 3056) = 0;
            *(DerivedStorage + 3064) = FigDispatchQueueCreateWithPriority();
            if (_MergedGlobals_54 != -1)
            {
              FigImageQueueCreateForCoreAnimationWithOptions_cold_1();
            }

            v23 = FigCFWeakReferenceHolderCreateWithReferencedObject();
            if (v23)
            {
              v24 = v23;
              FigSimpleMutexLock();
              CFDictionarySetValue(qword_1ED4CAA40, 0, v24);
              FigSimpleMutexUnlock();
              CFRelease(v24);
            }

            else
            {
              v25 = FigImageQueueCreateForCoreAnimationWithOptions_cold_2();
            }

            piqca_WakeupSharedPollingThread(v25);
            if (!FigImageQueueDisplayCountHistory_Create((DerivedStorage + 2984), v26))
            {
              FigImageQueueDisplayCountHistory_StartTracingDisplayCount(*(DerivedStorage + 2984), 0, "imagequeue");
              v27 = FigSimpleMutexCreate();
              *(DerivedStorage + 3192) = v27;
              if (v27)
              {
                v28 = FigSimpleMutexCreate();
                *(DerivedStorage + 3168) = v28;
                if (v28)
                {
                  v29 = dispatch_queue_create("com.apple.coremedia.fiq4ca.notificationQueue", 0);
                  *(DerivedStorage + 3216) = v29;
                  if (v29)
                  {
                    *(DerivedStorage + 2528) = 0;
                    *(DerivedStorage + 3032) = 0x41CDCD6500000000;
                    *(DerivedStorage + 3024) = 0;
                    *(DerivedStorage + 3040) = 0u;
                    v37 = 0u;
                    memset(v38, 0, sizeof(v38));
                    AdoptedVoucherProcessIDAndUUIDString = FigDebugGetAdoptedVoucherProcessIDAndUUIDString();
                    v31 = AdoptedVoucherProcessIDAndUUIDString;
                    *(DerivedStorage + 3144) = CFStringCreateWithFormat(v19, 0, @"com.apple.coremedia.iq.ca.client%d", AdoptedVoucherProcessIDAndUUIDString);
                    *(DerivedStorage + 3160) = -1;
                    *(DerivedStorage + 3164) = 1;
                    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
                    CMTimeMake(&v36, CFPreferenceNumberWithDefault, 1000);
                    *(DerivedStorage + 224) = v36;
                    *(DerivedStorage + 248) = FigGetCFPreferenceNumberWithDefault();
                    *(DerivedStorage + 2536) = FigSimpleMutexCreate();
                    if (v31 <= 0)
                    {
                      v31 = getpid();
                    }

                    *(DerivedStorage + 2552) = v31;
                    FigServer_CopyProcessName();
                    if (dword_1EAF19510)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    *a4 = 0;
                  }

                  else
                  {
                    FigImageQueueCreateForCoreAnimationWithOptions_cold_3(&v36);
                  }
                }

                else
                {
                  FigImageQueueCreateForCoreAnimationWithOptions_cold_4(&v36);
                }
              }

              else
              {
                FigImageQueueCreateForCoreAnimationWithOptions_cold_5(&v36);
              }
            }

            if (v21)
            {
              CFRelease(v21);
            }

            goto LABEL_4;
          }
        }

        CAImageQueueSetFlags();
        goto LABEL_31;
      }
    }

    CAImageQueueSetFlags();
    goto LABEL_23;
  }

  v10 = qword_1EAF170D8;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954486, "<<<< IQ-CA >>>>", 2080, v4);
}

uint64_t piqca_createRegistrationDictionaryMutex(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  sPIQCARegistrationDictionaryMutex = result;
  return result;
}

uint64_t piqca_WakeupSharedPollingThread(uint64_t a1)
{
  if (_MergedGlobals_54 != -1)
  {
    piqca_WakeupSharedPollingThread_cold_1();
  }

  result = qword_1ED4CAA30;
  if (qword_1ED4CAA30)
  {

    return FigSemaphoreSignal();
  }

  return result;
}

double piqca_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"CAImageQueue", a2))
  {
    v10 = *DerivedStorage;
LABEL_3:
    DictionaryRepresentation = CFRetain(v10);
LABEL_6:
    *a4 = DictionaryRepresentation;
    return result;
  }

  if (CFEqual(@"FigImageQueueProperty_CurrentFrameRate", a2))
  {
    LODWORD(valuePtr.value) = FigImageQueueFrameRateGetCurrent((DerivedStorage + 2912));
    DictionaryRepresentation = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
    goto LABEL_6;
  }

  if (CFEqual(@"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", a2))
  {
    v13 = MEMORY[0x1E695E4D0];
    v14 = *(DerivedStorage + 134);
LABEL_9:
    if (!v14)
    {
      v13 = MEMORY[0x1E695E4C0];
    }

    v10 = *v13;
    goto LABEL_3;
  }

  if (!CFEqual(@"FigImageQueueProperty_NextNonJerkyStopTime", a2))
  {
    if (CFEqual(@"FigImageQueueProperty_FirstImageEnqueued", a2))
    {
      v13 = MEMORY[0x1E695E4D0];
      v14 = *(DerivedStorage + 135);
      goto LABEL_9;
    }

    if (CFEqual(@"FigImageQueueProperty_DisplaySize", a2))
    {
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 1600));
      goto LABEL_6;
    }

    if (CFEqual(@"CAImageQueueAlwaysSync", a2))
    {
      v13 = MEMORY[0x1E695E4D0];
      v14 = *(DerivedStorage + 137);
      goto LABEL_9;
    }

    if (CFEqual(@"UseLowLatencyModeForImmediateFrames", a2))
    {
      v13 = MEMORY[0x1E695E4D0];
      v14 = *(DerivedStorage + 138);
      goto LABEL_9;
    }

    if (CFEqual(@"ForScrubbingOnly", a2))
    {
      v13 = MEMORY[0x1E695E4D0];
      v14 = *(DerivedStorage + 221);
      goto LABEL_9;
    }

    if (CFEqual(@"OriginToPresentationLatencyStatistics", a2))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v21 = Mutable;
        FigSimpleMutexLock();
        if (*(DerivedStorage + 3024) >= 1)
        {
          FigCFDictionarySetDouble();
          FigCFDictionarySetDouble();
          FigCFDictionarySetDouble();
        }

        FigCFDictionarySetInt32();
        *(DerivedStorage + 3032) = 0x41CDCD6500000000;
        *(DerivedStorage + 3024) = 0;
        *(DerivedStorage + 3040) = 0u;
        goto LABEL_39;
      }

      v22 = qword_1EAF170D8;
      v23 = v4;
      v24 = 4294954510;
      v25 = 2872;
    }

    else
    {
      if (CFEqual(@"Duration", a2))
      {
        v19 = *MEMORY[0x1E695E480];
        valuePtr = *(DerivedStorage + 3120);
        p_valuePtr = &valuePtr;
        goto LABEL_26;
      }

      if (CFEqual(@"CanSupportAV1FilmGrainDeferMode", a2))
      {
        v13 = MEMORY[0x1E695E4D0];
        v14 = *(DerivedStorage + 3264);
        goto LABEL_9;
      }

      if (!CFEqual(@"RendererPreparationInfo", a2))
      {
        if (CFEqual(@"ImageQueueGauge", a2))
        {
          DictionaryRepresentation = *(DerivedStorage + 3224);
          if (DictionaryRepresentation)
          {
            goto LABEL_60;
          }

          v27 = (DerivedStorage + 3224);
          AllocatorForMedia = FigGetAllocatorForMedia();
          if (!FigImageQueueGaugeCreate(AllocatorForMedia, 0, (DerivedStorage + 3224)))
          {
            v29 = *v27;
            FigImageQueueGetSafeDisplayDuration(a1, &valuePtr);
            FigImageQueueGaugeSetSafeDisplayDuration(v29, &valuePtr.value);
          }

          DictionaryRepresentation = *v27;
          if (*v27)
          {
LABEL_60:
            DictionaryRepresentation = CFRetain(DictionaryRepresentation);
          }

          goto LABEL_6;
        }

        if (CFEqual(@"ResponsibleProcessID", a2))
        {
          DictionaryRepresentation = FigCFNumberCreateSInt32();
          goto LABEL_6;
        }

        return result;
      }

      v26 = CFDictionaryCreateMutable(a3, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v26)
      {
        v21 = v26;
        FigSimpleMutexLock();
        FigCFDictionarySetBoolean();
        FigCFDictionarySetValue();
LABEL_39:
        FigSimpleMutexUnlock();
        *a4 = v21;
        return result;
      }

      v22 = qword_1EAF170D8;
      v23 = v4;
      v24 = 4294954484;
      v25 = 2903;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v24, "<<<< IQ-CA >>>>", v25, v23);
  }

  if (*DerivedStorage && CAImageQueueGetTimes() >= 2)
  {
    v15 = v32;
    memset(&valuePtr, 0, sizeof(valuePtr));
    CMTimebaseGetTime(&v30, *(DerivedStorage + 144));
    Seconds = CMTimeGetSeconds(&v30);
    Rate = CMTimebaseGetRate(*(DerivedStorage + 144));
    result = Rate;
    if (Rate < 0.0)
    {
      if (v15 > Seconds)
      {
        return result;
      }

      result = result * 0.1;
      if (v15 - Seconds <= result)
      {
        return result;
      }

      goto LABEL_25;
    }

    if (v15 >= Seconds)
    {
      result = result * 0.1;
      if (v15 - Seconds < result)
      {
LABEL_25:
        CMTimeMakeWithSeconds(&valuePtr, v15, 90000);
        v30 = valuePtr;
        p_valuePtr = &v30;
        v19 = a3;
LABEL_26:
        DictionaryRepresentation = CMTimeCopyAsDictionary(p_valuePtr, v19);
        goto LABEL_6;
      }
    }
  }

  return result;
}

void piqca_gmstats_dump(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CMTimebaseGetRate(v2);
    CMTimebaseGetTime(&time, *(DerivedStorage + 144));
    CMTimeGetSeconds(&time);
    CACurrentMediaTime();
    CAImageQueueGetUnconsumedImageCount();
    FigSimpleMutexLock();
    v3 = MEMORY[0x1E695E480];
    v19 = *(DerivedStorage + 2572);
    if (*(DerivedStorage + 2572))
    {
      *(DerivedStorage + 2888) = 0;
      Mutable = CFStringCreateMutable(*v3, 0);
      v5 = Mutable;
      v6 = *(DerivedStorage + 2580);
      v7 = *(DerivedStorage + 2576);
      if (*(DerivedStorage + 2568))
      {
        CFStringAppendFormat(Mutable, 0, @"Enqueued Pixel Buffer:%c%c%c%c, %u x %u ", HIBYTE(*(DerivedStorage + 2568)), BYTE2(*(DerivedStorage + 2568)), BYTE1(*(DerivedStorage + 2568)), *(DerivedStorage + 2568), *(DerivedStorage + 1576), *(DerivedStorage + 1584));
      }

      CFStringAppendCString(v5, "[\n", 0x600u);
      if (v6 >= 1)
      {
        do
        {
          if (v7 <= 0)
          {
            v8 = -(-v7 & 3);
          }

          else
          {
            v8 = v7 & 3;
          }

          CFStringAppendFormat(v5, 0, @"{PTS: %.3f s, enqueued at: host %.3f s (media %.3f s)},\n", *(DerivedStorage + 2584 + 24 * v8), *(DerivedStorage + 2584 + 24 * v8 + 8), *(DerivedStorage + 2584 + 24 * v8 + 16));
          ++v7;
          --v6;
        }

        while (v6);
      }

      CFStringAppendCString(v5, "]\n", 0x600u);
      *(DerivedStorage + 2648) = 0u;
      *(DerivedStorage + 2664) = 0u;
      *(DerivedStorage + 2616) = 0u;
      *(DerivedStorage + 2632) = 0u;
      *(DerivedStorage + 2584) = 0u;
      *(DerivedStorage + 2600) = 0u;
      *(DerivedStorage + 2568) = 0u;
    }

    else
    {
      v5 = 0;
    }

    v9 = *(DerivedStorage + 2680);
    if (*(DerivedStorage + 2680))
    {
      *(DerivedStorage + 2892) = 0;
      *(DerivedStorage + 2900) = 0;
      *(DerivedStorage + 2908) = 0;
      v10 = CFStringCreateMutable(*v3, 0);
      v11 = *(DerivedStorage + 2688);
      v12 = *(DerivedStorage + 2684);
      CFStringAppendFormat(v10, 0, @"DisplaySize: %f x %f ", *(DerivedStorage + 1600), *(DerivedStorage + 1608));
      CFStringAppendCString(v10, "[\n", 0x600u);
      if (v11 >= 1)
      {
        do
        {
          if (v12 <= 0)
          {
            v13 = -(-v12 & 3);
          }

          else
          {
            v13 = v12 & 3;
          }

          v14 = DerivedStorage + 2696 + 48 * v13;
          CFStringAppendFormat(v10, 0, @"{PTS: %.3f s, enqueued at : %.3f s, sampled at: host %.3f s (media %.3f s), displayed at: %.3f s, on glass for: %.3f ms},\n", *v14, *(v14 + 40), *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32) * 1000.0);
          ++v12;
          --v11;
        }

        while (v11);
      }

      CFStringAppendCString(v10, "]\n", 0x600u);
      *(DerivedStorage + 2856) = 0u;
      *(DerivedStorage + 2872) = 0u;
      *(DerivedStorage + 2824) = 0u;
      *(DerivedStorage + 2840) = 0u;
      *(DerivedStorage + 2792) = 0u;
      *(DerivedStorage + 2808) = 0u;
      *(DerivedStorage + 2760) = 0u;
      *(DerivedStorage + 2776) = 0u;
      *(DerivedStorage + 2728) = 0u;
      *(DerivedStorage + 2744) = 0u;
      *(DerivedStorage + 2696) = 0u;
      *(DerivedStorage + 2712) = 0u;
      *(DerivedStorage + 2680) = 0u;
    }

    else
    {
      v10 = 0;
    }

    FigSimpleMutexUnlock();
    if (v9 | v19)
    {
      if (dword_1EAF19510)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (dword_1EAF19510)
        {
          v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (dword_1EAF19510)
          {
            v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            if (dword_1EAF19510)
            {
              v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void piqca_initSharedPollingThread(void *a1)
{
  a1[2] = FigSimpleMutexCreate();
  a1[1] = FigSemaphoreCreate();
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9E8];
  a1[3] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  Mutable = CFDictionaryCreateMutable(v2, 2, MEMORY[0x1E695E9D8], v3);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69631F0], @"com.apple.coremedia.imagequeue.coreanimation.common");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69631E8], *MEMORY[0x1E695E4C0]);
  FigThreadCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void piqca_SharedPollingThread(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  while (1)
  {
    *(a1 + 40) = 0;
    FigSimpleMutexLock();
    Mutable = CFArrayCreateMutable(v2, 0, v3);
    *(a1 + 32) = Mutable;
    if (Mutable)
    {
      CFDictionaryApplyFunction(*(a1 + 24), piqca_RetainRegisteredImageQueuesStillAliveApplier, a1);
      FigSimpleMutexUnlock();
      v5 = *(a1 + 32);
      v7.length = CFArrayGetCount(v5);
      v7.location = 0;
      CFArrayApplyFunction(v5, v7, piqca_SharedDoMonitorImageQueueApplier, a1);
      v6 = *(a1 + 32);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 32) = 0;
      }
    }

    else
    {
      *(a1 + 40) = 1;
    }

    FigSemaphoreWaitRelative();
  }
}

void piqca_RetainRegisteredImageQueuesStillAliveApplier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a3 + 32), v4);

    CFRelease(v5);
  }
}

uint64_t piqca_SharedDoMonitorImageQueueApplier(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 49))
  {
    return result;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = piqca_evictExpiredFramesFromCAImageQueue(a1) != 0;
  CAImageQueueGetUnconsumedImageCount();
  if (*(DerivedStorage + 216) < 1)
  {
    v7 = -INFINITY;
    v8 = *(DerivedStorage + 112);
  }

  else
  {
    v7 = -1.0;
    v8 = *(DerivedStorage + 104);
  }

  if (v7 != v8)
  {
    v6 = 1;
  }

  v9 = FigAtomicBitAnd32Orig();
  if (*(DerivedStorage + 76) < 1)
  {
    if (v9 == 0 && !v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    FigAtomicDecrement32();
  }

  *(DerivedStorage + 104) = 0xBFF0000000000000;
  *(DerivedStorage + 112) = 0xFFF0000000000000;
  piqca_postOccupancyChanged(a1);
LABEL_11:
  result = DerivedStorage + 72;
  if (*(DerivedStorage + 72) >= 1)
  {
    result = FigAtomicDecrement32();
    if (!result)
    {
      if (dword_1EAF19510)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(DerivedStorage + 49) = 0;
      result = CAImageQueueSetFlags();
    }
  }

  if (*(DerivedStorage + 49))
  {
    *(a2 + 40) = 1;
  }

  return result;
}

uint64_t piqca_evictExpiredFramesFromCAImageQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = **&MEMORY[0x1E6960C88];
  if (!*DerivedStorage)
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = DerivedStorage[18];
  if (v4 && (CMTimebaseGetTime(&v12, v4), v11 = v12, CMTimeGetSeconds(&v11), (v5 = v3[18]) != 0) && (CMTimebaseGetRate(v5) == 0.0 || (v6 = *(v3 + 54), v6 >= 1) || v6 < 0))
  {
    v8 = CAImageQueueConsumeUnconsumedInRange();
    v7 = v8;
    if (v8)
    {
      *(v3 + 410) += v8;
      FigSimpleMutexLock();
      *(v3 + 727) += v7;
      *(v3 + 2680) = 1;
      FigSimpleMutexUnlock();
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = mach_absolute_time();
  if (FigHostTimeToNanoseconds() >= 0x165A0BC00)
  {
    v3[318] = v9;
    piqca_gmstats_dump(a1);
  }

  v3[8] = CAImageQueueCollect();
  v3[10] = mach_absolute_time();
  CACurrentMediaTime();
  return v7;
}

uint64_t FigImageQueueGaugeSetSafeDisplayDuration(uint64_t a1, __int128 *a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  return v4(a1, &v6);
}

__n128 FigImageQueueGetSafeDisplayDuration@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v4)
  {

    v4(a1);
  }

  else
  {
    v6 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 16) = *(v6 + 16);
  }

  return result;
}

void piqca_updateImageQueueTimingFields(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = (DerivedStorage + 3072);
  v4 = *(DerivedStorage + 3072);
  if (v4)
  {
    FigSyncMomentSourceDestroy(v4);
    *v3 = 0;
  }

  *(DerivedStorage + 3104) = 0;
  *(DerivedStorage + 3096) = 0;
  *(DerivedStorage + 3080) = 0u;
  if (*(DerivedStorage + 3056))
  {
    if (*(DerivedStorage + 144))
    {
      v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v5)
      {
        v13 = v5;
        if (FigSyncMomentSourceCreateWithDispatchQueueAndDestructor2(piqca_syncMomentSourceCallback, v5, piqca_ReleaseFIQWeakReference, *(DerivedStorage + 144), *(DerivedStorage + 3064), v3))
        {

          CFRelease(v13);
        }

        else
        {
          outRelativeRate = 0.0;
          memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
          memset(&outRelativeToClockOrTimebaseAnchorTime, 0, sizeof(outRelativeToClockOrTimebaseAnchorTime));
          CMClockGetHostTimeClock();
          v14 = *(DerivedStorage + 144);
          HostTimeClock = CMClockGetHostTimeClock();
          if (!CMSyncGetRelativeRateAndAnchorTime(v14, HostTimeClock, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime))
          {
            v18 = outRelativeToClockOrTimebaseAnchorTime;
            Seconds = CMTimeGetSeconds(&v18);
            v18 = outOfClockOrTimebaseAnchorTime;
            v17 = CMTimeGetSeconds(&v18);
            piqca_setImageQueueTiming(a1, Seconds, v17, outRelativeRate);
          }
        }
      }

      else
      {
        piqca_updateImageQueueTimingFields_cold_1(0, v6, v7, v8, v9, v10, v11, v12, v18.value, v18.timescale, v18.flags, v18.epoch);
      }
    }
  }

  else
  {

    piqca_setImageQueueTiming(a1, 0.0, 0.0, 1.0);
  }
}

void piqca_setTimebase(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 144) != a2)
  {
    v5 = *(DerivedStorage + 3064);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __piqca_setTimebase_block_invoke;
    block[3] = &__block_descriptor_tmp_55;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a1;
    dispatch_sync(v5, block);
  }
}

uint64_t piqca_setEnhancementMode(uint64_t result, const __CFString *cf)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!*(result + 3020))
  {
    if (cf)
    {
      v3 = result;
      v4 = CFGetTypeID(cf);
      result = CFStringGetTypeID();
      if (v4 == result)
      {
        result = CFStringGetCString(cf, buffer, 100, 0x600u);
        if (result)
        {
          v5 = 0;
          for (i = &off_1E7486C40; ; i += 2)
          {
            result = strcmp(*i, buffer);
            if (!result)
            {
              break;
            }

            if (++v5 == 5)
            {
              return result;
            }
          }

          *(v3 + 3016) = v5;
          return CAImageQueueSetEnhancementMode();
        }
      }
    }
  }

  return result;
}

void piqca_postRendererPreparationCompletedIfPreviouslyRequestedAndRecordNewRequest(uint64_t a1, char a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 3176);
  v7 = *(DerivedStorage + 3184);
  *(DerivedStorage + 3176) = a2;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  *(DerivedStorage + 3184) = v8;
  FigSimpleMutexUnlock();
  if (v6)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v7)
  {

    CFRelease(v7);
  }
}

void piqca_ReleaseFIQWeakReference(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t piqca_setImageQueueTiming(uint64_t a1, double a2, double a3, double a4)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  if (a4 >= 0.0)
  {
    if (!*(DerivedStorage + 3104))
    {
      goto LABEL_9;
    }

    v10 = 0;
    Seconds = INFINITY;
  }

  else
  {
    if (*(DerivedStorage + 3104))
    {
      goto LABEL_9;
    }

    time = *(DerivedStorage + 3120);
    Seconds = CMTimeGetSeconds(&time);
    if ((*&Seconds & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      Seconds = a3 + 0.1;
    }

    v10 = 1;
  }

  *(v8 + 3112) = Seconds;
  *(v8 + 3104) = v10;
LABEL_9:
  if (a4 == 0.0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = 0.0;
  }

  else if (a4 <= 0.0)
  {
    v14 = *(v8 + 3112);
    v13 = a2 + (a3 - v14) * (-1.0 / a4);
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = v14;
  }

  else
  {
    v13 = a2 + a3 * (-1.0 / a4);
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = 0.0;
  }

  *(v8 + 3080) = v13;
  *(v8 + 3088) = a4;
  *(v8 + 3096) = a3;
  return CAImageQueueSetMediaTimingClamped();
}

void __piqca_setTimebase_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];

  piqca_updateImageQueueTimingFields(v5);
}

uint64_t piqca_copyPerformanceDictionary(uint64_t a1, __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 2464) = 0;
  if (*DerivedStorage)
  {
    *(DerivedStorage + 2464) = CAImageQueueGetUnconsumedImageCount() + 1;
  }

  return PIQCopyPerformanceDictionaryForInstanceStatistics(*MEMORY[0x1E695E480], (DerivedStorage + 1628), a2);
}

uint64_t piqca_enqueueImageWithRotation(uint64_t a1, __CVBuffer *a2, const void *a3, uint64_t a4, unsigned int a5, char a6)
{
  v101 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *v88 = *a4;
  v11 = *(a4 + 12);
  *&v88[8] = *(a4 + 8);
  v12 = *(a4 + 16);
  v13 = CMBaseObjectGetDerivedStorage();
  IsNullPixelBuffer = FigIsNullPixelBuffer(a2);
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, v78, v79);
    v20 = v19;
    if (v19)
    {
      goto LABEL_106;
    }

    goto LABEL_120;
  }

  v15 = IsNullPixelBuffer;
  v16 = *(v13 + 3224);
  if (v16)
  {
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v17(v16, 0);
    }
  }

  v18 = CFGetTypeID(a2);
  if (CVPixelBufferGetTypeID() == v18)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  }

  else
  {
    PixelFormatType = 1061109567;
  }

  piqca_evictExpiredFramesFromCAImageQueueIfEvictionNotDoneRecently(a1);
  if (a6 & 2) == 0 || (v11)
  {
    *time = *v88;
    *&time[8] = *&v88[8];
    *&time[12] = v11;
    *&time[16] = v12;
    CMTimeGetSeconds(time);
  }

  if (CVPixelBufferGetTypeID() != v18)
  {
    v20 = 4294948064;
    goto LABEL_106;
  }

  v85 = v12;
  v83 = v11;
  if (v15)
  {
LABEL_69:
    if ((a6 & 4) == 0 && ((a6 & 1) != 0 || *(v13 + 50)))
    {
      *(v13 + 50) = 0;
      *(v13 + 52) = 0;
      FigImageQueueDisplayCountHistory_TraceFlush(*(v13 + 2984));
      bzero((v13 + 368), 0x4B0uLL);
    }

    CVBufferRetain(a2);
    v39 = malloc_type_calloc(0x68uLL, 1uLL, 0x102004047E4D0FBuLL);
    *(v39 + 1) = *v88;
    *v39 = a2;
    *(v39 + 4) = *&v88[8];
    *(v39 + 5) = v11;
    *(v39 + 3) = v12;
    v40 = *(v13 + 144);
    if (v40)
    {
      CMTimebaseGetTime(time, v40);
      *(v39 + 2) = *time;
      *(v39 + 6) = *&time[16];
    }

    *(v39 + 7) = CACurrentMediaTime();
    *(v39 + 18) = *(v13 + 24);
    v41 = CMGetAttachment(a2, @"FigImageBufferOriginHostTime", 0);
    v42 = v41;
    if (a3 && !v41)
    {
      v43 = CFGetTypeID(a3);
      if (v43 != CFDictionaryGetTypeID())
      {
LABEL_82:
        *(v39 + 8) = *(v13 + 16);
        FigAtomicIncrement32();
        v45 = v13 + 24 * *(v13 + 1568);
        v46 = *(v39 + 3);
        *(v45 + 368) = *(v39 + 8);
        *(v45 + 384) = v46;
        v47 = *(v13 + 1568);
        if (v47 == 49)
        {
          v48 = 0;
        }

        else
        {
          v48 = v47 + 1;
        }

        *(v13 + 1568) = v48;
        if (!v15)
        {
          Width = CVPixelBufferGetWidth(a2);
          Height = CVPixelBufferGetHeight(a2);
          v51 = Height;
          if (*(v13 + 1576) != Width || *(v13 + 1584) != Height)
          {
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            CAImageQueueSetSize();
            *(v13 + 1576) = Width;
            *(v13 + 1584) = v51;
          }
        }

        v52 = CMBaseObjectGetDerivedStorage();
        if (*(v52 + 1576))
        {
          v53 = v52;
          if (*(v52 + 1584))
          {
            DisplayedPixelCount = CAImageQueueGetDisplayedPixelCount();
            if (DisplayedPixelCount)
            {
              if (*(v53 + 1592) != DisplayedPixelCount)
              {
                v55 = sqrtf((DisplayedPixelCount * *(v53 + 1584)) / *(v53 + 1576));
                *(v53 + 1592) = DisplayedPixelCount;
                *(v53 + 1600) = (DisplayedPixelCount / v55);
                *(v53 + 1608) = v55;
                *(v53 + 1616) = 1;
              }
            }
          }
        }

        UnconsumedImageCount = CAImageQueueGetUnconsumedImageCount();
        v57 = *(v13 + 252);
        *(v13 + 252) = v57 + 1;
        *(v39 + 19) = v57;
        *(v39 + 20) = UnconsumedImageCount;
        if (*MEMORY[0x1E695FF58] == 1)
        {
          *time = *v88;
          *&time[8] = *&v88[8];
          *&time[12] = v83;
          *&time[16] = v85;
          CMTimeGetSeconds(time);
          kdebug_trace();
        }

        if (CAImageQueueInsertImageWithRotation())
        {
          --*(v13 + 64);
          FigSimpleMutexLock();
          *(v13 + 2568) = PixelFormatType;
          if (*(v13 + 144))
          {
            *time = *v88;
            *&time[8] = *&v88[8];
            *&time[12] = v83;
            *&time[16] = v85;
            Seconds = CMTimeGetSeconds(time);
            CMTimebaseGetTime(time, *(v13 + 144));
            v59 = CMTimeGetSeconds(time);
            v60 = CACurrentMediaTime();
            v61 = CMBaseObjectGetDerivedStorage();
            v62 = *(v61 + 2576);
            v63 = *(v61 + 2580);
            if (v63 + v62 <= 0)
            {
              v64 = -(-(v63 + v62) & 3);
            }

            else
            {
              v64 = (v63 + v62) & 3;
            }

            v65 = (v61 + 24 * v64);
            v65[323] = Seconds;
            v65[325] = v59;
            v65[324] = v60;
            v66 = v63 + 1;
            if (v66 > 4)
            {
              v67 = v62 + 1;
              v68 = -v67 < 0;
              v69 = -v67 & 3;
              v70 = v67 & 3;
              if (!v68)
              {
                v70 = -v69;
              }

              *(v61 + 2576) = v70;
            }

            else
            {
              *(v61 + 2580) = v66;
            }
          }

          ++*(v13 + 2888);
          *(v13 + 2572) = 1;
          FigSimpleMutexUnlock();
          FPSupport_IsDisplayModeSwitchInProgress();
          if (*(v13 + 132) && *(v13 + 134))
          {
            v71 = *(v13 + 3152);
            if (!v71)
            {
              v71 = *(v13 + 3144);
            }

            FigResetDisplaySleepTimerOnBehalfOfSceneWithPID(v71, *(v13 + 3160));
          }

          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          *(v13 + 51) = 1;
          if ((a6 & 4) != 0)
          {
            *(v13 + 52) = 1;
          }

          *(v13 + 56) = 1;
          goto LABEL_120;
        }

        ++*(v13 + 2468);
        CVBufferRelease(a2);
        piqca_decrementSnapLatchCount(v39 + 8);
        free(v39);
        v20 = 4294954482;
LABEL_106:
        FigSimpleMutexUnlock();
        return v20;
      }

      v42 = CFDictionaryGetValue(a3, @"FigImageBufferOriginHostTime");
    }

    if (v42)
    {
      v44 = CFGetTypeID(v42);
      if (v44 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v42, kCFNumberDoubleType, v39 + 88);
        v39[96] = 1;
      }
    }

    goto LABEL_82;
  }

  v21 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965CB8], 0);
  v22 = CVPixelBufferGetPixelFormatType(a2);
  *time = 0;
  if (containsAlpha_sDidCheck == 1)
  {
    AppBooleanValue = containsAlpha_sForceOptimization;
  }

  else
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"force_opaque_caiq_optimization", @"com.apple.coremedia", 0);
    containsAlpha_sForceOptimization = AppBooleanValue;
    containsAlpha_sDidCheck = 1;
  }

  if (*(v13 + 1620) != v22 && !AppBooleanValue)
  {
    v24 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], v22);
    if (v24)
    {
      v25 = v24;
      if (CFDictionaryGetValueIfPresent(v24, *MEMORY[0x1E6966290], time) && *time == *MEMORY[0x1E695E4D0])
      {
        *(v13 + 1624) = 1;
      }

      *(v13 + 1620) = v22;
      CFRelease(v25);
    }

    else
    {
      *(v13 + 1620) = v22;
    }
  }

  v11 = v83;
  if (*(v13 + 1624))
  {
    FigCFEqual();
  }

  v12 = v85;
  if (v21)
  {
    CFRelease(v21);
  }

  valuePtr = 0;
  key = CVPixelBufferGetBufferBacking();
  IOSurface = CVPixelBufferGetIOSurface(a2);
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  memset(time, 0, sizeof(time));
  v80 = IOSurface;
  if (IOSurface && !IOSurfaceGetBulkAttachments())
  {
    value = CFDataCreate(*MEMORY[0x1E695E480], time, 132);
  }

  else
  {
    value = 0;
  }

  FigSimpleMutexLock();
  if (!key)
  {
    FigSimpleMutexUnlock();
    v29 = 0;
    goto LABEL_45;
  }

  v27 = CFDictionaryGetValue(*(v13 + 120), key);
  FigSimpleMutexUnlock();
  if (!v27)
  {
    v29 = 0;
LABEL_44:
    v12 = v85;
    goto LABEL_45;
  }

  v28 = CFDictionaryGetValue(v27, @"PixelBufferId");
  CFDictionaryGetValue(v27, @"IOSurfaceBulkAttachments");
  if (!v28)
  {
    v29 = 0;
    v11 = v83;
    goto LABEL_44;
  }

  CFNumberGetValue(v28, kCFNumberSInt64Type, &valuePtr);
  v11 = v83;
  v12 = v85;
  if (FigCFEqual())
  {
    goto LABEL_66;
  }

  MEMORY[0x19A8CC3C0](*v13, valuePtr);
  v29 = 1;
LABEL_45:
  HIDWORD(v78) = v29;
  if (v80)
  {
    v30 = CVBufferCopyAttachment(a2, @"SceneReferredExtendedLinear", 0);
    FigCFEqual();
    if (v30)
    {
      CFRelease(v30);
    }

    valuePtr = CAImageQueueRegisterIOSurfaceBuffer();
    if (!valuePtr)
    {
      goto LABEL_66;
    }

    goto LABEL_58;
  }

  v31 = CVPixelBufferGetPixelFormatType(a2);
  if (v31 == 32 || v31 == 846624121 || v31 == 1111970369 || (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, v78, 0), !v32))
  {
    CVPixelBufferLockBaseAddress(a2, 0);
    CVPixelBufferGetBaseAddress(a2);
    CVPixelBufferGetBytesPerRow(a2);
    CVPixelBufferGetWidth(a2);
    CVPixelBufferGetHeight(a2);
    valuePtr = CAImageQueueRegisterBuffer();
    v11 = v83;
    v12 = v85;
    if (valuePtr)
    {
LABEL_58:
      FigSimpleMutexLock();
      v33 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v35 = Mutable;
        v36 = CFNumberCreate(v33, kCFNumberSInt64Type, &valuePtr);
        if (v36)
        {
          v37 = v36;
          CFDictionarySetValue(v35, @"PixelBufferId", v36);
          CFRelease(v37);
        }

        if (value)
        {
          CFDictionarySetValue(v35, @"IOSurfaceBulkAttachments", value);
        }

        CFDictionarySetValue(*(v13 + 120), key, v35);
        CFRelease(v35);
      }

      FigSimpleMutexUnlock();
      if ((v78 & 0x100000000) == 0)
      {
        CFRetain(*(v13 + 120));
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(LocalCenter, *(v13 + 120), piqca_DeregisterPixelBufferBackingThatWillBeDeleted, *MEMORY[0x1E6965C58], key, CFNotificationSuspensionBehaviorDeliverImmediately);
      }
    }
  }

  else
  {
    valuePtr = 0;
  }

LABEL_66:
  if (value)
  {
    CFRelease(value);
  }

  if (valuePtr)
  {
    goto LABEL_69;
  }

  piqca_enqueueImageWithRotation_cold_1(time);
  v20 = *time;
  if (*time)
  {
    goto LABEL_106;
  }

LABEL_120:
  FigSimpleMutexUnlock();
  piqca_postOccupancyChanged(a1);
  if (!DerivedStorage[49])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (!DerivedStorage[135])
  {
    if (dword_1EAF19510)
    {
      LODWORD(valuePtr) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v73 = valuePtr;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v74 = v73;
      }

      else
      {
        v74 = v73 & 0xFFFFFFFE;
      }

      if (v74)
      {
        *v88 = 136315650;
        *&v88[4] = "piqca_enqueueImageWithRotation";
        v89 = 2048;
        v90 = a1;
        v91 = 2082;
        v92 = DerivedStorage + 3232;
        LODWORD(v78) = 32;
        _os_log_send_and_compose_impl(v74, 0, time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< IQ-CA >>>> %s: (%p) %{public}s Did enqueue first frame.", v88, v78);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage[135] = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (!DerivedStorage[1616])
  {
    return 0;
  }

  v75 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCGSize();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v75)
  {
    CFRelease(v75);
  }

  v20 = 0;
  DerivedStorage[1616] = 0;
  return v20;
}

uint64_t piqca_flushFramesFollowingCurrentFrame(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = **&MEMORY[0x1E6960C88];
  if (*DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = DerivedStorage[18];
    if (v4)
    {
      CMTimebaseGetTime(&v13, v4);
      v12 = v13;
      CMTimeGetSeconds(&v12);
      if (v3[18])
      {
        v5 = *(v3 + 54);
        if (v5 >= 1 || v5 < 0)
        {
          v6 = CAImageQueueConsumeUnconsumedInRange();
          v7 = v6;
          if (v6)
          {
            *(v3 + 410) += v6;
            FigSimpleMutexLock();
            *(v3 + 727) += v7;
            *(v3 + 2680) = 1;
            FigSimpleMutexUnlock();
          }
        }
      }
    }

    v8 = mach_absolute_time();
    if (FigHostTimeToNanoseconds() >= 0x165A0BC00)
    {
      v3[318] = v8;
      piqca_gmstats_dump(a1);
    }

    v3[8] = CAImageQueueCollect();
    v3[10] = mach_absolute_time();
    CACurrentMediaTime();
    piqca_postOccupancyChanged(a1);
    v9 = v3[403];
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v10(v9, 1);
      }
    }
  }

  return 0;
}

uint64_t piqca_evictExpiredFramesFromCAImageQueueIfEvictionNotDoneRecently(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  mach_absolute_time();
  result = FigHostTimeToNanoseconds();
  if (*(DerivedStorage + 49))
  {
    v4 = result < 100000000;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {

    return piqca_evictExpiredFramesFromCAImageQueue(a1);
  }

  return result;
}

uint64_t piqca_updateEDRDeadline(void *a1, int a2)
{
  result = CelestialShouldManageEDRDeadline();
  if (result && sCAImageQueueSetEDRDeadline)
  {
    if (a2)
    {
      if (*(a1 + 88))
      {
        return result;
      }

      v5 = CACurrentMediaTime();
      result = sCAImageQueueSetEDRDeadline(*a1, v5 + *(a1 + 12));
      v6 = 1;
    }

    else
    {
      if (!*(a1 + 88))
      {
        return result;
      }

      result = sCAImageQueueSetEDRDeadline(*a1, INFINITY);
      v6 = 0;
    }

    *(a1 + 88) = v6;
  }

  return result;
}

uint64_t piqca_updateReducedPollingTimeRange(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 160);
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      return CAImageQueueSetFlags();
    }

    if (*(DerivedStorage + 212) < 1)
    {
      return CAImageQueueSetFlags();
    }

    v5 = *(DerivedStorage + 144);
    if (!v5)
    {
      return CAImageQueueSetFlags();
    }

    CMTimebaseGetTime(&time, v5);
    Seconds = CMTimeGetSeconds(&time);
    time = *(v3 + 164);
    p_time = &time;
    goto LABEL_12;
  }

  if (*(DerivedStorage + 212) >= 1)
  {
    time = **&MEMORY[0x1E6960C70];
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v8)
    {
      v8(a1, 0, 0, &time);
    }

    v9 = *(v3 + 144);
    if (v9)
    {
      if ((time.flags & 0x1D) == 1)
      {
        CMTimebaseGetTime(&v11, v9);
        Seconds = CMTimeGetSeconds(&v11);
        v11 = time;
        p_time = &v11;
LABEL_12:
        if (Seconds < CMTimeGetSeconds(p_time))
        {
          CAImageQueueSetReducedPollingTimeRange();
        }
      }
    }
  }

  return CAImageQueueSetFlags();
}

void piqca_releaseBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = (a3 + 64);
    FigSimpleMutexLock();
    if (**v4)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      ReleasedImageInfo = CAImageQueueGetReleasedImageInfo();
      if (ReleasedImageInfo)
      {
        v7 = ReleasedImageInfo;
        if (*ReleasedImageInfo)
        {
          *time = *(a3 + 8);
          *&time[16] = *(a3 + 24);
          Seconds = CMTimeGetSeconds(time);
          v9 = FigHostTimeToNanoseconds() * 0.000000001;
          v10 = *(v7 + 1);
          v11 = FigHostTimeToNanoseconds() * 0.000000001;
          v12 = *(v7 + 7);
          *time = *(a3 + 32);
          *&time[16] = *(a3 + 48);
          v13 = CMTimeGetSeconds(time);
          FigSimpleMutexLock();
          v14 = CMBaseObjectGetDerivedStorage();
          v15 = *(v14 + 2684);
          v16 = *(v14 + 2688);
          if (v16 + v15 <= 0)
          {
            v17 = -(-(v16 + v15) & 3);
          }

          else
          {
            v17 = (v16 + v15) & 3;
          }

          v18 = v14 + 48 * v17;
          *(v18 + 2696) = Seconds;
          *(v18 + 2704) = v9;
          *(v18 + 2712) = v10;
          *(v18 + 2720) = v11;
          *(v18 + 2728) = v12;
          *(v18 + 2736) = v13;
          v19 = v16 + 1;
          if (v19 > 4)
          {
            v25 = v15 + 1;
            v26 = -v25 < 0;
            v27 = -v25 & 3;
            v28 = v25 & 3;
            if (!v26)
            {
              v28 = -v27;
            }

            *(v14 + 2684) = v28;
          }

          else
          {
            *(v14 + 2688) = v19;
          }

          ++*(DerivedStorage + 2900);
          *(DerivedStorage + 2680) = 1;
          FigSimpleMutexUnlock();
          memset(&rhs, 0, sizeof(rhs));
          CMTimeMakeWithSeconds(time, *(v7 + 1), 60000);
          time2 = *(a3 + 8);
          CMTimeSubtract(&rhs, time, &time2);
          EffectiveRate = CMTimebaseGetEffectiveRate(*(DerivedStorage + 144));
          v30 = MEMORY[0x1E695FF58];
          if (*MEMORY[0x1E695FF58] == 1)
          {
            *time = *(a3 + 8);
            *&time[16] = *(a3 + 24);
            CMTimeGetSeconds(time);
            kdebug_trace();
            if (*v30 == 1)
            {
              kdebug_trace();
            }
          }

          v31 = *(v7 + 4);
          ++*(DerivedStorage + 2456);
          if (*(a3 + 96))
          {
            if (*(v7 + 6))
            {
              v32 = FigHostTimeToNanoseconds() * 0.000000001 - *(a3 + 88);
              if (v32 >= 0.0)
              {
                *(DerivedStorage + 3032) = fmin(*(DerivedStorage + 3032), v32);
                *(DerivedStorage + 3040) = fmax(*(DerivedStorage + 3040), v32);
                *(DerivedStorage + 3048) = v32 + *(DerivedStorage + 3048);
                ++*(DerivedStorage + 3024);
              }
            }
          }

          v33 = 2480;
          if ((*(v7 + 5) & 0xFFFFFFFFFFFFLL) == 0)
          {
            v33 = 2476;
          }

          ++*(DerivedStorage + v33);
          FigImageQueueFrameRateIncrementCounter((DerivedStorage + 2912));
          if (*(DerivedStorage + 49) && !*(DerivedStorage + 72) && *(DerivedStorage + 220))
          {
            v38 = CMBaseObjectGetDerivedStorage();
            v39 = (v38 + 2960);
            if ((*(v38 + 2972) & 0x1D) != 1)
            {
              v58 = 0u;
              memset(time, 0, sizeof(time));
              CAImageQueueGetVBLInfo();
              v40 = FigHostTimeToNanoseconds();
              time2 = **&MEMORY[0x1E6960C70];
              if (!FPSupport_GetClosestCommonRefreshIntervalForRate(&time2, round(1000000000.0 / v40)))
              {
                *v39 = time2;
              }
            }

            *time = rhs;
            time2 = *v39;
            if ((CMTimeCompare(time, &time2) & 0x80000000) == 0)
            {
              v41 = *(DerivedStorage + 1644);
              if (v41 <= 0x63)
              {
                *time = *(a3 + 8);
                *&time[16] = *(a3 + 24);
                CMTimeConvertScale(&v54, time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                *(DerivedStorage + 4 * *(DerivedStorage + 1644) + 2052) = v54.value;
                v41 = *(DerivedStorage + 1644);
              }

              *(DerivedStorage + 1644) = v41 + 1;
              if (*v30 == 1)
              {
                *time = rhs;
                CMTimeGetSeconds(time);
                kdebug_trace();
              }

              FigSimpleMutexLock();
              ++*(DerivedStorage + 2904);
              *(DerivedStorage + 2680) = 1;
              FigSimpleMutexUnlock();
            }

            time2 = rhs;
            CMTimeConvertScale(time, &time2, 60000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            rhs = *time;
            if (EffectiveRate != 0.0)
            {
              v42 = (rhs.value / 1000) / EffectiveRate;
              if (v42 > 0.0)
              {
                *(DerivedStorage + 1648) = (v42 + *(DerivedStorage + 1648));
              }
            }
          }

          v34 = *v7;
          if (v34 <= 9)
          {
            ++*(DerivedStorage + 4 * v34 + 2484);
            LODWORD(v34) = *v7;
          }

          v35 = *(DerivedStorage + 2984);
          v36 = *(v7 + 3);
          v37 = *(v7 + 1);
          *time = *(a3 + 8);
          *&time[16] = *(a3 + 24);
          FigImageQueueDisplayCountHistory_TraceDisplayCountUsingHostTime(v35, time, v34, v34, v36, v31, v37);
          goto LABEL_46;
        }

        if ((*(ReleasedImageInfo + 17) & 1) == 0)
        {
          if (*(ReleasedImageInfo + 16) == 1 || *(a3 + 72) != *(DerivedStorage + 24))
          {
            ++*(DerivedStorage + 2460);
            FigSimpleMutexLock();
            ++*(DerivedStorage + 2896);
LABEL_62:
            *(DerivedStorage + 2680) = 1;
            FigSimpleMutexUnlock();
            goto LABEL_46;
          }

          if (!*(DerivedStorage + 221))
          {
            v20 = 0;
            for (i = 368; i != 1568; i += 24)
            {
              *time = *(a3 + 8);
              *&time[16] = *(a3 + 24);
              v22 = *(DerivedStorage + i);
              time2.epoch = *(DerivedStorage + i + 16);
              *&time2.value = v22;
              if (!CMTimeCompare(time, &time2))
              {
                if (v20)
                {
                  goto LABEL_46;
                }

                v20 = 1;
              }
            }

            if (*MEMORY[0x1E695FF58] == 1)
            {
              *time = *(a3 + 8);
              *&time[16] = *(a3 + 24);
              CMTimeGetSeconds(time);
              kdebug_trace();
            }

            if ((*(DerivedStorage + 268) & 1) != 0 && (time2 = *(DerivedStorage + 256), rhs = *(DerivedStorage + 224), CMTimeAdd(time, &time2, &rhs), time2 = *(a3 + 8), CMTimeCompare(&time2, time) < 1))
            {
              v43 = *(DerivedStorage + 352);
              v44 = v43 + 1;
              *(DerivedStorage + 352) = v43 + 1;
              if (v43 <= 2)
              {
                *time = *(a3 + 8);
                *&time[16] = *(a3 + 24);
                *(DerivedStorage + 280 + 24 * *(DerivedStorage + 352) - 24) = CMTimeGetSeconds(time);
                *time = *(a3 + 32);
                *&time[16] = *(a3 + 48);
                v45 = CMTimeGetSeconds(time);
                v44 = *(DerivedStorage + 352);
                v46 = DerivedStorage + 280 + 24 * (v44 - 1);
                *(v46 + 16) = v45;
                *(v46 + 8) = *(a3 + 56);
              }

              if (v44 == *(DerivedStorage + 248))
              {
                ++*(DerivedStorage + 1636);
                Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
                CFStringAppendCString(Mutable, "[\n", 0x600u);
                if (*(DerivedStorage + 352) >= 1)
                {
                  v48 = 0;
                  v49 = (DerivedStorage + 296);
                  do
                  {
                    v50 = *(v49 - 1);
                    v51 = *v49;
                    v49 += 3;
                    CFStringAppendFormat(Mutable, 0, @"{PTS: %.3f s, enqueued at : host %.3f s (media %.3f)},\n", v50, v51);
                    ++v48;
                    v52 = *(DerivedStorage + 352);
                    if (v52 >= 3)
                    {
                      v52 = 3;
                    }
                  }

                  while (v48 < v52);
                }

                CFStringAppendCString(Mutable, "]\n", 0x600u);
                if (Mutable)
                {
                  CFRelease(Mutable);
                }
              }
            }

            else
            {
              v23 = *(a3 + 8);
              *(DerivedStorage + 272) = *(a3 + 24);
              *(DerivedStorage + 256) = v23;
              *(DerivedStorage + 352) = 1;
              *time = *(a3 + 8);
              *&time[16] = *(a3 + 24);
              *(DerivedStorage + 280) = CMTimeGetSeconds(time);
              *time = *(a3 + 32);
              *&time[16] = *(a3 + 48);
              *(DerivedStorage + 296) = CMTimeGetSeconds(time);
              *(DerivedStorage + 288) = *(a3 + 56);
            }

            v24 = *(DerivedStorage + 1628);
            if (v24 <= 0x63)
            {
              *time = *(a3 + 8);
              *&time[16] = *(a3 + 24);
              CMTimeConvertScale(&v53, time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              *(DerivedStorage + 4 * *(DerivedStorage + 1628) + 1652) = v53.value;
              v24 = *(DerivedStorage + 1628);
            }

            *(DerivedStorage + 1628) = v24 + 1;
            if (*(v7 + 3))
            {
              ++*(DerivedStorage + 1632);
            }

            FigSimpleMutexLock();
            ++*(DerivedStorage + 2892);
            goto LABEL_62;
          }
        }
      }
    }

LABEL_46:
    FigSimpleMutexUnlock();
    piqca_decrementSnapLatchCount(v4);
    CVBufferRelease(*a3);
    free(a3);
  }
}

void piqca_DeregisterPixelBufferBackingThatWillBeDeleted(uint64_t a1, const __CFDictionary *a2, const __CFString *a3, const void *a4)
{
  valuePtr = 0;
  FigSimpleMutexLock();
  if (CFDictionaryGetValue(a2, 0) && (v7 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v8 = v7;
    Value = CFDictionaryGetValue(a2, a4);
    if (Value)
    {
      v10 = CFDictionaryGetValue(Value, @"PixelBufferId");
      if (v10)
      {
        CFNumberGetValue(v10, kCFNumberSInt64Type, &valuePtr);
        MEMORY[0x19A8CC3C0](v8, valuePtr);
      }

      CFDictionaryRemoveValue(a2, a4);
    }

    v11 = 0;
  }

  else
  {
    CFDictionaryRemoveAllValues(a2);
    v8 = 0;
    v11 = 1;
  }

  FigSimpleMutexUnlock();
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, a2, a3, a4);
  CFRelease(a2);
  if ((v11 & 1) == 0)
  {
    CFRelease(v8);
  }
}

void piqcas_imageQueueSlotWasDestroyedCallback(uint64_t a1, void *a2)
{
  FPSupport_DeleteCASlot(a1);
  if (a2)
  {
    v4 = a2[1];
    if (v4)
    {
      v4(a1, *a2);
    }
  }

  free(a2);
}

Float64 OUTLINED_FUNCTION_1_80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  a9 = *(v10 + 16);
  a10 = *(v10 + 32);

  return CMTimeGetSeconds(&a9);
}

uint64_t FigTrialGetTypeID(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CAA60 != -1)
  {
    FigTrialGetTypeID_cold_1();
  }

  return qword_1ED4CAA68;
}

uint64_t registerFigTrialType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAA68 = result;
  return result;
}

uint64_t FigTrialCopyCFType(void *a1, void *a2)
{
  v15 = 0;
  v4 = objc_autoreleasePoolPush();
  if (!a1 || !a1[8])
  {
    v6 = 0;
    goto LABEL_6;
  }

  FigSimpleMutexLock();
  if (FigCFDictionaryGetValueIfPresent() != 1)
  {
    v8 = FigTrialCopyTrialValueForFactor(a1, a2);
    v5 = v8;
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = [v8 levelOneOfCase];
    if (v9 > 12)
    {
      if (v9 == 13)
      {
        [v5 longValue];
        SInt64 = FigCFNumberCreateSInt64();
      }

      else
      {
        if (v9 != 15)
        {
          goto LABEL_24;
        }

        [v5 doubleValue];
        SInt64 = FigCFNumberCreateFloat64();
      }

      v15 = SInt64;
    }

    else
    {
      if (v9 == 10)
      {
        v13 = [v5 BOOLeanValue];
        v14 = MEMORY[0x1E695E4D0];
        if (!v13)
        {
          v14 = MEMORY[0x1E695E4C0];
        }

        v11 = *v14;
      }

      else
      {
        if (v9 != 11)
        {
          goto LABEL_24;
        }

        v10 = [v5 stringValue];
        if (v10)
        {
          v11 = CFRetain(v10);
        }

        else
        {
          v11 = 0;
        }
      }

      v15 = v11;
    }

LABEL_24:
    FigCFDictionarySetValue();
    goto LABEL_5;
  }

  v5 = 0;
LABEL_5:

  FigSimpleMutexUnlock();
  v6 = v15;
LABEL_6:
  objc_autoreleasePoolPop(v4);
  return v6;
}

double FigTrial_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t fstc_populateCachesWithMutex(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = CFDictionaryCreateMutable(v2, 0, v3, v4);
  v7 = CFDictionaryCreateMutable(v2, 0, v3, v4);
  v8 = v7;
  if (Mutable)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    fstc_populateCachesWithMutex_cold_2(&v26);
    v20 = v26;
  }

  else
  {
    v23 = v7;
    v11 = 0;
    v22 = v25;
    do
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3052000000;
      v29 = __Block_byref_object_copy__5;
      v30 = __Block_byref_object_dispose__5;
      v12 = getTRINamespaceClass_softClass;
      v31 = getTRINamespaceClass_softClass;
      if (!getTRINamespaceClass_softClass)
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v25[0] = __getTRINamespaceClass_block_invoke;
        v25[1] = &unk_1E7486A28;
        v25[2] = &v26;
        __getTRINamespaceClass_block_invoke(v24);
        v12 = v27[5];
      }

      _Block_object_dispose(&v26, 8);
      v13 = [v12 namespaceNameFromId:{(v11 + 311), v22}];
      if (!v13)
      {
        fstc_populateCachesWithMutex_cold_1(&v26);
        v20 = v26;
        v8 = v23;
        goto LABEL_24;
      }

      v14 = v13;
      v15 = [objc_msgSend(*(a1 + 8) experimentIdentifiersWithNamespaceName:{v13), "experimentId"}];
      v16 = [*(a1 + 8) factorLevelsWithNamespaceName:v14];
      CFDictionarySetValue(Mutable, [MEMORY[0x1E696AD98] numberWithInt:v11], v14);
      if (v15)
      {
        CFDictionarySetValue(v6, [MEMORY[0x1E696AD98] numberWithInt:v11], v15);
      }

      if (v16)
      {
        CFDictionarySetValue(v23, [MEMORY[0x1E696AD98] numberWithInt:v11], v16);
      }

      v11 = (v11 + 1);
    }

    while (v11 != 3);
    v17 = *(a1 + 32);
    *(a1 + 32) = Mutable;
    CFRetain(Mutable);
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = *(a1 + 40);
    *(a1 + 40) = v6;
    CFRetain(v6);
    v8 = v23;
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = *(a1 + 48);
    *(a1 + 48) = v23;
    CFRetain(v23);
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = 0;
  }

LABEL_24:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v20;
}

void sub_1965DA7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTRINamespaceClass_block_invoke(uint64_t a1)
{
  TrialLibrary();
  result = objc_getClass("TRINamespace");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getTRINamespaceClass_block_invoke_cold_1();
  }

  getTRINamespaceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void TrialLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!TrialLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __TrialLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E7486DB0;
    v2 = 0;
    TrialLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TrialLibraryCore_frameworkLibrary)
  {
    TrialLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __TrialLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  TrialLibraryCore_frameworkLibrary = result;
  return result;
}

void __fstc_ensure_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  qword_1ED4CAA78 = FigSimpleMutexCreate();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__5;
  v1 = getTRIClientClass_softClass;
  v11 = __Block_byref_object_dispose__5;
  v12 = getTRIClientClass_softClass;
  if (!getTRIClientClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getTRIClientClass_block_invoke;
    v6[3] = &unk_1E7486A28;
    v6[4] = &v7;
    __getTRIClientClass_block_invoke(v6);
    v1 = *(v8 + 40);
  }

  _Block_object_dispose(&v7, 8);
  qword_1ED4CAA80 = [v1 clientWithIdentifier:221];
  FigSimpleMutexLock();
  _MergedGlobals_55 = fstc_populateCachesWithMutex(&qword_1ED4CAA78);
  v2 = FigCFDictionaryCopyArrayOfValues();
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        v7 = MEMORY[0x1E69E9820];
        v8 = 3221225472;
        v9 = __fstc_installUpdateHandlerWithMutex_block_invoke;
        v10 = &__block_descriptor_40_e8_v16__0_8l;
        v11 = &qword_1ED4CAA78;
        [qword_1ED4CAA80 addUpdateHandlerForNamespaceName:ValueAtIndex usingBlock:&v7];
        ++v4;
      }

      while (v4 < CFArrayGetCount(v3));
    }

    CFRelease(v3);
  }

  else
  {
    __fstc_ensure_block_invoke_cold_1();
  }

  FigSimpleMutexUnlock();
  objc_autoreleasePoolPop(v0);
}

void sub_1965DABC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTRIClientClass_block_invoke(uint64_t a1)
{
  TrialLibrary();
  result = objc_getClass("TRIClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getTRIClientClass_block_invoke_cold_1();
  }

  getTRIClientClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __fstc_installUpdateHandlerWithMutex_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 32);
  *(v2 + 24) = 1;
  if (!*(v2 + 16))
  {
    *(v2 + 24) = 0;
    [*(v2 + 8) refresh];
    fstc_populateCachesWithMutex(v2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigImageQueueGetTypeID()
{
  MEMORY[0x19A8D3660](&FigImageQueueGetClassID_sRegisterFigImageQueueTypeOnce, RegisterFigImageQueueType);

  return CMBaseClassGetCFTypeID();
}

float FigImageQueueFrameRateGetCurrent(void *a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  FigSimpleMutexLock();
  v3 = 0.0;
  if (a1[5] + 1000000000 >= UpTimeNanoseconds)
  {
    v4 = a1[1];
    if (v4 + 2000000000 <= UpTimeNanoseconds)
    {
      v7 = UpTimeNanoseconds - a1[3];
      if (v7 <= 1000000000)
      {
        v7 = 1000000000;
      }

      v5 = (1000000000 * *(a1 + 8));
      v6 = v7;
    }

    else
    {
      v5 = (1000000000 * (*(a1 + 8) + *(a1 + 4)));
      v6 = (UpTimeNanoseconds - v4);
    }

    v3 = v5 / v6;
  }

  FigSimpleMutexUnlock();
  return v3;
}

double FigImageQueueSetPropertyApply(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *MEMORY[0x1E695E738] == a1)
  {
    return FigImageQueueSetPropertyApply_cold_3(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, SHIDWORD(v14), v15);
  }

  if (!a2)
  {
    return FigImageQueueSetPropertyApply_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v13, v14, SHIDWORD(v14), v15);
  }

  v9 = *a2;
  if (!*a2)
  {
    return FigImageQueueSetPropertyApply_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, SHIDWORD(v14), v15);
  }

  v10 = a2[1];
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {

    v11(a1, v9, v10);
  }

  return result;
}

double FigImageQueueSetPropertyApply2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *MEMORY[0x1E695E738] == a1)
  {
    return FigImageQueueSetPropertyApply2_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, SHIDWORD(v14), v15);
  }

  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {

    v11(a1, a3, a2);
  }

  return result;
}

uint64_t FigImageQueueArrayCreateImageQueueConfigurationArray(CFArrayRef theArray, const __CFAllocator *a2, const __CFArray *a3, __CFArray **a4)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    FigImageQueueArrayCreateImageQueueConfigurationArray_cold_3(&v21);
    return v21;
  }

  Count = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a3)
  {
    v9 = CFArrayGetCount(a3);
  }

  else
  {
    v9 = 0;
  }

  if (Count == v9)
  {
    Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v12 = Mutable;
      v18 = a4;
      if (Count >= 1)
      {
        v13 = 0;
        v14 = *MEMORY[0x1E695E480];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          v16 = CFArrayGetValueAtIndex(a3, v13);
          v17 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(v17, @"FigImageQueueConfigurationKey_ImageQueue", ValueAtIndex);
          if (!FigCFEqual())
          {
            CFDictionarySetValue(v17, @"FigImageQueueConfigurationKey_Options", v16);
          }

          CFArrayAppendValue(v12, v17);
          if (v17)
          {
            CFRelease(v17);
          }

          ++v13;
        }

        while (Count != v13);
      }

      result = 0;
      *v18 = v12;
    }

    else
    {
      FigImageQueueArrayCreateImageQueueConfigurationArray_cold_2(&v20);
      return v20;
    }
  }

  else
  {
    FigImageQueueArrayCreateImageQueueConfigurationArray_cold_1(&v19);
    return v19;
  }

  return result;
}

uint64_t FigImageQueueSlotGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_56 != -1)
  {
    FigImageQueueSlotGetTypeID_cold_1();
  }

  return qword_1ED4CAAB8;
}

uint64_t figImageQueueSlot_registerTypeIDOnce(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

BOOL FigImageQueueSlotIsValid(_BOOL8 result)
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

uint64_t FigImageQueueSlotCreateWithSlotID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    if (a5)
    {
      v8 = a2;
      if (_MergedGlobals_56 != -1)
      {
        FigImageQueueSlotGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v10 = Instance;
        result = 0;
        *(v10 + 16) = v8;
        *(v10 + 24) = a3;
        *(v10 + 32) = a4;
        *a5 = v10;
      }

      else
      {
        FigImageQueueSlotCreateWithSlotID_cold_2(&v12);
        return v12;
      }
    }

    else
    {
      FigImageQueueSlotCreateWithSlotID_cold_3(&v13);
      return v13;
    }
  }

  else
  {
    FigImageQueueSlotCreateWithSlotID_cold_4(&v14);
    return v14;
  }

  return result;
}

void *figImageQueueSlot_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t figImageQueueSlot_finalize(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      return v3();
    }
  }

  return result;
}

BOOL figImageQueueSlot_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 16) == *(a2 + 16);
    }
  }

  return result;
}

CFStringRef figImageQueueSlot_copyDebugDesc(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigImageQueueSlot %p | %d> imageQueueSlot: %u", a1, v3, a1[4]);
}

uint64_t FigFairplayPSSHAtomParserStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigFairplayPSSHAtomParserStartServer_block_invoke;
  block[3] = &unk_1E7486F78;
  block[4] = &v3;
  if (FigFairplayPSSHAtomParserStartServer_sFairplayPSSHAtomParserServerSetupOnce != -1)
  {
    dispatch_once(&FigFairplayPSSHAtomParserStartServer_sFairplayPSSHAtomParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __FigFairplayPSSHAtomParserStartServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t FigVideoTargetXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {

      return remoteXPCVideoTarget_GetObjectID(a1, a2);
    }

    else
    {
      FigVideoTargetXPCRemoteGetObjectID_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigVideoTargetXPCRemoteGetObjectID_cold_2(&v4);
    return v4;
  }
}

uint64_t remoteXPCVideoTarget_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 8))
    {
      remoteXPCVideoTarget_GetObjectID_cold_1(&v6);
      return v6;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  else
  {
    remoteXPCVideoTarget_GetObjectID_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t figVideoTargetRemoteCreateCommon(const __CFAllocator *a1, void *a2, const void *a3, void *a4)
{
  v16 = 0;
  if (!a2)
  {
    figVideoTargetRemoteCreateCommon_cold_5(v18);
    return LODWORD(v18[0]);
  }

  if (!a4)
  {
    figVideoTargetRemoteCreateCommon_cold_4(v18);
    return LODWORD(v18[0]);
  }

  v7 = remoteXPCVideoTarget_CreateVideoTargetObject(a1, a3, &v16);
  v8 = v16;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 112))
    {
      v10 = *(DerivedStorage + 88);
      *(DerivedStorage + 88) = @"Loading";
      if (@"Loading")
      {
        CFRetain(@"Loading");
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (v8)
      {
        CFRetain(v8);
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __remoteXPCVideoTarget_establishServerConnection_block_invoke;
      v17[3] = &__block_descriptor_tmp_47;
      v17[4] = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      CFRetain(a2);
      if (a3)
      {
        CFRetain(a3);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __videoTargetRemote_establishServerConnectionAsync_block_invoke;
      v18[3] = &unk_1E7486FC0;
      v18[6] = a2;
      v18[7] = a3;
      v18[4] = v17;
      v18[5] = v8;
      if (_MergedGlobals_57 != -1)
      {
        figVideoTargetRemoteCreateCommon_cold_1();
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = __remoteXPCVideoTargetClient_EnsureClientEstablishedAsync_block_invoke;
      v19[3] = &unk_1E7486FE8;
      v19[4] = v18;
      FigVideoTargetConnectionEstablisher_EstablishConnectionAsync(qword_1ED4CAAC8, v19);
LABEL_18:
      v11 = 0;
      *a4 = v8;
      return v11;
    }

    v18[0] = 0;
    v19[0] = 0;
    v13 = remoteXPCVideoTargetClient_EnsureClientEstablished();
    if (v13)
    {
      v11 = v13;
    }

    else
    {
      ConnectionEstablishedXPCMessage = remoteXPCVideoTarget_createConnectionEstablishedXPCMessage(a2, a3, v18);
      if (ConnectionEstablishedXPCMessage)
      {
        v11 = ConnectionEstablishedXPCMessage;
      }

      else
      {
        if (_MergedGlobals_57 != -1)
        {
          figVideoTargetRemoteCreateCommon_cold_2();
        }

        v15 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v15)
        {
          v15 = videoTargetRemote_completeObjectSetupWithServerReply(v8, v19[0]);
        }

        v11 = v15;
      }
    }

    FigXPCRelease();
    FigXPCRelease();
    if (_MergedGlobals_57 != -1)
    {
      figVideoTargetRemoteCreateCommon_cold_1();
    }

    if (*(qword_1ED4CAAC8 + 16))
    {
      FigXPCRemoteClientKillServerOnTimeout();
    }

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v11;
}

uint64_t FigVideoTargetCreateRemoteSharingVideoReceiverFromRemoteVideoTarget(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = 0;
  xdict = 0;
  v14 = 0;
  value = 0;
  if (!a2)
  {
    v13 = 1557;
LABEL_21:
    FigVideoTargetCreateRemoteSharingVideoReceiverFromRemoteVideoTarget_cold_2(v13, &v18);
    v11 = v18;
    goto LABEL_22;
  }

  if (!a4)
  {
    v13 = 1558;
    goto LABEL_21;
  }

  ObjectID = remoteXPCVideoTargetClient_EnsureClientEstablished();
  if (ObjectID)
  {
    goto LABEL_18;
  }

  ObjectID = remoteXPCVideoTarget_CreateVideoTargetObject(a1, a3, &v14);
  if (ObjectID)
  {
    goto LABEL_18;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_18;
  }

  ObjectID = remoteXPCVideoTarget_GetObjectID(a2, &value);
  if (ObjectID)
  {
    goto LABEL_18;
  }

  xpc_dictionary_set_uint64(xdict, "VideoTargetWithReceiverToShare", value);
  ObjectID = FigXPCMessageSetCFDictionary();
  if (ObjectID)
  {
    goto LABEL_18;
  }

  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_1();
  }

  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
LABEL_18:
    v11 = ObjectID;
LABEL_22:
    v10 = v14;
    goto LABEL_23;
  }

  uint64 = xpc_dictionary_get_uint64(v16, *MEMORY[0x1E69615A0]);
  FigXPCMessageCopyCFString();
  v10 = v14;
  v11 = remoteXPCVideoTarget_CompleteVideoTargetObjectSetup(v14, uint64, 0);
  if (!v11)
  {
    *a4 = v10;
    goto LABEL_13;
  }

LABEL_23:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_1();
  }

  if (*(qword_1ED4CAAC8 + 16))
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return v11;
}