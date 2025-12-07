uint64_t figTTMLSerializerIndenter_StartElement(uint64_t a1, const __CFString *a2)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (startTagUsesIndentation(a2))
  {
    if (*(DerivedStorage + 16))
    {
      v5 = FigTTMLSerializerAddText(a1, @"\n");
      if (v5)
      {
        return v5;
      }

      v6 = *(DerivedStorage + 16);
    }

    else
    {
      v6 = 0;
    }

    Indentation = createIndentation(v6);
    v8 = FigTTMLSerializerAddText(a1, Indentation);
    if (v8)
    {
      started = v8;
      if (!Indentation)
      {
        return started;
      }

      goto LABEL_12;
    }

    ++*(DerivedStorage + 16);
  }

  else
  {
    Indentation = 0;
  }

  started = FigTTMLSerializerStartElement(*DerivedStorage, a2);
  if (!started)
  {
    CFArrayAppendValue(*(DerivedStorage + 8), a2);
    *(DerivedStorage + 24) = 1;
  }

  if (Indentation)
  {
LABEL_12:
    CFRelease(Indentation);
  }

  return started;
}

double figTTMLSerializerIndenter_EndElement(uint64_t a1)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFArrayGetCount(*(DerivedStorage + 8)))
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950721, "(Fig)", 197, v1);
  }

  v4 = *(DerivedStorage + 8);
  Count = CFArrayGetCount(v4);
  ValueAtIndex = CFArrayGetValueAtIndex(v4, Count - 1);
  if (startTagUsesIndentation(ValueAtIndex))
  {
    --*(DerivedStorage + 16);
  }

  cf1 = 0;
  copyElementLocalName(ValueAtIndex, &cf1);
  v7 = cf1;
  if (v8 || !CFEqual(cf1, @"span") && !CFEqual(v7, @"br") && !CFEqual(v7, @"extension") && !CFEqual(v7, @"p"))
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = 1;
  if (v7)
  {
LABEL_10:
    CFRelease(v7);
  }

LABEL_11:
  if ((v9 & 1) != 0 || *(DerivedStorage + 24))
  {
    Indentation = 0;
    goto LABEL_14;
  }

  if (FigTTMLSerializerAddText(a1, @"\n"))
  {
    return result;
  }

  Indentation = createIndentation(*(DerivedStorage + 16));
  if (!FigTTMLSerializerAddText(a1, Indentation))
  {
LABEL_14:
    if (!FigTTMLSerializerEndElement(*DerivedStorage))
    {
      v12 = *(DerivedStorage + 8);
      v13 = CFArrayGetCount(v12);
      CFArrayRemoveValueAtIndex(v12, v13 - 1);
      *(DerivedStorage + 24) = 0;
    }

    if (Indentation)
    {
      goto LABEL_17;
    }

    return result;
  }

  if (Indentation)
  {
LABEL_17:
    CFRelease(Indentation);
  }

  return result;
}

uint64_t figTTMLSerializerIndenter_AddText(uint64_t a1, uint64_t a2)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLSerializerAddText(*DerivedStorage, a2);
  if (!result)
  {
    *(DerivedStorage + 24) = 0;
  }

  return result;
}

uint64_t startTagUsesIndentation(const __CFString *a1)
{
  cf1 = 0;
  copyElementLocalName(a1, &cf1);
  v1 = cf1;
  if (v2 || !CFEqual(cf1, @"span") && !CFEqual(v1, @"br"))
  {
    v3 = 1;
    if (!v1)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v1)
  {
LABEL_5:
    CFRelease(v1);
  }

  return v3;
}

void FigOVCGLObjectCacheWrapperCreate_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v5;

  CFRelease(a2);
}

void FigOVCGLObjectCacheWrapperCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigOVCGLObjectCacheWrapperCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigOVCGLObjectCacheWrapperCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigOVCGLObjectCacheWrapperInvalidate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

__CFString *fpraps_copyFormattingDesc(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
  if (Mutable)
  {
    OUTLINED_FUNCTION_1_148();
    if (v9 ^ v10 | v8)
    {
      v11 = v6 <= v7;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_1_58(v4, v5, @"[Display Size: %.0fx%.0f] ");
    }

    OUTLINED_FUNCTION_1_148();
    if (v9 ^ v10 | v8)
    {
      v16 = v14 <= v15;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      OUTLINED_FUNCTION_1_58(v12, v13, @"[Ceiling: %.0fx%.0f@%.0f] ");
    }

    OUTLINED_FUNCTION_1_148();
    if (v9 ^ v10 | v8)
    {
      v21 = v19 <= v20;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      OUTLINED_FUNCTION_1_58(v17, v18, @"[Floor: %.0fx%.0f@%.0f] ");
    }

    if (*(a1 + 88))
    {
      OUTLINED_FUNCTION_1_58(v17, v18, @"[Role: %@] ");
    }

    if (!*(a1 + 104))
    {
      CFStringAppend(Mutable, @"[Not Active] ");
    }

    if (*(a1 + 81))
    {
      CFStringAppend(Mutable, @"[Muted] ");
    }

    if (*(a1 + 82))
    {
      CFStringAppend(Mutable, @"[Buffering] ");
    }

    if (*(a1 + 105))
    {
      CFStringAppend(Mutable, @"[Offline] ");
    }
  }

  return Mutable;
}

void FigPlayerResourceArbiterPlayerSpecifierSetDisplaySize_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetIsMuted_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetIsBuffering_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetPlayerRole_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetIsFullyOffline_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterPlayerSpecifierSetNetworkPriority_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterNetworkSpecifierSetLowestBitrate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterNetworkSpecifierSetCurrentBitrate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterNetworkSpecifierSetHighestBitrate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerResourceArbiterNetworkSpecifierSetPriorBitrate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_158();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

double figTTMLDocumentWriterForSerializer_StartElement(void *a1, int a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  switch(a2)
  {
    case 1:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_set;
      goto LABEL_25;
    case 2:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_body;
      goto LABEL_25;
    case 3:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_div;
      goto LABEL_25;
    case 4:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_p;
      goto LABEL_25;
    case 5:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_span;
      goto LABEL_25;
    case 6:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_br;
      goto LABEL_25;
    case 7:
      FigTTMLDocumentWriterGetCMBaseObject();
      v9 = CMBaseObjectGetDerivedStorage();
      if (!FigTTMLSerializerStartElement(*v9, @"tt"))
      {
        *(v9 + 208) = 0;
        MEMORY[0x19A8D3660](&getNamespaceToPrefixDictionary_sNamespaceURIToPrefixOnce, initializeNamespaceToPrefixDictionary);
        CFDictionaryApplyFunction(sNamespaceToPrefixDictionary, declareNamespace, a1);
        if (!*(v9 + 208))
        {
          v11 = *v9;

          FigTTMLSerializerSetAttribute(v11, @"xmlns", @"http://www.w3.org/ns/ttml");
        }
      }

      return result;
    case 8:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_head;
      goto LABEL_25;
    case 9:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_layout;
      goto LABEL_25;
    case 10:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_region;
      goto LABEL_25;
    case 11:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_metadata;
      goto LABEL_25;
    case 12:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_styling;
      goto LABEL_25;
    case 13:
      v6 = *DerivedStorage;
      v7 = kFigTTML_ElementLocalName_style;
LABEL_25:
      v13 = *v7;

      FigTTMLSerializerStartElement(v6, v13);
      return result;
    case 15:
      v8 = kFigTTML_ElementLocalName_profile;
      goto LABEL_18;
    case 17:
      v8 = kFigTTML_ElementLocalName_extensions;
      goto LABEL_18;
    case 19:
      v8 = kFigTTML_ElementLocalName_extension;
LABEL_18:
      v12 = *v8;

      startElementWithNamespace(a1, @"http://www.w3.org/ns/ttml#parameter", v12);
      break;
    default:

      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954514, "(Fig)", 313, v2);
      break;
  }

  return result;
}

void figTTMLDocumentWriterForSerializer_SetAttribute(uint64_t a1, uint64_t a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    v7 = @"xml:id";
LABEL_9:

    FigTTMLSerializerSetAttribute(v6, v7, a3);
    return;
  }

  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    v7 = @"xml:space";
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    v7 = @"xml:lang";
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v6 = *DerivedStorage;
    v7 = @"xml:base";
    goto LABEL_9;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    if (a3)
    {
      v8 = CFGetTypeID(a3);
      TypeID = CFDictionaryGetTypeID();
      if (v8 == TypeID)
      {
        OUTLINED_FUNCTION_6_85(TypeID, v10, v11, v12, v13, v14, v15, v16, v70, v72, v74.value, *&v74.timescale, v74.epoch, v75, v76.value, *&v76.timescale, v76.epoch, valuePtr, *(&valuePtr + 1), v78);
        OUTLINED_FUNCTION_4_113();
        if (v17)
        {
          v18 = FigCFEqual();
          if (v18)
          {
            OUTLINED_FUNCTION_76_11(v18, *(DerivedStorage + 32), v20, *(DerivedStorage + 24), v22, v23, v24, v25, v71, v73, v74.value, *&v74.timescale, v74.epoch, v75, v76.value, *&v76.timescale, v76.epoch, valuePtr);
            v74 = *(DerivedStorage + 36);
            v28 = FigTTMLCMTimeCopyAsClockTimeSyntax(&v76, v26, &v74, v27);
          }

          else
          {
            OUTLINED_FUNCTION_76_11(v18, v19, v20, v21, v22, v23, v24, v25, v71, v73, v74.value, *&v74.timescale, v74.epoch, v75, v76.value, *&v76.timescale, v76.epoch, valuePtr);
            v28 = FigTTMLCMTimeCopyAsOffsetTimeSyntax(&v76);
          }

          v29 = v28;
          FigTTMLSerializerSetAttribute(*DerivedStorage, a2, v28);
LABEL_23:
          if (v29)
          {
            CFRelease(v29);
          }

          return;
        }

        OUTLINED_FUNCTION_239();
        v52 = "%s signalled err=%d at <>:%d";
        v53 = "(Fig)";
        v54 = 0;
        v55 = 4294954516;
        v56 = 382;
LABEL_67:
        FigSignalErrorAtGM(v52, v54, v55, v53, v56);
        v29 = 0;
        goto LABEL_23;
      }
    }

    goto LABEL_64;
  }

  if (FigCFEqual())
  {
    if (a3)
    {
      v30 = CFGetTypeID(a3);
      if (v30 == CFStringGetTypeID())
      {
        v31 = OUTLINED_FUNCTION_0_159();
        if (!writeStringAttributeWithNamespace(v31, v32, v33))
        {
          v34 = @"utc";
          if (OUTLINED_FUNCTION_3_116() || (v34 = @"local", OUTLINED_FUNCTION_3_116()) || (v34 = @"gps", OUTLINED_FUNCTION_3_116()))
          {
            *(DerivedStorage + 16) = v34;
          }
        }

        return;
      }
    }

    goto LABEL_64;
  }

  if (FigCFEqual())
  {
    if (!a3)
    {
      goto LABEL_64;
    }

    v35 = CFGetTypeID(a3);
    if (v35 != CFStringGetTypeID())
    {
      goto LABEL_64;
    }

    v36 = OUTLINED_FUNCTION_0_159();
    if (!writeStringAttributeWithNamespace(v36, v37, v38))
    {
      v39 = @"media";
      if (OUTLINED_FUNCTION_3_116() || (v39 = @"smpte", OUTLINED_FUNCTION_3_116()) || (v39 = @"clock", OUTLINED_FUNCTION_3_116()))
      {
        *(DerivedStorage + 184) = v39;
      }
    }
  }

  else if (FigCFEqual())
  {
    if (!a3)
    {
      goto LABEL_64;
    }

    v40 = CFGetTypeID(a3);
    if (v40 != CFStringGetTypeID())
    {
      goto LABEL_64;
    }

    v41 = OUTLINED_FUNCTION_0_159();
    if (!writeStringAttributeWithNamespace(v41, v42, v43))
    {
      v44 = @"dropNTSC";
      if (OUTLINED_FUNCTION_3_116() || (v44 = @"dropPAL", OUTLINED_FUNCTION_3_116()) || (v44 = @"nonDrop", OUTLINED_FUNCTION_3_116()))
      {
        *(DerivedStorage + 24) = v44;
      }
    }
  }

  else if (FigCFEqual())
  {
    if (!a3)
    {
      goto LABEL_64;
    }

    v45 = CFGetTypeID(a3);
    if (v45 != CFStringGetTypeID())
    {
      goto LABEL_64;
    }

    v46 = OUTLINED_FUNCTION_0_159();
    if (!writeStringAttributeWithNamespace(v46, v47, v48))
    {
      v49 = @"continuous";
      if (OUTLINED_FUNCTION_3_116() || (v49 = @"discontinuous", OUTLINED_FUNCTION_3_116()))
      {
        *(DerivedStorage + 64) = v49;
      }
    }
  }

  else
  {
    if (FigCFEqual())
    {
      if (a3)
      {
        v50 = CFGetTypeID(a3);
        if (v50 == CFNumberGetTypeID())
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
          v29 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", valuePtr);
          if (v29)
          {
            if (!FigTTMLSerializerSetAttribute(*DerivedStorage, @"ttp:frameRate", v29))
            {
              *(DerivedStorage + 32) = valuePtr;
            }
          }

          else
          {
            OUTLINED_FUNCTION_239();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954510, "(Fig)", 456);
          }

          goto LABEL_23;
        }
      }

      goto LABEL_64;
    }

    if (FigCFEqual())
    {
      if (a3)
      {
        v57 = CFGetTypeID(a3);
        v58 = CFDictionaryGetTypeID();
        if (v57 == v58)
        {
          OUTLINED_FUNCTION_6_85(v58, v59, v60, v61, v62, v63, v64, v65, v70, v72, v74.value, *&v74.timescale, v74.epoch, v75, v76.value, *&v76.timescale, v76.epoch, valuePtr, *(&valuePtr + 1), v78);
          OUTLINED_FUNCTION_4_113();
          if (v17)
          {
            v29 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%lld %d", valuePtr, DWORD2(valuePtr));
            if (v29)
            {
              if (!FigTTMLSerializerSetAttribute(*DerivedStorage, @"ttp:frameRateMultiplier", v29))
              {
                *(DerivedStorage + 36) = valuePtr;
                *(DerivedStorage + 52) = v78;
              }
            }

            else
            {
              OUTLINED_FUNCTION_239();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954510, "(Fig)", 472);
            }

            goto LABEL_23;
          }

          OUTLINED_FUNCTION_239();
          OUTLINED_FUNCTION_0_120();
          v56 = 469;
          goto LABEL_67;
        }
      }

      goto LABEL_64;
    }

    if (!a3 || (v66 = CFGetTypeID(a3), v66 != CFStringGetTypeID()))
    {
LABEL_64:
      OUTLINED_FUNCTION_239();
      OUTLINED_FUNCTION_0_120();

      FigSignalErrorAtGM(v51);
      return;
    }

    v67 = OUTLINED_FUNCTION_0_159();

    writeStringAttributeWithNamespace(v67, v68, v69);
  }
}

void declareNamespace(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 208))
  {
    v5 = DerivedStorage;
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"xmlns:%@", a2);
    *(v5 + 208) = FigTTMLSerializerSetAttribute(*v5, v6, a1);
    if (v6)
    {

      CFRelease(v6);
    }
  }
}

uint64_t FigAlternateFilterMonitorForHDCPNeedsNewExternalProtectionMonitorIfNecessary(void *a1, int a2, const void *a3)
{
  v14 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 72) = a2;
  v7 = *(DerivedStorage + 80);
  *(DerivedStorage + 80) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (!a2)
  {
    famhdcp_releaseAndClearHDCPExternalProtectionMonitor(a1, 3);
  }

  CFGetAllocator(a1);
  OUTLINED_FUNCTION_0_160();
  if (!FigAlternateHDCPLazyEPMFilterCreate(v8, v9, v10, a1, &cf) && !famhdcp_createFilterTree(cf, *(DerivedStorage + 136), &v14))
  {
    famhdcp_releaseAssignAndRetainCurrentEPM(a1, 0);
    famhdcp_removeAllEPMListeners(a1);
  }

  FigSimpleMutexUnlock();
  v11 = v14;
  v12 = famhdcp_setFilterForState(a1, v14, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t famhdcp_createFilterTree(const void *a1, const void *a2, CFTypeRef *a3)
{
  v11 = 0;
  cf = 0;
  if (a1)
  {
    if (a2)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      inserted = FigAlternateFilterTreeCreate(AllocatorForMedia, &cf);
      if (!inserted)
      {
        inserted = FigAlternateFilterTreeInsertLeaf(cf, a1, 200);
        if (!inserted)
        {
          inserted = FigAlternateFilterTreeInsertLeaf(cf, a2, 100);
          if (!inserted)
          {
            inserted = FigAlternateFilterTreeCreateFilter(cf, @"AdvisoryDeviceCapabilityFilterTree", 879, &v11);
            if (!inserted)
            {
              if (v11)
              {
                v9 = 0;
                *a3 = v11;
                v11 = 0;
                goto LABEL_9;
              }

              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17488, 4294951683, "<<<< FigAlternateFilterMonitorForHDCP >>>>", 173, v3);
            }
          }
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17488, 4294951683, "<<<< FigAlternateFilterMonitorForHDCP >>>>", 159, v3);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17488, 4294951683, "<<<< FigAlternateFilterMonitorForHDCP >>>>", 158, v3);
  }

  v9 = inserted;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

void famhdcp_releaseAssignAndRetainCurrentEPM(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    if (!CFBagContainsValue(*(v4 + 128), a2))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      if (!FigNotificationCenterAddWeakListener())
      {
        CFBagAddValue(*(v4 + 128), a2);
      }
    }
  }

  v5 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_1_149(v5);
  v6 = *(DerivedStorage + 112);
  *(DerivedStorage + 112) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t famhdcp_lazyEPMFilterGetHDCPProtectionStatusCallback(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  HIDWORD(v11) = -2;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104) >= a1)
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_19;
  }

  if (*(DerivedStorage + 112) && *(DerivedStorage + 120) == a1)
  {
    v5 = 0;
    v6 = *(DerivedStorage + 124);
    goto LABEL_19;
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5 || (*(DerivedStorage + 16))(a1, v5, &v11 + 4, &cf))
  {
    goto LABEL_25;
  }

  if (!cf)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0, v13);
LABEL_25:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  if (!FigCFEqual())
  {
    famhdcp_releaseAssignAndRetainCurrentEPM(a2, cf);
  }

  *(DerivedStorage + 120) = HIDWORD(v11);
  HDCPStateFromExternalProtectionMonitor = famhdcp_getHDCPStateFromExternalProtectionMonitor(*(DerivedStorage + 112));
  *(DerivedStorage + 124) = HDCPStateFromExternalProtectionMonitor;
  v8 = *(DerivedStorage + 120);
  if (v8 < a1)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = HDCPStateFromExternalProtectionMonitor;
  }

  if (HDCPStateFromExternalProtectionMonitor >= 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = *(DerivedStorage + 120);
  }

  if (*(DerivedStorage + 104) < v9)
  {
    *(DerivedStorage + 104) = v8;
  }

LABEL_19:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t famhdcp_getHDCPStateFromExternalProtectionMonitor(uint64_t a1)
{
  result = FigCPEExternalProtectionMonitorStableStatusDetermined(a1);
  if (result)
  {
    if (FigCPEExternalProtectionMonitorGetStatus(a1) == 4)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void famhdcp_observingEPMStatusChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = *(v8 + 96);
  CurrentMaxSupportedHDCPLevel = famhdcp_getCurrentMaxSupportedHDCPLevel(a2);
  v18 = 0;
  if (a5)
  {
    FigCFDictionaryGetInt32IfPresent();
  }

  if (CurrentMaxSupportedHDCPLevel != -2)
  {
    *(v8 + 96) = CurrentMaxSupportedHDCPLevel;
  }

  if ((v9 & 0x80000000) == 0 && CurrentMaxSupportedHDCPLevel < 0 && v18 == 1)
  {
    ++*(v8 + 100);
  }

  CFGetAllocator(a2);
  OUTLINED_FUNCTION_0_160();
  if (!FigAlternateHDCPLazyEPMFilterCreate(v11, v12, v13, a2, &cf) && !famhdcp_createFilterTree(cf, *(DerivedStorage + 136), &v16))
  {
    v14 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_1_149(v14);
  }

  FigSimpleMutexUnlock();
  v15 = v16;
  famhdcp_setFilterForState(a2, v16, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t famhdcp_aocpFilterGetAOCPProtectionStatusCallback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 112);
  if (v2 && v2 != *(DerivedStorage + 64) && FigCPEExternalProtectionMonitorStableStatusDetermined(v2) && FigCPEExternalProtectionMonitorGetAOCPStatus(*(DerivedStorage + 112)) == 2)
  {
    v3 = 1;
    *(DerivedStorage + 144) = 1;
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

CFTypeRef famhdcp_copyProperty_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 112);
  if (v6 && v6 != *(DerivedStorage + 64) && FigCPEExternalProtectionMonitorStableStatusDetermined(v6) && FigCPEExternalProtectionMonitorGetAOCPStatus(*(DerivedStorage + 112)) == 2 && !*(DerivedStorage + 144))
  {
    *(DerivedStorage + 144) = 1;
  }

  FigSimpleMutexUnlock();
  v7 = MEMORY[0x1E695E4D0];
  if (!*(a2 + 144))
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  result = *v7;
  if (*v7)
  {
    result = CFRetain(result);
  }

  *a3 = result;
  return result;
}

void famhdcp_setProperty_cold_1(CFArrayRef theArray, void *a2, _DWORD *a3)
{
  if (!theArray)
  {
    v6 = 0;
    v8 = (a2 + 11);
    v7 = a2[11];
    a2[11] = 0;
LABEL_6:
    v9 = 1;
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  v6 = MutableCopy;
  v8 = (a2 + 11);
  v7 = a2[11];
  a2[11] = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_6;
  }

  CFRetain(MutableCopy);
  v9 = 0;
  if (v7)
  {
LABEL_7:
    CFRelease(v7);
  }

LABEL_8:
  v10 = a2[6];
  if (!v10 || !FigCPEExternalProtectionMonitorSetProperty(v10, @"DisplayList", *v8))
  {
    v11 = a2[7];
    if (v11)
    {
      FigCPEExternalProtectionMonitorSetProperty(v11, @"DisplayList", *v8);
    }
  }

  if ((v9 & 1) == 0)
  {
    CFRelease(v6);
  }

  *a3 = 0;
}

CFMutableStringRef figTTMLCreateNamespaceAndName(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    if (a1)
    {
      OUTLINED_FUNCTION_6_35();
      CFStringAppendCString(v3, v4, v5);
      OUTLINED_FUNCTION_6_35();
      CFStringAppendCString(v6, v7, v8);
    }

    OUTLINED_FUNCTION_6_35();
    CFStringAppendCString(v9, v10, v11);
  }

  return Mutable;
}

void FigTTMLParseNode(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t *, CFTypeRef *), uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  cf = 0;
  OUTLINED_FUNCTION_1_150();
  if (!_MergedGlobals_102)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_19;
  }

  if (off_1ED4CB5B0(a1) != 1)
  {
    if (off_1ED4CB5A0(a1) != -1)
    {
      goto LABEL_19;
    }

LABEL_5:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_19;
  }

  v8 = off_1ED4CB568(a1);
  v9 = off_1ED4CB5A0(a1);
  if (v8)
  {
    if (v9 != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  if (v9 != 1)
  {
    goto LABEL_5;
  }

  ++a3[2];
  while (off_1ED4CB5B0(a1) != 15)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (a2(a1, a3, &cf))
    {
      goto LABEL_19;
    }

    v10 = cf;
    if (cf)
    {
      ++a3[2];
      v7 = v10;
    }

    *a3 = v6;
    a3[1] = v7;
  }

  --a3[2];
  if (off_1ED4CB5A0(a1) == -1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_90_4();
}

uint64_t FigTTMLParseAndCreateBlockClassNode()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_1_150();
  if (_MergedGlobals_102)
  {
    v2 = off_1ED4CB5B0(v1);
    if (v2 != 1)
    {
      goto LABEL_13;
    }

    v4 = OUTLINED_FUNCTION_24_26(v2, v3);
    if (!v4)
    {
      v5 = FigCFEqual();
      if (v5 && OUTLINED_FUNCTION_35_19(v5, v6, v7, v8, v9, v10, v11, v12, v31, cf, v33))
      {
        v13 = OUTLINED_FUNCTION_3_117();
        v4 = FigTTMLDivCreate(v13, v14, v15, v16);
        if (v4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v17 = FigCFEqual();
        if (v17)
        {
          if (OUTLINED_FUNCTION_35_19(v17, v18, v19, v20, v21, v22, v23, v24, v31, cf, v33))
          {
            v25 = OUTLINED_FUNCTION_3_117();
            v4 = FigTTMLPCreate(v25, v26, v27, v28);
            if (v4)
            {
              goto LABEL_22;
            }
          }
        }
      }

      if (v0)
      {
        v29 = 0;
        *v0 = v34;
        v34 = 0;
        goto LABEL_14;
      }

LABEL_13:
      v29 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, cf, v33);
  }

LABEL_22:
  v29 = v4;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  return v29;
}

uint64_t FigTTMLParseAndCreateInlineClassNode()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_1_150();
  if (!_MergedGlobals_102)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, cf, v38);
    goto LABEL_28;
  }

  v2 = off_1ED4CB5B0(v1);
  if (v2 == 14 || v2 == 3)
  {
    v5 = OUTLINED_FUNCTION_3_117();
    v9 = FigTTMLTextCreate(v5, v6, v7, v8);
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (v2 != 1)
  {
    goto LABEL_18;
  }

  v9 = OUTLINED_FUNCTION_24_26(v2, v3);
  if (v9)
  {
LABEL_28:
    v34 = v9;
    goto LABEL_20;
  }

  v10 = FigCFEqual();
  if (v10 && OUTLINED_FUNCTION_35_19(v10, v11, v12, v13, v14, v15, v16, v17, v36, cf, v38))
  {
    v18 = OUTLINED_FUNCTION_3_117();
    v9 = FigTTMLSpanCreate(v18, v19, v20, v21);
    if (v9)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v22 = FigCFEqual();
    if (v22)
    {
      if (OUTLINED_FUNCTION_35_19(v22, v23, v24, v25, v26, v27, v28, v29, v36, cf, v38))
      {
        v30 = OUTLINED_FUNCTION_3_117();
        v9 = FigTTMLBrCreate(v30, v31, v32, v33);
        if (v9)
        {
          goto LABEL_28;
        }
      }
    }
  }

LABEL_18:
  v34 = 0;
  if (v0)
  {
    *v0 = v39;
    v39 = 0;
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v34;
}

uint64_t FigTTMLParseAndCreateAnimationClassNode()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_1_150();
  if (!_MergedGlobals_102)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, cf, v15);
    goto LABEL_21;
  }

  v2 = off_1ED4CB5B0(v1);
  if (v2 != 1)
  {
    goto LABEL_9;
  }

  v4 = OUTLINED_FUNCTION_24_26(v2, v3);
  if (v4)
  {
LABEL_21:
    v10 = v4;
    goto LABEL_13;
  }

  if (FigCFEqual() && FigCFEqual())
  {
    v5 = OUTLINED_FUNCTION_3_117();
    v9 = FigTTMLSetCreate(v5, v6, v7, v8);
    v10 = v9;
    if (v0 && !v9)
    {
      v11 = v16;
LABEL_11:
      v10 = 0;
      *v0 = v11;
      v16 = 0;
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_9:
  if (v0)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v10;
}

double FigTTMLParseFrameRate()
{
  OUTLINED_FUNCTION_17_37();
  Length = CFStringGetLength(v1);
  HIDWORD(v18) = 0;
  if (v0)
  {
    v3 = Length;
    OUTLINED_FUNCTION_26_29(Length);
    OUTLINED_FUNCTION_14_47();
    if (!v4)
    {
      OUTLINED_FUNCTION_20_31();
    }

    OUTLINED_FUNCTION_6_86();
    v13 = OUTLINED_FUNCTION_16_41(v5, v6, v7, v8, v9, v10, v11, v12, v18, 0, v22);
    result = figTTMLParseOneOrMoreDigits(v13, 0, v3, v14, v15);
    if (!v17)
    {
      if (v20)
      {
        *v0 = v20;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v21, v23);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double figTTMLParseOneOrMoreDigits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v28 = 0;
  v29 = a2;
  if (a4 && a5)
  {
    OUTLINED_FUNCTION_11_55();
    result = OUTLINED_FUNCTION_13_41(v6, v7, v8, v9, v10, &v28 + 1);
    if (!v11)
    {
      result = OUTLINED_FUNCTION_8_58(v11, v12, v13, v14, v15, v16, v17, v18, v28, v29);
      if (v20)
      {
LABEL_7:
        OUTLINED_FUNCTION_19_36(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
        *a5 = HIDWORD(v28);
      }

      else
      {
        while (HIDWORD(v28) <= 0x1745D173)
        {
          HIDWORD(v28) = v28 + 10 * HIDWORD(v28);
          result = OUTLINED_FUNCTION_8_58(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
          if (v20)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FigTTMLParseFrameRateMultiplier()
{
  OUTLINED_FUNCTION_17_37();
  Length = CFStringGetLength(v2);
  v20 = 0;
  if (v0)
  {
    v4 = Length;
    v24 = v1;
    v27 = 0;
    v28 = Length;
    CFStringGetCharactersPtr(v1);
    OUTLINED_FUNCTION_14_47();
    v25 = v5;
    if (!v5)
    {
      OUTLINED_FUNCTION_20_31();
    }

    v22 = 0u;
    v23 = 0u;
    OUTLINED_FUNCTION_7_73();
    v29 = 0;
    v30 = 0;
    v26 = v6;
    result = OUTLINED_FUNCTION_23_38(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18.value, *&v18.timescale, v18.epoch, 0, 0, v20, SHIDWORD(v20), buffer[0]);
    if (!v15 && !figTTMLParseOneOrMoreWhitespaces(buffer, v20, &v20))
    {
      result = figTTMLParseOneOrMoreDigits(buffer, v20, v4, &v20, timescale);
      if (!v16)
      {
        if (timescale[1] && timescale[0])
        {
          CMTimeMake(&v18, timescale[1], timescale[0]);
          result = *&v18.value;
          *v0 = v18;
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FigTTMLParsePixelAspectRatio()
{
  OUTLINED_FUNCTION_17_37();
  Length = CFStringGetLength(v2);
  v31 = 0;
  if (v0)
  {
    v4 = Length;
    v33 = v1;
    v36 = 0;
    v37 = Length;
    CFStringGetCharactersPtr(v1);
    OUTLINED_FUNCTION_14_47();
    v34 = v5;
    if (!v5)
    {
      OUTLINED_FUNCTION_20_31();
    }

    OUTLINED_FUNCTION_6_86();
    v38 = 0;
    v39 = 0;
    v35 = v6;
    v14 = OUTLINED_FUNCTION_16_41(v6, v7, v8, v9, v10, v11, v12, v13, 0, v31, buffer[0]);
    result = figTTMLParseOneOrMoreDigits(v14, 0, v4, v15, v16);
    if (!v18)
    {
      v19 = figTTMLParseOneOrMoreWhitespaces(buffer, v31, &v31);
      if (!v19)
      {
        result = OUTLINED_FUNCTION_27_26(v19, v20, v21, v22, v23, v24, v25, v26, v28, v31);
        if (!v27)
        {
          if (v30 && v29)
          {
            *v0 = FigGeometryAspectRatioMake();
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FigTTMLParseActiveArea(const __CFString *a1, _OWORD *a2)
{
  v36[4] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  v20 = 0;
  v19 = 0;
  v18 = 0.0;
  if (a2)
  {
    v6 = Length;
    v29 = a1;
    v32 = 0;
    v33 = Length;
    CFStringGetCharactersPtr(a1);
    CStringPtr = OUTLINED_FUNCTION_14_47();
    v30 = v8;
    if (!v8)
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
    }

    v9 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v22 = 0u;
    v23 = 0u;
    *buffer = 0u;
    v34 = 0;
    v35 = 0;
    v31 = CStringPtr;
    while (1)
    {
      v10 = v20;
      if (v9 * 8)
      {
        if (figTTMLParseOneOrMoreWhitespaces(buffer, v20, &v20))
        {
          return result;
        }

        v10 = v20;
      }

      figTTMLParseOneOrMoreDigits(buffer, v10, v6, &v20, &v19);
      figTTMLParseFraction(buffer, v20, v6, &v20, &v18);
      result = figTTMLParseString("%", buffer, v20, v6, &v20);
      if (v12)
      {
        break;
      }

      LODWORD(result) = v19;
      v36[v9++] = v18 + *&result;
      if (v9 == 4)
      {
        OUTLINED_FUNCTION_34_24(v36[0], v36[2] / 100.0);
        OUTLINED_FUNCTION_34_24(v36[1], v36[3] / 100.0);
        FigGeometryDimensionMake();
        FigGeometryDimensionMake();
        FigGeometryRectMake();
        *a2 = v14;
        a2[1] = v15;
        result = *&v16;
        a2[2] = v16;
        a2[3] = v17;
        return result;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< FigTTMLParserUtilities >>>>", 1301, v2);
  }

  return result;
}

double figTTMLParseFraction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  v26 = a2;
  HIDWORD(v25) = 0;
  if (a4 && a5)
  {
    OUTLINED_FUNCTION_11_55();
    v10 = figTTMLParseCharacter(46, v6, v8, v5, v9);
    if (!v10)
    {
      v22 = OUTLINED_FUNCTION_13_41(v10, v11, v26, v12, &v26, &v25 + 1);
      v23 = 0.0;
      if (!v14)
      {
        v24 = 10.0;
        do
        {
          LODWORD(v22) = HIDWORD(v25);
          v23 = v23 + *&v22 / v24;
          v24 = v24 * 10.0;
          v22 = OUTLINED_FUNCTION_13_41(v14, v15, v26, v17, &v26, &v25 + 1);
        }

        while (!v14);
      }

      OUTLINED_FUNCTION_19_36(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);
      *a5 = v23;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double figTTMLParseString(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a5)
  {
    v6 = a3;
    v8 = *a1;
    if (*a1)
    {
      v10 = 0;
      if (a4 <= a3)
      {
        v11 = a3;
      }

      else
      {
        v11 = a4;
      }

      v12 = v11 - a3;
      while (v10 != v12)
      {
        if (v6 < 0 || *(a2 + 160) <= v6)
        {
          v14 = 0;
        }

        else
        {
          v13 = *(a2 + 136);
          if (v13)
          {
            v14 = *(v13 + 2 * *(a2 + 152) + 2 * v6);
          }

          else
          {
            v15 = *(a2 + 144);
            if (v15)
            {
              v14 = *(v15 + *(a2 + 152) + v6);
            }

            else
            {
              if (*(a2 + 176) <= v6 || (v16 = *(a2 + 168), v16 > v6))
              {
                OUTLINED_FUNCTION_3_62();
                *(a2 + 168) = v18;
                *(a2 + 176) = v17;
                OUTLINED_FUNCTION_18_37();
                CFStringGetCharacters(v19, v22, a2);
                v16 = *(a2 + 168);
              }

              v14 = *(a2 + 2 * (v6 - v16));
            }
          }
        }

        if (v8 != v14)
        {
          break;
        }

        ++v6;
        v8 = a1[++v10];
        if (!v8)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *a5 = v6;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FigTTMLParseTickRate()
{
  OUTLINED_FUNCTION_17_37();
  Length = CFStringGetLength(v1);
  *&value[1] = 0;
  if (v0)
  {
    OUTLINED_FUNCTION_26_29(Length);
    OUTLINED_FUNCTION_14_47();
    v21 = v3;
    if (!v3)
    {
      OUTLINED_FUNCTION_20_31();
    }

    v19 = 0u;
    v20 = 0u;
    OUTLINED_FUNCTION_7_73();
    v22 = v4;
    v23 = 0;
    v24 = 0;
    result = OUTLINED_FUNCTION_23_38(v4, v5, v6, v7, v8, v9, v10, v11, v14, *v16, *&v16[8], *&v16[16], *&v16[24], 0, value[1], value[2], v18);
    if (!v13)
    {
      if (value[0])
      {
        CMTimeMake(&v16[4], value[0], 1);
        result = *&v16[4];
        *v0 = *&v16[4];
        *(v0 + 16) = *&v16[20];
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, *v16, *&v16[8]);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FigTTMLParseColor(const __CFString *a1, float *a2, float *a3, float *a4, _DWORD *a5)
{
  Length = CFStringGetLength(a1);
  v140 = 0;
  v141 = 0;
  v139 = 0;
  if (a2 && a3 && a4 && a5)
  {
    v11 = Length;
    v144 = a1;
    v147 = 0;
    v148 = Length;
    CFStringGetCharactersPtr(a1);
    OUTLINED_FUNCTION_14_47();
    v145 = v12;
    if (!v12)
    {
      CFStringGetCStringPtr(a1, 0x600u);
    }

    v143 = 0u;
    OUTLINED_FUNCTION_7_73();
    *buffer = v13;
    v146 = v14;
    v149 = 0;
    v150 = 0;
    OUTLINED_FUNCTION_15_43();
    if (!figTTMLParseCharacter(35, v15, 0, v11, v16))
    {
      result = figTTMLParseHexDigits(buffer, v141, v11, &v141, &v140 + 1);
      if (v17)
      {
        return result;
      }

      v26 = OUTLINED_FUNCTION_5_98(v17, v18, v19, v20, v21, v22, v23, v24, v133, v139, v140, v141, buffer[0]);
      result = figTTMLParseHexDigits(v26, v27, v11, v28, &v140);
      if (v29)
      {
        return result;
      }

      v37 = OUTLINED_FUNCTION_5_98(v29, v30, v31, v32, v33, v34, v35, v36, v134, v139, v140, v141, buffer[0]);
      result = figTTMLParseHexDigits(v37, v38, v11, v39, &v139 + 1);
      if (v40)
      {
        return result;
      }

      v48 = OUTLINED_FUNCTION_5_98(v40, v41, v42, v43, v44, v45, v46, v47, v135, v139, v140, v141, buffer[0]);
      figTTMLParseHexDigits(v48, v49, v11, v50, &v139);
      if (!v51)
      {
        goto LABEL_17;
      }

      v52 = 255;
LABEL_16:
      LODWORD(v139) = v52;
LABEL_17:
      if (HIDWORD(v140) >= 0x100 || v140 >= 0x100 || HIDWORD(v139) >= 0x100 || v139 >= 0x100)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      else
      {
        *a2 = OUTLINED_FUNCTION_32_24(HIDWORD(v140), *"");
        *a3 = OUTLINED_FUNCTION_32_24(v59, v60);
        *a4 = OUTLINED_FUNCTION_32_24(v61, v62);
        *&result = OUTLINED_FUNCTION_32_24(v63, v64);
        *a5 = LODWORD(result);
      }

      return result;
    }

    OUTLINED_FUNCTION_15_43();
    v57 = figTTMLParseString(v53, v54, v55, v11, v56);
    if (v58)
    {
      MEMORY[0x19A8D3660](&initNamedColorToRGBAMapOnce, figTTMLInitNamedColorToRGBAMap, v57);
      if (FigCFDictionaryGetInt32IfPresent())
      {
        v140 = 0;
        HIDWORD(v139) = 0;
        v52 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_43();
      figTTMLParseString(v65, v66, v67, v11, v68);
      v77 = v69;
      if (!v69 || (OUTLINED_FUNCTION_10_54(), v69 = figTTMLParseCharacter(40, v127, v128, v11, v129), !v69))
      {
        v78 = OUTLINED_FUNCTION_5_98(v69, v70, v71, v72, v73, v74, v75, v76, v133, v139, v140, v141, buffer[0]);
        result = figTTMLParseOneOrMoreDigits(v78, v79, v11, v80, &v140 + 1);
        if (v81)
        {
          return result;
        }

        OUTLINED_FUNCTION_10_54();
        v85 = figTTMLParseCharacter(44, v82, v83, v11, v84);
        if (v85)
        {
          return result;
        }

        v93 = OUTLINED_FUNCTION_5_98(v85, v86, v87, v88, v89, v90, v91, v92, v136, v139, v140, v141, buffer[0]);
        result = figTTMLParseOneOrMoreDigits(v93, v94, v11, v95, &v140);
        if (v96)
        {
          return result;
        }

        OUTLINED_FUNCTION_10_54();
        v100 = figTTMLParseCharacter(44, v97, v98, v11, v99);
        if (v100)
        {
          return result;
        }

        v108 = OUTLINED_FUNCTION_5_98(v100, v101, v102, v103, v104, v105, v106, v107, v137, v139, v140, v141, buffer[0]);
        result = figTTMLParseOneOrMoreDigits(v108, v109, v11, v110, &v139 + 1);
        if (v111)
        {
          return result;
        }

        if (v77)
        {
          LODWORD(v139) = 255;
        }

        else
        {
          OUTLINED_FUNCTION_10_54();
          v115 = figTTMLParseCharacter(44, v112, v113, v11, v114);
          if (v115)
          {
            return result;
          }

          v123 = OUTLINED_FUNCTION_5_98(v115, v116, v117, v118, v119, v120, v121, v122, v138, v139, v140, v141, buffer[0]);
          result = figTTMLParseOneOrMoreDigits(v123, v124, v11, v125, &v139);
          if (v126)
          {
            return result;
          }
        }

        OUTLINED_FUNCTION_10_54();
        if (figTTMLParseCharacter(41, v130, v131, v11, v132))
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t figTTMLParseCharacter(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4 <= a3)
  {
    return 4294950724;
  }

  if (a3 < 0 || *(a2 + 160) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v9 = *(a2 + 136);
    if (v9)
    {
      v10 = *(v9 + 2 * *(a2 + 152) + 2 * a3);
    }

    else
    {
      v12 = *(a2 + 144);
      if (v12)
      {
        v10 = *(v12 + *(a2 + 152) + a3);
      }

      else
      {
        if (*(a2 + 176) <= a3 || (v13 = *(a2 + 168), v13 > a3))
        {
          OUTLINED_FUNCTION_3_62();
          *(a2 + 168) = v15;
          *(a2 + 176) = v14;
          OUTLINED_FUNCTION_18_37();
          CFStringGetCharacters(v16, v17, a2);
          v13 = *(a2 + 168);
        }

        v10 = *(a2 + 2 * (a3 - v13));
      }
    }
  }

  if (a1 != v10)
  {
    return 4294950724;
  }

  result = 0;
  if (a5)
  {
    *a5 = a3 + 1;
  }

  return result;
}

double figTTMLParseHexDigits(UniChar *buffer, int64_t a2, uint64_t a3, int64_t *a4, unsigned int *a5)
{
  if (a4 && a5)
  {
    if (a3 - a2 >= 2)
    {
      v8 = 0;
      v9 = -a2;
      v10 = a2 + 64;
      v11 = 1;
      v12 = a2;
      while (1)
      {
        v13 = v11;
        if (v12 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v12;
        }

        if (a2 < 0)
        {
          break;
        }

        v15 = *(buffer + 20);
        if (v15 <= v12)
        {
          break;
        }

        v16 = *(buffer + 17);
        if (v16)
        {
          v17 = (v16 + 2 * *(buffer + 19));
        }

        else
        {
          v19 = *(buffer + 18);
          if (v19)
          {
            v18 = *(v19 + *(buffer + 19) + v12);
            goto LABEL_15;
          }

          if (*(buffer + 22) <= v12 || (v22 = *(buffer + 21), v22 > v12))
          {
            v23 = -v14;
            v24 = v14 + v9;
            v25 = v10 - v14;
            v26 = v12 + v23;
            v27 = v26 + 64;
            if (v26 + 64 >= v15)
            {
              v27 = *(buffer + 20);
            }

            *(buffer + 21) = v26;
            *(buffer + 22) = v27;
            if (v15 >= v25)
            {
              v15 = v25;
            }

            v32.location = v26 + *(buffer + 19);
            v32.length = v15 + v24;
            CFStringGetCharacters(*(buffer + 16), v32, buffer);
            v22 = *(buffer + 21);
          }

          v17 = &buffer[-v22];
        }

        v18 = v17[v12];
LABEL_15:
        v20 = v18;
        if ((v18 - 48) >= 0xAu)
        {
          if (v18 - 65 >= 6)
          {
            if (v18 - 97 > 5)
            {
              break;
            }

            v21 = -87;
          }

          else
          {
            v21 = -55;
          }
        }

        else
        {
          v21 = -48;
        }

        if (v8 > 0xF0F0F0E)
        {
          break;
        }

        v11 = 0;
        v8 = v21 + v20 + 16 * v8;
        ++v12;
        --v9;
        ++v10;
        if ((v13 & 1) == 0)
        {
          *a4 = v12;
          *a5 = v8;
          break;
        }
      }
    }

    OUTLINED_FUNCTION_90_4();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_90_4();

    return FigSignalErrorAtGM(v29);
  }

  return result;
}

double FigTTMLParseNumber()
{
  OUTLINED_FUNCTION_17_37();
  Length = CFStringGetLength(v2);
  v39 = 0;
  HIDWORD(v38) = 0;
  *&v37 = 0.0;
  if (v1 && v0)
  {
    v4 = Length;
    v48 = v1;
    v51 = 0;
    v52 = Length;
    CFStringGetCharactersPtr(v1);
    v5 = OUTLINED_FUNCTION_14_47();
    v49 = v6;
    if (!v6)
    {
      v5 = OUTLINED_FUNCTION_20_31();
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v53 = 0;
    v54 = 0;
    v50 = v5;
    OUTLINED_FUNCTION_15_43();
    v9 = figTTMLParseCharacter(45, v7, 0, v4, v8);
    v10 = v9;
    v18 = OUTLINED_FUNCTION_5_98(v9, v11, v12, v13, v14, v15, v16, v17, v34, v37, v38, v39, 0);
    result = figTTMLParseOneOrMoreDigits(v18, v19, v4, v20, &v38 + 1);
    if (!v21)
    {
      v30 = OUTLINED_FUNCTION_5_98(v21, v22, v23, v24, v25, v26, v27, v28, v35, v37, v38, v39, v40);
      v33 = figTTMLParseFraction(v30, v31, v4, v32, &v37);
      if (v39 == v4)
      {
        LODWORD(v33) = HIDWORD(v38);
        result = *&v37 + *&v33;
        if (!v10)
        {
          result = -result;
        }

        *&result = result;
        *v0 = LODWORD(result);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t FigTTMLParseFontFamilyAndCreateFontFamilyNameList(const __CFString *a1, void *a2)
{
  v127 = 0;
  bzero(buffer, 0xB8uLL);
  Length = CFStringGetLength(a1);
  v118 = 0;
  if (!a1)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< FigTTMLParserUtilities >>>>", 2089, v2);
    goto LABEL_119;
  }

  if (!a2)
  {
    v108 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v108, 4294954516, "<<<< FigTTMLParserUtilities >>>>", 2090, v2);
    goto LABEL_119;
  }

  v6 = Length;
  v7 = *MEMORY[0x1E695E480];
  Mutable = FigCaptionFontFamilyNameListCreateMutable();
  if (Mutable)
  {
LABEL_119:
    v105 = Mutable;
    goto LABEL_112;
  }

  v120 = a1;
  v123 = 0;
  v124 = v6;
  CFStringGetCharactersPtr(a1);
  v9 = OUTLINED_FUNCTION_14_47();
  v121 = v10;
  if (!v10)
  {
    v9 = OUTLINED_FUNCTION_20_31();
  }

  v11 = 0;
  v12 = 0;
  v125 = 0;
  v126 = 0;
  v122 = v9;
  v13 = v118;
  if (v118 >= v6)
  {
LABEL_108:
    v105 = 0;
    *a2 = v127;
    v127 = 0;
    if (v12)
    {
      goto LABEL_109;
    }

    goto LABEL_110;
  }

  v12 = 0;
  v11 = 0;
  v117 = @"monospaceSerif";
  v116 = @"monospaceSansSerif";
  v115 = @"default";
  v114 = @"monospace";
  v113 = @"serif";
  v14 = MEMORY[0x1E69611C0];
  while (1)
  {
    if (v13)
    {
      figCSSParseLWSP(buffer, v13, v6, &v118);
      v15 = figTTMLParseCharacter(44, buffer, v118, v6, &v118);
      if (v15)
      {
        goto LABEL_115;
      }

      figCSSParseLWSP(buffer, v118, v6, &v118);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    *v133 = v118;
    OUTLINED_FUNCTION_12_53();
    v20 = OUTLINED_FUNCTION_21_30(@"proportionalSerif", v16, v17, v18, v19);
    v21 = v14;
    if (v20)
    {
      OUTLINED_FUNCTION_12_53();
      v26 = OUTLINED_FUNCTION_21_30(@"proportionalSansSerif", v22, v23, v24, v25);
      v21 = MEMORY[0x1E69611B8];
      if (v26)
      {
        OUTLINED_FUNCTION_12_53();
        v31 = OUTLINED_FUNCTION_21_30(v117, v27, v28, v29, v30);
        v21 = MEMORY[0x1E69611B0];
        if (v31)
        {
          OUTLINED_FUNCTION_12_53();
          v36 = OUTLINED_FUNCTION_21_30(v116, v32, v33, v34, v35);
          v21 = MEMORY[0x1E69611A8];
          if (v36)
          {
            OUTLINED_FUNCTION_12_53();
            v41 = OUTLINED_FUNCTION_21_30(v115, v37, v38, v39, v40);
            v21 = MEMORY[0x1E6961190];
            if (v41)
            {
              OUTLINED_FUNCTION_12_53();
              v46 = OUTLINED_FUNCTION_21_30(v114, v42, v43, v44, v45);
              v21 = MEMORY[0x1E69611A0];
              if (v46)
              {
                OUTLINED_FUNCTION_12_53();
                v51 = OUTLINED_FUNCTION_21_30(v113, v47, v48, v49, v50);
                v21 = MEMORY[0x1E69611D0];
                if (v51)
                {
                  OUTLINED_FUNCTION_12_53();
                  v56 = OUTLINED_FUNCTION_21_30(@"sansSerif", v52, v53, v54, v55);
                  v21 = MEMORY[0x1E69611C8];
                  if (v56)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

    v11 = *v21;
    v118 = *v133;
    v15 = FigCaptionFontFamilyNameListAppend();
    if (v15)
    {
      goto LABEL_115;
    }

LABEL_15:
    v13 = v118;
    if (v118 >= v6)
    {
      goto LABEL_108;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  *v133 = v118;
  v131 = 0;
  OUTLINED_FUNCTION_12_53();
  v58 = v57;
  if (!figTTMLParseCharacter(34, v59, v57, v6, v60))
  {
    OUTLINED_FUNCTION_12_53();
    if (!figTTMLCopyEscapedCharactersUntil(34, v61, v62, v6, v63, &v131))
    {
      OUTLINED_FUNCTION_12_53();
      if (!figTTMLParseCharacter(34, v64, v65, v6, v66))
      {
        goto LABEL_29;
      }
    }

    if (v131)
    {
      CFRelease(v131);
    }
  }

  *v133 = v58;
  v131 = 0;
  OUTLINED_FUNCTION_12_53();
  if (!figTTMLParseCharacter(39, v68, v69, v6, v70))
  {
    OUTLINED_FUNCTION_12_53();
    if (!figTTMLCopyEscapedCharactersUntil(39, v71, v72, v6, v73, &v131))
    {
      OUTLINED_FUNCTION_12_53();
      if (!figTTMLParseCharacter(39, v74, v75, v6, v76))
      {
LABEL_29:
        v67 = *v133;
        v12 = v131;
        goto LABEL_30;
      }
    }

    if (v131)
    {
      CFRelease(v131);
    }
  }

  v128 = v58;
  v12 = CFStringCreateMutable(v7, 0);
  if (v58 >= v6)
  {
    v67 = v58;
  }

  else
  {
    cf = 0;
    v112 = v58;
    v67 = v58;
    while (1)
    {
      v110 = v58;
      if (v112 != v58)
      {
        if (!figTTMLParseCharacter(44, buffer, v112, v6, 0))
        {
          goto LABEL_100;
        }

        v67 = v112;
        figCSSParseLWSP(buffer, v112, v6, &v128);
        v110 = v128;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v131 = v110;
      cf = CFStringCreateMutable(v7, 0);
      chars = 45;
      v77 = figTTMLParseCharacter(45, buffer, v110, v6, &v131);
      if (!v77)
      {
        CFStringAppendCharacters(cf, &chars, 1);
      }

      *v133 = v131;
      v112 = v131;
      if (v131 >= v6)
      {
        break;
      }

      if ((v131 & 0x8000000000000000) != 0 || v124 <= v131)
      {
        v85 = 0;
      }

      else if (v121)
      {
        OUTLINED_FUNCTION_30_23();
      }

      else if (v122)
      {
        OUTLINED_FUNCTION_31_25();
      }

      else
      {
        if (v126 <= v131 || v125 > v131)
        {
          OUTLINED_FUNCTION_3_62();
          v125 = v88;
          v126 = v87;
          OUTLINED_FUNCTION_18_37();
          CFStringGetCharacters(v89, v134, buffer);
        }

        OUTLINED_FUNCTION_28_26();
      }

      v132 = v85;
      v90 = v85 != 95 && (v85 - 97) >= 0x1Au;
      if (v90 && v85 <= 0xEDu && (v85 - 91) < 0xFFE6u)
      {
        if (!OUTLINED_FUNCTION_25_28(v77, v78, v79, v80, v81, v82, v83, v84, v109, v110, cf, v112, v113, v114, v115, v116, v117, v118))
        {
LABEL_87:
          v85 = v132;
          v91 = *v133;
          goto LABEL_72;
        }

        break;
      }

      do
      {
        v91 = (&v112->isa + 1);
LABEL_72:
        v129 = v85;
        v131 = v91;
        CFStringAppendCharacters(cf, &v129, 1);
        v112 = v131;
        if (v131 >= v6)
        {
          goto LABEL_97;
        }

        *v133 = v131;
        if ((v131 & 0x8000000000000000) != 0 || v124 <= v131)
        {
          v85 = 0;
        }

        else if (v121)
        {
          OUTLINED_FUNCTION_30_23();
        }

        else if (v122)
        {
          OUTLINED_FUNCTION_31_25();
        }

        else
        {
          if (v126 <= v131 || v125 > v131)
          {
            OUTLINED_FUNCTION_3_62();
            v125 = v103;
            v126 = v102;
            OUTLINED_FUNCTION_18_37();
            CFStringGetCharacters(v104, v135, buffer);
          }

          OUTLINED_FUNCTION_28_26();
        }

        v132 = v85;
        v100 = v85 != 95 && ((v85 & 0xFFDF) - 65) >= 0x1Au;
      }

      while (!v100 || v85 > 0xEDu || v85 == 45 || (v85 - 58) >= 0xFFF6u);
      if (!OUTLINED_FUNCTION_25_28(v92, v93, v94, v95, v96, v97, v98, v99, v109, v110, cf, v112, v113, v114, v115, v116, v117, v118))
      {
        goto LABEL_87;
      }

      v112 = v131;
LABEL_97:
      v128 = v112;
      if (v67 != v110)
      {
        v133[0] = 32;
        CFStringAppendCharacters(v12, v133, 1);
      }

      CFStringAppend(v12, cf);
      if (v112 >= v6)
      {
LABEL_100:
        if (cf)
        {
          CFRelease(cf);
        }

        v67 = v112;
        goto LABEL_30;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (!CFStringGetLength(v12))
    {
      v105 = 4294950724;
      goto LABEL_112;
    }
  }

LABEL_30:
  v118 = v67;
  v15 = FigCaptionFontFamilyNameListAppend();
  v11 = 0;
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_115:
  v105 = v15;
  if (!v12)
  {
    goto LABEL_110;
  }

LABEL_109:
  CFRelease(v12);
LABEL_110:
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_112:
  if (v127)
  {
    CFRelease(v127);
  }

  return v105;
}

void FigTTMLParseCellResolution(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_17_37();
  Length = CFStringGetLength(v6);
  v32 = 0;
  v34 = v4;
  v37 = 0;
  v38 = Length;
  CFStringGetCharactersPtr(v4);
  OUTLINED_FUNCTION_14_47();
  v35 = v8;
  if (!v8)
  {
    OUTLINED_FUNCTION_20_31();
  }

  OUTLINED_FUNCTION_6_86();
  v39 = 0;
  v40 = 0;
  v36 = v9;
  v17 = OUTLINED_FUNCTION_16_41(v9, v10, v11, v12, v13, v14, v15, v16, 0, v32, buffer[0]);
  figTTMLParseOneOrMoreDigits(v17, 0, Length, v18, v19);
  if (!v20)
  {
    v21 = figTTMLParseOneOrMoreWhitespaces(buffer, v32, &v32);
    if (!v21)
    {
      OUTLINED_FUNCTION_27_26(v21, v22, v23, v24, v25, v26, v27, v28, v30, v32);
      if (!v29)
      {
        *v3 = HIDWORD(v31);
        *a3 = v31;
      }
    }
  }
}

double FigTTMLParseTextCombineDigits()
{
  OUTLINED_FUNCTION_17_37();
  v23 = 0;
  HIDWORD(v21) = 2;
  Length = CFStringGetLength(v1);
  if (v0)
  {
    v3 = Length;
    OUTLINED_FUNCTION_26_29(Length);
    OUTLINED_FUNCTION_14_47();
    v25 = v4;
    if (!v4)
    {
      OUTLINED_FUNCTION_20_31();
    }

    OUTLINED_FUNCTION_6_86();
    v26 = v5;
    v27 = 0;
    v28 = 0;
    result = figTTMLParseString("digits", buffer, 0, v3, &v23);
    if (!v7)
    {
      if (v23 == v3)
      {
        goto LABEL_8;
      }

      v8 = figTTMLParseOneOrMoreWhitespaces(buffer, v23, &v23);
      if (v8)
      {
        return result;
      }

      if (v23 == v3)
      {
LABEL_8:
        v15 = 2;
LABEL_9:
        *v0 = v15;
        return result;
      }

      v16 = OUTLINED_FUNCTION_16_41(v8, v23, v9, v10, v11, v12, v13, v14, v21, v23, buffer[0]);
      result = figTTMLParseOneOrMoreDigits(v16, v17, v3, v18, v19);
      if (!v20)
      {
        v15 = HIDWORD(v22);
        if (HIDWORD(v22) >= 5)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, *buffer);
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double figTTMLParseTwoOrMoreDigits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v27 = 0;
  v28 = a2;
  if (a4 && a5)
  {
    OUTLINED_FUNCTION_11_55();
    result = figTTMLParseDigits(2u, v6, v8, v5, v9, &v27 + 1);
    if (!v10)
    {
      result = OUTLINED_FUNCTION_8_58(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28);
      if (v19)
      {
LABEL_7:
        OUTLINED_FUNCTION_19_36(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
        *a5 = HIDWORD(v27);
      }

      else
      {
        while (HIDWORD(v27) <= 0x1745D173)
        {
          HIDWORD(v27) = v27 + 10 * HIDWORD(v27);
          result = OUTLINED_FUNCTION_8_58(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
          if (v19)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double figTTMLParseDigits(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int *a6)
{
  if (!a5)
  {
    emitter = fig_log_get_emitter();
    v24 = v6;
    v25 = 686;
LABEL_26:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< FigTTMLParserUtilities >>>>", v25, v24);
  }

  if (!a6)
  {
    emitter = fig_log_get_emitter();
    v24 = v6;
    v25 = 687;
    goto LABEL_26;
  }

  if (a4 - a3 >= a1)
  {
    if (a1)
    {
      v12 = 0;
      v13 = 0;
      v14 = a3;
      while ((a3 & 0x8000000000000000) == 0 && *(a2 + 160) > v14)
      {
        v15 = *(a2 + 136);
        if (v15)
        {
          v16 = *(v15 + 2 * *(a2 + 152) + 2 * v14);
        }

        else
        {
          v17 = *(a2 + 144);
          if (v17)
          {
            v16 = *(v17 + *(a2 + 152) + v14);
          }

          else
          {
            if (*(a2 + 176) <= v14 || (v18 = *(a2 + 168), v18 > v14))
            {
              OUTLINED_FUNCTION_3_62();
              *(a2 + 168) = v20;
              *(a2 + 176) = v19;
              OUTLINED_FUNCTION_18_37();
              CFStringGetCharacters(v21, v27, a2);
              v18 = *(a2 + 168);
            }

            v16 = *(a2 + 2 * (v14 - v18));
          }
        }

        if ((v16 - 58) < 0xFFF6u || v13 > 0x1745D173)
        {
          break;
        }

        v13 = v16 + 10 * v13 - 48;
        ++v14;
        if (++v12 == a1)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v13 = 0;
      v14 = a3;
LABEL_22:
      *a5 = v14;
      *a6 = v13;
    }
  }

  return result;
}

uint64_t figTTMLParseCFString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_6_35();
  BytesFromCFString = FigCreateBytesFromCFString();
  figTTMLParseString(BytesFromCFString, a2, a3, a4, a5);
  v12 = v11;
  CFAllocatorDeallocate(v9, BytesFromCFString);
  return v12;
}

uint64_t figTTMLParseEscape(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _WORD *a5)
{
  v19 = a2;
  result = figTTMLParseCharacter(92, a1, a2, a3, &v19);
  if (!result)
  {
    v10 = v19;
    if (v19 >= a3)
    {
      return 4294950724;
    }

    else
    {
      if (v19 < 0 || *(a1 + 160) <= v19)
      {
        v12 = 0;
      }

      else
      {
        v11 = *(a1 + 136);
        if (v11)
        {
          v12 = *(v11 + 2 * *(a1 + 152) + 2 * v19);
        }

        else
        {
          v13 = *(a1 + 144);
          if (v13)
          {
            v12 = *(v13 + *(a1 + 152) + v19);
          }

          else
          {
            if (*(a1 + 176) <= v19 || (v14 = *(a1 + 168), v15 = v19, v14 > v19))
            {
              OUTLINED_FUNCTION_3_62();
              *(a1 + 168) = v17;
              *(a1 + 176) = v16;
              OUTLINED_FUNCTION_18_37();
              CFStringGetCharacters(v18, v20, a1);
              v14 = *(a1 + 168);
              v15 = v19;
            }

            v12 = *(a1 + 2 * (v10 - v14));
            v10 = v15;
          }
        }
      }

      result = 0;
      *a5 = v12;
      *a4 = v10 + 1;
    }
  }

  return result;
}

void FigTTMLInitializeNodeBaseStorage_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void FigTTMLCopyNamespaceAndLocalNameOfCurrentNode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLMoveCurrentNodeTo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLMoveCurrentNodeTo_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLAddCurrentElementAttributesToDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLAddCurrentElementAttributesToDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLAddAttributeToCFDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLAddAttributeToCFDictionary_cold_2(uint64_t a1, __CFDictionary *a2, _DWORD *a3)
{
  v6 = off_1ED4CB598(a1);
  off_1ED4CB570(a1);
  off_1ED4CB5B8(a1);
  v7 = figTTMLCreateNamespaceAndName(v6);
  OUTLINED_FUNCTION_6_35();
  v11 = CFStringCreateWithCString(v8, v9, v10);
  CFDictionaryAddValue(a2, v7, v11);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  *a3 = 0;
}

void FigTTMLAddAttributeToCFDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLSkipNode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTimeExpression_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTimeExpression_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTimeExpression_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTimeExpression_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figTTMLParseOneOrMoreWhitespaces_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figTTMLParseOneOrMoreWhitespaces_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigTTMLParseLength_cold_1(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  figTTMLParseString("rw", a2, *a1, a3, a1);
  if (!v5)
  {
    return 1;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, vars0);
  v7 = v6;
  result = 0;
  *a4 = v7;
  return result;
}

void FigTTMLParseLength_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseLength_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseLength_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_4(char a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a2 = v4;
  return a1 & 1;
}

void FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePixelResolution_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePixelResolution_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePixelResolution_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePixelResolution_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigTTMLParsePixelResolution_cold_5(char a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a2 = v4;
  return a1 & 1;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_29_25(v0);
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t ffw_ttml_Flush()
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCaptionTimelineGeneratorFinish(*(DerivedStorage + 152));
  if (!result)
  {
    result = FigTTMLCaptionWriterFinish(*DerivedStorage);
    if (!result)
    {
      *(DerivedStorage + 164) = 1;
    }
  }

  return result;
}

void FigTTMLFormatWriterCreateWithByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLFormatWriterCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLFormatWriterCreateWithByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_CopyProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void ffw_ttml_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_AddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_AddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_AddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_CopyTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_CopyTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_SetTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_SetTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_SetTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_SetTrackProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_SetTrackProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_AddSampleBufferToTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_AddSampleBufferToTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_AddSampleBufferToTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_ttml_AddSampleBufferToTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t remoteXPCMutableComposition_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    goto LABEL_7;
  }

  v2 = DerivedStorage;
  *(DerivedStorage + 8) = 1;
  FigXPCRemoteClientDisassociateObject();
  if (!*(v2 + 9))
  {
    v3 = FigXPCCreateBasicMessage();
    if (v3 || (v3 = FigXPCRemoteClientSendSyncMessage(), v3))
    {
      v5 = v3;
      goto LABEL_8;
    }
  }

  *v2 = 0;
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_7:
    v5 = 0;
  }

  else
  {
    CFRelease(v4);
    v5 = 0;
    *(v2 + 16) = 0;
  }

LABEL_8:
  FigXPCRelease();
  return v5;
}

uint64_t remoteXPCMutableComposition_CopyProperty(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  remoteXPCMutableComposition_GetObjectID(a1, &v5);
  if (!v2)
  {
    OUTLINED_FUNCTION_21_31();
    v2 = FigXPCSendStdCopyPropertyMessage();
  }

  v3 = v2;
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t remoteXPCMutableComposition_SetProperty(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  remoteXPCMutableComposition_GetObjectID(a1, &v5);
  if (!v2)
  {
    OUTLINED_FUNCTION_21_31();
    v2 = FigXPCSendStdSetPropertyMessage();
  }

  v3 = v2;
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t remoteXPCMutableComposition_CreateMutableCopy(uint64_t a1, uint64_t a2, const char **a3)
{
  xdict = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  if (a3)
  {
    remoteXPCMutableComposition_GetObjectID(a2, &v13);
    if (v5)
    {
      v9 = v5;
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }

    Object = remoteXPCMutableComposition_CreateObject(a1, &v12);
    if (!Object)
    {
      OUTLINED_FUNCTION_12_20();
      Object = FigXPCCreateBasicMessage();
      if (!Object)
      {
        Object = OUTLINED_FUNCTION_6_78(gMutableCompositionRemoteClient);
        if (!Object)
        {
          uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
          v8 = v12;
          v9 = remoteXPCMutableComposition_CompleteObjectSetup(v12, uint64);
          if (v9)
          {
            goto LABEL_9;
          }

          *a3 = v8;
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, xdict);
  }

  v9 = Object;
  v8 = v12;
LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  if (v8)
  {
    CFRelease(v8);
  }

  OUTLINED_FUNCTION_30_10(gMutableCompositionRemoteClient, v10, "remoteXPCMutableComposition_CreateMutableCopy");
  return v9;
}

void remoteXPCMutableComposition_GetTrackCompatibleWithAssetTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value, uint64_t a10, xpc_object_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v24;
  a11 = 0;
  xdict = 0;
  a10 = 0;
  if (v25 && (v26 = v23) != 0)
  {
    v27 = v22;
    remoteXPCMutableComposition_GetObjectID(v21, &a10);
    if (!v28)
    {
      CMBaseObjectGetDerivedStorage();
      FigSandboxRegisterURLWithProcessAndCopyRegistration();
      OUTLINED_FUNCTION_12_20();
      if (!FigXPCCreateBasicMessage())
      {
        xpc_dictionary_set_int64(xdict, "AssetTrackID", v27);
        if (!FigXPCMessageSetCFURL() && !OUTLINED_FUNCTION_6_78(gMutableCompositionRemoteClient))
        {
          *v26 = xpc_dictionary_get_int64(a11, "TrackID");
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(gMutableCompositionRemoteClient, v29, "remoteXPCMutableComposition_GetTrackCompatibleWithAssetTrack");
  OUTLINED_FUNCTION_860();
}

void remoteXPCMutableComposition_AddTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  a11 = 0;
  xdict = 0;
  a10 = 0;
  remoteXPCMutableComposition_GetObjectID(v30, &a10);
  if (!v31)
  {
    OUTLINED_FUNCTION_12_20();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(xdict, "MediaType", v29);
      xpc_dictionary_set_int64(xdict, "TrackID", v25);
      if (!v27 || !FigXPCMessageSetCFDictionary())
      {
        v32 = OUTLINED_FUNCTION_6_78(gMutableCompositionRemoteClient);
        if (v23 && !v32)
        {
          *v23 = xpc_dictionary_get_int64(a11, "TrackID");
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(gMutableCompositionRemoteClient, v33, "remoteXPCMutableComposition_AddTrack");
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCMutableComposition_DeleteTrack(uint64_t a1, int a2)
{
  v7 = 0;
  xdict = 0;
  remoteXPCMutableComposition_GetObjectID(a1, &v7);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = FigXPCCreateBasicMessage();
    if (!v4)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10(gMutableCompositionRemoteClient, v5, "remoteXPCMutableComposition_DeleteTrack");
  return v4;
}

uint64_t remoteXPCMutableComposition_SetTrackEditList(uint64_t a1, int a2, size_t a3, uint64_t a4)
{
  v15 = 0;
  xdict = 0;
  theData = 0;
  if ((a3 & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_16:
    v8 = v7;
    goto LABEL_13;
  }

  v5 = a3;
  remoteXPCMutableComposition_GetObjectID(a1, &v15);
  if (v7)
  {
    goto LABEL_16;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_23_39();
  v7 = FigXPCCreateBasicMessage();
  if (v7)
  {
    goto LABEL_16;
  }

  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  xpc_dictionary_set_int64(xdict, "EditCount", v5);
  if (!v5)
  {
    goto LABEL_10;
  }

  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_16;
  }

  v8 = FigRemote_CreateEditArrayData(v5, a4, *MEMORY[0x1E695E480], &theData);
  v9 = theData;
  if (v8)
  {
    goto LABEL_11;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v12 = a4 + 96;
  do
  {
    FigSandboxRegisterURLWithProcessAndCopyRegistration();
    v12 += 108;
    --v5;
  }

  while (v5);
  xpc_dictionary_set_data(xdict, "EditListData", BytePtr, Length);
LABEL_10:
  v8 = FigXPCRemoteClientSendSyncMessage();
  v9 = theData;
LABEL_11:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v8;
}

uint64_t remoteXPCMutableComposition_CopyTrackEditList(const void *a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  xdict = 0;
  v19 = 0;
  v20 = 0;
  remoteXPCMutableComposition_GetObjectID(a1, &v20);
  if (!v10)
  {
    OUTLINED_FUNCTION_12_20();
    v10 = FigXPCCreateBasicMessage();
    if (!v10)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      v10 = OUTLINED_FUNCTION_6_78(gMutableCompositionRemoteClient);
      if (!v10)
      {
        int64 = xpc_dictionary_get_int64(v21, "EditCount");
        data = xpc_dictionary_get_data(v21, "EditListData", &v19);
        if (a3)
        {
          *a3 = int64;
        }

        if (!a5)
        {
          v13 = 0;
          goto LABEL_12;
        }

        if (a4 >= int64)
        {
          v14 = int64;
          v15 = v19;
          v16 = CFGetAllocator(a1);
          FigRemote_CreateEditArrayFromData(data, v15, v16, int64, a5);
          v13 = v17;
          bzero((a5 + 108 * v14), 108 * (a4 - v14));
          goto LABEL_12;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
      }
    }
  }

  v13 = v10;
LABEL_12:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v13;
}

void remoteXPCMutableComposition_AddFormatReaderForURL(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t value, uint64_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v23;
  a11 = 0;
  xdict = 0;
  cf = 0;
  value = 0;
  if (v24 && (v25 = v22) != 0)
  {
    remoteXPCMutableComposition_GetObjectID(v21, &a11);
    if (!v26)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!FigFormatReaderXPCRemoteGetObjectID(v25, &value))
      {
        OUTLINED_FUNCTION_23_39();
        if (!FigXPCCreateBasicMessage())
        {
          xpc_dictionary_set_uint64(xdict, "FormatReader", value);
          OUTLINED_FUNCTION_18_38(v28, v29, v30, &cf);
          if (cf)
          {
            CFSetAddValue(*(DerivedStorage + 16), cf);
          }

          if (!FigXPCMessageSetCFURL())
          {
            FigXPCRemoteClientSendSyncMessage();
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_6_18(gMutableCompositionRemoteClient, v31, "remoteXPCMutableComposition_AddFormatReaderForURL");
  OUTLINED_FUNCTION_860();
}

const __CFArray *remoteXPCMutableComposition_CopyTrackProperty(uint64_t a1, int a2, const void *a3, const __CFAllocator *a4, const __CFArray **a5)
{
  v18[1] = 0;
  xdict = 0;
  cf = 0;
  v18[0] = 0;
  theData = 0;
  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_20;
  }

  if (!a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_20;
  }

  *a5 = 0;
  remoteXPCMutableComposition_GetObjectID(a1, v18);
  if (v9)
  {
    goto LABEL_20;
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
    goto LABEL_20;
  }

  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  v9 = FigXPCMessageSetCFString();
  if (v9)
  {
    goto LABEL_20;
  }

  v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v9)
  {
    goto LABEL_20;
  }

  if (!CFEqual(a3, @"MutableCompositionTrack_FormatDescriptionReplacementTable"))
  {
    if (CFEqual(a3, @"MutableCompositionTrack_Metadata"))
    {
      v9 = FigXPCMessageCopyCFData();
      if (!v9)
      {
        v15 = 0;
        v12 = theData;
        if (theData)
        {
          if (!CFDataGetLength(theData))
          {
            v13 = CFArrayCreate(a4, 0, 0, MEMORY[0x1E695E9C0]);
            goto LABEL_22;
          }

          v12 = theData;
        }

        v9 = FigRemote_CreateMetadataFromBinaryPListData(v12, *MEMORY[0x1E695E480], &v15);
        if (!v9)
        {
          v13 = v15;
LABEL_22:
          UnflattenedFormatDescriptionReplacementTable = 0;
          *a5 = v13;
          goto LABEL_23;
        }
      }
    }

    else
    {
      v9 = FigXPCMessageCopyCFObject();
    }

LABEL_20:
    UnflattenedFormatDescriptionReplacementTable = v9;
    goto LABEL_23;
  }

  UnflattenedFormatDescriptionReplacementTable = FigXPCMessageCopyFormatDescriptionArray();
  v11 = cf;
  if (!UnflattenedFormatDescriptionReplacementTable)
  {
    UnflattenedFormatDescriptionReplacementTable = FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable(cf, a5);
    v11 = cf;
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_23:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return UnflattenedFormatDescriptionReplacementTable;
}

uint64_t remoteXPCMutableComposition_InsertAssetSegmentIntoTrack()
{
  OUTLINED_FUNCTION_22_30();
  if (!v1 || *(v0 + 16) || (OUTLINED_FUNCTION_29(), !v3) || *(v2 + 16) || (OUTLINED_FUNCTION_132(), !v3) || *(v7 + 16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    v8 = v6;
    v9 = v5;
    remoteXPCMutableComposition_GetObjectID(v4, &v41);
    if (!v10)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_14_48();
      v10 = FigXPCCreateBasicMessage();
      if (!v10)
      {
        OUTLINED_FUNCTION_18_38(v10, v12, v13, &value);
        if (value)
        {
          CFSetAddValue(*(DerivedStorage + 16), value);
        }

        xpc_dictionary_set_int64(xdict, "DestTrackID", v9);
        xpc_dictionary_set_int64(xdict, "AssetTrackID", v8);
        OUTLINED_FUNCTION_6_39(xdict, 0x196ECE8C3, v14, v15, v16, v17, v18, v19, v34, v37);
        OUTLINED_FUNCTION_7_74(xdict, 0x196ECE8CFLL, v20, v21, v22, v23, v24, v25, v35, v38);
        OUTLINED_FUNCTION_2_142(xdict, 0x196ECE909, v26, v27, v28, v29, v30, v31, v36, v39);
        v10 = FigXPCMessageSetCFURL();
        if (!v10)
        {
          v10 = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  v32 = v10;
  FigXPCRelease();
  if (value)
  {
    CFRelease(value);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v32;
}

uint64_t remoteXPCMutableComposition_InsertAssetSegment()
{
  OUTLINED_FUNCTION_22_30();
  if (!v1 || *(v0 + 16) || (OUTLINED_FUNCTION_29(), !v3) || *(v2 + 16) || (OUTLINED_FUNCTION_132(), !v3) || *(v5 + 16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    remoteXPCMutableComposition_GetObjectID(v4, &v37);
    if (!v6)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_11_56();
      v6 = FigXPCCreateBasicMessage();
      if (!v6)
      {
        OUTLINED_FUNCTION_18_38(v6, v8, v9, &value);
        if (value)
        {
          CFSetAddValue(*(DerivedStorage + 16), value);
        }

        OUTLINED_FUNCTION_6_39(v38, 0x196ECE8C3, v10, v11, v12, v13, v14, v15, v30, v33);
        OUTLINED_FUNCTION_7_74(v38, 0x196ECE8CFLL, v16, v17, v18, v19, v20, v21, v31, v34);
        OUTLINED_FUNCTION_2_142(v38, 0x196ECE909, v22, v23, v24, v25, v26, v27, v32, v35);
        v6 = FigXPCMessageSetCFURL();
        if (!v6)
        {
          v6 = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  v28 = v6;
  FigXPCRelease();
  if (value)
  {
    CFRelease(value);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v28;
}

uint64_t remoteXPCMutableComposition_InsertEmptyTrackSegment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = 0;
  v55 = 0;
  if (*(a3 + 16) || (OUTLINED_FUNCTION_29(), !v6) || *(v5 + 16) || (OUTLINED_FUNCTION_8_59(), !v6))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  v9 = v8;
  remoteXPCMutableComposition_GetObjectID(v7, &v54);
  if (v10)
  {
LABEL_12:
    v4 = v10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_48();
  v11 = FigXPCCreateBasicMessage();
  v19 = OUTLINED_FUNCTION_16_42(v11, v12, v13, v14, v15, v16, v17, v18, v42, v46, v48, v52, v54, v55);
  if (!v3)
  {
    xpc_dictionary_set_int64(v19, "TrackID", v9);
    OUTLINED_FUNCTION_2_142(v55, 0x196ECE8DELL, v20, v21, v22, v23, v24, v25, v43, v49);
    OUTLINED_FUNCTION_3_118(v55, 0x196ECE8E8, v26, v27, v28, v29, v30, v31, v44, v50);
    v32 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_16_42(v32, v33, v34, v35, v36, v37, v38, v39, v45, v47, v51, v53, v54, v55);
  }

LABEL_10:
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(gMutableCompositionRemoteClient, v40, "remoteXPCMutableComposition_InsertEmptyTrackSegment");
  return v4;
}

uint64_t remoteXPCMutableComposition_InsertEmptySegment(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = 0;
  v51 = 0;
  if (*(a2 + 16) || (OUTLINED_FUNCTION_29(), !v5) || *(v4 + 16) || (OUTLINED_FUNCTION_8_59(), !v5))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  remoteXPCMutableComposition_GetObjectID(v6, &v50);
  if (v7)
  {
LABEL_12:
    v3 = v7;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_56();
  v8 = FigXPCCreateBasicMessage();
  v16 = OUTLINED_FUNCTION_15_44(v8, v9, v10, v11, v12, v13, v14, v15, v38, v42, v44, v48, v50, v51);
  if (!v2)
  {
    OUTLINED_FUNCTION_2_142(v16, 0x196ECE8DELL, v17, v18, v19, v20, v21, v22, v39, v45);
    OUTLINED_FUNCTION_3_118(v51, 0x196ECE8E8, v23, v24, v25, v26, v27, v28, v40, v46);
    v29 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_15_44(v29, v30, v31, v32, v33, v34, v35, v36, v41, v43, v47, v49, v50, v51);
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t remoteXPCMutableComposition_DeleteTrackSegment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = 0;
  v55 = 0;
  if (*(a3 + 16) || (OUTLINED_FUNCTION_29(), !v6) || *(v5 + 16) || (OUTLINED_FUNCTION_8_59(), !v6))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  v9 = v8;
  remoteXPCMutableComposition_GetObjectID(v7, &v54);
  if (v10)
  {
LABEL_12:
    v4 = v10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_48();
  v11 = FigXPCCreateBasicMessage();
  v19 = OUTLINED_FUNCTION_16_42(v11, v12, v13, v14, v15, v16, v17, v18, v42, v46, v48, v52, v54, v55);
  if (!v3)
  {
    xpc_dictionary_set_int64(v19, "TrackID", v9);
    OUTLINED_FUNCTION_2_142(v55, 0x196ECE8DELL, v20, v21, v22, v23, v24, v25, v43, v49);
    OUTLINED_FUNCTION_3_118(v55, 0x196ECE8E8, v26, v27, v28, v29, v30, v31, v44, v50);
    v32 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_16_42(v32, v33, v34, v35, v36, v37, v38, v39, v45, v47, v51, v53, v54, v55);
  }

LABEL_10:
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(gMutableCompositionRemoteClient, v40, "remoteXPCMutableComposition_DeleteTrackSegment");
  return v4;
}

uint64_t remoteXPCMutableComposition_DeleteSegment(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = 0;
  v51 = 0;
  if (*(a2 + 16) || (OUTLINED_FUNCTION_29(), !v5) || *(v4 + 16) || (OUTLINED_FUNCTION_8_59(), !v5))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  remoteXPCMutableComposition_GetObjectID(v6, &v50);
  if (v7)
  {
LABEL_12:
    v3 = v7;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_56();
  v8 = FigXPCCreateBasicMessage();
  v16 = OUTLINED_FUNCTION_15_44(v8, v9, v10, v11, v12, v13, v14, v15, v38, v42, v44, v48, v50, v51);
  if (!v2)
  {
    OUTLINED_FUNCTION_2_142(v16, 0x196ECE8DELL, v17, v18, v19, v20, v21, v22, v39, v45);
    OUTLINED_FUNCTION_3_118(v51, 0x196ECE8E8, v23, v24, v25, v26, v27, v28, v40, v46);
    v29 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_15_44(v29, v30, v31, v32, v33, v34, v35, v36, v41, v43, v47, v49, v50, v51);
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t remoteXPCMutableComposition_ScaleTrackSegment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = 0;
  v64 = 0;
  if (*(a3 + 16) || (OUTLINED_FUNCTION_29(), !v6) || *(v5 + 16) || (OUTLINED_FUNCTION_132(), !v6) || *(v7 + 16) || (OUTLINED_FUNCTION_8_59(), !v6))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_15;
  }

  v10 = v9;
  remoteXPCMutableComposition_GetObjectID(v8, &v63);
  if (v11)
  {
LABEL_15:
    v4 = v11;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_14_48();
  v12 = FigXPCCreateBasicMessage();
  v20 = OUTLINED_FUNCTION_16_42(v12, v13, v14, v15, v16, v17, v18, v19, v49, v54, v56, v61, v63, v64);
  if (!v3)
  {
    xpc_dictionary_set_int64(v20, "TrackID", v10);
    OUTLINED_FUNCTION_7_74(v64, 0x196ECE8DELL, v21, v22, v23, v24, v25, v26, v50, v57);
    OUTLINED_FUNCTION_2_142(v64, 0x196ECE8F1, v27, v28, v29, v30, v31, v32, v51, v58);
    OUTLINED_FUNCTION_3_118(v64, 0x196ECE8FDLL, v33, v34, v35, v36, v37, v38, v52, v59);
    v39 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_16_42(v39, v40, v41, v42, v43, v44, v45, v46, v53, v55, v60, v62, v63, v64);
  }

LABEL_13:
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(gMutableCompositionRemoteClient, v47, "remoteXPCMutableComposition_ScaleTrackSegment");
  return v4;
}

uint64_t remoteXPCMutableComposition_ScaleSegment(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59 = 0;
  v60 = 0;
  if (*(a2 + 16) || (OUTLINED_FUNCTION_29(), !v5) || *(v4 + 16) || (OUTLINED_FUNCTION_132(), !v5) || *(v6 + 16) || (OUTLINED_FUNCTION_8_59(), !v5))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_15;
  }

  remoteXPCMutableComposition_GetObjectID(v7, &v59);
  if (v8)
  {
LABEL_15:
    v3 = v8;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_11_56();
  v9 = FigXPCCreateBasicMessage();
  v17 = OUTLINED_FUNCTION_15_44(v9, v10, v11, v12, v13, v14, v15, v16, v45, v50, v52, v57, v59, v60);
  if (!v2)
  {
    OUTLINED_FUNCTION_6_39(v17, 0x196ECE8DELL, v18, v19, v20, v21, v22, v23, v46, v53);
    OUTLINED_FUNCTION_2_142(v60, 0x196ECE8F1, v24, v25, v26, v27, v28, v29, v47, v54);
    OUTLINED_FUNCTION_3_118(v60, 0x196ECE8FDLL, v30, v31, v32, v33, v34, v35, v48, v55);
    v36 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_15_44(v36, v37, v38, v39, v40, v41, v42, v43, v49, v51, v56, v58, v59, v60);
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t remoteXPCMutableComposition_DeferTracksChangedNotifications(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  remoteXPCMutableComposition_GetObjectID(a1, v6);
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10(gMutableCompositionRemoteClient, v4, "remoteXPCMutableComposition_DeferTracksChangedNotifications");
  return v3;
}

uint64_t remoteXPCMutableComposition_PostDeferredTracksChangedNotification(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  remoteXPCMutableComposition_GetObjectID(a1, v6);
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10(gMutableCompositionRemoteClient, v4, "remoteXPCMutableComposition_PostDeferredTracksChangedNotification");
  return v3;
}

void remoteXPCMutableComposition_AddAssetForURL(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t value, uint64_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v23;
  a11 = 0;
  xdict = 0;
  cf = 0;
  value = 0;
  if (v24 && (v25 = v22) != 0)
  {
    remoteXPCMutableComposition_GetObjectID(v21, &a11);
    if (!v26)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!FigAssetXPCRemoteGetObjectID(v25, &value))
      {
        OUTLINED_FUNCTION_23_39();
        if (!FigXPCCreateBasicMessage())
        {
          xpc_dictionary_set_uint64(xdict, "Asset", value);
          OUTLINED_FUNCTION_18_38(v28, v29, v30, &cf);
          if (cf)
          {
            CFSetAddValue(*(DerivedStorage + 16), cf);
          }

          if (!FigXPCMessageSetCFURL())
          {
            FigXPCRemoteClientSendSyncMessage();
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_6_18(gMutableCompositionRemoteClient, v31, "remoteXPCMutableComposition_AddAssetForURL");
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCMutableComposition_InsertMutableCompositionSegmentIntoTrack()
{
  OUTLINED_FUNCTION_22_30();
  if (!v1 || *(v0 + 16) || (OUTLINED_FUNCTION_29(), !v3) || *(v2 + 16) || (OUTLINED_FUNCTION_132(), !v3) || *(v8 + 16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_19;
  }

  v9 = v7;
  v10 = v6;
  v11 = v5;
  remoteXPCMutableComposition_GetObjectID(v4, &v42);
  if (v12)
  {
    goto LABEL_19;
  }

  TypeID = FigMutableCompositionGetTypeID();
  if (TypeID != CFGetTypeID(v10) || CMBaseObjectGetVTable() != &kFigMutableCompositionRemoteXPC_MutableCompositionVTable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_19;
  }

  remoteXPCMutableComposition_GetObjectID(v10, &v41);
  if (v12)
  {
LABEL_19:
    v14 = v12;
    goto LABEL_15;
  }

  v14 = FigXPCCreateBasicMessage();
  if (!v14)
  {
    xpc_dictionary_set_int64(xdict, "AssetTrackID", v9);
    xpc_dictionary_set_uint64(xdict, "SourceCompositionID", v41);
    xpc_dictionary_set_int64(xdict, "DestTrackID", v11);
    OUTLINED_FUNCTION_7_74(xdict, 0x196ECE8C3, v15, v16, v17, v18, v19, v20, v34, v37);
    OUTLINED_FUNCTION_2_142(xdict, 0x196ECE8CFLL, v21, v22, v23, v24, v25, v26, v35, v38);
    OUTLINED_FUNCTION_3_118(xdict, 0x196ECE909, v27, v28, v29, v30, v31, v32, v36, v39);
    v14 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_15:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v14;
}

uint64_t remoteXPCMutableComposition_InsertMutableCompositionSegment()
{
  OUTLINED_FUNCTION_22_30();
  if (!v1 || *(v0 + 16) || (OUTLINED_FUNCTION_29(), !v3) || *(v2 + 16) || (OUTLINED_FUNCTION_132(), !v3) || *(v6 + 16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_19;
  }

  v7 = v5;
  remoteXPCMutableComposition_GetObjectID(v4, &v38);
  if (v8)
  {
    goto LABEL_19;
  }

  TypeID = FigMutableCompositionGetTypeID();
  if (TypeID != CFGetTypeID(v7) || CMBaseObjectGetVTable() != &kFigMutableCompositionRemoteXPC_MutableCompositionVTable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_19;
  }

  remoteXPCMutableComposition_GetObjectID(v7, &value);
  if (v8)
  {
LABEL_19:
    v10 = v8;
    goto LABEL_15;
  }

  v10 = FigXPCCreateBasicMessage();
  if (!v10)
  {
    xpc_dictionary_set_uint64(xdict, "SourceCompositionID", value);
    OUTLINED_FUNCTION_6_39(xdict, 0x196ECE8C3, v11, v12, v13, v14, v15, v16, v30, v33);
    OUTLINED_FUNCTION_7_74(xdict, 0x196ECE8CFLL, v17, v18, v19, v20, v21, v22, v31, v34);
    OUTLINED_FUNCTION_3_118(xdict, 0x196ECE909, v23, v24, v25, v26, v27, v28, v32, v35);
    v10 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_15:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v10;
}

void remoteXPCMutableComposition_GetTrackCompatibleWithMutableCompositionTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v25;
  a11 = 0;
  a12 = 0;
  if (!v22)
  {
    goto LABEL_10;
  }

  v26 = v24;
  v27 = v23;
  v28 = v22;
  remoteXPCMutableComposition_GetObjectID(v21, &a12);
  if (v29)
  {
    goto LABEL_9;
  }

  TypeID = FigMutableCompositionGetTypeID();
  if (TypeID != CFGetTypeID(v28) || CMBaseObjectGetVTable() != &kFigMutableCompositionRemoteXPC_MutableCompositionVTable)
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_9;
  }

  remoteXPCMutableComposition_GetObjectID(v28, &a11);
  if (!v31 && !FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_int64(0, "AssetTrackID", v27);
    xpc_dictionary_set_uint64(0, "SourceCompositionID", a11);
    if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      *v26 = xpc_dictionary_get_int64(0, "TrackID");
    }
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(gMutableCompositionRemoteClient, v32, "remoteXPCMutableComposition_GetTrackCompatibleWithMutableCompositionTrack");
  OUTLINED_FUNCTION_860();
}

void remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void IFFItemHeaderMakerRelease(const __CFAllocator **ptr)
{
  if (ptr)
  {
    v3 = *ptr;
    v2 = ptr[1];
    if (v2)
    {
      CFRelease(v2);
    }

    CFAllocatorDeallocate(v3, ptr);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t appendItemPropertyColorInformationAtom(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v10 = 0;
  appended = FigAtomWriterInitWithParent();
  if (appended)
  {
    goto LABEL_11;
  }

  appended = FigAtomWriterBeginAtom();
  if (appended)
  {
    goto LABEL_11;
  }

  v10 = bswap32(a2);
  appended = FigAtomWriterAppendData();
  if (appended)
  {
    goto LABEL_11;
  }

  if (a2 == 1852009592)
  {
    *(&v9 + 3) = 0;
    LODWORD(v9) = 0;
    appended = IFFInformationGetItemPropertyIndexedColor(a1, &v9, &v9 + 1, &v9 + 2, &v9 + 6);
    if (!appended)
    {
      LOWORD(v9) = bswap32(v9) >> 16;
      WORD1(v9) = bswap32(WORD1(v9)) >> 16;
      WORD2(v9) = bswap32(WORD2(v9)) >> 16;
LABEL_10:
      appended = FigAtomWriterAppendData();
    }
  }

  else
  {
    if (a2 != 1886547814)
    {
      v6 = 0;
      goto LABEL_13;
    }

    v8 = 0;
    v9 = 0;
    appended = IFFInformationGetItemPropertyICCProfileData(a1, &v9, &v8);
    if (!appended)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v6 = appended;
LABEL_13:
  FigAtomWriterEndAtom();
  return v6;
}

uint64_t _appendUUIDItemPropertyHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  if (a3)
  {
    CFUUIDBytesForItemPropertyType = FigAtomWriterInitWithParent();
    if (!CFUUIDBytesForItemPropertyType)
    {
      v7 = 0uLL;
      CFUUIDBytesForItemPropertyType = IFFInformationGetCFUUIDBytesForItemPropertyType(*(a1 + 8), &v7);
      if (!CFUUIDBytesForItemPropertyType)
      {
        CFUUIDBytesForItemPropertyType = FigAtomWriterBeginUUIDAtom();
        if (!CFUUIDBytesForItemPropertyType)
        {
          CFUUIDBytesForItemPropertyType = FigAtomWriterAppendData();
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, DWORD2(v7), v8);
  }

  v5 = CFUUIDBytesForItemPropertyType;
  FigAtomWriterEndAtom();
  return v5;
}

void IFFItemHeaderMakerCreateWithIFFItemInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void IFFItemHeaderMakerCreateWithIFFItemInformation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void IFFItemHeaderMakerCreateWithIFFItemInformation_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void IFFItemHeaderMakerSetByteCountToAddToItemLocationExtentOffsets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL appendGlobalMetadataAtom_cold_10(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  v6 = v5;
  *a4 = v5;
  FigAtomWriterEndAtom();
  return v6 == 0;
}

void appendGlobalMetadataAtom_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void appendGlobalMetadataAtom_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateForMakingDataReady_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sbufmakeready_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sbufmakeready_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigAssetImageGeneratorCreateFromAssetWithOptions(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  HIBYTE(v19) = 0;
  if (!a2)
  {
    return 4294954863;
  }

  FigAssetImageGeneratorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = 0;
    v9 = CFRetain(a2);
    *(DerivedStorage + 8) = 0;
    *(DerivedStorage + 16) = 0;
    *(DerivedStorage + 24) = v9;
    *(DerivedStorage + 32) = 0;
    *(DerivedStorage + 40) = 0;
    *(DerivedStorage + 48) = 0;
    v10 = FigSimpleMutexCreate();
    *(DerivedStorage + 56) = v10;
    if (v10)
    {
      *(DerivedStorage + 64) = 0;
      *(DerivedStorage + 72) = DerivedStorage + 64;
      v11 = FigSemaphoreCreate();
      *(DerivedStorage + 80) = v11;
      if (v11)
      {
        *(DerivedStorage + 105) = 0;
        *(DerivedStorage + 88) = 0;
        *(DerivedStorage + 96) = 0;
        BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
        v13 = 2;
        if (!BooleanIfPresent)
        {
          v13 = 0;
        }

        *(DerivedStorage + 108) = v13;
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        MEMORY[0x19A8D3660](&sAIGCreateNotificationQueueOnce, aig_createNotificationQueueOnce);
        if (sAIGNotificationQueue)
        {
          FigCFWeakReferenceStore();
          FigAssetGetCMBaseObject();
          v15 = v14;
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v16)
          {
            v16(v15, @"assetProperty_CreationURL", a1, DerivedStorage + 8);
          }

          v17 = 0;
          *a4 = 0;
          return v17;
        }
      }
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0, v21);
  }

  v17 = v7;
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

void aig_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a3)
  {
    if (*DerivedStorage)
    {
      emitter = fig_log_get_emitter();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FigAssetImageGenerator >>>>", 1683, v3);
    }

    else if (CFEqual(a2, @"ClientPID"))
    {
      v8 = *(DerivedStorage + 120);
      *(DerivedStorage + 120) = a3;
      CFRetain(a3);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else if (CFEqual(a2, @"AllowAlternateDecoderSelection"))
    {
      *(DerivedStorage + 128) = *MEMORY[0x1E695E4D0] == a3;
    }
  }
}

void aig_RequestCGImageAtTimeAsync(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FigAssetImageGenerator >>>>", 1809, v4);
  }

  else
  {
    v10 = DerivedStorage;
    v11 = *(DerivedStorage + 100) + 1;
    *(DerivedStorage + 100) = v11;
    v16 = *a2;
    v17 = *(a2 + 16);
    if (!FAIGCommon_createImageRequest(&v16, a3, a4, v11, &v18))
    {
      FigSimpleMutexLock();
      *v18 = 0;
      v12 = v18;
      **(v10 + 72) = v18;
      *(v10 + 72) = v12;
      if (*(v10 + 96))
      {
        FigSimpleMutexUnlock();
      }

      else
      {
        v13 = *(v10 + 88);
        *(v10 + 96) = 1;
        if (v13)
        {
          *(v10 + 88) = 0;
          FigSimpleMutexUnlock();
          FigThreadJoin();
        }

        else
        {
          FigSimpleMutexUnlock();
        }

        *&v16 = @"com.apple.coremedia.player.processimagerequest";
        v14 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &v16, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigSimpleMutexLock();
        v15 = FigThreadCreate();
        FigSimpleMutexUnlock();
        if (v14)
        {
          CFRelease(v14);
        }

        if (v15)
        {
          *(v10 + 96) = 0;
        }
      }
    }
  }
}

uint64_t aig_createImageAtTimeInternal(void *a1, const void *a2, _DWORD *a3, uint64_t a4, void *a5, uint64_t a6)
{
  values = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v220 = *MEMORY[0x1E6960C70];
  *&v233.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v233.epoch = v11;
  v232 = **&MEMORY[0x1E6960C88];
  v231 = v232;
  v229 = 0;
  *v230 = 0;
  v227 = 0;
  v228 = 0;
  v226 = 1;
  keys = @"AIGRequestedNotificationWhenConsumed";
  v234 = 2000000000;
  if (!*a1)
  {
    v26 = CMBaseObjectGetDerivedStorage();
    v27 = CMBaseObjectGetDerivedStorage();
    time1.value = 0;
    lhs.value = 0;
    rhs.value = 0;
    v223.value = 0;
    if (*v27)
    {
      v28 = 4294954511;
      goto LABEL_126;
    }

    if (*(v27 + 1))
    {
      v28 = 0;
    }

    else
    {
      v50 = *(v27 + 24);
      if (v50 && (v51 = CFRetain(v50)) != 0)
      {
        v52 = v51;
        CFGetAllocator(a2);
        FigAssetGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v53 = OUTLINED_FUNCTION_3_119();
          v55 = v54(v53);
          if (!v55)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_92();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }

          v28 = v55;
        }

        else
        {
          v28 = 4294954514;
        }

        CFRelease(v52);
      }

      else
      {
        v28 = 4294954863;
      }
    }

    if (v28)
    {
      goto LABEL_126;
    }

    v44 = *(v26 + 48);
    if (v44 && (v45 = *(v26 + 16)) != 0)
    {
      v46 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v46)
      {
        goto LABEL_125;
      }

      v47 = v46(v45, v44, a1, 0);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v28 = v47;
    if (v47)
    {
      goto LABEL_126;
    }
  }

  if ((*(a4 + 24) & 0x1D) != 1)
  {
    v28 = 4294954863;
    goto LABEL_126;
  }

  v12 = *(a4 + 40);
  if (v12)
  {
    Value = CFDictionaryGetValue(v12, @"TimeFlags");
    if (Value)
    {
      v14 = Value;
      v15 = CFGetTypeID(Value);
      if (v15 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
      }
    }

    v16 = CFDictionaryGetValue(*(a4 + 40), @"TimeoutInterval");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v17, kCFNumberSInt64Type, &v234);
      }
    }

    v19 = CFDictionaryGetValue(*(a4 + 40), @"TimeToleranceBefore");
    if (v19)
    {
      v20 = v19;
      v21 = CFGetTypeID(v19);
      if (v21 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v232, v20);
      }
    }

    v22 = CFDictionaryGetValue(*(a4 + 40), @"TimeToleranceAfter");
    if (v22)
    {
      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v231, v23);
      }
    }
  }

  if ((valuePtr - 2) > 3)
  {
    v25 = 257;
  }

  else
  {
    v25 = dword_196E78C80[valuePtr - 2];
  }

  v29 = *values;
  lhs = *(a4 + 12);
  rhs = v232;
  CMTimeSubtract(&time1, &lhs, &rhs);
  OUTLINED_FUNCTION_4_114();
  v223 = v231;
  CMTimeAdd(&lhs, &rhs, &v223);
  OUTLINED_FUNCTION_4_114();
  Basic = FigPlaybackBossSnapTimeToIFrameWithRange(v29, 0, &rhs, v25, &time1, &lhs, &v233);
  if (Basic)
  {
    goto LABEL_226;
  }

  if ((v233.flags & 0x1D) != 1)
  {
    v28 = 4294954865;
    goto LABEL_126;
  }

  time1 = *(values + 56);
  lhs = v233;
  v31 = CMTimeCompare(&time1, &lhs);
  v32 = values;
  if (v31)
  {
    if (*(values + 2))
    {
LABEL_101:
      if (*(v32 + 20) && *(v32 + 21) && *(v32 + 6))
      {
        goto LABEL_111;
      }

      v73 = *(a4 + 48);
      v74 = CMBaseObjectGetDerivedStorage();
      v75 = *v32;
      v76 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v76)
      {
        Basic = v76(v75, v32 + 160);
        if (Basic)
        {
          goto LABEL_226;
        }

        FigSampleGeneratorCreateForFormatReaderUsingByteStreams(v73, *(v74 + 16), *v32, *(v74 + 32), 0, 2, v32 + 21);
        if (Basic)
        {
          goto LABEL_226;
        }

        Basic = FigVisualContextCreateBasic(v73, 0, v32 + 6);
        if (Basic)
        {
          goto LABEL_226;
        }

        *(v32 + 11) = *(v74 + 80);
        v77 = v32 + 88;
        v78 = *(v77 - 5);
        v79 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v79)
        {
          Basic = v79(v78, FAIGCommon_decodedImageBecameAvailable, v77);
          if (Basic)
          {
            goto LABEL_226;
          }

          v32 = values;
LABEL_111:
          Basic = FAIGCommon_getOutputImagePropertiesForImageRetrieval(*(v32 + 2), *(a4 + 40), v32[36], v230, &v227);
          if (Basic)
          {
            goto LABEL_226;
          }

          FAIGCommon_checkAndUpdateOutputImagePropertiesForImageRetrieval(a3, *v230, values + 18, v227, &v226);
          if (v227)
          {
            CFRelease(v227);
            v227 = 0;
          }

          v80 = values;
          if (*(values + 26) && !v226)
          {
            goto LABEL_184;
          }

          v205 = values + 208;
          v212 = *(a4 + 48);
          v210 = *(a4 + 40);
          v82 = v230[0];
          v81 = v230[1];
          LODWORD(rhs.value) = 0;
          LODWORD(v223.value) = 0;
          v83 = CMBaseObjectGetDerivedStorage();
          v84 = *MEMORY[0x1E695E480];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          aig_cleanupVideoRenderPipelineAndMentorsForImageRetrieval(v80);
          allocator = v84;
          v86 = CFArrayCreate(v84, v80 + 2, 1, MEMORY[0x1E695E9C0]);
          v211 = v86;
          if (!v86)
          {
LABEL_229:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_92();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_159;
          }

          if (FigExportSettings_GetMaximumBitsPerComponent(v86) <= 8)
          {
            v87 = 1111970369;
          }

          else
          {
            v87 = 1380411457;
          }

          LODWORD(rhs.value) = v87;
          v88 = *(v83 + 104) == 0;
          if (*(v83 + 128))
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E69841E0], *MEMORY[0x1E695E4D0]);
          }

          v89 = *(v83 + 108);
          if (v89 == 1)
          {
            v90 = MEMORY[0x1E695E4D0];
          }

          else
          {
            if (v89 != 2)
            {
              goto LABEL_133;
            }

            v90 = MEMORY[0x1E695E4C0];
          }

          CFDictionarySetValue(Mutable, *MEMORY[0x1E6984200], *v90);
LABEL_133:
          if (*(v83 + 105))
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E69841F0], *MEMORY[0x1E695E4D0]);
          }

          if (*(v83 + 106))
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6984218], *MEMORY[0x1E695E4D0]);
          }

          DestinationPixelBufferAttributes = FPSupport_CreateDestinationPixelBufferAttributes(v82, v81, &rhs, 1u, 0, v88, 0, 0, 0, v80 + 5);
          if (DestinationPixelBufferAttributes)
          {
            goto LABEL_159;
          }

          v93 = *(v80 + 2);
          CMTimeMake(&time1, 1, 30);
          CMTimeMake(&lhs, 1, 30);
          v94 = v212;
          DestinationPixelBufferAttributes = FAIGCommon_createRenderPipelineOptions(v212, v93, 0, &time1, &lhs, v80 + 17);
          if (DestinationPixelBufferAttributes)
          {
            goto LABEL_159;
          }

          cfa = v80 + 152;
          DestinationPixelBufferAttributes = FigVideoRenderPipelineCreateWithVisualContext(v212, Mutable, *(v80 + 5), *(v80 + 18), 1, *(v80 + 6), 0, *(v80 + 17), (v80 + 152));
          if (DestinationPixelBufferAttributes)
          {
            goto LABEL_159;
          }

          v95 = *(v80 + 2);
          if (v95)
          {
            CMFormatDescriptionGetExtensions(v95);
            Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
            if (Int32IfPresent)
            {
              if (SLODWORD(v223.value) >= 2)
              {
                OUTLINED_FUNCTION_1_151(Int32IfPresent, v97, v98, v99, v100, v101, v102, v103, v203, v204, v205, allocator, v210, v211, v212, cfa);
                FigRenderPipelineGetFigBaseObject();
                v105 = v104;
                v106 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v106)
                {
                  goto LABEL_179;
                }

                DestinationPixelBufferAttributes = v106(v105, @"FieldMode", *MEMORY[0x1E6983A20]);
                if (DestinationPixelBufferAttributes)
                {
                  goto LABEL_159;
                }
              }
            }
          }

          DestinationPixelBufferAttributes = FAIGCommon_standardDynamicRangeIsPreferred(v210);
          if (DestinationPixelBufferAttributes != 1)
          {
            goto LABEL_161;
          }

          DestinationPixelBufferAttributes = *(v80 + 2);
          if (!DestinationPixelBufferAttributes)
          {
            goto LABEL_161;
          }

          CMFormatDescriptionGetExtension(DestinationPixelBufferAttributes, *MEMORY[0x1E6965F30]);
          if (!FigCFEqual())
          {
            DestinationPixelBufferAttributes = FigCFEqual();
            if (!DestinationPixelBufferAttributes)
            {
              goto LABEL_161;
            }
          }

          v210 = Mutable;
          Extension = CMFormatDescriptionGetExtension(*(v80 + 2), *MEMORY[0x1E6965D88]);
          v115 = CMFormatDescriptionGetExtension(*(v80 + 2), *MEMORY[0x1E6965F98]);
          if (!Extension || (v116 = v115, v117 = CFGetTypeID(Extension), v117 != CFStringGetTypeID()) || !v116 || (v118 = CFGetTypeID(v116), TypeID = CFStringGetTypeID(), v118 != TypeID))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_92();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_233;
          }

          OUTLINED_FUNCTION_1_151(TypeID, v120, v121, v122, v123, v124, v125, v126, v203, v204, v205, allocator, v210, v211, v212, cfa);
          FigRenderPipelineGetFigBaseObject();
          v128 = v127;
          v129 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v129)
          {
            v130 = v129(v128, @"ColorPrimaries", Extension);
            if (v130)
            {
              goto LABEL_233;
            }

            OUTLINED_FUNCTION_1_151(v130, v131, v132, v133, v134, v135, v136, v137, v203, v204, v205, allocatora, v210, v211, v213, cfb);
            FigRenderPipelineGetFigBaseObject();
            v139 = v138;
            v140 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            v94 = v214;
            if (v140)
            {
              v130 = v140(v139, @"TransferFunction", *MEMORY[0x1E6965F50]);
              if (!v130)
              {
                OUTLINED_FUNCTION_1_151(v130, v141, v142, v143, v144, v145, v146, v147, v203, v204, v205, allocatorb, v210, v211, v214, cfc);
                FigRenderPipelineGetFigBaseObject();
                v149 = v148;
                v150 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v150)
                {
                  DestinationPixelBufferAttributes = v150(v149, @"YCbCrMatrix", v116);
                  Mutable = v210;
                  if (DestinationPixelBufferAttributes)
                  {
                    goto LABEL_159;
                  }

LABEL_161:
                  v151 = *(v83 + 120);
                  if (!v151)
                  {
                    goto LABEL_164;
                  }

                  v152 = Mutable;
                  OUTLINED_FUNCTION_1_151(DestinationPixelBufferAttributes, v107, v108, v109, v110, v111, v112, v113, v203, v204, v205, allocator, v210, v211, v212, cfa);
                  FigRenderPipelineGetFigBaseObject();
                  v154 = v153;
                  v155 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v155)
                  {
                    DestinationPixelBufferAttributes = v155(v154, @"ClientPID", v151);
                    Mutable = v152;
                    if (DestinationPixelBufferAttributes)
                    {
                      goto LABEL_159;
                    }

LABEL_164:
                    FigRenderPipelineGetFigBaseObject();
                    v157 = v156;
                    v158 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v158)
                    {
                      DestinationPixelBufferAttributes = v158(v157, @"SourceSampleBufferQueue", v94, v80 + 184);
                      if (!DestinationPixelBufferAttributes)
                      {
                        OUTLINED_FUNCTION_1_151(DestinationPixelBufferAttributes, v159, v160, v161, v162, v163, v164, v165, v203, v204, v205, allocator, v210, v211, v212, cfa);
                        v166 = *MEMORY[0x1E695E4D0];
                        FigRenderPipelineGetFigBaseObject();
                        v168 = v167;
                        v169 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                        if (v169)
                        {
                          v169(v168, @"ObeyEmptyMediaMarkers", v166);
                        }

                        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
                        DestinationPixelBufferAttributes = OUTLINED_FUNCTION_2_143(DefaultLocalCenter, v171, v172, @"DecodeError", *(v80 + 19));
                        if (!DestinationPixelBufferAttributes)
                        {
                          v173 = CMNotificationCenterGetDefaultLocalCenter();
                          DestinationPixelBufferAttributes = OUTLINED_FUNCTION_2_143(v173, v174, v175, *MEMORY[0x1E69605B0], *cfd);
                          if (!DestinationPixelBufferAttributes)
                          {
                            v176 = *(v80 + 23);
                            CMTimeMake(&time1, 3, 30);
                            CMTimeMake(&lhs, 2, 30);
                            FigSampleBufferConsumerCreateForBufferQueue(v176, &time1.value, &lhs.value, v80 + 22);
                            if (!DestinationPixelBufferAttributes)
                            {
                              MutableCopy = FigCFDictionaryCreateMutableCopy();
                              if (MutableCopy)
                              {
                                v178 = MutableCopy;
                                CFDictionarySetValue(MutableCopy, @"OptimizeSampleCursorIPCForPower", v166);
                                VideoMentorNew(*(v80 + 20), *(v80 + 21), *(v80 + 22), v178, v80 + 25);
                                if (v179)
                                {
                                  v28 = v179;
                                }

                                else
                                {
                                  v180 = Mutable;
                                  v181 = CMNotificationCenterGetDefaultLocalCenter();
                                  v184 = OUTLINED_FUNCTION_2_143(v181, v182, v183, @"MentorStoppingDueToError", *(v80 + 25));
                                  if (v184)
                                  {
                                    goto LABEL_234;
                                  }

                                  FigTrackReaderGetFigBaseObject();
                                  v186 = v185;
                                  v187 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                  if (v187)
                                  {
                                    v187(v186, @"EditCursorService", allocatorc, v80 + 8);
                                  }

                                  v184 = EditMentorNewWithChildVideoMentor(*(v80 + 25), *(v80 + 1), v205);
                                  if (v184)
                                  {
LABEL_234:
                                    v28 = v184;
                                    Mutable = v180;
                                  }

                                  else
                                  {
                                    Mutable = v180;
                                    v28 = 0;
                                    if (!*(v80 + 27))
                                    {
                                      *(v80 + 27) = CFDictionaryCreate(allocatorc, &kMentorKey_ModeChangePolicy, &kMentorModeChangePolicy_RepurposeOrCancelPreviousOutput, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                    }
                                  }
                                }

                                CFRelease(v178);
                                if (Mutable)
                                {
                                  goto LABEL_180;
                                }

                                goto LABEL_181;
                              }

                              goto LABEL_229;
                            }
                          }
                        }
                      }

LABEL_159:
                      v28 = DestinationPixelBufferAttributes;
                      if (!Mutable)
                      {
                        goto LABEL_181;
                      }

LABEL_180:
                      CFRelease(Mutable);
                      goto LABEL_181;
                    }

LABEL_179:
                    v28 = 4294954514;
                    if (!Mutable)
                    {
                      goto LABEL_181;
                    }

                    goto LABEL_180;
                  }

                  v28 = 4294954514;
                  Mutable = v152;
                  if (v152)
                  {
                    goto LABEL_180;
                  }

LABEL_181:
                  if (v211)
                  {
                    CFRelease(v211);
                  }

                  if (v28)
                  {
                    goto LABEL_126;
                  }

LABEL_184:
                  v188 = CFGetAllocator(a2);
                  v189 = CFDictionaryCreate(v188, &keys, &values, 1, MEMORY[0x1E695E9D8], 0);
                  if (v189)
                  {
                    v59 = v189;
                    v190 = values;
                    *(values + 6) = v220;
                    v190[14] = v11;
                    v191 = v190[16];
                    v190[16] = v189;
                    CFRetain(v189);
                    if (v191)
                    {
                      CFRelease(v191);
                    }

                    v192 = *(values + 26);
                    v193 = *(values + 27);
                    time1 = v233;
                    v194 = EditMentorSetModeToScrub(v192, &time1.value, v193, 0, v59, 0);
                    if (!v194)
                    {
                      if (!*DerivedStorage)
                      {
                        do
                        {
                          RotatedCVImageBuffer = FigSemaphoreWaitRelative();
                          if (RotatedCVImageBuffer)
                          {
                            goto LABEL_223;
                          }

                          v28 = *(values + 30);
                          if (v28)
                          {
                            goto LABEL_59;
                          }

                          if (*DerivedStorage)
                          {
                            v28 = 4294954511;
                            goto LABEL_59;
                          }

                          if (*(a4 + 8))
                          {
                            v28 = 4294954864;
                            goto LABEL_59;
                          }
                        }

                        while ((*(values + 108) & 1) == 0);
                        v196 = *(values + 6);
                        v197 = *(a4 + 48);
                        lhs = *(values + 4);
                        v198 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                        if (!v198)
                        {
                          v28 = 4294954514;
                          goto LABEL_59;
                        }

                        time1 = lhs;
                        RotatedCVImageBuffer = v198(v196, v197, &time1, 3, &v229, 0, 0);
                        if (!RotatedCVImageBuffer)
                        {
                          if (!v229)
                          {
                            v28 = 4294954865;
                            goto LABEL_59;
                          }

                          v199 = *(values + 8);
                          v200 = *(values + 37);
                          if (!v199 && !*(values + 37))
                          {
                            if (!*(values + 38))
                            {
                              goto LABEL_203;
                            }

                            v200 = 0;
                          }

                          time1.value = 0;
                          RotatedCVImageBuffer = FAIGCommon_createRotatedCVImageBuffer(v229, *(values + 5), v199, v200, *(values + 38), DerivedStorage[104], *(a4 + 48), &time1);
                          if (!RotatedCVImageBuffer)
                          {
                            CFRelease(v229);
                            v229 = time1.value;
LABEL_203:
                            IsPreferred = FAIGCommon_standardDynamicRangeIsPreferred(*(a4 + 40));
                            FigCreateCGImageFromPixelBufferWithDynamicRangeConversion(v229, 1, IsPreferred, &v228);
                            v202 = v228;
                            if (!v228)
                            {
                              v28 = 4294954862;
                              goto LABEL_59;
                            }

                            if (*(values + 10) && (CFRelease(*(values + 10)), v32 = values, *(values + 10) = 0, (v202 = v228) == 0))
                            {
                              v49 = 0;
                            }

                            else
                            {
                              CFRetain(v202);
                              v49 = v228;
                              v32 = values;
                            }

                            v58 = a5;
                            v57 = a6;
                            *(v32 + 56) = *(v32 + 6);
                            *(v32 + 9) = *(v32 + 14);
                            *(v32 + 10) = v49;
                            if (!a5)
                            {
                              goto LABEL_57;
                            }

                            goto LABEL_56;
                          }
                        }

LABEL_223:
                        v28 = RotatedCVImageBuffer;
                        goto LABEL_59;
                      }

                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_0_92();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v203, v204, v205);
                    }

                    v28 = v194;
LABEL_60:
                    CFRelease(v59);
                    goto LABEL_126;
                  }

                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_92();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v203, v204, v205);
LABEL_226:
                  v28 = Basic;
                  goto LABEL_126;
                }

                goto LABEL_212;
              }

LABEL_233:
              v28 = v130;
LABEL_213:
              Mutable = v210;
              if (v210)
              {
                goto LABEL_180;
              }

              goto LABEL_181;
            }
          }

LABEL_212:
          v28 = 4294954514;
          goto LABEL_213;
        }
      }

LABEL_125:
      v28 = 4294954514;
      goto LABEL_126;
    }

    v33 = *(a4 + 40);
    lhs.value = 0;
    rhs.value = 0;
    v34 = *values;
    time1.value = 0;
    v35 = *MEMORY[0x1E695E480];
    FigTrackReaderGetFigBaseObject();
    v37 = v36;
    v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    cf = v33;
    if (!v38)
    {
      v56 = 0;
      v28 = 4294954514;
      v40 = v35;
      goto LABEL_64;
    }

    v39 = v37;
    v40 = v35;
    v41 = v38(v39, @"TrackFormatDescriptionArray", v35, &time1);
    if (!v41)
    {
      if (time1.value && CFArrayGetCount(time1.value))
      {
        CFArrayGetValueAtIndex(time1.value, 0);
        *(v32 + 2) = FigFormatDescriptionRetain();
        LODWORD(v223.value) = 0;
        v42 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v42)
        {
          v42(v34, &v223, 0);
          value_low = LODWORD(v223.value);
        }

        else
        {
          value_low = 0;
        }

        v56 = FigCPECreateFormatDescriptionIdentifierForTrackIDAndIndex(v35, value_low, 0);
        v28 = 0;
LABEL_64:
        if (time1.value)
        {
          CFRelease(time1.value);
        }

        if (v28)
        {
          goto LABEL_93;
        }

        *(v32 + 35) = 0;
        *(v32 + 8) = 0;
        if (!cf)
        {
          goto LABEL_92;
        }

        if (CFDictionaryGetValue(cf, @"ApplyVideoTrackMatrix") == *MEMORY[0x1E695E4D0])
        {
          v223.value = 0;
          FigTrackReaderGetFigBaseObject();
          v64 = v63;
          v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v65)
          {
            v65(v64, @"TrackMatrix", v40, &v223);
            if (v223.value)
            {
              FigGetCGAffineTransformFrom3x3MatrixArray(v223.value, &time1);
              *(v32 + 8) = FigGetRotationAngleAndFlipsFromCGAffineTransform(&time1.value, v32 + 37, v32 + 38);
              CFRelease(v223.value);
              v66 = *(v32 + 8);
              v68 = v66 == 90 || v66 == 270;
              v32[36] = v68;
            }
          }
        }

        v61 = *(v32 + 3);
        if (!v61)
        {
          goto LABEL_92;
        }

        v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v62 && !v62(v61, @"AllowsImageGeneration", v40, &lhs) && CFBooleanGetValue(lhs.value))
        {
          v69 = *(v32 + 24);
          if (v69)
          {
            CFRelease(v69);
            *(v32 + 24) = 0;
          }

          v70 = *(v32 + 3);
          v71 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v71)
          {
            v72 = v71(v70, v40, 1, 0, v56, &rhs);
            if (v72 == -12164)
            {
LABEL_92:
              v28 = 0;
              goto LABEL_93;
            }

            v28 = v72;
            if (!v72 && rhs.value)
            {
              *(v32 + 24) = CFDictionaryCreate(v40, &kMentorCreationOptionKey_SampleBufferCryptor, &rhs, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              goto LABEL_92;
            }

            if (!v72)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v28 = 4294954514;
          }
        }

        else
        {
          v28 = 4294951072;
        }

LABEL_93:
        if (v56)
        {
          CFRelease(v56);
        }

        if (lhs.value)
        {
          CFRelease(lhs.value);
        }

        if (rhs.value)
        {
          CFRelease(rhs.value);
        }

        if (v28)
        {
          goto LABEL_126;
        }

        v32 = values;
        goto LABEL_101;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v28 = v41;
    v56 = 0;
    goto LABEL_64;
  }

  v48 = *(values + 10);
  if (v48)
  {
    CFRetain(v48);
    v32 = values;
    v49 = *(values + 10);
  }

  else
  {
    v49 = 0;
  }

  v58 = a5;
  v57 = a6;
  v59 = 0;
  v228 = v49;
  *(v32 + 6) = *(v32 + 56);
  *(v32 + 14) = *(v32 + 9);
  if (a5)
  {
LABEL_56:
    *v58 = v49;
    v228 = 0;
  }

LABEL_57:
  v28 = 0;
  if (v57)
  {
    v60 = *(v32 + 6);
    *(v57 + 16) = *(v32 + 14);
    *v57 = v60;
  }

LABEL_59:
  if (v59)
  {
    goto LABEL_60;
  }

LABEL_126:
  if (v228)
  {
    CFRelease(v228);
  }

  if (v229)
  {
    CFRelease(v229);
  }

  return v28;
}

uint64_t TrackFragmentBuilderCreate(int a1, const __CFDictionary *a2, uint64_t a3, unsigned int *a4, const void *a5, void *a6)
{
  if (!a6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, context, v26);
    v19 = v22;
    goto LABEL_17;
  }

  v12 = MEMORY[0x19A8CC720](a5, 96, 0x1060040999B399ELL, 0);
  v13 = v12;
  if (!v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, context, v26);
    goto LABEL_23;
  }

  v12[4] = 0u;
  v12[5] = 0u;
  v12[2] = 0u;
  v12[3] = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  if (a5)
  {
    v14 = CFRetain(a5);
  }

  else
  {
    v14 = 0;
  }

  *v13 = v14;
  *(v13 + 2) = a1;
  *(v13 + 5) = a3;
  *(v13 + 6) = 0;
  *(v13 + 56) = xmmword_196E788A0;
  *(v13 + 9) = 0x8000000000000000;
  *(v13 + 10) = 0;
  if (a2)
  {
    context = 0;
    v15 = MovieSampleGroupCollectionCreate(a5, &context);
    if (v15)
    {
      v19 = v15;
      if (!context)
      {
        goto LABEL_18;
      }

      v21 = context;
      goto LABEL_20;
    }

    CFDictionaryApplyFunction(a2, trbCreateSampleGroupCollectionWithDescriptionArraysApplierFunction, context);
    *(v13 + 4) = context;
  }

  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(a5, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v17 = Mutable;
      v18 = FigCFDictionarySetInt32();
      if (!v18)
      {
        v18 = FigCFDictionarySetInt32();
        if (!v18)
        {
          v18 = FigCFDictionarySetInt32();
          if (!v18)
          {
            v18 = FigCFDictionarySetInt32();
            if (!v18)
            {
              *(v13 + 2) = v17;
              goto LABEL_16;
            }
          }
        }
      }

      v19 = v18;
      v21 = v17;
LABEL_20:
      CFRelease(v21);
      goto LABEL_18;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, context, v26);
    if (!v23)
    {
      goto LABEL_16;
    }

LABEL_23:
    v19 = v23;
    goto LABEL_18;
  }

LABEL_16:
  v19 = 0;
  *a6 = v13;
LABEL_17:
  v13 = 0;
LABEL_18:
  TrackFragmentBuilderRelease(v13);
  return v19;
}

double TrackFragmentBuilderNumSamplesAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3)
{
  v5 = 0;
  if (a1 && a3)
  {
    if (!tfbGetTrackRunAtIndex(a1, a2, &v5))
    {
      *a3 = *v5;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double TrackFragmentBuilderGetDataOffsetAtTrackRunIndex(uint64_t a1, CFIndex a2, void *a3)
{
  v5 = 0;
  if (a1 && a3)
  {
    if (!tfbGetTrackRunAtIndex(a1, a2, &v5))
    {
      *a3 = *(v5 + 8);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double TrackFragmentBuilderGetFirstSampleFlagsAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3, _BYTE *a4)
{
  v8 = 0;
  if (a1 && a3 && a4)
  {
    if (!tfbGetTrackRunAtIndex(a1, a2, &v8))
    {
      v7 = v8;
      *a3 = *(v8 + 20);
      *a4 = *(v7 + 16);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t tfbGetSampleValueArrayBbufAtTrackRunIndex(uint64_t a1, CFIndex a2, const void *a3, _DWORD *a4, void *a5)
{
  v11 = 0;
  result = tfbGetTrackRunAtIndex(a1, a2, &v11);
  if (!result)
  {
    result = CFDictionaryGetValue(*(v11 + 24), a3);
    if (result)
    {
      v9 = *(result + 8);
      v10 = *(result + 16);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *a4 = v9;
    *a5 = v10;
  }

  return result;
}

double TrackFragmentBuilderAppendSampleInformation(const __CFAllocator **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, uint64_t a9, const __CFArray *a10, const char *a11, uint64_t *a12, void *a13)
{
  if (!a1 || !a7 || !a9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v14 = a5;
  v15 = a1;
  v171 = a12;
  v169 = a11;
  v16 = a10;
  if (a2)
  {
    v18 = *a1;
    if (!a1[11])
    {
      v20 = MEMORY[0x19A8CC720](*a1, 72, 0x10200403EBEFDCFLL, 0);
      v21 = v20;
      if (v20 && (*(v20 + 64) = 0, *(v20 + 32) = 0u, *(v20 + 48) = 0u, *v20 = 0u, *(v20 + 16) = 0u, Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (v21[1] = Mutable) != 0) && (v23 = CFArrayCreateMutable(v18, 0, 0), (v21[5] = v23) != 0))
      {
        v21[2] = v15[5] + v15[6];
        v21[4] = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a11, v170, a12);
        v168 = v167;
        tfbTrackFragmentRelease(v18, v21);
        if (v168)
        {
          return result;
        }

        v21 = 0;
      }

      v15[11] = v21;
      if (tfbSetTrackFragmentHeaderDefaultValueIfNeeded(v15, @"SampleDescriptionIndexKey", a4))
      {
        return result;
      }

      v18 = *v15;
    }

    v25 = MEMORY[0x19A8CC720](v18, 32, 0x1020040FCFC97F3, 0);
    v26 = v25;
    if (v25 && (*v25 = 0u, v25[1] = 0u, v27 = CFDictionaryCreateMutable(v18, 4, MEMORY[0x1E695E9D8], 0), (v26[3] = v27) != 0))
    {
      v26[1] = a3;
      CFArrayAppendValue(*(v15[11] + 5), v26);
      tfbTrackRunRelease(v18, 0);
      v14 = a5;
      v16 = a10;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v169, v170, v171);
      v166 = v165;
      tfbTrackRunRelease(v18, v26);
      v14 = a5;
      v16 = a10;
      if (v166)
      {
        return result;
      }
    }
  }

  v28 = OUTLINED_FUNCTION_5_99();
  if (!tfbAddSampleToSampleTable(v28, v29, a6, a7, v30, v31))
  {
    v32 = OUTLINED_FUNCTION_5_99();
    if (!tfbAddSampleToSampleTable(v32, v33, a8, a9, v34, v35))
    {
      if (v16)
      {
        CFArrayGetCount(v16);
      }

      v36 = OUTLINED_FUNCTION_5_99();
      if (!tfbAddSampleToSampleTable(v36, v37, v38, v16, v39, v40))
      {
        OUTLINED_FUNCTION_10_55();
        v42 = v42 || v41 == 1986618469;
        v43 = v42 || v41 == 1885954932;
        if (!v43 || (v124 = OUTLINED_FUNCTION_5_99(), !tfbAddSampleToSampleTable(v124, v125, a6, a7, v126, v127)))
        {
          v172 = a7;
          if (v16)
          {
            Count = CFArrayGetCount(v16);
            if (Count >= 1)
            {
              v44 = 0;
              key = *MEMORY[0x1E69603F0];
              v175 = v15;
              v176 = *MEMORY[0x1E69603F8];
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v16, v44);
                Value = CFDictionaryGetValue(ValueAtIndex, key);
                v47 = CFDictionaryGetValue(ValueAtIndex, v176);
                if (!(Value | v47))
                {
                  goto LABEL_61;
                }

                theData = v47;
                v48 = *v15;
                v49 = v15[11];
                v50 = *(v49 + 6);
                if (!v50)
                {
                  break;
                }

LABEL_36:
                if (v44 + *v49 == *(v50 + 1))
                {
                  v180 = Value;
                  if (Value)
                  {
                    Length = CFDataGetLength(Value);
                    v57 = Value;
                    Value = Length;
                    CFDataGetBytePtr(v57);
                    v58 = theData;
                    if (CMByteStreamAppend())
                    {
                      return result;
                    }

                    if (Value)
                    {
                      goto LABEL_69;
                    }

                    if (theData)
                    {
                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    v58 = theData;
                    if (theData)
                    {
LABEL_43:
                      if (CFDataGetLength(v58) >= 0x80000 || (v59 = CMByteStreamAppend()) == 0)
                      {
LABEL_69:
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_3_2();
                        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                      }

                      v66 = v59;
                      v15 = v175;
                      goto LABEL_63;
                    }
                  }

                  if (*(v50 + 1))
                  {
                    if (v50[40] != (v180 != 0) || v50[41] != (v58 != 0))
                    {
                      goto LABEL_69;
                    }

                    v15 = v175;
                    if (Value != *v50 && !*(v50 + 2))
                    {
                      v183 = 0;
                      *&v184.byte0 = 0;
                      v182 = 0;
                      OUTLINED_FUNCTION_8_60();
                      BlockBufferByteStream = tfbCreateBlockBufferByteStream(v48, v60, v61);
                      if (BlockBufferByteStream)
                      {
                        v65 = BlockBufferByteStream;
LABEL_66:
                        v16 = a10;
                        if (v65)
                        {
                          return result;
                        }
                      }

                      else
                      {
                        v63 = v183;
                        if (*(v50 + 1))
                        {
                          v64 = CMByteStreamAppend();
                          if (!v64)
                          {
                            fig_log_get_emitter();
                            OUTLINED_FUNCTION_3_2();
                            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v169, v170, v171);
                          }

                          v65 = v64;
                          goto LABEL_66;
                        }

                        *v50 = 0;
                        *(v50 + 1) = *&v184.byte0;
                        *(v50 + 2) = v63;
                        v16 = a10;
                      }
                    }
                  }

                  else
                  {
                    v50[40] = v180 != 0;
                    v50[41] = v58 != 0;
                    *v50 = Value;
                    v15 = v175;
                  }

                  if (!*(v50 + 2))
                  {
                    ++*(v50 + 1);
                    goto LABEL_61;
                  }

                  if (CMByteStreamAppend())
                  {
                    return result;
                  }
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_2();
                result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                v66 = v67;
LABEL_63:
                if (v66)
                {
                  return result;
                }

LABEL_61:
                if (++v44 == Count)
                {
                  goto LABEL_76;
                }
              }

              v183 = 0;
              *&v184.byte0 = 0;
              OUTLINED_FUNCTION_8_60();
              v53 = tfbCreateBlockBufferByteStream(v48, v51, v52);
              if (!v53)
              {
                v54 = MEMORY[0x19A8CC720](v48, 48, 0x102004031FD023DLL, 0);
                if (v54)
                {
                  v50 = v54;
                  *(v54 + 16) = 0u;
                  *(v54 + 32) = 0u;
                  *v54 = 0u;
                  v55 = v183;
                  *(v54 + 24) = *&v184.byte0;
                  *(v54 + 32) = v55;
LABEL_35:
                  *(v49 + 6) = v50;
                  goto LABEL_36;
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_2();
                result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v169, v170, v171);
              }

              if (v53)
              {
                return result;
              }

              v50 = 0;
              goto LABEL_35;
            }
          }

LABEL_76:
          OUTLINED_FUNCTION_10_55();
          if (v42 || v68 == 1885954932 || v68 == 1986618469)
          {
            if (v16)
            {
              v71 = v172;
              if (v14 >= 1)
              {
                while (1)
                {
                  v184.byte0 = 0;
                  LOBYTE(v183) = 0;
                  CFArrayGetValueAtIndex(a10, 0);
                  OUTLINED_FUNCTION_8_60();
                  if (FigMovieGetVideoSyncSampleEntryFromSampleAttachment(v72, v73, v74))
                  {
                    return result;
                  }

                  MovieSampleGroupTypeSpecMakeBasic(1937337955);
                  v75 = OUTLINED_FUNCTION_2_144();
                  if (tfbAddSampleGroupForGroupType(v75, v76, v77, 0, 1, v78, 1uLL, v79))
                  {
                    return result;
                  }

                  OUTLINED_FUNCTION_7_75();
                  if (v42)
                  {
                    while (1)
                    {
                      *&v184.byte0 = 0;
                      *&v184.byte8 = 0;
                      v185 = 0;
                      LOBYTE(v183) = 0;
                      CFArrayGetValueAtIndex(a10, 0);
                      OUTLINED_FUNCTION_8_60();
                      if (FigMovieGetVideoTemporalLayerEntryFromSampleAttachment(v80, v81, v82))
                      {
                        return result;
                      }

                      MovieSampleGroupTypeSpecMakeBasic(1953719148);
                      v83 = OUTLINED_FUNCTION_2_144();
                      if (tfbAddSampleGroupForGroupType(v83, v84, v85, 1, 1, v86, 0x14uLL, v87))
                      {
                        return result;
                      }

                      OUTLINED_FUNCTION_7_75();
                      if (v42)
                      {
                        while (1)
                        {
                          v184.byte0 = 0;
                          CFArrayGetValueAtIndex(a10, 0);
                          FigCFDictionaryGetBooleanIfPresent();
                          MovieSampleGroupTypeSpecMakeBasic(1953718643);
                          v88 = OUTLINED_FUNCTION_3_120();
                          if (OUTLINED_FUNCTION_11_57(v88, v89, v90, v91, v92, v93))
                          {
                            return result;
                          }

                          OUTLINED_FUNCTION_7_75();
                          if (v42)
                          {
                            while (1)
                            {
                              v184.byte0 = 0;
                              CFArrayGetValueAtIndex(a10, 0);
                              FigCFDictionaryGetBooleanIfPresent();
                              MovieSampleGroupTypeSpecMakeBasic(1937011553);
                              v94 = OUTLINED_FUNCTION_3_120();
                              if (OUTLINED_FUNCTION_11_57(v94, v95, v96, v97, v98, v99))
                              {
                                return result;
                              }

                              OUTLINED_FUNCTION_7_75();
                              if (v42)
                              {
                                goto LABEL_132;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_132:
              v144 = v15[6];
              v145 = v15[5] + v144;
              v146 = a6;
              if (a6 == 1)
              {
                v147 = v71[3] - v71[6];
                v148 = &v145[v147];
                v149 = &v145[v147 + *v71 * (v14 - 1)];
                v150 = *v71 * v14;
                v151 = v149 + *v71;
                LODWORD(v152) = v147;
                v154 = v171;
                v153 = a13;
              }

              else
              {
                v154 = v171;
                v153 = a13;
                v150 = 0;
                if (a6 < 1)
                {
                  v148 = 0x7FFFFFFFFFFFFFFFLL;
                  v151 = 0x8000000000000000;
                  LODWORD(v152) = 0x7FFFFFFF;
                  LODWORD(v147) = 0x80000000;
                  v149 = 0x8000000000000000;
                }

                else
                {
                  v155 = v71 + 3;
                  LODWORD(v147) = 0x80000000;
                  v149 = 0x8000000000000000;
                  v148 = 0x7FFFFFFFFFFFFFFFLL;
                  LODWORD(v152) = 0x7FFFFFFF;
                  v151 = 0x8000000000000000;
                  v156 = v15[5] + v144;
                  do
                  {
                    v157 = *(v155 - 3);
                    v158 = *v155 - v155[3];
                    v159 = &v156[v158];
                    v156 += v157;
                    v150 += v157;
                    if (v159 < v148)
                    {
                      v148 = v159;
                    }

                    v160 = v159 + v157;
                    if (v149 < v159)
                    {
                      v151 = v160;
                    }

                    if (v149 <= v159)
                    {
                      v149 = v159;
                    }

                    if (v158 < v152)
                    {
                      v152 = *v155 - v155[3];
                    }

                    if (v158 > v147)
                    {
                      v147 = *v155 - v155[3];
                    }

                    v155 += 9;
                    --v146;
                  }

                  while (v146);
                }
              }

              v161 = v15[7];
              if (v148 < v161)
              {
                v161 = v148;
              }

              v15[7] = v161;
              v162 = v15[11];
              v163 = *(v162 + 4);
              if (v148 < v163)
              {
                v163 = v148;
              }

              *(v162 + 4) = v163;
              if (v15[8] < v149)
              {
                v15[8] = v149;
                v15[9] = v151;
              }

              if (v152 >= *(v15 + 21))
              {
                LODWORD(v152) = *(v15 + 21);
              }

              if (v147 <= *(v15 + 20))
              {
                v164 = *(v15 + 20);
              }

              else
              {
                v164 = v147;
              }

              *(v15 + 20) = v164;
              *(v15 + 21) = v152;
              v15[6] = (v144 + v150);
              *(v162 + 3) += v150;
              if (v154)
              {
                *v154 = v148;
              }

              if (v153)
              {
                *v153 = v145;
              }

              *&v184.byte0 = 0;
              *v162 += v14;
              if (!tfbGetCurrentTrackRun(v15, &v184))
              {
                **&v184.byte0 += v14;
              }

              return result;
            }

            MovieSampleGroupTypeSpecMakeBasic(1937337955);
            v128 = OUTLINED_FUNCTION_3_120();
            v71 = v172;
            if (OUTLINED_FUNCTION_4_115(v128, v129, v130, 0))
            {
              return result;
            }

            MovieSampleGroupTypeSpecMakeBasic(1953719148);
            v131 = OUTLINED_FUNCTION_3_120();
            if (OUTLINED_FUNCTION_4_115(v131, v132, v133, 1))
            {
              return result;
            }

            Basic = MovieSampleGroupTypeSpecMakeBasic(1953718643);
            v136 = 1;
            if (OUTLINED_FUNCTION_4_115(v15, Basic, v135, 1))
            {
              return result;
            }

            v137 = 1937011553;
          }

          else
          {
            v71 = v172;
            if (v68 != 1936684398)
            {
              goto LABEL_132;
            }

            *&v184.byte0 = 0;
            LOBYTE(v183) = 0;
            LOBYTE(v182) = 0;
            if (v169)
            {
              OUTLINED_FUNCTION_8_60();
              v103 = a10;
              if (FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment(v100, v101, v102, &v182))
              {
                return result;
              }

              v104 = *&v184.byte0;
            }

            else
            {
              v104 = 0;
              v103 = a10;
            }

            *&v184.byte0 = __rev16(v104);
            if (v182)
            {
              v105 = v183 == 0;
            }

            else
            {
              v105 = 1;
            }

            v106 = !v105;
            MovieSampleGroupTypeSpecMakeBasic(1919904876);
            v107 = OUTLINED_FUNCTION_2_144();
            if (tfbAddSampleGroupForGroupType(v107, v108, v109, 0, v14, v106, 2uLL, v110))
            {
              return result;
            }

            if (v103)
            {
              if (v14 >= 1)
              {
                while (1)
                {
                  *&v184.byte0 = 0;
                  LOBYTE(v183) = 0;
                  CFArrayGetValueAtIndex(a10, 0);
                  OUTLINED_FUNCTION_8_60();
                  if (FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment(v111, v112, v113))
                  {
                    return result;
                  }

                  *&v184.byte0 = bswap32(*&v184.byte0) >> 16;
                  MovieSampleGroupTypeSpecMakeBasic(1886547820);
                  v114 = OUTLINED_FUNCTION_2_144();
                  if (tfbAddSampleGroupForGroupType(v114, v115, v116, 0, 1, v117, 2uLL, v118))
                  {
                    return result;
                  }

                  OUTLINED_FUNCTION_7_75();
                  if (v42)
                  {
                    while (1)
                    {
                      *&v184.byte0 = 0;
                      *&v184.byte8 = 0;
                      SeamUUIDBytesFromSampleAttachmentArray = FigMovieGetSeamUUIDBytesFromSampleAttachmentArray(a10, 0, &v184);
                      MovieSampleGroupTypeSpecMakeBasic(1936023917);
                      v120 = OUTLINED_FUNCTION_2_144();
                      if (tfbAddSampleGroupForGroupType(v120, v121, v122, 0, 1, SeamUUIDBytesFromSampleAttachmentArray, 0x10uLL, v123))
                      {
                        return result;
                      }

                      OUTLINED_FUNCTION_7_75();
                      if (v42)
                      {
                        goto LABEL_132;
                      }
                    }
                  }
                }
              }

              goto LABEL_132;
            }

            MovieSampleGroupTypeSpecMakeBasic(1886547820);
            v138 = OUTLINED_FUNCTION_3_120();
            if (OUTLINED_FUNCTION_4_115(v138, v139, v140, 0))
            {
              return result;
            }

            v136 = 0;
            v137 = 1936023917;
          }

          MovieSampleGroupTypeSpecMakeBasic(v137);
          v141 = OUTLINED_FUNCTION_3_120();
          if (OUTLINED_FUNCTION_4_115(v141, v142, v143, v136))
          {
            return result;
          }

          goto LABEL_132;
        }
      }
    }
  }

  return result;
}

uint64_t tfbAddSampleToSampleTable(const __CFAllocator **a1, uint64_t a2, unint64_t a3, uint64_t a4, const void *a5, uint64_t (*a6)(uint64_t))
{
  v50 = *a1;
  cf = 0;
  v53 = 0;
  v51 = 0;
  CurrentTrackRun = tfbGetCurrentTrackRun(a1, &v53);
  if (CurrentTrackRun)
  {
    goto LABEL_44;
  }

  v13 = a1[11];
  if (v13)
  {
    v14 = *(v13 + 5);
    if (v14)
    {
      if (CFArrayGetCount(v14) == 1 && !*v53)
      {
        v15 = OUTLINED_FUNCTION_184();
        v16 = a6(v15);
        tfbSetTrackFragmentHeaderDefaultValueIfNeeded(a1, a5, v16);
      }
    }
  }

  if (FigCFEqual())
  {
    v55 = 0;
    v54 = 0;
    CurrentTrackRun = tfbGetCurrentTrackRun(a1, &v55);
    if (CurrentTrackRun)
    {
      goto LABEL_44;
    }

    v17 = a1[11];
    if (v17 && (v18 = *(v17 + 5)) != 0 && CFArrayGetCount(v18) == 1)
    {
      v19 = v55;
      v20 = *v55;
      if (v20 <= 1 && v20 + a2 >= 2)
      {
        v22 = OUTLINED_FUNCTION_184();
        v23 = a6(v22);
        CurrentTrackRun = tfbGetTrackFragmentGlobalDefaultValue(a1, @"SampleFlagsKey", &v54);
        if (!CurrentTrackRun)
        {
          v24 = v54;
          if (v54 == v23)
          {
            goto LABEL_24;
          }

          tfbSetTrackFragmentHeaderDefaultValueIfNeeded(a1, @"SampleFlagsKey", v23);
LABEL_22:
          *(v19 + 16) = 1;
          v19[5] = v24;
          goto LABEL_24;
        }

LABEL_44:
        v27 = CurrentTrackRun;
        goto LABEL_48;
      }
    }

    else
    {
      v19 = v55;
      if (*v55)
      {
        goto LABEL_24;
      }

      v25 = OUTLINED_FUNCTION_184();
      v24 = a6(v25);
      TrackFragmentGlobalDefaultValue = tfbGetTrackFragmentGlobalDefaultValue(a1, @"SampleFlagsKey", &v54);
      v27 = TrackFragmentGlobalDefaultValue;
      if (!TrackFragmentGlobalDefaultValue && v54 != v24)
      {
        goto LABEL_22;
      }

      if (TrackFragmentGlobalDefaultValue)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_24:
  v28 = v53;
  Value = CFDictionaryGetValue(v53[3], a5);
  if (Value)
  {
LABEL_25:
    if (a2 < 1)
    {
LABEL_29:
      v27 = 0;
      Value[2] += a2;
      goto LABEL_48;
    }

    v30 = 0;
    while (1)
    {
      v31 = OUTLINED_FUNCTION_184();
      LODWORD(v55) = bswap32(a6(v31));
      CurrentTrackRun = CMByteStreamAppend();
      if (CurrentTrackRun)
      {
        goto LABEL_44;
      }

      if (a2 == ++v30)
      {
        goto LABEL_29;
      }
    }
  }

  LODWORD(v55) = 0;
  v32 = tfbGetTrackFragmentGlobalDefaultValue(a1, a5, &v55);
  if (v32)
  {
    goto LABEL_70;
  }

  if (!FigCFEqual())
  {
    v36 = v55;
    if (a3 > 1)
    {
      goto LABEL_52;
    }

    v38 = OUTLINED_FUNCTION_184();
    if (v36 != a6(v38))
    {
      goto LABEL_52;
    }

LABEL_47:
    v27 = 0;
    goto LABEL_48;
  }

  v33 = *v28;
  if (v33 + a2 <= 1)
  {
    v34 = -1;
  }

  else
  {
    v34 = 1 - v33;
  }

  if (v33 >= 2)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  if ((v35 & 0x80000000) != 0)
  {
    goto LABEL_47;
  }

  v36 = v55;
  if (!a3)
  {
    if ((a6)(0, a4, 0) != v36)
    {
      goto LABEL_52;
    }

    goto LABEL_47;
  }

  if (v35 >= a2)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v37 = OUTLINED_FUNCTION_184();
    if (a6(v37) != v36)
    {
      break;
    }

    if (a2 == ++v35)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  v32 = tfbCreateBlockBufferByteStream(v50, &cf, &v51);
  if (!v32)
  {
    if (*v28)
    {
      v40 = 0;
      v41 = bswap32(v36);
      v42 = v51;
      while (1)
      {
        v54 = 0;
        v43 = FigCFEqual();
        v44 = v41;
        if (!v40)
        {
          v44 = v41;
          if (v43)
          {
            v44 = v41;
            if (*(v28 + 16))
            {
              v44 = bswap32(*(v28 + 5));
            }
          }
        }

        v54 = v44;
        v45 = CMByteStreamAppend();
        if (v45)
        {
          break;
        }

        if (++v40 >= *v28)
        {
          goto LABEL_61;
        }
      }

      v27 = v45;
      if (v42)
      {
        goto LABEL_65;
      }

      goto LABEL_48;
    }

LABEL_61:
    v46 = MEMORY[0x19A8CC720](v50, 32, 0x10600409BD8FBF5, 0);
    if (v46)
    {
      Value = v46;
      *v46 = 0u;
      v46[1] = 0u;
      if (a5)
      {
        v47 = CFRetain(a5);
      }

      else
      {
        v47 = 0;
      }

      *Value = v47;
      Value[2] = *v28;
      v48 = v51;
      *(Value + 2) = cf;
      *(Value + 3) = v48;
      CFDictionaryAddValue(v28[3], a5, Value);
      cf = 0;
      if (FigCFEqual())
      {
        *(v28 + 16) = 0;
      }

      goto LABEL_25;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, 0);
  }

LABEL_70:
  v27 = v32;
  v42 = v51;
  if (v51)
  {
LABEL_65:
    CFRelease(v42);
  }

LABEL_48:
  if (cf)
  {
    CFRelease(cf);
  }

  return v27;
}

void trbCreateSampleGroupCollectionWithDescriptionArraysApplierFunction(uint64_t a1, _DWORD *a2, CFTypeRef cf)
{
  v6 = CFGetAllocator(cf);
  Basic = MovieSampleGroupTypeSpecMakeBasic(a1);
  cfa = 0;
  if (!MovieSampleGroupCreate(v6, Basic, v8, &cfa) && !MovieSampleGroupSetDescriptionArray(cfa, a2))
  {
    MovieSampleGroupCollectionAddSampleGroup(cf, cfa);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }
}

uint64_t tfbAddSampleGroupForGroupType(uint64_t a1, unint64_t a2, unsigned int a3, int a4, uint64_t a5, int a6, size_t a7, const void *a8)
{
  v14 = *(a1 + 88);
  v16 = *(v14 + 7);
  if (v16)
  {
    v16 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v16, a2, a3);
  }

  v17 = 0;
  cf = v16;
  v18 = 0;
  if (a6 && !v16)
  {
    v19 = *a1;
    v20 = *(a1 + 32);
    if (v20)
    {
      v18 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v20, a2, a3);
    }

    else
    {
      v18 = 0;
    }

    if (a4)
    {
      v21 = MovieSampleGroupCreateCompactForFragment(v19, a2, a3, v18, &cf);
      if (!v21)
      {
LABEL_10:
        v22 = *(*(a1 + 88) + 64);
        if (v22 && (Value = CFDictionaryGetValue(v22, a2)) != 0)
        {
          v45 = CFRetain(Value);
          if (v45)
          {
LABEL_21:
            v17 = v45;
            v28 = MovieSampleGroupSetDescriptionArray(cf, v45);
            if (v28)
            {
              goto LABEL_37;
            }

            v29 = cf;
            v30 = *(a1 + 88);
            v33 = *(v30 + 56);
            v32 = (v30 + 56);
            v31 = v33;
            if (!v33)
            {
              v28 = MovieSampleGroupCollectionCreate(*a1, v32);
              if (v28)
              {
                goto LABEL_37;
              }

              v31 = *v32;
            }

            v28 = MovieSampleGroupCollectionAddSampleGroup(v31, v29);
            if (v28)
            {
              goto LABEL_37;
            }

            v34 = *v14;
            if (v34)
            {
              MovieSampleGroupAppendSamplesWithDescriptionIndex(cf, v34, 0);
              if (v28)
              {
                goto LABEL_37;
              }
            }

            v16 = cf;
            goto LABEL_29;
          }
        }

        else
        {
          v45 = 0;
        }

        v24 = MovieSampleGroupDescriptionArrayCreate(*a1, a2, &v45);
        if (!v24)
        {
          v25 = v45;
          v26 = *(a1 + 88);
          LODWORD(key) = 0;
          if (!*(v26 + 64))
          {
            Mutable = CFDictionaryCreateMutable(*a1, 0, 0, MEMORY[0x1E695E9E8]);
            *(v26 + 64) = Mutable;
            if (!Mutable)
            {
              emitter = fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954510, "< TrackFragmentBuilder >", 1054, v8);
LABEL_52:
              v36 = v40;
              if (!v40)
              {
                goto LABEL_21;
              }

LABEL_48:
              v37 = v45;
              if (v45)
              {
                goto LABEL_39;
              }

              goto LABEL_40;
            }
          }

          v24 = MovieSampleGroupDescriptionArrayCopyInfo(v25, &key, 0, 0, 0, 0);
          if (!v24)
          {
            if (!CFDictionaryGetValue(*(v26 + 64), key))
            {
              CFDictionarySetValue(*(v26 + 64), key, v25);
              goto LABEL_21;
            }

            v39 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 4294954514, "< TrackFragmentBuilder >", 1059, v8);
            goto LABEL_52;
          }
        }

        v36 = v24;
        goto LABEL_48;
      }
    }

    else
    {
      v21 = MovieSampleGroupCreateForFragment(v19, a2, a3, v18, &cf);
      if (!v21)
      {
        goto LABEL_10;
      }
    }

    v36 = v21;
    goto LABEL_40;
  }

LABEL_29:
  if (v16)
  {
    v45 = 0;
    if (a6)
    {
      MovieSampleGroupAddDescription(v16, a7, a8, &v45, 0);
      if (v28)
      {
        goto LABEL_37;
      }

      v16 = cf;
      v35 = v45;
    }

    else
    {
      v35 = 0;
    }

    MovieSampleGroupAppendSamplesWithDescriptionIndex(v16, a5, v35);
LABEL_37:
    v36 = v28;
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v36 = 0;
  if (v17)
  {
LABEL_38:
    v37 = v17;
LABEL_39:
    CFRelease(v37);
  }

LABEL_40:
  if (v18)
  {
    CFRelease(v18);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v36;
}

void TrackFragmentBuilderGetMinDecodeToDisplay_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetMinDecodeToDisplay_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetMaxDecodeToDisplay_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetMaxDecodeToDisplay_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleAuxInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderCopySampleGroupDescriptionArrays_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderCopySampleGroupDescriptionArrays_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderCopySampleGroupArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderCopySampleGroupArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderSetInitialBaseMediaDecodeTimeValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderSetInitialBaseMediaDecodeTimeValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentLowestDisplayStartTimeValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentLowestDisplayStartTimeValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentMediaDecodeDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetTrackFragmentMediaDecodeDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderNumTrackRuns_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderNumTrackRuns_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void tfbGetTrackRunAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double tfbGetSampleDurationAtIndexFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double tfbGetSampleDurationAtIndexFunc_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double tfbGetSampleSizeAtIndexFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double tfbGetSampleSizeAtIndexFunc_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double tfbGetSampleFlagsAtIndexFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double tfbGetSampleCompositionTimeOffsetAtIndexFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double tfbGetSampleCompositionTimeOffsetAtIndexFunc_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void tfbSetTrackFragmentHeaderDefaultValueIfNeeded_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void tfbGetTrackFragmentGlobalDefaultValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MovieHeaderMakerCreateWithMovieInformation(const void *a1, const void *a2, int a3, void *a4)
{
  if (a2 && a4)
  {
    v8 = MEMORY[0x19A8CC720](a1, 144, 0x10600409F09A6F5, 0);
    if (v8)
    {
      v10 = v8;
      bzero(v8, 0x90uLL);
      if (a1)
      {
        v11 = CFRetain(a1);
      }

      else
      {
        v11 = 0;
      }

      *v10 = v11;
      v10[1] = CFRetain(a2);
      *(v10 + 4) = a3;
      OUTLINED_FUNCTION_613();
      v10[11] = CFArrayCreateMutable(v12, v13, v14);
      *a4 = v10;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t addTrack(uint64_t a1, const void *a2, void *a3)
{
  v6 = MEMORY[0x19A8CC720](*a1, 88, 0x1060040405E464ALL, 0);
  if (!v6)
  {
    return 4294950966;
  }

  v7 = v6;
  *(v6 + 80) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *v7 = v8;
  v7[16] = 257;
  *(v7 + 34) = 1;
  v7[18] = 257;
  *(v7 + 11) = 0;
  CFArrayAppendValue(*(a1 + 88), v7);
  result = 0;
  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

CFIndex MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(uint64_t a1, const __CFAllocator *a2, uint64_t a3, const __CFURL *a4, CFIndex appended)
{
  v10 = a1;
  v207 = *MEMORY[0x1E69E9840];
  v178 = 0;
  memset(v177, 0, sizeof(v177));
  v11 = *(a1 + 8);
  blockBufferOut = 0;
  v176 = 0;
  if (!isMovieHeaderMakerSupportedFileType(a3))
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950963, "< MovieHeaderMaker >", 1573, v5);
LABEL_147:
    appended = v122;
    v129 = 0;
    goto LABEL_126;
  }

  if (!appended)
  {
    v123 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, 4294950965, "< MovieHeaderMaker >", 1574, v5);
    goto LABEL_147;
  }

  v128 = appended;
  if (a4)
  {
    v129 = CFURLCopyPathExtension(a4);
    if (FigGetFileTypeForMovieFamilyExtension(v129))
    {
      FigCFEqual();
    }
  }

  else
  {
    v129 = 0;
  }

  TrackReferenceDictionary = MovieInformationCreateTrackReferenceDictionary(a2, v11, &v176);
  if (TrackReferenceDictionary)
  {
    goto LABEL_134;
  }

  v13 = v176;
  *(v10 + 96) = a4;
  *(v10 + 104) = v13;
  *(v10 + 112) = a3;
  *(v10 + 120) = FigFileTypeIsISOFileType(a3);
  TrackReferenceDictionary = CMBlockBufferCreateEmpty(a2, 0x20u, 0, &blockBufferOut);
  if (TrackReferenceDictionary)
  {
    goto LABEL_134;
  }

  TrackReferenceDictionary = FigAtomWriterInitWithBlockBuffer();
  if (TrackReferenceDictionary)
  {
    goto LABEL_134;
  }

  if ((*(v10 + 16) & 2) != 0)
  {
    TrackCount = MovieInformationGetTrackCount(v11);
    if (TrackCount >= 1)
    {
      v15 = TrackCount;
      v16 = 0;
      while (1)
      {
        v17 = OUTLINED_FUNCTION_517();
        TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(v17, v18);
        TrackReferenceDictionary = addTrack(v10, TrackForTrackIndex, 0);
        if (TrackReferenceDictionary)
        {
          break;
        }

        if (v15 == ++v16)
        {
          goto LABEL_15;
        }
      }

LABEL_134:
      appended = TrackReferenceDictionary;
      goto LABEL_126;
    }
  }

LABEL_15:
  v20 = *(v10 + 88);
  if (v20)
  {
    Count = CFArrayGetCount(v20);
  }

  else
  {
    Count = 0;
  }

  PSSHDataEntries = FigAtomWriterBeginAtom();
  if (PSSHDataEntries)
  {
    goto LABEL_143;
  }

  v127 = v5;
  *&v22 = OUTLINED_FUNCTION_17_38();
  v23 = *(v10 + 8);
  v182 = 0;
  v193 = 0.0;
  *&v189 = 0.0;
  memset(newTimescale, 0, sizeof(newTimescale));
  LODWORD(v185) = 0;
  *v183 = v22;
  v184 = v22;
  MovieInformationGetMovieDuration(v23, &valuePtr);
  value = valuePtr;
  NextTrackID = MovieInformationGetNextTrackID(v23);
  v200 = 0;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  *theString = 0u;
  v195 = 0u;
  memset(v206, 0, 32);
  v204 = 0u;
  v205 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (MovieInformationGetBasicMetrics(v23, &v193, &v189, newTimescale, v183))
  {
    goto LABEL_142;
  }

  v174 = v10;
  if (FigCFEqual())
  {
    v26 = *(v10 + 88);
    if (v26)
    {
      v27 = CFArrayGetCount(v26);
      v188 = **&MEMORY[0x1E6960CC0];
      if (v27 >= 1)
      {
        v28 = v27;
        v29 = 0;
        appended = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 88), appended);
          if (MovieTrackGetMediaTimeScale(*ValueAtIndex))
          {
            memset(&time, 0, sizeof(time));
            MediaDurationValue = MovieTrackGetMediaDurationValue(*ValueAtIndex);
            MediaTimeScale = MovieTrackGetMediaTimeScale(*ValueAtIndex);
            CMTimeMake(&time, MediaDurationValue, MediaTimeScale);
            time1 = time;
            time2 = v188;
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              v188 = time;
              v29 = *ValueAtIndex;
            }

            v10 = v174;
          }

          ++appended;
        }

        while (v28 != appended);
        if (v29)
        {
          memset(&time, 0, sizeof(time));
          time1 = v188;
          CMTimeConvertScale(&time, &time1, newTimescale[0], kCMTimeRoundingMethod_QuickTime);
          value = time.value;
        }
      }
    }
  }

  if (MovieInformationGetTimeInfo(v23, &v182, &newTimescale[1]))
  {
    goto LABEL_142;
  }

  v33 = MEMORY[0x1E695E460];
  if ((*(v10 + 16) & 1) == 0)
  {
    *&newTimescale[1] = (CFAbsoluteTimeGetCurrent() + *v33);
  }

  v34 = v193;
  v35 = *&v189;
  if (FigAtomWriterInitWithParent() || FigAtomWriterBeginAtom())
  {
LABEL_142:
    OUTLINED_FUNCTION_34_25();
    goto LABEL_138;
  }

  v36 = bswap32(vcvtd_n_s64_f64(v34, 0x10uLL));
  v37 = bswap32(vcvtd_n_s64_f64(v35, 8uLL));
  v38 = bswap32(NextTrackID);
  if (HIDWORD(value) || HIDWORD(v182) || HIDWORD(*&newTimescale[1]))
  {
    appended = buffer;
    *(buffer + 4) = bswap64(v182);
    *(&buffer[1] + 4) = bswap64(*&newTimescale[1]);
    LODWORD(buffer[0]) = 1;
    HIDWORD(buffer[2]) = bswap32(newTimescale[0]);
    buffer[3] = bswap64(value);
    LODWORD(buffer[4]) = v36;
    HIDWORD(buffer[4]) = HIWORD(v37);
    buffer[5] = 0;
    figMatrixToBigEndianMatrixRecord(v183, &v204);
    memset(v206 + 4, 0, 24);
    HIDWORD(v206[1]) = v38;
  }

  else
  {
    LODWORD(theString[0]) = 0;
    HIDWORD(theString[0]) = bswap32(v182);
    theString[1] = _byteswap_uint64(*newTimescale);
    *&v195 = __PAIR64__(v36, bswap32(value));
    *(&v195 + 1) = HIWORD(v37);
    LODWORD(v196) = 0;
    figMatrixToBigEndianMatrixRecord(v183, &v196 + 4);
    v199 = 0uLL;
    *(&v198 + 1) = 0;
    v200 = v38;
  }

  FigAtomWriterAppendData();
  OUTLINED_FUNCTION_34_25();
  v39 = FigAtomWriterEndAtom();
  if (appended)
  {
    goto LABEL_139;
  }

  if (Count >= 1)
  {
    v47 = 0;
    v48 = *v33;
    v164 = &v195 + 12;
    v166 = &v195 + 8;
    v168 = &v196 + 2;
    v170 = &v196;
    v160 = &v196 + 6;
    v162 = &v196 + 4;
    v156 = &v198 + 12;
    v158 = &v196 + 8;
    v152 = &buffer[4] + 4;
    v154 = &v199;
    v148 = &buffer[5] + 4;
    v150 = &buffer[5];
    v144 = &v204;
    v146 = &buffer[5] + 6;
    v140 = &v204 + 4;
    v142 = &v204 + 2;
    v136 = v206 + 12;
    v138 = v206 + 8;
    v135 = &v191 + 4;
    v133 = @"com.apple.m4v-video";
    v134 = &v191 + 6;
    v132 = @"com.apple.quicktime.mdta";
    v131 = @"com.apple.quicktime.udta";
    v130 = @"org.mp4ra";
    while (1)
    {
      v49 = CFArrayGetValueAtIndex(*(v10 + 88), v47);
      v39 = hasFormatDescriptionAndNonZeroMediaTimeScale(*v49);
      if (v39)
      {
        break;
      }

      if (++v47 == Count)
      {
        goto LABEL_73;
      }
    }

    v186 = 0;
    v184 = 0u;
    v185 = 0u;
    *v183 = 0u;
    v50 = FigAtomWriterInitWithParent();
    if (v50 || (v50 = FigAtomWriterBeginAtom(), v50))
    {
      appended = v50;
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_17_38();
    v51 = *v49;
    time1.value = 0;
    time2.value = 0;
    LODWORD(v182) = 0;
    TrackDurationValue = MovieTrackGetTrackDurationValue(v51);
    Volume = MovieTrackGetVolume(v51);
    Layer = MovieTrackGetLayer(v51);
    DefaultAlternateGroupID = MovieTrackGetDefaultAlternateGroupID(v51);
    v63 = DefaultAlternateGroupID;
    newTimescale[1] = 0;
    v193 = 0.0;
    v192 = 0;
    valuePtr = 0u;
    v191 = 0u;
    LODWORD(v199) = 0;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    *theString = 0u;
    v205 = 0u;
    v206[0] = 0u;
    v204 = 0u;
    memset(buffer, 0, sizeof(buffer));
    if (*(v10 + 120))
    {
      MovieTrackGetTrackType(*v49);
      OUTLINED_FUNCTION_21_32();
      if (v64)
      {
        v65 = 5;
      }

      else
      {
        v65 = 1;
      }

      if (DefaultAlternateGroupID == 1885954932)
      {
        v66 = 7;
      }

      else
      {
        v66 = v65;
      }
    }

    else
    {
      v66 = 15;
    }

    if (OUTLINED_FUNCTION_41_22(DefaultAlternateGroupID, v56, v57, v58, v59, v60, v61, v62, v124, v126, v5, v128, v129, @"org.mp4ra", @"com.apple.quicktime.udta", @"com.apple.quicktime.mdta", @"com.apple.m4v-video", &v191 + 6, &v191 + 4, v206 + 12, v206 + 8, &v204 + 4, &v204 + 2, &v204, &buffer[5] + 6, &buffer[5] + 4, &buffer[5], &buffer[4] + 4, &v199, &v198 + 12, &v196 + 8, &v196 + 6, &v196 + 4, &v195 + 12, &v195 + 8, &v196 + 2, &v196, v172, Count, @"com.apple.m4a-audio"))
    {
      *&v189 = 0.0;
      OUTLINED_FUNCTION_613();
      BasicMetrics = MovieInformationGetBasicMetrics(v67, v68, v69, v70, 0);
      if (BasicMetrics)
      {
LABEL_133:
        appended = BasicMetrics;
        FigAtomWriterEndAtom();
LABEL_138:
        FigAtomWriterEndAtom();
        goto LABEL_139;
      }

      if (MovieTrackGetMediaTimeScale(v51))
      {
        memset(&v188, 0, sizeof(v188));
        v72 = MovieTrackGetMediaDurationValue(v51);
        v73 = MovieTrackGetMediaTimeScale(v51);
        CMTimeMake(&time, v72, v73);
        CMTimeConvertScale(&v188, &time, v189, kCMTimeRoundingMethod_QuickTime);
        TrackDurationValue = v188.value;
      }
    }

    BasicMetrics = MovieTrackGetBasicInfo(v51, 0, &v182);
    if (!BasicMetrics)
    {
      BasicMetrics = MovieTrackGetTrackTimeInfo(v51, &time1, &time2);
      if (!BasicMetrics)
      {
        if ((*(v10 + 16) & 1) == 0)
        {
          time2.value = (v48 + CFAbsoluteTimeGetCurrent());
        }

        MovieTrackGetSpatialInformation(v51, &newTimescale[1], &v193, &valuePtr);
        v74 = *&newTimescale[1];
        v75 = v193;
        BasicMetrics = FigAtomWriterInitWithParent();
        if (!BasicMetrics)
        {
          BasicMetrics = FigAtomWriterBeginAtom();
          if (!BasicMetrics)
          {
            if (MovieTrackIsEnabled(v51))
            {
              v76 = v66;
            }

            else
            {
              v76 = v66 & 0xE;
            }

            v77 = (TrackDurationValue | time2.value | time1.value) >> 32;
            v78 = bswap32(v76 | ((v77 != 0) << 24));
            if (v77)
            {
              *(buffer + 4) = bswap64(time1.value);
              *(&buffer[1] + 4) = bswap64(time2.value);
              v80 = v151;
              v79 = v153;
              LODWORD(buffer[0]) = v78;
              *(&buffer[2] + 4) = bswap32(v182);
              v81 = v147;
              v82 = v149;
              v84 = v143;
              v83 = v145;
              *(&buffer[3] + 4) = bswap64(TrackDurationValue);
              v86 = v139;
              v85 = v141;
              v87 = v137;
              appended = 96;
            }

            else
            {
              theString[0] = __PAIR64__(bswap32(time1.value), v78);
              v80 = v165;
              v79 = v167;
              theString[1] = _byteswap_uint64(__PAIR64__(time2.value, v182));
              v81 = v169;
              v82 = v171;
              v84 = v161;
              v83 = v163;
              LODWORD(v195) = 0;
              DWORD1(v195) = bswap32(TrackDurationValue);
              v86 = v157;
              v85 = v159;
              v87 = v155;
              appended = 84;
            }

            *v79 = 0;
            *v80 = 0;
            *v82 = bswap32(Layer) >> 16;
            *v81 = bswap32(v63) >> 16;
            *v83 = bswap32(vcvtd_n_s64_f64(Volume, 8uLL)) >> 16;
            *v84 = 0;
            figMatrixToBigEndianMatrixRecord(&valuePtr, v85);
            *v86 = bswap32(vcvtd_n_s64_f64(v74, 0x10uLL));
            *v87 = bswap32(vcvtd_n_s64_f64(v75, 0x10uLL));
            FigAtomWriterAppendData();
            OUTLINED_FUNCTION_34_25();
            FigAtomWriterEndAtom();
            v10 = v174;
            goto LABEL_138;
          }
        }
      }
    }

    goto LABEL_133;
  }

LABEL_73:
  if (*(v10 + 40))
  {
    CMBlockBufferGetDataLength(*(v10 + 40));
    appended = FigAtomWriterAppendBlockBufferData();
  }

  else
  {
    v183[0] = 0;
    memset(buffer, 0, 32);
    *theString = 0u;
    v195 = 0u;
    OUTLINED_FUNCTION_41_22(v39, v40, v41, v42, v43, v44, v45, v46, v124, v126, v5, v128, v129, v130, v131, v132, v133, v134, v135, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, Count, @"com.apple.m4a-audio");
    v88 = 0;
    v89 = 0;
    cf.value = @"com.apple.quicktime.mdta";
    *&cf.timescale = @"com.apple.quicktime.udta";
    cf.epoch = @"org.mp4ra";
    v202 = @"com.apple.itunes";
    do
    {
      v90 = *(&cf.value + v88);
      MovieMetadataItemArray = MovieInformationGetMovieMetadataItemArray(*(v174 + 8), v90);
      if (MovieMetadataItemArray)
      {
        buffer[v89] = v90;
        theString[v89++] = MovieMetadataItemArray;
      }

      v88 += 8;
    }

    while (v88 != 32);
    v10 = v174;
    v92 = OUTLINED_FUNCTION_33_24();
    MetadataSerializerDictionaryWithMetadata = createMetadataSerializerDictionaryWithMetadata(v92, v93, v94, v95, 0, v96, v97, v98, v125);
    v100 = v183[0];
    if (!MetadataSerializerDictionaryWithMetadata)
    {
      MetadataSerializerDictionaryWithMetadata = appendMetadataFromMetadataSerializerDictionary(v183[0], *(v174 + 112), v177);
    }

    appended = MetadataSerializerDictionaryWithMetadata;
    if (v100)
    {
      CFRelease(v100);
    }
  }

  if (appended)
  {
    goto LABEL_139;
  }

  if (*(v10 + 48))
  {
    OUTLINED_FUNCTION_9_57();
    v101 = *(v10 + 88);
    if (v101)
    {
      v102 = CFArrayGetCount(v101);
    }

    else
    {
      v102 = 0;
    }

    v103 = FigAtomWriterInitWithParent();
    if (v103 || (v103 = FigAtomWriterBeginAtom(), v103))
    {
      appended = v103;
      goto LABEL_138;
    }

    if (*(v10 + 64))
    {
      OUTLINED_FUNCTION_2_145();
      LODWORD(time.value) = 0;
      v188.value = 0;
      DWORD2(valuePtr) = 0;
      *&valuePtr = 0;
      OUTLINED_FUNCTION_613();
      if (MovieInformationGetBasicMetrics(v104, v105, v106, v107, 0) || (*v183 = *(v10 + 52), *&v184 = *(v10 + 68), CMTimeConvertScale(&cf, v183, time.value, kCMTimeRoundingMethod_RoundHalfAwayFromZero), v108 = cf.value, FigAtomWriterInitWithParent()) || FigAtomWriterBeginAtom())
      {
LABEL_136:
        OUTLINED_FUNCTION_15_45();
        FigAtomWriterEndAtom();
        goto LABEL_138;
      }

      if (v108 < 0x100000000)
      {
        LODWORD(v188.value) = 0;
        HIDWORD(v188.value) = bswap32(v108);
      }

      else
      {
        LODWORD(valuePtr) = 1;
        *(&valuePtr + 4) = bswap64(v108);
      }

      FigAtomWriterAppendData();
      OUTLINED_FUNCTION_15_45();
      FigAtomWriterEndAtom();
    }

    if (v102 >= 1)
    {
      for (i = 0; v102 != i; ++i)
      {
        v110 = CFArrayGetValueAtIndex(*(v10 + 88), i);
        if (hasFormatDescriptionAndNonZeroMediaTimeScale(*v110))
        {
          OUTLINED_FUNCTION_2_145();
          v111 = *v110;
          LODWORD(v183[0]) = 0;
          memset(&cf, 0, sizeof(cf));
          LODWORD(valuePtr) = 0;
          LODWORD(v188.value) = 0;
          LODWORD(time.value) = 0;
          LODWORD(time1.value) = 0;
          if (MovieTrackGetBasicInfo(v111, 0, v183) || MovieTrackGetTrackExtendsDefaultValues(v111, &valuePtr, &v188, &time, &time1) || FigAtomWriterInitWithParent() || FigAtomWriterBeginAtom())
          {
            goto LABEL_136;
          }

          LODWORD(cf.value) = 0;
          HIDWORD(cf.value) = bswap32(v183[0]);
          *&cf.timescale = _byteswap_uint64(__PAIR64__(valuePtr, v188.value));
          cf.epoch = _byteswap_uint64(__PAIR64__(time.value, time1.value));
          OUTLINED_FUNCTION_26_30();
          FigAtomWriterAppendData();
          OUTLINED_FUNCTION_15_45();
          FigAtomWriterEndAtom();
        }
      }
    }

    FigAtomWriterEndAtom();
  }

  OUTLINED_FUNCTION_2_145();
  v112 = *(v10 + 8);
  theString[0] = 0;
  cf.value = 0;
  v183[0] = 0;
  LODWORD(valuePtr) = 0;
  PSSHDataEntries = MovieInformationGetPSSHDataEntries(v112, theString);
  if (PSSHDataEntries)
  {
LABEL_143:
    appended = PSSHDataEntries;
    goto LABEL_139;
  }

  if (!theString[0])
  {
    goto LABEL_124;
  }

  v113 = FigAtomWriterInitWithParent();
  if (v113)
  {
LABEL_135:
    appended = v113;
    v10 = v174;
LABEL_139:
    FigAtomWriterEndAtom();
    goto LABEL_126;
  }

  if (CFArrayGetCount(theString[0]) < 1)
  {
LABEL_124:
    FigAtomWriterEndAtom();
    v10 = v174;
    goto LABEL_125;
  }

  v114 = 0;
  while (1)
  {
    v115 = CFArrayGetValueAtIndex(theString[0], v114);
    if (!CFDictionaryGetValueIfPresent(v115, @"SystemID", &cf) || !CFDictionaryGetValueIfPresent(v115, @"Data", v183))
    {
      goto LABEL_123;
    }

    DataLength = CMBlockBufferGetDataLength(cf.value);
    v117 = CMBlockBufferGetDataLength(v183[0]);
    if (!DataLength)
    {
      break;
    }

    v118 = v117;
    if (!v117)
    {
      break;
    }

    v113 = FigAtomWriterBeginAtom();
    if (v113)
    {
      goto LABEL_135;
    }

    OUTLINED_FUNCTION_296();
    v113 = FigAtomWriterAppendVersionAndFlags();
    if (v113)
    {
      goto LABEL_135;
    }

    v113 = FigAtomWriterAppendBlockBufferData();
    if (v113)
    {
      goto LABEL_135;
    }

    LODWORD(valuePtr) = bswap32(v118);
    v113 = FigAtomWriterAppendData();
    if (v113)
    {
      goto LABEL_135;
    }

    v113 = FigAtomWriterAppendBlockBufferData();
    if (v113)
    {
      goto LABEL_135;
    }

    v113 = FigAtomWriterEndAtom();
    if (v113)
    {
      goto LABEL_135;
    }

LABEL_123:
    if (++v114 >= CFArrayGetCount(theString[0]))
    {
      goto LABEL_124;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_120();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v124, v126, v127);
  appended = v120;
  FigAtomWriterEndAtom();
  v10 = v174;
  if (!appended)
  {
LABEL_125:
    appended = 0;
    *v128 = blockBufferOut;
    blockBufferOut = 0;
  }

LABEL_126:
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 120) = 0;
  *(v10 + 112) = 0;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v176)
  {
    CFRelease(v176);
  }

  if (v129)
  {
    CFRelease(v129);
  }

  return appended;
}

double getTimeValueToAddToCompositionOffsets(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, _BYTE *a5, _BYTE *a6)
{
  v11 = *(a1 + 8);
  v12 = *a2;
  value = 0;
  LOBYTE(v13) = *(a1 + 120);
  if (!v13)
  {
    goto LABEL_19;
  }

  v13 = *(a2 + 44);
  if (v13 == 1)
  {
    goto LABEL_19;
  }

  v14 = a3;
  if (!v13)
  {
    MovieTrackGetMediaType(v12);
    OUTLINED_FUNCTION_21_32();
    v17 = v17 || v15 == 1986618469;
    if (v17 || v15 == 1885954932)
    {
      v19 = MovieTrackCopyFormatDescriptionArray(v12);
      if (v19)
      {
        v20 = v19;
        HIDWORD(v28) = v14;
        v29 = v6;
        Count = CFArrayGetCount(v19);
        if (Count >= 1)
        {
          v22 = Count;
          v23 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v20, v23);
            if (CMFormatDescriptionGetMediaSubType(ValueAtIndex) == 1635148593)
            {
              break;
            }

            if (v22 == ++v23)
            {
              goto LABEL_17;
            }
          }

          CFRelease(v20);
          goto LABEL_28;
        }

LABEL_17:
        CFRelease(v20);
      }
    }

    LOBYTE(v13) = 1;
    goto LABEL_19;
  }

LABEL_28:
  if (getCompositionOffsetToDTDDeltaShift(v11, v12, v14, &value))
  {
    return result;
  }

  if ((*(a2 + 68) & 0x1D) == 1)
  {
    MediaTimeScale = MovieTrackGetMediaTimeScale(v12);
    memset(&v31, 0, sizeof(v31));
    time = *(a2 + 56);
    CMTimeConvertScale(&v31, &time, MediaTimeScale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    if (v31.value < value)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v29, LODWORD(time.value));
    }

    LOBYTE(v13) = 0;
    value = v31.value;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

LABEL_19:
  v25 = *(a2 + 48);
  if (v25)
  {
    v26 = value;
    v25 = *(a2 + 52) != value;
  }

  else
  {
    *(a2 + 48) = 1;
    v26 = value;
    *(a2 + 52) = value;
  }

  *a4 = v26;
  if (a5)
  {
    *a5 = v13;
  }

  if (a6)
  {
    *a6 = v25;
  }

  return result;
}

uint64_t getCompositionOffsetToDTDDeltaShift(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v11 = 0;
  result = MovieTrackGetCompositionOffsetRange(a1, a2, &v11, 0);
  if (!result)
  {
    if (a3)
    {
      v9 = v11;
    }

    else
    {
      v10 = 0;
      result = MovieTrackFragmentGetCompositionOffsetRange(a1, a2, &v10, 0);
      if (result)
      {
        return result;
      }

      v9 = v11;
      if (v11 >= v10)
      {
        v9 = v10;
      }
    }

    result = 0;
    *a4 = -v9 & (v9 >> 31);
  }

  return result;
}

uint64_t appendMediaInfoAtom(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v846 = *MEMORY[0x1E69E9840];
  v802 = 0;
  *v752 = 0u;
  v777 = 0u;
  *v727 = 0u;
  v6 = FigAtomWriterInitWithParent();
  if (v6 || (v6 = FigAtomWriterBeginAtom(), v6))
  {
    BlockBufferWithCFDataNoCopy = v6;
    goto LABEL_302;
  }

  MovieTrackGetMediaType(*a2);
  OUTLINED_FUNCTION_21_32();
  v8 = v8 || v7 == 1986618469;
  if (v8)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_35_20();
  if (v9 == v10)
  {
    OUTLINED_FUNCTION_0_161();
    *&v838 = 0;
    if (FigAtomWriterInitWithParent() || FigAtomWriterBeginAtom())
    {
      goto LABEL_16;
    }

    *&v838 = 0;
    goto LABEL_15;
  }

  if (v9 == 1885954932)
  {
LABEL_9:
    OUTLINED_FUNCTION_0_161();
    DWORD2(v838) = 0;
    *&v838 = 0;
    v11 = *(a1 + 120) == 0;
    if (FigAtomWriterInitWithParent() || FigAtomWriterBeginAtom())
    {
      goto LABEL_16;
    }

    LODWORD(v838) = 0x1000000;
    *(&v838 + 4) = OUTLINED_FUNCTION_31_26(vcltz_s32(vshl_n_s32(vdup_n_s32(v11), 0x1FuLL)), 0x8000004000);
LABEL_15:
    FigAtomWriterAppendData();
LABEL_16:
    OUTLINED_FUNCTION_20_32();
    goto LABEL_17;
  }

  if (*(a1 + 120))
  {
    OUTLINED_FUNCTION_0_161();
    if (!FigAtomWriterInitWithParent() && !FigAtomWriterBeginAtom())
    {
      OUTLINED_FUNCTION_296();
      FigAtomWriterAppendVersionAndFlags();
    }

    goto LABEL_16;
  }

  v831 = 0;
  v829 = 0u;
  v830 = 0u;
  *cf = 0u;
  MediaType = MovieTrackGetMediaType(*a2);
  v410 = FigAtomWriterInitWithParent();
  if (v410 || (v410 = FigAtomWriterBeginAtom(), v410))
  {
    BlockBufferWithCFDataNoCopy = v410;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_161();
  v411 = *(a1 + 120) == 0;
  if (FigAtomWriterInitWithParent() || FigAtomWriterBeginAtom())
  {
LABEL_345:
    OUTLINED_FUNCTION_20_32();
    goto LABEL_346;
  }

  *(&v838 + 4) = OUTLINED_FUNCTION_31_26(vcltz_s32(vshl_n_s32(vdup_n_s32(v411), 0x1FuLL)), 0x8000004000);
  LODWORD(v838) = 0;
  HIDWORD(v838) = 0;
  FigAtomWriterAppendData();
  OUTLINED_FUNCTION_20_32();
  FigAtomWriterEndAtom();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_17;
  }

  if (MediaType == 1952807028)
  {
    OUTLINED_FUNCTION_0_161();
    MovieTrackGetTrackType(*a2);
    v838 = 0x3F800000uLL;
    *(v839 + 4) = 0;
    *(&v839[1] + 4) = 0x3F80000000000000;
    LODWORD(v839[0]) = 1065353216;
    LODWORD(v835) = 0;
    *blockBufferOut = 0u;
    *v834 = 0u;
    if (!FigAtomWriterInitWithParent() && !FigAtomWriterBeginAtom())
    {
      figMatrixToBigEndianMatrixRecord(&v838, blockBufferOut);
      FigAtomWriterAppendData();
    }

    goto LABEL_345;
  }

  if (MediaType == 1953325924)
  {
    *&v412 = OUTLINED_FUNCTION_8_61();
    v836 = 0;
    *v834 = v412;
    v835 = v412;
    *blockBufferOut = v412;
    v413 = *a2;
    memset(relativeURL, 0, 20);
    bzero(buffer, 0x100uLL);
    MovieTrackGetTrackType(v413);
    LOBYTE(temporaryBlock) = 0;
    MovieTrackGetTimecodeMustBeShown(v413, &temporaryBlock);
    if (!appended)
    {
      appended = FigAtomWriterInitWithParent();
      if (!appended)
      {
        appended = FigAtomWriterBeginAtom();
        if (!appended)
        {
          appended = FigAtomWriterInitWithParent();
          if (!appended)
          {
            appended = FigAtomWriterBeginAtom();
            if (!appended)
            {
              appended = FigAtomWriterAppendVersionAndFlags();
              if (!appended)
              {
                *relativeURL = 5632;
                *&relativeURL[4] = 3072;
                *&relativeURL[6] = 0;
                *&relativeURL[14] = -1;
                *&relativeURL[18] = -1;
                appended = FigAtomWriterAppendData();
                if (!appended)
                {
                  SystemEncoding = CFStringGetSystemEncoding();
                  if (!CFStringGetPascalString(@"Courier", buffer, 256, SystemEncoding))
                  {
                    BlockBufferWithCFDataNoCopy = 4294950961;
                    goto LABEL_320;
                  }

                  appended = FigAtomWriterAppendData();
                }
              }
            }
          }
        }
      }
    }

    BlockBufferWithCFDataNoCopy = appended;
LABEL_320:
    FigAtomWriterEndAtom();
LABEL_346:
    FigAtomWriterEndAtom();
    goto LABEL_17;
  }

  BlockBufferWithCFDataNoCopy = 0;
LABEL_17:
  FigAtomWriterEndAtom();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_302;
  }

  if (!*(a1 + 120))
  {
    OUTLINED_FUNCTION_8_61();
    bzero(buffer, 0x100uLL);
    blockBufferOut[0] = 0;
    blockBufferOut[1] = 0;
    LOWORD(v834[1]) = 0;
    v834[0] = 0;
    v12 = FigAtomWriterInitWithParent();
    if (v12)
    {
      goto LABEL_386;
    }

    v12 = FigAtomWriterBeginAtom();
    if (v12)
    {
      goto LABEL_386;
    }

    *blockBufferOut = xmmword_196E78CB0;
    v834[0] = 0;
    v12 = FigAtomWriterAppendData();
    if (v12)
    {
      goto LABEL_386;
    }

    v13 = CFStringGetSystemEncoding();
    PascalString = CFStringGetPascalString(@"Core Media Data Handler", buffer, 256, v13);
    if (!PascalString)
    {
      BlockBufferWithCFDataNoCopy = 4294950961;
      goto LABEL_301;
    }

    OUTLINED_FUNCTION_14_49(PascalString, v15, v16, v17, v18, v19, v20, v21, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, v645, v659, v672, v685, v698, allocator, 0, 0, 0, 0, 0, 0, 0, v815, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
    BlockBufferWithCFDataNoCopy = FigAtomWriterAppendData();
    FigAtomWriterEndAtom();
    if (BlockBufferWithCFDataNoCopy)
    {
      goto LABEL_302;
    }
  }

  OUTLINED_FUNCTION_8_61();
  v12 = FigAtomWriterInitWithParent();
  if (v12 || (v12 = FigAtomWriterBeginAtom(), v12))
  {
LABEL_386:
    BlockBufferWithCFDataNoCopy = v12;
    goto LABEL_301;
  }

  OUTLINED_FUNCTION_0_161();
  LODWORD(blockBufferOut[1]) = 0;
  blockBufferOut[0] = 0;
  v22 = *a2;
  cf[0] = 0;
  NumDataSources = MovieTrackGetNumDataSources(v22);
  v31 = MEMORY[0x1E695E480];
  v699 = a1;
  v646 = a2;
  if (!NumDataSources)
  {
    BlockBufferWithCFDataNoCopy = 0;
LABEL_64:
    FigAtomWriterEndAtom();
    v43 = 0;
    goto LABEL_65;
  }

  v32 = NumDataSources;
  OUTLINED_FUNCTION_14_49(NumDataSources, v24, v25, v26, v27, v28, v29, v30, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, a2, v659, v672, v685, a1, allocator, v727[0], v727[1], v752[0], v752[1], v777, *(&v777 + 1), v802, v815, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
  v33 = FigAtomWriterInitWithParent();
  if (v33 || (v33 = FigAtomWriterBeginAtom(), v33) || (OUTLINED_FUNCTION_296(), v33 = FigAtomWriterAppendVersionAndFlags(), v33) || (*relativeURL = bswap32(v32), v33 = FigAtomWriterAppendData(), v33))
  {
    BlockBufferWithCFDataNoCopy = v33;
    goto LABEL_64;
  }

  v37 = 0;
  allocatora = 0;
  v38 = *v31;
  while (1)
  {
    *relativeURL = 0;
    MovieTrackGetDataSourceAtIndex(*(a1 + 8), v22, v37, 0, relativeURL, v34, v35, v36, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, v646, v659, v672, v685);
    if (v39)
    {
      goto LABEL_389;
    }

    if (*relativeURL && !FigCFEqual())
    {
      break;
    }

    if (*(a1 + 120))
    {
      v40 = 543978101;
    }

    else
    {
      v40 = 1936288865;
    }

    LODWORD(blockBufferOut[0]) = 201326592;
    HIDWORD(blockBufferOut[0]) = v40;
    LODWORD(blockBufferOut[1]) = 0x1000000;
    v39 = FigAtomWriterAppendData();
    if (v39)
    {
      goto LABEL_389;
    }

LABEL_60:
    if (v32 == ++v37)
    {
      FigAtomWriterEndAtom();
      BlockBufferWithCFDataNoCopy = 0;
      v43 = 0;
      goto LABEL_62;
    }
  }

  if (FigFileTypeDoesSupportExternalSampleReferences(*(a1 + 112)) != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v489, v502, v515);
LABEL_389:
    BlockBufferWithCFDataNoCopy = v39;
    v43 = 0;
LABEL_390:
    FigAtomWriterEndAtom();
    goto LABEL_62;
  }

  v41 = CFURLCopyAbsoluteURL(*relativeURL);
  if (!a2[3])
  {
LABEL_50:
    v43 = v41;
    goto LABEL_51;
  }

  v42 = FigCFURLCreateRelativeURLWithURLAndBaseURL();
  if (v42 == -12996)
  {
    if (allocatora <= 4)
    {
      CFLog();
      ++allocatora;
    }

    goto LABEL_50;
  }

  BlockBufferWithCFDataNoCopy = v42;
  if (v42)
  {
    v43 = v41;
    goto LABEL_390;
  }

  v43 = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
  }

  if (v41)
  {
    CFRelease(v41);
  }

LABEL_51:
  v44 = CFURLGetString(v43);
  Length = CFStringGetLength(v44);
  v46 = MEMORY[0x19A8CC720](v38, Length + 1, 3507656629, 0);
  if (!v46)
  {
    BlockBufferWithCFDataNoCopy = 4294950966;
    goto LABEL_390;
  }

  v47 = v46;
  if (!CFStringGetCString(v44, v46, Length + 1, 0x8000100u))
  {
    BlockBufferWithCFDataNoCopy = 4294950961;
    goto LABEL_393;
  }

  LODWORD(blockBufferOut[0]) = bswap32(Length + 13);
  *(blockBufferOut + 4) = 543978101;
  v48 = FigAtomWriterAppendData();
  if (!v48)
  {
    v48 = FigAtomWriterAppendData();
    if (!v48)
    {
      CFAllocatorDeallocate(v38, v47);
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      a1 = v699;
      if (v43)
      {
        CFRelease(v43);
      }

      a2 = v646;
      goto LABEL_60;
    }
  }

  BlockBufferWithCFDataNoCopy = v48;
LABEL_393:
  FigAtomWriterEndAtom();
  CFAllocatorDeallocate(v38, v47);
LABEL_62:
  v31 = MEMORY[0x1E695E480];
LABEL_65:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  FigAtomWriterEndAtom();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_302;
  }

  OUTLINED_FUNCTION_8_61();
  v12 = FigAtomWriterInitWithParent();
  if (v12)
  {
    goto LABEL_386;
  }

  v12 = FigAtomWriterBeginAtom();
  if (v12)
  {
    goto LABEL_386;
  }

  OUTLINED_FUNCTION_0_161();
  v49 = *v646;
  blockBufferOut[0] = 0;
  v50 = MovieTrackCopyFormatDescriptionArray(v49);
  v51 = v50;
  if (v50)
  {
    Count = CFArrayGetCount(v50);
  }

  else
  {
    Count = 0;
  }

  allocatorb = *v31;
  Mutable = CFArrayCreateMutable(*v31, Count, MEMORY[0x1E695E9C0]);
  v54 = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v489, v502, v515);
LABEL_402:
    BlockBufferWithCFDataNoCopy = SampleDescriptionInformationAtIndex;
    goto LABEL_158;
  }

  if (Count < 1)
  {
    LODWORD(v672) = 0;
LABEL_147:
    NumSampleDescriptions = MovieTrackGetNumSampleDescriptions(v49);
    if (!NumSampleDescriptions)
    {
LABEL_157:
      BlockBufferWithCFDataNoCopy = 0;
      goto LABEL_158;
    }

    v123 = NumSampleDescriptions;
    OUTLINED_FUNCTION_14_49(NumSampleDescriptions, v116, v117, v118, v119, v120, v121, v122, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, v646, v659, v672, v685, v699, allocatorb, v727[0], v727[1], v752[0], v752[1], v777, *(&v777 + 1), v802, v815, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
    SampleDescriptionInformationAtIndex = FigAtomWriterInitWithParent();
    if (!SampleDescriptionInformationAtIndex)
    {
      SampleDescriptionInformationAtIndex = FigAtomWriterBeginAtom();
      if (!SampleDescriptionInformationAtIndex)
      {
        SampleDescriptionInformationAtIndex = FigAtomWriterAppendVersionAndFlags();
        if (!SampleDescriptionInformationAtIndex)
        {
          LODWORD(cf[0]) = bswap32(v123);
          SampleDescriptionInformationAtIndex = FigAtomWriterAppendData();
          if (!SampleDescriptionInformationAtIndex)
          {
            v124 = 0;
            while (1)
            {
              cf[0] = -1;
              v842 = 0;
              *relativeURL = -1;
              temporaryBlock = 0;
              SampleDescriptionInformationAtIndex = MovieTrackGetSampleDescriptionInformationAtIndex(v49, v124, cf, relativeURL);
              if (SampleDescriptionInformationAtIndex)
              {
                break;
              }

              Count = CFArrayGetValueAtIndex(v54, cf[0]);
              *&relativeURL[20] = bswap32(*relativeURL + 1) >> 16;
              SampleDescriptionInformationAtIndex = CMBlockBufferReplaceDataBytes(&relativeURL[20], Count, 0xEuLL, 2uLL);
              if (SampleDescriptionInformationAtIndex)
              {
                break;
              }

              OUTLINED_FUNCTION_613();
              SampleDescriptionInformationAtIndex = CMBlockBufferGetDataPointer(v125, v126, v127, v128, v129);
              if (SampleDescriptionInformationAtIndex)
              {
                break;
              }

              FigAtomWriterAppendData();
              if (v123 == ++v124)
              {
                goto LABEL_157;
              }
            }
          }
        }
      }
    }

    goto LABEL_402;
  }

  v55 = 0;
  LODWORD(v672) = 0;
  v606 = *MEMORY[0x1E6960610];
  v619 = @"public.3gpp";
  v659 = *MEMORY[0x1E6960618];
  v593 = *MEMORY[0x1E69601C8];
  v541 = @"com.apple.m4a-audio";
  v554 = @"com.apple.m4v-video";
  v56 = 1;
  v567 = *MEMORY[0x1E69601D8];
  v528 = *MEMORY[0x1E6962858];
  v515 = *MEMORY[0x1E69601D0];
  flavor = *MEMORY[0x1E6960628];
  extensionKey = *MEMORY[0x1E69600D0];
  v685 = Mutable;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v51, v55);
    v58 = CMFormatDescriptionGetMediaType(ValueAtIndex);
    MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
    if (v58 == 1668047728)
    {
      v85 = OUTLINED_FUNCTION_3_121(MediaSubType, v60, v61, v62, v63, v64, v65, v66, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, v646, v659, v672, v685, v699, allocatorb);
      v89 = CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(v85, v86, v87, v88);
      goto LABEL_116;
    }

    if (v58 != 1751216244)
    {
      break;
    }

    OUTLINED_FUNCTION_3_121(MediaSubType, v60, v61, v62, v63, v64, v65, v66, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, v646, v659, v672, v685, v699, allocatorb);
    v89 = CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer();
LABEL_116:
    BlockBufferWithCFDataNoCopy = v89;
    v73 = 0;
    if (v89)
    {
      goto LABEL_158;
    }

LABEL_117:
    OUTLINED_FUNCTION_35_20();
    if (v58 == v97)
    {
      goto LABEL_118;
    }

LABEL_128:
    OUTLINED_FUNCTION_613();
    IsRangeContiguous = CMBlockBufferIsRangeContiguous(v105, v106, v107);
    v109 = blockBufferOut[0];
    if (!IsRangeContiguous)
    {
      cf[0] = 0;
      SampleDescriptionInformationAtIndex = CMBlockBufferCreateContiguous(allocatorb, blockBufferOut[0], allocatorb, 0, 0, 0, 0, cf);
      if (SampleDescriptionInformationAtIndex)
      {
        goto LABEL_402;
      }

      v110 = blockBufferOut[0];
      blockBufferOut[0] = cf[0];
      if (cf[0])
      {
        CFRetain(cf[0]);
      }

      if (v110)
      {
        CFRelease(v110);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v109 = blockBufferOut[0];
    }

    CFArrayAppendValue(v54, v109);
    if (blockBufferOut[0])
    {
      CFRelease(blockBufferOut[0]);
      blockBufferOut[0] = 0;
    }

    v55 = v56;
    if (Count <= v56++)
    {
      goto LABEL_147;
    }
  }

  if (v58 == 1835365473)
  {
    v93 = OUTLINED_FUNCTION_3_121(MediaSubType, v60, v61, v62, v63, v64, v65, v66, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, v646, v659, v672, v685, v699, allocatorb);
    v89 = CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(v93, v94, v95, v96);
    goto LABEL_116;
  }

  v67 = v49;
  v68 = Count;
  v69 = v51;
  if (v58 == 1935832172)
  {
    goto LABEL_99;
  }

  if (v58 == 1935893870)
  {
    OUTLINED_FUNCTION_3_121(MediaSubType, v60, v61, v62, v63, v64, v65, v66, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, v646, v659, v672, v685, v699, allocatorb);
    v80 = CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer();
    goto LABEL_102;
  }

  Count = *(v699 + 112);
  v70 = *(v699 + 120);
  OUTLINED_FUNCTION_35_20();
  if (v58 == v71)
  {
    v90 = FigCFEqual();
    v91 = v659;
    if (!v70)
    {
      v91 = 0;
    }

    if (v90)
    {
      v73 = v606;
    }

    else
    {
      v73 = v91;
    }

    SampleDescriptionInformationAtIndex = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(allocatorb, ValueAtIndex, v73, blockBufferOut);
    v51 = v69;
    Count = v68;
    v49 = v67;
    v54 = v685;
    if (SampleDescriptionInformationAtIndex)
    {
      goto LABEL_402;
    }

LABEL_118:
    v98 = CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(blockBufferOut[0], v73);
    OUTLINED_FUNCTION_613();
    SampleOverrides = MovieTrackGetSampleOverrides(v99, v100, v101);
    if (!v98 || SampleOverrides)
    {
      if (FigCFEqual())
      {
        v103 = MEMORY[0x19A8D3150](blockBufferOut[0], 1);
        v104 = v672;
        if (v103)
        {
          v104 = 1;
        }

        LODWORD(v672) = v104;
      }
    }

    else
    {
      if (blockBufferOut[0])
      {
        CFRelease(blockBufferOut[0]);
        blockBufferOut[0] = 0;
      }

      SampleDescriptionInformationAtIndex = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(allocatorb, ValueAtIndex, flavor, blockBufferOut);
      if (SampleDescriptionInformationAtIndex)
      {
        goto LABEL_402;
      }
    }

    goto LABEL_128;
  }

  switch(v58)
  {
    case 0x74657874u:
LABEL_99:
      v76 = OUTLINED_FUNCTION_3_121(MediaSubType, v60, v61, v62, v63, v64, v65, v66, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, v646, v659, v672, v685, v699, allocatorb);
      v80 = CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(v76, v77, v78, v79);
LABEL_102:
      BlockBufferWithCFDataNoCopy = v80;
      v73 = 0;
      goto LABEL_103;
    case 0x746D6364u:
      v81 = OUTLINED_FUNCTION_3_121(MediaSubType, v60, v61, v62, v63, v64, v65, v66, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, v646, v659, v672, v685, v699, allocatorb);
      v80 = CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(v81, v82, v83, v84);
      goto LABEL_102;
    case 0x76696465u:
      v72 = MediaSubType;
      v73 = v593;
      if (!FigCFEqual())
      {
        v73 = v567;
        if (!FigCFEqual())
        {
          v73 = v567;
          if (!FigCFEqual())
          {
            if (v70)
            {
              v75 = v72 == 1635148595 || v72 == 1685481573 || v72 == 1751479857;
              v73 = v528;
              if (!v75)
              {
                v73 = v515;
              }
            }

            else
            {
              v73 = 0;
            }
          }
        }
      }

      v114 = CFStringGetSystemEncoding();
      BlockBufferWithCFDataNoCopy = CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(allocatorb, ValueAtIndex, v114, v73, blockBufferOut);
LABEL_103:
      v51 = v69;
LABEL_104:
      Count = v68;
      v49 = v67;
      v54 = v685;
      if (BlockBufferWithCFDataNoCopy)
      {
        goto LABEL_158;
      }

      goto LABEL_117;
  }

  Extension = CMFormatDescriptionGetExtension(ValueAtIndex, extensionKey);
  if (!Extension)
  {
    BlockBufferWithCFDataNoCopy = 4294950962;
    v51 = v69;
    goto LABEL_399;
  }

  Count = Extension;
  v113 = CFGetTypeID(Extension);
  v51 = v69;
  if (v113 == CFDataGetTypeID())
  {
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    v73 = 0;
    goto LABEL_104;
  }

  BlockBufferWithCFDataNoCopy = 4294950962;
LABEL_399:
  v54 = v685;
LABEL_158:
  FigAtomWriterEndAtom();
  if (blockBufferOut[0])
  {
    CFRelease(blockBufferOut[0]);
  }

  v130 = v699;
  v131 = v646;
  if (v54)
  {
    CFRelease(v54);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_301;
  }

  v12 = appendSampleGroupDescriptionAtoms(v646, MovieTrackCopySampleGroupDescriptionArrays, &v838);
  if (v12)
  {
    goto LABEL_386;
  }

  v12 = appendSampleToGroupAtoms(v699, v646, MovieTrackCopySampleGroupArray, &v838);
  if (v12)
  {
    goto LABEL_386;
  }

  OUTLINED_FUNCTION_0_161();
  v132 = *v646;
  v133 = MovieSampleTableNumTimeToSampleEntries(*v646);
  TimeToSampleTable = MovieSampleTableGetTimeToSampleTable(v132);
  OUTLINED_FUNCTION_14_49(TimeToSampleTable, v135, v136, v137, v138, v139, v140, v141, v489, v502, v515, v528, v541, v554, v567, extensionKey, v593, v606, v619, flavor, v646, v659, v672, v685, v699, allocatorb, v727[0], v727[1], v752[0], v752[1], v777, *(&v777 + 1), v802, v815, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
  CompositionOffsetRange = FigAtomWriterInitWithParent();
  if (CompositionOffsetRange)
  {
    goto LABEL_382;
  }

  CompositionOffsetRange = FigAtomWriterBeginAtom();
  if (CompositionOffsetRange)
  {
    goto LABEL_382;
  }

  OUTLINED_FUNCTION_296();
  CompositionOffsetRange = FigAtomWriterAppendVersionAndFlags();
  if (CompositionOffsetRange)
  {
    goto LABEL_382;
  }

  v150 = OUTLINED_FUNCTION_6_87(CompositionOffsetRange, v143, v144, v145, v146, v147, v148, v149, v490, v503, v516, v529, v542, v555, v568, extensionKeya, v594, v607, v620, flavora, v647, v660, v673, v686, v700, allocatorc, v728, v740, v753, v765, v778, v790, v803, v816, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
  BlockBufferWithCFDataNoCopy = v150;
  if (!v150 && TimeToSampleTable)
  {
    OUTLINED_FUNCTION_11_58(v150, v151, v152, 8 * v133, v153, v154, v155, v156, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
    BlockBufferWithCFDataNoCopy = FigAtomWriterAppendBlockBufferData();
  }

  FigAtomWriterEndAtom();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_301;
  }

  OUTLINED_FUNCTION_0_161();
  v157 = OUTLINED_FUNCTION_32_25();
  v158 = MovieSampleTableNumCompositionOffsetEntries(v157);
  if (!v158 || (v159 = v158, v158 == 1) && !MovieSampleTableGetCompositionOffsetDisplayOffset(Count, 0))
  {
    FigAtomWriterEndAtom();
    goto LABEL_178;
  }

  LODWORD(temporaryBlock) = 0;
  CompositionOffsetTable = MovieSampleTableGetCompositionOffsetTable(Count);
  LOBYTE(v842) = 0;
  getTimeValueToAddToCompositionOffsets(v130, v131, 1, &temporaryBlock, &v842, 0);
  if (CompositionOffsetRange)
  {
    goto LABEL_382;
  }

  v423 = temporaryBlock;
  if (!temporaryBlock)
  {
    v431 = 0;
LABEL_350:
    DataLength = CMBlockBufferGetDataLength(CompositionOffsetTable);
    OUTLINED_FUNCTION_14_49(DataLength, v445, v446, v447, v448, v449, v450, v451, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
    if (!FigAtomWriterInitWithParent() && !FigAtomWriterBeginAtom())
    {
      v452 = FigAtomWriterAppendVersionAndFlags();
      if (!v452)
      {
        v460 = OUTLINED_FUNCTION_6_87(v452, v453, v454, v455, v456, v457, v458, v459, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
        if (!v460)
        {
          OUTLINED_FUNCTION_22_31(v460, v461, v462, v463, v464, v465, v466, v467, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
          FigAtomWriterAppendBlockBufferData();
        }
      }
    }

    OUTLINED_FUNCTION_20_32();
    FigAtomWriterEndAtom();
    if (v431)
    {
      CFRelease(v431);
    }

LABEL_178:
    if (!*(v130 + 120))
    {
      OUTLINED_FUNCTION_0_161();
      v160 = *v131;
      v161 = MovieSampleTableNumCompositionOffsetEntries(*v131);
      if (v161 && (v161 != 1 || MovieSampleTableGetCompositionOffsetDisplayOffset(v160, 0)))
      {
        LODWORD(v842) = 0;
        *&relativeURL[16] = 0;
        *blockBufferOut = *MEMORY[0x1E6960C70];
        v834[0] = *(MEMORY[0x1E6960C70] + 16);
        *cf = *blockBufferOut;
        *&v829 = v834[0];
        LODWORD(temporaryBlock) = 0;
        v162 = OUTLINED_FUNCTION_517();
        CompositionOffsetRange = MovieTrackGetCompositionOffsetRange(v162, v163, v164, 0);
        if (CompositionOffsetRange)
        {
          goto LABEL_382;
        }

        v165 = temporaryBlock;
        v166 = OUTLINED_FUNCTION_517();
        CompositionOffsetRange = MovieTrackGetCompositionOffsetRange(v166, v167, v168, v169);
        if (CompositionOffsetRange)
        {
          goto LABEL_382;
        }

        v170 = OUTLINED_FUNCTION_517();
        DisplayTimeRange = MovieTrackGetDisplayTimeRange(v170, v171, v172, v173);
        OUTLINED_FUNCTION_14_49(DisplayTimeRange, v175, v176, v177, v178, v179, v180, v181, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
        CompositionOffsetRange = FigAtomWriterInitWithParent();
        if (CompositionOffsetRange)
        {
          goto LABEL_382;
        }

        CompositionOffsetRange = FigAtomWriterBeginAtom();
        if (CompositionOffsetRange)
        {
          goto LABEL_382;
        }

        OUTLINED_FUNCTION_296();
        CompositionOffsetRange = FigAtomWriterAppendVersionAndFlags();
        if (CompositionOffsetRange)
        {
          goto LABEL_382;
        }

        *relativeURL = _byteswap_uint64(__PAIR64__(-v165 & (v165 >> 31), v842));
        *&relativeURL[8] = _byteswap_uint64(__PAIR64__(*&relativeURL[20], blockBufferOut[0]));
        *&relativeURL[16] = bswap32(cf[0]);
        FigAtomWriterAppendData();
        OUTLINED_FUNCTION_20_32();
        FigAtomWriterEndAtom();
      }

      else
      {
        FigAtomWriterEndAtom();
      }
    }

    OUTLINED_FUNCTION_0_161();
    v182 = OUTLINED_FUNCTION_32_25();
    SyncSampleTable = MovieSampleTableGetSyncSampleTable(v182);
    if (SyncSampleTable)
    {
      v184 = SyncSampleTable;
      Count = MovieSampleTableNumSyncSampleEntries(Count);
      v185 = CMBlockBufferGetDataLength(v184);
      OUTLINED_FUNCTION_14_49(v185, v186, v187, v188, v189, v190, v191, v192, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
      CompositionOffsetRange = FigAtomWriterInitWithParent();
      if (CompositionOffsetRange)
      {
        goto LABEL_382;
      }

      CompositionOffsetRange = FigAtomWriterBeginAtom();
      if (CompositionOffsetRange)
      {
        goto LABEL_382;
      }

      OUTLINED_FUNCTION_296();
      CompositionOffsetRange = FigAtomWriterAppendVersionAndFlags();
      if (CompositionOffsetRange)
      {
        goto LABEL_382;
      }

      CompositionOffsetRange = OUTLINED_FUNCTION_6_87(CompositionOffsetRange, v193, v194, v195, v196, v197, v198, v199, v492, v505, v518, v531, v544, v557, v570, extensionKeyc, v596, v609, v622, flavorc, v649, v662, v675, v688, v702, allocatore, v730, v742, v755, v767, v780, v792, v805, v818, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
      if (CompositionOffsetRange)
      {
        goto LABEL_382;
      }

      OUTLINED_FUNCTION_11_58(CompositionOffsetRange, v200, v201, v202, v203, v204, v205, v206, v493, v506, v519, v532, v545, v558, v571, extensionKeyd, v597, v610, v623, flavord, v650, v663, v676, v689, v703, allocatorf, v731, v743, v756, v768, v781, v793, v806, v819, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
      FigAtomWriterAppendBlockBufferData();
      OUTLINED_FUNCTION_20_32();
      FigAtomWriterEndAtom();
    }

    else
    {
      FigAtomWriterEndAtom();
    }

    OUTLINED_FUNCTION_0_161();
    v207 = *v131;
    if (MovieSampleTableNumPartialSyncSampleEntries(*v131))
    {
      PartialSyncSampleTable = MovieSampleTableGetPartialSyncSampleTable(v207);
      v209 = CMBlockBufferGetDataLength(PartialSyncSampleTable);
      OUTLINED_FUNCTION_14_49(v209, v210, v211, v212, v213, v214, v215, v216, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
      CompositionOffsetRange = FigAtomWriterInitWithParent();
      if (CompositionOffsetRange)
      {
        goto LABEL_382;
      }

      CompositionOffsetRange = FigAtomWriterBeginAtom();
      if (CompositionOffsetRange)
      {
        goto LABEL_382;
      }

      OUTLINED_FUNCTION_296();
      CompositionOffsetRange = FigAtomWriterAppendVersionAndFlags();
      if (CompositionOffsetRange)
      {
        goto LABEL_382;
      }

      CompositionOffsetRange = OUTLINED_FUNCTION_6_87(CompositionOffsetRange, v217, v218, v219, v220, v221, v222, v223, v494, v507, v520, v533, v546, v559, v572, extensionKeye, v598, v611, v624, flavore, v651, v664, v677, v690, v704, allocatorg, v732, v744, v757, v769, v782, v794, v807, v820, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
      if (CompositionOffsetRange)
      {
        goto LABEL_382;
      }

      OUTLINED_FUNCTION_11_58(CompositionOffsetRange, v224, v225, v226, v227, v228, v229, v230, v495, v508, v521, v534, v547, v560, v573, extensionKeyf, v599, v612, v625, flavorf, v652, v665, v678, v691, v705, allocatorh, v733, v745, v758, v770, v783, v795, v808, v821, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
      FigAtomWriterAppendBlockBufferData();
      OUTLINED_FUNCTION_20_32();
      FigAtomWriterEndAtom();
    }

    else
    {
      FigAtomWriterEndAtom();
    }

    OUTLINED_FUNCTION_0_161();
    v231 = *v131;
    v232 = MovieSampleTableNumSampleDependencyEntries(*v131);
    if (v232)
    {
      Count = v232;
      SampleDependencyTable = MovieSampleTableGetSampleDependencyTable(v231);
      blockBufferOut[0] = 0;
      cf[0] = 0;
      v234 = Count;
      *relativeURL = 0;
      LOBYTE(temporaryBlock) = 0;
      DataPointer = CMBlockBufferCreateWithMemoryBlock(allocatord, 0, Count, allocatord, 0, 0, Count, 1u, blockBufferOut);
      if (!DataPointer)
      {
        OUTLINED_FUNCTION_613();
        DataPointer = CMBlockBufferGetDataPointer(v236, v237, v238, 0, v239);
        if (!DataPointer)
        {
          Count = 0;
          while (1)
          {
            DataPointer = CMBlockBufferAccessDataBytes(SampleDependencyTable, Count, 1uLL, &temporaryBlock, cf);
            if (DataPointer)
            {
              break;
            }

            **relativeURL = *cf[0] & 0xBF;
            OUTLINED_FUNCTION_18_39();
            *relativeURL = v240 + 1;
            if (v234 == ++Count)
            {
              v241 = blockBufferOut[0];
              Count = CMBlockBufferGetDataLength(blockBufferOut[0]);
              OUTLINED_FUNCTION_14_49(Count, v242, v243, v244, v245, v246, v247, v248, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
              if (!FigAtomWriterInitWithParent() && !FigAtomWriterBeginAtom())
              {
                OUTLINED_FUNCTION_296();
                v249 = FigAtomWriterAppendVersionAndFlags();
                if (!v249)
                {
                  OUTLINED_FUNCTION_11_58(v249, v250, v251, v252, v253, v254, v255, v256, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
                  FigAtomWriterAppendBlockBufferData();
                }
              }

              OUTLINED_FUNCTION_20_32();
              FigAtomWriterEndAtom();
              if (v241)
              {
                CFRelease(v241);
              }

              goto LABEL_221;
            }
          }
        }
      }

      BlockBufferWithCFDataNoCopy = DataPointer;
      if (blockBufferOut[0])
      {
        CFRelease(blockBufferOut[0]);
      }
    }

    else
    {
      BlockBufferWithCFDataNoCopy = 0;
    }

    FigAtomWriterEndAtom();
LABEL_221:
    if (BlockBufferWithCFDataNoCopy)
    {
      goto LABEL_301;
    }

    OUTLINED_FUNCTION_0_161();
    v257 = OUTLINED_FUNCTION_32_25();
    v258 = MovieSampleTableNumSampleToChunkEntries(v257);
    SampleToChunkTable = MovieSampleTableGetSampleToChunkTable(Count);
    v267 = SampleToChunkTable;
    if (v258 >= 2)
    {
      SampleToChunkSamplesPerChunk = MovieSampleTableGetSampleToChunkSamplesPerChunk(Count, v258 - 2);
      SampleToChunkSampleDescriptionID = MovieSampleTableGetSampleToChunkSampleDescriptionID(Count, v258 - 2);
      v270 = MovieSampleTableGetSampleToChunkSamplesPerChunk(Count, v258 - 1);
      SampleToChunkTable = MovieSampleTableGetSampleToChunkSampleDescriptionID(Count, v258 - 1);
      v271 = SampleToChunkSampleDescriptionID == SampleToChunkTable && SampleToChunkSamplesPerChunk == v270;
      v131 = v648;
      if (v271)
      {
        --v258;
      }
    }

    OUTLINED_FUNCTION_14_49(SampleToChunkTable, v260, v261, v262, v263, v264, v265, v266, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
    CompositionOffsetRange = FigAtomWriterInitWithParent();
    if (!CompositionOffsetRange)
    {
      CompositionOffsetRange = FigAtomWriterBeginAtom();
      if (!CompositionOffsetRange)
      {
        OUTLINED_FUNCTION_296();
        CompositionOffsetRange = FigAtomWriterAppendVersionAndFlags();
        if (!CompositionOffsetRange)
        {
          v279 = OUTLINED_FUNCTION_6_87(CompositionOffsetRange, v272, v273, v274, v275, v276, v277, v278, v496, v509, v522, v535, v548, v561, v574, extensionKeyg, v600, v613, v626, flavorg, v653, v666, v679, v692, v706, allocatori, v734, v746, v759, v771, v784, v796, v809, v822, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
          BlockBufferWithCFDataNoCopy = v279;
          if (!v279 && v267)
          {
            OUTLINED_FUNCTION_22_31(v279, v280, v281, 12 * v258, v282, v283, v284, v285, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
            BlockBufferWithCFDataNoCopy = FigAtomWriterAppendBlockBufferData();
          }

          FigAtomWriterEndAtom();
          if (BlockBufferWithCFDataNoCopy)
          {
            goto LABEL_301;
          }

          v286 = *v131;
          if (*(v131 + 35))
          {
            if (MovieSampleTableGetCommonSampleSize(*v131))
            {
              v286 = *v131;
            }

            else
            {
              MinSampleSizeFieldSize = MovieSampleTableGetMinSampleSizeFieldSize(v286);
              v286 = *v131;
              if (MinSampleSizeFieldSize <= 31)
              {
                OUTLINED_FUNCTION_0_161();
                v372 = MovieSampleTableNumSampleSizeEntries(v286);
                if (!v372)
                {
                  FigAtomWriterEndAtom();
                  goto LABEL_248;
                }

                v373 = v372;
                MovieSampleTableGetSampleSizeTable(v286);
                v374 = MovieSampleTableGetMinSampleSizeFieldSize(v286);
                v381 = v374;
                blockBufferOut[0] = 0;
                cf[0] = 0;
                *relativeURL = 0;
                LODWORD(temporaryBlock) = 0;
                if (v374 == 16 || v374 == 8)
                {
                  v383 = (v374 >> 3) * v373;
                }

                else
                {
                  if (v374 != 4)
                  {
                    BlockBufferWithCFDataNoCopy = 4294950958;
                    goto LABEL_359;
                  }

                  v383 = (v373 + 1) >> 1;
                }

                v424 = OUTLINED_FUNCTION_7_76(v374, v375, v383, v376, v377, v378, v379, v380, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0]);
                if (v424)
                {
                  goto LABEL_394;
                }

                OUTLINED_FUNCTION_613();
                v424 = CMBlockBufferGetDataPointer(v432, v433, v434, 0, v435);
                if (v424)
                {
                  goto LABEL_394;
                }

                switch(v381)
                {
                  case 4u:
                    v469 = 0;
                    LODWORD(Count) = 0;
                    v470 = v373;
                    while (1)
                    {
                      v424 = OUTLINED_FUNCTION_19_37(v424, v436, v437, v438, v439, v440, v441, v442, v501, v514, v527, v540, v553, v566, v579, extensionKeyl, v605, v618, v631, flavorl, v658, v671, v684, v697, v711, allocatorn, v739, v751, v764, v776, v789, v801, v814, v827, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16]);
                      if (v424)
                      {
                        goto LABEL_394;
                      }

                      Count = Count | ((*(*relativeURL + 3) & 0xF) << ((4 * (v469 & 1)) ^ 4));
                      if (v470 == 1 || (v469 & 1) != 0)
                      {
                        *cf[0] = Count;
                        Count = 0;
                        OUTLINED_FUNCTION_18_39();
                      }

                      OUTLINED_FUNCTION_23_40();
                      ++v469;
                      if (!--v470)
                      {
                        goto LABEL_371;
                      }
                    }

                  case 8u:
                    v468 = v373;
                    while (1)
                    {
                      v424 = OUTLINED_FUNCTION_19_37(v424, v436, v437, v438, v439, v440, v441, v442, v501, v514, v527, v540, v553, v566, v579, extensionKeyl, v605, v618, v631, flavorl, v658, v671, v684, v697, v711, allocatorn, v739, v751, v764, v776, v789, v801, v814, v827, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16]);
                      if (v424)
                      {
                        goto LABEL_394;
                      }

                      *cf[0] = *(*relativeURL + 3);
                      OUTLINED_FUNCTION_18_39();
                      OUTLINED_FUNCTION_23_40();
                      if (!--v468)
                      {
                        goto LABEL_371;
                      }
                    }

                  case 0x10u:
                    v443 = v373;
                    while (1)
                    {
                      v424 = OUTLINED_FUNCTION_19_37(v424, v436, v437, v438, v439, v440, v441, v442, v501, v514, v527, v540, v553, v566, v579, extensionKeyl, v605, v618, v631, flavorl, v658, v671, v684, v697, v711, allocatorn, v739, v751, v764, v776, v789, v801, v814, v827, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16]);
                      if (v424)
                      {
                        goto LABEL_394;
                      }

                      *cf[0] = *(*relativeURL + 2);
                      cf[0] = cf[0] + 2;
                      OUTLINED_FUNCTION_23_40();
                      if (!--v443)
                      {
                        goto LABEL_371;
                      }
                    }
                }

LABEL_371:
                v471 = blockBufferOut[0];
                v472 = CMBlockBufferGetDataLength(blockBufferOut[0]);
                LODWORD(v842) = v381 << 24;
                OUTLINED_FUNCTION_14_49(v472, v473, v474, v475, v476, v477, v478, v479, v501, v514, v527, v540, v553, v566, v579, extensionKeyl, v605, v618, v631, flavorl, v658, v671, v684, v697, v711, allocatorn, v739, v751, v764, v776, v789, v801, v814, v827, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
                v480 = FigAtomWriterInitWithParent();
                if (v480)
                {
                  BlockBufferWithCFDataNoCopy = v480;
                }

                else
                {
                  v481 = FigAtomWriterBeginAtom();
                  if (!v481)
                  {
                    OUTLINED_FUNCTION_296();
                    v481 = FigAtomWriterAppendVersionAndFlags();
                    if (!v481)
                    {
                      v481 = FigAtomWriterAppendData();
                      if (!v481)
                      {
                        v481 = OUTLINED_FUNCTION_6_87(v481, v482, v483, v484, v485, v486, v487, v488, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
                        if (!v481)
                        {
                          v481 = FigAtomWriterAppendBlockBufferData();
                        }
                      }
                    }
                  }

                  BlockBufferWithCFDataNoCopy = v481;
                }

                FigAtomWriterEndAtom();
                if (v471)
                {
                  CFRelease(v471);
                }

LABEL_247:
                if (BlockBufferWithCFDataNoCopy)
                {
                  goto LABEL_301;
                }

LABEL_248:
                OUTLINED_FUNCTION_0_161();
                v310 = OUTLINED_FUNCTION_32_25();
                v311 = v130;
                v312 = MovieSampleTableNumChunkTableEntries(v310);
                ChunkOffsetTable = MovieSampleTableGetChunkOffsetTable(Count);
                v314 = MovieSampleTableHave64BitChunkOffsetTable(Count);
                v322 = v314;
                if (!*(v311 + 80))
                {
                  v352 = 0;
                  goto LABEL_292;
                }

                TrackCount = MovieInformationGetTrackCount(Count);
                v330 = *(v311 + 80);
                blockBufferOut[0] = 0;
                if (v322)
                {
                  v331 = 8;
                }

                else
                {
                  v331 = 4;
                }

                cf[0] = 0;
                *relativeURL = 0;
                temporaryBlock = 0;
                LODWORD(v842) = 0;
                v332 = v330 + TrackCount;
                v333 = (v330 + TrackCount) > 0xEE6B2800;
                v334 = 2;
                if ((v330 + TrackCount) > 0xEE6B2800)
                {
                  v334 = 3;
                }

                v335 = OUTLINED_FUNCTION_7_76(TrackCount, v324, v312 << v334, v325, v326, v327, v328, v329, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0]);
                if (v335 || (OUTLINED_FUNCTION_613(), v335 = CMBlockBufferGetDataPointer(v336, v337, v338, 0, v339), v335))
                {
                  BlockBufferWithCFDataNoCopy = v335;
                  v352 = 0;
                }

                else
                {
                  v340 = MEMORY[0x19A8CC720](allocatorj, v331, 192749786, 0);
                  if (v340)
                  {
                    v341 = v340;
                    LODWORD(v707) = v333;
                    if (v322)
                    {
                      if (v332 <= 0xEE6B2800)
                      {
                        if (v312)
                        {
                          v363 = 0;
                          v364 = v312;
                          do
                          {
                            v344 = OUTLINED_FUNCTION_28_27(v340, v315, v316, v317, v318, v319, v320, v321, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL);
                            if (v344)
                            {
                              goto LABEL_385;
                            }

                            OUTLINED_FUNCTION_39_19(v344, v365, v366, v367, v368, v369, v370, v371, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock);
                            LODWORD(v842) = bswap32(bswap64(temporaryBlock) + v330);
                            *cf[0] = v842;
                            OUTLINED_FUNCTION_4_116();
                            v363 += v331;
                          }

                          while (--v364);
                        }
                      }

                      else if (v312)
                      {
                        v342 = 0;
                        v343 = v312;
                        while (1)
                        {
                          v344 = OUTLINED_FUNCTION_28_27(v340, v315, v316, v317, v318, v319, v320, v321, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL);
                          if (v344)
                          {
                            break;
                          }

                          OUTLINED_FUNCTION_39_19(v344, v345, v346, v347, v348, v349, v350, v351, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock);
                          temporaryBlock = bswap64(bswap64(temporaryBlock) + v330);
                          *cf[0] = temporaryBlock;
                          OUTLINED_FUNCTION_4_116();
                          v342 += v331;
                          if (!--v343)
                          {
                            goto LABEL_287;
                          }
                        }

LABEL_385:
                        BlockBufferWithCFDataNoCopy = v344;
                        v352 = 0;
                        goto LABEL_288;
                      }

LABEL_287:
                      BlockBufferWithCFDataNoCopy = 0;
                      v352 = blockBufferOut[0];
                      blockBufferOut[0] = 0;
LABEL_288:
                      CFAllocatorDeallocate(allocatorj, v341);
                      goto LABEL_289;
                    }

                    if (v332 <= 0xEE6B2800)
                    {
                      if (!v312)
                      {
                        goto LABEL_287;
                      }

                      v384 = 0;
                      v385 = v312;
                      while (1)
                      {
                        v355 = OUTLINED_FUNCTION_27_27(v340, v315, v316, v317, v318, v319, v320, v321, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL);
                        if (v355)
                        {
                          break;
                        }

                        OUTLINED_FUNCTION_38_18(v355, v386, v387, v388, v389, v390, v391, v392, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL);
                        LODWORD(v842) = bswap32(bswap32(v842) + v330);
                        *cf[0] = v842;
                        OUTLINED_FUNCTION_4_116();
                        v384 += v331;
                        if (!--v385)
                        {
                          goto LABEL_287;
                        }
                      }
                    }

                    else
                    {
                      if (!v312)
                      {
                        goto LABEL_287;
                      }

                      v353 = 0;
                      v354 = v312;
                      while (1)
                      {
                        v355 = OUTLINED_FUNCTION_27_27(v340, v315, v316, v317, v318, v319, v320, v321, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL);
                        if (v355)
                        {
                          break;
                        }

                        OUTLINED_FUNCTION_38_18(v355, v356, v357, v358, v359, v360, v361, v362, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL);
                        temporaryBlock = bswap64(v330 + bswap32(v842));
                        *cf[0] = temporaryBlock;
                        OUTLINED_FUNCTION_4_116();
                        v353 += v331;
                        if (!--v354)
                        {
                          goto LABEL_287;
                        }
                      }
                    }

                    BlockBufferWithCFDataNoCopy = v355;
                    v352 = 0;
                    goto LABEL_288;
                  }

                  v352 = 0;
                  BlockBufferWithCFDataNoCopy = 4294950966;
                }

LABEL_289:
                v314 = blockBufferOut[0];
                if (blockBufferOut[0])
                {
                  CFRelease(blockBufferOut[0]);
                }

                ChunkOffsetTable = v352;
                if (BlockBufferWithCFDataNoCopy)
                {
                  goto LABEL_299;
                }

LABEL_292:
                OUTLINED_FUNCTION_14_49(v314, v315, v316, v317, v318, v319, v320, v321, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
                v393 = FigAtomWriterInitWithParent();
                if (!v393)
                {
                  v393 = FigAtomWriterBeginAtom();
                  if (!v393)
                  {
                    OUTLINED_FUNCTION_296();
                    v393 = FigAtomWriterAppendVersionAndFlags();
                    if (!v393)
                    {
                      BlockBufferWithCFDataNoCopy = OUTLINED_FUNCTION_6_87(v393, v394, v395, v396, v397, v398, v399, v400, v499, v512, v525, v538, v551, v564, v577, extensionKeyj, v603, v616, v629, flavorj, v656, v669, v682, v695, v709, allocatorl, v737, v749, v762, v774, v787, v799, v812, v825, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
                      if (BlockBufferWithCFDataNoCopy || !ChunkOffsetTable)
                      {
LABEL_299:
                        FigAtomWriterEndAtom();
                        if (v352)
                        {
                          CFRelease(v352);
                        }

                        goto LABEL_301;
                      }

                      v401 = CMBlockBufferGetDataLength(ChunkOffsetTable);
                      OUTLINED_FUNCTION_22_31(v401, v402, v403, v401, v404, v405, v406, v407, v500, v513, v526, v539, v552, v565, v578, extensionKeyk, v604, v617, v630, flavork, v657, v670, v683, v696, v710, allocatorm, v738, v750, v763, v775, v788, v800, v813, v826, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
                      v393 = FigAtomWriterAppendBlockBufferData();
                    }
                  }
                }

                BlockBufferWithCFDataNoCopy = v393;
                goto LABEL_299;
              }
            }
          }

          OUTLINED_FUNCTION_0_161();
          MovieSampleTableNumSampleSizeEntries(v286);
          Count = MovieSampleTableGetCommonSampleSize(v286);
          SampleSizeTable = MovieSampleTableGetSampleSizeTable(v286);
          LODWORD(cf[0]) = bswap32(Count);
          OUTLINED_FUNCTION_14_49(SampleSizeTable, v289, v290, v291, v292, v293, v294, v295, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838);
          CompositionOffsetRange = FigAtomWriterInitWithParent();
          if (!CompositionOffsetRange)
          {
            CompositionOffsetRange = FigAtomWriterBeginAtom();
            if (!CompositionOffsetRange)
            {
              OUTLINED_FUNCTION_296();
              CompositionOffsetRange = FigAtomWriterAppendVersionAndFlags();
              if (!CompositionOffsetRange)
              {
                CompositionOffsetRange = FigAtomWriterAppendData();
                if (!CompositionOffsetRange)
                {
                  BlockBufferWithCFDataNoCopy = OUTLINED_FUNCTION_6_87(CompositionOffsetRange, v296, v297, v298, v299, v300, v301, v302, v498, v511, v524, v537, v550, v563, v576, extensionKeyi, v602, v615, v628, flavori, v655, v668, v681, v694, v708, allocatork, v736, v748, v761, v773, v786, v798, v811, v824, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
                  if (!BlockBufferWithCFDataNoCopy && SampleSizeTable)
                  {
                    v303 = CMBlockBufferGetDataLength(SampleSizeTable);
                    OUTLINED_FUNCTION_11_58(v303, v304, v305, v303, v306, v307, v308, v309, v497, v510, v523, v536, v549, v562, v575, extensionKeyh, v601, v614, v627, flavorh, v654, v667, v680, v693, v707, allocatorj, v735, v747, v760, v772, v785, v797, v810, v823, cf[0], cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, blockBufferOut[0], blockBufferOut[1], v834[0], v834[1], v835, *(&v835 + 1), v836, v837, v838, *(&v838 + 1), v839[0], v839[1], v839[2], v840, v841, v842, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
                    BlockBufferWithCFDataNoCopy = FigAtomWriterAppendBlockBufferData();
                  }

                  FigAtomWriterEndAtom();
                  goto LABEL_247;
                }
              }
            }
          }
        }
      }
    }

LABEL_382:
    BlockBufferWithCFDataNoCopy = CompositionOffsetRange;
    goto LABEL_383;
  }

  v424 = OUTLINED_FUNCTION_7_76(0, v417, 8 * v159, v418, v419, v420, v421, v422, v491, v504, v517, v530, v543, v556, v569, extensionKeyb, v595, v608, v621, flavorb, v648, v661, v674, v687, v701, allocatord, v729, v741, v754, v766, v779, v791, v804, v817, 0, cf[1], v829, *(&v829 + 1), v830, *(&v830 + 1), v831, v832, 0);
  if (!v424)
  {
    OUTLINED_FUNCTION_613();
    v424 = CMBlockBufferGetDataPointer(v425, v426, v427, 0, v428);
    if (!v424)
    {
      Count = 0;
      v429 = v159;
      while (1)
      {
        *relativeURL = 0;
        v424 = CMBlockBufferCopyDataBytes(CompositionOffsetTable, Count, 8uLL, relativeURL);
        if (v424)
        {
          break;
        }

        v430 = cf[0];
        *cf[0] = *relativeURL;
        v430[1] = bswap32(bswap32(*&relativeURL[4]) + v423);
        cf[0] = v430 + 2;
        Count += 8;
        if (!--v429)
        {
          v431 = blockBufferOut[0];
          CompositionOffsetTable = blockBufferOut[0];
          goto LABEL_350;
        }
      }
    }
  }

LABEL_394:
  BlockBufferWithCFDataNoCopy = v424;
LABEL_359:
  if (blockBufferOut[0])
  {
    CFRelease(blockBufferOut[0]);
  }

LABEL_383:
  FigAtomWriterEndAtom();
LABEL_301:
  FigAtomWriterEndAtom();
LABEL_302:
  FigAtomWriterEndAtom();
  return BlockBufferWithCFDataNoCopy;
}