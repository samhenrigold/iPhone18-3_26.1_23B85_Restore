uint64_t sad_start(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_startDispatch);
  return v5;
}

uint64_t sad_pause(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_pauseDispatch);
  return v5;
}

uint64_t sad_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_stopDispatch);
  return v5;
}

uint64_t sad_pauseForPlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_pauseForPlaybackDispatch);
  return v5;
}

uint64_t sad_resumeAfterPlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_resumeAfterPlaybackDispatch);
  return v5;
}

uint64_t sad_loadMetadata(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_loadMetadataDispatch);
  return v5;
}

void sad_stopDownloadingAfterDelayDispatch(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24) == 2 && (v3 - 1000000000) < UpTimeNanoseconds - *(DerivedStorage + 448))
  {
    sad_stopDownloading(v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void sad_stopDispatch(uint64_t *a1)
{
  v2 = *a1;
  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
    v5 = v6;
    if (v6)
    {
      sad_cleanupDownloadWithOSStatus(v2, v6);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 176) = 0;
    if ((*(DerivedStorage + 24) - 6) > 0xFFFFFFFC)
    {
      v5 = 0;
    }

    else
    {
      v4 = DerivedStorage;
      sad_stopDownloading(v2);
      v5 = 0;
      *(v4 + 24) = 5;
    }
  }

  *(a1 + 2) = v5;
}

void sad_loadMetadataDispatch(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
    v4 = v5;
    if (v5)
    {
      sad_cleanupDownloadWithOSStatus(*a1, v5);
    }
  }

  else
  {
    *(DerivedStorage + 179) = 1;
    sad_loadMetadataGuts(v2);
    v4 = 0;
  }

  *(a1 + 2) = v4;
}

uint64_t OUTLINED_FUNCTION_10_37(uint64_t *a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_14_31(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = 0;

  return sad_getCFIndexForKeyFromPumpStoreBag(v15, a2, 1, &a15);
}

uint64_t figCSSParserNodeRegisterFigCSSParserNode()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSParserNodeID = result;
  return result;
}

uint64_t FigCSSParserNodeCreate(const __CFAllocator *a1, int a2, uint64_t *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 16) = a2;
      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v7[3] = Mutable;
      if (Mutable)
      {
        result = 0;
        *a3 = v7;
      }

      else
      {
        FigCSSParserNodeCreate_cold_1(v7, &v10);
        return v10;
      }
    }

    else
    {
      FigCSSParserNodeCreate_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    FigCSSParserNodeCreate_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t FigCSSParserNodeGetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }

    else
    {
      FigCSSParserNodeGetNodeType_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigCSSParserNodeGetNodeType_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigCSSAtRuleParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 1, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSAtRuleParserNodeSetName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSAtRuleParserNodeSetName_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 1)
  {
    FigCSSAtRuleParserNodeSetName_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != FigCSSTokenGetTypeID())
    {
      FigCSSAtRuleParserNodeSetName_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"name");
  }

  return 0;
}

uint64_t FigCSSAtRuleParserNodeSetPrelude(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSAtRuleParserNodeSetPrelude_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 1)
  {
    FigCSSAtRuleParserNodeSetPrelude_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      FigCSSAtRuleParserNodeSetPrelude_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"prelude");
  }

  return 0;
}

uint64_t FigCSSAtRuleParserNodeSetSimpleBlock(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSAtRuleParserNodeSetSimpleBlock_cold_4(&v5);
    return v5;
  }

  if (*(a1 + 16) != 1)
  {
    FigCSSAtRuleParserNodeSetSimpleBlock_cold_1(&v5);
    return v5;
  }

  if (!cf)
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"simple_block");
    return 0;
  }

  v3 = CFGetTypeID(cf);
  MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode);
  if (v3 != sFigCSSParserNodeID)
  {
    FigCSSAtRuleParserNodeSetSimpleBlock_cold_2(&v5);
    return v5;
  }

  if (*(cf + 4) != 6)
  {
    FigCSSAtRuleParserNodeSetSimpleBlock_cold_3(&v5);
    return v5;
  }

  FigCFDictionarySetValue();
  return 0;
}

uint64_t FigCSSQualifiedRuleParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 2, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSQualifiedRuleParserNodeCopyPrelude(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSTokenCreateSerializationString_cold_1(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSTokenCreateSerializationString_cold_2(&v7);
    return v7;
  }

  if (*(a1 + 16) != 2)
  {
    FigCSSQualifiedRuleParserNodeCopyPrelude_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"prelude", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != CFArrayGetTypeID()))
  {
    FigCSSQualifiedRuleParserNodeCopyPrelude_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetPrelude(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSQualifiedRuleParserNodeSetPrelude_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 2)
  {
    FigCSSQualifiedRuleParserNodeSetPrelude_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      FigCSSQualifiedRuleParserNodeSetPrelude_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"prelude");
  }

  return 0;
}

double FigCSSQualifiedRuleParserNodeCopySimpleBlock(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_4(&v9);
    return result;
  }

  if (!a2)
  {
    FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_3(&v9);
    return result;
  }

  if (*(a1 + 16) != 2)
  {
    FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_1(&v9);
    return result;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"simple_block", &cf))
  {
    v5 = 0;
    goto LABEL_11;
  }

  if (!cf || (v4 = CFGetTypeID(cf), MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode), v4 != sFigCSSParserNodeID))
  {
    FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_2(&v9);
    return result;
  }

  if (cf)
  {
    if (*(cf + 4) == 6)
    {
      v5 = CFRetain(cf);
LABEL_11:
      *a2 = v5;
      return result;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v8, v10);
  }

  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v8, v10);
  if (!v6)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v8, v10);
  }

  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetSimpleBlock(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_4(&v5);
    return v5;
  }

  if (*(a1 + 16) != 2)
  {
    FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_1(&v5);
    return v5;
  }

  if (!cf)
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"simple_block");
    return 0;
  }

  v3 = CFGetTypeID(cf);
  MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode);
  if (v3 != sFigCSSParserNodeID)
  {
    FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_2(&v5);
    return v5;
  }

  if (*(cf + 4) != 6)
  {
    FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_3(&v5);
    return v5;
  }

  FigCFDictionarySetValue();
  return 0;
}

uint64_t FigCSSDeclarationParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 3, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSDeclarationParserNodeCopyName(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSDeclarationParserNodeCopyName_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSDeclarationParserNodeCopyName_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 3)
  {
    FigCSSDeclarationParserNodeCopyName_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"name", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != FigCSSTokenGetTypeID()))
  {
    FigCSSDeclarationParserNodeCopyName_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSDeclarationParserNodeSetName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSDeclarationParserNodeSetName_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 3)
  {
    FigCSSDeclarationParserNodeSetName_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != FigCSSTokenGetTypeID())
    {
      FigCSSDeclarationParserNodeSetName_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"name");
  }

  return 0;
}

uint64_t FigCSSDeclarationParserNodeCopyValue(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSDeclarationParserNodeCopyValue_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSDeclarationParserNodeCopyValue_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 3)
  {
    FigCSSDeclarationParserNodeCopyValue_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"value", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != CFArrayGetTypeID()))
  {
    FigCSSDeclarationParserNodeCopyValue_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSDeclarationParserNodeSetValue(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSDeclarationParserNodeSetValue_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 3)
  {
    FigCSSDeclarationParserNodeSetValue_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      FigCSSDeclarationParserNodeSetValue_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"value");
  }

  return 0;
}

uint64_t FigCSSComponentValueParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 4, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSComponentValueParserNodeGetType(uint64_t a1, int *a2)
{
  cf1 = 0;
  if (!a1)
  {
    FigCSSComponentValueParserNodeGetType_cold_3(&v6);
    return v6;
  }

  if (!a2)
  {
    FigCSSComponentValueParserNodeGetType_cold_2(&v6);
    return v6;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeGetType_cold_1(&v6);
    return v6;
  }

  if (CFDictionaryGetValueIfPresent(*(a1 + 24), @"component_value_type", &cf1))
  {
    if (CFEqual(cf1, @"component_value_type_preserved_token"))
    {
      v3 = 1;
    }

    else if (CFEqual(cf1, @"component_value_type_function"))
    {
      v3 = 2;
    }

    else if (CFEqual(cf1, @"component_value_type_simple_block"))
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyPreservedToken(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSComponentValueParserNodeCopyPreservedToken_cold_5(&v9);
    return v9;
  }

  if (!a2)
  {
    FigCSSComponentValueParserNodeCopyPreservedToken_cold_4(&v9);
    return v9;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeCopyPreservedToken_cold_1(&v9);
    return v9;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"component_value_type", &cf))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()) || !CFEqual(cf, @"component_value_type_preserved_token"))
  {
    FigCSSComponentValueParserNodeCopyPreservedToken_cold_3(&v9);
    return v9;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"preserved_token", &cf))
  {
    goto LABEL_13;
  }

  if (!cf || (v5 = CFGetTypeID(cf), v5 != FigCSSTokenGetTypeID()))
  {
    FigCSSComponentValueParserNodeCopyPreservedToken_cold_2(&v9);
    return v9;
  }

  if (!cf)
  {
    goto LABEL_13;
  }

  v6 = CFRetain(cf);
LABEL_14:
  result = 0;
  *a2 = v6;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetPreservedToken(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSComponentValueParserNodeSetPreservedToken_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeSetPreservedToken_cold_1(&v5);
    return v5;
  }

  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != FigCSSTokenGetTypeID())
    {
      FigCSSComponentValueParserNodeSetPreservedToken_cold_2(&v6);
      return v6;
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"preserved_token");
    CFDictionaryRemoveValue(*(a1 + 24), @"component_value_type");
  }

  return 0;
}

double FigCSSComponentValueParserNodeCopyFunctionNode(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSComponentValueParserNodeCopyFunctionNode_cold_5(&v11);
    return result;
  }

  if (!a2)
  {
    FigCSSComponentValueParserNodeCopyFunctionNode_cold_4(&v11);
    return result;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeCopyFunctionNode_cold_1(&v11);
    return result;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"component_value_type", &cf))
  {
    goto LABEL_14;
  }

  if (!cf || (v5 = CFGetTypeID(cf), v5 != CFStringGetTypeID()) || !CFEqual(cf, @"component_value_type_function"))
  {
    FigCSSComponentValueParserNodeCopyFunctionNode_cold_3(&v11);
    return result;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"function", &cf))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (!cf || (v6 = CFGetTypeID(cf), MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode), v6 != sFigCSSParserNodeID))
  {
    FigCSSComponentValueParserNodeCopyFunctionNode_cold_2(&v11);
    return result;
  }

  if (cf)
  {
    if (*(cf + 4) == 5)
    {
      v7 = CFRetain(cf);
LABEL_15:
      *a2 = v7;
      return result;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v10, v12);
  }

  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v10, v12);
  if (!v8)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v10, v12);
  }

  return result;
}

uint64_t FigCSSComponentValueParserNodeSetFunctionNode(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSComponentValueParserNodeSetFunctionNode_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeSetFunctionNode_cold_1(&v5);
    return v5;
  }

  if (cf)
  {
    v3 = CFGetTypeID(cf);
    MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode);
    if (v3 != sFigCSSParserNodeID)
    {
      FigCSSComponentValueParserNodeSetFunctionNode_cold_2(&v6);
      return v6;
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"function");
    CFDictionaryRemoveValue(*(a1 + 24), @"component_value_type");
  }

  return 0;
}

double FigCSSComponentValueParserNodeCopySimpleBlock(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSComponentValueParserNodeCopySimpleBlock_cold_5(&v11);
    return result;
  }

  if (!a2)
  {
    FigCSSComponentValueParserNodeCopySimpleBlock_cold_4(&v11);
    return result;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeCopySimpleBlock_cold_1(&v11);
    return result;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"component_value_type", &cf))
  {
    goto LABEL_14;
  }

  if (!cf || (v5 = CFGetTypeID(cf), v5 != CFStringGetTypeID()) || !CFEqual(cf, @"component_value_type_simple_block"))
  {
    FigCSSComponentValueParserNodeCopySimpleBlock_cold_3(&v11);
    return result;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"simple_block", &cf))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (!cf || (v6 = CFGetTypeID(cf), MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode), v6 != sFigCSSParserNodeID))
  {
    FigCSSComponentValueParserNodeCopySimpleBlock_cold_2(&v11);
    return result;
  }

  if (cf)
  {
    if (*(cf + 4) == 6)
    {
      v7 = CFRetain(cf);
LABEL_15:
      *a2 = v7;
      return result;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v10, v12);
  }

  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v10, v12);
  if (!v8)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v10, v12);
  }

  return result;
}

uint64_t FigCSSComponentValueParserNodeSetSimpleBlock(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSComponentValueParserNodeSetSimpleBlock_cold_4(&v6);
    return v6;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeSetSimpleBlock_cold_1(&v6);
    return v6;
  }

  if (!cf)
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"simple_block");
    CFDictionaryRemoveValue(*(a1 + 24), @"component_value_type");
    return 0;
  }

  v4 = CFGetTypeID(cf);
  MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode);
  if (v4 != sFigCSSParserNodeID)
  {
    FigCSSComponentValueParserNodeSetSimpleBlock_cold_2(&v6);
    return v6;
  }

  if (*(cf + 4) != 6)
  {
    FigCSSComponentValueParserNodeSetSimpleBlock_cold_3(&v6);
    return v6;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  return 0;
}

uint64_t FigCSSFunctionParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 5, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSFunctionParserNodeCopyName(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSFunctionParserNodeCopyName_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSFunctionParserNodeCopyName_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 5)
  {
    FigCSSFunctionParserNodeCopyName_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"name", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != FigCSSTokenGetTypeID()))
  {
    FigCSSFunctionParserNodeCopyName_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSFunctionParserNodeSetName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSFunctionParserNodeSetName_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 5)
  {
    FigCSSFunctionParserNodeSetName_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != FigCSSTokenGetTypeID())
    {
      FigCSSFunctionParserNodeSetName_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"name");
  }

  return 0;
}

uint64_t FigCSSFunctionParserNodeCopyValue(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSFunctionParserNodeCopyValue_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSFunctionParserNodeCopyValue_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 5)
  {
    FigCSSFunctionParserNodeCopyValue_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"value", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != CFArrayGetTypeID()))
  {
    FigCSSFunctionParserNodeCopyValue_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSFunctionParserNodeSetValue(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSFunctionParserNodeSetValue_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 5)
  {
    FigCSSFunctionParserNodeSetValue_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      FigCSSFunctionParserNodeSetValue_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"value");
  }

  return 0;
}

uint64_t FigCSSSimpleBlockParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 6, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSSimpleBlockParserNodeCopyAssociatedToken(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 6)
  {
    FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"associated_token", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != FigCSSTokenGetTypeID()))
  {
    FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeSetAssociatedToken(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 6)
  {
    FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != FigCSSTokenGetTypeID())
    {
      FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"associated_token");
  }

  return 0;
}

uint64_t FigCSSSimpleBlockParserNodeCopyValue(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSSimpleBlockParserNodeCopyValue_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSSimpleBlockParserNodeCopyValue_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 6)
  {
    FigCSSSimpleBlockParserNodeCopyValue_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"value", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != CFArrayGetTypeID()))
  {
    FigCSSSimpleBlockParserNodeCopyValue_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeSetValue(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSSimpleBlockParserNodeSetValue_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 6)
  {
    FigCSSSimpleBlockParserNodeSetValue_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      FigCSSSimpleBlockParserNodeSetValue_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"value");
  }

  return 0;
}

uint64_t figCSSParserNode_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void figCSSParserNode_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

CFStringRef figCSSParserNode_CopyFormattingDesc(uint64_t a1)
{
  v2 = FigCSSParserNodeMapNodeTypeToName(*(a1 + 16));
  if (FigCFDictionaryGetCount() < 1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSParserNode: node = <%p> nodeType = %@", a1, v2);
  }

  v3 = FigCFCopyCompactDescription();
  if (!v3)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSParserNode: node = <%p> nodeType = %@", a1, v2);
  }

  v4 = v3;
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSParserNode: node = <%p> nodeType = %@ attributes = { %@ }", a1, v2, v3);
  CFRelease(v4);
  return v5;
}

CFStringRef figCSSParserNode_CopyDebugDesc(uint64_t a1)
{
  if (FigCFDictionaryGetCount() <= 0)
  {
    v3 = FigCSSParserNodeMapNodeTypeToName(*(a1 + 16));
  }

  else
  {
    v2 = FigCFCopyCompactDescription();
    v3 = FigCSSParserNodeMapNodeTypeToName(*(a1 + 16));
    if (v2)
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSParserNode: node = <%p> nodeType = %@ attributes = { %@ } attributesDict = <%p>", a1, v3, v2, *(a1 + 24));
      CFRelease(v2);
      return v4;
    }
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSParserNode: node = <%p> nodeType = %@  attributesDict = <%p>", a1, v3, *(a1 + 24));
}

uint64_t FigByteStreamRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (v4 && v4 == &kRemoteByteStream_Class)
    {
      if (a2)
      {

        return frbs_GetObjectID(a1, a2);
      }

      else
      {
        FigByteStreamRemoteGetObjectID_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigByteStreamRemoteGetObjectID_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigByteStreamRemoteGetObjectID_cold_3(&v8);
    return v8;
  }
}

uint64_t frbs_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 170))
  {
    frbs_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t frbs_DeadObjectCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 170) = 1;
  return result;
}

uint64_t remoteByteStream_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(DerivedStorage + 72))
  {
    FigSimpleMutexDestroy();
    v4 = *(DerivedStorage + 32);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 32) = 0;
    }

    *(DerivedStorage + 72) = 0;
    *(DerivedStorage + 80) = 0;
  }

  FigByteStreamStatsTeardownWorker();
  if (*(DerivedStorage + 8))
  {
    FigXPCConnectionDisassociateObject();
    if (!*(DerivedStorage + 170) && !FigXPCCreateBasicMessage())
    {
      FigXPCConnectionSendSyncMessage();
    }

    CFRelease(*(DerivedStorage + 8));
  }

  v5 = *(DerivedStorage + 152);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 152) = 0;
  }

  return FigXPCRelease();
}

__CFString *remoteByteStream_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFCopyDescription(*(DerivedStorage + 16));
  CFStringAppendFormat(Mutable, 0, @"<RemoteByteStream %p/%016llx>{%@} entireLength %lld", a1, *DerivedStorage, v4, *(DerivedStorage + 160));
  if (*(DerivedStorage + 8))
  {
    CFStringAppendFormat(Mutable, 0, @" connection: {%@}}", *(DerivedStorage + 8));
  }

  if (*(DerivedStorage + 24))
  {
    CFStringAppendFormat(Mutable, 0, @" localByteStream: {%@}}", *(DerivedStorage + 24));
  }

  if (*(DerivedStorage + 168))
  {
    CFStringAppendFormat(Mutable, 0, @" EntireLengthAvailable");
  }

  if (*(DerivedStorage + 169))
  {
    CFStringAppendFormat(Mutable, 0, @" Writable");
  }

  if (*(DerivedStorage + 170))
  {
    CFStringAppendFormat(Mutable, 0, @" SERVER DIED");
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t MPEG2PSInitialize(void *a1)
{
  a1[21] = MPEG2PSInject;
  a1[22] = MPEG2PSReset;
  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040A345989DuLL);
  if (!v2)
  {
    return 12;
  }

  *v2 = a1;
  v2[10] = 1;
  *(v2 + 3) = 0;
  *(v2 + 4) = v2 + 6;
  v5 = a1[2];
  v4 = a1 + 2;
  v3 = v5;
  *(v2 + 1) = v5;
  if (v5)
  {
    *(v3 + 16) = v2 + 2;
  }

  v6 = 0;
  *v4 = v2;
  *(v2 + 2) = v4;
  return v6;
}

void MPEG2PSReset(uint64_t a1)
{
  v2 = *(a1 + 416);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 416) = 0;
  *(a1 + 408) = 0;
}

void MPEG2PSCleanVideoSearch(uint64_t a1)
{
  v1 = *(a1 + 48);
  PesPacketListClean(v1);
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
}

void MPEG2PSDeleteVideoSearchPrivateData(uint64_t a1)
{
  v2 = *(a1 + 48);
  PesPacketListClean(v2);
  *(v2 + 16) = 0;
  *(v2 + 24) = -1;
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

void *MPEG2PSVideoSearchProcessHeader(void *result, int a2)
{
  if ((a2 & 0xFFFFFF00) != 0x100)
  {
    return result;
  }

  ++result[4];
  if (a2 == 182 || a2 > 0xB8u || (a2 & 0xFE) == 0xB0)
  {
    ++result[5];
    v2 = 6;
    goto LABEL_12;
  }

  v2 = 5;
  if (a2 > 0x7Fu || a2 - 64 <= 0xC && ((1 << (a2 - 64)) & 0x1E41) != 0 || a2 <= 8u && ((1 << a2) & 0x1A1) != 0)
  {
LABEL_12:
    ++result[v2];
    if (a2 - 179 <= 5 && ((1 << (a2 + 77)) & 0x25) != 0 || !a2)
    {
      ++result[7];
    }
  }

  if ((a2 & 0x3Fu) <= 9 && ((1 << (a2 & 0x3F)) & 0x2E0) != 0)
  {
    ++result[8];
  }

  return result;
}

uint64_t MPEG2PSVideoSearchSetType(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = (a1 + 840);
  *a2 = 0u;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  v7 = *(a1 + 48);
  PesPacketListClean(v7);
  *(v7 + 16) = 0;
  *(v7 + 24) = -1;
  free(*(a1 + 48));
  *(a1 + 48) = 0;
  *(a1 + 56) = a3;
  v8 = *(a1 + 8);
  v9 = v8[7];
  if (v9)
  {
    v9(*v8, v8[9], *(*a1 + 40), *(a1 + 60), a3);
  }

  v10 = 0;
  if (v5)
  {
    do
    {
      if (!v10)
      {
        v11 = *v6;
        if (*v6)
        {
          v12 = v5[1];
          DataLength = CMBlockBufferGetDataLength(v12);
          v10 = v11(a1, v12, 0, 0, DataLength, v5 + 2);
        }

        else
        {
          v10 = 0;
        }
      }

      v14 = v5[1];
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = *v5;
      free(v5);
      v5 = v15;
    }

    while (v15);
  }

  return v10;
}

uint64_t RegisterFigAlternateFilterMonitorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAlternateFilterMonitorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAlternateFilterMonitorGetClassID_sRegisterFigAlternateFilterMonitorTypeOnce, RegisterFigAlternateFilterMonitorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t fam_postStateChangedNotification(const void *a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5)
{
  v7 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    if (a3)
    {
      CFDictionarySetValue(v9, @"AlternateFilterMonitorParameter_OldFilter", a3);
    }

    if (a5)
    {
      CFDictionarySetValue(v9, @"AlternateFilterMonitorParameter_NewFilter", a5);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v10 = CMNotificationCenterPostNotification();
    CFRelease(v9);
    return v10;
  }

  else
  {
    fam_postStateChangedNotification_cold_1(&v12);
    return v12;
  }
}

uint64_t FigAlternateFilterMonitorUtilityPostExpandersAddedNotification(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigAlternateFilterMonitorCreateForNotification(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, CFTypeRef *a6)
{
  if (!a6)
  {
    FigAlternateFilterMonitorCreateForNotification_cold_2(v25);
    return v25[0];
  }

  if (!a3)
  {
    FigAlternateFilterMonitorCreateForNotification_cold_1(v25);
    return v25[0];
  }

  MEMORY[0x19A8D3660](&FigAlternateFilterMonitorGetClassID_sRegisterFigAlternateFilterMonitorTypeOnce, RegisterFigAlternateFilterMonitorType);
  v12 = CMDerivedObjectCreate();
  v13 = 0;
  if (v12)
  {
    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = FigReentrantMutexCreate();
  *DerivedStorage = v15;
  if (!v15)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v24, v25[1]);
    v20 = v22;
    v13 = cf;
    goto LABEL_20;
  }

  v16 = *a2;
  *(DerivedStorage + 24) = *(a2 + 2);
  *(DerivedStorage + 8) = v16;
  *(DerivedStorage + 32) = CFRetain(a3);
  v17 = a4 ? CFRetain(a4) : 0;
  *(DerivedStorage + 40) = v17;
  v18 = a5 ? CFRetain(a5) : 0;
  *(DerivedStorage + 48) = v18;
  v19 = MEMORY[0x1E695E9E8];
  *(DerivedStorage + 64) = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 56) = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], v19);
  v12 = FigAlternateFilterMonitorTriggerCreateForNotification(a1, a3, a4, (DerivedStorage + 72));
  v13 = 0;
  if (v12)
  {
LABEL_15:
    v20 = v12;
    goto LABEL_20;
  }

  v20 = FigAlternateFilterMonitorTriggerAddObserver(*(DerivedStorage + 72), 0, famfon_triggerCallback, 0);
  v13 = 0;
  if (!v20)
  {
    *a6 = 0;
    return v20;
  }

LABEL_20:
  if (v13)
  {
    CFRelease(v13);
  }

  return v20;
}

uint64_t famfon_triggerCallback(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = (*(DerivedStorage + 8))(a2, *(DerivedStorage + 40), a3, *(DerivedStorage + 48));

  return famfon_setState(a2, v6);
}

uint64_t FigAlternateFilterMonitorCreateForPreferredVideoFormat(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v18 = 0;
  DisplayVideoRangeNotificationSingleton = FPSupport_GetDisplayVideoRangeNotificationSingleton();
  v5 = FigAlternateFilterMonitorCreateForNotification(a1, FigAlternateFilterMonitorCreateForPreferredVideoFormat_callbacks, @"DisplayVideoRangeChanged", DisplayVideoRangeNotificationSingleton, 0, &v18);
  if (!v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = FPSupportVideoRangeToAlternateVideoRange(v6);
      v8 = v6 == 3 ? 5 : 9;
      FigAlternatePreferredVideoFormatFilterCreate(a1, v7, v8, &cf);
      if (v5)
      {
        break;
      }

      v10 = cf;
      v9 = v18;
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v11)
      {
        goto LABEL_15;
      }

      v5 = v11(v9, v10, v6);
      if (v5)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (++v6 == 6)
      {
        v12 = v18;
        BestSupportedVideoRangeFromDisplayList = famvr_getBestSupportedVideoRangeFromDisplayList(v18, 0);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v14)
        {
LABEL_15:
          v15 = 4294954514;
          goto LABEL_16;
        }

        v15 = v14(v12, BestSupportedVideoRangeFromDisplayList);
        if (v15)
        {
          goto LABEL_16;
        }

        *a2 = v18;
        v18 = 0;
        goto LABEL_18;
      }
    }
  }

  v15 = v5;
LABEL_16:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t fampvr_handleTriggerInvocationForPreferredVideoFormat(const void *a1, uint64_t a2, const __CFArray *a3)
{
  number = 0;
  valuePtr = -1;
  v5 = CFGetAllocator(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && (v6(a1, @"AlternateFilterMonitorProperty_PreferredVideoRange", v5, &number), number) && (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr), valuePtr < 4))
  {
    if (valuePtr - 1 > 2)
    {
      BestSupportedVideoRangeFromDisplayList = 0;
    }

    else
    {
      BestSupportedVideoRangeFromDisplayList = qword_196E777E0[valuePtr - 1];
    }
  }

  else
  {
    BestSupportedVideoRangeFromDisplayList = famvr_getBestSupportedVideoRangeFromDisplayList(a1, a3);
  }

  if (number)
  {
    CFRelease(number);
  }

  return BestSupportedVideoRangeFromDisplayList;
}

uint64_t fampvr_didSetPropertyCallbackForPreferredVideoFormat(const void *a1, uint64_t a2, const __CFNumber *a3)
{
  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        valuePtr = -1;
        if (a3)
        {
          CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr >= 4)
          {
            fampvr_didSetPropertyCallbackForPreferredVideoFormat_cold_1(&v18);
            return v18;
          }

          v10 = 0;
          if (valuePtr - 1 > 2)
          {
            BestSupportedVideoRangeFromDisplayList = 0;
          }

          else
          {
            BestSupportedVideoRangeFromDisplayList = qword_196E777E0[valuePtr - 1];
          }
        }

        else
        {
          v18 = 0;
          v14 = CFGetAllocator(a1);
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v15)
          {
            v15(a1, @"AlternateFilterMonitorProperty_DisplayList", v14, &v18);
            v10 = v18;
          }

          else
          {
            v10 = 0;
          }

          BestSupportedVideoRangeFromDisplayList = famvr_getBestSupportedVideoRangeFromDisplayList(a1, v10);
        }

        v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v16)
        {
          v12 = v16(a1, BestSupportedVideoRangeFromDisplayList);
LABEL_27:
          v7 = v12;
          if (!v10)
          {
            return v7;
          }

          goto LABEL_30;
        }

LABEL_29:
        v7 = 4294954514;
        if (!v10)
        {
          return v7;
        }

LABEL_30:
        CFRelease(v10);
        return v7;
      }

      if (!FigCFEqual())
      {
        return 0;
      }
    }

    v18 = 0;
    v8 = CFGetAllocator(a1);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(a1, @"AlternateFilterMonitorProperty_DisplayList", v8, &v18);
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v12 = v11(a1, v10);
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a3);
}

uint64_t famvr_getBestSupportedVideoRangeFromDisplayList(const void *a1, const __CFArray *a2)
{
  number = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(a1, @"AlternateFilterMonitorProperty_OverrideVideoRange", *MEMORY[0x1E695E480], &number);
    if (number)
    {
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      v5 = valuePtr;
      if (valuePtr >= 6)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
      }

      else if (valuePtr)
      {
        goto LABEL_8;
      }
    }
  }

  MaxContentFrameRate = fafm_getMaxContentFrameRate(a1);
  fafm_getBestSupportedDisplayFromDisplayList(a2, &v8, MaxContentFrameRate);
  v5 = v8;
LABEL_8:
  if (number)
  {
    CFRelease(number);
  }

  return v5;
}

uint64_t FigAlternateFilterMonitorCreateForSupportedVideoRange(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v20 = 0;
  DisplayVideoRangeNotificationSingleton = FPSupport_GetDisplayVideoRangeNotificationSingleton();
  v5 = FigAlternateFilterMonitorCreateForNotification(a1, FigAlternateFilterMonitorCreateForSupportedVideoRange_callbacks, @"DisplayVideoRangeChanged", DisplayVideoRangeNotificationSingleton, 0, &v20);
  if (!v5)
  {
    v6 = 0;
    while (1)
    {
      v5 = FigAlternateSupportedVideoRangeFilterCreate(a1, v6, &cf);
      if (v5)
      {
        break;
      }

      v8 = cf;
      v7 = v20;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v9)
      {
        goto LABEL_15;
      }

      v5 = v9(v7, v8, v6);
      if (v5)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (++v6 == 6)
      {
        BestSupportedVideoRangeFromDisplayList = famvr_getBestSupportedVideoRangeFromDisplayList(v20, 0);
        v11 = v20;
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v12)
        {
LABEL_15:
          v17 = 4294954514;
          goto LABEL_16;
        }

        v5 = v12(v11, BestSupportedVideoRangeFromDisplayList);
        if (v5)
        {
          break;
        }

        SInt32 = FigCFNumberCreateSInt32();
        v14 = v20;
        if (SInt32)
        {
          v15 = SInt32;
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v16)
          {
            v16(v14, @"AlternateFilterMonitorProperty_CurrentDisplayVideoRange", v15);
          }

          *a2 = v20;
          v20 = 0;
          CFRelease(v15);
          v17 = 0;
        }

        else
        {
          v17 = 0;
          *a2 = v20;
          v20 = 0;
        }

        goto LABEL_18;
      }
    }
  }

  v17 = v5;
LABEL_16:
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t famsvr_handleTriggerInvocationForSupportedVideoRange(const void *a1, uint64_t a2, const __CFArray *a3)
{
  BestSupportedVideoRangeFromDisplayList = famvr_getBestSupportedVideoRangeFromDisplayList(a1, a3);
  SInt32 = FigCFNumberCreateSInt32();
  if (SInt32)
  {
    v6 = SInt32;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(a1, @"AlternateFilterMonitorProperty_CurrentDisplayVideoRange", v6);
    }

    CFRelease(v6);
  }

  return BestSupportedVideoRangeFromDisplayList;
}

uint64_t famsvr_didSetPropertyCallbackForSupportedVideoRange(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      return 0;
    }

    v12 = 0;
    v8 = CFGetAllocator(a1);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(a1, @"AlternateFilterMonitorProperty_DisplayList", v8, &v12);
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v7 = v11(a1, v10);
      if (!v10)
      {
        return v7;
      }
    }

    else
    {
      v7 = 4294954514;
      if (!v10)
      {
        return v7;
      }
    }

    CFRelease(v10);
    return v7;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a3);
}

uint64_t FigAlternateFilterMonitorCreateForSupportedFramerateBucketCap(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v16 = 0;
  DisplayVideoRangeNotificationSingleton = FPSupport_GetDisplayVideoRangeNotificationSingleton();
  v5 = FigAlternateFilterMonitorCreateForNotification(a1, FigAlternateFilterMonitorCreateForSupportedFramerateBucketCap_callbacks, @"DisplayVideoRangeChanged", DisplayVideoRangeNotificationSingleton, 0, &v16);
  if (!v5)
  {
    v6 = 0;
    while (1)
    {
      v5 = FigAlternateFramerateBucketCapFilterCreate(a1, v6, &cf);
      if (v5)
      {
        break;
      }

      v8 = cf;
      v7 = v16;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v9)
      {
        goto LABEL_12;
      }

      v5 = v9(v7, v8, v6);
      if (v5)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (++v6 == 3)
      {
        fafm_getMaxContentFrameRate(v16);
        v17 = 0u;
        v18 = 0u;
        FPSupport_GetMainDisplayVideoRangeAndSizeAndFrameRate(&v17, &v17 + 1, &v18 + 1);
        v10 = FigFrameRateToFrameRateBucket(*(&v18 + 1));
        v11 = v16;
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v12)
        {
LABEL_12:
          v13 = 4294954514;
          goto LABEL_13;
        }

        v13 = v12(v11, v10);
        if (v13)
        {
          goto LABEL_13;
        }

        *a2 = v16;
        v16 = 0;
        goto LABEL_15;
      }
    }
  }

  v13 = v5;
LABEL_13:
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t fampfr_handleTriggerInvocationForSupportedFramerateBucketCap(const void *a1, uint64_t a2, const __CFArray *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v5 = CFGetAllocator(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(a1, @"AlternateFilterMonitorProperty_PreferredFrameRate", v5, cf);
    v8 = cf[0];
    if (v7)
    {
      v10 = 0.0;
      if (!cf[0])
      {
LABEL_5:
        if (v10 != 0.0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    else
    {
      FigGetDoubleFromCFTypeWithDefault();
      v10 = v9;
      v8 = cf[0];
      if (!cf[0])
      {
        goto LABEL_5;
      }
    }

    CFRelease(v8);
    goto LABEL_5;
  }

LABEL_6:
  *cf = 0u;
  v15 = 0u;
  MaxContentFrameRate = fafm_getMaxContentFrameRate(a1);
  fafm_getBestSupportedDisplayFromDisplayList(a3, cf, MaxContentFrameRate);
  v10 = *(&v15 + 1);
LABEL_7:
  if (dword_1EAF17490)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigFrameRateToFrameRateBucket(v10);
}

uint64_t fampfr_didSetPropertyCallbackForSupportedFramerateBucketCap(const void *a1, uint64_t a2, uint64_t a3)
{
  if (FigCFEqual())
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {

      return v5(a1, a3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      fampfr_didSetPropertyCallbackForSupportedFramerateBucketCap_cold_1(a1, &v7);
      return v7;
    }
  }

  return result;
}

uint64_t FigAlternateFilterMonitorCreateForLowPowerMode(const __CFAllocator *a1, CFTypeRef *a2)
{
  v14 = 0;
  cf = 0;
  PowerStateNotificationSingleton = FPSupport_GetPowerStateNotificationSingleton();
  v5 = FigAlternateFilterMonitorCreateForNotification(a1, off_1F0AE8958, @"PowerStateChanged", PowerStateNotificationSingleton, 0, &cf);
  if (v5)
  {
    goto LABEL_14;
  }

  v5 = FigAlternateLowPowerModeFilterCreate(a1, &v14);
  if (v5)
  {
    goto LABEL_14;
  }

  v7 = v14;
  v6 = cf;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
LABEL_8:
    v12 = 4294954514;
    goto LABEL_9;
  }

  v5 = v8(v6, v7, 1);
  if (v5)
  {
LABEL_14:
    v12 = v5;
    goto LABEL_9;
  }

  v9 = cf;
  v10 = FPSupport_IsInLowPowerMode();
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11(v9, v10);
  if (!v12)
  {
    *a2 = cf;
    cf = 0;
    goto LABEL_11;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  if (v14)
  {
    CFRelease(v14);
  }

  return v12;
}

uint64_t FigAlternateFilterMonitorCreateForVideoRangeFramerateCap(const __CFAllocator *a1, unsigned int *a2, CFTypeRef *a3)
{
  v16 = 0;
  cf = 0;
  v6 = CFDataCreate(a1, a2, 32);
  if (v6)
  {
    DisplayVideoRangeNotificationSingleton = FPSupport_GetDisplayVideoRangeNotificationSingleton();
    v8 = FigAlternateFilterMonitorCreateForNotification(a1, off_1F0AE8970, @"DisplayVideoRangeChanged", DisplayVideoRangeNotificationSingleton, v6, &cf);
    if (v8 || (v9 = FPSupportVideoRangeToAlternateVideoRange(*a2), v10 = FigFrameRateToFrameRateBucket(*(a2 + 3)), v8 = FigAlternateVideoRangeAndFrameRateBucketFilterCreate(a1, v9, v10, &v16), v8))
    {
      v14 = v8;
    }

    else
    {
      v12 = v16;
      v11 = cf;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v13)
      {
        v14 = v13(v11, v12, 1);
        if (!v14)
        {
          *a3 = cf;
          cf = 0;
          goto LABEL_10;
        }
      }

      else
      {
        v14 = 4294954514;
      }
    }
  }

  else
  {
    FigAlternateFilterMonitorCreateForVideoRangeFramerateCap_cold_1(&v18);
    v14 = v18;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_10:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v14;
}

BOOL famfrc_handleTriggerInvocationForFramerateCap(const void *a1, uint64_t a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0u;
  v10 = 0u;
  MaxContentFrameRate = fafm_getMaxContentFrameRate(a1);
  fafm_getBestSupportedDisplayFromDisplayList(a3, &v9, MaxContentFrameRate);
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 48));
  return *&v10 > *(BytePtr + 2) && *(&v9 + 1) > *(BytePtr + 1) && v9 > *BytePtr;
}

uint64_t famfrc_didSetPropertyCallbackForFrameRateCap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCFEqual();
  if (result)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {

      return v6(a1, a3);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t FigAlternateFilterMonitorCreateForRenditionDenyList(uint64_t a1, Boolean (__cdecl *a2)(const void *, const void *), CFTypeRef *a3)
{
  cf = 0;
  v3 = *(MEMORY[0x1E695E9C0] + 16);
  *&v13.version = *MEMORY[0x1E695E9C0];
  *&v13.release = v3;
  if (!a3)
  {
    FigAlternateFilterMonitorCreateForRenditionDenyList_cold_1(&v15);
    return v15;
  }

  MEMORY[0x19A8D3660](&FigAlternateFilterMonitorGetClassID_sRegisterFigAlternateFilterMonitorTypeOnce, RegisterFigAlternateFilterMonitorType);
  v6 = CMDerivedObjectCreate();
  v7 = cf;
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = FigSimpleMutexCreate();
    *DerivedStorage = v9;
    if (v9)
    {
      if (a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = MEMORY[0x1E695D780];
      }

      DerivedStorage[1] = v10;
      v13.equal = v10;
      v6 = 0;
      DerivedStorage[3] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &v13);
      *a3 = cf;
      return v6;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13.version, LODWORD(v13.retain), LODWORD(v13.release));
    v6 = v12;
    v7 = cf;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

uint64_t FigAlternateFilterMonitorCreateForExpensiveNetwork(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigAlternateFilterMonitorCreateForNotification(a1, off_1F0AE89A0, @"NetworkIsExpensiveChanged", a2, 0, &cf);
  if (v4)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

  return v4;
}

uint64_t FigAlternateFilterMonitorCreateForStreamingRestrictions(const __CFAllocator *a1, CFTypeRef *a2)
{
  v15 = 0;
  v12 = 0;
  cf = 0;
  v11 = 0;
  *bytes = FigSimpleMutexCreate();
  if (!*bytes)
  {
    FigAlternateFilterMonitorCreateForStreamingRestrictions_cold_2(&v16);
    v4 = 0;
LABEL_17:
    v9 = v16;
    goto LABEL_10;
  }

  v15 = 0;
  v4 = CFDataCreate(a1, bytes, 16);
  if (!v4)
  {
    FigAlternateFilterMonitorCreateForStreamingRestrictions_cold_1(&v16);
    goto LABEL_17;
  }

  FigSimpleMutexLock();
  v5 = FigAlternateFilterMonitorCreateForNotification(a1, off_1F0AE89B8, @"StreamingRestrictions_RestrictionsChanged", 0, v4, &cf);
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    FigStreamingRestrictionsGetLatestRestrictions(&v12 + 1, &v12, &v11);
    FilterIfNecessary = famu_getNewStateAndCreateFilterIfNecessary(cf, SHIDWORD(v12), v12, v11);
    v7 = cf;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v9 = v8(v7, FilterIfNecessary);
      if (!v9)
      {
        FigSimpleMutexUnlock();
        *a2 = cf;
        cf = 0;
        *bytes = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 4294954514;
    }
  }

  if (*bytes)
  {
    FigSimpleMutexUnlock();
  }

LABEL_10:
  FigSimpleMutexDestroy();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v9;
}

BOOL famu_getNewStateAndCreateFilterIfNecessary(uint64_t a1, int a2, int a3, unsigned int a4)
{
  if (!(a3 | a2 | a4))
  {
    return 0;
  }

  v4 = a4;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (FigAlternateFilterTreeCreate(AllocatorForMedia, &v20))
  {
    goto LABEL_47;
  }

  v9 = MEMORY[0x1E695E480];
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v10 = 1440.0;
      goto LABEL_13;
    }

    if (a2 == 2)
    {
      v10 = 1080.0;
      goto LABEL_13;
    }

LABEL_11:
    v10 = 2147483650.0;
    goto LABEL_13;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    goto LABEL_11;
  }

  v10 = 720.0;
LABEL_13:
  if (FigAlternateResolutionCapFilterCreate(*MEMORY[0x1E695E480], @"ResolutionCap", 700, &v19, 2147483650.0, v10) || FigAlternateFilterTreeInsertLeaf(v20, v19, 700))
  {
LABEL_47:
    v13 = 0;
    v14 = 0;
    goto LABEL_30;
  }

LABEL_15:
  if (a3)
  {
    if (a3 == 1)
    {
      v12 = 30.0;
    }

    else
    {
      v12 = a3 == 2 ? 60.0 : 2147483650.0;
    }

    if (FigAlternateFrameRateCapFilterCreate(*v9, &v18, v12) || FigAlternateFilterTreeInsertLeaf(v20, v18, 700))
    {
      goto LABEL_47;
    }
  }

  if (v4)
  {
    if (v4 != 1)
    {
      v4 = 4;
    }

    if (FigAlternatePreferredVideoRangeFilterCreate(*v9, v4, &cf) || FigAlternateFilterTreeInsertLeaf(v20, cf, 700))
    {
      goto LABEL_47;
    }
  }

  if (FigAlternateFilterTreeCreateFilter(v20, @"StreamingRestrictions", 851, &v21))
  {
    goto LABEL_47;
  }

  v13 = v21;
  v21 = 0;
  v14 = 1;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v14)
  {
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v15)
    {
      v11 = v15(a1, v13, 1) == 0;
      if (!v13)
      {
        return v11;
      }

      goto LABEL_45;
    }
  }

  v11 = 0;
  if (v13)
  {
LABEL_45:
    CFRelease(v13);
  }

  return v11;
}

uint64_t famfon_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    v4(a1, *(DerivedStorage + 48));
  }

  v5 = v3[9];
  if (v5)
  {
    FigAlternateFilterMonitorTriggerRemoveObserver(v5, a1);
  }

  v6 = v3[4];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = v3[9];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = v3[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v3[6];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = v3[7];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = v3[8];
  if (v11)
  {
    CFRelease(v11);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef famfon_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 80);
  v4 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v4 + 64), v3);
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAlternateFilterMonitorForNotification<%p> %@ state:%lu currentFilter:%@]", a1, *(DerivedStorage + 32), *(DerivedStorage + 80), Value);
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t famfon_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      FigSimpleMutexLock();
      if (FigCFEqual())
      {
        v8 = *(CMBaseObjectGetDerivedStorage() + 72);
        if (v8)
        {
          v9 = CFRetain(v8);
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        Value = CFDictionaryGetValue(*(v7 + 56), a2);
        v9 = Value;
        if (Value)
        {
          CFRetain(Value);
        }
      }

      *a4 = v9;
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      famfon_copyProperty_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    famfon_copyProperty_cold_2(&v13);
    return v13;
  }
}

uint64_t famfon_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    if (FigCFEqual())
    {
      v7 = CMBaseObjectGetDerivedStorage();
      v8 = FigAlternateFilterMonitorTriggerRemoveObserver(*(v7 + 72), a1);
      if (v8 || (v8 = FigAlternateFilterMonitorTriggerAddObserver(a3, a1, famfon_triggerCallback, 0), v8))
      {
        v9 = v8;
      }

      else
      {
        v9 = *(v7 + 72);
        *(v7 + 72) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v9)
        {
          CFRelease(v9);
LABEL_12:
          v9 = 0;
        }
      }

      FigSimpleMutexUnlock();
      if (v9)
      {
        return v9;
      }

      goto LABEL_14;
    }

    v10 = *(DerivedStorage + 56);
    if (a3)
    {
      CFDictionarySetValue(v10, a2, a3);
    }

    else
    {
      CFDictionaryRemoveValue(v10, a2);
    }

    goto LABEL_12;
  }

  famfon_setProperty_cold_1(&v13);
  v9 = v13;
  if (v13)
  {
    return v9;
  }

LABEL_14:
  v11 = *(DerivedStorage + 16);
  if (v11)
  {
    v11(a1, a2, a3);
  }

  return v9;
}

uint64_t famfon_copyFilterForCurrentState(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 80);
    v6 = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(*(v6 + 64), v5);
    *a2 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    famfon_copyFilterForCurrentState_cold_1(&v9);
    return v9;
  }
}

uint64_t famfon_invokeTrigger(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 72);
  if (v4)
  {
    v5 = CFRetain(v4);
    FigSimpleMutexUnlock();
    if (v5)
    {
      v6 = FigAlternateFilterMonitorTriggerInvoke(v5, a2);
      CFRelease(v5);
      return v6;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  return 0;
}

void fafm_getBestSupportedDisplayFromDisplayList(const __CFArray *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v11 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1 && CFArrayGetCount(a1))
  {
    memset(&v10[2], 0, 28);
    if (CFArrayGetCount(a1) < 1)
    {
      v7 = 6;
    }

    else
    {
      v6 = 0;
      v7 = 6;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
        memset(v10, 0, 32);
        FPSupport_GetBestDisplayInfoForDisplay(ValueAtIndex, v10, a3);
        if (SLODWORD(v10[0]) < v7 && SLODWORD(v10[0]) >= 1)
        {
          v10[2] = *(v10 + 4);
          *(&v10[2] + 12) = v10[1];
          v7 = v10[0];
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(a1));
    }

    *a2 = v7;
    *(a2 + 4) = v10[2];
    *(a2 + 16) = *(&v10[2] + 12);
  }

  else
  {

    FPSupport_GetMainDisplayVideoRangeAndSizeAndFrameRate(a2, (a2 + 8), (a2 + 24));
  }
}

float fafm_getMaxContentFrameRate(const void *a1)
{
  valuePtr = 0.0;
  number = 0;
  v2 = CFGetAllocator(a1);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = v3(a1, @"AlternateFilterMonitorProperty_MaxContentFrameRate", v2, &number);
    v5 = number;
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = number == 0;
    }

    if (!v6)
    {
      CFNumberGetValue(number, kCFNumberFloatType, &valuePtr);
      v5 = number;
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return valuePtr;
}

uint64_t famrbl_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[5];
  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef famrbl_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAlternateFilterMonitorForRenditionDenyList<%p> state:%lu currentFilter:%@]", a1, *(DerivedStorage + 16), *(DerivedStorage + 40));
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t famrbl_setProperty(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    v8 = *(v7 + 16);
    if (FigCFEqual())
    {
      if (a3 && (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a3)))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16[1]);
        v10 = v11;
      }

      else if (FigCFEqual())
      {
        v10 = 0;
      }

      else
      {
        v12 = *(v7 + 32);
        *(v7 + 32) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        v10 = 0;
        ++v8;
      }
    }

    else
    {
      v10 = 4294951681;
    }

    famrbl_updateFilterUnlockAndNotify(a1, v8);
  }

  else
  {
    famrbl_setProperty_cold_1(v16);
    return v16[0];
  }

  return v10;
}

uint64_t famrbl_updateFilterUnlockAndNotify(const void *a1, uint64_t a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  if (v5 == a2)
  {
    FigSimpleMutexUnlock();
    v6 = 0;
  }

  else
  {
    v7 = CFGetAllocator(a1);
    if (FigAlternateURLDependencyDenyListFilterCreate(v7, *(DerivedStorage + 24), *(DerivedStorage + 32), 0, &cf))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(DerivedStorage + 40);
      v9 = cf;
      if (cf)
      {
        v9 = CFRetain(cf);
      }

      *(DerivedStorage + 40) = v9;
      *(DerivedStorage + 16) = a2;
    }

    FigSimpleMutexUnlock();
    v6 = fam_postStateChangedNotification(a1, v5, v8, a2, cf);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t famrbl_copyFilterForCurrentState(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 40);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    famrbl_copyFilterForCurrentState_cold_1(&v7);
    return v7;
  }
}

uint64_t famrbl_invokeTrigger(const void *a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    v7 = CFArrayGetCount(v6);
    v8 = *(DerivedStorage + 16);
    if (v7 < 1)
    {
      v10 = 0;
    }

    else
    {
      v9 = v7;
      v23 = *(DerivedStorage + 16);
      v24 = a1;
      v10 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 24), v9 - 1);
        if (a2 && (v12 = ValueAtIndex, v13 = *(DerivedStorage + 8), v14 = CFArrayGetCount(a2), v14 >= 1))
        {
          v15 = v14;
          v16 = 0;
          while (1)
          {
            v17 = CFArrayGetValueAtIndex(a2, v16);
            if (v13(v17, v12))
            {
              break;
            }

            if (v15 == ++v16)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          CFArrayRemoveValueAtIndex(*(DerivedStorage + 24), v9 - 1);
          v10 = 1;
        }
      }

      while (v9-- > 1);
      v8 = v23;
      a1 = v24;
    }
  }

  else
  {
    v10 = 0;
    v8 = *(DerivedStorage + 16);
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v20 = CFArrayGetValueAtIndex(a2, i);
      if (!FigCFArrayContainsValue())
      {
        CFArrayAppendValue(*(DerivedStorage + 24), v20);
        v10 = 1;
      }
    }
  }

  if (v10)
  {
    v21 = v8 + 1;
  }

  else
  {
    v21 = v8;
  }

  return famrbl_updateFilterUnlockAndNotify(a1, v21);
}

uint64_t FigShareAndAirPlayHelperGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_68 != -1)
  {
    FigShareAndAirPlayHelperGetClassID_cold_1();
  }

  return qword_1ED4CACC0;
}

uint64_t helper_registerBaseClass(uint64_t a1)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigShareAndAirPlayHelperGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_68 != -1)
  {
    FigShareAndAirPlayHelperGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMLBandwidthPredictorCreate(const void *a1, CFTypeRef *a2)
{
  v4 = objc_autoreleasePoolPush();
  FigGetUpTimeNanoseconds();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigMLBandwidthPredictorCreate_cold_4(&v22);
    v18 = v22;
    goto LABEL_16;
  }

  FigNetworkPredictorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v18 = v5;
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || ((v7 = DerivedStorage, !a1) ? (v8 = 0) : (v8 = CFRetain(a1)), v7[5] = v8, v9 = FigSimpleMutexCreate(), (v7[1] = v9) == 0))
  {
    v18 = 4294948286;
    goto LABEL_16;
  }

  GlobalNetworkBufferingLowPriorityQueue = FigThreadGetGlobalNetworkBufferingLowPriorityQueue();
  if (GlobalNetworkBufferingLowPriorityQueue)
  {
    v11 = GlobalNetworkBufferingLowPriorityQueue;
    v12 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v12)
    {
      v13 = v12;
      v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
      if (v14)
      {
        v15 = v14;
        v16 = dispatch_time(0, 10000000000);
        dispatch_source_set_timer(v15, v16, 0x2540BE400uLL, 0x3B9ACA00uLL);
        v17 = CFRetain(v13);
        dispatch_set_context(v15, v17);
        dispatch_source_set_event_handler_f(v15, fmlbp_timerCallback);
        dispatch_set_finalizer_f(v15, FigCFRelease_6);
        dispatch_resume(v15);
        v18 = 0;
        *v7 = v15;
      }

      else
      {
        FigMLBandwidthPredictorCreate_cold_1(&v22);
        v18 = v22;
      }

      CFRelease(v13);
      if (v18)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    FigMLBandwidthPredictorCreate_cold_2(&v22);
  }

  else
  {
    FigMLBandwidthPredictorCreate_cold_3(&v22);
  }

  v18 = v22;
  if (v22)
  {
    goto LABEL_16;
  }

LABEL_13:
  v7[3] = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__7;
  v19 = getMLServiceClass_softClass;
  v26 = __Block_byref_object_dispose__7;
  v27 = getMLServiceClass_softClass;
  if (!getMLServiceClass_softClass)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getMLServiceClass_block_invoke;
    v21[3] = &unk_1E7486A28;
    v21[4] = &v22;
    __getMLServiceClass_block_invoke(v21);
    v19 = v23[5];
  }

  _Block_object_dispose(&v22, 8);
  v18 = 0;
  v7[6] = [[v19 alloc] initWithNameOfModel:@"HLSMLBandwidthPredictor"];
  v7[12] = 0;
  *a2 = 0;
LABEL_16:
  objc_autoreleasePoolPop(v4);
  return v18;
}

void sub_196645078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FigCFRelease_6(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fmlbp_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fmlbp_stopTraining(a1);
  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 96);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v9);

  return FigSimpleMutexDestroy();
}

uint64_t fmlbp_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"NetworkPredictorProperty_EnableMLTraining"))
  {
    if (*MEMORY[0x1E695E4D0] != a3)
    {
      fmlbp_stopTraining(a1);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"NetworkPredictorProperty_CMSessionID"))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFStringGetTypeID())
      {
        v8 = DerivedStorage[7];
        DerivedStorage[7] = a3;
        goto LABEL_12;
      }
    }

    fmlbp_setProperty_cold_1(v16);
    goto LABEL_31;
  }

  if (CFEqual(a2, @"NetworkPredictorProperty_ClientBundleIdentifier"))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFStringGetTypeID())
      {
        v8 = DerivedStorage[8];
        DerivedStorage[8] = a3;
        goto LABEL_12;
      }
    }

    fmlbp_setProperty_cold_2(v16);
    goto LABEL_31;
  }

  if (!CFEqual(a2, @"NetworkPredictorProperty_InterfaceType"))
  {
    if (CFEqual(a2, *MEMORY[0x1E6962A18]))
    {
      v8 = DerivedStorage[9];
      DerivedStorage[9] = a3;
      if (!a3)
      {
LABEL_13:
        if (v8)
        {
          CFRelease(v8);
        }

        goto LABEL_15;
      }

LABEL_12:
      CFRetain(a3);
      goto LABEL_13;
    }

    if (!CFEqual(a2, @"NetworkPredictorProperty_ReportingAgent"))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16[1]);
      v10 = v13;
      goto LABEL_16;
    }

    if (a3)
    {
      v8 = DerivedStorage[12];
      DerivedStorage[12] = a3;
      goto LABEL_12;
    }

    fmlbp_setProperty_cold_4(v16);
LABEL_31:
    v10 = v16[0];
    goto LABEL_16;
  }

  if (!a3 || (v12 = CFGetTypeID(a3), v12 != CFNumberGetTypeID()))
  {
    fmlbp_setProperty_cold_3(v16);
    goto LABEL_31;
  }

  CFNumberGetValue(a3, kCFNumberIntType, DerivedStorage + 10);
LABEL_15:
  v10 = 0;
LABEL_16:
  FigSimpleMutexUnlock();
  return v10;
}

void fmlbp_stopTraining(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    dispatch_source_cancel(*DerivedStorage);
    if (*DerivedStorage)
    {
      dispatch_release(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }
}

uint64_t fmlbp_makePrediction(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v6 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    fmlbp_makePrediction_cold_1(&v22);
    v12 = v22;
    goto LABEL_30;
  }

  v8 = DerivedStorage;
  FigSimpleMutexLock();
  cf = 0;
  v9 = *(v8 + 80);
  if (v9 == 3)
  {
    v10 = FigNetworkWirelessReportingInterfaceCopyWifiStats(&cf);
    if (!v10)
    {
LABEL_5:
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        FigCFDictionarySetInt();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        v12 = 0;
      }

      else
      {
        v12 = 4294954510;
      }

LABEL_7:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v12)
      {
        goto LABEL_28;
      }

      goto LABEL_14;
    }

LABEL_12:
    v12 = v10;
    MutableCopy = 0;
    goto LABEL_7;
  }

  if (v9 == 5)
  {
    v10 = FigNetworkWirelessReportingInterfaceCopyCellStats(&cf);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  MutableCopy = 0;
LABEL_14:
  if (*(a3 + 176))
  {
    v13 = objc_autoreleasePoolPush();
    FigGetUpTimeNanoseconds();
    if (FigCFEqual())
    {
      v14 = *(v8 + 32);
      *a4 = *(v8 + 24);
      *(a4 + 1) = v14;
    }

    else
    {
      v16 = [*(v8 + 48) getPredictionDictionaryWithInputFeatures:MutableCopy];
      [objc_msgSend(v16 objectForKey:{@"predVal", "doubleValue"}];
      *a4 = v17;
      [objc_msgSend(v16 objectForKey:{@"predStdDev", "doubleValue"}];
      a4[1] = v18;
      fmlbp_setCachedPrediction(v8, MutableCopy, *a4, v18);
    }

    FigGetUpTimeNanoseconds();
    objc_autoreleasePoolPop(v13);
    if (*a4 >= 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 4294948281;
    }
  }

  else
  {
    FigGetUpTimeNanoseconds();
    if (FigCFEqual())
    {
      v15 = *(v8 + 24);
    }

    else
    {
      [*(v8 + 48) getPredictionWithInputFeatures:MutableCopy];
      v15 = v19;
      fmlbp_setCachedPrediction(v8, MutableCopy, v19, 0.0);
    }

    FigGetUpTimeNanoseconds();
    if (v15 >= 2.22044605e-16)
    {
      v12 = 0;
    }

    else
    {
      v12 = 4294948281;
    }

    *a4 = v15;
  }

LABEL_28:
  FigSimpleMutexUnlock();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_30:
  objc_autoreleasePoolPop(v6);
  return v12;
}

void fmlbp_setCachedPrediction(uint64_t a1, CFTypeRef cf, double a3, double a4)
{
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  v4 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

void fmlbp_timerCallback(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v1)
  {
    fmlbp_timerCallback_cold_2(0, v2, v3, v4, v5, v6, v7, v8, v24, SDWORD2(v24), SHIDWORD(v24), v25);
    return;
  }

  v9 = v1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v30 = 0;
  cf = 0;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(DerivedStorage + 72))
  {
    v12 = UpTimeNanoseconds;
    v13 = *(DerivedStorage + 80);
    if (v13 == 5)
    {
      if (FigNetworkWirelessReportingInterfaceCopyCellStats(&cf))
      {
        goto LABEL_29;
      }
    }

    else if (v13 == 3 && FigNetworkWirelessReportingInterfaceCopyWifiStats(&cf))
    {
      goto LABEL_29;
    }

    if (!FigNetworkHistoryCopySharedPredictor())
    {
      v14 = *(DerivedStorage + 88);
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v15)
      {
        v32[0] = 0;
        v32[1] = 0;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v32[2] = v12 - v14;
        v42 = 9;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v15(v30, v12, v32, &v24);
      }

      *(DerivedStorage + 88) = v12;
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (!MutableCopy)
      {
        fmlbp_timerCallback_cold_1(v32);
        v18 = 0;
        v20 = LOBYTE(v32[0]);
        goto LABEL_17;
      }

      FigCFDictionarySetDouble();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt();
      v17 = *(DerivedStorage + 16);
      if (v17)
      {
        v18 = CFRetain(v17);
        v19 = *(DerivedStorage + 16);
        *(DerivedStorage + 16) = MutableCopy;
        CFRetain(MutableCopy);
        if (v19)
        {
          CFRelease(v19);
        }
      }

      else
      {
        *(DerivedStorage + 16) = MutableCopy;
        CFRetain(MutableCopy);
        v18 = 0;
      }

      goto LABEL_16;
    }

LABEL_29:
    v18 = 0;
    MutableCopy = 0;
    v20 = 0;
    goto LABEL_17;
  }

  v18 = 0;
  MutableCopy = 0;
LABEL_16:
  v20 = 1;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v20)
  {
    v21 = CMBaseObjectGetDerivedStorage();
    if (v18)
    {
      v22 = v21;
      v23 = objc_autoreleasePoolPush();
      [*(v22 + 48) writeWithData:{v18, v24, v25, v26, v27, v28, v29}];
      objc_autoreleasePoolPop(v23);
    }
  }

  FigSimpleMutexUnlock();
  CFRelease(v9);
  if (v18)
  {
    CFRelease(v18);
  }
}

Class __getMLServiceClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaMLServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaMLServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E748BAA8;
    v5 = 0;
    MediaMLServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaMLServicesLibraryCore_frameworkLibrary)
  {
    __getMLServiceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MLService");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMLServiceClass_block_invoke_cold_1();
  }

  getMLServiceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __MediaMLServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaMLServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void FigCaptionRendererOutputNodeFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 80);

  CGImageRelease(v3);
}

__CFString *FigCaptionRendererOutputNodeCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererOutputNode: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererOutputNode <FigCaptionRendererOutputNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = DerivedStorage[1];
  if (v5)
  {
    v6 = *DerivedStorage;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v8 = *(ProtocolVTable + 16);
      if (v8)
      {
        v9 = *(v8 + 32);
        if (v9)
        {
          v9(v5, v6);
        }
      }
    }
  }

  if (a2)
  {
    v10 = *v4;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v11 = CMBaseObjectGetProtocolVTable();
    if (v11)
    {
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = *(v12 + 24);
        if (v13)
        {
          v13(a2, v10);
        }
      }
    }
  }

  v4[1] = a2;
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_AddChildNode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v10.length = CFArrayGetCount(v4);
  v10.location = 0;
  if (CFArrayGetFirstIndexOfValue(v4, v10, a2) == -1)
  {
    CFArrayAppendValue(*(DerivedStorage + 16), a2);
    v6 = *DerivedStorage;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v8 = *(ProtocolVTable + 16);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          v9(a2, v6);
        }
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveChildNode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v10.length = CFArrayGetCount(v4);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v10, a2);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 16), FirstIndexOfValue);
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v7 = *(ProtocolVTable + 16);
      if (v7)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
          v8(a2, 0);
        }
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_HasChildNode(uint64_t a1, const void *a2, BOOL *a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  v7.length = CFArrayGetCount(v5);
  v7.location = 0;
  *a3 = CFArrayGetFirstIndexOfValue(v5, v7, a2) != -1;
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_RemovelAllChildNodes(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 16)) >= 1)
  {
    v2 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), v2);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v5 = *(ProtocolVTable + 16);
        if (v5)
        {
          v6 = *(v5 + 16);
          if (v6)
          {
            v6(ValueAtIndex, 0);
          }
        }
      }

      ++v2;
    }

    while (v2 < CFArrayGetCount(*(DerivedStorage + 16)));
  }

  CFArrayRemoveAllValues(*(DerivedStorage + 16));
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_SetPosition(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 32) = a3;
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_SetSize(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a2;
  *(DerivedStorage + 48) = a3;
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_SetContent(uint64_t a1, CGImage *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 80);
  *(DerivedStorage + 80) = CGImageRetain(a2);
  CGImageRelease(v4);
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_DumpInfo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 16)) >= 1)
  {
    v2 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), v2);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v5 = *(ProtocolVTable + 16);
        if (v5)
        {
          v6 = *(v5 + 216);
          if (v6)
          {
            v6(ValueAtIndex);
          }
        }
      }

      ++v2;
    }

    while (v2 < CFArrayGetCount(*(DerivedStorage + 16)));
  }

  return 0;
}

uint64_t RegisterFigCaptionRendererOutputNodeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCaptionRendererCALayerOutputCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a2 && a3 && a4)
  {
    if (a8)
    {
      *a8 = 0;
      FigCaptionRendererOutputGetClassID();
      CMDerivedObjectCreate();
      FigCaptionRendererCALayerOutputCreate_cold_1(&v9);
    }

    else
    {
      FigCaptionRendererCALayerOutputCreate_cold_2(&v9);
    }
  }

  else
  {
    FigCaptionRendererCALayerOutputCreate_cold_3(&v9);
  }

  return v9;
}

double FigCaptionRendererCALayerOutputGetOverscan(uint64_t a1)
{
  v1 = [*CMBaseObjectGetDerivedStorage() getLayerDisplay];
  v2 = [v1 isOverscanned];
  result = 1.0;
  if (v2)
  {
    [v1 overscanAmounts];
    return v4;
  }

  return result;
}

uint64_t FigCaptionRendererCALayerOutputGetDisplayScale(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  if (!v1)
  {
    return 1;
  }

  [v1 getDisplayScale];
  return v2;
}

void FigCaptionRendererCALayerOutput_Finalize(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutput_Finalize_block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = v1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

__CFString *FigCaptionRendererCALayerOutput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererCALayerOutput %p>", a1);
  return Mutable;
}

uint64_t fcrCALayerOutputTransactionBegin()
{
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  return 0;
}

uint64_t fcrCALayerOutputGetBounds(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();

  return [v1 bounds];
}

uint64_t fcrCALayerOutputSetBounds(const void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [*DerivedStorage position];
  v12 = v11;
  [*DerivedStorage bounds];
  v14 = v12 - v13 * 0.5;
  [*DerivedStorage position];
  v16 = v15;
  [*DerivedStorage bounds];
  v18 = v16 - v17 * 0.5;
  [*DerivedStorage bounds];
  v20 = v19;
  [*DerivedStorage bounds];
  v23.origin.x = v14;
  v23.origin.y = v18;
  v23.size.width = v20;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  if (!CGRectEqualToRect(v23, v24))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __fcrCALayerOutputSetBounds_block_invoke;
    v22[3] = &__block_descriptor_80_e5_v8__0l;
    v22[4] = DerivedStorage;
    *&v22[5] = a2;
    *&v22[6] = a3;
    *&v22[7] = a4;
    *&v22[8] = a5;
    v22[9] = a1;
    dispatch_async(MEMORY[0x1E69E96A0], v22);
  }

  return 0;
}

void __fcrCALayerOutputSetBounds_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [**(a1 + 32) setBounds:{0.0, 0.0, *(a1 + 56), *(a1 + 64)}];
  __asm { FMOV            V1.2D, #0.5 }

  [**(a1 + 32) setPosition:{vmulq_f64(*(a1 + 56), _Q1)}];
  [**(a1 + 32) setNeedsLayout];
  [MEMORY[0x1E6979518] commit];
  v7 = *(a1 + 72);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t FigMPEG2SampleGeneratorPushFrame(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v9 = *a3;
  v10 = *(a3 + 2);
  v7 = *a4;
  v8 = *(a4 + 2);
  return v5(a1, a2, &v9, &v7, a5);
}

uint64_t FigMPEG2SampleGeneratorFlush(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigMPEG2SampleGeneratorResync(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    return v1();
  }

  return result;
}

void FigMPEG2SampleGeneratorDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v2(a1);
    }

    FigFormatDescriptionRelease();
    *(a1 + 40) = 0;
    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 8) = 0;
    }

    free(*(a1 + 104));

    free(a1);
  }
}

uint64_t FigMPEG2SampleGeneratorSetMaxFramesPerSampleBuffer(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

uint64_t FigMPEG2SampleGeneratorGetTrackBitRate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954326;
  }

  v1 = *(a1 + 80);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294954318;
  }
}

uint64_t FigMPEG2SampleGeneratorSetAudioConfiguration(uint64_t a1, const void *a2, size_t a3)
{
  result = 4294954326;
  if (a1 && a2 && a3)
  {
    free(*(a1 + 104));
    v7 = malloc_type_malloc(a3, 0x100004077774924uLL);
    *(a1 + 104) = v7;
    if (v7)
    {
      memcpy(v7, a2, a3);
      result = 0;
      *(a1 + 112) = a3;
    }

    else
    {
      return 4294954510;
    }
  }

  return result;
}

uint64_t ADTSResyncForType(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  ADTSFlushStartupQueue(v2);
  *(v2 + 2961) = 0;
  result = FigFormatDescriptionRelease();
  *(a1 + 40) = 0;
  *(v2 + 2968) = 0;
  *(v2 + 2976) = 0;
  return result;
}

void ADTSDestroyForType(uint64_t a1)
{
  if (*(a1 + 88))
  {
    ADTSResyncForType(a1);
    free(*(a1 + 88));
    *(a1 + 88) = 0;
  }
}

uint64_t ADTSReadBitRate(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 2976);
  if (!v3 || !*v2)
  {
    return 4294954513;
  }

  result = 0;
  *a2 = ((8 * *(v2 + 2968)) / ((v3 << 10) / *v2));
  return result;
}

uint64_t ADTSAddFrameToStartup(void *a1, void *cf, __int128 *a3, int a4, uint64_t a5)
{
  v10 = a1[11];
  if (a4)
  {
    ADTSFlushStartupQueue(a1[11]);
  }

  v11 = *(v10 + 2864);
  if (v11 < 50)
  {
    if (cf)
    {
      v12 = CFRetain(cf);
      v11 = *(v10 + 2864);
    }

    else
    {
      v12 = 0;
    }

    v13 = v10 + 48 * v11;
    *(v13 + 464) = v12;
    *(v13 + 504) = a5;
    v14 = *a3;
    *(v13 + 488) = *(a3 + 2);
    *(v13 + 472) = v14;
    *(v13 + 496) = a4;
    *(v10 + 2864) = v11 + 1;
    if (*(v10 + 2880))
    {
      v15 = 0;
    }

    else
    {
      v15 = AudioFileStreamOpen(a1, ADTSPropertyListener, ADTSPacketProc, 0x61647473u, (v10 + 2880));
    }

    DataLength = CMBlockBufferGetDataLength(cf);
    if (!DataLength || *(v10 + 2961))
    {
LABEL_18:
      if (*(v10 + 2961))
      {
        v15 = ADTSCreateFormatDescriptionAndSend(a1);
        if (!v15)
        {
          return v15;
        }
      }

      else if (!v15)
      {
        return v15;
      }
    }

    else
    {
      v17 = DataLength;
      v18 = 0;
      while (1)
      {
        inData = 0;
        lengthAtOffsetOut = 0;
        DataPointer = CMBlockBufferGetDataPointer(cf, v18, &lengthAtOffsetOut, 0, &inData);
        if (DataPointer)
        {
          break;
        }

        DataPointer = AudioFileStreamParseBytes(*(v10 + 2880), lengthAtOffsetOut, inData, 0);
        if (DataPointer)
        {
          break;
        }

        v17 -= lengthAtOffsetOut;
        if (v17)
        {
          v18 += lengthAtOffsetOut;
          if (!*(v10 + 2961))
          {
            continue;
          }
        }

        v15 = 0;
        goto LABEL_18;
      }

      v15 = DataPointer;
    }

    ADTSFlushStartupQueue(v10);
    return v15;
  }

  return ADTSCreateFormatDescriptionAndSend(a1);
}

OpaqueAudioFileStreamID *ADTSFlushStartupQueue(uint64_t a1)
{
  v2 = *(a1 + 2864);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = (a1 + 464);
    do
    {
      if (*v4)
      {
        CFRelease(*v4);
        v2 = *(a1 + 2864);
      }

      *v4 = 0;
      v4 += 6;
      ++v3;
    }

    while (v3 < v2);
  }

  *(a1 + 2864) = 0;
  result = *(a1 + 2880);
  if (result)
  {
    result = AudioFileStreamClose(result);
    *(a1 + 2880) = 0;
  }

  return result;
}

uint64_t ADTSPropertyListener(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 88);
  if (a3 == 1684434292)
  {
    ioPropertyDataSize = 40;
    result = AudioFileStreamGetProperty(*(v3 + 2880), 0x64666D74u, &ioPropertyDataSize, (v3 + 2920));
    if (result || *(v3 + 2920) == 0.0 || !*(v3 + 2928) || !*(v3 + 2948))
    {
      *(v3 + 2960) = 256;
    }

    else
    {
      *(v3 + 2960) = 1;
    }
  }

  else if (a3 == 1717988724)
  {
    ioPropertyDataSize = 4;
    return AudioFileStreamGetProperty(*(v3 + 2880), 0x66666D74u, &ioPropertyDataSize, (v3 + 2872));
  }

  return result;
}

void *OUTLINED_FUNCTION_1_96(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004077774924uLL);
}

uint64_t DolbyPushForType(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 88);
  layout = 0;
  returnedPointerOut = 0;
  layoutSize = 0;
  memset(v49, 0, sizeof(v49));
  if (a5)
  {
    v21 = DolbyFlushForType(a1);
    if (v21)
    {
      goto LABEL_48;
    }
  }

  DolbyGetSampleInfo(v49, theBuffer);
  FormatDescriptionFromAudioConfiguration = v12;
  if (*v49 == 1633889587)
  {
    v14 = 0;
  }

  else if (v49[18] == *(v11 + 18))
  {
    v15 = bswap64(*&v49[19]);
    v16 = bswap64(*(v11 + 19));
    v17 = v15 >= v16;
    v18 = v15 > v16;
    v19 = !v17;
    v14 = (v18 - v19) != 0;
  }

  else
  {
    v14 = 1;
  }

  if (!*&v49[4])
  {
    goto LABEL_49;
  }

  v20 = (a1 + 40);
  if (*(a1 + 40) && *v49 == *v11 && *&v49[12] == *(v11 + 12) && !v14 && *&v49[4] == *(v11 + 4))
  {
    goto LABEL_31;
  }

  v21 = CMBlockBufferAccessDataBytes(theBuffer, 0, 0xAuLL, temporaryBlock, &returnedPointerOut);
  if (v21)
  {
    goto LABEL_48;
  }

  DolbyFlushForType(a1);
  SamplesPerFrame = DolbyGetSamplesPerFrame();
  v21 = DolbyCreateChannelLayout(v49, &layout, &layoutSize);
  if (v21)
  {
    goto LABEL_48;
  }

  if (!*(a1 + 104) || !*(a1 + 112))
  {
    memset(&asbd.mFormatID, 0, 32);
    v43 = 0;
    v44 = 0;
    v21 = DolbyCreateMagicCookie(v49, returnedPointerOut, theBuffer, &v44, &v43);
    if (!v21)
    {
      LODWORD(v23) = *&v49[4];
      asbd.mSampleRate = v23;
      asbd.mFormatID = *v49;
      asbd.mBytesPerPacket = 0;
      v24 = layout;
      mChannelLayoutTag_low = LOWORD(layout->mChannelLayoutTag);
      asbd.mFramesPerPacket = SamplesPerFrame;
      asbd.mChannelsPerFrame = mChannelLayoutTag_low;
      if (*v20)
      {
        CFRelease(*v20);
        *v20 = 0;
        v24 = layout;
      }

      FormatDescriptionFromAudioConfiguration = CMAudioFormatDescriptionCreate(*(a1 + 8), &asbd, layoutSize, v24, v43, v44, 0, (a1 + 40));
      free(v44);
      goto LABEL_24;
    }

LABEL_48:
    FormatDescriptionFromAudioConfiguration = v21;
    goto LABEL_49;
  }

  FormatDescriptionFromAudioConfiguration = MPEG2SampleGeneratorCreateFormatDescriptionFromAudioConfiguration(a1, *v49, *&v49[4], layout, layoutSize, 0);
LABEL_24:
  if (FormatDescriptionFromAudioConfiguration)
  {
    goto LABEL_44;
  }

  v26 = *&v49[12];
  *v11 = *v49;
  *(v11 + 12) = v26;
  v27 = (*(v11 + 4) >> 1) / SamplesPerFrame;
  if (v27 >= 0x18)
  {
    v27 = 24;
  }

  *(v11 + 32) = v27;
  v28 = *(a1 + 16);
  if (v28)
  {
    FormatDescriptionFromAudioConfiguration = v28(a1, *(a1 + 32), *(a1 + 40));
    if (FormatDescriptionFromAudioConfiguration)
    {
      goto LABEL_49;
    }
  }

  else
  {
    FormatDescriptionFromAudioConfiguration = 0;
  }

LABEL_31:
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v30 = *(a1 + 96);
  if (!v30)
  {
    v30 = *(v11 + 32);
  }

  if (v30 == 1)
  {
    if (theBuffer)
    {
      v31 = CFRetain(theBuffer);
    }

    else
    {
      v31 = 0;
    }

    v36 = 0;
    v35 = 0;
    *(v11 + 40) = v31;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    v37 = *(a3 + 16);
    *(v11 + 64) = *a3;
    *(v11 + 36) = a5;
    *(v11 + 80) = v37;
    *(v11 + 88) = a6;
  }

  else
  {
    v32 = *(v11 + 40);
    if (!v32)
    {
      Empty = CMBlockBufferCreateEmpty(*(a1 + 8), *(v11 + 32), 0, (v11 + 40));
      if (Empty)
      {
        goto LABEL_55;
      }

      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      v34 = *(a3 + 16);
      *(v11 + 64) = *a3;
      *(v11 + 36) = a5;
      *(v11 + 80) = v34;
      *(v11 + 88) = a6;
      v32 = *(v11 + 40);
    }

    FormatDescriptionFromAudioConfiguration = CMBlockBufferAppendBufferReference(v32, theBuffer, 0, DataLength, 0);
    if (FormatDescriptionFromAudioConfiguration)
    {
LABEL_49:
      if (layout)
      {
        free(layout);
      }

      v41 = *(a1 + 88);
      v42 = *(v41 + 40);
      if (v42)
      {
        CFRelease(v42);
      }

      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      return FormatDescriptionFromAudioConfiguration;
    }

    v35 = *(v11 + 48);
    v36 = *(v11 + 56);
  }

  v38 = v11 + 16 * v35;
  *(v38 + 96) = v36;
  *(v38 + 104) = 1;
  *(v38 + 108) = DataLength;
  v39 = v35 + 1;
  *(v11 + 48) = v39;
  *(v11 + 56) = v36 + DataLength;
  if (v30 > v39)
  {
    goto LABEL_44;
  }

  Empty = DolbyFlushForType(a1);
LABEL_55:
  FormatDescriptionFromAudioConfiguration = Empty;
LABEL_44:
  if (layout)
  {
    free(layout);
  }

  return FormatDescriptionFromAudioConfiguration;
}

void DolbyResyncForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
}

void DolbyDestroyForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v3 = *(a1 + 88);
    if (*(v1 + 40))
    {
      CFRelease(*(v1 + 40));
      v3 = *(a1 + 88);
    }

    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    free(v3);
    *(a1 + 88) = 0;
  }
}

uint64_t DolbyReadBitRate(uint64_t a1, void *a2)
{
  if (!*(a1 + 40))
  {
    return 4294954323;
  }

  if (!a2)
  {
    return 4294954516;
  }

  result = 0;
  *a2 = *(*(a1 + 88) + 8);
  return result;
}

uint64_t H264GetSPSFromPPSId(uint64_t *a1, int a2, void *a3, uint64_t **a4)
{
  v4 = a1 + 2;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*(v4 + 6) == a2)
    {
      while (1)
      {
        a1 = *a1;
        if (!a1)
        {
          break;
        }

        if (*(a1 + 6) == *(v4 + 7))
        {
          if (a3)
          {
            *a3 = a1;
          }

          result = 0;
          if (a4)
          {
            *a4 = v4;
          }

          return result;
        }
      }

      return 4294954325;
    }
  }

  return 4294954325;
}

void *H264InitializeSPS_PPS_List(void *result)
{
  *result = 0;
  result[1] = result;
  result[2] = 0;
  result[3] = result + 2;
  return result;
}

void H264DestroySPS_PPS_List(uint64_t a1)
{
  H264DestroyParamSetList(a1 + 16);

  H264DestroyParamSetList(a1);
}

void H264DestroyParamSetList(uint64_t a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    *a1 = *i;
    if (!v3)
    {
      *(a1 + 8) = a1;
    }

    v4 = i[1];
    if (i + 4 != v4)
    {
      free(v4);
    }

    free(i);
  }
}

void *H264AddParamSetToList(uint64_t a1, const void *a2, size_t a3, int a4, int a5)
{
  v10 = malloc_type_calloc(1uLL, a3 + 32, 0x103004057E7F81CuLL);
  v11 = v10;
  if (v10)
  {
    v10[1] = v10 + 4;
    memcpy(v10 + 4, a2, a3);
    v11[2] = a3;
    *(v11 + 6) = a4;
    *(v11 + 7) = a5;
    *v11 = 0;
    **(a1 + 8) = v11;
    *(a1 + 8) = v11;
  }

  return v11;
}

__n128 H264ResyncForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 48) = 0;
  v3 = *(v1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  *(v1 + 56) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  v4 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(v1 + 164) = *MEMORY[0x1E6960CC0];
  *(v1 + 180) = *(v4 + 16);
  return result;
}

void H264DestroyForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    *(a1 + 88) = 0;
    H264DestroyParamSetList((v1 + 2));
    H264DestroyParamSetList(v1);
    v2 = v1[6];
    if (v2)
    {
      CFRelease(v2);
    }

    v1[6] = 0;
    v3 = v1[7];
    if (v3)
    {
      CFRelease(v3);
    }

    free(v1);
  }
}

Float64 H264ReadBitRate(uint64_t a1, void *a2)
{
  v3 = *(a1 + 88);
  v5 = *(v3 + 164);
  result = CMTimeGetSeconds(&v5);
  if (*(v3 + 160))
  {
    if (result != 0.0)
    {
      result = (8 * *(v3 + 152)) / result;
      *a2 = result;
    }
  }

  return result;
}

uint64_t PushH264Frame(uint64_t a1, CMTime *a2, int a3)
{
  v4 = *(a1 + 88);
  v5 = *(v4 + 48);
  if (!v5)
  {
    return 0;
  }

  sbuf = 0;
  sampleSizeArray = CMBlockBufferGetDataLength(v5);
  if (a3)
  {
    lhs = *a2;
    rhs = *(v4 + 88);
    CMTimeSubtract(&sampleTimingArray.duration, &lhs, &rhs);
    *(v4 + 112) = *&sampleTimingArray.duration.value;
    *(v4 + 128) = sampleTimingArray.duration.epoch;
    lhs = *(v4 + 164);
    rhs = *(v4 + 112);
    CMTimeAdd(&sampleTimingArray.duration, &lhs, &rhs);
    *(v4 + 164) = *&sampleTimingArray.duration.value;
    *(v4 + 180) = sampleTimingArray.duration.epoch;
  }

  sampleTimingArray.decodeTimeStamp = *(v4 + 88);
  *&sampleTimingArray.duration.value = *(v4 + 112);
  sampleTimingArray.duration.epoch = *(v4 + 128);
  sampleTimingArray.presentationTimeStamp = *(v4 + 64);
  v8 = CMSampleBufferCreate(*(a1 + 8), *(v4 + 48), 1u, 0, 0, *(v4 + 56), 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &sbuf);
  if (!v8)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    if (SampleAttachmentsArray)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
      v11 = ValueAtIndex;
      v12 = *MEMORY[0x1E695E4C0];
      v13 = *MEMORY[0x1E695E4D0];
      if ((*(v4 + 136) & 0x10) != 0)
      {
        v14 = *MEMORY[0x1E695E4C0];
      }

      else
      {
        v14 = *MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960400], v14);
      v15 = *(v4 + 136);
      if ((v15 & 0x10) == 0)
      {
        CFDictionarySetValue(v11, *MEMORY[0x1E6960458], v13);
        v15 = *(v4 + 136);
      }

      if ((v15 & 8) != 0)
      {
        CFDictionarySetValue(v11, *MEMORY[0x1E6960460], v13);
        v15 = *(v4 + 136);
      }

      if ((v15 & 0x100) != 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = v12;
      }

      CFDictionarySetValue(v11, *MEMORY[0x1E6960450], v16);
    }

    v8 = (*(a1 + 24))(a1, *(a1 + 32), sbuf, *(v4 + 144), *(v4 + 136));
    if (sbuf)
    {
      CFRelease(sbuf);
    }
  }

  *(v4 + 152) += CMBlockBufferGetDataLength(*(v4 + 48));
  ++*(v4 + 160);
  v17 = *(v4 + 48);
  if (v17)
  {
    CFRelease(v17);
  }

  *(v4 + 48) = 0;
  v18 = *(v4 + 56);
  if (v18)
  {
    CFRelease(v18);
  }

  *(v4 + 56) = 0;
  return v8;
}

void MP3ResyncForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
}

void MP3DestroyForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v3 = *(a1 + 88);
    if (*(v1 + 32))
    {
      CFRelease(*(v1 + 32));
      v3 = *(a1 + 88);
    }

    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    free(v3);
    *(a1 + 88) = 0;
  }
}

uint64_t MP3ReadBitRate(uint64_t a1, void *a2)
{
  if (!*(a1 + 40))
  {
    return 4294954323;
  }

  if (!a2)
  {
    return 4294954516;
  }

  result = 0;
  *a2 = *(*(a1 + 88) + 12);
  return result;
}

uint64_t urlProcessor_registerBaseClass(uint64_t a1)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAirPlayURLProcessorUtilDoesItemRequestSecureStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v21 = 0;
  cf = 0;
  v20 = *MEMORY[0x1E695E4C0];
  if (a1)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v9 && (v9(v8, &v21), v21))
    {
      FigAssetGetCMBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v13 = *MEMORY[0x1E695E480];
        v14 = v12(v11, @"assetProperty_DefaultContentKeySession", *MEMORY[0x1E695E480], &cf);
        if (!v14)
        {
          v15 = cf;
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v16)
          {
            v17 = v16(v15, 0x1F0B20398, v13, &v20);
            if (!v17)
            {
              v8 = FigCFEqual();
              goto LABEL_15;
            }
          }

          else
          {
            v17 = 4294954514;
          }

          FigAirPlayURLProcessorUtilDoesItemRequestSecureStop_cold_1(v17);
          goto LABEL_14;
        }
      }

      else
      {
        v14 = 4294954514;
      }

      FigAirPlayURLProcessorUtilDoesItemRequestSecureStop_cold_2(v14);
    }

    else
    {
      FigAirPlayURLProcessorUtilDoesItemRequestSecureStop_cold_3();
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  FigAirPlayURLProcessorUtilDoesItemRequestSecureStop_cold_4(0, a2, a3, a4, a5, a6, a7, a8, v19, v20, SHIDWORD(v20), v21);
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v8;
}

uint64_t FigAirPlayURLProcessorCreate(uint64_t cold_1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (FigAirPlayURLProcessorCreate_initFigAirPlayTracOnceCheck != -1)
  {
    FigAirPlayURLProcessorCreate_cold_1();
  }

  if (_MergedGlobals_69 != -1)
  {
    FigAirPlayURLProcessorCreate_cold_2();
  }

  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigReadWriteLockCreate();
  *(DerivedStorage + 40) = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 80) = v10;
  if (!v10)
  {
    FigAirPlayURLProcessorCreate_cold_8(cf);
    return LODWORD(cf[0]);
  }

  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 16) = v11;
  if (!v11)
  {
    FigAirPlayURLProcessorCreate_cold_7(cf);
    return LODWORD(cf[0]);
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = MEMORY[0x1E695E9D8];
  v14 = MEMORY[0x1E695E9E8];
  *(DerivedStorage + 8) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 64) = CFDictionaryCreateMutable(v12, 0, v13, 0);
  *(DerivedStorage + 72) = CFDictionaryCreateMutable(v12, 0, v13, v14);
  if (a2)
  {
    v15 = CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    *v34 = *MEMORY[0x1E695E4C0];
    *(v15 + 96) = 0;
    FigAssetGetCMBaseObject();
    v17 = v16;
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18)
    {
      v19 = v18(v17, @"assetProperty_DefaultContentKeySession", v12, cf);
      if (!v19)
      {
        v20 = cf[0];
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v21)
        {
          v22 = v21(v20, 0x1F0B20398, v12, v34);
          if (!v22)
          {
            if (FigCFEqual())
            {
              v23 = *(v15 + 104);
              *(v15 + 96) = 1;
              if (v23)
              {
                CFRelease(v23);
                *(v15 + 104) = 0;
              }

              FigAirPlaySecureStopRouterCreateSecureStopUUID(*(v15 + 88), (v15 + 104));
            }

LABEL_18:
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            if (*v34)
            {
              CFRelease(*v34);
            }

            FigAssetGetCMBaseObject();
            v25 = v24;
            v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v26)
            {
              v27 = v26(v25, @"assetProperty_StorageSession", v12, DerivedStorage + 160);
            }

            else
            {
              v27 = 4294954514;
            }

            if (!*(DerivedStorage + 160))
            {
              FigAirPlayURLProcessorCreate_cold_5(cf);
              return LODWORD(cf[0]);
            }

            if (a3)
            {
              goto LABEL_27;
            }

            goto LABEL_29;
          }
        }

        else
        {
          v22 = 4294954514;
        }

        FigAirPlayURLProcessorCreate_cold_3(v22);
        goto LABEL_18;
      }
    }

    else
    {
      v19 = 4294954514;
    }

    FigAirPlayURLProcessorCreate_cold_4(v19);
    goto LABEL_18;
  }

  v27 = 0;
  if (a3)
  {
LABEL_27:
    v28 = CFRetain(a3);
    goto LABEL_30;
  }

LABEL_29:
  v28 = 0;
LABEL_30:
  *(DerivedStorage + 144) = v28;
  v29 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 120) = v29;
  if (!v29)
  {
    FigAirPlayURLProcessorCreate_cold_6(cf);
    return LODWORD(cf[0]);
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    v30 = *(DerivedStorage + 88);
    if (v30)
    {
      CFRetain(v30);
    }
  }

  *(DerivedStorage + 128) = 0;
  v31 = (DerivedStorage + 128);
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(0, v31, 10, 0x600u);
  }

  if (dword_1EAF17368)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *a4 = 0;
  return v27;
}

uint64_t __FigAirPlayURLProcessorCreate_block_invoke(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

void urlProcessor_freeCustomURLRequestListEntry(uint64_t a1, void *a2)
{
  if (a2[6])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v3 = a2[3];
  if (v3)
  {
    CFRelease(v3);
    a2[3] = 0;
  }

  v4 = a2[4];
  if (v4)
  {
    CFRelease(v4);
    a2[4] = 0;
  }

  v5 = a2[5];
  if (v5)
  {
    CFRelease(v5);
    a2[5] = 0;
  }

  v6 = a2[6];
  if (v6)
  {
    CFRelease(v6);
  }

  free(a2);
}

void urlProcessor_freeContentKeyRequestListEntry(uint64_t a1, void *a2)
{
  if (a2[4])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v3 = a2[3];
  if (v3)
  {
    CFRelease(v3);
    a2[3] = 0;
  }

  v4 = a2[4];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a2);
}

uint64_t urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay(uint64_t a1, const void *a2, uint64_t a3, char *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v50 = 0;
  v47 = 0;
  cf = 0;
  data = 0;
  FigReadWriteLockLockForRead();
  if (*DerivedStorage)
  {
    Mutable = 0;
    v14 = 0;
    v39 = -12785;
LABEL_56:
    v51 = v39;
    goto LABEL_36;
  }

  if (!a2)
  {
    Mutable = 0;
    v14 = 0;
    v39 = -12780;
    goto LABEL_56;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v14 = 0;
    goto LABEL_55;
  }

  v12 = *(CMBaseObjectGetVTable() + 16);
  if (*v12 < 8uLL || (v13 = v12[26]) == 0)
  {
    v51 = -12782;
    goto LABEL_25;
  }

  v51 = v13(a3, &v50, &value);
  if (v51)
  {
LABEL_25:
    urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_7();
    v14 = 0;
    goto LABEL_36;
  }

  CFDictionaryAddValue(Mutable, @"CSKRO_RemoteContext", value);
  FigCFDictionarySetInt64();
  v14 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v14)
  {
LABEL_55:
    v39 = -12786;
    goto LABEL_56;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    v51 = -12782;
    goto LABEL_35;
  }

  v51 = v15(a3, *MEMORY[0x1E69610F0], v10, &data);
  if (v51)
  {
LABEL_35:
    urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_6();
    goto LABEL_36;
  }

  v16 = CFPropertyListCreateWithData(v10, data, 0, 0, 0);
  if (v16)
  {
    v18 = v16;
    v19 = CFGetTypeID(v16);
    if (v19 != CFDictionaryGetTypeID())
    {
      urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_1(&v51);
      UInt64 = 0;
      v29 = 0;
      goto LABEL_33;
    }

    v45 = a1;
    v42 = a4;
    v20 = *MEMORY[0x1E6962AC0];
    v21 = CFDictionaryGetValue(v18, *MEMORY[0x1E6962AC0]);
    if (v21)
    {
      v22 = v21;
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v23)
      {
        v23(a3, v20, v22);
      }

      v24 = *MEMORY[0x1E6962B00];
      v25 = FigCFDictionaryGetValue();
      if (v25)
      {
        v26 = v25;
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v27)
        {
          v28 = v27(a3, v24, v26);
        }

        else
        {
          v28 = -12782;
        }

        v51 = v28;
        CFDictionaryAddValue(v14, *MEMORY[0x1E6961CB8], a2);
        CFDictionaryAddValue(v14, *MEMORY[0x1E6961C60], Mutable);
        CFDictionaryAddValue(v14, *MEMORY[0x1E6961B78], v22);
        CFDictionaryAddValue(v14, *MEMORY[0x1E6961C10], *MEMORY[0x1E695E4D0]);
        v29 = dispatch_semaphore_create(0);
        if (!v29)
        {
          UInt64 = 0;
          v51 = -12786;
          goto LABEL_33;
        }

        FigSimpleMutexLock();
        ++*(DerivedStorage + 112);
        UInt64 = FigCFNumberCreateUInt64();
        FigSimpleMutexUnlock();
        CFDictionaryAddValue(v14, @"LocalRequestID", UInt64);
        FigSimpleMutexLock();
        FigCFDictionarySetValue();
        dispatch_retain(v29);
        FigSimpleMutexUnlock();
        urlProcessor_postNotification(v45, @"StreamingKeyRequest", v14);
        FigReadWriteLockUnlockForRead();
        v31 = dispatch_time(0, 8000000000);
        v32 = dispatch_semaphore_wait(v29, v31);
        FigReadWriteLockLockForRead();
        if (v32)
        {
          if (*DerivedStorage)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v4, v45);
            v51 = v40;
          }

          else
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v4, v45);
            v51 = v33;
            v47 = 0;
            FigSimpleMutexLock();
            CFDictionaryRemoveValue(*(DerivedStorage + 64), UInt64);
            CFDictionaryRemoveValue(*(DerivedStorage + 72), UInt64);
            FigSimpleMutexUnlock();
          }

          goto LABEL_33;
        }

        if (*DerivedStorage)
        {
          urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_2(&v51);
          goto LABEL_33;
        }

        FigSimpleMutexLock();
        FigCFDictionaryGetDictionaryValue();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetValueIfPresent();
        CFDictionaryRemoveValue(*(DerivedStorage + 72), UInt64);
        FigSimpleMutexUnlock();
        if (v51)
        {
          goto LABEL_33;
        }

        v34 = v47;
        if (!v47)
        {
          goto LABEL_33;
        }

        v35 = v50;
        v36 = *(CMBaseObjectGetVTable() + 16);
        if (*v36 >= 8uLL && (v37 = v36[27]) != 0)
        {
          v51 = v37(a3, v35, v34, &cf);
          if (!v51)
          {
            *v42 = cf;
            cf = 0;
LABEL_33:
            FigReadWriteLockUnlockForRead();
            CFRelease(v18);
            goto LABEL_37;
          }
        }

        else
        {
          v51 = -12782;
        }

        urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_3();
        goto LABEL_33;
      }

      urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_4(&v51);
    }

    else
    {
      urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_5(&v51);
    }

    UInt64 = 0;
    v29 = 0;
    goto LABEL_33;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v43, v44);
  v51 = v17;
LABEL_36:
  FigReadWriteLockUnlockForRead();
  UInt64 = 0;
  v29 = 0;
LABEL_37:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (UInt64)
  {
    CFRelease(UInt64);
  }

  if (v29)
  {
    dispatch_release(v29);
  }

  return v51;
}

uint64_t urlProcessor_HandleRequest(const void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  v62[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  if (!a3)
  {
    urlProcessor_HandleRequest_cold_7(v62);
    return LODWORD(v62[0]);
  }

  if (!a2)
  {
    urlProcessor_HandleRequest_cold_6(v62);
    return LODWORD(v62[0]);
  }

  v8 = DerivedStorage;
  Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6960D48]);
  if (!Value)
  {
    urlProcessor_HandleRequest_cold_5(v62);
    return LODWORD(v62[0]);
  }

  v10 = Value;
  v47 = *MEMORY[0x1E695E480];
  v11 = CFURLCreateWithString(*MEMORY[0x1E695E480], Value, 0);
  if (!v11)
  {
    urlProcessor_HandleRequest_cold_4(v62);
    return LODWORD(v62[0]);
  }

  v12 = v11;
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    urlProcessor_HandleRequest_cold_3(v12, v62);
    return LODWORD(v62[0]);
  }

  v45 = v10;
  if (dword_1EAF17368)
  {
    LODWORD(v60) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = CFDictionaryGetValue(a3, *MEMORY[0x1E6960D18]);
  v46 = CFDictionaryGetValue(a3, *MEMORY[0x1E6960D30]);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v15 = CMBaseObjectGetDerivedStorage();
  v16 = v15;
  v62[0] = 0;
  v60 = 0;
  *cf = 0;
  if (*(v15 + 96) && *(v15 + 104))
  {
    FigAssetGetCMBaseObject();
    v18 = v17;
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v20 = v19(v18, @"assetProperty_DefaultContentKeySession", v47, v62);
      if (v20)
      {
        goto LABEL_76;
      }

      v21 = v62[0];
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v22)
      {
        v20 = v22(v21, 0x1F0B20378, v47, cf);
        if (!v20)
        {
          v20 = FigAirPlaySecureStopRouterRegisterSecureStopManager(*(v16 + 104), *cf);
          if (!v20)
          {
            goto LABEL_15;
          }
        }

LABEL_76:
        v25 = v20;
        v26 = 0;
        goto LABEL_20;
      }
    }

    v26 = 0;
    v25 = 4294954514;
    goto LABEL_20;
  }

LABEL_15:
  v23 = a2;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValueFromKeyInDict();
  v25 = FigCPECryptorCreateAirPlay(v47, v23, MutableCopy, &v60);
  if (!v25)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v26 = v60;
    v60 = 0;
    if (!MutableCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v26 = 0;
  if (MutableCopy)
  {
LABEL_17:
    CFRelease(MutableCopy);
  }

LABEL_20:
  if (v62[0])
  {
    CFRelease(v62[0]);
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v25)
  {
    goto LABEL_61;
  }

  if (v46)
  {
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v27)
    {
      v25 = 4294954514;
      goto LABEL_61;
    }

    v28 = v27(v26, 0x1F0B23818, v46);
    if (v28)
    {
      goto LABEL_72;
    }
  }

  if ((v29 = (CMBaseObjectGetDerivedStorage() + 32), !*v29) && ((FigAssetGetCMBaseObject(), v31 = v30, (v32 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v32(v31, @"assetProperty_CustomURLLoader", v47, v29)) && (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, v44, v45), v28))
  {
LABEL_72:
    v25 = v28;
  }

  else
  {
    if (v8[3] && v59)
    {
      v33 = malloc_type_calloc(1uLL, 0x28uLL, 0x10600407FA69E2EuLL);
      if (v33)
      {
        v34 = v33;
        v33[1] = v58;
        v33[3] = CFRetain(v12);
        if (v26)
        {
          v35 = CFRetain(v26);
        }

        else
        {
          v35 = 0;
        }

        v34[4] = v35;
        *v34 = v8[7];
        v8[7] = v34;
        CFRetain(v45);
        if (v14)
        {
          CFRetain(v14);
        }

        if (a1)
        {
          CFRetain(a1);
        }

        if (v26)
        {
          CFRetain(v26);
        }

        v40 = v8[15];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __urlProcessor_HandleRequest_block_invoke;
        block[3] = &__block_descriptor_tmp_86_0;
        block[4] = v8;
        block[5] = v45;
        block[6] = v26;
        block[7] = v58;
        v54 = v57;
        block[8] = v14;
        block[9] = a1;
        block[10] = v34;
        v41 = block;
LABEL_60:
        dispatch_async(v40, v41);
        v25 = 0;
        goto LABEL_61;
      }

      urlProcessor_HandleRequest_cold_2(v62);
    }

    else
    {
      v36 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040BE10E4F9uLL);
      if (v36)
      {
        v37 = v36;
        v38 = CFRetain(a3);
        v37[2] = v58;
        v37[3] = v38;
        if (v26)
        {
          v39 = CFRetain(v26);
        }

        else
        {
          v39 = 0;
        }

        v37[6] = v39;
        *v37 = v8[6];
        v8[6] = v37;
        if (a1)
        {
          CFRetain(a1);
        }

        if (v26)
        {
          CFRetain(v26);
        }

        if (v14)
        {
          CFRetain(v14);
        }

        CFRetain(a3);
        CFRetain(v12);
        v40 = v8[15];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 0x40000000;
        v48[2] = __urlProcessor_HandleRequest_block_invoke_2;
        v48[3] = &__block_descriptor_tmp_90_1;
        v48[4] = v8;
        v48[5] = v37;
        v48[6] = v12;
        v48[7] = v14;
        v49 = HIBYTE(v57);
        v50 = v59;
        v51 = v57;
        v52 = v56;
        v48[8] = v26;
        v48[9] = a3;
        v48[10] = a1;
        v41 = v48;
        goto LABEL_60;
      }

      urlProcessor_HandleRequest_cold_1(v62);
    }

    v25 = LODWORD(v62[0]);
  }

LABEL_61:
  CFRelease(v12);
  if (v26)
  {
    CFRelease(v26);
  }

  return v25;
}

void urlProcessor_contentKeyRequestDidUpdateContentKeyBossToNewBoss(const void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = _os_feature_enabled_impl();
  if (v4)
  {
    if (!DerivedStorage || *DerivedStorage)
    {
      urlProcessor_contentKeyRequestDidUpdateContentKeyBossToNewBoss_cold_1(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, SHIDWORD(v15), v16);
    }

    else
    {
      if (dword_1EAF17368)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v13 = *(DerivedStorage + 24);
      *(DerivedStorage + 24) = a1;
      if (a1)
      {
        CFRetain(a1);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }
}

void urlProcessor_contentKeyDataCallback(uint64_t a1, uint64_t a2, uint64_t a3, __CFError *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = (CMBaseObjectGetDerivedStorage() + 56);
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (v9[2] == a2)
    {
      APCustomURLResponseFromContentKeyResponse = urlProcessor_createAPCustomURLResponseFromContentKeyResponse(a1, v9, a3, a4);
      if (APCustomURLResponseFromContentKeyResponse)
      {
        v11 = APCustomURLResponseFromContentKeyResponse;
        if (!a1 || *DerivedStorage)
        {
          urlProcessor_contentKeyDataCallback_cold_2(a1, v9);
        }

        else
        {
          urlProcessor_contentKeyDataCallback_cold_1(DerivedStorage, v9, APCustomURLResponseFromContentKeyResponse, a1);
        }

        CFRelease(v11);
        return;
      }

      break;
    }
  }

  urlProcessor_freeContentKeyRequestListEntry(a1, v9);
}

void figVTT_initNodeVTTTypeNameMapping()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = &off_1E748C1D0;
    v11 = 8;
    do
    {
      valuePtr[0] = *(v10 - 2);
      v12 = CFNumberCreate(v0, kCFNumberSInt32Type, valuePtr);
      CFDictionarySetValue(v9, v12, *v10);
      if (v12)
      {
        CFRelease(v12);
      }

      v10 += 2;
      --v11;
    }

    while (v11);
    sVTTNodeTypeNameMapping = v9;
  }

  else
  {
    figVTT_initNodeVTTTypeNameMapping_cold_1(0, v2, v3, v4, v5, v6, v7, v8, v13, v14, valuePtr[0], valuePtr[1]);
  }
}

void figVTT_initVTTSectionTypeNameMapping()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = &off_1E748C250;
    v11 = 4;
    do
    {
      valuePtr[0] = *(v10 - 2);
      v12 = CFNumberCreate(v0, kCFNumberSInt32Type, valuePtr);
      CFDictionarySetValue(v9, v12, *v10);
      if (v12)
      {
        CFRelease(v12);
      }

      v10 += 2;
      --v11;
    }

    while (v11);
    sVTTSectionTypeNameMapping = v9;
  }

  else
  {
    figVTT_initVTTSectionTypeNameMapping_cold_1(0, v2, v3, v4, v5, v6, v7, v8, v13, v14, valuePtr[0], valuePtr[1]);
  }
}

void M2VResyncForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 24) = 0;
  if (*(v1 + 144))
  {
    v3 = *(v1 + 136);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 136) = 0;
    }
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 120) = 0;
  }
}

void M2VDestroyForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v3 = *(v1 + 24);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 24) = 0;
    }

    v4 = *(v1 + 136);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 136) = 0;
    }

    free(*(a1 + 88));
    *(a1 + 88) = 0;
  }
}

uint64_t M2VGetBitRateForType(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294954516;
  }

  result = 0;
  *a2 = 400 * *(*(a1 + 88) + 8);
  return result;
}

uint64_t PushM2VFrame(uint64_t a1, CMTime *a2, int a3)
{
  v4 = *(a1 + 88);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  sbuf = 0;
  sampleSizeArray = CMBlockBufferGetDataLength(v5);
  if (a3)
  {
    lhs = *a2;
    rhs = *(v4 + 56);
    CMTimeSubtract(&sampleTimingArray.duration, &lhs, &rhs);
    *(v4 + 80) = *&sampleTimingArray.duration.value;
    *(v4 + 96) = sampleTimingArray.duration.epoch;
  }

  v8 = *(v4 + 56);
  sampleTimingArray.decodeTimeStamp.epoch = *(v4 + 72);
  *&sampleTimingArray.decodeTimeStamp.value = v8;
  *&sampleTimingArray.duration.value = *(v4 + 80);
  sampleTimingArray.duration.epoch = *(v4 + 96);
  v9 = *(v4 + 48);
  *&sampleTimingArray.presentationTimeStamp.value = *(v4 + 32);
  sampleTimingArray.presentationTimeStamp.epoch = v9;
  v10 = CMSampleBufferCreate(*(a1 + 8), *(v4 + 24), 1u, 0, 0, *(a1 + 40), 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &sbuf);
  if (!v10)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    if (!SampleAttachmentsArray)
    {
LABEL_17:
      v10 = (*(a1 + 24))(a1, *(a1 + 32), sbuf, *(v4 + 112), *(v4 + 104));
      if (sbuf)
      {
        CFRelease(sbuf);
      }

      goto LABEL_19;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    v13 = ValueAtIndex;
    v14 = *(v4 + 104);
    v15 = *MEMORY[0x1E695E4D0];
    if ((v14 & 0x10) != 0)
    {
      if (!*(v4 + 14))
      {
        CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(v13, *MEMORY[0x1E6960460], v15);
      }

      v17 = *MEMORY[0x1E6960400];
      v18 = *MEMORY[0x1E695E4C0];
      v19 = v13;
    }

    else
    {
      CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
      if ((v14 & 8) == 0)
      {
        CFDictionarySetValue(v13, *MEMORY[0x1E6960450], *MEMORY[0x1E695E4C0]);
        v16 = MEMORY[0x1E6960400];
        goto LABEL_15;
      }

      v17 = *MEMORY[0x1E6960400];
      v19 = v13;
      v18 = v15;
    }

    CFDictionarySetValue(v19, v17, v18);
    v16 = MEMORY[0x1E6960418];
LABEL_15:
    CFDictionarySetValue(v13, *v16, v15);
    v20 = *(v4 + 120);
    if (v20)
    {
      CFDictionarySetValue(v13, @"ByteOffsetToSecondField", v20);
    }

    goto LABEL_17;
  }

LABEL_19:
  v21 = *(v4 + 24);
  if (v21)
  {
    CFRelease(v21);
  }

  *(v4 + 24) = 0;
  v22 = *(v4 + 120);
  if (v22)
  {
    CFRelease(v22);
    *(v4 + 120) = 0;
  }

  return v10;
}

uint64_t FigTTMLDocumentWriterCreateStyleSpanBuilder(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateStyleSpanBuilder_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateStyleSpanBuilder_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterStyleSpanBuilder_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterStyleSpanBuilder_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterStyleSpanBuilder_EndElement()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v0);
}

uint64_t figTTMLDocumentWriterStyleSpanBuilder_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v0);
}

void initCaptionStylePropertyToAttributesMapping()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614E8], FigTTMLDocumentWriterMapPropertyToAttribute_TextColor);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961458], FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614A0], FigTTMLDocumentWriterMapPropertyToAttribute_FontWeight);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961480], FigTTMLDocumentWriterMapPropertyToAttribute_FontStyle);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961460], FigTTMLDocumentWriterMapPropertyToAttribute_Decoration);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961530], FigTTMLDocumentWriterMapPropertyToAttribute_TextOutline);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614C0], FigTTMLDocumentWriterMapPropertyToAttribute_Hidden);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614C8], FigTTMLDocumentWriterMapPropertyToAttribute_Invisible);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614B8], FigTTMLDocumentWriterMapPropertyToAttribute_ForcedDisplay);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614D8], FigTTMLDocumentWriterMapPropertyToAttribute_PreventLineWrapping);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961470], FigTTMLDocumentWriterMapPropertyToAttribute_FontFamily);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961478], FigTTMLDocumentWriterMapPropertyToAttribute_FontSize);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614F0], FigTTMLDocumentWriterMapPropertyToAttribute_TextCombine);
  sCaptionStylePropertyToAttributesMapping = Mutable;
}

const void *insertOrGetAttributeDictionaryForAnimationTime(const __CFDictionary *a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E695E480];
  SInt32 = FigCFNumberCreateSInt32();
  Value = CFDictionaryGetValue(a1, SInt32);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(a1, SInt32, Value);
    if (Value)
    {
      CFRelease(Value);
    }
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  return Value;
}

void OUTLINED_FUNCTION_0_111(uint64_t a1, uint64_t a2, void *a3)
{

  CFDictionaryApplyFunction(v3, addAttribute, a3);
}

uint64_t figVTTNodeRegisterFigVTTNodeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVTTNodeGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVTTNodeGetClassID_sRegisterFigVTTNodeBaseTypeOnce, figVTTNodeRegisterFigVTTNodeBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVTTNodeCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigVTTNodeSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVTTNodeGetNodeType(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVTTNodeCopyDocumentSerialization(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVTTNodeSetChildNodeArray(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVTTNodeSetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(v12 + 16);
  if (v8)
  {

    return v8(a1, a2, a3);
  }

  else if (a2 && (v10 = CFGetTypeID(a2), v10 == CFStringGetTypeID()))
  {
    v11 = *DerivedStorage;
    if (a3)
    {
      CFDictionarySetValue(v11, a2, a3);
    }

    else
    {
      CFDictionaryRemoveValue(v11, a2);
    }

    return 0;
  }

  else
  {
    FigVTTNodeSetAttribute_cold_1(&v13);
    return v13;
  }
}

uint64_t FigVTTNodeCopyAttributes(uint64_t a1, void *a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(v10 + 24);
  if (v6)
  {

    return v6(a1, a2);
  }

  else if (a2)
  {
    v8 = *DerivedStorage;
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    *a2 = v9;
  }

  else
  {
    figVTTSpan_copyNodeDocumentSerialization_cold_2(&v11);
    return v11;
  }

  return result;
}

uint64_t FigVTTNodeSetValue(uint64_t a1, const void *a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v7 = *(v11 + 32);
  if (!v7)
  {
    if (a2)
    {
      v9 = CFGetTypeID(a2);
      if (v9 != CFStringGetTypeID())
      {
        FigVTTNodeSetValue_cold_1(&v12);
        return v12;
      }

      v10 = *(v6 + 8);
      *(v6 + 8) = a2;
      CFRetain(a2);
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      v10 = *(DerivedStorage + 8);
      *(DerivedStorage + 8) = 0;
      if (!v10)
      {
        return 0;
      }
    }

    CFRelease(v10);
    return 0;
  }

  return v7(a1, a2);
}

uint64_t FigVTTNodeCopyValue(uint64_t a1, void *a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(v10 + 40);
  if (v6)
  {

    return v6(a1, a2);
  }

  else if (a2)
  {
    v8 = *(DerivedStorage + 8);
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    *a2 = v9;
  }

  else
  {
    FigVTTNodeCopyValue_cold_1(&v11);
    return v11;
  }

  return result;
}

uint64_t FigVTTNodeCopyChildNodeArray(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVTTInitializeNodeBaseStorage(CFMutableDictionaryRef *a1)
{
  *a1 = 0;
  a1[1] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a1 = Mutable;
  if (Mutable)
  {
    return 0;
  }

  FigVTTInitializeNodeBaseStorage_cold_1(&v4);
  return v4;
}

void FigVTTReleaseNodeBaseStorage(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }
}

uint64_t FindProgram(uint64_t a1, int a2)
{
  for (result = *(a1 + 16); result; result = *(result + 8))
  {
    if (*(result + 40) == a2)
    {
      break;
    }
  }

  return result;
}

void MPEG2TSReset(uint64_t a1)
{
  *(a1 + 384) = 0;
  *(a1 + 450) = 1;
  v2 = *(a1 + 456);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 456) = 0;
  }
}

uint64_t PesProcessTsPak(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!*(a1 + 84))
  {
    return 0;
  }

  if (a2[1] < 0)
  {
    PesErrorHandling(a1, 4294954320);
    return 0;
  }

  v6 = *(a1 + 450);
  if ((a2[3] & 0x10) != 0)
  {
    v6 = (v6 + 1) & 0xF;
  }

  v7 = a2[3] & 0xF;
  if (*(a1 + 451))
  {
    if (v7 != v6)
    {
      PesErrorHandling(a1, 4294954320);
    }
  }

  *(a1 + 451) = 1;
  *(a1 + 450) = v7;
  if ((a2[3] & 0x30) == 0x10)
  {
    v8 = 4;
LABEL_16:
    v12 = 0;
    v11 = 0;
    return ProcessPesData(a1, 0, 0, &a2[v8], 188 - v8, (a2[1] >> 6) & 1, a3, &v12, &v11);
  }

  if ((a2[3] & 0x10) == 0)
  {
    v8 = 188;
    goto LABEL_16;
  }

  v10 = a2[4];
  if (v10 < 0xB8)
  {
    v8 = v10 + 5;
    goto LABEL_16;
  }

  PesProcessTsPak_cold_1(&v13);
  return v13;
}

uint64_t AddProgram(uint64_t a1, int a2, void *a3)
{
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    while (*(v6 + 10) != a2)
    {
      v6 = v6[1];
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    *a3 = 0;
    v6 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040A345989DuLL);
    if (!v6)
    {
      return 12;
    }

    *v6 = a1;
    v6[3] = 0;
    *(v6 + 10) = a2;
    v6[4] = v6 + 3;
    v8 = *(a1 + 16);
    v6[1] = v8;
    if (v8)
    {
      *(v8 + 16) = v6 + 1;
    }

    *v7 = v6;
    v6[2] = v7;
  }

  v9 = 0;
  *a3 = v6;
  return v9;
}

uint64_t CheckDescriptorsForStreamEncryptData(unsigned __int8 *a1, unsigned int a2, int a3, void *a4, void *a5)
{
  if (a2 < 3)
  {
    return 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = a1[1];
      v7 = a2 - 2 - v6;
      if (a2 - 2 < v6)
      {
        break;
      }

      v8 = (a1 + 2);
      v9 = *a1;
      if (v9 == 5)
      {
        if (a4 && v6 >= 4 && *v8 == 1684107361)
        {
          *a4 = a1 + 6;
          *a5 = (v6 - 4);
        }
      }

      else
      {
        v10 = v9 == 15 && v6 == 4;
        if (v10 && bswap32(*v8) == a3)
        {
          v5 = 1;
        }
      }

      a1 = v8 + v6;
      a2 = (a2 - 2 - v6);
    }

    while (v7 > 2u);
  }

  return v5;
}

uint64_t MP3GetChannelLayout(_DWORD *a1)
{
  if (*a1 >> 30 == 3)
  {
    return 6553601;
  }

  else
  {
    return 6619138;
  }
}

uint64_t MP3GetFormatID(_DWORD *a1)
{
  v1 = (*a1 >> 9) & 3;
  if (v1 == 2)
  {
    v2 = 778924082;
  }

  else
  {
    v2 = 778924083;
  }

  if (v1 == 3)
  {
    return 778924081;
  }

  else
  {
    return v2;
  }
}

uint64_t MP3GetSamplesPerFrame(unsigned int *a1)
{
  v1 = bswap32(*a1);
  v2 = (v1 >> 17) & 3;
  if ((~v1 & 0x180000) != 0)
  {
    v3 = 576;
  }

  else
  {
    v3 = 1152;
  }

  if (v2 == 2)
  {
    v3 = 1152;
  }

  if (v2 == 3)
  {
    return 384;
  }

  else
  {
    return v3;
  }
}

uint64_t MP3GetFrameSize(unsigned int *a1)
{
  v1 = bswap32(*a1);
  v2 = (v1 >> 17) & 3;
  v3 = v2 ^ 3u;
  v4 = 3;
  if (v2 != 3)
  {
    v4 = 4;
  }

  if ((~v1 & 0x180000) != 0)
  {
    v3 = v4;
  }

  v5 = v2 == 3;
  v6 = MPEGAudioSampleFrequencies[3 * ((v1 >> 19) & 3) + ((v1 >> 10) & 3)];
  v7 = MPEGAudioBitRates[14 * v3 - 1 + (v1 >> 12)];
  v8 = (v1 >> 9) & 1;
  v9 = 144000 * v7 / v6 + v8;
  v10 = 4 * (12000 * v7 / v6 + v8);
  if (v5)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t MP3GetBitRate(unsigned int *a1)
{
  v1 = bswap32(*a1);
  v2 = (v1 >> 17) & 3;
  v3 = v2 ^ 3u;
  v4 = v2 == 3;
  v5 = 3;
  if (!v4)
  {
    v5 = 4;
  }

  if ((~v1 & 0x180000) == 0)
  {
    v5 = v3;
  }

  return 1000 * MPEGAudioBitRates[14 * v5 - 1 + (v1 >> 12)];
}

BOOL FigOutputMonitorIsScreenProbablyBeingRecorded()
{
  state64 = 0;
  if (figOutputMonitorSetUpNotificationAndTokenOnce_sFigOutputMonitorNotificationTokenCreateOnce != -1)
  {
    FigOutputMonitorIsScreenProbablyBeingRecorded_cold_1();
  }

  notify_get_state(sFigOutputMonitorNotificationToken, &state64);
  return state64 != 0;
}

uint64_t FigOutputMonitorSetVirtualDisplayIsProbablyBeingRecorded(uint64_t state64)
{
  v1 = state64;
  if (figOutputMonitorSetUpNotificationAndTokenOnce_sFigOutputMonitorNotificationTokenCreateOnce != -1)
  {
    FigOutputMonitorIsScreenProbablyBeingRecorded_cold_1();
  }

  notify_set_state(sFigOutputMonitorNotificationToken, v1);

  return notify_post("com.apple.fig.screen.is.probably.being.recorded");
}

uint64_t __figOutputMonitorSetUpNotificationAndTokenOnce_block_invoke()
{
  v0 = dispatch_queue_create("FigOutputMonitorNotificationQueue", 0);
  figOutputMonitorSetUpNotificationAndTokenOnce_sFigOutputMonitorNotificationQueue = v0;

  return notify_register_dispatch("com.apple.fig.screen.is.probably.being.recorded", &sFigOutputMonitorNotificationToken, v0, &__block_literal_global_6);
}

void __figOutputMonitorSetUpNotificationAndTokenOnce_block_invoke_2()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"FigOutputMonitorNotification_RecordingStateChanged", 0, 0, 1u);
}

void MPEGAudioCleanPrivateData(uint64_t a1)
{
  *(a1 + 8) = 0;
  FrameQueueEntryClean(a1 + 120);
  *(a1 + 272) = 0;

  PesPacketListClean(a1 + 280);
}

uint64_t MPEGAudioProcessData(uint64_t a1, void *a2, OpaqueCMBlockBuffer *a3, size_t a4, char *a5, size_t a6, __int128 *a7)
{
  while (1)
  {
    v7 = a7;
    v8 = a6;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = a2;
    v13 = a1;
    v41 = 0;
    v40 = 0;
    v14 = a2[1];
    if (!v14)
    {
      goto LABEL_31;
    }

    if (a2[3] - v14 >= a6)
    {
      v15 = a6;
    }

    else
    {
      v15 = a2[3] - v14;
    }

    v16 = *a2;
    if (a5)
    {
      memcpy((v16 + v14), a5, v15);
    }

    else
    {
      CMBlockBufferCopyDataBytes(a3, a4, v15, (v16 + v14));
    }

    v17 = v12[1] + v15;
    if (v17 < v12[3])
    {
      v18 = 0;
      v12[1] = v17;
      return v18;
    }

    if (!(v12[4])(*v12))
    {
      v20 = v12[1];
      v12[1] = v20 - 1;
      if (v20 != 1)
      {
        memmove(*v12, (*v12 + 1), v20 - 1);
      }

      goto LABEL_17;
    }

    if (!v12[22])
    {
      break;
    }

    v19 = MPEGAudioCompareHeaders(v13, v12, *v12, &v40);
    if (v19)
    {
      goto LABEL_95;
    }

    if (!v40)
    {
      goto LABEL_22;
    }

LABEL_17:
    a1 = v13;
    a2 = v12;
    a3 = v11;
    a4 = v10;
    a5 = v9;
    a6 = v8;
    a7 = v7;
  }

  if (!*(v12 + 273))
  {
    PesPacketListSaveChunk(v12 + 35, 0, 0, *v12, v12[3], (v12 + 11));
    if (v19)
    {
      goto LABEL_95;
    }
  }

LABEL_22:
  v21 = v7;
  v12[1] = 0;
  MPEGAudioSetUpFrame(v13, v12, *v12);
  if (v19)
  {
    goto LABEL_95;
  }

  v22 = v9 ? 0 : v15;
  if (v9)
  {
    v9 += v15;
  }

  else
  {
    v9 = 0;
  }

  v19 = PesAddMemoryToFrameMemory(v13, *v12, v12[3], *(v13 + 624), &v41, &v40 + 1);
  if (v19)
  {
    goto LABEL_95;
  }

  v10 += v22;
  v8 -= v15;
  v7 = v21;
LABEL_31:
  if (!*(v12 + 273) && (*(v12 + 272) || v12[22]))
  {
    PesPacketListSaveChunk(v12 + 35, v11, v10, v9, v8, v7);
    if (v19)
    {
LABEL_95:
      v18 = v19;
LABEL_96:
      PesErrorHandling(v13, v18);
      return v18;
    }
  }

  if (*(v7 + 24))
  {
    v23 = *v7;
    *(v12 + 13) = v7[1];
    *(v12 + 11) = v23;
  }

  v24 = v12[3];
  if (v8 >= v24 || v8 && *(v12 + 272))
  {
    v39 = v7;
    v25 = 0;
    v26 = 0;
    while (!*(v12 + 272))
    {
      if (v9)
      {
        v28 = 0;
        while (!(v12[4])(&v9[v28]))
        {
          ++v28;
          if (v12[3] + v28 > v8)
          {
            v29 = 0;
            v28 = v26;
            goto LABEL_63;
          }
        }

        v29 = 1;
        v26 = v28;
LABEL_63:
        v35 = 0;
        v25 = &v9[v28];
        if (!v29)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v33 = 0;
        returnedPointerOut = 0;
        while (1)
        {
          if (CMBlockBufferAccessDataBytes(v11, v10 + v33, v24, v12[2], &returnedPointerOut))
          {
LABEL_61:
            v34 = 0;
            goto LABEL_80;
          }

          if ((v12[4])(returnedPointerOut))
          {
            break;
          }

          ++v33;
          v24 = v12[3];
          if (v24 + v33 > v8)
          {
            goto LABEL_61;
          }
        }

        v34 = 1;
        v25 = returnedPointerOut;
        v26 = v33;
LABEL_80:
        v35 = v26;
        if (!v34)
        {
LABEL_81:
          v36 = v12[3];
          v37 = v9 == 0;
          if (v9)
          {
            v9 += v8 + 1 - v36;
          }

          else
          {
            v9 = 0;
          }

          if (v37)
          {
            v10 = v8 + 1 + v10 - v36;
          }

          v8 = v36 - 1;
          goto LABEL_87;
        }
      }

      if (v12[22])
      {
        v19 = MPEGAudioCompareHeaders(v13, v12, v25, &v40);
        if (v19)
        {
          goto LABEL_95;
        }

        if (v40)
        {
          return 0;
        }
      }

      if (v9)
      {
        v9 += v26;
      }

      else
      {
        v9 = 0;
      }

      v10 += v35;
      v8 -= v26;
      if (!*(v12 + 273))
      {
        PesPacketListSaveChunk(v12 + 35, v11, v10, v9, v8, v39);
        if (v19)
        {
          goto LABEL_95;
        }
      }

      MPEGAudioSetUpFrame(v13, v12, v25);
      if (v19)
      {
        goto LABEL_95;
      }

LABEL_87:
      v24 = v12[3];
      if (v8 < v24)
      {
        goto LABEL_88;
      }
    }

    if (v9)
    {
      v19 = PesAddMemoryToFrameMemory(v13, v9, v8, *(v13 + 624), &v41, &v40 + 1);
      if (v19)
      {
        goto LABEL_95;
      }

      v27 = v41;
      v9 += v41;
    }

    else
    {
      PesAddBlockBufferToFrameBlockBuffer(v13, v11, v10, v8, *(v13 + 624), &v41, &v40 + 1);
      if (v19)
      {
        goto LABEL_95;
      }

      v9 = 0;
      v27 = v41;
      v10 += v41;
    }

    v8 -= v27;
    if (!HIBYTE(v40))
    {
      goto LABEL_87;
    }

    *(v12 + 272) = 0;
    if (*(v12 + 273))
    {
      v30 = v12[9];
      if (v30)
      {
        v31 = v30(v13, v13 + 456);
        goto LABEL_77;
      }

      if (*(v13 + 658) || *(v13 + 505))
      {
        v31 = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(v13, v13 + 456);
LABEL_77:
        v18 = v31;
        if (v31)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      v12[22] = *(v13 + 512);
      *(v13 + 512) = 0;
      v32 = *(v13 + 496);
      *(v12 + 9) = *(v13 + 480);
      *(v12 + 10) = v32;
      *(v12 + 62) = *(v13 + 584);
    }

    PesCleanAfterFrameEmit(v13);
    *(v13 + 505) = 0;
    goto LABEL_87;
  }

LABEL_88:
  if (!v8)
  {
    return 0;
  }

  if (v9)
  {
    memcpy(*v12, v9, v8);
    v18 = 0;
  }

  else
  {
    v18 = CMBlockBufferCopyDataBytes(v11, v10, v8, *v12);
  }

  v12[1] = v8;
  return v18;
}

uint64_t MPEGAudioCompareHeaders(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((*(a2 + 40))(*(a2 + 176), a3))
  {
    if (*(a2 + 296))
    {
      *(a2 + 296) = 0;
    }

    *a4 = 0;
    v7 = *(a2 + 72);
    if (v7)
    {
      v8 = v7(a1, a2 + 120);
    }

    else
    {
      v8 = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, a2 + 120);
    }

    v9 = v8;
    *(a2 + 273) = 1;
    if (*(a2 + 280))
    {
      PesPacketListClean(a2 + 280);
    }
  }

  else
  {
    v9 = 4294954317;
    if (!*(a2 + 296))
    {
      *(a2 + 296) = 1;
      do
      {
        v10 = *(a2 + 280);
        *(a2 + 8) = 0;
        *(a2 + 280) = 0;
        *(a2 + 288) = 0;
        FrameQueueEntryClean(a2 + 120);
        *(a2 + 272) = 0;
        PesPacketListClean(a2 + 280);
        v9 = 0;
        if (!v10)
        {
          break;
        }

        v11 = 1;
        do
        {
          v12 = *v10;
          if (!v9)
          {
            DataLength = CMBlockBufferGetDataLength(*(v10 + 1));
            v9 = MPEGAudioProcessData(a1, a2, *(v10 + 1), v11 != 0, 0, DataLength - (v11 != 0), v10 + 1);
            v11 = 0;
          }

          v14 = *(v10 + 1);
          if (v14)
          {
            CFRelease(v14);
          }

          free(v10);
          v10 = v12;
        }

        while (v12);
      }

      while (v9 == -12979);
      if (*(a2 + 296))
      {
        *(a2 + 296) = 0;
        v9 = 4294954317;
      }
    }

    *a4 = 1;
  }

  return v9;
}

double MPEGAudioSetUpFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(a2 + 56))(a3);
  if (v7)
  {
    v8 = v7;
    if (v7 != *(a1 + 768))
    {
      FigMPEG2ParserSetAudioCharacteristics(a1, v7);
    }

    *(a1 + 624) = (*(a2 + 64))(a3, v8);
    *(a1 + 584) = (*(a2 + 48))(a3);
    *(a2 + 272) = 1;
    v9 = *(a2 + 104);
    *(a1 + 480) = *(a2 + 88);
    *(a1 + 496) = v9;
    *(a2 + 112) = 0;
  }

  else
  {
    emitter = fig_log_get_emitter();

    *&v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954325, "mpeg2parser", 102, v3);
  }

  return *&v9;
}

uint64_t mmErrorCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = a2[5]; i; i = *i)
  {
    v9 = i[4];
    if (v9)
    {
      FigMPEG2SampleGeneratorFlush(v9);
      FigMPEG2SampleGeneratorResync(i[4]);
    }

    mmEmitBufferClear(i);
  }

  v10 = a2[14];
  a2[14] = 0;
  if (v10 >= 1)
  {
    v11 = v10;
    do
    {
      FigSimpleMutexUnlock();
      --v11;
    }

    while (v11);
  }

  v12 = a2[9];
  if (v12)
  {
    v12(a2[3], a4, a2[11], a5, 0);
  }

  do
  {
    FigSimpleMutexLock();
    v13 = a2[14] + 1;
    a2[14] = v13;
  }

  while (v13 < v10);
  return 0;
}

uint64_t MPEG2ManifoldInvalidate(const void *a1)
{
  CFRetain(a1);
  MPEG2ManifoldInvalidateGuts(a1);
  CFRelease(a1);
  return 0;
}

uint64_t MPEG2ManifoldFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MPEG2ManifoldInvalidateGuts(a1);
  while (1)
  {
    v3 = *(DerivedStorage + 40);
    if (!v3)
    {
      break;
    }

    *(DerivedStorage + 40) = *v3;
    v4 = v3[4];
    if (v4)
    {
      FigMPEG2SampleGeneratorDestroy(v4);
      v3[4] = 0;
    }

    FigFormatDescriptionRelease();
    free(v3);
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 96) = 0;
  }

  v7 = *(DerivedStorage + 104);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 104) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  result = *(DerivedStorage + 16);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 16) = 0;
  }

  return result;
}

__CFString *MPEG2ManifoldCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v1 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"FigMPEG2Manifold :");
  }

  return v1;
}

uint64_t MPEG2ManifoldInvalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 112);
  if (!*(DerivedStorage + 8))
  {
    *(DerivedStorage + 8) = 1;
    MPEG2EndAllTracks(a1, 4294954511);
    v4 = *(DerivedStorage + 48);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }
    }
  }

  --*(DerivedStorage + 112);

  return FigSimpleMutexUnlock();
}

uint64_t MPEG2EndAllTracks(uint64_t a1, uint64_t a2)
{
  FigManifoldGetFigBaseObject();
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (!*(result + 8))
  {
    for (i = *(result + 40); i; i = *i)
    {
      if (!a2)
      {
        v7 = i[4];
        if (v7)
        {
          FigMPEG2SampleGeneratorFlush(v7);
        }
      }

      result = mmEmitBufferClear(i);
    }
  }

  for (j = *(v5 + 40); j; j = *j)
  {
    v9 = *(j + 72);
    if (v9)
    {
      *(j + 72) = 0;
      v10 = *(j + 80);
      v11 = *(v5 + 112);
      *(v5 + 112) = 0;
      if (v11 >= 1)
      {
        v12 = v11;
        do
        {
          FigSimpleMutexUnlock();
          --v12;
        }

        while (v12);
      }

      v9(a1, *(j + 44), v10, a2);
      do
      {
        result = FigSimpleMutexLock();
        v13 = *(v5 + 112) + 1;
        *(v5 + 112) = v13;
      }

      while (v13 < v11);
      j = v5 + 40;
    }
  }

  return result;
}

void *mmEmitBufferClear(uint64_t a1)
{
  v3 = (a1 + 176);
  result = *(a1 + 176);
  if (result)
  {
    do
    {
      v4 = *result;
      v5 = **v3;
      *v3 = v5;
      if (!v5)
      {
        *(a1 + 184) = v3;
      }

      MPEG2EmitItemRelease(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

void MPEG2EmitItemRelease(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[1] = 0;
  v3 = a1[11];
  if (v3)
  {
    a1[11] = 0;
    free(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    a1[12] = 0;
    free(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[13] = 0;
    free(v5);
  }

  free(a1);
}

uint64_t MPEG2ManifoldInjectData(const void *a1, uint64_t a2, char a3, void *a4)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    MPEG2ManifoldInjectData(&v26);
    return v26;
  }

  v9 = DerivedStorage;
  CFRetain(a1);
  CFRetain(a4);
  FigSimpleMutexLock();
  ++*(v9 + 112);
  if (*(v9 + 8))
  {
    MPEG2ManifoldInjectData(&v26);
  }

  else
  {
    v10 = *(v9 + 48);
    if (v10)
    {
      if (!*(v9 + 9))
      {
        *(v9 + 12) = 1;
        if (a3)
        {
          FigMPEG2ParserIssueCommands(v10, 2);
          for (i = *(v9 + 40); i; i = *i)
          {
            v12 = i[4];
            if (v12)
            {
              FigMPEG2SampleGeneratorResync(v12);
            }
          }

          v13 = MEMORY[0x1E6960C70];
          *(v9 + 144) = *MEMORY[0x1E6960C70];
          *(v9 + 160) = *(v13 + 16);
        }

        v14 = CMGetAttachment(a4, @"FMFD_BufferDecryptor", 0);
        v15 = CMGetAttachment(a4, @"FMFD_BufferAudioDecryptor", 0);
        if (!FigCFEqual() || !FigCFEqual())
        {
          v16 = *(v9 + 96);
          if (v16)
          {
            mmDoFlush(v9);
            v17 = *(v9 + 96);
          }

          else
          {
            v17 = 0;
          }

          *(v9 + 96) = v14;
          if (v14)
          {
            CFRetain(v14);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          v18 = *(v9 + 104);
          *(v9 + 104) = v15;
          if (v15)
          {
            CFRetain(v15);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (*(v9 + 96))
          {
            FigBasicAESCPECryptorGetClassID();
            if (CMBaseObjectIsMemberOfClass())
            {
              if (!v16)
              {
                for (j = *(v9 + 40); j; j = *j)
                {
                  *(j + 168) = 1;
                }
              }
            }

            else
            {
              for (k = *(v9 + 40); k; k = *k)
              {
                *(k + 41) = 1;
              }
            }
          }
        }

        if (CMBlockBufferGetDataLength(a4))
        {
          if ((a3 & 4) != 0)
          {
            v21 = MEMORY[0x1E6960C70];
            *(v9 + 168) = *MEMORY[0x1E6960C70];
            *(v9 + 184) = *(v21 + 16);
            *(v9 + 192) = 0;
          }

          *(v9 + 9) = 1;
          LODWORD(a2) = FigMPEG2ParserInjectData(*(v9 + 48), a4, a2);
          if (!a2 && *(v9 + 11))
          {
            v24 = (v9 + 40);
            while (1)
            {
              v24 = *v24;
              if (!v24)
              {
                break;
              }

              if (!v24[6])
              {
                goto LABEL_35;
              }
            }

            *(v9 + 11) = 0;
            v25 = *(v9 + 80);
            if (v25)
            {
              v25(a1, *(v9 + 88));
            }
          }

LABEL_35:
          if (a2 == -16045)
          {
            a2 = 0;
          }

          else
          {
            a2 = a2;
          }

          if ((a3 & 2) != 0)
          {
            for (m = *(v9 + 40); m; m = *m)
            {
              if (*(m + 112) == 1936684398)
              {
                a2 = mmFlushStream(m);
                if (a2)
                {
                  break;
                }
              }
            }
          }

          *(v9 + 9) = 0;
        }

        else
        {
          a2 = 0;
        }

        goto LABEL_44;
      }

      MPEG2ManifoldInjectData(&v26);
    }

    else
    {
      MPEG2ManifoldInjectData(&v26);
    }
  }

  a2 = v26;
LABEL_44:
  --*(v9 + 112);
  FigSimpleMutexUnlock();
  CFRelease(a4);
  CFRelease(a1);
  return a2;
}

uint64_t MPEG2ManifoldNoteStreamEnd(const void *a1, uint64_t a2)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 112);
  if (*(DerivedStorage + 8))
  {
    MPEG2ManifoldNoteStreamEnd(&v12);
    v10 = v12;
  }

  else
  {
    v5 = *(DerivedStorage + 48);
    if (v5)
    {
      if (*(DerivedStorage + 9))
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }

      FigMPEG2ParserIssueCommands(v5, v6);
      *(DerivedStorage + 10) = 1;
      MPEG2EndAllTracks(a1, a2);
      v7 = *(DerivedStorage + 48);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {
          v8(v7);
        }

        v9 = *(DerivedStorage + 48);
        if (v9)
        {
          CFRelease(v9);
        }
      }

      v10 = 0;
      *(DerivedStorage + 48) = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  --*(DerivedStorage + 112);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v10;
}

uint64_t mmFlushStream(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  DecryptionTypeFromTrackType = getDecryptionTypeFromTrackType(*(a1 + 24));
  v18 = 0;
  if (*(v2 + 96))
  {
    FigBasicAESCPECryptorGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v4 = *(v2 + 96);
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v5)
      {
        v7 = 4294954514;
        goto LABEL_19;
      }

      v6 = v5(v4, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &v18);
      if (v6)
      {
LABEL_6:
        v7 = v6;
        goto LABEL_19;
      }
    }

    else
    {
      v18 = CFRetain(*MEMORY[0x1E695E4D0]);
    }
  }

  v9 = (a1 + 176);
  v8 = *(a1 + 176);
  if (!v8)
  {
LABEL_18:
    v7 = 0;
LABEL_19:
    v10 = v18;
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v10 = v18;
  if (v18 == *MEMORY[0x1E695E4D0])
  {
    while (1)
    {
      v11 = v8[1];
      v16 = *(v8 + 1);
      v17 = v8[4];
      v14 = *(v8 + 5);
      v15 = v8[7];
      v6 = mmPushFrame(a1, DecryptionTypeFromTrackType, 1, v11, &v16, &v14, *(v8 + 16));
      if (v6)
      {
        goto LABEL_6;
      }

      v12 = **v9;
      *v9 = v12;
      if (!v12)
      {
        *(a1 + 184) = v9;
      }

      MPEG2EmitItemRelease(v8);
      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_18;
      }
    }
  }

  v7 = 0;
  if (v18)
  {
LABEL_20:
    CFRelease(v10);
  }

LABEL_21:
  if (!v7)
  {
    return FigMPEG2SampleGeneratorFlush(*(a1 + 32));
  }

  mmEmitBufferClear(a1);
  return v7;
}

uint64_t getDecryptionTypeFromTrackType(int a1)
{
  result = 0;
  if (a1 <= 1700886114)
  {
    if (a1 == 1700880739)
    {
      v3 = MEMORY[0x1E6960FA8];
    }

    else
    {
      if (a1 != 1700881203)
      {
        return result;
      }

      v3 = MEMORY[0x1E6960FB0];
    }
  }

  else
  {
    switch(a1)
    {
      case 2053207651:
        v3 = MEMORY[0x1E6960FD0];
        break;
      case 1701143347:
        v3 = MEMORY[0x1E6960FB8];
        break;
      case 1700886115:
        v3 = MEMORY[0x1E6960FC8];
        break;
      default:
        return result;
    }
  }

  return *v3;
}

uint64_t mmPushFrame(void *a1, uint64_t a2, int a3, CMBlockBufferRef a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    goto LABEL_17;
  }

  v13 = 0;
  if (!a2)
  {
    goto LABEL_29;
  }

  v14 = a1[1];
  if (!*(v14 + 96))
  {
    goto LABEL_29;
  }

  FigBasicAESCPECryptorGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
LABEL_17:
    v13 = 0;
LABEL_29:
    ++a1[20];
    v27 = a1[4];
    *blockBufferOut = *a5;
    v32 = *(a5 + 16);
    *v29 = *a6;
    v30 = *(a6 + 16);
    v26 = FigMPEG2SampleGeneratorPushFrame(v27, a4, blockBufferOut, v29, a7);
    goto LABEL_30;
  }

  blockBufferOut[0] = 0;
  v29[0] = 0;
  if (!*(v14 + 96))
  {
    mmPushFrame(&v33);
    v26 = v33;
    if (v33)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  FigBasicAESCPECryptorGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(a4, 0, 0);
  v16 = *MEMORY[0x1E695E480];
  if (!IsRangeContiguous)
  {
    Contiguous = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a4, *MEMORY[0x1E695E480], 0, 0, 0, 0, blockBufferOut);
    if (Contiguous)
    {
      goto LABEL_33;
    }

    a4 = blockBufferOut[0];
  }

  DataLength = CMBlockBufferGetDataLength(a4);
  v19 = CMBlockBufferGetDataLength(a4);
  Contiguous = CMBlockBufferCreateWithMemoryBlock(v16, 0, DataLength, v16, 0, 0, v19, 1u, v29);
  if (Contiguous)
  {
    goto LABEL_33;
  }

  v20 = *(v14 + 96);
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v21)
  {
LABEL_18:
    v13 = 0;
    v26 = 4294954514;
    goto LABEL_24;
  }

  Contiguous = v21(v20, *MEMORY[0x1E6961000], a2);
  if (Contiguous)
  {
LABEL_33:
    v26 = Contiguous;
    goto LABEL_16;
  }

  v22 = *(v14 + 96);
  v23 = v29[0];
  v24 = *(CMBaseObjectGetVTable() + 16);
  if (*v24 < 4uLL)
  {
    goto LABEL_18;
  }

  v25 = v24[4];
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = v25(v22, a4, v23);
  if (v26)
  {
LABEL_16:
    v13 = 0;
    goto LABEL_24;
  }

LABEL_20:
  if (!v29[0])
  {
    goto LABEL_22;
  }

  v13 = CFRetain(v29[0]);
LABEL_23:
  v26 = 0;
LABEL_24:
  if (blockBufferOut[0])
  {
    CFRelease(blockBufferOut[0]);
  }

  if (v29[0])
  {
    CFRelease(v29[0]);
  }

  a4 = v13;
  if (!v26)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (v13)
  {
    CFRelease(v13);
  }

  return v26;
}

double mmAdjustPTSDTS(CMTime *a1, CMTime *a2, CMTime *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((a1[5].flags & 0x1D) != 1)
  {
    v6 = *MEMORY[0x1E6960CC0];
    a1[5] = **&MEMORY[0x1E6960CC0];
  }

  if (a3 && (a3->flags & 0x1D) == 1)
  {
    if ((v24 = *a3, time1 = a1[5], FigManifoldAdjustTimestampAndUpdateRefTime(&time1, &v24, &a1[5]), value = a3->value, flags = a3->flags, timescale = a3->timescale, epoch = a3->epoch, v29 = v24.value, v9 = v24.flags, v30 = v24.timescale, v10 = v24.epoch, (flags & 0x1F) != 3) && (v24.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v11 = a3->value, rhs.epoch = v24.epoch, lhs.value = v11, lhs.timescale = a3->timescale, lhs.flags = flags, lhs.epoch = epoch, *&rhs.value = *&v24.value, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), time = time1, CMTimeMake(&lhs, 1, 1000000000), CMTimeCompare(&time, &lhs) > 0))
    {
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = epoch;
      time.value = v29;
      time.timescale = v30;
      time.flags = v9;
      time.epoch = v10;
      if (CMTimeCompare(&time1, &time))
      {
        *&v6 = v24.value;
        *a3 = v24;
      }
    }
  }

  if (a2)
  {
    if ((a2->flags & 0x1D) == 1)
    {
      if ((v24 = *a2, time1 = a1[5], FigManifoldAdjustTimestampAndUpdateRefTime(&time1, &v24, &a1[5]), value = a2->value, v12 = a2->flags, timescale = a2->timescale, v13 = a2->epoch, v29 = v24.value, v14 = v24.flags, v30 = v24.timescale, v15 = v24.epoch, (v12 & 0x1F) != 3) && (v24.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v16 = a2->value, rhs.epoch = v24.epoch, lhs.value = v16, lhs.timescale = a2->timescale, lhs.flags = v12, lhs.epoch = v13, *&rhs.value = *&v24.value, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), time = time1, CMTimeMake(&lhs, 1, 1000000000), CMTimeCompare(&time, &lhs) > 0))
      {
        time1.value = value;
        time1.timescale = timescale;
        time1.flags = v12;
        time1.epoch = v13;
        time.value = v29;
        time.timescale = v30;
        time.flags = v14;
        time.epoch = v15;
        if (CMTimeCompare(&time1, &time))
        {
          *&v6 = v24.value;
          *a2 = v24;
        }
      }
    }

    v17 = a1 + 6;
    if ((a1[6].flags & 0x1D) != 1)
    {
      v18 = MEMORY[0x1E6960CC0];
      v19 = *MEMORY[0x1E6960CC0];
      *&v17->value = *MEMORY[0x1E6960CC0];
      v20 = *(v18 + 16);
      a1[6].epoch = v20;
      time1 = *a2;
      *&time.value = v19;
      time.epoch = v20;
      if (CMTimeCompare(&time1, &time) < 0)
      {
        CMTimeMake(&time1, 0x200000000, 90000);
        *&v6 = time1.value;
        *&v17->value = *&time1.value;
        v21 = time1.epoch;
LABEL_22:
        v17->epoch = v21;
      }
    }
  }

  else
  {
    v17 = a1 + 6;
    if ((a1[6].flags & 0x1D) != 1)
    {
      v22 = MEMORY[0x1E6960CC0];
      v6 = *MEMORY[0x1E6960CC0];
      *&v17->value = *MEMORY[0x1E6960CC0];
      v21 = *(v22 + 16);
      goto LABEL_22;
    }
  }

  if (a3 && (a3->flags & 0x1D) == 1)
  {
    time = *a3;
    lhs = *v17;
    CMTimeAdd(&time1, &time, &lhs);
    *&v6 = time1.value;
    *a3 = time1;
  }

  if (a2 && (a2->flags & 0x1D) == 1)
  {
    time = *a2;
    lhs = *v17;
    CMTimeAdd(&time1, &time, &lhs);
    *&v6 = time1.value;
    *a2 = time1;
  }

  return *&v6;
}

uint64_t mmMPEG2NewFormatCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a2 + 48) = FigFormatDescriptionRetain();
  if (*(*(a2 + 8) + 8))
  {
    return 4294954511;
  }

  return mmMPEG2MakeFormatCallback(a2);
}

uint64_t mmUpdateTrackType(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (a2 <= 1701143346)
  {
    if (a2 > 1700880738)
    {
      if (a2 <= 1700886114)
      {
        if (a2 == 1700880739)
        {
          if (!*(v3 + 96))
          {
            goto LABEL_45;
          }

          FigBasicAESCPECryptorGetClassID();
          result = CMBaseObjectIsMemberOfClass();
          if (!result)
          {
            goto LABEL_45;
          }

          v6 = 1633973363;
        }

        else
        {
          if (a2 != 1700881203)
          {
            return result;
          }

          if (!*(v3 + 96))
          {
            goto LABEL_45;
          }

          FigBasicAESCPECryptorGetClassID();
          result = CMBaseObjectIsMemberOfClass();
          if (!result)
          {
            goto LABEL_45;
          }

          v6 = 1633891104;
        }

        goto LABEL_44;
      }

      if (a2 == 1700886115)
      {
LABEL_33:
        if (*(v3 + 96))
        {
          FigBasicAESCPECryptorGetClassID();
          result = CMBaseObjectIsMemberOfClass();
          if (result)
          {
            *(v2 + 28) = 1748121140;
          }
        }

        goto LABEL_36;
      }

      v4 = 1700998451;
    }

    else if (a2 > 1635017570)
    {
      if (a2 == 1635017571)
      {
        v7 = 1668047728;
        goto LABEL_46;
      }

      v4 = 1685353248;
    }

    else
    {
      if (a2 == 1633891104)
      {
        goto LABEL_45;
      }

      v4 = 1633973363;
    }

LABEL_27:
    if (a2 != v4)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (a2 <= 1835103587)
  {
    if (a2 <= 1768174367)
    {
      if (a2 != 1701143347)
      {
        v5 = 1748121140;
        goto LABEL_31;
      }

      if (!*(v3 + 96))
      {
        goto LABEL_45;
      }

      FigBasicAESCPECryptorGetClassID();
      result = CMBaseObjectIsMemberOfClass();
      if (!result)
      {
        goto LABEL_45;
      }

      v6 = 1700998451;
LABEL_44:
      *(v2 + 28) = v6;
      goto LABEL_45;
    }

    if (a2 == 1768174368)
    {
      v7 = 1835365473;
      goto LABEL_46;
    }

    v4 = 1819304813;
    goto LABEL_27;
  }

  if (a2 <= 1836476771)
  {
    if (a2 == 1835103588)
    {
      goto LABEL_45;
    }

    v5 = 1836070006;
LABEL_31:
    if (a2 != v5)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (a2 != 1836476772)
  {
    if (a2 != 1886612592)
    {
      if (a2 != 2053207651)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_45:
    v7 = 1936684398;
    goto LABEL_46;
  }

LABEL_36:
  v7 = 1986618469;
LABEL_46:
  *(v2 + 112) = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_97()
{
  --*(v0 + 112);

  return FigSimpleMutexUnlock();
}

uint64_t OUTLINED_FUNCTION_4_78(uint64_t a1)
{

  return FigSimpleMutexLock();
}

void __fxs_ensureClientEstablished_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    FigCFDictionarySetValue();
    _MergedGlobals_70 = FigXPCRemoteClientCreate();
    CFRelease(v1);
  }

  else
  {
    _MergedGlobals_70 = -12786;
  }
}

uint64_t FigSampleBufferProviderCreateForVisualContext(const __CFAllocator *a1, void *a2, __int128 *a3, __int128 *a4, CFTypeRef *a5)
{
  values = a2;
  if (!a2)
  {
    FigSampleBufferProviderCreateForVisualContext_cold_2(v16);
    return LODWORD(v16[0]);
  }

  v8 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    FigSampleBufferProviderCreateForVisualContext_cold_1(v16);
    return LODWORD(v16[0]);
  }

  v9 = v8;
  v10 = *MEMORY[0x1E695E480];
  v11 = *a3;
  v17.epoch = *(a3 + 2);
  v12 = a4[1];
  v16[0] = *a4;
  v16[1] = v12;
  v16[2] = a4[2];
  *&v17.value = v11;
  FigSampleBufferProviderCreateForVisualContextGroup(v10, v9, &v17, v16, a5);
  v14 = v13;
  CFRelease(v9);
  return v14;
}

void FigSampleBufferProviderCreateForVisualContextGroup(const __CFAllocator *a1, CFTypeRef cf, CMTime *a3, __int128 *a4, CFTypeRef *a5)
{
  cfa = 0;
  if (!cf)
  {
    emitter = fig_log_get_emitter();
    v15 = v5;
    v16 = 875;
LABEL_12:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< SBP-VC >>>>", v16, v15);
    return;
  }

  v11 = CFGetTypeID(cf);
  if (v11 != CFArrayGetTypeID())
  {
    emitter = fig_log_get_emitter();
    v15 = v5;
    v16 = 877;
    goto LABEL_12;
  }

  Count = CFArrayGetCount(cf);
  if (!Count)
  {
    emitter = fig_log_get_emitter();
    v15 = v5;
    v16 = 881;
    goto LABEL_12;
  }

  if (!a5)
  {
    emitter = fig_log_get_emitter();
    v15 = v5;
    v16 = 883;
    goto LABEL_12;
  }

  v13 = Count;
  FigSampleBufferProviderGetClassID();
  if (!CMDerivedObjectCreate())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Copy = CFArrayCreateCopy(a1, cf);
    *(DerivedStorage + 16) = Copy;
    if (Copy)
    {
      *(DerivedStorage + 8) = v13;
      if ((a3->flags & 0x1D) == 1)
      {
        time1 = *a3;
        v32 = **&MEMORY[0x1E6960CC0];
        v19 = CMTimeCompare(&time1, &v32);
        *(DerivedStorage + 32) = v19 > 0;
        if (v19 >= 1)
        {
          v20 = *&a3->value;
          *(DerivedStorage + 56) = a3->epoch;
          *(DerivedStorage + 40) = v20;
          v21 = MEMORY[0x1E6960C70];
          *(DerivedStorage + 64) = *MEMORY[0x1E6960C70];
          *(DerivedStorage + 80) = *(v21 + 16);
        }
      }

      else
      {
        *(DerivedStorage + 32) = 0;
      }

      if ((*(a4 + 12) & 1) == 0 || (*(a4 + 36) & 1) == 0 || *(a4 + 5) || (*(a4 + 3) & 0x8000000000000000) != 0 || (time1 = *(a4 + 1), v32 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &v32) < 1))
      {
        v22 = MEMORY[0x1E6960C98];
        v23 = *(MEMORY[0x1E6960C98] + 16);
        *(DerivedStorage + 128) = *MEMORY[0x1E6960C98];
        *(DerivedStorage + 144) = v23;
        *(DerivedStorage + 160) = *(v22 + 32);
      }

      else
      {
        v30 = *a4;
        v31 = a4[2];
        *(DerivedStorage + 144) = a4[1];
        *(DerivedStorage + 160) = v31;
        *(DerivedStorage + 128) = v30;
      }

      if (v13 < 1)
      {
LABEL_31:
        sbp_vc_checkForRequestedDropRanges(cfa);
        *a5 = cfa;
        return;
      }

      v24 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), v24);
        v26 = cfa;
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v27)
        {
          break;
        }

        if (v27(ValueAtIndex, sbp_vc_imageAvailableSequential, v26))
        {
          break;
        }

        v28 = cfa;
        v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v29 || v29(ValueAtIndex, sbp_vc_noMoreImages, v28))
        {
          break;
        }

        if (v13 == ++v24)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      FigSampleBufferProviderCreateForVisualContextGroup_cold_1(&time1);
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }
}

_BYTE *sbp_vc_imageAvailableSequential(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_BYTE *sbp_vc_noMoreImages(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void sbp_vc_checkForRequestedDropRanges(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CFPreferencesCopyAppValue(@"video_drop_ranges", @"com.apple.coremedia");
  if (v2)
  {
    v3 = v2;
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      Count = CFArrayGetCount(v3);
      v6 = Count;
      if (Count)
      {
LABEL_15:
        DerivedStorage[25] = 0;
      }

      else
      {
        v7 = Count >> 1;
        DerivedStorage[23] = malloc_type_calloc(Count >> 1, 0x18uLL, 0x1000040504FFAC1uLL);
        DerivedStorage[24] = malloc_type_calloc(v6 >> 1, 0x18uLL, 0x1000040504FFAC1uLL);
        DerivedStorage[25] = v7;
        if (v6 >= 1)
        {
          for (i = 0; i != v6; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
            valuePtr = 0.0;
            memset(&v24, 0, sizeof(v24));
            v10 = CFNumberGetTypeID();
            if (v10 == CFGetTypeID(ValueAtIndex))
            {
              CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
              DoubleValue = valuePtr;
            }

            else
            {
              v12 = CFStringGetTypeID();
              if (v12 != CFGetTypeID(ValueAtIndex))
              {
                goto LABEL_15;
              }

              DoubleValue = CFStringGetDoubleValue(ValueAtIndex);
              valuePtr = DoubleValue;
            }

            v13 = i >> 1;
            CMTimeMakeWithSeconds(&v24, DoubleValue, 1000);
            if (i)
            {
              v16 = 3 * v13;
              v17 = DerivedStorage[24] + 24 * v13;
              v18 = DerivedStorage[23] + 8 * v16;
              lhs = v24;
              v19 = *v18;
              v21.epoch = *(v18 + 16);
              *&v21.value = v19;
              CMTimeAdd(&v23, &lhs, &v21);
              v20 = *&v23.value;
              *(v17 + 16) = v23.epoch;
              *v17 = v20;
            }

            else
            {
              v14 = DerivedStorage[23] + 24 * v13;
              v15 = *&v24.value;
              *(v14 + 16) = v24.epoch;
              *v14 = v15;
            }
          }
        }
      }
    }

    CFRelease(v3);
  }
}

uint64_t sbp_vc_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 8) >= 1)
    {
      v3 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 16), v3);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v5)
        {
          v5(ValueAtIndex, 0, 0);
        }

        v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v6)
        {
          v6(ValueAtIndex, 0, 0);
        }

        ++v3;
      }

      while (v3 < *(v2 + 8));
    }
  }

  return 0;
}

void sbp_vc_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[11];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[11] = 0;
  }

  v7 = DerivedStorage[22];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[22] = 0;
  }

  v8 = DerivedStorage[23];
  if (v8)
  {
    free(v8);
  }

  v9 = DerivedStorage[24];
  if (v9)
  {

    free(v9);
  }
}

__CFString *sbp_vc_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProviderForVisualContext %p>", a1);
  return Mutable;
}

BOOL sbp_vc_isEmpty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, vars0);
    return 1;
  }

  else
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 176) || *(DerivedStorage + 8) < 1)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 16), v4);
        EarliestSequentialImageTime = FigVisualContextGetEarliestSequentialImageTime(ValueAtIndex, 0, 0, 0);
        result = EarliestSequentialImageTime != 0;
        if (EarliestSequentialImageTime)
        {
          break;
        }

        ++v4;
      }

      while (v4 < *(v3 + 8));
    }
  }

  return result;
}

uint64_t sbp_vc_isAtEndOfData(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v9);
    return 1;
  }

  v3 = DerivedStorage;
  if (!*(DerivedStorage + 176))
  {
    if (*(DerivedStorage + 8) < 1)
    {
      return 1;
    }

    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 16), v4);
      v8 = 0;
      FigVisualContextGetEarliestSequentialImageTime(ValueAtIndex, 0, 0, &v8);
      if (!v8)
      {
        break;
      }

      if (++v4 >= *(v3 + 8))
      {
        return 1;
      }
    }
  }

  return 0;
}

void sbp_vc_getUpcomingPTSInfo(uint64_t a1, _BYTE *a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< SBP-VC >>>>", 656, v2);
  }

  else
  {
    *a2 = 0;
  }
}

CMSampleBufferRef sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v66.value = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 16);
  v66.epoch = v4;
  *&v65.value = *&v66.value;
  v65.epoch = v4;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  memset(&sampleTiming, 0, sizeof(sampleTiming));
  tagCollection = 0;
  sampleBufferOut = 0;
  cf = 0;
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v52, sampleSizeArray);
    return 0;
  }

  v6 = DerivedStorage;
  v54 = *&v66.value;
  v7 = 0;
  Mutable = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E695E9C0];
  while (1)
  {
    while (1)
    {
      do
      {
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (*(v6 + 1) >= 1)
        {
          v11 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 2), v11);
            if (FigVisualContextGetEarliestSequentialImageTime(ValueAtIndex, 0, &v66, &v64))
            {
              break;
            }

            if (v11)
            {
              time1.start = v66;
              time2 = v65;
              if (CMTimeCompare(&time1.start, &time2))
              {
                break;
              }
            }

            else
            {
              v65 = v66;
            }

            if (++v11 >= *(v6 + 1))
            {
              goto LABEL_16;
            }
          }

          v39 = 0;
          v7 = 0;
          Mutable = 0;
          goto LABEL_106;
        }

LABEL_16:
        if (v6[32])
        {
          if ((*(v6 + 19) & 0x1D) != 1)
          {
            *(v6 + 64) = v66;
          }

          time1.start = v66;
          time2 = *(v6 + 64);
          if (CMTimeCompare(&time1.start, &time2) >= 1)
          {
            v13 = *(v6 + 11);
            if (v13)
            {
              Mutable = CFRetain(v13);
              v7 = 0;
            }

            else
            {
              v7 = 0;
              Mutable = 0;
            }

            break;
          }
        }

        Mutable = CFArrayCreateMutable(v9, *(v6 + 1), v10);
        if (!Mutable)
        {
          sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_4();
          v39 = 0;
          v7 = 0;
          goto LABEL_106;
        }

        v7 = CFArrayCreateMutable(v9, *(v6 + 1), v10);
        if (!v7)
        {
          sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_3();
          goto LABEL_105;
        }

        if (*(v6 + 1) >= 1)
        {
          v14 = 0;
          v15 = 1;
          while (1)
          {
            v16 = CFArrayGetValueAtIndex(*(v6 + 2), v14);
            time2 = v66;
            v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (!v17)
            {
              goto LABEL_105;
            }

            time1.start = time2;
            if (v17(v16, v9, &time1, 3, &v63, &v62, 0))
            {
              goto LABEL_105;
            }

            if (v63)
            {
              CFArrayAppendValue(Mutable, v63);
              if (v63)
              {
                CFRelease(v63);
                v63 = 0;
              }
            }

            if (v62)
            {
              CFArrayAppendValue(v7, v62);
              if (v62)
              {
                CFRelease(v62);
                v62 = 0;
              }
            }

            LOBYTE(time1.start.value) = 0;
            FigVisualContextGetEarliestSequentialImageTime(v16, 0, 0, &time1);
            if (!LOBYTE(time1.start.value))
            {
              v15 = 0;
            }

            if (++v14 >= *(v6 + 1))
            {
              v18 = v15 == 0;
              v10 = MEMORY[0x1E695E9C0];
              goto LABEL_39;
            }
          }
        }

        v18 = 0;
LABEL_39:
        if (!v6[32])
        {
          break;
        }

        v19 = *(v6 + 11);
        *(v6 + 11) = Mutable;
        CFRetain(Mutable);
        if (v19)
        {
          CFRelease(v19);
        }

        *(v6 + 4) = v66;
        v6[120] = 0;
      }

      while (v18);
      v20 = FigCFArrayGetValueAtIndex();
      if (!v20)
      {
        sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_2();
        goto LABEL_105;
      }

      v21 = v20;
      if (v6[32])
      {
        v6[120] = 1;
        v66 = *(v6 + 64);
        LOBYTE(time1.start.value) = 0;
        FigVisualContextGetEarliestSequentialImageTime(v20, 0, 0, &time1);
        if (LOBYTE(time1.start.value))
        {
          *(v6 + 4) = v54;
          *(v6 + 10) = v4;
        }

        else
        {
          time2 = *(v6 + 64);
          rhs = *(v6 + 40);
          CMTimeAdd(&time1.start, &time2, &rhs);
          *(v6 + 4) = *&time1.start.value;
          *(v6 + 10) = time1.start.epoch;
        }
      }

      if ((v6[140] & 1) == 0)
      {
        break;
      }

      if ((v6[164] & 1) == 0)
      {
        break;
      }

      if (*(v6 + 21))
      {
        break;
      }

      if ((*(v6 + 19) & 0x8000000000000000) != 0)
      {
        break;
      }

      v28 = *(v6 + 9);
      *&time1.start.value = *(v6 + 8);
      *&time1.start.epoch = v28;
      *&time1.duration.timescale = *(v6 + 10);
      time2 = v66;
      if (CMTimeRangeContainsTime(&time1, &time2))
      {
        break;
      }

      LOBYTE(time1.start.value) = 0;
      FigVisualContextGetEarliestSequentialImageTime(v21, 0, 0, &time1);
      if (LOBYTE(time1.start.value))
      {
        *(v6 + 4) = v54;
        *(v6 + 10) = v4;
      }
    }

    if (*(v6 + 25) < 1)
    {
      break;
    }

    v22 = 0;
    v23 = 0;
    while (1)
    {
      v24 = (*(v6 + 23) + v22);
      v25 = *v24;
      time1.start.epoch = *(v24 + 2);
      *&time1.start.value = v25;
      time2 = v66;
      if (CMTimeCompare(&time1.start, &time2) <= 0)
      {
        v26 = (*(v6 + 24) + v22);
        time1.start = v66;
        v27 = *v26;
        time2.epoch = *(v26 + 2);
        *&time2.value = v27;
        if (CMTimeCompare(&time1.start, &time2) < 0)
        {
          break;
        }
      }

      ++v23;
      v22 += 24;
      if (v23 >= *(v6 + 25))
      {
        goto LABEL_63;
      }
    }
  }

LABEL_63:
  if (Mutable)
  {
    v29 = FigCFArrayGetValueAtIndex();
    v63 = v29;
    if (v29)
    {
      v30 = v29;
      v32 = (v6 + 24);
      v31 = *(v6 + 3);
      if (!v31)
      {
        goto LABEL_69;
      }

      if (!CMVideoFormatDescriptionMatchesImageBuffer(v31, v30))
      {
        if (*v32)
        {
          CFRelease(*v32);
          *v32 = 0;
        }

LABEL_69:
        if (CMVideoFormatDescriptionCreateForImageBuffer(v9, v63, v6 + 3))
        {
          goto LABEL_105;
        }
      }
    }
  }

  sampleTiming.presentationTimeStamp = v66;
  sampleTiming.decodeTimeStamp.epoch = v4;
  *&sampleTiming.decodeTimeStamp.value = v54;
  *&sampleTiming.duration.value = v54;
  sampleTiming.duration.epoch = v4;
  if (v6[32])
  {
    *&sampleTiming.duration.value = *(v6 + 40);
    sampleTiming.duration.epoch = *(v6 + 7);
  }

  if (!v63)
  {
    v40 = FigCFArrayGetValueAtIndex();
    v41 = MEMORY[0x1E695E4D0];
    v42 = MEMORY[0x1E69604F8];
    if (v40 && CFDictionaryGetValue(v40, *MEMORY[0x1E69604F8]) == *v41)
    {
      *&sampleTiming.duration.value = v54;
      sampleTiming.duration.epoch = v4;
      v43 = 1;
    }

    else
    {
      v43 = 0;
    }

    if (!CMSampleBufferCreate(v9, 0, 1u, 0, 0, 0, 0, 1, &sampleTiming, 0, 0, &sampleBufferOut))
    {
      v50 = *v41;
      CMSetAttachment(sampleBufferOut, *MEMORY[0x1E69604B0], *v41, 1u);
      if (v43)
      {
        v36 = sampleBufferOut;
        v38 = *v42;
        value = v50;
LABEL_104:
        CMSetAttachment(v36, v38, value, 1u);
      }
    }

LABEL_105:
    v39 = 0;
    goto LABEL_106;
  }

  v33 = *(v6 + 1);
  if (v33 == 1)
  {
    if (!CMSampleBufferCreateForImageBuffer(v9, v63, 1u, 0, 0, *(v6 + 3), &sampleTiming, &sampleBufferOut))
    {
      if (v7)
      {
        if (CFArrayGetCount(v7))
        {
          v34 = CFArrayGetValueAtIndex(v7, 0);
          if (v34)
          {
            time1.start.value = 0;
            v35 = *MEMORY[0x1E69604E0];
            if (CFDictionaryGetValueIfPresent(v34, *MEMORY[0x1E69604E0], &time1))
            {
              v36 = sampleBufferOut;
              value = time1.start.value;
              v38 = v35;
              goto LABEL_104;
            }
          }
        }
      }
    }

    goto LABEL_105;
  }

  if (v33 < 2)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v52, sampleSizeArray);
    goto LABEL_105;
  }

  v39 = CFArrayCreateMutable(v9, *(v6 + 1), MEMORY[0x1E695E9C0]);
  if (v39)
  {
    if (*(v6 + 1) < 1)
    {
LABEL_92:
      if (!MEMORY[0x19A8D33F0](v9, v39, Mutable, &cf))
      {
        time1.start = sampleTiming.presentationTimeStamp;
        time2 = sampleTiming.duration;
        if (!FigSampleBufferCreateForTaggedBufferGroup())
        {
          if (v7)
          {
            if (CFArrayGetCount(v7))
            {
              v48 = CFArrayGetValueAtIndex(v7, 0);
              if (v48)
              {
                time1.start.value = 0;
                v49 = *MEMORY[0x1E69604E0];
                if (CFDictionaryGetValueIfPresent(v48, *MEMORY[0x1E69604E0], &time1))
                {
                  CMSetAttachment(sampleBufferOut, v49, time1.start.value, 1u);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v44 = 0;
      while (!FigTagCollectionCreateMutable())
      {
        v45 = FigTagMakeWithSInt64Value();
        v47 = v46;
        *&v67.category = v45;
        v67.value = v47;
        CMTagCollectionAddTag(tagCollection, v67);
        CFArrayAppendValue(v39, tagCollection);
        if (tagCollection)
        {
          CFRelease(tagCollection);
          tagCollection = 0;
        }

        if (++v44 >= *(v6 + 1))
        {
          goto LABEL_92;
        }
      }
    }
  }

  else
  {
    sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_1();
  }

LABEL_106:
  if (a2)
  {
    *a2 = v64;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return sampleBufferOut;
}