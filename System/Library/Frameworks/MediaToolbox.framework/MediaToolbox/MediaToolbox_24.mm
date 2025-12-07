__CFArray *copyRangedValuesOfStyleProperty(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      v7 = v6(a1);
    }

    else
    {
      v7 = &stru_1F0B1AFB8;
    }

    Length = CFStringGetLength(v7);
    if (Length >= 1)
    {
      v9 = Length;
      v10 = 0;
      while (1)
      {
        cf = 0;
        value = 0;
        v26 = 0;
        v27 = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v11)
        {
          if (!v11(a1, v10, a2, v4, &cf, &v26))
          {
            break;
          }
        }

LABEL_21:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v10 >= v9)
        {
          return Mutable;
        }
      }

      FigCaptionRendererIntervalCreate(&value);
      FigBytePumpGetFigBaseObject();
      v13 = v12;
      v15 = v14;
      v16 = value;
      FigCaptionRendererIntervalProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v18 = *(ProtocolVTable + 16);
        if (v18)
        {
          v19 = *(v18 + 16);
          if (v19)
          {
            v19(v16, v13, v15);
          }
        }
      }

      if (cf)
      {
        v20 = CFGetTypeID(cf);
        TypeID = FigCaptionDynamicStyleGetTypeID();
        InitialValue = cf;
        if (v20 == TypeID)
        {
          v23 = value;
          InitialValue = FigCaptionDynamicStyleGetInitialValue();
          v24 = v23;
LABEL_18:
          FigCaptionRendererIntervalSetValue(v24, InitialValue);
          CFArrayAppendValue(Mutable, value);
          if (value)
          {
            CFRelease(value);
          }

          v10 += v27;
          goto LABEL_21;
        }
      }

      else
      {
        InitialValue = 0;
      }

      v24 = value;
      goto LABEL_18;
    }
  }

  else
  {
    copyRangedValuesOfStyleProperty_cold_1();
  }

  return Mutable;
}

uint64_t FigCaptionRendererCaptionSetExtendedLanguageTagString(uint64_t a1)
{
  FigCaptionRendererCaptionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v4 = *(result + 16);
    result += 16;
    v3 = v4;
    if (v4)
    {
      v5 = *(v3 + 56);
      if (v5)
      {

        return v5(a1, @"ja-JP");
      }
    }
  }

  return result;
}

uint64_t FigCaptionRegionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t FigCaptionRendererStackLayoutRegionSetAnimationEnabled(uint64_t a1)
{
  FigCaptionRendererStackLayoutRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v4 = *(result + 16);
    result += 16;
    v3 = v4;
    if (v4)
    {
      v5 = *(v3 + 8);
      if (v5)
      {

        return v5(a1, 0);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererRegionSetRegionID(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 8);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererRegionSetLines(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 40);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererRegionSetRegionAnchor(uint64_t a1, double a2, double a3)
{
  FigCaptionRendererRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v10 = *(result + 16);
    result += 16;
    v9 = v10;
    if (v10)
    {
      v11 = *(v9 + 56);
      if (v11)
      {
        v7.n128_f64[0] = a2;
        v8.n128_f64[0] = a3;

        return v11(a1, v7, v8);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererRegionGetLines(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 48);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererRegionGetRegionID(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 16);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

CFComparisonResult OUTLINED_FUNCTION_2_34(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t FigSampleBufferConsumerStartServer()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v1 = FigXPCServerStart();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t CreateSampleBufferConsumerServerState(const void *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040AE0EF783uLL);
  if (v4)
  {
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *v4 = v5;
    v4[4] = 0;
    *(v4 + 48) = 0;
  }

  else
  {
    CreateSampleBufferConsumerServerState_cold_1(&v7);
    result = v7;
  }

  *a2 = v4;
  return result;
}

void DisposeSampleBufferConsumerServerState(uint64_t *a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      v2 = *a1;
      v3 = a1[5];
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v4)
      {
        v4(v2, v3);
      }

      *(a1 + 48) = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
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

    FigXPCRelease();

    free(a1);
  }
}

CFTypeID OUTLINED_FUNCTION_5_23(int a1, CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t FigVTTCueCreate(uint64_t a1, void *a2)
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
        *(DerivedStorage + 16) = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTCueCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTCue_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTCue_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"cue: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figVTTCue_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 1;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTCue_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTCue_setNodeValue(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v4 = CFGetTypeID(a2), v4 != CFStringGetTypeID()))
  {
    figVTTCue_setNodeValue_cold_1(&v8);
    return v8;
  }

  else
  {
    v5 = *(DerivedStorage + 16);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 16) = 0;
    }

    v6 = *(DerivedStorage + 8);
    *(DerivedStorage + 8) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    return 0;
  }
}

uint64_t figVTTCue_copyNodeValue(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (*(DerivedStorage + 16))
    {
      v5 = CFGetAllocator(a1);
      CFStringCreateMutable(v5, 0);
      FigCFArrayApplyFunction();
      Copy = 0;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (!v7 || (Copy = CFRetain(v7)) == 0)
      {
        v8 = CFGetAllocator(a1);
        Copy = CFStringCreateCopy(v8, @" ");
      }
    }

    v9 = 0;
    *a2 = Copy;
  }

  else
  {
    figVTTCue_copyNodeValue_cold_1(&v11);
    return v11;
  }

  return v9;
}

uint64_t figVTTCue_copyChildNodeArray(uint64_t a1, void *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *a2 = v3;
  return 0;
}

uint64_t figVTTCue_copyNodeDocumentSerialization(const void *a1, __CFString **a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v65 = 0;
  theDict = 0;
  if (!a2)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_16(&v74);
    value_low = LODWORD(v74.value);
    goto LABEL_128;
  }

  v2 = a2;
  *a2 = 0;
  v4 = FigVTTNodeCopyAttributes(a1, &theDict);
  if (v4)
  {
    value_low = v4;
    v56 = 0;
    v55 = 0;
    goto LABEL_122;
  }

  Value = CFDictionaryGetValue(theDict, @"id");
  v71 = 0;
  v6 = FigVTTNodeCopyAttributes(a1, &v71);
  if (v6)
  {
    value_low = v6;
    v62 = 0;
  }

  else if (v71)
  {
    v7 = CFDictionaryGetValue(v71, @"raw_starttime");
    v8 = CFDictionaryGetValue(v71, @"raw_endtime");
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    if (v8)
    {
      v8 = CFRetain(v8);
    }

    if (v7)
    {
      if (!v8)
      {
LABEL_17:
        v13 = CFDictionaryGetValue(v71, @"endtime");
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFDictionaryGetTypeID())
          {
            CMTimeMakeFromDictionary(&v74, v14);
            theArray = v74.value;
            timescale = v74.timescale;
            if ((v74.flags & 0x1D) == 1)
            {
              v74.value = theArray;
              v74.timescale = timescale;
              v16 = FigVTTCopyCMTimeAsTimeStamp(&v74);
              if (v16)
              {
                v8 = v16;
                goto LABEL_22;
              }

              figVTTCue_copyNodeDocumentSerialization_cold_5(&v74);
            }

            else
            {
              figVTTCue_copyNodeDocumentSerialization_cold_4(&v74);
            }
          }

          else
          {
            figVTTCue_copyNodeDocumentSerialization_cold_3(&v74);
          }
        }

        else
        {
          figVTTCue_copyNodeDocumentSerialization_cold_6(&v74);
        }

        value_low = LODWORD(v74.value);
        v62 = 0;
        v8 = 0;
LABEL_23:
        CFRelease(v7);
        if (!v8)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_22:
      v17 = CFGetAllocator(a1);
      v62 = CFStringCreateWithFormat(v17, 0, @"%@ --> %@", v7, v8);
      value_low = 0;
      goto LABEL_23;
    }

    v9 = CFDictionaryGetValue(v71, @"starttime");
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v74, v10);
        theArray = v74.value;
        timescale = v74.timescale;
        if ((v74.flags & 0x1D) == 1)
        {
          v74.value = theArray;
          v74.timescale = timescale;
          v12 = FigVTTCopyCMTimeAsTimeStamp(&v74);
          if (v12)
          {
            v7 = v12;
            if (!v8)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }

          figVTTCue_copyNodeDocumentSerialization_cold_7(&v74);
        }

        else
        {
          figVTTCue_copyNodeDocumentSerialization_cold_2(&v74);
        }
      }

      else
      {
        figVTTCue_copyNodeDocumentSerialization_cold_1(&v74);
      }
    }

    else
    {
      figVTTCue_copyNodeDocumentSerialization_cold_8(&v74);
    }

    value_low = LODWORD(v74.value);
    v62 = 0;
    if (v8)
    {
LABEL_24:
      CFRelease(v8);
    }
  }

  else
  {
    figVTTCue_copyNodeDocumentSerialization_cold_9(&v74);
    v62 = 0;
    value_low = LODWORD(v74.value);
  }

LABEL_25:
  if (v71)
  {
    CFRelease(v71);
  }

  if (value_low)
  {
    v55 = 0;
    v56 = v62;
    goto LABEL_122;
  }

  theArray = 0;
  v74.value = @"regionID";
  *&v74.timescale = @"region";
  v74.epoch = figVTTCue_MapCueAttributeToCueSettings_regionID;
  v75 = @"align";
  v76 = @"align";
  v77 = figVTTCue_MapCueAttributeToCueSettings_passThroughString;
  v78 = @"position";
  v79 = @"position";
  v80 = figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension;
  v81 = @"line";
  v82 = @"line";
  v83 = figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension;
  v84 = @"size";
  v85 = @"size";
  v86 = figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension;
  v87 = @"writingMode";
  v88 = @"vertical";
  v89 = figVTTCue_MapCueAttributeToCueSettings_writingMode;
  v19 = FigVTTNodeCopyAttributes(a1, &theArray);
  if (v19)
  {
    value_low = v19;
    theString = 0;
    Mutable = 0;
    goto LABEL_43;
  }

  if (!theArray)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_11(&v71);
LABEL_145:
    theString = 0;
    Mutable = 0;
    value_low = v71;
    goto LABEL_43;
  }

  v20 = CFGetAllocator(a1);
  theString = CFStringCreateMutable(v20, 0);
  if (!theString)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_10(&v71);
    goto LABEL_145;
  }

  v21 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  p_epoch = &v74.epoch;
  v24 = 6;
  do
  {
    if (CFDictionaryGetValue(theArray, *(p_epoch - 2)))
    {
      if (*p_epoch)
      {
        v25 = (*p_epoch)();
        if (v25)
        {
          value_low = v25;
          CFRelease(theString);
          theString = 0;
          goto LABEL_43;
        }
      }
    }

    p_epoch += 3;
    --v24;
  }

  while (v24);
  for (i = 8; i != 152; i += 24)
  {
    v27 = *(&v74.value + i);
    v28 = CFDictionaryGetValue(Mutable, v27);
    if (v28)
    {
      v29 = v28;
      v30 = CFGetTypeID(v28);
      if (v30 == CFStringGetTypeID() && CFStringGetLength(v29) >= 1)
      {
        CFStringAppendFormat(theString, 0, @" %@:%@", v27, v29);
      }
    }
  }

  value_low = 0;
LABEL_43:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value_low)
  {
    goto LABEL_148;
  }

  v71 = 0;
  theArray = 0;
  v69 = 0;
  cf = 0;
  cf1 = 0;
  v31 = CFGetAllocator(a1);
  v32 = CFStringCreateMutable(v31, 0);
  v33 = MEMORY[0x1E695E480];
  if (!v32)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_13(&v74);
    epoch = 0;
    value_low = LODWORD(v74.value);
    goto LABEL_101;
  }

  v34 = FigVTTNodeCopyChildNodeArray(a1, &theArray);
  if (v34)
  {
LABEL_100:
    value_low = v34;
    epoch = 0;
    goto LABEL_101;
  }

  Count = theArray;
  if (!theArray)
  {
    v34 = FigVTTNodeCopyValue(a1, &v65);
    goto LABEL_100;
  }

  v61 = v2;
  epoch = 0;
  v37 = 0;
  allocator = *v33;
LABEL_52:
  Count = CFArrayGetCount(Count);
  while (1)
  {
    if (v37 >= Count)
    {
      value_low = 0;
      v65 = v32;
      v32 = 0;
      goto LABEL_98;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v37);
    v67 = 0;
    if (!ValueAtIndex || (v39 = ValueAtIndex, v40 = CFGetTypeID(ValueAtIndex), v40 != FigVTTNodeGetTypeID()))
    {
      figVTTCue_copyNodeDocumentSerialization_cold_12(&v74);
      value_low = LODWORD(v74.value);
      goto LABEL_98;
    }

    FigVTTNodeGetNodeType(v39, &v67);
    if (v67 == 5)
    {
      break;
    }

LABEL_95:
    ++v37;
    Count = theArray;
    if (theArray)
    {
      goto LABEL_52;
    }
  }

  if (v71)
  {
    CFRelease(v71);
    v71 = 0;
  }

  v41 = FigVTTNodeCopyValue(v39, &v71);
  if (v41)
  {
    goto LABEL_132;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v41 = FigVTTNodeCopyAttributes(v39, &cf);
  if (v41)
  {
    goto LABEL_132;
  }

  if (cf1)
  {
    CFRelease(cf1);
    cf1 = 0;
  }

  v42 = CFGetAllocator(v39);
  v41 = FigVTTNodeCopyProperty(v39, @"WebVTTSpanNode_MarkupElement", v42, &cf1);
  if (v41)
  {
LABEL_132:
    value_low = v41;
    goto LABEL_98;
  }

  if (cf1)
  {
    if (CFEqual(cf1, @"RubyStart"))
    {
      v43 = @"ruby";
LABEL_69:
      CFStringAppendFormat(v32, 0, @"<%@>", v43);
      goto LABEL_95;
    }

    if (CFEqual(cf1, @"RubyEnd"))
    {
      v44 = @"ruby";
    }

    else
    {
      if (CFEqual(cf1, @"RubyTextStart"))
      {
        v43 = @"rt";
        goto LABEL_69;
      }

      if (!CFEqual(cf1, @"RubyTextEnd"))
      {
        goto LABEL_77;
      }

      v44 = @"rt";
    }

    CFStringAppendFormat(v32, 0, @"</%@>", v44);
    goto LABEL_95;
  }

LABEL_77:
  if (v69)
  {
    CFRelease(v69);
    v69 = 0;
  }

  v45 = CFGetAllocator(v39);
  v41 = FigVTTNodeCopyProperty(v39, @"WebVTTSpanNode_StyleReferences", v45, &v69);
  if (v41)
  {
    goto LABEL_132;
  }

  if (epoch)
  {
    CFRelease(epoch);
  }

  v46 = cf;
  MEMORY[0x19A8D3660](&getCSSAttributeToMarkupMapping_once, initCSSAttributeToMarkupMapping);
  v47 = sCSSAttributeToMarkupMapping;
  MEMORY[0x19A8D3660](&getCSSAttributesToProcessArray_once, initAttributesToProcessArray);
  v48 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  epoch = v48;
  if (!v48)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v59, v60);
    if (v41)
    {
      goto LABEL_132;
    }

LABEL_94:
    CFStringAppendFormat(v32, 0, @"%@", v71);
    goto LABEL_95;
  }

  v74.value = v46;
  *&v74.timescale = v47;
  v74.epoch = v48;
  v75 = 0;
  FigCFArrayApplyFunction();
  value_low = v75;
  if (!v75)
  {
    FigCFArrayApplyFunction();
    value_low = v75;
    if (!v75)
    {
      epoch = v74.epoch;
      if (v74.epoch && CFArrayGetCount(v74.epoch) >= 1)
      {
        FigCFArrayApplyFunction();
        v58 = v71;
        CFStringAppendFormat(v32, 0, @"%@");
        v49 = CFArrayGetCount(epoch);
        if (v49 >= 1)
        {
          v50 = v49 + 1;
          do
          {
            v51 = CFArrayGetValueAtIndex(epoch, v50 - 2);
            v52 = CFDictionaryGetValue(v51, @"closeTag");
            if (v52)
            {
              CFStringAppend(v32, v52);
            }

            --v50;
          }

          while (v50 > 1);
        }

        goto LABEL_95;
      }

      goto LABEL_94;
    }
  }

  CFRelease(epoch);
  epoch = 0;
LABEL_98:
  v2 = v61;
  v33 = MEMORY[0x1E695E480];
LABEL_101:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (epoch)
  {
    CFRelease(epoch);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (value_low)
  {
LABEL_148:
    v56 = v62;
    v55 = theString;
    goto LABEL_122;
  }

  if (!v65 || CFStringGetLength(v65) <= 0)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_15(&v74);
LABEL_147:
    value_low = LODWORD(v74.value);
    goto LABEL_148;
  }

  v53 = CFStringCreateMutable(*v33, 0);
  if (!v53)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_14(&v74);
    goto LABEL_147;
  }

  v54 = v53;
  if (Value)
  {
    CFStringAppendFormat(v53, 0, @"%@\n", Value);
  }

  v55 = theString;
  v56 = v62;
  CFStringAppendFormat(v54, 0, @"%@%@\n%@\n", v62, theString, v65);
  value_low = 0;
  *v2 = v54;
LABEL_122:
  if (v65)
  {
    CFRelease(v65);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v56)
  {
    CFRelease(v56);
  }

LABEL_128:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return value_low;
}

uint64_t figVTTCue_setChildNodeArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = a2;
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

void figVTTCue_concatenateSpanText(uint64_t a1, __CFString *a2)
{
  appendedString = 0;
  v3 = FigVTTNodeCopyValue(a1, &appendedString);
  v4 = appendedString;
  if (!v3 && appendedString)
  {
    CFStringAppend(a2, appendedString);
    v4 = appendedString;
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v5 = FigGeometryDimensionMakeFromDictionary();
  if ((v6 & 0x1D00000000) == 0x100000000)
  {
    v7 = v5;
    v8 = v6;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v10 = Mutable;
      FigVTTStringifyFigGeometryDimensionAndAppend(Mutable, v7, v8);
      CFDictionarySetValue(a3, a2, v10);
      CFRelease(v10);
      return 0;
    }

    else
    {
      figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension_cold_1(&v12);
    return v12;
  }
}

void figVTTCue_emitOpenTag(const __CFDictionary *a1, __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, @"openTag");
  if (Value)
  {

    CFStringAppend(a2, Value);
  }
}

void initCSSAttributeToMarkupMapping()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-weight", figVTTCue_MapAttributeToMarkup_fontWeight);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-style", figVTTCue_MapAttributeToMarkup_fontStyle);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ text-decoration", figVTTCue_MapAttributeToMarkup_textDecoration);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ color", figVTTCue_MapAttributeToMarkup_color);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ background-color", figVTTCue_MapAttributeToMarkup_backgroundColor);
  sCSSAttributeToMarkupMapping = Mutable;
}

uint64_t figVTTCue_MapAttributeToMarkup_fontWeight(const void *a1, __CFDictionary *a2)
{
  if (CFEqual(a1, @"bold"))
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%@>", @"b");
    v6 = CFStringCreateWithFormat(v4, 0, @"</%@>", @"b");
    v7 = v6;
    if (v5)
    {
      CFDictionarySetValue(a2, @"openTag", v5);
      if (!v7)
      {
        v8 = v5;
        goto LABEL_10;
      }

      CFDictionarySetValue(a2, @"closeTag", v7);
      CFRelease(v5);
LABEL_8:
      v8 = v7;
LABEL_10:
      CFRelease(v8);
      return 0;
    }

    if (v6)
    {
      CFDictionarySetValue(a2, @"closeTag", v6);
      goto LABEL_8;
    }
  }

  else
  {
    CFEqual(a1, @"normal");
  }

  return 0;
}

uint64_t figVTTCue_MapAttributeToMarkup_fontStyle(const void *a1, __CFDictionary *a2)
{
  if (CFEqual(a1, @"italic"))
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%@>", @"i");
    v6 = CFStringCreateWithFormat(v4, 0, @"</%@>", @"i");
    v7 = v6;
    if (v5)
    {
      CFDictionarySetValue(a2, @"openTag", v5);
      if (!v7)
      {
        v8 = v5;
        goto LABEL_12;
      }

      CFDictionarySetValue(a2, @"closeTag", v7);
      CFRelease(v5);
LABEL_10:
      v8 = v7;
LABEL_12:
      CFRelease(v8);
      return 0;
    }

    if (v6)
    {
      CFDictionarySetValue(a2, @"closeTag", v6);
      goto LABEL_10;
    }
  }

  else if (!CFEqual(a1, @"normal") && CFEqual(a1, @"oblique"))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
  }

  return 0;
}

uint64_t figVTTCue_MapAttributeToMarkup_textDecoration(const __CFString *a1, __CFDictionary *a2)
{
  location = CFStringFind(a1, @"none", 1uLL).location;
  v5 = CFStringFind(a1, @"underline", 1uLL).location;
  if (location == -1 && v5 != -1)
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%@>", @"u");
    v9 = CFStringCreateWithFormat(v7, 0, @"</%@>", @"u");
    v10 = v9;
    if (v8)
    {
      CFDictionarySetValue(a2, @"openTag", v8);
      if (v10)
      {
        CFDictionarySetValue(a2, @"closeTag", v10);
        CFRelease(v8);
      }

      else
      {
        v10 = v8;
      }

      goto LABEL_11;
    }

    if (v9)
    {
      CFDictionarySetValue(a2, @"closeTag", v9);
LABEL_11:
      CFRelease(v10);
    }
  }

  return 0;
}

uint64_t figVTTCue_MapAttributeToMarkup_color(uint64_t a1, __CFDictionary *a2)
{
  if (a1)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%@.%@>", @"c", a1);
    v5 = CFStringCreateWithFormat(v3, 0, @"</%@>", @"c");
    v6 = v5;
    if (v4)
    {
      CFDictionarySetValue(a2, @"openTag", v4);
      if (v6)
      {
        CFDictionarySetValue(a2, @"closeTag", v6);
        CFRelease(v4);
      }

      else
      {
        v6 = v4;
      }

      goto LABEL_8;
    }

    if (v5)
    {
      CFDictionarySetValue(a2, @"closeTag", v5);
LABEL_8:
      CFRelease(v6);
    }
  }

  return 0;
}

uint64_t figVTTCue_MapAttributeToMarkup_backgroundColor(uint64_t a1, __CFDictionary *a2)
{
  if (a1)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%@.bg_%@>", @"c", a1);
    v5 = CFStringCreateWithFormat(v3, 0, @"</%@>", @"c");
    v6 = v5;
    if (v4)
    {
      CFDictionarySetValue(a2, @"openTag", v4);
      if (v6)
      {
        CFDictionarySetValue(a2, @"closeTag", v6);
        CFRelease(v4);
      }

      else
      {
        v6 = v4;
      }

      goto LABEL_8;
    }

    if (v5)
    {
      CFDictionarySetValue(a2, @"closeTag", v5);
LABEL_8:
      CFRelease(v6);
    }
  }

  return 0;
}

void initAttributesToProcessArray()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"https://www.w3.org/Style/CSS/ font-weight");
  CFArrayAppendValue(Mutable, @"https://www.w3.org/Style/CSS/ font-style");
  CFArrayAppendValue(Mutable, @"https://www.w3.org/Style/CSS/ text-decoration");
  CFArrayAppendValue(Mutable, @"https://www.w3.org/Style/CSS/ color");
  CFArrayAppendValue(Mutable, @"https://www.w3.org/Style/CSS/ background-color");
  sCSSAttributesToProcessArray = Mutable;
}

uint64_t FigJSONParserStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigJSONParserStartServer_block_invoke;
  block[3] = &unk_1E7481298;
  block[4] = &v3;
  if (FigJSONParserStartServer_sFigJSONParserServerSetupOnce != -1)
  {
    dispatch_once(&FigJSONParserStartServer_sFigJSONParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigJSONParserStartServer_block_invoke(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetInt32();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart();
    CFRelease(v4);
  }

  else
  {
    __FigJSONParserStartServer_block_invoke_cold_1(a1 + 32);
  }
}

void __fjp_ensureClientEstablished_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    FigCFDictionarySetValue();
    _MergedGlobals_31 = FigXPCRemoteClientCreate();
    CFRelease(v1);
  }

  else
  {
    __fjp_ensureClientEstablished_block_invoke_cold_1();
  }
}

void FigAssetDownloaderStartServer(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 1, assetDownloaderServer_handleRemoteMessage, 0);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    FigXPCServerStart();
  }
}

void FigCFRelease_2(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t assetDownloaderServer_init(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t assetDownloaderServer_registerServerClassOnce(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

void __assetDownloadServer_handleLoadMetataMessage_block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (!v1[56])
  {
    if (__assetDownloadServer_handleLoadMetataMessage_block_invoke_cold_1(v1, v2, &v3))
    {
      return;
    }

    v1 = v3;
  }

  CFRelease(v1);
}

void OUTLINED_FUNCTION_4_29(void *a1@<X8>)
{
  v3 = *(v1 + 32);

  xpc_connection_send_message(v3, a1);
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate(const void *a1, __CFString *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, uint64_t a8, dispatch_object_t object, void *a10, CFTypeRef *a11)
{
  cf[16] = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || (v16 = CFGetTypeID(a2), v16 != FigAssetGetTypeID()))
  {
    FigStreamingAssetDownloadOrchestratorCreate_cold_11(cf);
LABEL_127:
    v64 = LODWORD(cf[0]);
LABEL_128:
    if (!v64)
    {
      return v64;
    }

    goto LABEL_129;
  }

  if (a6)
  {
    v17 = CFGetTypeID(a6);
    if (v17 != CFDictionaryGetTypeID())
    {
      FigStreamingAssetDownloadOrchestratorCreate_cold_1(cf);
      goto LABEL_127;
    }
  }

  if (!a11)
  {
    FigStreamingAssetDownloadOrchestratorCreate_cold_10(cf);
    goto LABEL_127;
  }

  cf[0] = 0;
  FigAssetGetCMBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v21 = v20 && !v20(v19, @"assetProperty_AssetType", a1, cf) && !FigCFEqual();
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v21)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, v69, v70);
    v64 = v66;
    goto LABEL_128;
  }

  if (a3)
  {
    cf[0] = 0;
    FigAssetGetCMBaseObject();
    v23 = v22;
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v24 || v24(v23, @"assetProperty_CreationOptionsDictionary", a1, cf))
    {
      v27 = 1;
    }

    else
    {
      if (cf[0] && (URLValue = FigCFDictionaryGetURLValue()) != 0 && !CFEqual(a3, URLValue))
      {
        v67 = 1727;
      }

      else
      {
        v26 = CFURLGetTypeID();
        if (v26 == CFGetTypeID(a3))
        {
          v27 = 0;
          goto LABEL_22;
        }

        v67 = 1732;
      }

      FigStreamingAssetDownloadOrchestratorCreate_cold_2(v67, &v76);
      v27 = v76;
    }

LABEL_22:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v27)
    {
      return 0;
    }
  }

  FigAssetDownloaderGetClassID();
  v28 = CMDerivedObjectCreate();
  if (v28)
  {
    goto LABEL_115;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v30 = CFRetain(a1);
  }

  else
  {
    v30 = 0;
  }

  *(DerivedStorage + 8) = v30;
  *(DerivedStorage + 16) = CFRetain(a2);
  if (a4)
  {
    *(DerivedStorage + 40) = CFRetain(a4);
    if (!a5)
    {
      a5 = a4;
    }

    goto LABEL_34;
  }

  *(DerivedStorage + 40) = 0;
  if (a5)
  {
LABEL_34:
    v31 = CFRetain(a5);
    goto LABEL_35;
  }

  v31 = 0;
LABEL_35:
  *(DerivedStorage + 48) = v31;
  if (a7)
  {
    v32 = CFRetain(a7);
    *(DerivedStorage + 56) = v32;
    v33 = (DerivedStorage + 56);
    if (v32)
    {
      FigStreamingAssetDownloadConfigCopyAssetNameAndImage(v32, (DerivedStorage + 80), (DerivedStorage + 88));
      DownloadsInterstitialAssets = FigStreamingAssetDownloadConfigGetDownloadsInterstitialAssets(*(DerivedStorage + 56));
      goto LABEL_41;
    }
  }

  else
  {
    *(DerivedStorage + 56) = 0;
    v33 = (DerivedStorage + 56);
  }

  if (!a6)
  {
    goto LABEL_42;
  }

  DownloadsInterstitialAssets = FigCFDictionaryGetBooleanIfPresent();
LABEL_41:
  *(DerivedStorage + 442) = DownloadsInterstitialAssets;
LABEL_42:
  v28 = FigRetainProxyCreate();
  if (v28)
  {
    goto LABEL_115;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 448) = Mutable;
  if (!Mutable)
  {
    FigStreamingAssetDownloadOrchestratorCreate_cold_9(cf);
    goto LABEL_127;
  }

  v36 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 456) = v36;
  if (!v36)
  {
    FigStreamingAssetDownloadOrchestratorCreate_cold_8(cf);
    goto LABEL_127;
  }

  if (a3)
  {
    v28 = FigCFURLCreateWithSuffixedExtension();
    if (v28)
    {
      goto LABEL_115;
    }

    *(DerivedStorage + 24) = 0;
  }

  if (a8)
  {
    if (object)
    {
      if (a10)
      {
        dispatch_retain(object);
        *(DerivedStorage + 296) = object;
        __copy_assignment_8_8_t0w8_pa0_62591_8_pa0_48202_16_pa0_13082_24_pa0_11046_32_pa0_49729_40_pa0_62126_48_pa0_6100_56_pa0_11999_64_pa0_10804_72_pa0_24756_80_pa0_9655_88((DerivedStorage + 200), a10);
        v37 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        *(DerivedStorage + 192) = v37;
        if (!v37)
        {
          FigStreamingAssetDownloadOrchestratorCreate_cold_7(cf);
          goto LABEL_127;
        }
      }
    }
  }

  v75 = a2;
  *(DerivedStorage + 160) = 257;
  *(DerivedStorage + 162) = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  *(DerivedStorage + 64) = CFDictionaryCreateCopy(AllocatorForMedia, a6);
  if (a6)
  {
    cf[0] = 0;
    if (CFDictionaryGetValueIfPresent(a6, @"AssetDownloaderCreateOption_ProgressMonitor", cf))
    {
      v39 = cf[0];
      if (cf[0])
      {
        v39 = CFRetain(cf[0]);
      }

      *(DerivedStorage + 384) = v39;
    }

    Value = CFDictionaryGetValue(a6, @"AssetDownloaderCreateOption_ClientBundleIdentifier");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 72) = Value;
    if (!*(DerivedStorage + 80))
    {
      v41 = CFDictionaryGetValue(a6, @"AssetDownloaderCreateOption_AssetName");
      if (v41)
      {
        v41 = CFRetain(v41);
      }

      *(DerivedStorage + 80) = v41;
    }

    if (!*(DerivedStorage + 88))
    {
      v42 = CFDictionaryGetValue(a6, @"AssetDownloaderCreateOption_AssetImage");
      if (v42)
      {
        v42 = CFRetain(v42);
      }

      *(DerivedStorage + 88) = v42;
    }

    v43 = CFDictionaryGetValue(a6, @"AssetDownloaderCreateOption_DebugIdentifier");
    if (v43)
    {
      v43 = CFRetain(v43);
    }

    v44 = &stru_1F0B1AFB8;
    if (v43)
    {
      v44 = v43;
    }

    *(DerivedStorage + 32) = v44;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(DerivedStorage + 120) = 1;
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(DerivedStorage + 121) = 1;
    }

    if (FigCFDictionaryGetCGSizeIfPresent())
    {
      *(DerivedStorage + 96) = 1;
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(DerivedStorage + 144) = 1;
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      *(DerivedStorage + 161) = *(DerivedStorage + 163);
    }
  }

  v45 = *MEMORY[0x1E695E480];
  v28 = FigNetworkHistoryCreate();
  if (!v28)
  {
    v72 = v45;
    if (FigIsItOKToLogURLs())
    {
      v46 = v75;
      v47 = FPSupport_GetAssetDoNotLogURLs(v75) == 0;
    }

    else
    {
      v47 = 0;
      v46 = v75;
    }

    *(DerivedStorage + 584) = v47;
    *(DerivedStorage + 564) = 0;
    v48 = dispatch_queue_create("com.apple.coremedia.streamingssetdownloadorchestrator.state", 0);
    *DerivedStorage = v48;
    if (v48)
    {
      *(DerivedStorage + 352) = 0;
      *(DerivedStorage + 360) = DerivedStorage + 352;
      *(DerivedStorage + 536) = 0;
      *(DerivedStorage + 544) = DerivedStorage + 536;
      v49 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 496) = v49;
      if (v49)
      {
        *(DerivedStorage + 504) = 1;
        *(DerivedStorage + 512) = 6;
        v50 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        *(DerivedStorage + 368) = v50;
        if (v50)
        {
          FigGetAllocatorForMedia();
          v28 = FigMetricEventTimelineCreate();
          if (!v28)
          {
            v51 = FigGetAllocatorForMedia();
            v28 = FigMetricEventDownloadSummarySubscriberCreate(v51, *(DerivedStorage + 608), (DerivedStorage + 616));
            if (!v28)
            {
              v52 = CMBaseObjectGetDerivedStorage();
              if (!FigReportingAgentCreateFromAsset(v46))
              {
                FigStreamingAssetDownloadOrchestratorCreate_cold_3(v52, (v52 + 632), a6);
              }

              if (dword_1EAF16DB8)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if ((*(DerivedStorage + 176) || *(DerivedStorage + 177)) && dword_1EAF16DB8)
              {
                v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v55 = *v33;
              v56 = FigCFCopyCompactDescription();
              if (v55)
              {
                v57 = v75;
                if (dword_1EAF16DB8)
                {
                  v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                dworch_logDownloadConfig(0, @"input config: ", *v33);
              }

              else
              {
                v57 = v75;
                if (dword_1EAF16DB8)
                {
                  v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                v59 = CMBaseObjectGetDerivedStorage();
                dworch_logMediaSelectionArray(0, @"primary", *(v59 + 40));
                v60 = *(v59 + 48);
                if (*(v59 + 40) == v60)
                {
                  if (dword_1EAF16DB8)
                  {
                    v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }

                else
                {
                  dworch_logMediaSelectionArray(0, @"aux", v60);
                }
              }

              if (!*(DerivedStorage + 384) && (v63 = FigStreamingAssetDownloadProgressMonitorCreate(v72, v57, a6, 0, *DerivedStorage, &FigStreamingAssetDownloadOrchestratorCreate_progressMonitorCallbacks, (DerivedStorage + 384)), v63))
              {
                v64 = v63;
              }

              else
              {
                v64 = 0;
                *a11 = 0;
              }

              goto LABEL_112;
            }
          }

          goto LABEL_115;
        }

        FigStreamingAssetDownloadOrchestratorCreate_cold_4(cf);
      }

      else
      {
        FigStreamingAssetDownloadOrchestratorCreate_cold_5(cf);
      }
    }

    else
    {
      FigStreamingAssetDownloadOrchestratorCreate_cold_6(cf);
    }

    goto LABEL_127;
  }

LABEL_115:
  v64 = v28;
LABEL_129:
  v56 = 0;
LABEL_112:
  if (v56)
  {
    CFRelease(v56);
  }

  return v64;
}

double dworch_progressUpdateCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    return dworch_progressUpdateCallback_cold_1(IsInvalidated, v8, v9, v10, v11, v12, v13, v14, v16, v17, SHIDWORD(v17), v18);
  }

  dworch_sendProgressUpdateCallback(a1, a3, a4);
  return result;
}

void *__copy_assignment_8_8_t0w8_pa0_62591_8_pa0_48202_16_pa0_13082_24_pa0_11046_32_pa0_49729_40_pa0_62126_48_pa0_6100_56_pa0_11999_64_pa0_10804_72_pa0_24756_80_pa0_9655_88(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  result[11] = a2[11];
  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorTestAlternateChoice(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return dworch_selectAlternates_chooseAlternatesFromCreationOptions(0, v4, a1, v8, a3, a4);
}

uint64_t dworch_selectAlternates_chooseAlternatesFromCreationOptions(uint64_t a1, const __CFAllocator *a2, const void *a3, unsigned __int8 *a4, void *a5, void *a6)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v64 = 0;
  v65 = 0;
  CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    dworch_selectAlternates_chooseAlternatesFromCreationOptions_cold_1(cf);
    v33 = LODWORD(cf[0]);
    goto LABEL_141;
  }

  v12 = Mutable;
  v62 = a5;
  v13 = dworch_selectAlternates_installDeviceCapabilityFilters(a2, a3);
  if (v13)
  {
    goto LABEL_144;
  }

  v61 = a6;
  v63 = v12;
  v14 = *a4;
  v15 = *(a4 + 1);
  v16 = *(a4 + 2);
  v17 = a4[24];
  v18 = a4[25];
  v20 = *(a4 + 4);
  v19 = *(a4 + 5);
  v21 = a4[48];
  v22 = *(a4 + 7);
  v23 = a4[64];
  v24 = a4[66];
  v25 = a4[68];
  v26 = *(a4 + 9);
  cf[0] = 0;
  if (v25)
  {
    v27 = 1;
  }

  else
  {
    v27 = 4;
  }

  if (v23)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  v58 = v19;
  v59 = v20;
  v60 = v18;
  if (v25)
  {
    v29 = 2;
  }

  else if (v23)
  {
    if (v18)
    {
      v29 = 7;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 4 * (v18 != 0);
  }

  FigAlternatePreferredVideoFormatFilterCreate(a2, v28, v29, cf);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  v30 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v30 = FigAlternateSuppressAudioOnlyFilterCreate(a2, cf);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  v30 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v30 = v24 ? FigAlternateLosslessAudioPreferenceFilterCreate(a2, 0, cf) : FigAlternateLossyAudioPreferenceFilterCreate(a2, cf);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  v30 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v21)
  {
    v30 = FigAlternateMaximumSampleRatePreferenceFilter(a2, v26, cf, v22);
    v31 = cf[0];
    if (v30)
    {
      goto LABEL_51;
    }

    v30 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
    v31 = cf[0];
    if (v30)
    {
      goto LABEL_51;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  v30 = FigAlternateMinimumRequiredPresentationSizeFilterCreate(a2, cf, v15, v16);
  v31 = cf[0];
  if (v30 || (v30 = FigAlternateSelectionBossAddFilter(a3, cf[0]), v31 = cf[0], v30))
  {
LABEL_51:
    v33 = v30;
    v12 = v63;
    goto LABEL_52;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

LABEL_39:
  v12 = v63;
  if (v17)
  {
    v32 = FigAlternateMinimumRequiredBitrateFilterCreate(a2, v59, cf);
    v31 = cf[0];
    if (v32 || (v32 = FigAlternateSelectionBossAddFilter(a3, cf[0]), v31 = cf[0], v32))
    {
LABEL_96:
      v33 = v32;
      goto LABEL_52;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }
  }

  if (!v60)
  {
    goto LABEL_55;
  }

  v32 = FigAlternateMinimumRequiredBitrateForHEVCFilterCreate(a2, v58, cf);
  v31 = cf[0];
  if (v32)
  {
    goto LABEL_96;
  }

  v33 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v31 = cf[0];
  if (v33 || !cf[0])
  {
LABEL_52:
    if (!v31)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v33 = 0;
LABEL_53:
  CFRelease(v31);
LABEL_54:
  if (v33)
  {
    goto LABEL_139;
  }

LABEL_55:
  v34 = a4[25];
  v35 = a4[64];
  v36 = a4[68];
  cf[0] = 0;
  v37 = FigAlternateContinuousFramesOnlyFilterCreate(a2, cf);
  if (v37)
  {
    goto LABEL_88;
  }

  v37 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  if (v37)
  {
    goto LABEL_88;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v38 = v36 ? 1 : 4;
  v39 = v35 ? v38 : 1;
  if (v36)
  {
    v40 = 2;
  }

  else if (v35)
  {
    v40 = v34 ? 7 : 0;
  }

  else
  {
    v40 = 4 * (v34 != 0);
  }

  FigAlternatePreferredVideoFormatFilterCreate(a2, v39, v40, cf);
  if (v37)
  {
    goto LABEL_88;
  }

  v37 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  if (v37)
  {
    goto LABEL_88;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v37 = FigAlternateHighestRankingScoreFilterCreate(*MEMORY[0x1E695E480], cf);
  if (v37)
  {
    goto LABEL_88;
  }

  v37 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  if (v37)
  {
    goto LABEL_88;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v37 = FigAlternatePlaybackScoreAndBitRateFilterCreate(a2, cf);
  if (v37)
  {
    goto LABEL_88;
  }

  v37 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  if (v37)
  {
    goto LABEL_88;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v37 = FigAlternateFinalSelectionHighestPeakBitRateFilterCreate(a2, cf);
  if (v37)
  {
LABEL_88:
    v33 = v37;
    v41 = cf[0];
    goto LABEL_89;
  }

  v33 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v41 = cf[0];
  if (v33 || !cf[0])
  {
LABEL_89:
    if (!v41)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v33 = 0;
LABEL_90:
  CFRelease(v41);
LABEL_91:
  if (v33)
  {
    goto LABEL_139;
  }

  v42 = *(a4 + 9);
  cf[0] = 0;
  v43 = FigAlternateDefaultAudioLayoutPreferenceFilterCreate(a2, v42, cf);
  v44 = cf[0];
  if (v43)
  {
    v33 = v43;
    goto LABEL_99;
  }

  v33 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v44 = cf[0];
  if (v33 || !cf[0])
  {
LABEL_99:
    if (!v44)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v33 = 0;
LABEL_100:
  CFRelease(v44);
LABEL_101:
  if (v33)
  {
    goto LABEL_139;
  }

  v13 = dworch_selectAlternates_chooseAppropriateAlternate(a3, &v65);
  if (v13)
  {
    goto LABEL_144;
  }

  v13 = FigAlternateSelectionBossRemoveFilter(a3, @"DefaultAudioLayoutPreference");
  if (v13)
  {
    goto LABEL_144;
  }

  v45 = v65;
  if (!v65)
  {
    CFRelease(v12);
    v33 = 0;
    goto LABEL_141;
  }

  if (!a4[67] && !a4[65] || FigAlternateGetAudioChannelCount(v65, *(a4 + 9), 0) > 2)
  {
    goto LABEL_126;
  }

  PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v45);
  v47 = *(a4 + 9);
  cf[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v49 = FigAlternatePreferredAudioFormatFilterCreate(a2, 7u, 0, 0, 0, v47, 0, cf);
  if (v49)
  {
    goto LABEL_119;
  }

  v49 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  if (v49)
  {
    goto LABEL_119;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v50 = DerivedStorage ? *(DerivedStorage + 584) : 1;
  v49 = FigAlternateAllowListWithURLFilterCreate(a2, PlaylistAlternateURL, 700, v50, cf);
  if (v49)
  {
LABEL_119:
    v33 = v49;
    v51 = cf[0];
  }

  else
  {
    v33 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
    v51 = cf[0];
    if (!v33 && cf[0])
    {
      v33 = 0;
LABEL_121:
      CFRelease(v51);
      goto LABEL_122;
    }
  }

  if (v51)
  {
    goto LABEL_121;
  }

LABEL_122:
  if (v33)
  {
    goto LABEL_139;
  }

  v13 = dworch_selectAlternates_chooseAppropriateAlternate(a3, &v64);
  if (!v13)
  {
    v13 = FigAlternateSelectionBossRemoveFilter(a3, @"PreferredAudioFormat");
    if (!v13)
    {
      v13 = FigAlternateSelectionBossRemoveFilter(a3, @"AllowListURLFilter");
      if (!v13)
      {
LABEL_126:
        v53 = v64;
        v52 = v65;
        if (a4[67] && v64)
        {
          v54 = v62;
          if (v65)
          {
            CFRelease(v65);
            v52 = 0;
            v65 = 0;
          }
        }

        else
        {
          v54 = v62;
          if (FigCFEqual() && v53)
          {
            CFRelease(v53);
            v53 = 0;
            v64 = 0;
          }
        }

        if (dword_1EAF16DB8)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v54)
        {
          *v54 = v52;
          v65 = 0;
        }

        v33 = 0;
        if (v61)
        {
          *v61 = v53;
          v64 = 0;
        }

        goto LABEL_139;
      }
    }
  }

LABEL_144:
  v33 = v13;
LABEL_139:
  v56 = v65;
  CFRelease(v12);
  if (v56)
  {
    CFRelease(v56);
  }

LABEL_141:
  if (v64)
  {
    CFRelease(v64);
  }

  return v33;
}

void dworch_sendProgressUpdateCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_sendProgressUpdateCallbackOnCallbackQueue_cold_1(IsInvalidated, v4, v5, v6, v7, v8, v9, v10, v13, v14, SHIDWORD(v14), vars0);
  }

  else
  {
    v11 = *(DerivedStorage + 256);
    if (v11)
    {
      v11(a1[1], *a1, a1[7], a1[8]);
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

uint64_t dworch_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, dworch_invalidateDispatch);
  return v5;
}

void dworch_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dworch_invalidateGuts(a1);
  dworch_relinquishAccessToDestinationURL(a1);
  FigSymptomsReportStreamingAssetDownloadEnd((DerivedStorage + 656));
  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 32) = 0;
  }

  v4 = *(DerivedStorage + 592);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 592) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef dworch_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v5 = DerivedStorage[3];
  v4 = DerivedStorage[4];
  v6 = DerivedStorage[2];
  v7 = CMBaseObjectGetDerivedStorage();
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || !*(v7 + 584))
  {
    v5 = @"[]";
  }

  return CFStringCreateWithFormat(v3, 0, @"[FigStreamingAssetDownloadOrchestrator %p debugIdentifier:%@ asset %p asset %@ destinationURL %@]", a1, v4, v6, v6, v5);
}

uint64_t dworch_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = 0;
  context[0] = a1;
  context[1] = a2;
  v13 = a3;
  dispatch_sync_f(*DerivedStorage, context, dworch_copyPropertyDispatch);
  result = v12;
  if (!v12)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t dworch_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v10 = 0;
  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  dispatch_sync_f(*DerivedStorage, context, dworch_setPropertyDispatch);
  return v9;
}

uint64_t dworch_invalidateDispatch(uint64_t a1)
{
  result = dworch_invalidateGuts(*a1);
  *(a1 + 8) = 0;
  return result;
}

uint64_t dworch_removeAssetListeners(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

void dworch_freeDownloadMediaProgressItem(void *a1)
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

  free(a1);
}

void dworch_downloadMedia_downloadSucceededCallback(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_downloadMedia_downloadSucceededCallback_cold_1(&v48);
  }

  else if (FigCFArrayContainsValue())
  {
    if (a5)
    {
      if (dword_1EAF16DB8)
      {
        LODWORD(start.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      Value = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_SelectedMediaArray");
      v11 = CMBaseObjectGetDerivedStorage() + 536;
      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          return;
        }

        if (*(v11 + 16) == a4)
        {
          *(v11 + 48) = 1;
          v12 = *(v11 + 40);
          *(v11 + 40) = Value;
          if (Value)
          {
            CFRetain(Value);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          if (v11 == *(DerivedStorage + 536))
          {
            v13 = *(v11 + 24);
            if (v13)
            {
              CFRelease(v13);
              *(v11 + 24) = 0;
            }
          }

          v14 = CMBaseObjectGetDerivedStorage();
          v15 = *(v14 + 536);
          if (v15)
          {
            v16 = (v14 + 544);
            v45 = *MEMORY[0x1E6960CC0];
            v17 = *(MEMORY[0x1E6960CC0] + 16);
            while (1)
            {
              v18 = v15;
              v15 = *v15;
              v19 = CMBaseObjectGetDerivedStorage();
              memset(&v48, 0, sizeof(v48));
              CMTimeMakeFromDictionary(&duration.start, *(v19 + 376));
              *&start.value = v45;
              start.epoch = v17;
              CMTimeRangeMake(&v48, &start, &duration.start);
              v20 = *(v19 + 8);
              duration = v48;
              v21 = CMTimeRangeCopyAsDictionary(&duration, v20);
              if (v21)
              {
                dworch_downloadMedia_downloadSucceededCallback_cold_2(v18, a2, v21, &duration);
              }

              else
              {
                dworch_downloadMedia_downloadSucceededCallback_cold_3(&duration);
              }

              value_low = LODWORD(duration.start.value);
              if (LODWORD(duration.start.value))
              {
                break;
              }

              if (!*(v18 + 48))
              {
                goto LABEL_38;
              }

              v23 = *(v18 + 40);
              v24 = CMBaseObjectGetDerivedStorage();
              v25 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v25)
              {
                v26 = v25;
                v27 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E004049432B73uLL);
                if (v27)
                {
                  v28 = v27;
                  if (a2)
                  {
                    v29 = CFRetain(a2);
                  }

                  else
                  {
                    v29 = 0;
                  }

                  *v28 = v29;
                  v28[1] = v26;
                  if (v23)
                  {
                    v30 = CFRetain(v23);
                  }

                  else
                  {
                    v30 = 0;
                  }

                  v28[6] = v30;
                  dispatch_async_f(*(v24 + 296), v28, dworch_sendDidFinishDownloadForMediaSelectionCallbackOnCallbackQueue);
                }

                else if ((dworch_downloadMedia_downloadSucceededCallback_cold_4(v26, &v48) & 1) == 0)
                {
                  value_low = LODWORD(v48.start.value);
                  goto LABEL_50;
                }
              }

              v31 = *v18;
              v32 = *(v18 + 8);
              v33 = (*v18 + 8);
              if (!*v18)
              {
                v33 = v16;
              }

              *v33 = v32;
              *v32 = v31;
              dworch_freeDownloadMediaProgressItem(v18);
              if (!v15)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:
            v34 = CMBaseObjectGetDerivedStorage();
            v35 = CMBaseObjectGetDerivedStorage();
            v36 = *(v35 + 496);
            if (v36)
            {
              v37.length = CFArrayGetCount(*(v35 + 496));
            }

            else
            {
              v37.length = 0;
            }

            v37.location = 0;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v36, v37, a4);
            v39 = dworch_downloadMedia_removeMediaDownloaderListeners();
            if (v39)
            {
              value_low = v39;
            }

            else
            {
              FigAssetDownloaderGetCMBaseObject();
              if (v40)
              {
                v41 = v40;
                v42 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                if (v42)
                {
                  v42(v41);
                }
              }

              if (FirstIndexOfValue != -1)
              {
                CFArrayRemoveValueAtIndex(*(v34 + 496), FirstIndexOfValue);
              }

              if (!*(v34 + 328) && (*(v34 + 520) || (v44 = *(v34 + 496)) != 0 && CFArrayGetCount(v44)))
              {
                if (*(v34 + 556) != 1)
                {
                  return;
                }

                started = dworch_downloadMedia_startNextMediaSelectionDownload(a2);
              }

              else
              {
                *(v34 + 553) = 1;
                started = dworch_downloadMedia_checkIfStageComplete(a2);
              }

              value_low = started;
              if (!started)
              {
                return;
              }
            }
          }

          goto LABEL_50;
        }
      }
    }

    dworch_downloadMedia_downloadSucceededCallback_cold_5(&v48);
  }

  else
  {
    dworch_downloadMedia_downloadSucceededCallback_cold_6(&v48);
  }

  value_low = LODWORD(v48.start.value);
  if (LODWORD(v48.start.value))
  {
LABEL_50:
    dworch_transitionToTerminalStateWithOSStatus(a2, value_low);
  }
}

double dworch_downloadMedia_downloadFailedCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    return dworch_downloadMedia_downloadFailedCallback_cold_1(IsInvalidated, v9, v10, v11, v12, v13, v14, v15, v28, v29, SHIDWORD(v29), v30);
  }

  v16 = FigCFArrayContainsValue();
  if (!v16)
  {
    return dworch_downloadMedia_downloadFailedCallback_cold_3(v16, v17, v18, v19, v20, v21, v22, v23, v28, v29, SHIDWORD(v29), v30);
  }

  if (!a5)
  {
    return dworch_downloadMedia_downloadFailedCallback_cold_2(v16, v17, v18, v19, v20, v21, v22, v23, v28, v29, SHIDWORD(v29), v30);
  }

  Value = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_CFError");
  v25 = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_SelectedAlternate");
  if (v25)
  {
    v25 = CFRetain(v25);
  }

  *(DerivedStorage + 528) = v25;
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dworch_transitionToTerminalState(a2, Value);
  return result;
}

void dworch_downloadMedia_loadedTimeRangesChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(MEMORY[0x1E6960CA8] + 16);
  *&v39.start.value = *MEMORY[0x1E6960CA8];
  *&v39.start.epoch = v9;
  *&v39.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_downloadMedia_loadedTimeRangesChanged_cold_1(IsInvalidated, v11, v12, v13, v14, v15, v16, v17, v37.start.value, v37.start.timescale, v37.start.flags, v37.start.epoch);
  }

  else
  {
    v18 = FigCFArrayContainsValue();
    if (v18)
    {
      if (a5)
      {
        Value = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_NewlyLoadedTimeRanges");
        v27 = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_CurrentLoadedTimeRanges");
        v28 = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_SelectedMediaArray");
        CMTimeMakeFromDictionary(&v37.start, *(DerivedStorage + 376));
        start = **&MEMORY[0x1E6960CC0];
        CMTimeRangeMake(&v39, &start, &v37.start);
        v29 = *(DerivedStorage + 8);
        v37 = v39;
        v30 = CMTimeRangeCopyAsDictionary(&v37, v29);
        if (v30)
        {
          v31 = v30;
          v32 = (CMBaseObjectGetDerivedStorage() + 536);
          while (1)
          {
            v32 = *v32;
            if (!v32)
            {
              break;
            }

            if (v32[2] == a4)
            {
              v33 = v32[3];
              v32[3] = v27;
              if (v27)
              {
                CFRetain(v27);
              }

              if (v33)
              {
                CFRelease(v33);
              }

              v34 = v32[4];
              v32[4] = v31;
              CFRetain(v31);
              if (v34)
              {
                CFRelease(v34);
              }

              v35 = v32[5];
              v32[5] = v28;
              if (v28)
              {
                CFRetain(v28);
              }

              if (v35)
              {
                CFRelease(v35);
              }

              if (v32 == *(DerivedStorage + 536))
              {
                dworch_sendDidChangeLoadedTimeRangeCallback(a2, Value, v27, v31, v28);
              }

              v36 = *(DerivedStorage + 512);
              if (*(DerivedStorage + 504) != v36 && *(DerivedStorage + 556) == 1)
              {
                *(DerivedStorage + 504) = v36;
                dworch_downloadMedia_startNextMediaSelectionDownload(a2);
              }

              break;
            }
          }

          CFRelease(v31);
        }

        else
        {
          dworch_downloadMedia_loadedTimeRangesChanged_cold_2();
        }
      }

      else
      {
        dworch_downloadMedia_loadedTimeRangesChanged_cold_3(v18, v19, v20, v21, v22, v23, v24, v25, v37.start.value, v37.start.timescale, v37.start.flags, v37.start.epoch);
      }
    }

    else
    {
      dworch_downloadMedia_loadedTimeRangesChanged_cold_4(v18, v19, v20, v21, v22, v23, v24, v25, v37.start.value, v37.start.timescale, v37.start.flags, v37.start.epoch);
    }
  }
}

void dworch_transitionToTerminalStateWithOSStatus(const void *a1, uint64_t a2)
{
  cf = 0;
  FigCreateErrorForOSStatus(a2, &cf);
  dworch_transitionToTerminalState(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void dworch_sendDidChangeLoadedTimeRangeOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_sendDidChangeLoadedTimeRangeOnCallbackQueue_cold_1(IsInvalidated, v4, v5, v6, v7, v8, v9, v10, v17, v18, SHIDWORD(v18), vars0);
  }

  else
  {
    v11 = *(DerivedStorage + 224);
    if (v11)
    {
      v11(a1[1], *a1, a1[3], a1[4], a1[5], a1[6]);
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

  v13 = a1[3];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[4];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[5];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[6];
  if (v16)
  {
    CFRelease(v16);
  }

  free(a1);
}

void dworch_sendDidFinishDownloadForMediaSelectionCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_sendDidFinishDownloadForMediaSelectionCallbackOnCallbackQueue_cold_1(IsInvalidated, v4, v5, v6, v7, v8, v9, v10, v14, v15, SHIDWORD(v15), vars0);
  }

  else
  {
    v11 = *(DerivedStorage + 240);
    if (v11)
    {
      v11(a1[1], *a1, a1[6]);
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

  v13 = a1[6];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

uint64_t dworch_downloadMedia_checkIfStageComplete(const void *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 553))
  {
    return 0;
  }

  v3 = *(DerivedStorage + 456);
  if (!v3 || CFArrayGetCount(v3) < 1)
  {
    v6 = CMBaseObjectGetDerivedStorage();
    v42 = 0;
    FigAssetDownloaderGetCMBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(v8, @"AssetDownloaderProperty_DownloadedBytes", *MEMORY[0x1E695E480], &v42);
      if (!v10)
      {
        SInt64 = FigCFNumberGetSInt64();
        dworch_sendProgressUpdateCallback(a1, SInt64, SInt64);
        FigStreamingAssetProgressMarkDownloadComplete(*(v6 + 384));
        v12 = *(v6 + 56);
        if (v12)
        {
          FigStreamingAssetDownloadConfigGetTimeRange(v12, &v40);
          if (v41)
          {
            FigStreamingAssetDownloadConfigGetTimeRange(*(v6 + 56), v38);
            if (v39)
            {
              FigStreamingAssetDownloadConfigGetTimeRange(*(v6 + 56), v36);
              if (!v37)
              {
                FigStreamingAssetDownloadConfigGetTimeRange(*(v6 + 56), v34);
                if ((v35 & 0x8000000000000000) == 0)
                {
LABEL_49:
                  if (dword_1EAF16DB8)
                  {
                    LODWORD(cf) = 0;
                    LOBYTE(theArray) = 0;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v29 = cf;
                    v30 = theArray;
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, theArray))
                    {
                      v31 = v29;
                    }

                    else
                    {
                      v31 = v29 & 0xFFFFFFFE;
                    }

                    if (v31)
                    {
                      v32 = *(v6 + 32);
                      v47 = 136315650;
                      v48 = "dworch_downloadMedia_stageComplete";
                      v49 = 2048;
                      v50 = a1;
                      v51 = 2114;
                      v52 = v32;
                      LODWORD(v33) = 32;
                      _os_log_send_and_compose_impl(v31, 0, v57, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v30, "<dw-orch> %s: %p %{public}@: download is complete for all mediaselections/alternates.", &v47, v33);
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  dworch_transitionToTerminalState(a1, 0);
                  v21 = 0;
                  goto LABEL_57;
                }
              }
            }
          }
        }

        v13 = CMBaseObjectGetDerivedStorage();
        theArray = 0;
        cf = 0;
        v10 = dworch_ensurePersistentStreamingCache(a1);
        if (!v10)
        {
          v14 = *(v13 + 352);
          if (v14)
          {
            v15 = MEMORY[0x1E695E9C0];
            while (1)
            {
              v16 = CFArrayCreate(*(v13 + 8), v14 + 2, 1, v15);
              if (!v16)
              {
                dworch_downloadMedia_checkIfStageComplete_cold_1(v57);
                v20 = 0;
                v21 = v57[0];
                goto LABEL_40;
              }

              v17 = FigAlternateOfflinePlayableForMediaSelectionFilterCreate(*(v13 + 8), *(v13 + 480), v14[3], 1, &cf);
              if (v17)
              {
                goto LABEL_61;
              }

              v18 = cf;
              v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
              if (!v19)
              {
                v20 = 0;
                v21 = 4294954514;
                goto LABEL_40;
              }

              v17 = v19(v18, v16, &theArray);
              if (v17)
              {
LABEL_61:
                v21 = v17;
                v20 = 0;
                goto LABEL_40;
              }

              if (!theArray || CFArrayGetCount(theArray) != 1)
              {
                break;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              CFRelease(v16);
              if (theArray)
              {
                CFRelease(theArray);
                theArray = 0;
              }

              v14 = *v14;
              if (!v14)
              {
                goto LABEL_28;
              }
            }

            v20 = FigMediaSelectionArrayCopyDescription(*(v13 + 8), v14[3]);
            if (dword_1EAF16DB8)
            {
              v44 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v23 = v44;
              v24 = type;
              if (os_log_type_enabled(v22, type))
              {
                v25 = v23;
              }

              else
              {
                v25 = v23 & 0xFFFFFFFE;
              }

              if (v25)
              {
                v26 = *(v13 + 32);
                v27 = v14[2];
                v47 = 136316162;
                v48 = "dworch_downloadMedia_validateDownloadIsPlayableOffline";
                v49 = 2048;
                v50 = a1;
                v51 = 2114;
                v52 = v26;
                v53 = 2112;
                v54 = v27;
                v55 = 2112;
                v56 = v20;
                _os_log_send_and_compose_impl(v25, 0, v57, 128, &dword_1962D5000, v22, v24, "<dw-orch> %s: %p %{public}@: downloading media failed validation check for\n%@\n%@", &v47, 52);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v21 = 4294950639;
            }

            else
            {
              v21 = 4294950639;
            }
          }

          else
          {
LABEL_28:
            v20 = 0;
            v16 = 0;
            v21 = 0;
          }

LABEL_40:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v16)
          {
            CFRelease(v16);
          }

          if (theArray)
          {
            CFRelease(theArray);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          if (v21)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        }
      }

      v21 = v10;
    }

    else
    {
      v21 = 4294954514;
    }

LABEL_57:
    if (v42)
    {
      CFRelease(v42);
    }

    return v21;
  }

  ValueAtIndex = FigCFArrayGetValueAtIndex();

  return dworch_start(ValueAtIndex);
}

uint64_t dworch_downloadMedia_startNextMediaSelectionDownload(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 556) != 1)
  {
    dworch_downloadMedia_startNextMediaSelectionDownload_cold_1(v49);
    return v49[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = 0;
  v4 = 0;
  value = 0;
  v5 = *MEMORY[0x1E695E4D0];
  v47 = *MEMORY[0x1E695E4C0];
  while (1)
  {
    if (*(DerivedStorage + 520))
    {
      Count = *(DerivedStorage + 496);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count < *(DerivedStorage + 504))
      {
        goto LABEL_10;
      }
    }

    if (!*(DerivedStorage + 328))
    {
      goto LABEL_71;
    }

    v7 = *(DerivedStorage + 496);
    if (v7)
    {
      if (CFArrayGetCount(v7))
      {
LABEL_71:
        v11 = 0;
        v45 = 0;
        goto LABEL_66;
      }

LABEL_10:
      if (!*(DerivedStorage + 328))
      {
        v8 = *(DerivedStorage + 520);
        v4 = *(v8 + 16);
        v3 = *(v8 + 24);
      }
    }

    v9 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*(v9 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    if (!Mutable)
    {
      if (!dworch_downloadMedia_startNextMediaSelectionDownload_cold_2())
      {
        v11 = 0;
LABEL_64:
        v45 = v49[0];
        goto LABEL_66;
      }

      goto LABEL_31;
    }

    if (v4)
    {
      CFDictionarySetValue(Mutable, @"AssetDownloaderCreateOption_SelectedAlternate", v4);
    }

    CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_DisableCoordinatorInteraction", v5);
    CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_enableDownloadStorageManagementInteraction", v47);
    CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_ReleaseResourcesImmediatelyOnPause", v5);
    v12 = *(v9 + 304);
    if (v12)
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_PlaylistCache", v12);
    }

    if (*(v9 + 178))
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_DisallowsExpensiveNetworkAccess", v5);
    }

    if (*(v9 + 179))
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_DisallowsConstrainedNetworkAccess", v5);
    }

    v13 = *(v9 + 32);
    if (v13)
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_DebugIdentifier", v13);
    }

    v14 = *(v9 + 72);
    if (v14)
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_ClientBundleIdentifier", v14);
    }

    v15 = *(v9 + 184);
    if (v15)
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_NetworkHistory", v15);
    }

    v16 = *(v9 + 424);
    if (v16)
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_ContentSteeringMonitor", v16);
    }

    v17 = *(v9 + 56);
    if (v17)
    {
      FigStreamingAssetDownloadConfigGetTimeRange(v17, v49);
      v18 = FigCFDictionarySetCMTimeRange();
      if (v18)
      {
        break;
      }
    }

LABEL_31:
    matched = FigStreamingAssetDownloaderCreateWithAsset(*(DerivedStorage + 8), *(DerivedStorage + 16), *(DerivedStorage + 24), v11, &value);
    if (matched)
    {
      goto LABEL_72;
    }

    if (dword_1EAF16DB8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    matched = FigNotificationCenterAddWeakListener();
    if (matched)
    {
      goto LABEL_72;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    matched = FigNotificationCenterAddWeakListener();
    if (matched)
    {
      goto LABEL_72;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    matched = FigNotificationCenterAddWeakListener();
    if (matched)
    {
      goto LABEL_72;
    }

    v21 = *(DerivedStorage + 400);
    if (v21)
    {
      FigAssetDownloaderGetCMBaseObject();
      v23 = v22;
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v24)
      {
        goto LABEL_65;
      }

      matched = v24(v23, @"AssetDownloaderProperty_MediaSelectionArray", v21);
      if (matched)
      {
        goto LABEL_72;
      }
    }

    if (v3)
    {
      FigAssetDownloaderGetCMBaseObject();
      v26 = v25;
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v27)
      {
        goto LABEL_65;
      }

      matched = v27(v26, @"AssetDownloaderProperty_SelectedMediaArray", v3);
      if (matched)
      {
        goto LABEL_72;
      }
    }

    v28 = *(DerivedStorage + 384);
    FigAssetDownloaderGetCMBaseObject();
    v30 = v29;
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v31)
    {
      goto LABEL_65;
    }

    matched = v31(v30, @"AssetDownloaderProperty_ProgressMonitor", v28);
    if (matched)
    {
      goto LABEL_72;
    }

    v32 = *(DerivedStorage + 632);
    FigAssetDownloaderGetCMBaseObject();
    v34 = v33;
    v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v35)
    {
      goto LABEL_65;
    }

    matched = v35(v34, @"AssetDownloaderProperty_ReportingAgent", v32);
    if (matched)
    {
      goto LABEL_72;
    }

    v36 = *(DerivedStorage + 608);
    FigAssetDownloaderGetCMBaseObject();
    v38 = v37;
    v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v39)
    {
LABEL_65:
      v45 = 4294954514;
      goto LABEL_66;
    }

    matched = v39(v38, @"AssetDownloaderProperty_MetricEventTimeline", v36);
    if (matched)
    {
      goto LABEL_72;
    }

    v40 = value;
    v41 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E00404C80A7E4uLL);
    if (v41)
    {
      v42 = v40 ? CFRetain(v40) : 0;
      v41[2] = v42;
    }

    else if (!dworch_downloadMedia_startNextMediaSelectionDownload_cold_3())
    {
      goto LABEL_64;
    }

    *v41 = 0;
    v43 = *(DerivedStorage + 544);
    v41[1] = v43;
    *v43 = v41;
    *(DerivedStorage + 544) = v41;
    CFArrayAppendValue(*(DerivedStorage + 496), value);
    v44 = *(DerivedStorage + 520);
    if (v44)
    {
      *(DerivedStorage + 520) = *v44;
    }

    matched = dworch_downloadMedia_matchMediaDownloaderToOrchestratorStatus(a1, value);
    if (matched)
    {
LABEL_72:
      v45 = matched;
      goto LABEL_66;
    }

    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  v45 = v18;
  CFRelease(v11);
  v11 = 0;
LABEL_66:
  if (value)
  {
    CFRelease(value);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v45;
}

uint64_t dworch_start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
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
    dispatch_async_f(*DerivedStorage, v4, dworch_startDispatch);
    return 0;
  }

  else
  {
    dworch_start_cold_1(&v7);
    return v7;
  }
}

uint64_t dworch_selectAlternates_pauseForInteractivePlayback(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dworch_releaseDiskResources(a1);
  return 0;
}

uint64_t dworch_downloadMetadata_start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    v3 = DerivedStorage;
    if (*(CMBaseObjectGetDerivedStorage() + 576))
    {
      dworch_downloadMetadata_gotAccessToDestinationURLCallback(a1, 1, *(v3 + 576));
      return 0;
    }

    else
    {
      v5 = *(v3 + 24);
      v6 = *v3;

      return FigAssetDownloadCoordinatorScheduleAccessToURL(a1, v5, v6, 1, dworch_downloadMetadata_gotAccessToDestinationURLCallback);
    }
  }

  else
  {

    return dworch_downloadMetadata_proceedAfterCheckingDestinationURL(a1);
  }
}

uint64_t dworch_persistMetadata_start(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 576))
  {
    return FigAssetDownloadCoordinatorScheduleAccessToURL(a1, *(DerivedStorage + 24), *DerivedStorage, 0, dworch_persistMetadata_gotAccessToDestinationURLCallback);
  }

  dworch_persistMetadata_gotAccessToDestinationURLCallback(a1, 1, *(DerivedStorage + 576));
  return 0;
}

uint64_t dworch_downloadMedia_start(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 568) || (v3 = DerivedStorage, v4 = *MEMORY[0x1E695E480], Current = CFAbsoluteTimeGetCurrent(), v6 = CFDateCreate(v4, Current), (*(v3 + 568) = v6) != 0) || dworch_downloadMedia_start_cold_1())
  {
    dworch_downloadMedia_start_cold_2();
  }

  return v8;
}

uint64_t dworch_downloadMedia_pauseForInteractivePlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 496);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 496), i);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v5)
    {
      return 4294954514;
    }

    result = v5(ValueAtIndex);
    if (result)
    {
      return result;
    }
  }

  for (j = 0; ; ++j)
  {
    v8 = *(DerivedStorage + 456);
    if (v8)
    {
      v8 = CFArrayGetCount(v8);
    }

    if (j >= v8)
    {
      break;
    }

    v9 = FigCFArrayGetValueAtIndex();
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v10)
    {
      return 4294954514;
    }

    result = v10(v9);
    if (result)
    {
      return result;
    }
  }

  dworch_downloadMedia_pauseForInteractivePlayback_cold_1();
  return 0;
}

uint64_t dworch_downloadMedia_resumeFromInteractivePlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  for (i = 0; ; ++i)
  {
    Count = *(v3 + 496);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 496), i);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v7)
    {
      return 4294954514;
    }

    result = v7(ValueAtIndex);
    if (result)
    {
      return result;
    }
  }

  for (j = 0; ; ++j)
  {
    v10 = *(v3 + 456);
    if (v10)
    {
      v10 = CFArrayGetCount(v10);
    }

    if (j >= v10)
    {
      break;
    }

    v11 = FigCFArrayGetValueAtIndex();
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v12)
    {
      return 4294954514;
    }

    result = v12(v11);
    if (result)
    {
      return result;
    }
  }

  FigSymptomsReportStreamingAssetDownloadResume((DerivedStorage + 656));
  dworch_issueReportingEvent(a1, 705);
  return 0;
}

uint64_t dworch_copyAssetDownloaderFromRetainProxy(uint64_t a1, void *a2)
{
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_copyAssetDownloaderFromRetainProxy_cold_1(&v6);
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

uint64_t dworch_ensureTemporaryMetadataOnlyStreamingCache(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 304))
  {
    return 0;
  }

  return dworch_createStreamingCache(a1, @"FSC_MemoryBacking", (DerivedStorage + 304));
}

uint64_t dworch_ensurePersistentStreamingCache(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 480))
  {
    return 0;
  }

  return dworch_createStreamingCache(a1, @"FSC_DiskBacking", (DerivedStorage + 480));
}

uint64_t dworch_createStreamingCache(uint64_t a1, __CFString *a2, CFTypeRef *a3)
{
  v24 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a3)
  {
    dworch_createStreamingCache_cold_2(&v25);
LABEL_27:
    v9 = 0;
    v21 = v25;
    goto LABEL_18;
  }

  v6 = DerivedStorage;
  if (@"FSC_DiskBacking" != a2)
  {
    v7 = (DerivedStorage + 8);
    Mutable = CFDictionaryCreateMutable(*(DerivedStorage + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  FigAssetGetCMBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, @"assetProperty_DiskBackedStreamingCache", AllocatorForMedia, &cf);
    if (cf)
    {
      v14 = 0;
      v9 = 0;
      goto LABEL_15;
    }
  }

  v7 = (v6 + 8);
  v15 = CFDictionaryCreateMutable(*(v6 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v15)
  {
LABEL_26:
    dworch_createStreamingCache_cold_1(&v25);
    goto LABEL_27;
  }

  v9 = v15;
  CFDictionarySetValue(v15, @"FSC_DownloadDestinationURL", *(v6 + 24));
LABEL_10:
  CFDictionarySetValue(v9, @"FSC_Backing", a2);
  v16 = *(v6 + 8);
  FigAssetGetCMBaseObject();
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v20 = v19(v18, @"assetProperty_OriginalNetworkContentURL", v16, &v24);
    if (!v20)
    {
      v20 = FigStreamingCacheCreate(*v7, v24, v9, &cf);
      if (!v20)
      {
        if (@"FSC_DiskBacking" != a2)
        {
LABEL_16:
          v21 = 0;
          *a3 = cf;
          cf = 0;
          goto LABEL_20;
        }

        v14 = 1;
LABEL_15:
        *(v6 + 488) = v14;
        goto LABEL_16;
      }
    }

    v21 = v20;
  }

  else
  {
    v21 = 4294954514;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_20:
  if (v24)
  {
    CFRelease(v24);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v21;
}

uint64_t dworch_selectAlternates_stageComplete(uint64_t a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    LODWORD(cf[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  if (!*(DerivedStorage + 312))
  {
    return dworch_changeStageOnQueue(a1, 1u);
  }

  v4 = DerivedStorage;
  TimestampClientDidPauseOnContentSteeringMonitor = dworch_selectAlternates_removePumpListeners(a1);
  if (TimestampClientDidPauseOnContentSteeringMonitor)
  {
    return TimestampClientDidPauseOnContentSteeringMonitor;
  }

  FigBytePumpGetFigBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v8)
  {
    return 4294954514;
  }

  TimestampClientDidPauseOnContentSteeringMonitor = v8(v7, 0x1F0B1F098, 0);
  if (TimestampClientDidPauseOnContentSteeringMonitor)
  {
    return TimestampClientDidPauseOnContentSteeringMonitor;
  }

  FigBytePumpGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    return 4294954514;
  }

  v12 = *MEMORY[0x1E695E480];
  TimestampClientDidPauseOnContentSteeringMonitor = v11(v10, 0x1F0B1F7F8, *MEMORY[0x1E695E480], v4 + 424);
  if (TimestampClientDidPauseOnContentSteeringMonitor)
  {
    return TimestampClientDidPauseOnContentSteeringMonitor;
  }

  if (*(v4 + 424))
  {
    if (dword_1EAF16DB8)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v4 + 556) == 1 && !*(v4 + 561))
    {
      TimestampClientDidPauseOnContentSteeringMonitor = dworch_setLastTimestampClientDidPauseOnContentSteeringMonitor(a1, 0x7FFFFFFFFFFFFFFFLL);
      if (TimestampClientDidPauseOnContentSteeringMonitor)
      {
        return TimestampClientDidPauseOnContentSteeringMonitor;
      }
    }
  }

  FigBytePumpGetFigBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    return 4294954514;
  }

  v17 = v16(v15, 0x1F0B1F0B8, v12, cf);
  v18 = cf[0];
  if (!v17)
  {
    if (cf[0])
    {
      v17 = dworch_ensureTemporaryMetadataOnlyStreamingCache(a1);
      v18 = cf[0];
      if (!v17)
      {
        v17 = FigStreamingCacheTransferData(cf[0], *(v4 + 304));
        v18 = cf[0];
      }
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (!v17)
  {
    return dworch_changeStageOnQueue(a1, 1u);
  }

  return v17;
}

uint64_t dworch_selectAlternates_installDeviceCapabilityFilters(const __CFAllocator *a1, uint64_t a2)
{
  v8 = 0;
  cf = 0;
  v4 = FigAlternateMediaValidationFilterCreate(a1, 0, &cf);
  if (v4)
  {
    goto LABEL_18;
  }

  v4 = FigAlternateSelectionBossAddFilter(a2, cf);
  if (v4)
  {
    goto LABEL_18;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v10 = 0;
  FPSupport_GetMainDisplayVideoRangeAndSizeAndFrameRate(&v10, 0, 0);
  v4 = FigAlternateSupportedVideoRangeFilterCreate(a1, v10, &cf);
  if (v4)
  {
    goto LABEL_18;
  }

  v4 = FigAlternateSelectionBossAddFilter(a2, cf);
  if (v4)
  {
    goto LABEL_18;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (!PKDGetSystemCPC(&v8))
  {
    v4 = FigAlternateAllowedCPCFilterCreate(a1, v8, &cf);
    if (v4)
    {
      goto LABEL_18;
    }

    v4 = FigAlternateSelectionBossAddFilter(a2, cf);
    if (v4)
    {
      goto LABEL_18;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v4 = FigAlternatePreferVideoCodecsWithHardwareDecodeFilterCreate(a1, &cf);
  if (v4)
  {
LABEL_18:
    v5 = v4;
    v6 = cf;
    goto LABEL_19;
  }

  v5 = FigAlternateSelectionBossAddFilter(a2, cf);
  v6 = cf;
  if (!v5 && cf)
  {
    v5 = 0;
LABEL_20:
    CFRelease(v6);
    return v5;
  }

LABEL_19:
  if (v6)
  {
    goto LABEL_20;
  }

  return v5;
}

void dworch_selectUsingMediaSelectionCriteria(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetValue(Mutable, *(a2 + 16), a1);
    SelectedMediaArrayForCriteria = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteria(*(DerivedStorage + 400), 0, v6, 0, 0, 0, &value);
    if (SelectedMediaArrayForCriteria)
    {
      *(a2 + 32) = SelectedMediaArrayForCriteria;
    }

    else
    {
      CFArrayAppendValue(*(a2 + 8), value);
      ++*(a2 + 24);
    }

    CFRelease(v6);
    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    dworch_selectUsingMediaSelectionCriteria_cold_1(a2);
  }
}

const __CFDictionary *dworch_selectAlternates_getMediaSelectionForMediaType(CFArrayRef theArray)
{
  v2 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v2 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    if (CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType"))
    {
      FigCFStringGetOSTypeValue();
    }

    ++v2;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return 0;
}

void dworch_sendDidResolveMediaSelectionCallbackForSelectedMediaArray(const void *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (DerivedStorage)
        {
          v8 = DerivedStorage;
          if (*(DerivedStorage + 232))
          {
            v9 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (v9)
            {
              v10 = v9;
              v11 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E004049432B73uLL);
              if (v11)
              {
                v12 = v11;
                if (a1)
                {
                  v13 = CFRetain(a1);
                }

                else
                {
                  v13 = 0;
                }

                *v12 = v13;
                v12[1] = v10;
                if (ValueAtIndex)
                {
                  v14 = CFRetain(ValueAtIndex);
                }

                else
                {
                  v14 = 0;
                }

                v12[6] = v14;
                dispatch_async_f(*(v8 + 296), v12, dworch_sendDidResolveMediaSelectionCallbackOnCallbackQueue);
              }

              else
              {
                dworch_sendDidResolveMediaSelectionCallbackForSelectedMediaArray_cold_1(v10);
              }
            }
          }
        }
      }
    }
  }
}

void dworch_sendDidResolveMediaSelectionCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_sendDidResolveMediaSelectionCallbackOnCallbackQueue_cold_1(IsInvalidated, v4, v5, v6, v7, v8, v9, v10, v14, v15, SHIDWORD(v15), vars0);
  }

  else
  {
    v11 = *(DerivedStorage + 232);
    if (v11)
    {
      v11(a1[1], *a1, a1[6]);
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

  v13 = a1[6];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

void dworch_updateMediaSelectionsReportingKeys(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 640);
  if (*(DerivedStorage + 624))
  {
    if (!v2)
    {
      return;
    }
  }

  else if (v2 != 2)
  {
    return;
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    dworch_updateMediaSelectionsReportingKeys_cold_3(0, v4, v5, v6, v7, v8, v9, v10, v43, v45, SHIDWORD(v45), theArray);
    return;
  }

  v50 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (!v50)
  {
    dworch_updateMediaSelectionsReportingKeys_cold_2(Mutable);
    return;
  }

  v18 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (v18)
  {
    v19 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    if (v19)
    {
      v44 = DerivedStorage;
      theArraya = *(DerivedStorage + 40);
      v49 = v19;
      if (theArraya)
      {
        Count = CFArrayGetCount(theArraya);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArraya, i);
            if (ValueAtIndex)
            {
              v22 = ValueAtIndex;
              v23 = CFArrayGetCount(ValueAtIndex);
              if (v23 >= 1)
              {
                v24 = v23;
                for (j = 0; j != v24; ++j)
                {
                  v26 = CFArrayGetValueAtIndex(v22, j);
                  if (v26)
                  {
                    v27 = v26;
                    Value = CFDictionaryGetValue(v26, @"MediaSelectionGroupMediaType");
                    if (Value)
                    {
                      CFArrayAppendValue(Mutable, Value);
                    }

                    v29 = CFDictionaryGetValue(v27, @"MediaSelectionOptionsAudioChannelLayouts");
                    if (v29)
                    {
                      CFArrayAppendValue(v50, v29);
                    }

                    v30 = CFDictionaryGetValue(v27, @"MediaSelectionOptionsLanguageCode");
                    if (v30)
                    {
                      CFArrayAppendValue(v18, v30);
                    }

                    v31 = CFDictionaryGetValue(v27, @"MediaSelectionOptionsName");
                    if (v31)
                    {
                      CFArrayAppendValue(v49, v31);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v32 = *(v44 + 632);
      if (!v32)
      {
        goto LABEL_38;
      }

      v33 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v33)
      {
        v33(v32, 0x1F0B64618, 0x1F0B39E38, Mutable, 0);
      }

      v34 = *(v44 + 632);
      if (!v34)
      {
        goto LABEL_38;
      }

      v35 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v35)
      {
        v35(v34, 0x1F0B64618, 0x1F0B39E58, v50, 0);
      }

      v36 = *(v44 + 632);
      if (!v36)
      {
        goto LABEL_38;
      }

      v37 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v37)
      {
        v37(v36, 0x1F0B64618, 0x1F0B39E78, v18, 0);
      }

      v38 = *(v44 + 632);
      if (v38 && (v39 = *(*(CMBaseObjectGetVTable() + 16) + 48)) != 0)
      {
        v40 = v38;
        v41 = v49;
        v39(v40, 0x1F0B64618, 0x1F0B39E98, v49, 0);
      }

      else
      {
LABEL_38:
        v41 = v49;
      }

      goto LABEL_39;
    }

    v42 = 1437;
  }

  else
  {
    v42 = 1434;
  }

  dworch_updateMediaSelectionsReportingKeys_cold_1(v42, v11, v12, v13, v14, v15, v16, v17, v43, v45, SHIDWORD(v45), theArray);
  v41 = 0;
LABEL_39:
  CFRelease(Mutable);
  CFRelease(v50);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v41)
  {

    CFRelease(v41);
  }
}

void dworch_updateAlternateInfoForReporting(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v11 = Mutable;
    v12 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
    if (v12)
    {
      dworch_updateAlternateInfoForReporting_cold_1(v2, DerivedStorage, v11, v12);
    }

    else
    {
      dworch_updateAlternateInfoForReporting_cold_2(v11);
    }
  }

  else
  {
    dworch_updateAlternateInfoForReporting_cold_3(0, v4, v5, v6, v7, v8, v9, v10, v13, v14, SHIDWORD(v14), v15);
  }
}

void dworch_sendWillDownloadAlternatesOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_sendWillDownloadAlternatesOnCallbackQueue_cold_1(IsInvalidated, v4, v5, v6, v7, v8, v9, v10, v14, v15, SHIDWORD(v15), vars0);
  }

  else if (*(DerivedStorage + 200) >= 2)
  {
    v11 = *(DerivedStorage + 264);
    if (v11)
    {
      v11(a1[1], *a1, a1[9]);
    }
  }

  v12 = a1[9];
  if (v12)
  {
    CFRelease(v12);
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

uint64_t dworch_changeStageOnQueue(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 564) >= a2)
  {
    dworch_changeStageOnQueue_cold_1(v9);
    return v9[0];
  }

  else
  {
    v5 = DerivedStorage;
    if (dword_1EAF16DB8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v5 + 564) = a2;
    if (a2 == 3)
    {
      dworch_releaseDiskResources(a1);
      if (*(v5 + 556) != 1)
      {
        dworch_relinquishAccessToDestinationURL(a1);
      }
    }

    if ((*(v5 + 556) == 1 || a2 <= 2 && *(v5 + 560)) && (v7 = kDownloadOrchestratorStage_JumpTable[6 * *(v5 + 564)]) != 0)
    {
      return (v7)(a1);
    }

    else
    {
      return 0;
    }
  }
}

void dworch_releaseDiskResources(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  if (*(DerivedStorage + 488))
  {
    FigStreamingCacheInvalidate(*(DerivedStorage + 480));
    *(v2 + 488) = 0;
  }

  v3 = *(v2 + 480);
  if (v3)
  {
    CFRelease(v3);
    *(v2 + 480) = 0;
  }
}

uint64_t dworch_relinquishAccessToDestinationURLIfNotDownloadingOrNotLoadingMetadataOrPausedForInteractivePlayback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 556) != 1 && !*(result + 561) && !*(result + 560))
  {
    dworch_releaseDiskResources(a1);

    return dworch_relinquishAccessToDestinationURL(a1);
  }

  return result;
}

void dworch_sendDidReceiveMetricEventOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_sendDidReceiveMetricEventOnCallbackQueue_cold_1(IsInvalidated, v4, v5, v6, v7, v8, v9, v10, v14, v15, SHIDWORD(v15), vars0);
  }

  else if (*(DerivedStorage + 200) >= 4)
  {
    v11 = *(DerivedStorage + 288);
    if (v11)
    {
      v11(a1[1], *a1, a1[10]);
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

  v13 = a1[10];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

void dworch_sendDownloadSucceededCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_sendDownloadSucceededCallbackOnCallbackQueue_cold_1(IsInvalidated, v4, v5, v6, v7, v8, v9, v10, v13, v14, SHIDWORD(v14), vars0);
  }

  else
  {
    v11 = *(DerivedStorage + 208);
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

void dworch_sendDownloadFailedCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_sendDownloadFailedCallbackOnCallbackQueue_cold_1(IsInvalidated, v4, v5, v6, v7, v8, v9, v10, v14, v15, SHIDWORD(v15), vars0);
  }

  else
  {
    v11 = *(DerivedStorage + 216);
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

uint64_t dworch_issueReportingEvent(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(result + 632);
  if (v4)
  {
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 16);
    result = VTable + 16;
    v7 = *(v6 + 8);
    if (v7)
    {

      return v7(v4, 0x1F0B64618, a2, 1, 0);
    }
  }

  return result;
}

void dworch_downloadMetadata_gotAccessToDestinationURLCallback(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CFGetTypeID(a1);
  if (v7 != FigAssetDownloaderGetTypeID())
  {
    dworch_downloadMetadata_gotAccessToDestinationURLCallback_cold_1(&v10);
    v9 = v10;
    goto LABEL_9;
  }

  *(DerivedStorage + 576) = a3;
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_downloadMetadata_gotAccessToDestinationURLCallback_cold_2(&v11);
    v9 = v11;
    goto LABEL_9;
  }

  if (a2 && !a3)
  {
    dworch_downloadMetadata_gotAccessToDestinationURLCallback_cold_3(&v12);
    v9 = v12;
    goto LABEL_9;
  }

  if (*(DerivedStorage + 556) == 1 || *(DerivedStorage + 560))
  {
    IsRegisteredForDownload = dworch_ensureAssetIsRegisteredForDownload(a1);
    if (IsRegisteredForDownload)
    {
      v9 = IsRegisteredForDownload;
      dworch_relinquishAccessToDestinationURLIfNotDownloadingOrNotLoadingMetadataOrPausedForInteractivePlayback(a1);
LABEL_10:

      dworch_transitionToTerminalStateWithOSStatus(a1, v9);
      return;
    }

    v9 = dworch_downloadMetadata_proceedAfterCheckingDestinationURL(a1);
LABEL_9:
    dworch_relinquishAccessToDestinationURLIfNotDownloadingOrNotLoadingMetadataOrPausedForInteractivePlayback(a1);
    if (!v9)
    {
      return;
    }

    goto LABEL_10;
  }

  dworch_relinquishAccessToDestinationURLIfNotDownloadingOrNotLoadingMetadataOrPausedForInteractivePlayback(a1);
}

double dworch_downloadMetadata_downloadSuccededCallback(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void dworch_sendDidFinishLoadingMetadataOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_sendDidFinishLoadingMetadataOnCallbackQueue_cold_1(IsInvalidated, v4, v5, v6, v7, v8, v9, v10, v13, v14, SHIDWORD(v14), vars0);
  }

  else
  {
    v11 = *(DerivedStorage + 248);
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

uint64_t dworch_loadMetadata(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, dworch_loadMetadataDispatch);
  return v5;
}

void dworch_interstitialDownloadSuccessCallback(const void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigCFArrayGetValueAtIndex() == a2)
  {
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 456), 0);
    v6 = dworch_downloadMedia_checkIfStageComplete(a1);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    dworch_interstitialDownloadSuccessCallback_cold_1(v7);
    v6 = v7[0];
    if (!v7[0])
    {
      return;
    }
  }

  dworch_transitionToTerminalStateWithOSStatus(a1, v6);
}

void dworch_interstitialDidFinishLoadingMetadata(const void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Count = *(DerivedStorage + 456);
  v6 = *(DerivedStorage + 464) + 1;
  *(DerivedStorage + 464) = v6;
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (v6 >= Count)
  {
    dworch_interstitialDidFinishLoadingMetadata_cold_1(a1);
  }
}

void dworch_interstitialDidPersistMetadata(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 472) + 1;
  *(DerivedStorage + 472) = v3;
  Count = *(DerivedStorage + 456);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (v3 >= Count)
  {
    v5 = dworch_persistMetadata_stageComplete(a1);
    if (v5)
    {

      dworch_transitionToTerminalStateWithOSStatus(a1, v5);
    }
  }
}

void dworch_sendDidPersistMetadataOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    dworch_sendDidPersistMetadataOnCallbackQueue_cold_1(IsInvalidated, v4, v5, v6, v7, v8, v9, v10, v13, v14, SHIDWORD(v14), vars0);
  }

  else if (*(DerivedStorage + 200) >= 3)
  {
    v11 = *(DerivedStorage + 280);
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

uint64_t dworch_setupDownloadItemsForContentConfig(uint64_t a1, uint64_t a2)
{
  Alternate = FigStreamingAssetDownloadContentConfigGetAlternate(a2);
  if (Alternate)
  {
    v5 = Alternate;
    MediaSelections = FigStreamingAssetDownloadContentConfigGetMediaSelections(a2);
    if (MediaSelections)
    {

      return dworch_setupDownloadItemsAndProgressMonitorForAlternate(a1, v5, MediaSelections);
    }

    else
    {
      dworch_setupDownloadItemsForContentConfig_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    dworch_setupDownloadItemsForContentConfig_cold_2(&v9);
    return v9;
  }
}

void dworch_persistMetadata_gotAccessToDestinationURLCallback(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CFGetTypeID(a1);
  if (v7 == FigAssetDownloaderGetTypeID())
  {
    *(DerivedStorage + 576) = a3;
    CMBaseObjectGetDerivedStorage();
    if (FigRetainProxyIsInvalidated())
    {
      dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_2(&cf);
    }

    else if (a2)
    {
      if (*(DerivedStorage + 556) != 1 && !*(DerivedStorage + 560))
      {
        goto LABEL_38;
      }

      IsRegisteredForDownload = dworch_ensureAssetIsRegisteredForDownload(a1);
      if (IsRegisteredForDownload)
      {
        goto LABEL_16;
      }

      if (*(DerivedStorage + 561))
      {
LABEL_38:

        dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
        return;
      }

      IsRegisteredForDownload = dworch_ensurePersistentStreamingCache(a1);
      if (IsRegisteredForDownload || (IsRegisteredForDownload = dworch_ensureExtendedAttributesSetOnDestinationURL(a1), IsRegisteredForDownload) || !*(DerivedStorage + 441) && (v11 = *(DerivedStorage + 304)) != 0 && (v12 = *(DerivedStorage + 480)) != 0 && (IsRegisteredForDownload = FigStreamingCacheTransferData(v11, v12), IsRegisteredForDownload))
      {
LABEL_16:
        v13 = IsRegisteredForDownload;
LABEL_17:
        dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
        goto LABEL_18;
      }

      v9 = *(DerivedStorage + 456);
      if (v9)
      {
        Count = CFArrayGetCount(v9);
      }

      else
      {
        Count = 0;
      }

      v14 = *(DerivedStorage + 448);
      if (v14)
      {
        v14 = CFArrayGetCount(v14);
      }

      if (Count == v14)
      {
        if (*(DerivedStorage + 442) && Count >= 1)
        {
          v15 = 0;
          while (1)
          {
            ValueAtIndex = FigCFArrayGetValueAtIndex();
            FigCFArrayGetValueAtIndex();
            cf = 0;
            v17 = *(DerivedStorage + 480);
            v18 = CFURLGetString(ValueAtIndex);
            FigStreamingCacheAddInterstitialAsset(v17, v18, &cf, v19, v20, v21, v22, v23, v28);
            if (IsRegisteredForDownload)
            {
              goto LABEL_16;
            }

            v24 = cf;
            FigAssetDownloaderGetCMBaseObject();
            v26 = v25;
            v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v27)
            {
              v13 = v27(v26, @"AssetDownloaderProperty_DestinationURL", v24);
            }

            else
            {
              v13 = 4294954514;
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v13)
            {
              goto LABEL_17;
            }

            if (Count == ++v15)
            {
              dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
              return;
            }
          }
        }

        v13 = dworch_persistMetadata_stageComplete(a1);
        goto LABEL_36;
      }

      dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_3(&cf);
    }

    else
    {
      dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_4(&cf);
    }
  }

  else
  {
    dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_1(&cf);
  }

  v13 = cf;
LABEL_36:
  dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
  if (v13)
  {
LABEL_18:
    dworch_transitionToTerminalStateWithOSStatus(a1, v13);
  }
}

uint64_t dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 556) != 1 && !*(result + 561))
  {
    dworch_releaseDiskResources(a1);

    return dworch_relinquishAccessToDestinationURL(a1);
  }

  return result;
}

void dworch_downloadMedia_gotAccessToDestinationURLCallback(const void *a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFGetTypeID(a1);
  if (v6 == FigAssetDownloaderGetTypeID())
  {
    *(DerivedStorage + 576) = a3;
    CMBaseObjectGetDerivedStorage();
    if (!FigRetainProxyIsInvalidated())
    {
      if (*(DerivedStorage + 556) != 1)
      {
LABEL_40:
        dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
        return;
      }

      IsRegisteredForDownload = dworch_ensureExtendedAttributesSetOnDestinationURL(a1);
      if (IsRegisteredForDownload)
      {
        goto LABEL_36;
      }

      IsRegisteredForDownload = dworch_ensureAssetIsRegisteredForDownload(a1);
      if (IsRegisteredForDownload)
      {
        goto LABEL_36;
      }

      if (!*(DerivedStorage + 328))
      {
        if (*(DerivedStorage + 408))
        {
          v8 = CMBaseObjectGetDerivedStorage();
          if (!*(v8 + 552))
          {
            v9 = v8;
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
            if (Mutable)
            {
              v11 = Mutable;
              if (dword_1EAF16DB8)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v13 = v9[44];
              if (v13)
              {
                dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_3(v9, v13);
              }

              v14 = v9[51];
              PrimaryContentConfig = FigStreamingAssetDownloadConfigGetPrimaryContentConfig(v14, @"kFigEnvironmentalCondition_DefaultKey");
              if (PrimaryContentConfig || (PrimaryContentConfig = FigStreamingAssetDownloadConfigGetDefaultPrimaryContentConfig(v14)) != 0)
              {
                v16 = PrimaryContentConfig;
                v17 = dworch_setupDownloadItemsForContentConfig(a1, PrimaryContentConfig);
                if (v17)
                {
LABEL_41:
                  v27 = v17;
                  goto LABEL_29;
                }

                Alternate = FigStreamingAssetDownloadContentConfigGetAlternate(v16);
                if (Alternate)
                {
                  CFArrayAppendValue(v11, Alternate);
                }
              }

              else if (!dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_4(v31))
              {
                v27 = v31[0];
LABEL_29:
                CFRelease(v11);
                if (v27)
                {
LABEL_37:
                  dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
LABEL_38:
                  dworch_transitionToTerminalStateWithOSStatus(a1, v27);
                  return;
                }

                goto LABEL_30;
              }

              v19 = v9[51];
              AuxConfigs = FigStreamingAssetDownloadConfigGetAuxConfigs(v19, @"kFigEnvironmentalCondition_DefaultKey");
              if ((!AuxConfigs || (DefaultAuxConfigs = AuxConfigs, !CFArrayGetCount(AuxConfigs))) && (DefaultAuxConfigs = FigStreamingAssetDownloadConfigGetDefaultAuxConfigs(v19)) == 0 || (Count = CFArrayGetCount(DefaultAuxConfigs), Count < 1))
              {
LABEL_28:
                v9[65] = v9[44];
                dworch_sendWillDownloadAlternatesCallback(a1, v11);
                v27 = 0;
                goto LABEL_29;
              }

              v23 = Count;
              v24 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(DefaultAuxConfigs, v24);
                v17 = dworch_setupDownloadItemsForContentConfig(a1, ValueAtIndex);
                if (v17)
                {
                  goto LABEL_41;
                }

                v26 = FigStreamingAssetDownloadContentConfigGetAlternate(ValueAtIndex);
                if (v26)
                {
                  CFArrayAppendValue(v11, v26);
                }

                if (v23 == ++v24)
                {
                  goto LABEL_28;
                }
              }
            }

            dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_5(v31);
            v27 = v31[0];
            if (v31[0])
            {
              goto LABEL_37;
            }
          }
        }
      }

LABEL_30:
      IsRegisteredForDownload = dworch_downloadMedia_startNextMediaSelectionDownload(a1);
      if (!IsRegisteredForDownload)
      {
        v28 = 0;
        while (1)
        {
          v29 = *(DerivedStorage + 496);
          if (v29)
          {
            v29 = CFArrayGetCount(v29);
          }

          if (v28 >= v29)
          {
            break;
          }

          v30 = CFArrayGetValueAtIndex(*(DerivedStorage + 496), v28);
          IsRegisteredForDownload = dworch_downloadMedia_matchMediaDownloaderToOrchestratorStatus(a1, v30);
          ++v28;
          if (IsRegisteredForDownload)
          {
            goto LABEL_36;
          }
        }

        dworch_updateAlternateInfoForReporting(a1);
        dworch_updateMediaSelectionsReportingKeys(a1);
        goto LABEL_40;
      }

LABEL_36:
      v27 = IsRegisteredForDownload;
      goto LABEL_37;
    }

    dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_2(v31);
  }

  else
  {
    dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_1(v31);
  }

  v27 = v31[0];
  dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
  if (v27)
  {
    goto LABEL_38;
  }
}

const void *dworch_copyPropertyDispatch(void *a1)
{
  v11 = 0;
  v2 = a1[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_copyPropertyDispatch_cold_1(&v12);
    goto LABEL_18;
  }

  if (CFEqual(@"AssetDownloaderProperty_Status", v2))
  {
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 556));
    if (result)
    {
LABEL_4:
      v5 = 0;
      goto LABEL_5;
    }

    dworch_copyPropertyDispatch_cold_2(&v12);
LABEL_18:
    result = 0;
    v5 = v12;
    goto LABEL_5;
  }

  if (!CFEqual(@"AssetDownloaderProperty_DownloadedBytes", v2))
  {
    if (!CFEqual(@"AssetDownloaderProperty_HasAccessToDestinationURL", v2))
    {
      result = 0;
      v5 = -12784;
      goto LABEL_5;
    }

    v9 = CMBaseObjectGetDerivedStorage();
    v10 = MEMORY[0x1E695E4D0];
    if (!*(v9 + 576))
    {
      v10 = MEMORY[0x1E695E4C0];
    }

    result = *v10;
    if (*v10)
    {
      result = CFRetain(result);
    }

    goto LABEL_4;
  }

  FigAssetDownloaderGetCMBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v5 = v8(v7, @"AssetDownloaderProperty_DownloadedBytes", *MEMORY[0x1E695E480], &v11);
    result = v11;
  }

  else
  {
    result = 0;
    v5 = -12782;
  }

LABEL_5:
  *(a1 + 6) = v5;
  a1[2] = result;
  return result;
}

void dworch_setPropertyDispatch(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_setPropertyDispatch_cold_1(&v7);
    v6 = v7;
    goto LABEL_12;
  }

  if (!CFEqual(@"AssetDownloaderProperty_DestinationURL", v3))
  {
    v6 = -12787;
    goto LABEL_12;
  }

  v5 = CFGetTypeID(v2);
  if (v5 != CFURLGetTypeID())
  {
    dworch_setPropertyDispatch_cold_2(&v8);
    v6 = v8;
    goto LABEL_12;
  }

  if (*(DerivedStorage + 24))
  {
    dworch_setPropertyDispatch_cold_3(&v9);
    v6 = v9;
    goto LABEL_12;
  }

  *(DerivedStorage + 24) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (*(DerivedStorage + 564) != 1)
  {
    goto LABEL_10;
  }

  v6 = *(DerivedStorage + 443);
  if (*(DerivedStorage + 443))
  {
    dworch_downloadMetadata_stageComplete(*a1);
LABEL_10:
    v6 = 0;
  }

LABEL_12:
  *(a1 + 6) = v6;
}

uint64_t dworch_pause(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
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
    dispatch_async_f(*DerivedStorage, v4, dworch_pauseDispatch);
    return 0;
  }

  else
  {
    dworch_pause_cold_1(&v7);
    return v7;
  }
}

uint64_t dworch_stop(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
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
    dispatch_async_f(*DerivedStorage, v4, dworch_stopDispatch);
    return 0;
  }

  else
  {
    dworch_stop_cold_1(&v7);
    return v7;
  }
}

uint64_t dworch_pauseForPlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, dworch_pauseForPlaybackDispatch);
  return v5;
}

uint64_t dworch_resumeAfterPlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, dworch_resumeAfterPlaybackDispatch);
  return v5;
}

void dworch_logMediaSelectionArray(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v5 = DerivedStorage;
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        v10 = FigMediaSelectionArrayCopyDescription(*(v5 + 8), ValueAtIndex);
        if (dword_1EAF16DB8)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_8_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *OUTLINED_FUNCTION_11_13()
{

  return malloc_type_calloc(1uLL, 0x58uLL, 0x10E004049432B73uLL);
}

uint64_t OUTLINED_FUNCTION_34_6@<X0>(uint64_t a2@<X8>)
{
  *(v2 - 88) = a2;

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_43_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, char a29)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_49_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_50_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *OUTLINED_FUNCTION_60_4()
{

  return malloc_type_calloc(1uLL, 0x58uLL, v0);
}

uint64_t OUTLINED_FUNCTION_61_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_62_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 320);

  return FigAlternateSelectionBossAddFilter(v12, a10);
}

uint64_t OUTLINED_FUNCTION_63_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = *(v25 + 320);

  return FigAlternateSelectionBossAddFilter(v27, a25);
}

BOOL OUTLINED_FUNCTION_64_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_74_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  *(a2 + 8) = v3;
  *v3 = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_83_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_85_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_log_type_t type, int a28, int a29)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_86_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigSampleGeneratorDataSourceCacheCreate(uint64_t a1, const void *a2, void *a3)
{
  if (!a3)
  {
    FigSampleGeneratorDataSourceCacheCreate_cold_4(&v17);
    return v17;
  }

  if (_MergedGlobals_33 != -1)
  {
    FigSampleGeneratorDataSourceCacheCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigSampleGeneratorDataSourceCacheCreate_cold_3(&v16);
    return v16;
  }

  v6 = Instance;
  v7 = FigReadWriteLockCreate();
  v6[2] = v7;
  if (!v7)
  {
    v14 = 782;
LABEL_19:
    FigSampleGeneratorDataSourceCacheCreate_cold_2(v14, v6, &v15);
    return v15;
  }

  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6[3] = Mutable;
  if (!Mutable)
  {
    v14 = 784;
    goto LABEL_19;
  }

  v10 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6[4] = v10;
  if (!v10)
  {
    v14 = 786;
    goto LABEL_19;
  }

  v11 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6[5] = v11;
  if (!v11)
  {
    v14 = 788;
    goto LABEL_19;
  }

  if (a2)
  {
    v12 = CFRetain(a2);
  }

  else
  {
    v12 = 0;
  }

  result = 0;
  v6[6] = v12;
  *a3 = v6;
  return result;
}

uint64_t FigSampleGeneratorCreateForTrackReaderUsingScheduledIO(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, CMTime *a6, char a7, void *a8)
{
  v14 = 0;
  v13 = *a6;
  figSampleGeneratorCreateForFormatReaderCommon(a1, 0, a2, 0, 1, a3, a5, &v13, a7, a4, &v14);
  v11 = v10;
  if (a5 && !v10)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  *a8 = v14;
  return v11;
}

uint64_t FigSampleGeneratorCreateForFormatReaderUsingScheduledIO(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, CMTime *a6, char a7, void *a8)
{
  v14 = 0;
  v13 = *a6;
  figSampleGeneratorCreateForFormatReaderCommon(a1, a2, a3, 0, 1, a4, a5, &v13, a7, 0, &v14);
  v11 = v10;
  if (a5 && !v10)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  *a8 = v14;
  return v11;
}

uint64_t RegisterFigSampleGeneratorDataSourceCacheType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double sampleGeneratorDataSourceCache_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void sampleGeneratorDataSourceCache_Finalize(void *a1)
{
  FigReadWriteLockDestroy();
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }
}

__CFString *sampleGeneratorDataSourceCache_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigSampleGeneratorDataSourceCache:  urlToByteStream: {%@}", *(a1 + 24));
  return Mutable;
}

__CFString *sgffr_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleGenerator %p>", a1);
  return Mutable;
}

uint64_t sgffr_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  keys[4] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(@"SampleGeneratorPerformanceDictionary", a2))
  {
    return 4294954512;
  }

  memset(&keys[1], 0, 24);
  memset(&values[1], 0, 24);
  FigReadWriteLockLockForRead();
  Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v9 = *(DerivedStorage + 48);
    if (*(DerivedStorage + 32))
    {
      v10 = *(v9 + 40);
      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = sgffr_collectSchedIOReadStatistics;
    }

    else
    {
      v10 = *(v9 + 32);
      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = sgffr_collectByteStreamReadStatistics;
    }

    CFDictionaryApplyFunction(v10, v11, Mutable);
LABEL_10:
    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    goto LABEL_12;
  }

  sgffr_copyProperty_cold_1();
LABEL_12:
  FigReadWriteLockUnlockForRead();
  if (Mutable)
  {
    keys[0] = @"ReadStatistics";
    values[0] = CFRetain(Mutable);
    v13 = CFDictionaryCreate(a3, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (values[0])
    {
      CFRelease(values[0]);
    }

    CFRelease(Mutable);
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  if (v13)
  {
    return 0;
  }

  else
  {
    return 4294954513;
  }
}

uint64_t sgffr_finishPrerollBatch(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  FigReadWriteLockLockForRead();
  v4 = FigCFDictionaryCopyArrayOfValues();
  FigReadWriteLockUnlockForRead();
  if (!v4)
  {
    return 0;
  }

  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = Count;
    LODWORD(v7) = 0;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v11 = v10(ValueAtIndex, 0, v3);
      }

      else
      {
        v11 = -12782;
      }

      if (v7)
      {
        v7 = v7;
      }

      else
      {
        v7 = v11;
      }
    }
  }

  CFRelease(v4);
  return v7;
}

void sgffr_collectSchedIOReadStatistics(int a1, uint64_t a2, void *cf)
{
  value = 0;
  v4 = CFGetAllocator(cf);
  v5 = FigScheduledIOGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    if (!v6(v5, *MEMORY[0x1E6962E88], v4, &value))
    {
      CFArrayAppendValue(cf, value);
      CFRelease(value);
    }
  }
}

void sgffr_collectByteStreamReadStatistics(uint64_t a1, int a2, void *cf)
{
  value = 0;
  v4 = CFGetAllocator(cf);
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    if (!v6(CMBaseObject, *MEMORY[0x1E6960E08], v4, &value))
    {
      CFArrayAppendValue(cf, value);
      CFRelease(value);
    }
  }
}

uint64_t CMBaseObjectCopyProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sgffr_GenerateSampleBuffersForRequests(const void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, void *, uint64_t, CFTypeRef))
{
  context = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (a2 < 1)
  {
    return 0;
  }

  v11 = DerivedStorage;
  Mutable = 0;
  LODWORD(v13) = 0;
  allocator = *MEMORY[0x1E695E480];
  do
  {
    v20 = 0;
    cf = 0;
    if (*(v11 + 32))
    {
      sgffr_copyCursorSampleLocationAndDataSource(a1, *a3, 0, 0, 0, 0, 0, 0, 0, 0, &v20);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      value = CFDictionaryGetValue(Mutable, v20);
      if (!value && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v16 = v20;
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v17)
        {
          context = v17(v16, allocator, &value);
          if (!context)
          {
            CFDictionarySetValue(Mutable, v20, value);
            if (value)
            {
              CFRelease(value);
            }
          }
        }

        else
        {
          context = -12782;
        }
      }
    }

    v14 = sgffr_createSampleBufferAtCursorUsingBatch(a1, *a3, a3[1], a3[2], *(a3 + 6), *a3, *(a3 + 9), *(a3 + 10), *(a3 + 44), *(a3 + 52), *(a3 + 60), value, &cf);
    context = v14;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = cf;
    }

    a5(a4, a3, v14, v15);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = v14;
    }

    a3 = (a3 + 68);
    --a2;
  }

  while (a2);
  if (Mutable)
  {
    CFDictionaryApplyFunction(Mutable, sgffr_commitBatchApply, &context);
    if (v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = context;
    }

    CFRelease(Mutable);
  }

  return v13;
}

uint64_t sgffr_CreateSampleGeneratorBatch(uint64_t a1, const __CFAllocator *a2, CFTypeRef *a3)
{
  if (!a3)
  {
    sgffr_CreateSampleGeneratorBatch_cold_2(&v9);
    return v9;
  }

  if (!a1)
  {
    sgffr_CreateSampleGeneratorBatch_cold_1(&v9);
    return v9;
  }

  FigSampleGeneratorBatchGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 16) = FigSimpleMutexCreate();
    *DerivedStorage = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 32) = 0;
    *(DerivedStorage + 36) = 0;
    v7 = *MEMORY[0x1E695E480];
    *(DerivedStorage + 24) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    *(DerivedStorage + 40) = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
    FigCFWeakReferenceStore();
    if (!*(CMBaseObjectGetDerivedStorage() + 32))
    {
      *(DerivedStorage + 36) = 1;
    }

    v5 = 0;
    *a3 = 0;
  }

  return v5;
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch(const void *a1, const void *a2, uint64_t a3, uint64_t a4, int a5, const void *a6, unsigned int a7, char a8, uint64_t (*a9)(uint64_t, uint64_t, CMSampleBufferRef), uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef *a13)
{
  v266 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v215 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 144))
  {
    v20 = 1;
    v21 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 112))
  {
    v22 = 0;
    v23 = 1;
  }

  else
  {
    v23 = 0;
    v22 = 1;
  }

  if (a7 == 4 && !*(DerivedStorage + 32))
  {
    sgffr_createSampleBufferAtCursorUsingBatch_cold_15(time);
    value_low = *time;
    goto LABEL_492;
  }

  v212 = a8;
  v213 = v22;
  if (a6)
  {
    v24 = *(CMBaseObjectGetVTable() + 16);
    if (a5 == 1)
    {
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v27 = *(CMBaseObjectGetVTable() + 16);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      if (v25 == v28 && *(v25 + 32) && (*(v28 + 32))(a2, a6) == 1)
      {
        return 4294954454;
      }
    }

    else
    {
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      v29 = *(CMBaseObjectGetVTable() + 16);
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (v26 == v30 && *(v26 + 32) && (*(v30 + 32))(a2, a6) == -1)
      {
        return 4294954454;
      }
    }
  }

  v31 = a13;
  if ((v20 & v23) == 1)
  {
    v32 = *MEMORY[0x1E695E4C0];
    *time = *MEMORY[0x1E695E4C0];
    FigSampleCursorGetFigBaseObject();
    v34 = v33;
    v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v35)
    {
      v35(v34, @"PreferCreateSampleBuffer", *MEMORY[0x1E695E480], time);
      v32 = *time;
    }

    if (*MEMORY[0x1E695E4D0] == v32)
    {
      if (!*(DerivedStorage + 33))
      {
        v21 = 0;
      }

      if (!v32)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v21 = 1;
      if (!v32)
      {
LABEL_34:
        v31 = a13;
        goto LABEL_35;
      }
    }

    CFRelease(v32);
    goto LABEL_34;
  }

LABEL_35:
  if (!v21)
  {
    value_low = 0;
    goto LABEL_377;
  }

  v36 = a12;
  if (a4 != 1 && a5)
  {
    v241 = a7;
    v37 = CMBaseObjectGetDerivedStorage();
    v239 = 0;
    v240 = 0;
    v237 = 0;
    v238 = 0;
    v235 = 0;
    v236 = 0;
    v234 = 0;
    v233 = 0;
    v232 = 0;
    v230 = 0u;
    v231 = 0u;
    memset(time, 0, sizeof(time));
    dataBuffer = 0;
    v228 = 0;
    v225 = 0;
    sbuf = 0;
    invalidateRefCon = 0;
    v223 = 0;
    v222 = 1;
    v220 = 0;
    v221 = 0;
    v218 = 0;
    v219 = 0;
    v216 = 0;
    makeDataReadyRefcon = 0;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 152))
    {
      formatDescriptiona = 0;
      v60 = 0;
      goto LABEL_106;
    }

    v206 = v31;
    v258 = 0;
    v259 = 0;
    v38 = MEMORY[0x1E6960C70];
    *v209 = *MEMORY[0x1E6960C70];
    *&v263.value = *MEMORY[0x1E6960C70];
    v39 = *(MEMORY[0x1E6960C70] + 16);
    v40 = *MEMORY[0x1E6960C70];
    v263.epoch = v39;
    v264 = v40;
    timescale = *(MEMORY[0x1E6960C70] + 8);
    v257 = 0;
    v256 = 0;
    cf2 = 0;
    cf = 0;
    v253 = 0;
    cf1 = 0;
    v41 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v41)
    {
      v42 = v41(a2, &v256, &v257, &v237, &v236, &v235, &v234, &v233 + 1, &v233, &v222);
      value_low = v42;
      if (v42 == -12841)
      {
        goto LABEL_130;
      }

      if (!v42)
      {
        v44 = *(*(CMBaseObjectGetVTable() + 16) + 160);
        if (v44)
        {
          value_low = v44(a2, &cf2);
          if (!value_low)
          {
            if (!v222)
            {
              v70 = 0;
              formatDescriptiona = 0;
              value_low = 0;
              goto LABEL_131;
            }

            if (v235 >= a3)
            {
              value_low = 0;
              v46 = 1;
              v36 = a12;
LABEL_435:
              formatDescriptiona = cf2;
              cf2 = 0;
              v160 = v257;
              v257 = 0;
              v70 = v256;
              v219 = v160;
              v220 = v256;
              v256 = 0;
LABEL_132:
              if (v259)
              {
                CFRelease(v259);
              }

              if (cf2)
              {
                CFRelease(cf2);
              }

              if (v257)
              {
                CFRelease(v257);
              }

              if (v256)
              {
                CFRelease(v256);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (v253)
              {
                CFRelease(v253);
              }

              if (cf1)
              {
                CFRelease(cf1);
              }

              if (value_low != -12841)
              {
                if (!value_low)
                {
                  if (v70 | v219)
                  {
                    if (v46)
                    {
                      v71 = v233 == 0;
                    }

                    else
                    {
                      v71 = 1;
                    }

                    v60 = !v71;
                    if (*(v37 + 33))
                    {
                      if (v219)
                      {
                        v31 = v206;
                      }

                      else
                      {
                        v202 = v60;
                        CMBaseObject = CMByteStreamGetCMBaseObject();
                        v83 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (!v83)
                        {
                          LODWORD(v64) = 0;
                          v66 = 0;
                          value_low = 4294954514;
                          v210 = &v228;
                          v67 = time;
                          goto LABEL_294;
                        }

                        SingleSampleBuffer = v83(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &v219);
                        v31 = v206;
                        if (SingleSampleBuffer)
                        {
LABEL_127:
                          value_low = SingleSampleBuffer;
                          LODWORD(v64) = 0;
                          v66 = 0;
                          v210 = &v228;
                          v67 = time;
                          v68 = formatDescriptiona;
                          goto LABEL_349;
                        }

                        v60 = v202;
                      }

LABEL_106:
                      if (v236 && v235 && v222)
                      {
                        v206 = v31;
                        v61 = v235 - v234;
                        if (a5 != 1)
                        {
                          v61 = v234 + 1;
                        }

                        if (v61 >= a4)
                        {
                          v62 = a4;
                        }

                        else
                        {
                          v62 = v61;
                        }

                        if (a4 <= 0)
                        {
                          value = v61;
                        }

                        else
                        {
                          value = v62;
                        }

                        if (v60)
                        {
                          v64 = 0;
                          v199 = 0;
                          v204 = time;
                          v195 = 1;
                          goto LABEL_160;
                        }

                        v72 = malloc_type_malloc(72 * value, 0x1000040FF89C88EuLL);
                        v64 = v72;
                        if (v72)
                        {
                          v199 = 1;
                          v204 = v72;
                          v195 = value;
LABEL_160:
                          v201 = v60;
                          if (HIBYTE(v233))
                          {
                            v210 = &v228;
                            ContiguousSampleOffsetAndSize = sgffr_getContiguousSampleOffsetAndSize(a2, 0, &v228);
                            v197 = 0;
                            if (ContiguousSampleOffsetAndSize)
                            {
LABEL_162:
                              value_low = ContiguousSampleOffsetAndSize;
LABEL_163:
                              v31 = v206;
LABEL_164:
                              v68 = formatDescriptiona;
LABEL_347:
                              LODWORD(v64) = v199;
                              v66 = v197;
LABEL_348:
                              v67 = v204;
                              goto LABEL_349;
                            }

                            v194 = 1;
                          }

                          else
                          {
                            v210 = malloc_type_malloc(8 * value, 0x100004000313F17uLL);
                            if (!v210)
                            {
                              sgffr_createSampleBufferAtCursorUsingBatch_cold_12(&v263);
                              v210 = 0;
                              v66 = 0;
                              value_low = LODWORD(v263.value);
                              v31 = v206;
                              v68 = formatDescriptiona;
                              LODWORD(v64) = v199;
                              goto LABEL_348;
                            }

                            v197 = 1;
                            v194 = value;
                          }

                          if (a5 == 1)
                          {
                            if (a2)
                            {
                              v74 = CFRetain(a2);
                            }

                            else
                            {
                              v74 = 0;
                            }

                            v239 = v74;
                            if (a6)
                            {
                              v84 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                              if (v84)
                              {
                                v85 = v84(a2, &v240);
                                if (!v85)
                                {
                                  v86 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v240, value - 1, &v218);
                                  if (v86)
                                  {
                                    value_low = v86;
                                    v31 = v206;
                                    goto LABEL_164;
                                  }

                                  v205 = v36;
                                  v87 = value - 1 == v218 && FigSampleCursorCompareInDecodeOrder_0(v240, a6) != 1;
                                  CFRelease(v240);
                                  v240 = 0;
                                  goto LABEL_205;
                                }

                                value_low = v85;
                              }

                              else
                              {
                                value_low = 4294954514;
                              }

                              sgffr_createSampleBufferAtCursorUsingBatch_cold_11();
                              goto LABEL_163;
                            }

                            v205 = v36;
                            goto LABEL_199;
                          }

                          v75 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                          if (v75)
                          {
                            v76 = v75(a2, &v239);
                            if (!v76)
                            {
                              v77 = v239;
                              v78 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                              if (v78)
                              {
                                value_low = v78(v77, 1 - value, &v218);
                                if (!value_low && 1 - value == v218)
                                {
                                  v205 = v36;
                                  if (!a6)
                                  {
                                    v87 = 1;
                                    v60 = v201;
                                    goto LABEL_205;
                                  }

                                  v60 = v201;
                                  if (FigSampleCursorCompareInDecodeOrder_0(v239, a6) == -1)
                                  {
                                    if (v239)
                                    {
                                      CFRelease(v239);
                                      v239 = 0;
                                    }

                                    v79 = FigSampleCursorCopy(a6, &v239);
                                    if (v79)
                                    {
                                      value_low = v79;
                                      sgffr_createSampleBufferAtCursorUsingBatch_cold_8();
                                      goto LABEL_163;
                                    }

                                    if (((HIBYTE(v233) != 0) & v201) != 0)
                                    {
LABEL_237:
                                      v263.value = 0;
                                      v262.value = 0;
                                      time1.value = 0;
                                      time2.value = 0;
                                      if (a5 == -1)
                                      {
                                        v100 = a2;
                                      }

                                      else
                                      {
                                        v100 = a6;
                                      }

                                      v193 = v100;
                                      ContiguousSampleOffsetAndSize = FigSampleCursorCopyChunkDetails(v100, 0, 0, &time1, 0, 0, &time2, 0, 0, 0);
                                      if (ContiguousSampleOffsetAndSize)
                                      {
                                        goto LABEL_162;
                                      }

                                      ContiguousSampleOffsetAndSize = FigSampleCursorCopyChunkDetails(v239, 0, 0, &v263, 0, 0, &v262, 0, 0, 0);
                                      if (ContiguousSampleOffsetAndSize)
                                      {
                                        goto LABEL_162;
                                      }

                                      if (time1.value != v263.value)
                                      {
                                        ContiguousSampleOffsetAndSize = FigSampleCursorCopy(v239, &v240);
                                        if (!ContiguousSampleOffsetAndSize)
                                        {
                                          v191 = v37;
                                          v192 = 0;
                                          v102 = 0;
                                          v103 = value;
                                          while (1)
                                          {
                                            v104 = v240;
                                            v105 = *(CMBaseObjectGetVTable() + 16);
                                            if (v105)
                                            {
                                              v106 = v105;
                                            }

                                            else
                                            {
                                              v106 = 0;
                                            }

                                            if (v193 && (v107 = *(CMBaseObjectGetVTable() + 16)) != 0)
                                            {
                                              v108 = v107;
                                            }

                                            else
                                            {
                                              v108 = 0;
                                            }

                                            if (v106 != v108 || !*(v106 + 32) || !(*(v108 + 32))(v104, v193))
                                            {
                                              v68 = formatDescriptiona;
                                              v101 = v192;
                                              goto LABEL_299;
                                            }

                                            if (v103 / 2 <= 1)
                                            {
                                              v103 = 1;
                                            }

                                            else
                                            {
                                              v103 /= 2;
                                            }

                                            v109 = v240;
                                            v110 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                            if (!v110)
                                            {
                                              goto LABEL_295;
                                            }

                                            ContiguousSampleOffsetAndSize = v110(v109, &v238);
                                            if (ContiguousSampleOffsetAndSize)
                                            {
                                              goto LABEL_162;
                                            }

                                            v111 = v238;
                                            v112 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                                            if (!v112)
                                            {
LABEL_295:
                                              value_low = 4294954514;
                                              goto LABEL_163;
                                            }

                                            v113 = v112(v111, v103, &v218);
                                            if (v113)
                                            {
                                              value_low = v113;
                                              if (v113 != -12840)
                                              {
                                                goto LABEL_163;
                                              }
                                            }

                                            if (v218 == v103)
                                            {
                                              v114 = v238;
                                              v115 = *(CMBaseObjectGetVTable() + 16);
                                              if (v115)
                                              {
                                                v116 = v115;
                                              }

                                              else
                                              {
                                                v116 = 0;
                                              }

                                              if (v193 && (v117 = *(CMBaseObjectGetVTable() + 16)) != 0)
                                              {
                                                v118 = v117;
                                              }

                                              else
                                              {
                                                v118 = 0;
                                              }

                                              if (v116 != v118 || !*(v116 + 32) || (*(v118 + 32))(v114, v193) != 1)
                                              {
                                                v119 = v218;
                                                v120 = v240;
                                                v240 = v238;
                                                if (v238)
                                                {
                                                  CFRetain(v238);
                                                }

                                                v192 += v119;
                                                if (v120)
                                                {
                                                  CFRelease(v120);
                                                }
                                              }

                                              v37 = v191;
                                            }

                                            v102 += v103;
                                            if (v102 >= value)
                                            {
                                              break;
                                            }

                                            if (v238)
                                            {
                                              CFRelease(v238);
                                              v238 = 0;
                                            }
                                          }

                                          sgffr_createSampleBufferAtCursorUsingBatch_cold_3(&v244);
                                          value_low = LODWORD(v244.value);
                                          goto LABEL_163;
                                        }

                                        goto LABEL_162;
                                      }

                                      v101 = time2.value - v262.value;
                                      v68 = formatDescriptiona;
LABEL_299:
                                      value = v101 + 1;
                                      v60 = v201;
                                      if (v240)
                                      {
                                        CFRelease(v240);
                                        v240 = 0;
                                      }

                                      goto LABEL_301;
                                    }

                                    time2.value = 0;
                                    v80 = a2;
LABEL_214:
                                    if (*(*(CMBaseObjectGetVTable() + 16) + 224))
                                    {
                                      if (HIBYTE(v233))
                                      {
                                        v91 = 0;
                                      }

                                      else
                                      {
                                        v91 = v210;
                                      }

                                      BatchSampleTimingAndSizes = FigSampleCursorGetBatchSampleTimingAndSizes(v239, value, v80, &time2, v64, v91);
                                      if (BatchSampleTimingAndSizes)
                                      {
LABEL_219:
                                        value_low = BatchSampleTimingAndSizes;
                                        v68 = formatDescriptiona;
LABEL_344:
                                        v31 = v206;
                                        goto LABEL_347;
                                      }
                                    }

                                    else
                                    {
                                      if (HIBYTE(v233))
                                      {
                                        v93 = 0;
                                      }

                                      else
                                      {
                                        v93 = v210;
                                      }

                                      BatchSampleTimingAndSizes = FigSampleCursorUtilityGetBatchSampleTimingAndSizes(v239, value, v80, &time2.value, 0, v64, 0, v93);
                                      if (BatchSampleTimingAndSizes)
                                      {
                                        goto LABEL_219;
                                      }
                                    }

                                    value = time2.value;
                                    v68 = formatDescriptiona;
                                    v60 = v201;
                                    if ((v201 & 1) == 0)
                                    {
                                      v195 = time2.value;
                                      if (time2.value >= 1)
                                      {
                                        p_decodeTimeStamp = &v204->decodeTimeStamp;
                                        v95 = time2.value;
                                        do
                                        {
                                          if (p_decodeTimeStamp->flags)
                                          {
                                            v96 = *&p_decodeTimeStamp->value;
                                            v262.epoch = p_decodeTimeStamp->epoch;
                                            *&v262.value = v96;
                                            time1 = *(v37 + 88);
                                            CMTimeSubtract(&v263, &v262, &time1);
                                            v97 = *&v263.value;
                                            p_decodeTimeStamp->epoch = v263.epoch;
                                            *&p_decodeTimeStamp->value = v97;
                                          }

                                          p_decodeTimeStamp += 3;
                                          --v95;
                                        }

                                        while (v95);
                                        v195 = value;
                                        v68 = formatDescriptiona;
                                        v60 = v201;
                                      }
                                    }

                                    if (!HIBYTE(v233))
                                    {
                                      if (value >= 1)
                                      {
                                        v98 = 0;
                                        v89 = 0;
                                        while (1)
                                        {
                                          v99 = v89;
                                          v89 += v210[v98];
                                          if (v89 <= v99)
                                          {
                                            break;
                                          }

                                          if (value == ++v98)
                                          {
                                            goto LABEL_289;
                                          }
                                        }

                                        sgffr_createSampleBufferAtCursorUsingBatch_cold_2(&v263);
                                        value_low = LODWORD(v263.value);
                                        goto LABEL_344;
                                      }

                                      v89 = 0;
LABEL_289:
                                      v194 = value;
LABEL_302:
                                      if (v60)
                                      {
                                        PTSAndDTSAndDuration = sgffr_getPTSAndDTSAndDuration(v37, v239, &v204->duration);
                                        if (PTSAndDTSAndDuration)
                                        {
                                          goto LABEL_343;
                                        }
                                      }

                                      if (HIBYTE(v233))
                                      {
                                        v122 = *v210;
                                        if (a5 == 1)
                                        {
                                          v123 = v237 + v234 * v122;
                                        }

                                        else
                                        {
                                          v123 = v122 + v122 * (v234 - value) + v237;
                                        }

                                        v225 = v123;
                                      }

                                      else
                                      {
                                        v225 = v237;
                                        if (v234 < 1)
                                        {
                                          goto LABEL_314;
                                        }

                                        PTSAndDTSAndDuration = sgffr_getContiguousSampleOffsetAndSize(v239, &v225, 0);
                                        if (PTSAndDTSAndDuration)
                                        {
                                          goto LABEL_343;
                                        }

                                        if (!HIBYTE(v233))
                                        {
LABEL_314:
                                          if (!*(v37 + 33))
                                          {
                                            PTSAndDTSAndDuration = sgffr_checkByteRangeForByteStream(v37, v220, v225, v89);
                                            if (PTSAndDTSAndDuration)
                                            {
                                              goto LABEL_343;
                                            }
                                          }

                                          if (v241 == 3)
                                          {
                                            sgffr_checkDataAvailability(a1, v221, v220, v225, v89, &v241);
                                          }

                                          if (*(v37 + 33))
                                          {
                                            goto LABEL_318;
                                          }

                                          if (!*(v37 + 32))
                                          {
                                            v156 = sgffr_readFromByteStreamCreatingBlockBuffer(v37, v220, v89, v225, &dataBuffer);
                                            if (v156)
                                            {
                                              value_low = v156;
                                              sgffr_createSampleBufferAtCursorUsingBatch_cold_7();
                                              goto LABEL_344;
                                            }

LABEL_318:
                                            v124 = 0;
                                            v125 = 1;
                                            goto LABEL_319;
                                          }

                                          PTSAndDTSAndDuration = CMBlockBufferCreateEmpty(*v37, 0, 0, &dataBuffer);
                                          if (!PTSAndDTSAndDuration)
                                          {
                                            if (v241 == 4)
                                            {
                                              v158 = CFGetAllocator(a1);
                                              PTSAndDTSAndDuration = SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead(v158, a1, v221, &makeDataReadyRefcon);
                                              if (PTSAndDTSAndDuration)
                                              {
                                                goto LABEL_343;
                                              }

                                              v124 = sgffr_makeDataReady_deferUntilMakeDataReadyPolicyOnly;
                                              v125 = 0;
                                            }

                                            else
                                            {
                                              v125 = 0;
                                              v124 = 0;
                                            }

LABEL_319:
                                            DataReadyRefcon = CMSampleBufferCreate(*v37, dataBuffer, v125, v124, makeDataReadyRefcon, v68, value, v195, v204, v194, v210, &sbuf);
                                            if (!DataReadyRefcon)
                                            {
                                              v127 = makeDataReadyRefcon;
                                              if (!makeDataReadyRefcon)
                                              {
LABEL_323:
                                                if (CMFormatDescriptionGetMediaType(v68) != 1936684398 || *(v37 + 35) || *(v37 + 36))
                                                {
                                                  if (v240)
                                                  {
                                                    CFRelease(v240);
                                                    v240 = 0;
                                                  }

                                                  v128 = FigSampleCursorCopy(a2, &v240);
                                                  if (v128)
                                                  {
                                                    value_low = v128;
                                                    sgffr_createSampleBufferAtCursorUsingBatch_cold_6();
                                                    goto LABEL_346;
                                                  }

                                                  FigSampleCursorSetProperty(v240, @"EagerlyFetchSampleDependencyAttributes", *MEMORY[0x1E695E4D0]);
                                                  if (value >= 1)
                                                  {
                                                    v129 = 0;
                                                    while (1)
                                                    {
                                                      sgffr_attachMediaSampleAttachmentsToSampleBuffer(v37, v240, sbuf, v129);
                                                      v130 = v240;
                                                      v131 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                                                      if (!v131)
                                                      {
                                                        break;
                                                      }

                                                      DataReadyRefcon = v131(v130, 1, &v218);
                                                      if (DataReadyRefcon)
                                                      {
                                                        goto LABEL_499;
                                                      }

                                                      if (value == ++v129)
                                                      {
                                                        goto LABEL_334;
                                                      }
                                                    }

                                                    value_low = 4294954514;
                                                    goto LABEL_346;
                                                  }

LABEL_334:
                                                  CFRelease(v240);
                                                  v240 = 0;
                                                }

                                                if (!a9 || (v132 = a9(a10, a11, sbuf), !v132))
                                                {
                                                  v31 = v206;
                                                  if (*(v37 + 32))
                                                  {
                                                    v133 = CFGetAllocator(a1);
                                                    v134 = SampleGeneratorReadCompletionInfoCreate(v133, sbuf, 0, 0, 0, 0, v225, v89, &v216);
                                                    if (v134)
                                                    {
                                                      value_low = v134;
                                                      goto LABEL_164;
                                                    }

                                                    TimeNeededInNanosecondsAndReadSchedulerFlags = sgffr_getTimeNeededInNanosecondsAndReadSchedulerFlags(v37, sbuf, v241, v212, a2, &v223);
                                                    v136 = v221;
                                                    sgffr_rememberScheduledIOForSampleBuffer(v221, sbuf);
                                                    if (v205)
                                                    {
                                                      v137 = FigScheduledIOBatchAddRead(v205, v225, v89, dataBuffer, a1, v216, TimeNeededInNanosecondsAndReadSchedulerFlags, v223, &invalidateRefCon);
                                                    }

                                                    else
                                                    {
                                                      v137 = FigScheduledIORequestRead(v136, v225, v89, dataBuffer, a1, v216, TimeNeededInNanosecondsAndReadSchedulerFlags, v223, &invalidateRefCon);
                                                    }

                                                    value_low = v137;
                                                    v68 = formatDescriptiona;
                                                    v67 = v204;
                                                    if (v137)
                                                    {
                                                      sgffr_createSampleBufferAtCursorUsingBatch_cold_4(v137, &sbuf);
                                                      LODWORD(v64) = v199;
                                                      v66 = v197;
LABEL_349:
                                                      if (sbuf)
                                                      {
                                                        CFRelease(sbuf);
                                                      }

                                                      goto LABEL_351;
                                                    }

                                                    v216 = 0;
                                                    v157 = invalidateRefCon;
                                                    if (makeDataReadyRefcon)
                                                    {
                                                      *(makeDataReadyRefcon + 4) = invalidateRefCon;
                                                    }

                                                    CMSampleBufferSetInvalidateCallback(sbuf, sgffr_invalidateSampleBuffer, v157);
                                                  }

                                                  sgffr_setSampleBufferAttachments(v37, sbuf, v219, v225);
                                                  value_low = 0;
                                                  v215 = sbuf;
                                                  sbuf = 0;
                                                  LODWORD(v64) = v199;
                                                  v66 = v197;
                                                  v67 = v204;
LABEL_351:
                                                  if (dataBuffer)
                                                  {
                                                    CFRelease(dataBuffer);
                                                  }

                                                  if (v64)
                                                  {
                                                    free(v67);
                                                  }

                                                  if (v66)
                                                  {
                                                    free(v210);
                                                  }

                                                  if (v240)
                                                  {
                                                    CFRelease(v240);
                                                  }

                                                  if (v238)
                                                  {
                                                    CFRelease(v238);
                                                  }

                                                  if (v239)
                                                  {
                                                    CFRelease(v239);
                                                  }

                                                  if (v219)
                                                  {
                                                    CFRelease(v219);
                                                  }

                                                  if (v68)
                                                  {
                                                    CFRelease(v68);
                                                  }

                                                  if (v220)
                                                  {
                                                    CFRelease(v220);
                                                  }

                                                  if (v221)
                                                  {
                                                    CFRelease(v221);
                                                  }

                                                  if (makeDataReadyRefcon)
                                                  {
                                                    CFRelease(makeDataReadyRefcon);
                                                  }

                                                  if (v216)
                                                  {
                                                    CFRelease(v216);
                                                  }

                                                  goto LABEL_375;
                                                }

                                                value_low = v132;
                                                sgffr_createSampleBufferAtCursorUsingBatch_cold_5();
LABEL_346:
                                                v31 = v206;
                                                goto LABEL_347;
                                              }

                                              DataReadyRefcon = CMSampleBufferSetShouldReleaseMakeDataReadyRefcon();
                                              if (!DataReadyRefcon)
                                              {
                                                CFRetain(v127);
                                                goto LABEL_323;
                                              }
                                            }

LABEL_499:
                                            value_low = DataReadyRefcon;
                                            goto LABEL_346;
                                          }

LABEL_343:
                                          value_low = PTSAndDTSAndDuration;
                                          goto LABEL_344;
                                        }

                                        v122 = *v210;
                                      }

                                      v89 = v122 * value;
                                      goto LABEL_314;
                                    }

LABEL_301:
                                    v89 = 0;
                                    goto LABEL_302;
                                  }

LABEL_199:
                                  v87 = 1;
LABEL_205:
                                  if (((HIBYTE(v233) != 0) & v60) != 0)
                                  {
                                    if (v87)
                                    {
                                      v89 = 0;
                                      v68 = formatDescriptiona;
                                      goto LABEL_302;
                                    }

                                    goto LABEL_237;
                                  }

                                  time2.value = 0;
                                  if (a5 == 1)
                                  {
                                    v90 = a6;
                                  }

                                  else
                                  {
                                    v90 = a2;
                                  }

                                  if (v87)
                                  {
                                    v80 = 0;
                                  }

                                  else
                                  {
                                    v80 = v90;
                                  }

                                  goto LABEL_214;
                                }
                              }

                              else
                              {
                                value_low = 4294954514;
                              }

                              sgffr_createSampleBufferAtCursorUsingBatch_cold_9();
                              goto LABEL_163;
                            }

                            value_low = v76;
                          }

                          else
                          {
                            value_low = 4294954514;
                          }

                          sgffr_createSampleBufferAtCursorUsingBatch_cold_10();
                          goto LABEL_163;
                        }

                        sgffr_createSampleBufferAtCursorUsingBatch_cold_13(&v263);
                        v67 = 0;
                        v66 = 0;
                        value_low = LODWORD(v263.value);
                        v210 = &v228;
LABEL_294:
                        v31 = v206;
                        v68 = formatDescriptiona;
                        goto LABEL_349;
                      }

                      SingleSampleBuffer = sgffr_generateSingleSampleBuffer(a1, a2, a7, v212, a9, a10, a11, v36, &v215);
                      goto LABEL_127;
                    }

                    if (v70 || (v159 = sgffr_copyByteStreamForDataSourceURL(v37, v219, &v220), !v159))
                    {
                      if (!*(v37 + 32))
                      {
                        v31 = v206;
                        goto LABEL_106;
                      }

                      v81 = sgffr_copyScheduledIOForByteStream(v37, v220, &v221);
                      v31 = v206;
                      if (!v81)
                      {
                        goto LABEL_106;
                      }

                      value_low = v81;
                      LODWORD(v64) = 0;
                      v66 = 0;
                      v210 = &v228;
                      v67 = time;
                    }

                    else
                    {
                      value_low = v159;
                      LODWORD(v64) = 0;
                      v66 = 0;
                      v210 = &v228;
                      v67 = time;
                      v31 = v206;
                    }

                    v68 = formatDescriptiona;
                    goto LABEL_349;
                  }

                  sgffr_createSampleBufferAtCursorUsingBatch_cold_1(&v263);
                  LODWORD(v64) = 0;
                  v66 = 0;
                  value_low = LODWORD(v263.value);
LABEL_292:
                  v210 = &v228;
                  v67 = time;
                  v31 = v206;
                  v68 = formatDescriptiona;
                  goto LABEL_349;
                }

                sgffr_createSampleBufferAtCursorUsingBatch_cold_14();
              }

              LODWORD(v64) = 0;
              v66 = 0;
              goto LABEL_292;
            }

            v45 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v45)
            {
              value_low = v45(a2, &v259);
              if (!value_low)
              {
                v203 = a5;
                formatDescription = (v235 - v234);
                if (v235 - v234 >= 1 && v236)
                {
                  v200 = v237 + v236;
                  v46 = 1;
                  flags = *(v38 + 12);
                  epoch = v39;
                  while (1)
                  {
                    v251 = 0;
                    v250 = 0;
                    v249 = 0;
                    v248 = 0;
                    v247 = 0;
                    v246 = 0;
                    v245 = 0;
                    v47 = v259;
                    v48 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                    if (v48)
                    {
                      value_low = v48(v47, formatDescription, &v245);
                    }

                    else
                    {
                      value_low = 4294954514;
                    }

                    if (v245 != formatDescription)
                    {
                      goto LABEL_497;
                    }

                    if (value_low)
                    {
                      break;
                    }

                    v49 = FigSampleCursorCopyChunkDetails(v259, &v253, &cf, &v251, &v250, &v249, &v248, &v247 + 1, &v247, &v246);
                    if (v49)
                    {
                      value_low = v49;
                      emitter = fig_log_get_emitter();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, value_low, "<<<< SampleGen >>>>", 2987);
                      goto LABEL_514;
                    }

                    if (!FigCFEqual() || !FigCFEqual())
                    {
                      goto LABEL_496;
                    }

                    if (cf)
                    {
                      CFRelease(cf);
                      cf = 0;
                    }

                    if (v253)
                    {
                      CFRelease(v253);
                      v253 = 0;
                    }

                    if (!v246)
                    {
LABEL_496:
                      value_low = 0;
                      goto LABEL_497;
                    }

                    v50 = FigSampleCursorCopyFormatDescription(v259, &cf1);
                    if (v50)
                    {
                      value_low = v50;
                      v178 = fig_log_get_emitter();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v178, value_low, "<<<< SampleGen >>>>", 3013);
                      goto LABEL_514;
                    }

                    if (!CFEqual(cf1, cf2))
                    {
                      goto LABEL_496;
                    }

                    if (cf1)
                    {
                      CFRelease(cf1);
                      cf1 = 0;
                    }

                    if (v200 != v251)
                    {
                      goto LABEL_496;
                    }

                    formatDescription = v249;
                    if (v249 < 1)
                    {
                      goto LABEL_496;
                    }

                    v51 = v250;
                    if (!v250)
                    {
                      goto LABEL_496;
                    }

                    if (__CFADD__(v236, v250))
                    {
                      fig_log_get_emitter();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, numSampleSizeEntries, v190);
                      value_low = v179;
                      goto LABEL_514;
                    }

                    v236 += v250;
                    v235 += v249;
                    if (HIBYTE(v247))
                    {
                      if (HIBYTE(v233))
                      {
                        v262.value = 0;
                        if (!v258)
                        {
                          v52 = FigSampleCursorCopySampleLocation_0(a2, 0, &v258, 0, 0);
                          if (v52)
                          {
                            value_low = v52;
                            v187 = fig_log_get_emitter();
                            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v187, value_low, "<<<< SampleGen >>>>", 3057);
                            goto LABEL_514;
                          }
                        }

                        v53 = FigSampleCursorCopySampleLocation_0(v259, 0, &v262, 0, 0);
                        if (v53)
                        {
                          value_low = v53;
                          v182 = fig_log_get_emitter();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v182, value_low, "<<<< SampleGen >>>>", 3064);
                          goto LABEL_514;
                        }

                        if (v258 != v262.value)
                        {
                          HIBYTE(v233) = 0;
                        }

                        a5 = v203;
                      }
                    }

                    else
                    {
                      HIBYTE(v233) = 0;
                    }

                    if (v247)
                    {
                      if (v233)
                      {
                        *&v262.value = *v209;
                        v262.epoch = v39;
                        if ((v263.flags & 0x1D) != 1)
                        {
                          Duration = FigSampleCursorGetDuration(a2, &v263);
                          if (Duration)
                          {
                            value_low = Duration;
                            v186 = fig_log_get_emitter();
                            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v186, value_low, "<<<< SampleGen >>>>", 3080);
                            goto LABEL_514;
                          }
                        }

                        v55 = FigSampleCursorGetDuration(v259, &v262);
                        if (v55)
                        {
                          value_low = v55;
                          v183 = fig_log_get_emitter();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v183, value_low, "<<<< SampleGen >>>>", 3087);
                          goto LABEL_514;
                        }

                        time1 = v263;
                        time2 = v262;
                        if (CMTimeCompare(&time1, &time2))
                        {
                          LOBYTE(v233) = 0;
                        }

                        a5 = v203;
                      }
                    }

                    else
                    {
                      LOBYTE(v233) = 0;
                    }

                    if (v46)
                    {
                      *&v262.value = *v209;
                      v262.epoch = v39;
                      *&time1.value = *v209;
                      time1.epoch = v39;
                      *&time2.value = *v209;
                      time2.epoch = v39;
                      if ((flags & 0x1D) != 1)
                      {
                        PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(a2, &time1);
                        if (PresentationTimeStamp)
                        {
                          value_low = PresentationTimeStamp;
                          v184 = fig_log_get_emitter();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v184, value_low, "<<<< SampleGen >>>>", 3105);
                          goto LABEL_514;
                        }

                        DecodeTimeStamp = FigSampleCursorGetDecodeTimeStamp(a2, &time2);
                        if (DecodeTimeStamp)
                        {
                          value_low = DecodeTimeStamp;
                          v185 = fig_log_get_emitter();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v185, value_low, "<<<< SampleGen >>>>", 3111);
                          goto LABEL_514;
                        }

                        lhs = time2;
                        rhs = time1;
                        CMTimeSubtract(&v244, &lhs, &rhs);
                        v264 = v244.value;
                        flags = v244.flags;
                        timescale = v244.timescale;
                        epoch = v244.epoch;
                      }

                      v58 = FigSampleCursorGetPresentationTimeStamp(v259, &time1);
                      if (v58)
                      {
                        value_low = v58;
                        v180 = fig_log_get_emitter();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v180, value_low, "<<<< SampleGen >>>>", 3120);
                        goto LABEL_514;
                      }

                      v59 = FigSampleCursorGetDecodeTimeStamp(v259, &time2);
                      if (v59)
                      {
                        value_low = v59;
                        v181 = fig_log_get_emitter();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v181, value_low, "<<<< SampleGen >>>>", 3126);
                        goto LABEL_514;
                      }

                      v244 = time2;
                      lhs = time1;
                      CMTimeSubtract(&v262, &v244, &lhs);
                      v244.value = v264;
                      v244.timescale = timescale;
                      v244.flags = flags;
                      v244.epoch = epoch;
                      lhs = v262;
                      if (CMTimeCompare(&v244, &lhs))
                      {
                        v46 = 0;
                      }

                      a5 = v203;
                    }

                    else
                    {
                      v46 = 0;
                    }

                    value_low = 0;
                    v200 += v51;
                    v36 = a12;
                    if (v235 >= a3)
                    {
                      goto LABEL_435;
                    }
                  }

                  v176 = fig_log_get_emitter();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v176, value_low, "<<<< SampleGen >>>>", 2978);
LABEL_514:
                  v70 = 0;
                  formatDescriptiona = 0;
                  v36 = a12;
                  a5 = v203;
                  goto LABEL_132;
                }

                value_low = 0;
                v46 = 1;
LABEL_497:
                v36 = a12;
                a5 = v203;
                goto LABEL_435;
              }
            }

            else
            {
              value_low = 4294954514;
            }

            v161 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v161, value_low, "<<<< SampleGen >>>>", 2950);
LABEL_130:
            v70 = 0;
            formatDescriptiona = 0;
LABEL_131:
            v46 = 1;
            v36 = a12;
            goto LABEL_132;
          }
        }

        else
        {
          value_low = 4294954514;
        }

        v88 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v88, value_low, "<<<< SampleGen >>>>", 2932);
        goto LABEL_130;
      }
    }

    else
    {
      value_low = 4294954514;
    }

    v69 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v69, value_low, "<<<< SampleGen >>>>", 2926);
    goto LABEL_130;
  }

  value_low = sgffr_generateSingleSampleBuffer(a1, a2, a7, v212, a9, a10, a11, a12, &v215);
LABEL_375:
  if (!value_low)
  {
    goto LABEL_378;
  }

  if (value_low != -12841)
  {
    goto LABEL_492;
  }

LABEL_377:
  if ((v213 & 1) == 0)
  {
    v138 = 0;
    v244.value = 0;
    lhs.value = 0;
    rhs.value = 0;
    v215 = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      v139 = 0x7FFFFFFF;
    }

    else
    {
      v139 = a3;
    }

    v140 = a4 - 1;
    if (a4 == 1 || !a5)
    {
      goto LABEL_469;
    }

    v263 = **&MEMORY[0x1E6960C70];
    memset(&v262, 0, sizeof(v262));
    v141 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v141)
    {
      v141(a2, &v263);
    }

    if (a3 >= 1 && (v263.flags & 0x1D) == 1)
    {
      *time = v263;
      CMTimeMultiply(&v262, time, v139);
    }

    else
    {
      CMTimeMake(time, 1, 2);
      v262 = *time;
    }

    v142 = v31;
    if (a5 == 1)
    {
      v143 = -1;
    }

    else
    {
      time1 = **&MEMORY[0x1E6960CC0];
      time2 = v262;
      CMTimeSubtract(time, &time1, &time2);
      v262 = *time;
      v143 = 1;
      v140 = 1 - a4;
    }

    v144 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v144)
    {
      v145 = v144(a2, &lhs);
      if (v145)
      {
        goto LABEL_516;
      }

      v146 = lhs.value;
      time1 = v262;
      v147 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (!v147)
      {
        goto LABEL_407;
      }

      *time = time1;
      v148 = v147(v146, time);
      if (v148)
      {
        value_low = v148;
        if (v148 != -12840)
        {
          goto LABEL_408;
        }
      }

      v149 = lhs.value;
      if (a4 < 1)
      {
LABEL_451:
        if (a6)
        {
          v165 = *(CMBaseObjectGetVTable() + 16);
          v166 = v165 ? v165 : 0;
          if (v149 && (v167 = *(CMBaseObjectGetVTable() + 16)) != 0)
          {
            v168 = v167;
          }

          else
          {
            v168 = 0;
          }

          v169 = v166 == v168 && *(v166 + 32) ? (*(v168 + 32))(a6, v149) : 0;
          if (v143 == v169)
          {
            v149 = a6;
          }
        }

        if (a5 == -1)
        {
          v138 = a2;
        }

        else
        {
          v138 = v149;
        }

        if (a5 == -1)
        {
          a2 = v149;
        }

        v31 = v142;
LABEL_469:
        v170 = *(*(CMBaseObjectGetVTable() + 16) + 112);
        if (v170)
        {
          v171 = v170(a2, v138, &v244);
          value_low = v171;
          if (v171 == -12840)
          {
            goto LABEL_477;
          }

          if (!v171)
          {
            if (!a9 || (v172 = a9(a10, a11, v244.value), !v172))
            {
              value_low = 0;
              v215 = v244.value;
              v244.value = 0;
              goto LABEL_479;
            }

            value_low = v172;
            v173 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v173, value_low, "<<<< SampleGen >>>>", 1311);
LABEL_477:
            if (v244.value)
            {
              CFRelease(v244.value);
            }

LABEL_479:
            if (rhs.value)
            {
              CFRelease(rhs.value);
            }

            if (lhs.value)
            {
              CFRelease(lhs.value);
            }

            if (!v31 || value_low)
            {
              goto LABEL_492;
            }

LABEL_485:
            *v31 = v215;
            return value_low;
          }
        }

        else
        {
          value_low = 4294954514;
        }

        v174 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v174, value_low, "<<<< SampleGen >>>>", 1304);
        goto LABEL_477;
      }

      *time = 0;
      v150 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v150)
      {
        goto LABEL_407;
      }

      v145 = v150(a2, &rhs);
      if (v145)
      {
LABEL_516:
        value_low = v145;
        goto LABEL_408;
      }

      v151 = rhs.value;
      v152 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (v152)
      {
        v145 = v152(v151, v140, time);
        if (!v145)
        {
          if (v140 == *time)
          {
            v153 = rhs.value;
            v154 = *(CMBaseObjectGetVTable() + 16);
            v155 = v154 ? v154 : 0;
            if (v149 && (v162 = *(CMBaseObjectGetVTable() + 16)) != 0)
            {
              v163 = v162;
            }

            else
            {
              v163 = 0;
            }

            v164 = v155 == v163 && *(v155 + 32) ? (*(v163 + 32))(v153, v149) : 0;
            if (v143 == v164)
            {
              v149 = rhs.value;
            }
          }

          goto LABEL_451;
        }

        goto LABEL_516;
      }
    }

LABEL_407:
    value_low = 4294954514;
LABEL_408:
    v31 = v142;
    goto LABEL_477;
  }

LABEL_378:
  if (v31)
  {
    goto LABEL_485;
  }

LABEL_492:
  if (v215)
  {
    CFRelease(v215);
  }

  return value_low;
}

uint64_t FigSampleCursorCopyFormatDescription(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t sgffr_checkDataAvailability(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, _DWORD *a6)
{
  v19 = 0;
  if (a2)
  {
    VTable = CMBaseObjectGetVTable();
    v12 = *(VTable + 16);
    result = VTable + 16;
    v13 = *(v12 + 40);
    if (!v13)
    {
      return result;
    }

    result = v13(a2, a4, &v19);
  }

  else
  {
    v15 = CMBaseObjectGetVTable();
    v16 = *(v15 + 16);
    result = v15 + 16;
    v17 = *(v16 + 24);
    if (!v17)
    {
      return result;
    }

    result = v17(a3, a4, &v19);
  }

  if (result)
  {
    v18 = 1;
  }

  else
  {
    v18 = v19 >= a5;
  }

  if (!v18)
  {
    *a6 = 2;
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t CMByteStreamReadAndCreateBlockBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4, 0);
}

uint64_t SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead(uint64_t a1, const void *a2, const void *a3, uint64_t *a4)
{
  if (sampleGeneratorMakeDataReadyInfoGetTypeID_onceToken != -1)
  {
    SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v8 = Instance;
    *(Instance + 16) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    *(v8 + 24) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    result = 0;
    *a4 = v8;
  }

  else
  {
    SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t CMByteStreamRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4, 0);
}

uint64_t sgffr_readFromByteStreamCreatingBlockBuffer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, CMBlockBufferRef *a5)
{
  theBuffer = 0;
  if (a3 > 0x2000)
  {
    if (*(a1 + 8))
    {
      CMByteStreamGetCMBaseObject();
      FigCachedFileByteStreamGetClassID();
      if (!CMBaseObjectIsMemberOfClass())
      {
        v15 = 0;
        BlockBuffer = FigMemoryPoolCreateBlockBuffer();
        if (!BlockBuffer)
        {
          BlockBuffer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v15);
          if (!BlockBuffer)
          {
            v12 = v15;
            v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v13)
            {
              goto LABEL_12;
            }

            BlockBuffer = v13(a2, a3, a4, v12, 0);
            if (!BlockBuffer)
            {
              goto LABEL_6;
            }
          }
        }

LABEL_11:
        v11 = BlockBuffer;
        goto LABEL_13;
      }
    }
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v9)
  {
    BlockBuffer = v9(a2, a3, a4, &theBuffer, 0);
    if (!BlockBuffer)
    {
LABEL_6:
      v11 = 0;
      *a5 = theBuffer;
      return v11;
    }

    goto LABEL_11;
  }

LABEL_12:
  v11 = 4294954514;
LABEL_13:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v11;
}

uint64_t sgffr_createBlockBufferWithBufferReference(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, size_t a3, size_t a4, CMBlockBufferRef *blockBufferOut)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v9 = v5;
    v10 = v6;
    sgffr_createBlockBufferWithBufferReference_cold_1(&v8);
    return v8;
  }

  else
  {

    return CMBlockBufferCreateWithBufferReference(a1, a2, a3, a4, 0, blockBufferOut);
  }
}

uint64_t SampleGeneratorReadCompletionInfoCreate(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (sampleGeneratorReadCompletionInfoGetTypeID_onceToken != -1)
  {
    SampleGeneratorReadCompletionInfoCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v17 = Instance;
    *(Instance + 16) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    *(v17 + 24) = ImageBuffer;
    if (ImageBuffer)
    {
      CFRetain(ImageBuffer);
    }

    if (a3)
    {
      *(v17 + 40) = a3;
      *(v17 + 48) = a5;
      *(v17 + 56) = a6;
      *(v17 + 64) = a7;
      *(v17 + 72) = a8;
      if (a4)
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v19)
        {
          v19(a4, v17 + 32);
        }
      }
    }

    result = 0;
    *a9 = v17;
  }

  else
  {
    SampleGeneratorReadCompletionInfoCreate_cold_2(&v21);
    return v21;
  }

  return result;
}

CMTimeValue sgffr_getTimeNeededInNanosecondsAndReadSchedulerFlags(uint64_t a1, opaqueCMSampleBuffer *a2, int a3, char a4, uint64_t a5, _DWORD *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (a4)
  {
    *a6 |= 0x80u;
    return UpTimeNanoseconds;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
LABEL_11:
        *a6 |= 4u;
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      return UpTimeNanoseconds;
    }

    if (!*(a1 + 56))
    {
      return UpTimeNanoseconds;
    }

    CMSampleBufferGetOutputDecodeTimeStamp(&v24, a2);
    value = v24.value;
    flags = v24.flags;
    timescale = v24.timescale;
    epoch = v24.epoch;
    if (*(a1 + 24))
    {
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = v24.flags;
      lhs.epoch = v24.epoch;
      rhs = *(a1 + 112);
      CMTimeSubtract(&v24, &lhs, &rhs);
      value = v24.value;
      flags = v24.flags;
      timescale = v24.timescale;
      epoch = v24.epoch;
    }

    else if (a5)
    {
      dictionaryRepresentation = 0;
      v18 = *MEMORY[0x1E695E480];
      FigSampleCursorGetFigBaseObject();
      CMBaseObjectCopyProperty_0(v19, @"AdvanceDecodeDelta", v18, &dictionaryRepresentation);
      if (dictionaryRepresentation)
      {
        memset(&v24, 0, sizeof(v24));
        CMTimeMakeFromDictionary(&v24, dictionaryRepresentation);
        CFRelease(dictionaryRepresentation);
        lhs = v24;
        rhs = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&lhs, &rhs) >= 1)
        {
          rhs.value = value;
          rhs.timescale = timescale;
          rhs.flags = flags;
          rhs.epoch = epoch;
          v20 = v24;
          CMTimeSubtract(&lhs, &rhs, &v20);
          value = lhs.value;
          flags = lhs.flags;
          timescale = lhs.timescale;
          epoch = lhs.epoch;
        }
      }
    }

    if ((flags & 0x1D) != 1)
    {
      return UpTimeNanoseconds;
    }

    memset(&v24, 0, sizeof(v24));
    CMTimebaseGetTime(&lhs, *(a1 + 56));
    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    CMTimeSubtract(&v24, &rhs, &lhs);
    EffectiveRate = CMTimebaseGetEffectiveRate(*(a1 + 56));
    if (EffectiveRate == 0.0)
    {
      *&v24.value = *MEMORY[0x1E6960CC0];
      v17 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      if (EffectiveRate == 1.0)
      {
LABEL_29:
        rhs = v24;
        v20 = *(a1 + 64);
        CMTimeSubtract(&lhs, &rhs, &v20);
        v24 = lhs;
        rhs = lhs;
        CMTimeConvertScale(&lhs, &rhs, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v24 = lhs;
        return v24.value + FigGetUpTimeNanoseconds();
      }

      rhs = v24;
      CMTimeMultiplyByFloat64(&lhs, &rhs, 1.0 / EffectiveRate);
      *&v24.value = *&lhs.value;
      v17 = lhs.epoch;
    }

    v24.epoch = v17;
    goto LABEL_29;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      return UpTimeNanoseconds;
    }

    goto LABEL_11;
  }

  return FigGetUpTimeNanoseconds();
}

uint64_t sgffr_rememberScheduledIOForSampleBuffer(const void *a1, const void *a2)
{
  MEMORY[0x19A8D3660](&gFigSampleGeneratorSetUpTableOnce, sgffr_setUpTableOnce);
  FigSimpleMutexLock();
  CFDictionarySetValue(gFigSampleGeneratorSampleBufferToScheduledIOTable, a2, a1);

  return FigSimpleMutexUnlock();
}

uint64_t FigScheduledIOBatchAddRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v17)
  {
    return v17(a1, a2, a3, a4, sgffr_markSampleBufferReady, a5, a6, a7, a8, a9);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t sgffr_forgetScheduledIOForSampleBuffer(const void *a1)
{
  MEMORY[0x19A8D3660](&gFigSampleGeneratorSetUpTableOnce, sgffr_setUpTableOnce);
  FigSimpleMutexLock();
  CFDictionaryRemoveValue(gFigSampleGeneratorSampleBufferToScheduledIOTable, a1);

  return FigSimpleMutexUnlock();
}

void sgffr_invalidateSampleBuffer(const void *a1, uint64_t a2)
{
  MEMORY[0x19A8D3660](&gFigSampleGeneratorSetUpTableOnce, sgffr_setUpTableOnce);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(gFigSampleGeneratorSampleBufferToScheduledIOTable, a1);
  if (Value)
  {
    v5 = Value;
    CFRetain(Value);
    CFDictionaryRemoveValue(gFigSampleGeneratorSampleBufferToScheduledIOTable, a1);
    FigSimpleMutexUnlock();
    v6 = FigScheduledIOGetTypeID();
    if (v6 == CFGetTypeID(v5))
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v7)
      {
        v7(v5, a2, 2);
      }
    }

    CFRelease(v5);
  }

  else
  {
    CFDictionaryRemoveValue(gFigSampleGeneratorSampleBufferToScheduledIOTable, a1);

    FigSimpleMutexUnlock();
  }
}

void sgffr_attachMediaSampleAttachmentsToSampleBuffer(uint64_t a1, uint64_t a2, CMSampleBufferRef sbuf, CFIndex a4)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, a4);
    if (ValueAtIndex)
    {
      v9 = ValueAtIndex;
      value = 0;
      theDict = 0;
      FigSampleCursorGetFigBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v12 || (!v12(v11, @"SampleDependencyAttributes", 0, &theDict) ? (v13 = theDict == 0) : (v13 = 1), v13))
      {
        v22 = 0;
        v21 = 0;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 64))
        {
          return;
        }

        v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v14 || v14(a2, &v22 + 1, &v22, 0, &v21))
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, value);
          return;
        }

        v15 = MEMORY[0x1E695E4D0];
        if (!HIBYTE(v22))
        {
          CFDictionarySetValue(v9, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
        }

        if (v22)
        {
          CFDictionarySetValue(v9, *MEMORY[0x1E6960460], *v15);
        }

        if (v21)
        {
          CFDictionarySetValue(v9, *MEMORY[0x1E6960450], *MEMORY[0x1E695E4C0]);
        }
      }

      else
      {
        CFDictionaryApplyFunction(theDict, sgffr_appendAttributesToDictionary, v9);
        CFRelease(theDict);
      }

      if (*(a1 + 36))
      {
        FigSampleCursorGetFigBaseObject();
        v17 = v16;
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          if (!v18(v17, @"SeamIdentifier", 0, &value))
          {
            if (value)
            {
              CFDictionarySetValue(v9, *MEMORY[0x1E6962DD8], value);
              CFRelease(value);
            }
          }
        }
      }
    }
  }
}

void sgffr_setSampleBufferAttachments(uint64_t a1, CMAttachmentBearerRef target, const void *a3, uint64_t a4)
{
  valuePtr = a4;
  if (*(a1 + 33))
  {
    if (a3)
    {
      CMSetAttachment(target, *MEMORY[0x1E6960530], a3, 1u);
      v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      CMSetAttachment(target, *MEMORY[0x1E6960528], v6, 1u);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954451, "<<<< SampleGen >>>>", 1818, v4);
    }
  }
}

uint64_t FigSampleCursorCopySampleLocation_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t sgffr_copyScheduledIOForByteStream(uint64_t a1, const void *a2, void *a3)
{
  FigReadWriteLockLockForRead();
  v6 = CFDictionaryGetValue(*(*(a1 + 48) + 40), a2);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    FigReadWriteLockUnlockForRead();
    v8 = 0;
  }

  else
  {
    FigReadWriteLockUnlockForRead();
    FigReadWriteLockLockForWrite();
    v9 = CFDictionaryGetValue(*(*(a1 + 48) + 40), a2);
    value = v9;
    if (v9)
    {
      CFRetain(v9);
      v8 = 0;
    }

    else
    {
      v8 = FigScheduledIOCreateForReadingByteStream();
      if (!v8)
      {
        CFDictionarySetValue(*(*(a1 + 48) + 40), a2, 0);
      }
    }

    FigReadWriteLockUnlockForWrite();
    v7 = value;
  }

  *a3 = v7;
  return v8;
}

uint64_t FigSampleCursorGetDecodeTimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigSampleCursorGetDuration(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

void *cvbufferBBufSourceLock(__CVBuffer *a1, size_t a2)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if (CVPixelBufferGetHeight(a1) * BytesPerRow < a2)
  {
    cvbufferBBufSourceLock_cold_1();
  }

  return CVPixelBufferGetBaseAddress(a1);
}

uint64_t sampleGeneratorMakeDataReadyInfoGetTypeIDOnce()
{
  sSampleGeneratorMakeDataReadyInfoClass = 0;
  unk_1EAF18C50 = "SampleGeneratorMakeDataReadyInfo";
  qword_1EAF18C58 = sampleGeneratorMakeDataReadyInfoInit;
  unk_1EAF18C60 = 0;
  qword_1EAF18C68 = sampleGeneratorMakeDataReadyInfoFinalize;
  unk_1EAF18C70 = 0;
  qword_1EAF18C78 = 0;
  unk_1EAF18C80 = 0;
  qword_1EAF18C88 = sampleGeneratorMakeDataReadyInfoCopyDesc;
  result = _CFRuntimeRegisterClass();
  sSampleGeneratorMakeDataReadyInfoTypeID = result;
  return result;
}

void *sampleGeneratorMakeDataReadyInfoInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void sampleGeneratorMakeDataReadyInfoFinalize(uint64_t a1)
{
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
}

__CFString *sampleGeneratorMakeDataReadyInfoCopyDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SampleGeneratorMakeDataReadyInfo: %p>", a1);
  return Mutable;
}

uint64_t FigSampleCursorCopy(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t sampleGeneratorReadCompletionInfoGetTypeIDOnce()
{
  sSampleGeneratorReadCompletionInfoClass = 0;
  unk_1EAF18CC0 = "SampleGeneratorReadCompletionInfo";
  qword_1EAF18CC8 = sampleGeneratorReadCompletionInfoInit;
  unk_1EAF18CD0 = 0;
  qword_1EAF18CD8 = sampleGeneratorReadCompletionInfoFinalize;
  unk_1EAF18CE0 = 0;
  qword_1EAF18CE8 = 0;
  unk_1EAF18CF0 = 0;
  qword_1EAF18CF8 = sampleGeneratorReadCompletionInfoCopyDesc;
  result = _CFRuntimeRegisterClass();
  sSampleGeneratorReadCompletionInfoTypeID = result;
  return result;
}

double sampleGeneratorReadCompletionInfoInit(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void sampleGeneratorReadCompletionInfoFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

__CFString *sampleGeneratorReadCompletionInfoCopyDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SampleGeneratorReadCompletionInfo: %p>", a1);
  return Mutable;
}

uint64_t sgffr_setUpTableOnce()
{
  gFigSampleGeneratorSampleBufferToScheduledIOTable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = FigSimpleMutexCreate();
  gFigSampleGeneratorSampleBufferToScheduledIOMutex = result;
  return result;
}

uint64_t FigSampleCursorGetBatchSampleTimingAndSizes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 224);
  if (!v12)
  {
    return 4294954514;
  }

  return v12(a1, a2, a3, a4, 0, a5, 0, a6);
}

uint64_t FigSampleCursorCopyChunkDetails(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v18)
  {
    return 4294954514;
  }

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t FigSampleCursorSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigSampleCursorGetFigBaseObject();
  v6 = v5;
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 8);
  result = VTable + 8;
  v10 = *(v9 + 56);
  if (v10)
  {

    return v10(v6, a2, a3);
  }

  return result;
}

uint64_t sgffr_commitBatchApply(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {
    result = v5(a2);
  }

  else
  {
    result = 4294954514;
  }

  if (!*a3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t figSampleGeneratorBatch_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFDictionaryApplyFunction(*DerivedStorage, figSampleGeneratorBatch_removeListeners, a1);
  }

  if (!*(DerivedStorage + 32))
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v6)
    {
      v6(a1);
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  FigCFWeakReferenceStore();

  return FigSimpleMutexDestroy();
}

__CFString *figSampleGeneratorBatch_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(0, 0);
  v4 = CFGetRetainCount(a1);
  Count = FigCFDictionaryGetCount();
  v6 = "open";
  v7 = *(DerivedStorage + 32);
  if (v7 > 1)
  {
    v6 = "completed";
  }

  if (v7 == 1)
  {
    v6 = "committed";
  }

  CFStringAppendFormat(Mutable, 0, @"FigSampleGenBatch %p(%d): batchCount=%ld state:%s(%d)", a1, v4, Count, v6, v7);
  return Mutable;
}

uint64_t figSampleGeneratorBatch_removeListeners(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t figSampleGeneratrBatch_completionCallback(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CFSetRemoveValue(*(DerivedStorage + 24), a4);
  if (!CFSetGetCount(*(DerivedStorage + 24)))
  {
    *(DerivedStorage + 32) = 2;
    Count = CFArrayGetCount(*(DerivedStorage + 40));
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 40), v8);
        statusOut = 0;
        if (CMSampleBufferHasDataFailed(ValueAtIndex, &statusOut) || !CMSampleBufferDataIsReady(ValueAtIndex))
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_12;
        }
      }

      if (statusOut == -16751)
      {
        v10 = 4;
      }

      else
      {
        v10 = 3;
      }

      *(DerivedStorage + 32) = v10;
    }

LABEL_12:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return FigSimpleMutexUnlock();
}

uint64_t figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, int a5, const void *a6, unsigned int a7, char a8, uint64_t (*a9)(uint64_t, uint64_t, CMSampleBufferRef), uint64_t a10, uint64_t a11, void **a12)
{
  value = 0;
  cf = 0;
  if (!a1)
  {
    figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_6(&v31);
LABEL_33:
    v19 = 0;
    v21 = v31;
    goto LABEL_13;
  }

  if (!a12)
  {
    figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_5(&v31);
    goto LABEL_33;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v19 = MEMORY[0x19A8D0E00](DerivedStorage + 8);
  if (!v19)
  {
    figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_4(&v31);
LABEL_36:
    v21 = v31;
    goto LABEL_37;
  }

  if (*(DerivedStorage + 32))
  {
    figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_1(&v31);
    goto LABEL_36;
  }

  if (*(DerivedStorage + 36) || !*(*(CMBaseObjectGetVTable() + 16) + 144) || sgffr_copyCursorSampleLocationAndDataSource(v19, a2, 0, 0, 0, 0, 0, 0, 0, 0, &cf))
  {
    goto LABEL_7;
  }

  key = cf;
  v31 = 0;
  v26 = CMBaseObjectGetDerivedStorage();
  if (!*v26)
  {
    v25 = 4341;
LABEL_41:
    if (figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_2(v25, &v31, &v32))
    {
      goto LABEL_7;
    }

    v21 = v32;
LABEL_37:
    FigSimpleMutexUnlock();
    goto LABEL_13;
  }

  if (!key)
  {
    v25 = 4342;
    goto LABEL_41;
  }

  if (!CFDictionaryContainsKey(*v26, key))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v24)
      {
        if (!v24(key, *MEMORY[0x1E695E480], &v31))
        {
          CFDictionarySetValue(*v26, key, v31);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          if (v31)
          {
            CFRelease(v31);
            v31 = 0;
          }
        }
      }
    }
  }

  v23 = CFDictionaryGetValue(*v26, key);
  v31 = v23;
  if (v23)
  {
    CFRetain(v23);
    v20 = v31;
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  if (sgffr_createSampleBufferAtCursorUsingBatch(v19, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v20, &value) || !value)
  {
    figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_3(&v32);
    v21 = v32;
  }

  else
  {
    CFArrayAppendValue(*(DerivedStorage + 40), value);
    v21 = 0;
    *a12 = value;
    value = 0;
  }

  FigSimpleMutexUnlock();
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v21;
}

uint64_t figSampleGeneratorBatch_Commit(uint64_t a1)
{
  if (!a1)
  {
    figSampleGeneratorBatch_Commit_cold_3(&v6);
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 32))
  {
    figSampleGeneratorBatch_Commit_cold_1(&v6);
  }

  else
  {
    v3 = *DerivedStorage;
    if (*DerivedStorage)
    {
      if (*(DerivedStorage + 36))
      {
        *(DerivedStorage + 32) = 2;
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        v4 = 0;
      }

      else
      {
        *(DerivedStorage + 32) = 1;
        v6 = a1;
        v7 = 0;
        CFDictionaryApplyFunction(v3, figSampleGeneratorBatch_commitBatchApply, &v6);
        v4 = v7;
      }

      goto LABEL_7;
    }

    figSampleGeneratorBatch_Commit_cold_2(&v6);
  }

  v4 = v6;
LABEL_7:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t figSampleGeneratorBatch_Cancel(uint64_t a1)
{
  if (!a1)
  {
    figSampleGeneratorBatch_Cancel_cold_1();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 32) == 2)
  {
    v3 = 0;
  }

  else
  {
    *(DerivedStorage + 32) = 4;
    v5 = a1;
    v6 = 0;
    CFDictionaryApplyFunction(*DerivedStorage, figSampleGeneratorBatch_cancelBatchApply, &v5);
    v3 = v6;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t figSampleGeneratorBatch_GetState(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      result = 0;
      *a2 = *(DerivedStorage + 32);
    }

    else
    {
      figSampleGeneratorBatch_GetState_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    figSampleGeneratorBatch_GetState_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t figSampleGeneratorBatch_commitBatchApply(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFSetAddValue(*(DerivedStorage + 24), a2);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v6)
  {
    result = v6(a2);
  }

  else
  {
    result = 4294954514;
  }

  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t figSampleGeneratorBatch_cancelBatchApply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetVTable() + 16);
  if (*v5 >= 2uLL && (v6 = v5[3]) != 0)
  {
    result = v6(a2);
  }

  else
  {
    result = 4294954514;
  }

  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sgffr_initializeSharedMemoryPoolManagement(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  qword_1EAF18D30 = result;
  byte_1EAF18D40 = 1;
  return result;
}

uint64_t sgffr_expediteAllClientRequestsForScheduledIO(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 32);
  if (v6)
  {

    return v6(a2);
  }

  return result;
}

uint64_t FigStreamingAssetDownloadContentConfigSetAlternateQualifiers(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

uint64_t FigStreamingAssetDownloadContentConfigSetAlternate(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

uint64_t FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  if (!a2)
  {
    return 0;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  *(a1 + 40) = MutableCopy;
  if (MutableCopy)
  {
    return 0;
  }

  FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria_cold_1(&v7);
  return v7;
}

uint64_t FigStreamingAssetDownloadContentConfigCreate(uint64_t a1, uint64_t *a2)
{
  dwContentConf_getTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a2 = v4;
  }

  else
  {
    FigStreamingAssetDownloadContentConfigCreate_cold_1(&v6);
    return v6;
  }

  return result;
}