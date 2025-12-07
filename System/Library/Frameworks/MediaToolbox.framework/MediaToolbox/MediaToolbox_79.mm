uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Padding(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDictionaryGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Padding_cold_5(&v20);
    return v20;
  }

  CFDictionaryGetValue(a1, *MEMORY[0x1E69612B0]);
  v5 = FigGeometryDimensionMakeFromDictionary();
  v7 = v6;
  CFDictionaryGetValue(a1, *MEMORY[0x1E69612B8]);
  v8 = FigGeometryDimensionMakeFromDictionary();
  v10 = v9;
  CFDictionaryGetValue(a1, *MEMORY[0x1E69612A8]);
  v11 = FigGeometryDimensionMakeFromDictionary();
  v13 = v12;
  CFDictionaryGetValue(a1, *MEMORY[0x1E69612C0]);
  v14 = FigGeometryDimensionMakeFromDictionary();
  if ((v7 & 0x100000000) == 0)
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Padding_cold_4(&v20);
    return v20;
  }

  if ((v10 & 0x100000000) == 0)
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Padding_cold_3(&v20);
    return v20;
  }

  if ((v13 & 0x100000000) == 0)
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Padding_cold_2(&v20);
    return v20;
  }

  v16 = v15;
  if ((v15 & 0x100000000) == 0)
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Padding_cold_1(&v20);
    return v20;
  }

  v17 = v14;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v5, v7);
  CFStringAppend(Mutable, @" ");
  figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v8, v10);
  CFStringAppend(Mutable, @" ");
  figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v11, v13);
  CFStringAppend(Mutable, @" ");
  figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v17, v16);
  CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling padding", Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_ZIndex(const __CFNumber *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", valuePtr);
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling zIndex", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_ZIndex_cold_1(&v8);
    return v8;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAspectRatio(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFDictionaryGetTypeID()))
  {
    v4 = FigGeometryAspectRatioMakeFromDictionary();
    if (FigGeometryAspectRatioIsValid())
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d %d", v4, HIDWORD(v4));
      CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter aspectRatio", v5);
      if (v5)
      {
        CFRelease(v5);
      }

      return 0;
    }

    else
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAspectRatio_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAspectRatio_cold_2(&v8);
    return v8;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_ActiveArea(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == CFDictionaryGetTypeID()))
  {
    FigGeometryRectMakeFromDictionary();
    FigTTMLDocumentWriterMapPropertyToAttribute_ActiveArea_cold_5(&v4);
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_ActiveArea_cold_6(&v4);
  }

  return v4;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_CellResolution(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == CFDictionaryGetTypeID()))
  {
    FigGeometrySizeMakeFromDictionary();
    FigTTMLDocumentWriterMapPropertyToAttribute_CellResolution_cold_3(&v4);
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_CellResolution_cold_4(&v4);
  }

  return v4;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_TextColor(CGColor *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CGColorGetTypeID()))
  {
    v5 = FigTTMLCGColorCopyAsTTMLColorSyntax(a1);
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling color", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_TextColor_cold_1(&v7);
    return v7;
  }
}

double FigTTMLDocumentWriterMapPropertyToAttribute_FontWeight(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FontWeight_cold_1(&v8);
    return result;
  }

  if (CFEqual(a1, *MEMORY[0x1E69614B0]))
  {
    v6 = kFigTTML_AttributeValue_tts_fontWeight_normal;
LABEL_7:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling fontWeight", *v6);
    return result;
  }

  if (CFEqual(a1, *MEMORY[0x1E69614A8]))
  {
    v6 = kFigTTML_AttributeValue_tts_fontWeight_bold;
    goto LABEL_7;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 537, v2);
}

double FigTTMLDocumentWriterMapPropertyToAttribute_FontStyle(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FontStyle_cold_1(&v8);
    return result;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961490]))
  {
    v6 = kFigTTML_AttributeValue_tts_fontStyle_normal;
LABEL_9:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling fontStyle", *v6);
    return result;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961488]))
  {
    v6 = kFigTTML_AttributeValue_tts_fontStyle_italic;
    goto LABEL_9;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961498]))
  {
    v6 = kFigTTML_AttributeValue_tts_fontStyle_oblique;
    goto LABEL_9;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 557, v2);
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Decoration(const __CFNumber *a1, __CFDictionary *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    v5 = valuePtr;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = 0;
      v9 = 1;
      v12[0] = 1;
      v13 = @"underline";
      v14 = 2;
      v15 = @"lineThrough";
      v16 = 4;
      v17 = @"overline";
      do
      {
        if ((v12[v8] & v5) != 0)
        {
          if (!v9)
          {
            CFStringAppend(v7, @" ");
          }

          CFStringAppend(v7, *&v12[v8 + 2]);
          v9 = 0;
        }

        v8 += 4;
      }

      while (v8 != 12);
      if (!CFStringGetLength(v7))
      {
        CFStringAppend(v7, @"none");
      }

      CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling textDecoration", v7);
      CFRelease(v7);
    }

    else
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_Decoration_cold_1(v12, a2);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Decoration_cold_2(v12);
    return v12[0];
  }
}

double FigTTMLDocumentWriterMapPropertyToAttribute_TextAlign(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_TextAlign_cold_1(&v7);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_textAlign_start;
LABEL_13:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling textAlign", *v5);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_textAlign_end;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_textAlign_center;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_textAlign_left;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_textAlign_right;
    goto LABEL_13;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 642, v2);
}

double FigTTMLDocumentWriterMapPropertyToAttribute_TextCombine(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_TextCombine_cold_1(&v8);
    return result;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961508]))
  {
    v6 = kFigTTML_AttributeValue_tts_textCombine_none;
LABEL_7:
    CFDictionarySetValue(a2, @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical combine", *v6);
    return result;
  }

  if (CFEqual(a1, *MEMORY[0x1E69614F8]))
  {
    v6 = kFigTTML_AttributeValue_tts_textCombine_all;
    goto LABEL_7;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 662, v2);
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_LinePadding(const void *a1, __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a1 && (v5 = CFGetTypeID(a1), v5 == CFDictionaryGetTypeID()))
  {
    v6 = FigGeometryDimensionMakeFromDictionary();
    if ((v7 & 0x100000000) != 0)
    {
      figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v6, v7);
      CFDictionarySetValue(a2, @"urn:ebu:tt:style linePadding", Mutable);
      v8 = 0;
    }

    else
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_LinePadding_cold_1(&v10);
      v8 = v10;
    }
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_LinePadding_cold_2(&v11);
    v8 = v11;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_LineHeight(const void *a1, __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a1 && (v5 = CFGetTypeID(a1), v5 == CFDictionaryGetTypeID()))
  {
    v6 = FigGeometryDimensionMakeFromDictionary();
    if ((v7 & 0x100000000) != 0)
    {
      figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v6, v7);
      CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling lineHeight", Mutable);
      v8 = 0;
    }

    else
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_LineHeight_cold_1(&v10);
      v8 = v10;
    }
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_LineHeight_cold_2(&v11);
    v8 = v11;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

double FigTTMLDocumentWriterMapPropertyToAttribute_MultiRowAlign(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_MultiRowAlign_cold_1(&v7);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_ebutts_multiRowAlign_start;
LABEL_11:
    CFDictionarySetValue(a2, @"urn:ebu:tt:style multiRowAlign", *v5);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_ebutts_multiRowAlign_center;
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_ebutts_multiRowAlign_end;
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_ebutts_multiRowAlign_auto;
    goto LABEL_11;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 721, v2);
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_TextOutline(const void *a1, __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != FigCaptionTextOutlineGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_TextOutline_cold_1(&v13);
    v11 = v13;
    if (!Mutable)
    {
      return v11;
    }

    goto LABEL_11;
  }

  Thickness = FigCaptionTextOutlineGetThickness();
  v8 = v7;
  if (FigGeometryDimensionEqualToDimension())
  {
    CFStringAppend(Mutable, @"none");
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling textOutline", Mutable);
  }

  else
  {
    Color = FigCaptionTextOutlineGetColor();
    if (Color)
    {
      v10 = FigTTMLCGColorCopyAsTTMLColorSyntax(Color);
      CFStringAppend(Mutable, v10);
      CFStringAppend(Mutable, @" ");
    }

    else
    {
      v10 = 0;
    }

    figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, Thickness, v8);
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling textOutline", Mutable);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  v11 = 0;
  if (Mutable)
  {
LABEL_11:
    CFRelease(Mutable);
  }

  return v11;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_PreventLineWrapping(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = kFigTTML_AttributeValue_tts_wrapOption_noWrap;
    }

    else
    {
      v4 = kFigTTML_AttributeValue_tts_wrapOption_wrap;
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling wrapOption", *v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_PreventLineWrapping_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_FontFamily(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == FigCaptionFontFamilyNameListGetTypeID()))
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    Count = FigCaptionFontFamilyNameListGetCount();
    if (!Count)
    {
LABEL_10:
      CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling fontFamily", Mutable);
      v10 = 0;
      goto LABEL_11;
    }

    v6 = Count;
    v7 = 0;
    while (1)
    {
      v8 = FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex();
      if (v8)
      {
        v10 = v8;
        goto LABEL_11;
      }

      if (v7)
      {
        CFStringAppend(Mutable, @",");
      }

      MEMORY[0x19A8D3660](&figTTMLDocumentWriter_getTTMLFontFamilyName_once, initMapFromFigCaptionFontFamilyToTTMLFontFamily);
      Value = CFDictionaryGetValue(sMapFromFigCaptionFontFamilyToTTMLFontFamily, 0);
      if (!Value)
      {
        break;
      }

      CFStringAppend(Mutable, Value);
      if (v6 == ++v7)
      {
        goto LABEL_10;
      }
    }

    FigTTMLDocumentWriterMapPropertyToAttribute_FontFamily_cold_1(&v12);
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FontFamily_cold_2(&v12);
    Mutable = 0;
  }

  v10 = v12;
LABEL_11:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_FontSize(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFDictionaryGetTypeID()))
  {
    FigGeometrySizeMakeFromDictionary();
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v5 = FigGeometryDimensionEqualToDimension();
    figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, 0, 0);
    if (!v5)
    {
      CFStringAppend(Mutable, @" ");
      figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, 0, 0);
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling fontSize", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FontSize_cold_1(&v7);
    return v7;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_WritingDirection(CFTypeRef cf, __CFDictionary *a2)
{
  if (*MEMORY[0x1E695E738] == cf)
  {
    v8 = kFigTTML_AttributeValue_tts_unicodeBidi_normal;
  }

  else
  {
    if (!cf || (v4 = CFGetTypeID(cf), v4 != CFNumberGetTypeID()))
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_WritingDirection_cold_1(&v10);
      return v10;
    }

    valuePtr = 0;
    CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
    v5 = valuePtr & 0xE;
    if (valuePtr)
    {
      v6 = kFigTTML_AttributeValue_tts_direction_rtl;
    }

    else
    {
      v6 = kFigTTML_AttributeValue_tts_direction_ltr;
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling direction", *v6);
    if (v5 == 2)
    {
      v8 = kFigTTML_AttributeValue_tts_unicodeBidi_bidiOverride;
    }

    else
    {
      result = 0;
      if (v5)
      {
        return result;
      }

      v8 = kFigTTML_AttributeValue_tts_unicodeBidi_embed;
    }
  }

  CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling unicodeBidi", *v8);
  return 0;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_FillLineGap(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = @"true";
    }

    else
    {
      v4 = @"false";
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml/profile/imsc1#styling fillLineGap", v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FillLineGap_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapWidthAndHeightPropertiesToExtentAttributeAndSet(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4)
{
  v4 = a3;
  v45[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v45[0] = 0;
  p_cf = &cf;
  v38 = 0;
  v39 = 0;
  v42 = 0.0;
  v43 = 0.0;
  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  v7 = 1;
  do
  {
    v8 = v7;
    InitialValue = FigCaptionDynamicStyleGetInitialValue();
    if (InitialValue)
    {
      InitialValue = CFRetain(InitialValue);
    }

    v7 = 0;
    *p_cf = InitialValue;
    p_cf = v45;
  }

  while ((v8 & 1) != 0);
  Mutable = 0;
  if (fabs(Seconds) == INFINITY)
  {
LABEL_37:
    value_low = 0;
    goto LABEL_38;
  }

  alloc = *MEMORY[0x1E695E480];
  v35 = v4;
  while (1)
  {
    if (!cf || (v11 = CFGetTypeID(cf), v11 != CFDictionaryGetTypeID()))
    {
      v34 = 934;
      goto LABEL_47;
    }

    if (!v45[0])
    {
      break;
    }

    v12 = CFGetTypeID(v45[0]);
    if (v12 != CFDictionaryGetTypeID())
    {
      break;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    Mutable = CFStringCreateMutable(alloc, 0);
    v13 = FigGeometryDimensionMakeFromDictionary();
    figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v13, v14);
    CFStringAppend(Mutable, @" ");
    v15 = FigGeometryDimensionMakeFromDictionary();
    figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v15, v16);
    if ((v4->flags & 0x1D) != 1)
    {
      v41 = 0;
LABEL_23:
      FigTTMLDocumentWriterElementSetAttribute(a4, @"http://www.w3.org/ns/ttml#styling extent", Mutable);
      goto LABEL_24;
    }

    time = *v4;
    v17 = Seconds - CMTimeGetSeconds(&time);
    v41 = 0;
    if (v17 == 0.0)
    {
      goto LABEL_23;
    }

    value_low = FigTTMLDocumentWriterElementCreate(alloc, 1, a4, &v41);
    if (!value_low)
    {
      FigTTMLDocumentWriterElementSetAttribute(v41, @"http://www.w3.org/ns/ttml#styling extent", Mutable);
      CMTimeMakeWithSeconds(&time, v17, 1000);
      v19 = CMTimeCopyAsDictionary(&time, alloc);
      FigTTMLDocumentWriterElementSetAttribute(v41, @"begin", v19);
      FigTTMLDocumentWriterElementAddChildElement(a4, v41);
      if (v19)
      {
        CFRelease(v19);
      }
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (value_low)
    {
      goto LABEL_38;
    }

LABEL_24:
    v20 = v42 <= v43;
    v21 = v43 <= v42;
    v22 = &v39;
    v23 = &v42;
    v24 = 1;
    do
    {
      v25 = v24;
      if (v20)
      {
        v26 = *v22 + 1;
        if (v26 == FigCaptionDynamicStyleGetKeyFrameCount())
        {
          *v23 = INFINITY;
        }

        else
        {
          *v22 = v26;
          FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
        }
      }

      v24 = 0;
      v22 = &v38;
      v20 = v21;
      v23 = &v43;
    }

    while ((v25 & 1) != 0);
    v27 = v42 <= v43;
    v28 = v43 <= v42;
    v29 = &cf;
    v30 = &v42;
    v31 = 1;
    do
    {
      v32 = v31;
      if (v27)
      {
        if (*v29)
        {
          CFRelease(*v29);
          *v29 = 0;
        }

        FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
        Seconds = *v30;
      }

      v31 = 0;
      v27 = v28;
      v30 = &v43;
      v29 = v45;
    }

    while ((v32 & 1) != 0);
    v4 = v35;
    if (fabs(Seconds) == INFINITY)
    {
      goto LABEL_37;
    }
  }

  v34 = 935;
LABEL_47:
  figTTMLDocumentWriterFrameRateParameterInserter_CopyProperty_cold_1(v34, &time);
  value_low = LODWORD(time.value);
LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v45[0])
  {
    CFRelease(v45[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return value_low;
}

void initMapFromFigCaptionFontFamilyToTTMLFontFamily()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961190], @"default");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611D0], @"serif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611C8], @"sansSerif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611A0], @"monospace");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611C0], @"proportionalSerif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611B8], @"proportionalSansSerif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611B0], @"monospaceSerif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611A8], @"monospaceSansSerif");
  sMapFromFigCaptionFontFamilyToTTMLFontFamily = Mutable;
}

uint64_t sbtlstringconformer_tx3g_createConformedAttributedStringForAttributedString(const __CFAttributedString *a1, uint64_t a2, __CFAttributedString **a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = a2;
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  String = CFAttributedStringGetString(a1);
  v39.location = 0;
  v39.length = 0;
  CFAttributedStringReplaceString(Mutable, v39, String);
  if (CFAttributedStringGetLength(a1) >= 1)
  {
    v21 = 0;
    v22 = *MEMORY[0x1E69608A8];
    v23 = *MEMORY[0x1E695E4C0];
    v24 = *MEMORY[0x1E6960990];
    do
    {
      effectiveRange.location = 0;
      effectiveRange.length = 0;
      Attributes = CFAttributedStringGetAttributes(a1, v21, &effectiveRange);
      sbtlstringconformer_addColorAttributesToStringBasedOnContentAndMAXSettings(Mutable, Attributes, effectiveRange.location, effectiveRange.length, v11);
      Value = CFDictionaryGetValue(Attributes, v22);
      if (Value)
      {
        v27 = 0;
      }

      else
      {
        v27 = v11 == 0;
      }

      if (v27)
      {
        v28 = v23;
      }

      else
      {
        v28 = Value;
      }

      if (v28)
      {
        CFAttributedStringSetAttribute(Mutable, effectiveRange, v22, v28);
      }

      v29 = CFDictionaryGetValue(Attributes, v24);
      if (v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v11 == 0;
      }

      if (v30)
      {
        v31 = v23;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        CFAttributedStringSetAttribute(Mutable, effectiveRange, v24, v31);
      }

      sbtlstringconformer_addCharacterEdgeStyleAttributeToStringBasedOnContentAndMAXSettings(Mutable, Attributes, effectiveRange.location, effectiveRange.length, v11);
      FigCFDictionaryGetInt64IfPresent();
      if (!v11)
      {
        sbtlstringconformer_addPositioningAttributesToString(Mutable, effectiveRange.location, effectiveRange.length, a4, a5, a6, a7, a8, a9);
      }

      v21 = effectiveRange.length + effectiveRange.location;
    }

    while (v21 < CFAttributedStringGetLength(a1));
  }

  Length = CFAttributedStringGetLength(a1);
  if (v11)
  {
    goto LABEL_27;
  }

  v33 = Length;
  v40.location = 0;
  v40.length = Length;
  CFAttributedStringSetAttribute(Mutable, v40, *MEMORY[0x1E69607B0], *MEMORY[0x1E6960790]);
  FontFamilyAttributes = sbtlstringconformer_createFontFamilyAttributes(0, 0, 0);
  v41.location = 0;
  v41.length = v33;
  CFAttributedStringSetAttributes(Mutable, v41, FontFamilyAttributes, 0);
  if (FontFamilyAttributes)
  {
    CFRelease(FontFamilyAttributes);
  }

  v35 = FigCFAttributedStringSetDouble();
  if (v35 || (v42.location = 0, v42.length = v33, CFAttributedStringSetAttribute(Mutable, v42, *MEMORY[0x1E69607D0], *MEMORY[0x1E695E4D0]), v35 = FigCFAttributedStringSetDouble(), v35))
  {
    v36 = v35;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
LABEL_27:
    v36 = 0;
    *a3 = Mutable;
  }

  return v36;
}

uint64_t sbtlstringconformer_wvtt_createConformedAttributedStringForAttributedString(const __CFAttributedString *a1, uint64_t a2, __CFAttributedString **a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = a2;
  v40[9] = *MEMORY[0x1E69E9840];
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Length = CFAttributedStringGetLength(a1);
  String = CFAttributedStringGetString(a1);
  v41.location = 0;
  v41.length = 0;
  CFAttributedStringReplaceString(Mutable, v41, String);
  if (!v11)
  {
    sbtlstringconformer_addPositioningAttributesToString(Mutable, 0, Length, a4, a5, a6, a7, a8, a9);
  }

  v22 = *MEMORY[0x1E69608A8];
  v40[0] = *MEMORY[0x1E69607D0];
  v40[1] = v22;
  v23 = *MEMORY[0x1E6960928];
  v40[2] = *MEMORY[0x1E6960990];
  v40[3] = v23;
  v24 = *MEMORY[0x1E69607B0];
  v40[4] = *MEMORY[0x1E6960998];
  v40[5] = v24;
  v25 = *MEMORY[0x1E69608E0];
  v40[6] = *MEMORY[0x1E6960978];
  v40[7] = v25;
  v40[8] = *MEMORY[0x1E69609A0];
  if (CFAttributedStringGetLength(a1) >= 1)
  {
    v26 = 0;
    v27 = *MEMORY[0x1E6960858];
    v28 = *MEMORY[0x1E6960880];
    do
    {
      effectiveRange.location = 0;
      effectiveRange.length = 0;
      Attributes = CFAttributedStringGetAttributes(a1, v26, &effectiveRange);
      for (i = 0; i != 9; ++i)
      {
        v31 = v40[i];
        Value = CFDictionaryGetValue(Attributes, v31);
        if (Value)
        {
          CFAttributedStringSetAttribute(Mutable, effectiveRange, v31, Value);
        }
      }

      sbtlstringconformer_addColorAttributesToStringBasedOnContentAndMAXSettings(Mutable, Attributes, effectiveRange.location, effectiveRange.length, v11);
      v33 = CFDictionaryGetValue(Attributes, v27);
      v34 = CFDictionaryGetValue(Attributes, v28);
      FontFamilyAttributes = sbtlstringconformer_createFontFamilyAttributes(v33, v34, v11);
      CFAttributedStringSetAttributes(Mutable, effectiveRange, FontFamilyAttributes, 0);
      if (FontFamilyAttributes)
      {
        CFRelease(FontFamilyAttributes);
      }

      sbtlstringconformer_addCharacterEdgeStyleAttributeToStringBasedOnContentAndMAXSettings(Mutable, Attributes, effectiveRange.location, effectiveRange.length, v11);
      v26 = effectiveRange.length + effectiveRange.location;
    }

    while (v26 < CFAttributedStringGetLength(a1));
  }

  if (!v11 && (v36 = FigCFAttributedStringSetDouble(), v36))
  {
    v37 = v36;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v37 = 0;
    *a3 = Mutable;
  }

  return v37;
}

void sbtlstringconformer_addColorAttributesToStringBasedOnContentAndMAXSettings(__CFAttributedString *a1, const __CFDictionary *a2, CFIndex a3, CFIndex a4, int a5)
{
  WhiteARGBColorArray = FigTextMarkupCreateWhiteARGBColorArray();
  sbtlstringconformer_addColorAttributeToStringUsingResolverFunctionAndDefault(*MEMORY[0x1E6960878], a1, a3, a4, a2, FigStringConformerCreateResolvedForegroundARGBColorArrayUsingMAXColorAndOpacity, WhiteARGBColorArray, a5);
  CFRelease(WhiteARGBColorArray);
  BlackARGBColorArray = FigTextMarkupCreateBlackARGBColorArray();
  sbtlstringconformer_addColorAttributeToStringUsingResolverFunctionAndDefault(*MEMORY[0x1E69607C0], a1, a3, a4, a2, FigStringConformerCreateResolvedWindowARGBColorArrayUsingMAXColorAndOpacity, BlackARGBColorArray, a5);
  CFRelease(BlackARGBColorArray);
  ClearARGBColorArray = FigTextMarkupCreateClearARGBColorArray();
  sbtlstringconformer_addColorAttributeToStringUsingResolverFunctionAndDefault(*MEMORY[0x1E6960810], a1, a3, a4, a2, FigStringConformerCreateResolvedBackgroundARGBColorArrayUsingMAXColorAndOpacity, ClearARGBColorArray, a5);

  CFRelease(ClearARGBColorArray);
}

void sbtlstringconformer_addCharacterEdgeStyleAttributeToStringBasedOnContentAndMAXSettings(__CFAttributedString *a1, CFDictionaryRef theDict, CFIndex a3, CFIndex a4, int a5)
{
  v9 = *MEMORY[0x1E6960818];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6960818]);
  if (a5)
  {
    goto LABEL_9;
  }

  behavior = kMACaptionAppearanceBehaviorUseContentIfAvailable;
  TextEdgeStyle = MACaptionAppearanceGetTextEdgeStyle(kMACaptionAppearanceDomainUser, &behavior);
  if (behavior == kMACaptionAppearanceBehaviorUseValue)
  {
LABEL_5:
    Value = FigStringConformerEdgeStyleForMediaAccessibilityEdgeStyle(TextEdgeStyle);
    goto LABEL_7;
  }

  if (behavior == kMACaptionAppearanceBehaviorUseContentIfAvailable)
  {
    if (Value)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  Value = 0;
LABEL_7:
  if (!Value)
  {
    Value = *MEMORY[0x1E69609C8];
  }

LABEL_9:
  if (Value)
  {
    v13.location = a3;
    v13.length = a4;
    CFAttributedStringSetAttribute(a1, v13, v9, Value);
  }
}

__CFDictionary *sbtlstringconformer_createFontFamilyAttributes(__CFString *a1, const void *a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a3)
  {
    if (a1 || !a2)
    {
      fontStyle = kMACaptionAppearanceFontStyleMonospacedWithSerif;
      v12 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, &fontStyle, kMACaptionAppearanceFontStyleDefault);
      if (fontStyle == kMACaptionAppearanceFontStyleDefault || (v10 = 0, fontStyle == kMACaptionAppearanceFontStyleMonospacedWithSerif) && (!a1 || (v10 = CFRetain(a1)) == 0))
      {
        v10 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965790]);
      }

      if (!v12)
      {
LABEL_17:
        if (v10)
        {
LABEL_20:
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6960858], v10);
          CFRelease(v10);
          return Mutable;
        }

        goto LABEL_18;
      }

      v11 = v12;
    }

    else
    {
      fontStyle = kMACaptionAppearanceFontStyleDefault;
      if (!FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle() || (v8 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, fontStyle)) == 0)
      {
LABEL_18:
        v7 = @"Helvetica";
        goto LABEL_19;
      }

      v9 = v8;
      v10 = CTFontDescriptorCopyAttribute(v8, *MEMORY[0x1E6965790]);
      v11 = v9;
    }

    CFRelease(v11);
    goto LABEL_17;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  v7 = a1;
LABEL_19:
  v10 = CFRetain(v7);
  if (v10)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (a2)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6960880], a2);
  }

  return Mutable;
}

void sbtlstringconformer_addColorAttributeToStringUsingResolverFunctionAndDefault(const __CFString *key, __CFAttributedString *a2, CFIndex a3, CFIndex a4, CFDictionaryRef theDict, uint64_t (*a6)(const void *, uint64_t), uint64_t a7, int a8)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (a8)
  {
    if (!Value)
    {
      return;
    }

    v16 = CFRetain(Value);
  }

  else
  {
    v16 = a6(Value, a7);
  }

  v17 = v16;
  if (v16)
  {
    v19.location = a3;
    v19.length = a4;
    CFAttributedStringSetAttribute(a2, v19, key, v16);

    CFRelease(v17);
  }
}

uint64_t remoteXPCFigCaptionGroupConverterClient_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 9) = 1;
  return result;
}

__CFString *remoteXPCFigCaptionGroupConverter_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 9))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigCaptionGroupConverterRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

void remoteXPCFigCaptionGroupConverter_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    emitter = fig_log_get_emitter();
    v6 = v2;
    v7 = 4294954511;
    v8 = 81;
  }

  else
  {
    if (!*(DerivedStorage + 9))
    {
      *a2 = *DerivedStorage;
      return;
    }

    emitter = fig_log_get_emitter();
    v6 = v2;
    v7 = 4294951142;
    v8 = 87;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v7, "<<<< FigCaptionGroupConverterRemoteXPC >>>>", v8, v6);
}

void FigSampleBufferProcessorCreateForTemporalMetadataFilter(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (a3)
  {
    FigSampleBufferProcessorGetClassID();
    if (!CMDerivedObjectCreate())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a2)
      {
        v7 = CFRetain(a2);
      }

      else
      {
        v7 = 0;
      }

      *(DerivedStorage + 56) = v7;
      *(DerivedStorage + 80) = 1;
      *a3 = 0;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< sbp_tmf >>>", 1339, v3);
  }
}

void sbp_tmf_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 64);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 72);
  if (v7)
  {

    CFRelease(v7);
  }
}

__CFString *sbp_tmf_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_TemporalMetadataFilter %p>", a1);
  return Mutable;
}

uint64_t sbp_tmf_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (a2)
    {
      v7 = DerivedStorage;
      if (CFEqual(a2, @"SampleBufferProcessor_TransferMetadataAllowListIdentifiers"))
      {
        v8 = v7[7];
        if (v8)
        {
LABEL_5:
          v9 = CFRetain(v8);
LABEL_9:
          result = 0;
          *a4 = v9;
          return result;
        }

LABEL_8:
        v9 = 0;
        goto LABEL_9;
      }

      if (CFEqual(a2, @"SampleBufferProcessor_TransferMetadataDenyListIdentifiers"))
      {
        v8 = v7[8];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_8;
      }

      if (CFEqual(a2, @"SampleBufferProcessor_TransferMetadataKeepValidIdentifiers"))
      {
        v8 = v7[9];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_8;
      }

      return 4294954501;
    }

    else
    {
      sbp_tmf_copyProperty_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    sbp_tmf_copyProperty_cold_2(&v12);
    return v12;
  }
}

uint64_t sbp_tmf_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    sbp_tmf_setProperty_cold_1(&v9);
    return v9;
  }

  v6 = DerivedStorage;
  if (!CFEqual(a2, @"SampleBufferProcessor_TransferMetadataAllowListIdentifiers"))
  {
    if (CFEqual(a2, @"SampleBufferProcessor_TransferMetadataDenyListIdentifiers"))
    {
      v7 = v6[8];
      v6[8] = a3;
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (!CFEqual(a2, @"SampleBufferProcessor_TransferMetadataKeepValidIdentifiers"))
      {
        return 4294954501;
      }

      v7 = v6[9];
      v6[9] = a3;
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_4;
  }

  v7 = v6[7];
  v6[7] = a3;
  if (a3)
  {
LABEL_4:
    CFRetain(a3);
  }

LABEL_5:
  if (v7)
  {
    CFRelease(v7);
  }

  return 0;
}

uint64_t sbp_tmf_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = a2;
  *(DerivedStorage + 24) = a3;
  return 0;
}

uint64_t sbp_tmf_isSubsetOf(const __CFArray *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v5 = CFArrayGetCount(a1);
  if (v5 < 1)
  {
    return 1;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    v10.location = 0;
    v10.length = Count;
    result = CFArrayContainsValue(theArray, v10, ValueAtIndex);
    if (!result)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sbp_tmf_selectKeyByIdentifier(uint64_t a1, void *a2)
{
  FigMetadataKeyGetLocalIDUInt32();
  FigMetadataFormatDescriptionGetIdentifierForLocalID();
  FigMetadataFormatDescriptionGetDataTypeForLocalID();
  if (CFArrayGetCount(a2[1]) < 2)
  {
    return 1;
  }

  v3 = 0;
  for (i = 1; ; i += 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2[1], i - 1);
    v6 = CFArrayGetValueAtIndex(a2[1], i);
    if ((!ValueAtIndex || FigCFEqual()) && (!v6 || FigCFEqual()))
    {
      break;
    }

    if (++v3 >= CFArrayGetCount(a2[1]) / 2)
    {
      return 1;
    }
  }

  return 0;
}

CFTypeRef sbp_tmf_CFDictionaryAccessorCreateAndRemoveValue(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *cf = 0u;
  *v11 = 0u;
  v9 = 0u;
  LODWORD(v9) = 2;
  if (a1)
  {
    if (a2)
    {
      v7 = *MEMORY[0x1E695E480];
      cf[1] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      v11[0] = CFArrayCreateMutable(v7, 0, 0);
      sbp_tmf_cfda_walk(0, a1, a2, 0, 2uLL, &v9);
      if (cf[1])
      {
        CFRelease(cf[1]);
      }

      if (v11[0])
      {
        CFRelease(v11[0]);
      }
    }

    else
    {
      sbp_tmf_CFDictionaryAccessorCreateAndRemoveValue_cold_1();
    }

    result = v11[1];
    if (!v11[1])
    {
      return CFRetain(a1);
    }
  }

  else
  {
    sbp_tmf_CFDictionaryAccessorCreateAndRemoveValue_cold_2();
    return 0;
  }

  return result;
}

uint64_t sbp_tmf_containsLocalID(const void *a1, CFTypeRef cf)
{
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFArrayGetTypeID()))
  {
    sbp_tmf_containsLocalID_cold_2();
    return 0;
  }

  if (!a1 || (v5 = CFGetTypeID(a1), v5 != CFDictionaryGetTypeID()))
  {
    sbp_tmf_containsLocalID_cold_1();
    return 0;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6960310]);
  v7.length = CFArrayGetCount(cf);
  v7.location = 0;

  return CFArrayContainsValue(cf, v7, Value);
}

void sbp_tmf_cfda_walk(const void *a1, const void *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  CFArrayAppendValue(*(a6 + 24), a2);
  CFArrayAppendValue(*(a6 + 32), 0);
  if (a4 < a5)
  {
    v13 = (a3 + 24 * a4);
    value = 0;
    if (*v13)
    {
      if (CFDictionaryGetValueIfPresent(a2, *v13, &value))
      {
        sbp_tmf_cfda_walk(*v13, value, a3, a4 + 1, a5, a6);
      }
    }

    else
    {
      Count = CFDictionaryGetCount(a2);
      v15 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      v16 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      v22 = v15;
      v17 = v15;
      v18 = v16;
      CFDictionaryGetKeysAndValues(a2, v17, v16);
      if (Count >= 1)
      {
        v19 = v22;
        v20 = v18;
        do
        {
          v21 = v13[1];
          if (!v21 || v21(*v20, v13[2]))
          {
            sbp_tmf_cfda_walk(*v19, *v20, a3, a4 + 1, a5, a6);
          }

          ++v20;
          ++v19;
          --Count;
        }

        while (Count);
      }

      free(v18);
      free(v22);
    }
  }

  sbp_tmf_cfda_updateAfter(a1, v12, a4, a5, a6);
}

void sbp_tmf_cfda_updateAfter(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a3 == a4)
  {
    v8 = *a5;
    if (*a5 == 2)
    {
      v23 = *(a5 + 4);
      Count = CFArrayGetCount(v23);
      CFArraySetValueAtIndex(v23, Count - 1, 3);
      v25 = *(a5 + 3);
      v13 = CFArrayGetCount(v25) - 1;
      v14 = v25;
      v15 = 0;
    }

    else if (v8 == 1)
    {
      v16 = *(a5 + 3);
      v17 = CFArrayGetCount(v16);
      ValueAtIndex = CFArrayGetValueAtIndex(v16, v17 - 1);
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, ValueAtIndex);
      CFDictionarySetValue(MutableCopy, *(a5 + 1), *(a5 + 2));
      v20 = *(a5 + 4);
      v21 = CFArrayGetCount(v20);
      CFArraySetValueAtIndex(v20, v21 - 1, 2);
      v22 = *(a5 + 3);
      v13 = CFArrayGetCount(v22) - 1;
      v14 = v22;
      v15 = MutableCopy;
    }

    else
    {
      if (v8)
      {
        goto LABEL_9;
      }

      v9 = *(a5 + 4);
      v10 = CFArrayGetCount(v9);
      CFArraySetValueAtIndex(v9, v10 - 1, 1);
      v12 = *(a5 + 2);
      v11 = *(a5 + 3);
      v13 = CFArrayGetCount(v11) - 1;
      v14 = v11;
      v15 = v12;
    }

    CFArraySetValueAtIndex(v14, v13, v15);
  }

LABEL_9:
  v26 = sbp_tmf_cfda_stackPop(*(a5 + 3));
  v27 = sbp_tmf_cfda_stackPop(*(a5 + 4));
  v28 = v27;
  if (a3)
  {
    if (!v27)
    {
      return;
    }

    v29 = *(a5 + 3);
    v30 = CFArrayGetCount(v29);
    v31 = CFArrayGetValueAtIndex(v29, v30 - 1);
    v32 = *(a5 + 4);
    v33 = CFArrayGetCount(v32);
    if (!CFArrayGetValueAtIndex(v32, v33 - 1))
    {
      v34 = *(a5 + 3);
      v35 = CFArrayGetCount(v34);
      v36 = CFArrayGetValueAtIndex(v34, v35 - 1);
      v31 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v36);
      v37 = *(a5 + 3);
      v38 = CFArrayGetCount(v37);
      CFArraySetValueAtIndex(v37, v38 - 1, v31);
      v39 = *(a5 + 4);
      v40 = CFArrayGetCount(v39);
      CFArraySetValueAtIndex(v39, v40 - 1, 2);
    }

    if (v28 == 3)
    {

      CFDictionaryRemoveValue(v31, a1);
      return;
    }

    CFDictionaryReplaceValue(v31, a1, v26);
  }

  else
  {
    if (v26)
    {
      v41 = CFRetain(v26);
    }

    else
    {
      v41 = 0;
    }

    *(a5 + 5) = v41;
  }

  if (v28 == 2 && v26)
  {

    CFRelease(v26);
  }
}

const void *sbp_tmf_cfda_stackPop(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  ValueAtIndex = CFArrayGetValueAtIndex(a1, Count - 1);
  v4 = CFArrayGetCount(a1);
  CFArrayRemoveValueAtIndex(a1, v4 - 1);
  return ValueAtIndex;
}

const __CFArray *sbp_tmf_isARecordOrArrayCollection(uint64_t a1, uint64_t a2)
{
  result = FigMetadataFormatDescriptionGetConformingDataTypesForLocalID();
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    v6.location = 0;
    v6.length = Count;
    v5 = CFArrayContainsValue(v3, v6, *MEMORY[0x1E69628E8]);
    v7.location = 0;
    v7.length = Count;
    return ((v5 | CFArrayContainsValue(v3, v7, *MEMORY[0x1E69628D0])) != 0);
  }

  return result;
}

uint64_t sbp_tmf_getLocalIDs(uint64_t a1, uint64_t a2, __CFArray *a3, char *a4)
{
  cf = 0;
  v17 = 0;
  NumberOfItems = FigBoxedMetadataGetNumberOfItems();
  if (NumberOfItems < 1)
  {
LABEL_13:
    v14 = 0;
    v9 = 1;
    goto LABEL_15;
  }

  v8 = NumberOfItems;
  v9 = 0;
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  while (1)
  {
    LocalIDOfItemAtIndex = 0;
    LocalIDOfItemAtIndex = FigBoxedMetadataGetLocalIDOfItemAtIndex();
    if (!FigMetadataFormatDescriptionQuickTimeWellKnownTypeIsRecognized())
    {
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    v12 = CFNumberCreate(v11, kCFNumberSInt32Type, &LocalIDOfItemAtIndex);
    CFArrayAppendValue(a3, v12);
    if (v12)
    {
      CFRelease(v12);
    }

    if (sbp_tmf_isARecordOrArrayCollection(a1, LocalIDOfItemAtIndex))
    {
      break;
    }

LABEL_12:
    if (v8 == ++v10)
    {
      goto LABEL_13;
    }
  }

  LocalIDs = FigBoxedMetadataCopyValueOfItemAtIndexAsCFType();
  if (!LocalIDs)
  {
    LocalIDs = sbp_tmf_getLocalIDs(a1, cf, a3, &v17);
    v9 = v17;
    if (!LocalIDs)
    {
      if (!v17)
      {
        goto LABEL_14;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_12;
    }
  }

  v14 = LocalIDs;
LABEL_15:
  *a4 = v9;
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t FigTTMLDocumentWriterRegionTimelineAddRegionSlice(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v32 = 0;
  v33[0] = 0;
  if (!a1)
  {
    FigTTMLDocumentWriterRegionTimelineAddRegionSlice_cold_3(&v31);
    value_low = LODWORD(v31.start.value);
    goto LABEL_47;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterRegionTimelineAddRegionSlice_cold_2(&v31);
    goto LABEL_44;
  }

  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 5) || (*(a2 + 3) & 0x8000000000000000) != 0)
  {
    FigTTMLDocumentWriterRegionTimelineAddRegionSlice_cold_1(&v31);
LABEL_44:
    value_low = LODWORD(v31.start.value);
    goto LABEL_45;
  }

  if ((*(a1 + 28) & 1) == 0 || (*(a1 + 52) & 1) == 0 || *(a1 + 56) || (*(a1 + 40) & 0x8000000000000000) != 0)
  {
    v5 = *a2;
    v6 = a2[2];
    *(a1 + 32) = a2[1];
    *(a1 + 48) = v6;
    *(a1 + 16) = v5;
  }

  else
  {
    v25 = *(a1 + 32);
    *&time.start.value = *(a1 + 16);
    *&time.start.epoch = v25;
    *&time.duration.timescale = *(a1 + 48);
    v26 = a2[1];
    *&otherRange.start.value = *a2;
    *&otherRange.start.epoch = v26;
    *&otherRange.duration.timescale = a2[2];
    CMTimeRangeGetUnion(&v31, &time, &otherRange);
    v27 = *&v31.start.epoch;
    *(a1 + 16) = *&v31.start.value;
    *(a1 + 32) = v27;
    *(a1 + 48) = *&v31.duration.timescale;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
LABEL_41:
    value_low = 4294954514;
    goto LABEL_45;
  }

  v9 = *MEMORY[0x1E695E480];
  Mutable = v8(CMBaseObject, *MEMORY[0x1E6961398], *MEMORY[0x1E695E480], v33);
  if (Mutable)
  {
LABEL_54:
    value_low = Mutable;
  }

  else
  {
    if (v33[0])
    {
      Count = CFArrayGetCount(v33[0]);
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        v28 = Count;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v33[0], v13);
          if (v32)
          {
            CFRelease(v32);
            v32 = 0;
          }

          v15 = FigCaptionRegionGetCMBaseObject();
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v16)
          {
            goto LABEL_41;
          }

          Mutable = v16(v15, ValueAtIndex, v9, &v32);
          if (Mutable)
          {
            goto LABEL_54;
          }

          if (v32)
          {
            v17 = CFGetTypeID(v32);
            if (v17 == FigCaptionDynamicStyleGetTypeID())
            {
              if (!CFDictionaryGetValue(*(a1 + 64), ValueAtIndex))
              {
                FigCaptionDynamicStyleGetInitialValue();
                Mutable = FigCaptionDynamicStyleCreateMutable();
                if (Mutable)
                {
                  goto LABEL_54;
                }

                CFDictionarySetValue(*(a1 + 64), ValueAtIndex, 0);
              }

              v18 = a2[1];
              *&v31.start.value = *a2;
              *&v31.start.epoch = v18;
              *&v31.duration.timescale = a2[2];
              *&time.start.value = *&v31.start.value;
              time.start.epoch = *(a2 + 2);
              CMTimeGetSeconds(&time.start);
              time.start = v31.duration;
              CMTimeGetSeconds(&time.start);
              time.start.value = 0;
              KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
              if (KeyFrameCount < 1)
              {
LABEL_34:
                value_low = 0;
              }

              else
              {
                v20 = KeyFrameCount;
                v21 = 0;
                while (1)
                {
                  otherRange.start.value = 0;
                  if (time.start.value)
                  {
                    CFRelease(time.start.value);
                    time.start.value = 0;
                  }

                  v22 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
                  if (v22)
                  {
                    break;
                  }

                  v22 = FigCaptionDynamicStyleAddKeyFrameValue();
                  if (v22)
                  {
                    break;
                  }

                  if (v20 == ++v21)
                  {
                    goto LABEL_34;
                  }
                }

                value_low = v22;
              }

              v12 = v28;
              if (time.start.value)
              {
                CFRelease(time.start.value);
              }

              if (value_low)
              {
                goto LABEL_45;
              }
            }

            else if (v32)
            {
              CFDictionarySetValue(*(a1 + 64), ValueAtIndex, v32);
            }
          }
        }

        while (++v13 != v12);
      }
    }

    value_low = 0;
  }

LABEL_45:
  if (v32)
  {
    CFRelease(v32);
  }

LABEL_47:
  if (v33[0])
  {
    CFRelease(v33[0]);
  }

  return value_low;
}

uint64_t FigTTMLDocumentWriterRegionTimelineIsAnimated(uint64_t a1)
{
  context = 0;
  if (a1)
  {
    CFDictionaryApplyFunction(*(a1 + 64), propertyIsAnimated, &context);
    return context;
  }

  else
  {
    FigTTMLDocumentWriterRegionTimelineIsAnimated_cold_1();
    return 0;
  }
}

void propertyIsAnimated(int a1, CFTypeRef cf, _BYTE *a3)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == FigCaptionDynamicStyleGetTypeID() && FigCaptionDynamicStyleGetKeyFrameCount() >= 2)
    {
      *a3 = 1;
    }
  }
}

uint64_t FigTTMLDocumentWriterRegionTimelineCopyProperty(uint64_t a1, CFTypeRef cf, void *a3)
{
  if (!a1)
  {
    FigTTMLDocumentWriterRegionTimelineCopyProperty_cold_2(&v11);
    return v11;
  }

  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Position_cold_1(&v10);
    return v10;
  }

  Value = CFDictionaryGetValue(*(a1 + 64), cf);
  v8 = Value;
  if (!Value)
  {
    if (!a3)
    {
      return 0;
    }

LABEL_8:
    result = 0;
    *a3 = v8;
    return result;
  }

  CFRetain(Value);
  if (a3)
  {
    goto LABEL_8;
  }

  CFRelease(v8);
  return 0;
}

double FigTTMLDocumentWriterRegionTimelineGetTimeRange@<D0>(_OWORD *result@<X0>, _OWORD *a3@<X8>)
{
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *a3 = *MEMORY[0x1E6960C98];
  a3[1] = v4;
  a3[2] = *(v3 + 32);
  if (!result)
  {
    return FigTTMLDocumentWriterRegionTimelineGetTimeRange_cold_1();
  }

  v5 = result[2];
  *a3 = result[1];
  a3[1] = v5;
  v6 = result[3];
  a3[2] = v6;
  return *&v6;
}

uint64_t FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements_cold_3(&v6);
    return v6;
  }

  if (!a2)
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_fontStyle_cold_1(&v6);
    return v6;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements_cold_1(&v6);
    return v6;
  }

  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  v5 = 0;
  CFDictionaryApplyFunction(*(a1 + 64), writeEachPropertyToAttributeAndSetElements, context);
  return v5;
}

void writeEachPropertyToAttributeAndSetElements(void *key, const void *a2, uint64_t a3)
{
  v26 = 0;
  cf = 0;
  Value = CFDictionaryGetValue(*(a3 + 16), key);
  Mutable = 0;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_30;
  }

  v7 = Value;
  v8 = 0;
  if (!Value)
  {
    goto LABEL_30;
  }

  v9 = CFGetTypeID(a2);
  if (v9 == FigCaptionDynamicStyleGetTypeID())
  {
    KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
    if (KeyFrameCount >= 1)
    {
      v11 = KeyFrameCount;
      v12 = 0;
      Mutable = 0;
      v8 = 0;
      v13 = *MEMORY[0x1E695E480];
      v14 = MEMORY[0x1E6960C98];
      while (1)
      {
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v25 = 0.0;
        v15 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
        if (v15)
        {
          goto LABEL_40;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v15 = v7(cf, Mutable);
        if (v15)
        {
          goto LABEL_40;
        }

        if (v12)
        {
          if (v26)
          {
            CFRelease(v26);
            v26 = 0;
          }

          v15 = FigTTMLDocumentWriterElementCreate(v13, 1, *(a3 + 8), &v26);
          if (v15)
          {
            goto LABEL_40;
          }

          CFDictionaryApplyFunction(Mutable, setAttributeToElement_0, v26);
          v16 = *a3;
          v17 = v14[1];
          v22 = *v14;
          v23 = v17;
          v24 = v14[2];
          if (v16)
          {
            v18 = v16[2];
            v22 = v16[1];
            v23 = v18;
            v24 = v16[3];
          }

          else
          {
            writeEachPropertyToAttributeAndSetElements_cold_1();
          }

          v19 = v25;
          *&v21.value = v22;
          v21.epoch = v23;
          Seconds = CMTimeGetSeconds(&v21);
          if (v8)
          {
            CFRelease(v8);
          }

          CMTimeMakeWithSeconds(&v21, v19 - Seconds, 1000);
          v8 = CMTimeCopyAsDictionary(&v21, v13);
          FigTTMLDocumentWriterElementSetAttribute(v26, @"begin", v8);
          FigTTMLDocumentWriterElementAddChildElement(*(a3 + 8), v26);
        }

        else
        {
          CFDictionaryApplyFunction(Mutable, setAttributeToElement_0, *(a3 + 8));
        }

        if (v11 == ++v12)
        {
          goto LABEL_30;
        }
      }
    }

    Mutable = 0;
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = v7(a2, Mutable);
  if (!v15)
  {
    CFDictionaryApplyFunction(Mutable, setAttributeToElement_0, *(a3 + 8));
    goto LABEL_29;
  }

  v8 = 0;
LABEL_40:
  *(a3 + 24) = v15;
LABEL_30:
  if (v26)
  {
    CFRelease(v26);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigTTMLDocumentWriterRegionTimelineCreate(uint64_t *a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x1E695E480];
    MEMORY[0x19A8D3660](&figTTMLDocumentWriterRegionTimeline_GetTypeID_sRegisterRegionTimelineOnce, figTTMLDocumentWriterRegionTimeline_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v4[8] = Mutable;
      if (Mutable)
      {
        result = 0;
        *a1 = v4;
      }

      else
      {
        FigTTMLDocumentWriterRegionTimelineCreate_cold_1(v4, &v7);
        return v7;
      }
    }

    else
    {
      FigTTMLDocumentWriterRegionTimelineCreate_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigTTMLDocumentWriterRegionTimelineCreate_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t figTTMLDocumentWriterRegionTimeline_Register()
{
  result = _CFRuntimeRegisterClass();
  sRegionTimelineID = result;
  return result;
}

double figTTMLDocumentWriterRegionTimeline_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void figTTMLDocumentWriterRegionTimeline_Finalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

uint64_t flom_registerFigLegibleOutputManager()
{
  result = _CFRuntimeRegisterClass();
  sFigLegibleOutputManagerID = result;
  return result;
}

uint64_t FigLegibleOutputManagerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = (a2 | a3) != 0;
  if ((a4 == 0) == v5)
  {
    FigLegibleOutputManagerCreate_cold_1(label);
    return *label;
  }

  if (!a5)
  {
    FigLegibleOutputManagerCreate_cold_7(label);
    return *label;
  }

  *a5 = 0;
  MEMORY[0x19A8D3660](&FigLegibleOutputManagerGetTypeID_sRegisterFigLegibleOutputManagerOnce, flom_registerFigLegibleOutputManager);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigLegibleOutputManagerCreate_cold_6(label);
    return *label;
  }

  v11 = Instance;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  *(v11 + 72) = Mutable;
  if (!Mutable)
  {
    FigLegibleOutputManagerCreate_cold_5(label);
LABEL_28:
    v18 = *label;
    goto LABEL_20;
  }

  v14 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], 0);
  *(v11 + 64) = v14;
  if (!v14)
  {
    FigLegibleOutputManagerCreate_cold_4(label);
    goto LABEL_28;
  }

  *(v11 + 108) = 0;
  v15 = FigSubtitleRendererUseCoreTextRendererByDefault();
  *(v11 + 109) = v15;
  if (v15)
  {
    FigCoreTextSubtitleRendererCreate(v12, (v11 + 112));
LABEL_8:
    snprintf(__str, 0x100uLL, "com.apple.coremedia.legibleoutput.notificationqueue<%p>", v11);
    v16 = dispatch_queue_create(__str, 0);
    *(v11 + 24) = v16;
    if (v16)
    {
      snprintf(label, 0x100uLL, "com.apple.coremedia.legibleoutput.messagequeue<%p>", v11);
      v17 = dispatch_queue_create(label, 0);
      *(v11 + 16) = v17;
      if (v17)
      {
        if (a4 && v5)
        {
          *(v11 + 32) = a2;
          *(v11 + 40) = a3;
          *(v11 + 48) = FigCFWeakReferenceHolderCreateWithReferencedObject();
        }

        v18 = 0;
        *a5 = CFRetain(v11);
      }

      else
      {
        FigLegibleOutputManagerCreate_cold_2(&v21);
        v18 = v21;
      }

      goto LABEL_20;
    }

    FigLegibleOutputManagerCreate_cold_3(label);
    goto LABEL_28;
  }

  v19 = FigCaptionRendererSessionCreate(0, 0, v11, (v11 + 120));
  if (!v19)
  {
    if (!*(v11 + 120))
    {
      goto LABEL_30;
    }

    v19 = FigCaptionSerializerCreate();
    if (v19)
    {
      goto LABEL_19;
    }

    if (!*(v11 + 128))
    {
LABEL_30:
      v18 = 0;
      goto LABEL_20;
    }

    v19 = FigCaptionRendererSessionSetLegibleOutputDevice(*(v11 + 120));
    if (!v19)
    {
      goto LABEL_8;
    }
  }

LABEL_19:
  v18 = v19;
LABEL_20:
  CFRelease(v11);
  return v18;
}

uint64_t FigLegibleOutputManagerSetLegibleOutputsDict(dispatch_queue_t *cf, CFTypeRef a2)
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
  dispatch_sync_f(v3[2], v6, flom_setLegibleOutputsDictDo);
  return 0;
}

void flom_setLegibleOutputsDictDo(CFTypeRef *a1)
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
  CFDictionaryApplyFunction(*(*a1 + 9), flo_finalizeFigLegibleOutputApplier, 0);
  CFDictionaryRemoveAllValues(v5[9]);
  CFDictionaryRemoveAllValues(v5[8]);
  v6 = v5[7];
  if (v6)
  {
    CFDictionaryApplyFunction(v6, flom_rebuildFigLegibleOutputs_applier, v5);
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

uint64_t FigLegibleOutputManagerSetVideoDisplaySize(dispatch_queue_t *cf, double a2, double a3)
{
  v5 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  context[0] = cf;
  *&context[1] = a2;
  *&context[2] = a3;
  dispatch_sync_f(v5[2], context, flom_setVideoDisplaySizeDo);
  return 0;
}

void flom_setVideoDisplaySizeDo(uint64_t a1)
{
  *(*a1 + 80) = *(a1 + 8);
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t FigLegibleOutputManagerSetCaptionPipelineStrategy(dispatch_queue_t *cf, unsigned int a2)
{
  v3 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v5[0] = cf;
  v5[1] = a2;
  dispatch_sync_f(v3[2], v5, flom_setCaptionPipelineStrategyDo);
  return 0;
}

void flom_setCaptionPipelineStrategyDo(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  *(v2 + 100) = v1;
  if (!v1)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v3 = 0;
LABEL_5:
    *(v2 + 108) = v3;
  }

  CFRelease(v2);
}

uint64_t FigLegibleOutputManagerSetCaptionRenderingStrategy(dispatch_queue_t *cf, unsigned int a2)
{
  v3 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v5[0] = cf;
  v5[1] = a2;
  dispatch_sync_f(v3[2], v5, flom_setCaptionRenderingStrategyDo);
  return 0;
}

void flom_setCaptionRenderingStrategyDo(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  *(v2 + 104) = v1;
  if (!v1)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v3 = 0;
LABEL_5:
    *(v2 + 109) = v3;
  }

  CFRelease(v2);
}

uint64_t FigLegibleOutputManagerSetNonForcedEnabledForMediaType(dispatch_queue_t *cf, int a2, unsigned __int8 a3)
{
  v5 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v7 = cf;
  v8 = a2;
  v9 = a3;
  dispatch_sync_f(v5[2], &v7, flom_setNonForcedEnabledForMediaTypeDo);
  return 0;
}

void flom_setNonForcedEnabledForMediaTypeDo(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 1935832172)
  {
    v6 = *(a1 + 12);
    v4 = *a1;
    *(*a1 + 97) = v6;
    if (!v6)
    {
      CFDictionaryApplyFunction(v4[9], flo_clearPreviousSubtitles, 0);
      v4 = *a1;
      v5 = flo_clearPreviousNativeSamples;
      goto LABEL_7;
    }
  }

  else
  {
    if (v2 != 1668047728)
    {
      goto LABEL_8;
    }

    v3 = *(a1 + 12);
    v4 = *a1;
    *(*a1 + 96) = v3;
    v5 = flo_clearPreviousClosedCaptions;
    if (!v3)
    {
LABEL_7:
      CFDictionaryApplyFunction(v4[9], v5, 0);
LABEL_8:
      v4 = *a1;
      if (!*a1)
      {
        return;
      }
    }
  }

  CFRelease(v4);
}

CFMutableArrayRef flom_ensureRenderPipelinesForFormat(dispatch_queue_t *a1, const void *a2, unsigned __int8 a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (a1)
    {
      v7 = CFRetain(a1);
    }

    else
    {
      v7 = 0;
    }

    v10[0] = v7;
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    v10[2] = Mutable;
    v10[1] = v8;
    v10[3] = a3;
    dispatch_sync_f(a1[2], v10, flom_ensureRenderPipelinesForFormatDo);
  }

  else
  {
    flom_ensureRenderPipelinesForFormat_cold_1();
  }

  return Mutable;
}

uint64_t FigLegibleOutputManagerForgetAboutLegibleOutputRenderPipelines(uint64_t a1)
{
  context = a1;
  dispatch_sync_f(*(a1 + 16), &context, flom_forgetAboutLegibleOutputRenderPipelinesDo);
  return 0;
}

void flom_forgetAboutLegibleOutputRenderPipelinesDo(uint64_t a1)
{
  CFDictionaryRemoveAllValues(*(*a1 + 64));
  v2 = *(*a1 + 72);

  CFDictionaryApplyFunction(v2, flo_forgetAboutRenderPipelines, 0);
}

uint64_t FigLegibleOutputManagerForgetAboutLegibleOutputRenderPipeline(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  dispatch_sync_f(*(a1 + 16), v3, flom_forgetAboutLegibleOutputRenderPipelineDo);
  return 0;
}

void flom_forgetAboutLegibleOutputRenderPipelineDo(const void **a1)
{
  Value = CFDictionaryGetValue(*(*a1 + 8), a1[1]);
  if (Value)
  {
    v3 = Value;
    v4 = Value[8];
    v5 = a1[1];
    if (v4 == v5)
    {
      if (v4)
      {
        CFRelease(v4);
        v3[8] = 0;
        v5 = a1[1];
      }

      v8 = v3[2];
    }

    else
    {
      v6 = v3[9];
      if (v6 == v5)
      {
        if (v5)
        {
          CFRelease(v6);
          v3[9] = 0;
          v5 = a1[1];
        }

        v7 = v3[2];
      }

      else
      {
        FigAgglomeratorSetObjectForKey(v3[2], 0, v5);
        v7 = v3[2];
        v5 = a1[1];
      }

      FigAgglomeratorSetObjectForKey(v7, 0, v5);
      v8 = v3[3];
      v5 = a1[1];
    }

    FigAgglomeratorSetObjectForKey(v8, 0, v5);
    v9 = a1[1];
    v10 = *(*a1 + 8);

    CFDictionaryRemoveValue(v10, v9);
  }
}

double flom_init(uint64_t a1)
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

void flom_finalize(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 64) = 0;
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    CFDictionaryApplyFunction(v6, flo_finalizeFigLegibleOutputApplier, 0);
    v7 = *(a1 + 72);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 72) = 0;
    }
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 112);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 112) = 0;
  }

  if (!*(a1 + 109))
  {
    v10 = *(a1 + 120);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a1 + 128);
    if (v11)
    {

      CFRelease(v11);
    }
  }
}

__CFString *flom_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigLegibleOutputManager %p>", a1);
  return Mutable;
}

void flo_finalizeFigLegibleOutputApplier(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 64);
    if (v3)
    {
      CFRelease(v3);
      *(a2 + 64) = 0;
    }

    v4 = *(a2 + 72);
    if (v4)
    {
      CFRelease(v4);
      *(a2 + 72) = 0;
    }

    keyManager_releaseCallbackContext(*(a2 + 8));
    *(a2 + 8) = 0;
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    FigAgglomeratorDispose(*(a2 + 16));
    *(a2 + 16) = 0;
    FigAgglomeratorDispose(*(a2 + 24));

    free(a2);
  }
}

uint64_t flom_rebuildFigLegibleOutputs_applier(const void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  v12 = **&MEMORY[0x1E6960CC0];
  Value = CFDictionaryGetValue(theDict, @"LegibleOutputKey_AdvanceInterval");
  if (Value)
  {
    seconds.value = 0;
    CFNumberGetValue(Value, kCFNumberDoubleType, &seconds);
    CMTimeMakeWithSeconds(&v12, *&seconds.value, 1000);
  }

  seconds = v12;
  v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x10600401B4FB782uLL);
  v8 = v7;
  if (!v7)
  {
    result = flom_rebuildFigLegibleOutputs_applier_cold_1();
    if ((result & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  result = FigAgglomeratorNew(v7 + 2);
  if (!result)
  {
    result = FigAgglomeratorNew(v8 + 3);
    if (!result)
    {
      result = FigClosedCaptionStringConformerNew(v8 + 1);
      if (!result)
      {
        if (a1)
        {
          v10 = CFRetain(a1);
        }

        else
        {
          v10 = 0;
        }

        *v8 = v10;
        *(v8 + 32) = seconds;
LABEL_11:
        CFDictionaryAddValue(*(a3 + 72), a1, v8);
        CFDictionaryGetValue(theDict, @"LegibleOutputKey_TextStylingResolution");
        result = FigCFEqual();
        if (result)
        {
          v8[56] = 1;
        }

        else
        {
          v8[56] = 0;
        }
      }
    }
  }

  return result;
}

void flom_ensureRenderPipelinesForFormatDo(CFDictionaryRef **a1)
{
  v2 = *a1;
  if (!v2[7])
  {
    goto LABEL_6;
  }

  if (CFDictionaryGetCount(v2[7]) >= 1 && a1[2])
  {
    CFDictionaryApplyFunction((*a1)[7], flom_ensureRenderPipelinesForFormatDo_applier, a1);
  }

  v2 = *a1;
  if (*a1)
  {
LABEL_6:
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    CFRelease(v3);
  }
}

void flom_closedCaptionRenderPipelineDidProduceCommand(const void *a1, int a2, const void *a3, __int128 *a4, void *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x10600400D19BD01uLL);
  if (a5)
  {
    v11 = CFRetain(a5);
  }

  else
  {
    v11 = 0;
  }

  *v10 = v11;
  if (a1)
  {
    v12 = CFRetain(a1);
  }

  else
  {
    v12 = 0;
  }

  v10[1] = v12;
  *(v10 + 4) = a2;
  if (a3)
  {
    v13 = CFRetain(a3);
  }

  else
  {
    v13 = 0;
  }

  v10[3] = v13;
  v14 = *a4;
  v10[6] = *(a4 + 2);
  *(v10 + 2) = v14;
  v15 = a5[2];

  dispatch_async_f(v15, v10, flom_closedCaptionRenderPipelineDidProduceCommandDo);
}

void flom_renderPipelineDidFlush(const void *a1, void *a2)
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

  dispatch_async_f(v7, v4, flom_renderPipelineDidFlushDo);
}

void flom_subtitleRenderPipelineDidProduceStrings(const void *a1, const void *a2, __int128 *a3, char a4, char a5, void *a6, double a7, double a8, double a9, double a10)
{
  v20 = malloc_type_calloc(1uLL, 0x60uLL, 0x106004052824D3DuLL);
  if (a6)
  {
    v21 = CFRetain(a6);
  }

  else
  {
    v21 = 0;
  }

  *v20 = v21;
  if (a1)
  {
    v22 = CFRetain(a1);
  }

  else
  {
    v22 = 0;
  }

  v20[1] = v22;
  v23 = a6[14];
  if (v23)
  {
    v23 = CFRetain(v23);
  }

  v20[2] = v23;
  if (a2)
  {
    v24 = CFRetain(a2);
  }

  else
  {
    v24 = 0;
  }

  v20[3] = v24;
  v25 = *a3;
  v20[6] = *(a3 + 2);
  *(v20 + 2) = v25;
  *(v20 + 56) = a4;
  *(v20 + 57) = a5;
  *(v20 + 8) = a7;
  *(v20 + 9) = a8;
  *(v20 + 10) = a9;
  *(v20 + 11) = a10;
  v26 = a6[2];

  dispatch_async_f(v26, v20, flom_subtitleRenderPipelineDidProduceStringsDo);
}

void flom_subtitleRenderPipelineDidProduceNativeSample(const void *a1, const void *a2, __int128 *a3, char a4, void *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040F1C605A7uLL);
  if (a5)
  {
    v11 = CFRetain(a5);
  }

  else
  {
    v11 = 0;
  }

  *v10 = v11;
  if (a1)
  {
    v12 = CFRetain(a1);
  }

  else
  {
    v12 = 0;
  }

  *(v10 + 1) = v12;
  if (a2)
  {
    v13 = CFRetain(a2);
  }

  else
  {
    v13 = 0;
  }

  *(v10 + 2) = v13;
  v14 = *a3;
  *(v10 + 5) = *(a3 + 2);
  *(v10 + 24) = v14;
  v10[48] = a4;
  v15 = a5[2];

  dispatch_async_f(v15, v10, flom_subtitleRenderPipelineDidProduceNativeSampleDo);
}

void flom_FigCaptionRenderPipelineDidProduceStrings(const void *a1, const void *a2, __int128 *a3, char a4, char a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v20 = malloc_type_calloc(1uLL, 0x68uLL, 0x106004060991E7AuLL);
  if (a6)
  {
    v21 = CFRetain(a6);
  }

  else
  {
    v21 = 0;
  }

  *v20 = v21;
  if (a1)
  {
    v22 = CFRetain(a1);
  }

  else
  {
    v22 = 0;
  }

  *(v20 + 1) = v22;
  if (*(a6 + 109))
  {
    v23 = *(a6 + 112);
    v24 = 16;
    if (!v23)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v23 = *(a6 + 120);
  v24 = 24;
  if (v23)
  {
LABEL_9:
    v23 = CFRetain(v23);
  }

LABEL_10:
  *&v20[v24] = v23;
  if (a2)
  {
    v25 = CFRetain(a2);
  }

  else
  {
    v25 = 0;
  }

  *(v20 + 4) = v25;
  v26 = *a3;
  *(v20 + 7) = *(a3 + 2);
  *(v20 + 40) = v26;
  v20[64] = a4;
  v20[65] = a5;
  *(v20 + 9) = a7;
  *(v20 + 10) = a8;
  *(v20 + 11) = a9;
  *(v20 + 12) = a10;
  v27 = *(a6 + 16);

  dispatch_async_f(v27, v20, flom_FigCaptionRenderPipelineDidProduceStringsDo);
}

void flom_collectAttributedStringsAndSampleBuffersAndInvokeCallbackForItemTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = FigAgglomeratorCopyCurrentAgglomeration(*(a2 + 24));
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = FigAgglomeratorCopyCurrentAgglomeration(*(a2 + 16));
  v21.length = CFArrayGetCount(v9);
  v21.location = 0;
  CFArrayApplyFunction(v9, v21, flom_combineArrayOfArraysIntoFlatArray, Mutable);
  CFRelease(v9);
  time = *a3;
  v10 = CMTimeCopyAsDictionary(&time, v7);
  v11 = *a2;
  time.value = @"LegibleOutputKey";
  *&time.timescale = @"LegibleOutputAttributedString";
  v17[0] = v11;
  v17[1] = Mutable;
  time.epoch = @"FigTime";
  v19 = @"LegibleOutputNativeSamples";
  v17[2] = v10;
  v17[3] = v6;
  v12 = CFDictionaryCreate(v7, &time, v17, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v10);
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = malloc_type_calloc(1uLL, 0x18uLL, 0xE00403260BBE2uLL);
  *v15 = CFRetain(v12);
  v15[1] = v13;
  if (v14)
  {
    v16 = CFRetain(v14);
  }

  else
  {
    v16 = 0;
  }

  v15[2] = v16;
  dispatch_async_f(*(a1 + 24), v15, flom_invokeCallbackAndDisposeContext);
  CFRelease(v12);
  CFRelease(Mutable);
  CFRelease(v6);
}

void flom_invokeCallbackAndDisposeContext(uint64_t a1)
{
  if (*(a1 + 8))
  {
    if (*(a1 + 16))
    {
      v2 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v2)
      {
        v3 = v2;
        (*(a1 + 8))(*a1, v2);
        CFRelease(v3);
      }
    }
  }

  CFRelease(*a1);
  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void flom_invokeFlushCallbackAndDisposeContext(void *a1)
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

void flo_forgetAboutRenderPipelines(uint64_t a1, uint64_t a2)
{
  FigAgglomeratorSetObjectForKey(*(a2 + 16), 0, *(a2 + 64));
  v3 = *(a2 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a2 + 64) = 0;
  }

  FigAgglomeratorSetObjectForKey(*(a2 + 16), 0, *(a2 + 72));
  FigAgglomeratorSetObjectForKey(*(a2 + 24), 0, *(a2 + 72));
  v4 = *(a2 + 72);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 72) = 0;
  }
}

uint64_t CreatePesPrivateForPSLPCM(void *a1)
{
  a1[105] = PSLPCMProcessData;
  a1[106] = PSLPCMCleanPrivateData;
  a1[107] = PSLPCMDeletePrivateData;
  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x10000401C7CE48EuLL);
  a1[6] = v2;
  if (v2)
  {
    return 0;
  }

  CreatePesPrivateForPSLPCM_cold_1(&v4);
  return v4;
}

uint64_t PSLPCMCleanPrivateData(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return result;
}

uint64_t FigSampleBufferRenderSynchronizerCreateWithOptions(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    return 4294950926;
  }

  FigSampleBufferRenderSynchronizerGetClassID();
  OnlyTimebase = CMDerivedObjectCreate();
  if (OnlyTimebase)
  {
    return OnlyTimebase;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigReentrantMutexCreate();
  *DerivedStorage = v7;
  if (!v7)
  {
    return 4294950924;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 24) = Mutable;
  if (!Mutable)
  {
    return 4294950924;
  }

  v9 = CFArrayCreateMutable(0, 0, 0);
  *(DerivedStorage + 40) = v9;
  if (!v9)
  {
    return 4294950924;
  }

  *(DerivedStorage + 48) = 0;
  *(DerivedStorage + 52) = 0;
  HostTimeClock = CMClockGetHostTimeClock();
  OnlyTimebase = CMTimebaseCreateWithSourceClock(a1, HostTimeClock, (DerivedStorage + 8));
  if (OnlyTimebase)
  {
    return OnlyTimebase;
  }

  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
  if (OnlyTimebase)
  {
    return OnlyTimebase;
  }

  if (dword_1EAF17C18)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = 0;
  *a3 = 0;
  return v12;
}

__CFString *synchronizer_copyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 53))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferRenderSynchronizer=%p retainCount=%d%s allocator=%p", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @" rate=%1.3f", *(DerivedStorage + 48));
  CFStringAppendFormat(Mutable, 0, @" masterTimebase=%@", *(DerivedStorage + 8));
  CFStringAppendFormat(Mutable, 0, @" readonlyTimebase=%@", *(DerivedStorage + 16));
  CFStringAppendFormat(Mutable, 0, @" audioRenderers=%@", *(DerivedStorage + 24));
  CFStringAppendFormat(Mutable, 0, @" timebaseStarter=%@", *(DerivedStorage + 32));
  CFStringAppendFormat(Mutable, 0, @" disturbPlaybackAssertions=%@", *(DerivedStorage + 40));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void synchronizer_timebaseRateChangedListener(int a1, int a2, int a3, CMTimebaseRef timebase)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    CMTimebaseGetRate(timebase);

    kdebug_trace();
  }
}

uint64_t synchronizer_applyShouldAttemptImmediatePlaybackStart(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {

    return v7(a1, @"ShouldAttemptImmediatePlaybackStart", a2);
  }

  return result;
}

uint64_t synchronizer_setRateAndTime(uint64_t a1, __int128 *a2, float a3)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  return synchronizer_setRateAndAnchorTime(a1, &v4, MEMORY[0x1E6960C70], a3);
}

uint64_t synchronizer_setRateAndAnchorTime(uint64_t a1, uint64_t a2, CMTime *a3, float a4)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (dword_1EAF17C18)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4 < 0.0)
  {
    v11 = 4294950925;
  }

  else
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 53))
    {
      v11 = 4294954511;
    }

    else
    {
      v10 = *(DerivedStorage + 48);
      if (v10 == a4 && (*(a2 + 12) & 1) == 0)
      {
        v11 = 0;
LABEL_13:
        FigSimpleMutexUnlock();
        goto LABEL_14;
      }

      if (a4 == 0.0 || v10 == 0.0 || (v12 = synchronizer_setRateAndAnchorTimeLowLevel(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0, 0.0), !v12))
      {
        time = *a2;
        v15 = *&a3->value;
        epoch = a3->epoch;
        v11 = synchronizer_setRateAndAnchorTimeLowLevel(a1, &time, &v15, &cf, a4);
        if (!v11)
        {
          *(DerivedStorage + 48) = a4;
          goto LABEL_13;
        }
      }

      else
      {
        v11 = v12;
      }
    }
  }

  if (a4 != 0.0)
  {
    synchronizer_setRateAndAnchorTimeLowLevel(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0, 0.0);
  }

  if (a4 >= 0.0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t synchronizer_setRateAndAnchorTimeLowLevel(uint64_t a1, CMTime *a2, uint64_t a3, void *a4, float a5)
{
  v33 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  if (a5 != 0.0 && CFArrayGetCount(*(DerivedStorage + 40)))
  {
    if (dword_1EAF17C18)
    {
      LODWORD(v30.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  if (dword_1EAF17C18)
  {
    LODWORD(v30.value) = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(v10 + 32))
  {
    if ((a2->flags & 0x1D) == 1)
    {
      v21 = CMTimebaseCopySource(*(v10 + 8));
      v22 = v21;
      memset(&v30, 0, sizeof(v30));
      if (*(a3 + 12))
      {
        HostTimeClock = CMClockGetHostTimeClock();
        time = *a3;
        CMSyncConvertTime(&v30, &time, HostTimeClock, v22);
      }

      else
      {
        CMSyncGetTime(&v30, v21);
      }

      if (dword_1EAF17C18)
      {
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v26 = *(v10 + 8);
      time = *a2;
      immediateSourceTime = v30;
      v20 = CMTimebaseSetRateAndAnchorTime(v26, a5, &time, &immediateSourceTime);
      if (v22)
      {
        CFRelease(v22);
      }

      ValueAtIndex = 0;
      if (!a4)
      {
        return v20;
      }
    }

    else
    {
      if (dword_1EAF17C18)
      {
        LODWORD(v30.value) = 0;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v20 = CMTimebaseSetRate(*(v10 + 8), a5);
      ValueAtIndex = 0;
      if (!a4)
      {
        return v20;
      }
    }

    goto LABEL_34;
  }

  Count = CFArrayGetCount(*(v10 + 24));
  if (Count >= 2)
  {
    v14 = Count;
    v15 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 24), v15);
      if (!ValueAtIndex)
      {
        break;
      }

      v30 = *a2;
      *&type.value = *a3;
      type.epoch = *(a3 + 16);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v17)
      {
        goto LABEL_18;
      }

      time = v30;
      immediateSourceTime = type;
      v18 = v17(ValueAtIndex, &time, &immediateSourceTime, a5);
      if (v18)
      {
        goto LABEL_16;
      }

      if (v14 == ++v15)
      {
        goto LABEL_14;
      }
    }

    v20 = 4294950925;
    if (!a4)
    {
      return v20;
    }

    goto LABEL_34;
  }

LABEL_14:
  ValueAtIndex = *(v10 + 32);
  v30 = *a2;
  *&typea.value = *a3;
  typea.epoch = *(a3 + 16);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v19)
  {
LABEL_18:
    v20 = 4294954514;
    if (!a4)
    {
      return v20;
    }

    goto LABEL_34;
  }

  time = v30;
  immediateSourceTime = typea;
  v18 = v19(ValueAtIndex, &time, &immediateSourceTime, a5);
LABEL_16:
  v20 = v18;
  if (a4)
  {
LABEL_34:
    if (v20)
    {
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      *a4 = ValueAtIndex;
    }
  }

  return v20;
}

uint64_t synchronizer_audioRendererEndpointPreemptedNotificationHandler(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 24);
  if (v6)
  {
    v7 = *MEMORY[0x1E6960C70];
    v8 = *(MEMORY[0x1E6960C70] + 16);
    return v6(a2, &v7, 0.0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_20_42(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

__CFArray *stringconformer_createResolvedARGBColorUsingMAXColorAndOpacityFromFunctions(const void *a1, const void *a2, uint64_t (*a3)(uint64_t, uint64_t *), double (*a4)(uint64_t, uint64_t *))
{
  v20 = 1;
  v7 = a3(1, &v20);
  v19 = 1;
  valuePtr = a4(1, &v19);
  v8 = *MEMORY[0x1E695E480];
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
  v10 = v19;
  if (v20 == 1)
  {
    if (a1)
    {
      ARGBColorArrayFromCGColor = CFRetain(a1);
LABEL_6:
      v12 = ARGBColorArrayFromCGColor;
      if (ARGBColorArrayFromCGColor)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (v7)
    {
LABEL_3:
      ARGBColorArrayFromCGColor = FigTextMarkupCreateARGBColorArrayFromCGColor();
      goto LABEL_6;
    }
  }

  else if (!v20)
  {
    goto LABEL_3;
  }

LABEL_7:
  v12 = CFRetain(a2);
LABEL_8:
  if (v10 == 1)
  {
    if (a1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
      goto LABEL_15;
    }
  }

  else if (v10)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    ValueAtIndex = v9;
LABEL_15:
    v14 = CFRetain(ValueAtIndex);
    if (v14)
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  v15 = CFArrayGetValueAtIndex(a2, 0);
  v14 = CFRetain(v15);
LABEL_17:
  MutableCopy = CFArrayCreateMutableCopy(v8, 0, v12);
  CFArraySetValueAtIndex(MutableCopy, 0, v14);
  CFRelease(v12);
  CFRelease(v14);
  CGColorRelease(v7);
  if (v9)
  {
    CFRelease(v9);
  }

  return MutableCopy;
}

uint64_t FigStringConformerEdgeStyleForMediaAccessibilityEdgeStyle(uint64_t a1)
{
  result = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x1E69609C8];
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      v3 = MEMORY[0x1E69609D0];
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v3 = MEMORY[0x1E69609B8];
        break;
      case 4:
        v3 = MEMORY[0x1E69609D8];
        break;
      case 5:
        v3 = MEMORY[0x1E69609C0];
        break;
      default:
        return result;
    }
  }

  return *v3;
}

void FigCaptionRendererFreeLayoutRegionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendererFreeLayoutRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererFreeLayoutRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererFreeLayoutRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererFreeLayoutRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererFreeLayoutRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  __s1 = 0;
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v8 = *(ProtocolVTable + 16)) == 0)
  {
    v16 = 4294954508;
LABEL_50:
    FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_HasChildNode_cold_1();
    return v16;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    v16 = 4294954514;
    goto LABEL_50;
  }

  v10 = v9(a2, &__s1);
  if (v10)
  {
    v16 = v10;
    goto LABEL_50;
  }

  v11 = __s1;
  if (__s1 && (!strcmp(__s1, "FigCaptionRendererStackLayoutRegion") || !strcmp(v11, "FigCaptionRendererTTMLRegion") || !strcmp(v11, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v11, "FigCaptionRendereriTTRegion") || !strcmp(v11, "FigCaptionRendererSRTRegion") || !strcmp(v11, "FigCaptionRendererFreeLayoutRegion")))
  {
    theString1 = 0;
    FigCaptionRendererRegionProtocolGetProtocolID();
    v17 = CMBaseObjectGetProtocolVTable();
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v18 + 16);
        if (v19)
        {
          v19(a2, &theString1);
        }
      }
    }

    v20 = theString1;
    if (theString1)
    {
      theArray = 0;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v21 = CMBaseObjectGetProtocolVTable();
      if (v21)
      {
        v22 = *(v21 + 2);
        if (v22 && (v23 = *(v22 + 24)) != 0)
        {
          v23(a1, &theArray);
          v21 = theArray;
        }

        else
        {
          v21 = 0;
        }
      }

      if (CFArrayGetCount(v21) < 1)
      {
LABEL_47:
        v20 = 0;
        goto LABEL_48;
      }

      v24 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v24);
        v37 = 0;
        FigCaptionRendererBaseProtocolGetProtocolID();
        v26 = CMBaseObjectGetProtocolVTable();
        if (!v26)
        {
          break;
        }

        v27 = *(v26 + 16);
        if (!v27)
        {
          break;
        }

        v28 = *(v27 + 8);
        if (!v28)
        {
          v16 = 4294954514;
          goto LABEL_53;
        }

        v29 = v28(ValueAtIndex, &v37);
        if (v29)
        {
          v16 = v29;
          goto LABEL_53;
        }

        v30 = v37;
        if (v37 && (!strcmp(v37, "FigCaptionRendererStackLayoutRegion") || !strcmp(v30, "FigCaptionRendererTTMLRegion") || !strcmp(v30, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v30, "FigCaptionRendereriTTRegion") || !strcmp(v30, "FigCaptionRendererSRTRegion") || !strcmp(__s1, "FigCaptionRendererFreeLayoutRegion")))
        {
          theString2 = 0;
          FigCaptionRendererRegionProtocolGetProtocolID();
          v31 = CMBaseObjectGetProtocolVTable();
          if (v31)
          {
            v32 = *(v31 + 16);
            if (v32)
            {
              v33 = *(v32 + 16);
              if (v33)
              {
                v33(ValueAtIndex, &theString2);
              }
            }
          }

          if (CFStringCompare(theString1, theString2, 1uLL) == kCFCompareEqualTo)
          {
            v20 = 1;
            goto LABEL_48;
          }
        }

        if (CFArrayGetCount(theArray) <= ++v24)
        {
          goto LABEL_47;
        }
      }

      v16 = 4294954508;
LABEL_53:
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, theString2, v37);
      return v16;
    }

LABEL_48:
    v16 = 0;
    *a3 = v20;
  }

  else
  {
    v12 = *DerivedStorage;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (v13 && (v14 = *(v13 + 16)) != 0)
    {
      v15 = *(v14 + 32);
      if (v15)
      {
        return v15(v12, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 4294954508;
    }
  }

  return v16;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes(uint64_t a1)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetViewport(uint64_t a1, double a2, double a3, double a4, double a5)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetCGBounds(uint64_t a1, double a2, double a3, double a4, double a5)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetCGSize(uint64_t a1, double a2, double a3)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(uint64_t a1, double a2, double a3)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_PurgeImageCache(uint64_t a1)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetZOrder(uint64_t a1, double a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  v4 = *(MEMORY[0x1E695F050] + 16);
  v20.origin = *MEMORY[0x1E695F050];
  v20.size = v4;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 104);
      if (v7)
      {
        v7(a1, &v20);
      }
    }
  }

  if (a1)
  {
    v8 = *(a2 + 296);
    if (v8)
    {
      Value = CFDictionaryGetValue(v8, a1);
      MidX = CGRectGetMidX(v20);
      MidY = CGRectGetMidY(v20);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      v12 = CMBaseObjectGetProtocolVTable();
      if (v12)
      {
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = *(v13 + 72);
          if (v14)
          {
            v14(Value, MidX, MidY);
          }
        }
      }

      size = v20.size;
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      v16 = CMBaseObjectGetProtocolVTable();
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = *(v17 + 88);
          if (v18)
          {
            v18(Value, size.width, size.height);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v74 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v7(a1, &v74);
        if (v74)
        {
          v8 = CMBaseObjectGetDerivedStorage();
          v9 = *(v8 + 16);
          v10 = *(v8 + 20) * 0.0533;
          v11 = *(v8 + 40);
          v12 = *(v8 + 24);
          if (*(v8 + 48) / 100.0 + *(v8 + 32) / -100.0 * v10 >= 0.0)
          {
            v13 = *(v8 + 48) / 100.0 + *(v8 + 32) / -100.0 * v10;
          }

          else
          {
            v13 = 0.0;
          }

          v14 = *v8;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v15 = CMBaseObjectGetProtocolVTable();
          if (v15)
          {
            v16 = *(v15 + 16);
            if (v16)
            {
              v17 = *(v16 + 80);
              if (v17)
              {
                LOBYTE(v76) = 1;
                *(&v76 + 1) = 0;
                DWORD1(v76) = 0;
                *(&v76 + 1) = v11 / 100.0 + v12 / -100.0 * (v9 / 100.0);
                LOBYTE(v77.width) = 1;
                *(&v77.width + 1) = 0;
                HIDWORD(v77.width) = 0;
                v77.height = v13;
                LOBYTE(v78) = 1;
                *(&v78 + 1) = 0;
                DWORD1(v78) = 0;
                *(&v78 + 1) = v9 / 100.0;
                LOBYTE(v79) = 1;
                *(&v79 + 1) = 0;
                DWORD1(v79) = 0;
                *(&v79 + 1) = v10;
                v17(v14, &v76);
              }
            }
          }

          v18 = CMBaseObjectGetDerivedStorage();
          v76 = FCRRectNull;
          v77 = *&byte_196E76830;
          v78 = xmmword_196E76840;
          v79 = *&byte_196E76850;
          v69 = *(MEMORY[0x1E695F050] + 16);
          v70 = *MEMORY[0x1E695F050];
          v75.origin = *MEMORY[0x1E695F050];
          v75.size = v69;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v19 = CMBaseObjectGetProtocolVTable();
          if (v19)
          {
            v20 = *(v19 + 16);
            if (v20)
            {
              v21 = *(v20 + 88);
              if (v21)
              {
                v21(a1, &v76);
              }
            }
          }

          FigCaptionRendererNodeProtocolGetProtocolID();
          v22 = CMBaseObjectGetProtocolVTable();
          if (v22)
          {
            v23 = *(v22 + 16);
            if (v23)
            {
              v24 = *(v23 + 72);
              if (v24)
              {
                v24(a1, &v75);
              }
            }
          }

          v25 = *(&v78 + 1);
          if (*(&v78 + 1) != -1.0)
          {
            v53 = v75.origin.x + *(&v76 + 1);
            if (v76)
            {
              v53 = v75.origin.x + *(&v76 + 1) * v75.size.width;
            }

            v54 = v75.origin.y + v77.height;
            if (LOBYTE(v77.width))
            {
              v54 = v75.origin.y + v77.height * v75.size.height;
            }

            if (v78)
            {
              v25 = *(&v78 + 1) * v75.size.width;
            }

            v55 = *(&v79 + 1);
            if (v79)
            {
              v55 = v75.size.height * *(&v79 + 1);
            }

            v80 = CGRectIntegral(*(&v25 - 2));
            x = v80.origin.x;
            y = v80.origin.y;
            width = v80.size.width;
            height = v80.size.height;
            v60 = *v18;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v61 = CMBaseObjectGetProtocolVTable();
            if (v61)
            {
              v62 = *(v61 + 16);
              if (v62)
              {
                v63 = *(v62 + 96);
                if (v63)
                {
                  v63(v60, x, y, width, height);
                }
              }
            }
          }

          theArray = 0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v26 = CMBaseObjectGetProtocolVTable();
          if (v26)
          {
            v27 = *(v26 + 16);
            if (v27)
            {
              v28 = *(v27 + 24);
              if (v28)
              {
                v28(a1, &theArray);
              }
            }
          }

          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            for (i = Count + 1; i > 1; --i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i - 2);
              __s1 = 0;
              FigCaptionRendererBaseProtocolGetProtocolID();
              v32 = CMBaseObjectGetProtocolVTable();
              if (!v32 || (v33 = *(v32 + 16)) == 0 || (v34 = *(v33 + 8)) == 0 || v34(ValueAtIndex, &__s1))
              {
                FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_4();
                break;
              }

              if (__s1 && !strcmp(__s1, "FigCaptionRendererCaption"))
              {
                v71 = 0;
                FigCaptionRendererCaptionProtocolGetProtocolID();
                v35 = CMBaseObjectGetProtocolVTable();
                if (!v35 || (v36 = *(v35 + 16)) == 0 || (v37 = *(v36 + 48)) == 0 || v37(ValueAtIndex, &v71))
                {
                  FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_3();
                  break;
                }

                if (v71 == 3)
                {
                  v76 = v70;
                  v77 = v69;
                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v38 = CMBaseObjectGetProtocolVTable();
                  if (!v38 || (v39 = *(v38 + 16)) == 0 || (v40 = *(v39 + 104)) == 0 || v40(ValueAtIndex, &v76))
                  {
                    FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_2();
                    break;
                  }

                  v75.origin = v70;
                  v75.size = v69;
                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v41 = CMBaseObjectGetProtocolVTable();
                  if (!v41 || (v42 = *(v41 + 16)) == 0 || (v43 = *(v42 + 72)) == 0 || v43(ValueAtIndex, &v75))
                  {
                    FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_1();
                    break;
                  }

                  MidX = CGRectGetMidX(v75);
                  MidY = CGRectGetMidY(v75);
                  v46 = v77;
                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v47 = CMBaseObjectGetProtocolVTable();
                  if (v47)
                  {
                    v48 = *(v47 + 16);
                    if (v48)
                    {
                      v49 = *(v48 + 128);
                      if (v49)
                      {
                        v49(ValueAtIndex, MidX - v46.width * 0.5, MidY - v46.height * 0.5);
                      }
                    }
                  }

                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v50 = CMBaseObjectGetProtocolVTable();
                  if (v50)
                  {
                    v51 = *(v50 + 16);
                    if (v51)
                    {
                      v52 = *(v51 + 232);
                      if (v52)
                      {
                        v52(ValueAtIndex, 1);
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
  }

  v64 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v65 = CMBaseObjectGetProtocolVTable();
  if (!v65)
  {
    return 4294954508;
  }

  v66 = *(v65 + 16);
  if (!v66)
  {
    return 4294954508;
  }

  v67 = *(v66 + 288);
  if (v67)
  {
    return v67(v64, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 296);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 248);
      if (v7)
      {
        v7(a1, &v25 + 1);
        if (HIBYTE(v25))
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v8 = CMBaseObjectGetProtocolVTable();
          if (v8)
          {
            v9 = *(v8 + 16);
            if (v9)
            {
              v10 = *(v9 + 296);
              if (v10)
              {
                v10(a1, a2);
              }
            }
          }
        }
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
      v13 = *(v12 + 240);
      if (v13)
      {
        v13(a1, &v25);
        if (v25)
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v14 = CMBaseObjectGetProtocolVTable();
          if (v14)
          {
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = *(v15 + 288);
              if (v16)
              {
                v16(a1, a2);
              }
            }
          }
        }
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
      v19 = *(v18 + 280);
      if (v19)
      {
        v19(a1, a2);
      }
    }
  }

  v20 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (!v21)
  {
    return 4294954508;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    return 4294954508;
  }

  v23 = *(v22 + 304);
  if (v23)
  {
    return v23(v20, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  if (v4 && *(DerivedStorage + 56))
  {
    v5 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v5;
    v8 = *(a2 + 32);
    v4(v7);
  }

  return 0;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_RemoveAllActions(uint64_t a1)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, uint64_t a2, double a3, double a4)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, uint64_t a2, double a3, double a4)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
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

__CFString *FigCaptionRendererFreeLayoutRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererFreeLayoutRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a2;
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

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 32) = a3;
  return 0;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a2;
  *(DerivedStorage + 48) = a3;
  return 0;
}

uint64_t RegisterFigCaptionRendererFreeLayoutRegionBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

FigCPEFPAirPlaySession *FigFairPlayAirPlaySessionCreateWithProtectionInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [FigCPEFPAirPlaySession alloc];
  v7 = [a3 objectForKey:@"RouteInfo"];
  v8 = [a3 objectForKey:@"EndpointPlaybackSession"];
  v9 = [a3 objectForKey:@"MediaControlUUID"];

  return [(FigCPEFPAirPlaySession *)v6 initWithFairPlayContext:a1 protectionInfo:a2 routeInfo:v7 playbackSession:v8 mediaControlUUID:v9];
}

FigCPEFPAirPlaySession *FigFairPlayAirPlaySessionCreateWithContentInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [FigCPEFPAirPlaySession alloc];
  v7 = [a3 objectForKey:@"RouteInfo"];
  v8 = [a3 objectForKey:@"EndpointPlaybackSession"];
  v9 = [a3 objectForKey:@"MediaControlUUID"];

  return [(FigCPEFPAirPlaySession *)v6 initWithFairPlayContext:a1 contentInfo:a2 routeInfo:v7 playbackSession:v8 mediaControlUUID:v9];
}

void FigFairPlayAirPlaySessionDestroy(void *a1)
{
  [a1 endSession];
}

uint64_t FigFairPlayAirPlaySessionBeginAsync(void *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigFairPlayAirPlaySessionBeginAsync_block_invoke;
  v4[3] = &unk_1E74998A8;
  v4[4] = a3;
  [a1 beginSessionWithCompletionQueue:a2 completionHandler:v4];
  return 0;
}

void authorizeItemCompletionHandler(CFTypeRef cf, CFTypeRef a2, int a3, uint64_t a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v8 = *(*a4 + 72);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __authorizeItemCompletionHandler_block_invoke;
  v9[3] = &__block_descriptor_60_e5_v8__0l;
  v9[4] = a4;
  v9[5] = cf;
  v9[6] = a2;
  v10 = a3;
  dispatch_async(v8, v9);
}

void __authorizeItemCompletionHandler_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [**(a1 + 32) authorizeItemCompletionHandler_objc:*(a1 + 32) picData:*(a1 + 40) playerGUID:*(a1 + 48) error:*(a1 + 56)];

  dispatch_release(*(*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  if (v3[1])
  {
    CFRelease(v3[1]);
    v3 = *(a1 + 32);
  }

  free(v3);
  objc_autoreleasePoolPop(v2);
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t OUTLINED_FUNCTION_1_202(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return [v12 countByEnumeratingWithState:va objects:v13 - 232 count:{16, a6}];
}

BOOL FigSpeedRampIsCMTimeMappingArrayDataContinuous(const __CFData *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v46.value = *BytePtr;
  v4 = *(BytePtr + 3);
  v46.timescale = *(BytePtr + 2);
  v5 = *(BytePtr + 2);
  v6 = MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 12);
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v9 = v7 & 0x1F;
  v10 = (v4 & 0x1F) == 3 || v9 == 3;
  if (!v10 || (memset(&time1, 0, 24), rhs.epoch = v8, lhs.value = v46.value, lhs.timescale = v46.timescale, lhs.flags = v4, lhs.epoch = v5, rhs.value = *MEMORY[0x1E6960CC0], rhs.timescale = *(MEMORY[0x1E6960CC0] + 8), rhs.flags = v7, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1.start, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &time) > 0))
  {
    time1.start.value = v46.value;
    time1.start.timescale = v46.timescale;
    time1.start.flags = v4;
    time1.start.epoch = v5;
    time.value = *v6;
    time.timescale = *(v6 + 8);
    time.flags = v7;
    time.epoch = v8;
    if (CMTimeCompare(&time1.start, &time))
    {
      return 0;
    }
  }

  if ((v46.value = *(BytePtr + 6), v11 = *(BytePtr + 15), v46.timescale = *(BytePtr + 14), v12 = *(BytePtr + 8), (v11 & 0x1F) != 3) && v9 != 3 || (memset(&time1, 0, 24), v13 = *(BytePtr + 6), rhs.epoch = v8, lhs.value = v13, lhs.timescale = *(BytePtr + 14), lhs.flags = v11, lhs.epoch = v12, rhs.value = *v6, rhs.timescale = *(v6 + 8), rhs.flags = v7, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1.start, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &time) > 0))
  {
    time1.start.value = v46.value;
    time1.start.timescale = v46.timescale;
    time1.start.flags = v11;
    time1.start.epoch = v12;
    time.value = *v6;
    time.timescale = *(v6 + 8);
    time.flags = v7;
    time.epoch = v8;
    if (CMTimeCompare(&time1.start, &time))
    {
      return 0;
    }
  }

  v14 = *(BytePtr + 9);
  if ((v14 & 0x1D) != 1)
  {
    return 0;
  }

  v46.value = *(BytePtr + 3);
  v46.timescale = *(BytePtr + 8);
  v15 = *(BytePtr + 5);
  if ((~v14 & 3) == 0 || v9 == 3)
  {
    memset(&time1, 0, 24);
    v16 = *(BytePtr + 3);
    rhs.epoch = v8;
    lhs.value = v16;
    lhs.timescale = *(BytePtr + 8);
    lhs.flags = v14;
    lhs.epoch = v15;
    rhs.value = *v6;
    rhs.timescale = *(v6 + 8);
    rhs.flags = v7;
    CMTimeSubtract(&time, &lhs, &rhs);
    CMTimeAbsoluteValue(&time1.start, &time);
    CMTimeMake(&time, 1, 1000000000);
    lhs = time1.start;
    if (CMTimeCompare(&lhs, &time) <= 0)
    {
      return 0;
    }
  }

  time1.start.value = v46.value;
  time1.start.timescale = v46.timescale;
  time1.start.flags = v14;
  time1.start.epoch = v15;
  v17 = *v6;
  time.value = *v6;
  v18 = *(v6 + 8);
  time.timescale = v18;
  time.flags = v7;
  time.epoch = v8;
  if (CMTimeCompare(&time1.start, &time) < 1)
  {
    return 0;
  }

  v19 = *(BytePtr + 21);
  if ((v19 & 0x1D) != 1)
  {
    return 0;
  }

  v46.value = *(BytePtr + 9);
  v46.timescale = *(BytePtr + 20);
  v20 = *(BytePtr + 11);
  if ((~v19 & 3) == 0 || v9 == 3)
  {
    memset(&time1, 0, 24);
    v21 = *(BytePtr + 9);
    rhs.epoch = v8;
    lhs.value = v21;
    lhs.timescale = *(BytePtr + 20);
    lhs.flags = v19;
    lhs.epoch = v20;
    rhs.value = v17;
    rhs.timescale = v18;
    rhs.flags = v7;
    CMTimeSubtract(&time, &lhs, &rhs);
    CMTimeAbsoluteValue(&time1.start, &time);
    CMTimeMake(&time, 1, 1000000000);
    lhs = time1.start;
    if (CMTimeCompare(&lhs, &time) <= 0)
    {
      return 0;
    }
  }

  time1.start.value = v46.value;
  time1.start.timescale = v46.timescale;
  time1.start.flags = v19;
  time1.start.epoch = v20;
  time.value = v17;
  time.timescale = v18;
  time.flags = v7;
  time.epoch = v8;
  if (CMTimeCompare(&time1.start, &time) < 1)
  {
    return 0;
  }

  if (Length >= 0xC0)
  {
    v22 = 0;
    v24 = (BytePtr + 184);
    v38 = 1 - Length / 0x60;
    v39 = Length / 0x60;
    v25 = 2;
    do
    {
      v26 = *(v24 - 23);
      v27 = *(v24 - 19);
      *&time1.start.epoch = *(v24 - 21);
      *&time1.duration.timescale = v27;
      *&time1.start.value = v26;
      CMTimeRangeGetEnd(&v46, &time1);
      v44 = *(v24 - 11);
      v28 = *(v24 - 19);
      v45 = *(v24 - 20);
      v29 = *(v24 - 9);
      if ((v46.flags & 0x1F) == 3 || (v28 & 0x1F) == 3)
      {
        memset(&time1, 0, 24);
        lhs = v46;
        rhs.value = v44;
        rhs.timescale = v45;
        rhs.flags = v28;
        rhs.epoch = v29;
        CMTimeSubtract(&time, &lhs, &rhs);
        CMTimeAbsoluteValue(&time1.start, &time);
        CMTimeMake(&time, 1, 1000000000);
        lhs = time1.start;
        if (CMTimeCompare(&lhs, &time) <= 0)
        {
          goto LABEL_47;
        }
      }

      time1.start = v46;
      time.value = v44;
      time.timescale = v45;
      time.flags = v28;
      time.epoch = v29;
      if (CMTimeCompare(&time1.start, &time))
      {
        break;
      }

LABEL_47:
      v46.value = *(v24 - 8);
      v46.timescale = *(v24 - 14);
      v30 = *(v24 - 13);
      v31 = *(v24 - 6);
      if ((v30 & 0x1F) == 3 || v9 == 3)
      {
        memset(&time1, 0, 24);
        rhs.epoch = v8;
        lhs.value = v46.value;
        lhs.timescale = v46.timescale;
        lhs.flags = v30;
        lhs.epoch = v31;
        rhs.value = v17;
        rhs.timescale = v18;
        rhs.flags = v7;
        CMTimeSubtract(&time, &lhs, &rhs);
        CMTimeAbsoluteValue(&time1.start, &time);
        CMTimeMake(&time, 1, 1000000000);
        lhs = time1.start;
        if (CMTimeCompare(&lhs, &time) <= 0)
        {
          break;
        }
      }

      time1.start.value = v46.value;
      time1.start.timescale = v46.timescale;
      time1.start.flags = v30;
      time1.start.epoch = v31;
      time.value = v17;
      time.timescale = v18;
      time.flags = v7;
      time.epoch = v8;
      if (CMTimeCompare(&time1.start, &time) < 1)
      {
        break;
      }

      v32 = *(v24 - 17);
      v33 = *(v24 - 13);
      *&time1.start.epoch = *(v24 - 15);
      *&time1.duration.timescale = v33;
      *&time1.start.value = v32;
      CMTimeRangeGetEnd(&v46, &time1);
      v44 = *(v24 - 5);
      v34 = *(v24 - 7);
      v45 = *(v24 - 8);
      v35 = *(v24 - 3);
      if ((v46.flags & 0x1F) == 3 || (v34 & 0x1F) == 3)
      {
        memset(&time1, 0, 24);
        lhs = v46;
        rhs.value = v44;
        rhs.timescale = v45;
        rhs.flags = v34;
        rhs.epoch = v35;
        CMTimeSubtract(&time, &lhs, &rhs);
        CMTimeAbsoluteValue(&time1.start, &time);
        CMTimeMake(&time, 1, 1000000000);
        lhs = time1.start;
        if (CMTimeCompare(&lhs, &time) <= 0)
        {
          goto LABEL_48;
        }
      }

      time1.start = v46;
      time.value = v44;
      time.timescale = v45;
      time.flags = v34;
      time.epoch = v35;
      if (CMTimeCompare(&time1.start, &time))
      {
        break;
      }

LABEL_48:
      v46.value = *(v24 - 2);
      v46.timescale = *(v24 - 2);
      v36 = *(v24 - 1);
      v37 = *v24;
      if ((v36 & 0x1F) == 3 || v9 == 3)
      {
        memset(&time1, 0, 24);
        rhs.epoch = v8;
        lhs.value = v46.value;
        lhs.timescale = v46.timescale;
        lhs.flags = v36;
        lhs.epoch = v37;
        rhs.value = v17;
        rhs.timescale = v18;
        rhs.flags = v7;
        CMTimeSubtract(&time, &lhs, &rhs);
        CMTimeAbsoluteValue(&time1.start, &time);
        CMTimeMake(&time, 1, 1000000000);
        lhs = time1.start;
        if (CMTimeCompare(&lhs, &time) <= 0)
        {
          break;
        }
      }

      time1.start.value = v46.value;
      time1.start.timescale = v46.timescale;
      time1.start.flags = v36;
      time1.start.epoch = v37;
      time.value = v17;
      time.timescale = v18;
      time.flags = v7;
      time.epoch = v8;
      if (CMTimeCompare(&time1.start, &time) <= 0)
      {
        break;
      }

      v22 = v39 <= v25;
      v24 += 12;
      ++v25;
    }

    while (v38 + v25 != 2);
  }

  else
  {
    return 1;
  }

  return v22;
}

__n128 FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData@<Q0>(CFDataRef theData@<X1>, __n128 *a2@<X0>, __n128 *a3@<X8>)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    CMSpeedRampMapTimeFromTargetToSource();
  }

  else
  {
    result = *a2;
    *a3 = *a2;
    a3[1].n128_u64[0] = a2[1].n128_u64[0];
  }

  return result;
}

__n128 FigSpeedRampMapTimeFromSourceToTargetUsingMappingArrayData@<Q0>(CFDataRef theData@<X1>, __n128 *a2@<X0>, __n128 *a3@<X8>)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    CMSpeedRampMapTimeFromSourceToTarget();
  }

  else
  {
    result = *a2;
    *a3 = *a2;
    a3[1].n128_u64[0] = a2[1].n128_u64[0];
  }

  return result;
}

uint64_t FigSpeedRampRenderPipelineCreate(const __CFAllocator *a1, const void *a2, CMTime *a3, const __CFDictionary *a4, void **a5)
{
  v44 = *MEMORY[0x1E69E9840];
  value = 0;
  refcon = 0;
  memset(&v39, 0, sizeof(v39));
  CMTimeMake(&rhs, 1, 2);
  lhs = *a3;
  CMTimeAdd(&v39, &lhs, &rhs);
  memset(&v38, 0, sizeof(v38));
  CMTimeMake(&rhs, 1, 2);
  lhs = v39;
  CMTimeAdd(&v38, &lhs, &rhs);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v36 = a5;
  if (!a5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17C30, 4294954444, "<<<< SpeedRamp RP >>>>", 2929, v5);
    return v11;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17C30, 4294954444, "<<<< SpeedRamp RP >>>>", 2931, v5);
    return v11;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v10 |= 4u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 88))
  {
    v10 |= 8u;
  }

  *&rhs.timescale = 0;
  rhs.value = v10;
  if (sSpeedRampRenderPipelineVTableSetupOnce != -1)
  {
    FigSpeedRampRenderPipelineCreate_cold_1();
  }

  dispatch_sync_f(sSpeedRampRenderPipelineVTableQueue, &rhs, speedRamp_RenderPipeline_getVTableWithOptionalMethodsWork);
  FigRenderPipelineGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    goto LABEL_46;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 224) = 0;
  if (a4 && CFDictionaryGetValueIfPresent(a4, @"LoggingID", &value))
  {
    CFStringGetCString(value, (DerivedStorage + 224), 16, 0x600u);
  }

  v14 = *&a3->value;
  *(DerivedStorage + 64) = a3->epoch;
  *(DerivedStorage + 48) = v14;
  *(DerivedStorage + 72) = v39;
  *(DerivedStorage + 96) = v38;
  *(DerivedStorage + 44) = 1;
  CallbacksForUnsortedSampleBuffersWithOutputDuration = FigBufferQueueGetCallbacksForUnsortedSampleBuffersWithOutputDuration();
  v12 = CMBufferQueueCreate(a1, 0, CallbacksForUnsortedSampleBuffersWithOutputDuration, (DerivedStorage + 8));
  if (v12)
  {
    goto LABEL_46;
  }

  CFRetain(a2);
  *(DerivedStorage + 184) = a2;
  FigRenderPipelineGetFigBaseObject();
  v17 = v16;
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v12 = v18(v17, @"SourceSampleBufferQueue", a1, DerivedStorage + 192);
    if (v12)
    {
      goto LABEL_46;
    }

    FigRenderPipelineGetFigBaseObject();
    v20 = v19;
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v21)
    {
      v21(v20, @"ExpectScaledEdits", *MEMORY[0x1E695E4D0]);
    }

    v22 = FigSimpleMutexCreate();
    *(DerivedStorage + 120) = v22;
    if (!v22)
    {
      v35 = 2972;
      goto LABEL_50;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 4, &kFigSpeedRampUpcomingTransitionArrayCallbacks);
    *(DerivedStorage + 168) = Mutable;
    if (!Mutable)
    {
      v35 = 2975;
      goto LABEL_50;
    }

    FigActivitySchedulerCreateForNewThread(a1, 3, @"com.apple.coremedia.speedramp", (DerivedStorage + 32));
    if (v12)
    {
LABEL_46:
      value_low = v12;
      goto LABEL_37;
    }

    v25 = *(DerivedStorage + 32);
    v26 = refcon;
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v27)
    {
      v12 = v27(v25, speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel, v26);
      if (!v12)
      {
        *(DerivedStorage + 40) = 1;
        v28 = *(DerivedStorage + 8);
        rhs = **&MEMORY[0x1E6960CC0];
        v12 = CMBufferQueueInstallTrigger(v28, speedramp_dataBecameReady, refcon, 7, &rhs, (DerivedStorage + 200));
        if (!v12)
        {
          v29 = *(DerivedStorage + 192);
          rhs = *a3;
          v12 = CMBufferQueueInstallTrigger(v29, speedramp_downstreamBufferQueueLowWater, refcon, 2, &rhs, (DerivedStorage + 208));
          if (!v12)
          {
            if (qword_1ED4CBCC8 != -1)
            {
              FigSpeedRampRenderPipelineCreate_cold_2();
            }

            v30 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _MergedGlobals_146);
            *(DerivedStorage + 216) = v30;
            if (v30)
            {
              dispatch_set_context(v30, refcon);
              dispatch_source_set_event_handler_f(*(DerivedStorage + 216), speedramp_wakeUpAndCheckTheTimebase);
              dispatch_resume(*(DerivedStorage + 216));
              CMNotificationCenterGetDefaultLocalCenter();
              v12 = FigNotificationCenterAddWeakListener();
              if (!v12)
              {
                CMNotificationCenterGetDefaultLocalCenter();
                v12 = FigNotificationCenterAddWeakListener();
                if (!v12)
                {
                  if (dword_1EAF17C38)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  value_low = 0;
                  *v36 = refcon;
                  return value_low;
                }
              }

              goto LABEL_46;
            }

            v35 = 3009;
LABEL_50:
            FigSpeedRampRenderPipelineCreate_cold_3(v35, &rhs);
            value_low = LODWORD(rhs.value);
            goto LABEL_37;
          }
        }
      }

      goto LABEL_46;
    }
  }

  value_low = 4294954514;
LABEL_37:
  if (refcon)
  {
    CFRelease(refcon);
  }

  if (value_low && dword_1EAF17C38)
  {
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return value_low;
}

void speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel(CMTime *a1)
{
  v177 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sampleBufferOut = 0;
  memset(&start, 0, sizeof(start));
  CMTimebaseGetTime(&start, *(DerivedStorage + 24));
  FigSimpleMutexLock();
  v2 = MEMORY[0x1E6960C70];
  v114 = *(MEMORY[0x1E6960C70] + 12);
  v130 = *(MEMORY[0x1E6960C70] + 16);
  v115 = *(MEMORY[0x1E6960CC0] + 12);
  v124 = *(MEMORY[0x1E6960CC0] + 16);
  key = *MEMORY[0x1E6960550];
  allocator = *MEMORY[0x1E695E480];
  v119 = *MEMORY[0x1E6960510];
  v118 = *MEMORY[0x1E6960518];
  v117 = *MEMORY[0x1E6960490];
  v116 = *MEMORY[0x1E6960500];
  v125 = *MEMORY[0x1E6960540];
  while (1)
  {
    if (*(DerivedStorage + 128))
    {
      v3 = *(DerivedStorage + 136);
    }

    else
    {
      v4 = CMBufferQueueDequeueIfDataReadyAndRetain(*(DerivedStorage + 8));
      *(DerivedStorage + 128) = v4;
      if (!v4)
      {
        FigSimpleMutexUnlock();
        v65 = 0;
        goto LABEL_189;
      }

      v3 = 0;
      *(DerivedStorage + 136) = 0;
    }

    v5 = *v2;
    value = *v2;
    v6 = *(v2 + 8);
    timescale = v6;
    v138 = start;
    v7 = CMBaseObjectGetDerivedStorage();
    v8 = v7;
    v9 = *(v7 + 44);
    v126 = v3;
    if (v9 == 1)
    {
      *&time1.start.value = *v2;
      time1.start.epoch = v130;
      *&rhs.value = *&time1.start.value;
      rhs.epoch = v130;
      v10 = *(v7 + 128);
      if (v10)
      {
        if (CMSampleBufferGetNumSamples(v10))
        {
          CMSampleBufferGetOutputDuration(&lhs, *(v8 + 128));
          v131 = *MEMORY[0x1E6960CC0];
          *&time2.value = *MEMORY[0x1E6960CC0];
          time2.epoch = v124;
          if (CMTimeCompare(&lhs, &time2) >= 1)
          {
            v173.value = *MEMORY[0x1E6960CC0];
            v173.timescale = *(MEMORY[0x1E6960CC0] + 8);
            flags = v115;
            epoch = v124;
            if ((*(v8 + 156) & 0x1D) == 1)
            {
              time2 = *(v8 + 144);
              v176 = v138;
              CMTimeSubtract(&lhs, &time2, &v176);
              v173.value = lhs.value;
              flags = lhs.flags;
              v173.timescale = lhs.timescale;
              epoch = lhs.epoch;
            }

            lhs.value = v173.value;
            lhs.timescale = v173.timescale;
            lhs.flags = flags;
            lhs.epoch = epoch;
            time2 = *(v8 + 72);
            if (CMTimeCompare(&lhs, &time2) <= 0)
            {
              if (flags)
              {
                lhs.value = v173.value;
                lhs.timescale = v173.timescale;
                lhs.flags = flags;
                lhs.epoch = epoch;
              }

              else
              {
                *&lhs.value = v131;
                lhs.epoch = v124;
              }

              time2 = *(v8 + 96);
              CMTimeSubtract(&time1.start, &time2, &lhs);
              goto LABEL_21;
            }

            lhs = *(v8 + 144);
            time2 = *(v8 + 48);
            CMTimeSubtract(&rhs, &lhs, &time2);
            value = rhs.value;
            v109 = rhs.flags;
            timescale = rhs.timescale;
LABEL_181:
            v130 = rhs.epoch;
            goto LABEL_182;
          }
        }

        else
        {
          *&time1.start.value = *MEMORY[0x1E6960C88];
          time1.start.epoch = *(MEMORY[0x1E6960C88] + 16);
        }

LABEL_21:
        *&v134.value = *&time1.start.value;
        v134.epoch = time1.start.epoch;
        value = rhs.value;
        timescale = rhs.timescale;
        goto LABEL_22;
      }

      value = v5;
      timescale = v6;
      v109 = rhs.flags;
      goto LABEL_181;
    }

    if (v9 || !CMBufferQueueTestTrigger(*(v7 + 192), *(v7 + 208)))
    {
      v109 = v114;
LABEL_182:
      v65 = 0;
      if (*(DerivedStorage + 44) != 1)
      {
        v59 = 0;
        goto LABEL_187;
      }

      v59 = 0;
      if ((v109 & 0x1D) != 1)
      {
        goto LABEL_187;
      }

      v110 = *(DerivedStorage + 24);
      v111 = *(DerivedStorage + 216);
      time1.start.value = value;
      time1.start.timescale = timescale;
      time1.start.flags = v109;
      time1.start.epoch = v130;
      CMTimebaseSetTimerDispatchSourceNextFireTime(v110, v111, &time1.start, 0);
      goto LABEL_185;
    }

    memset(&time1, 0, 24);
    CMBufferQueueGetDuration(&rhs, *(v8 + 192));
    lhs = *(v8 + 96);
    CMTimeSubtract(&time1.start, &lhs, &rhs);
    *&v134.value = *&time1.start.value;
    v134.epoch = time1.start.epoch;
LABEL_22:
    if (CMGetAttachment(*(DerivedStorage + 128), key, 0))
    {
      Count = CFArrayGetCount(*(DerivedStorage + 168));
      if (Count >= 1)
      {
        v14 = Count;
        for (i = 0; i != v14; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 168), i);
          if (FigCFEqual())
          {
            v17 = *(ValueAtIndex + 1);
            v18 = *(ValueAtIndex + 2);
            v19 = *(DerivedStorage + 24);
            *(ValueAtIndex + 2) = v19;
            if (v19)
            {
              CFRetain(v19);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            speedramp_setTimebase(a1, v17);
            CMTimebaseGetTime(&time1.start, *(DerivedStorage + 24));
            start = time1.start;
            v20 = *(ValueAtIndex + 6);
            v21 = *(DerivedStorage + 176);
            *(ValueAtIndex + 6) = v21;
            if (v21)
            {
              CFRetain(v21);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            speedramp_setTransferAheadSpeedRampData(a1, *(ValueAtIndex + 5));
            v2 = MEMORY[0x1E6960C70];
          }
        }
      }
    }

    NumSamples = CMSampleBufferGetNumSamples(*(DerivedStorage + 128));
    v23 = NumSamples;
    v24 = *(DerivedStorage + 136);
    v25 = NumSamples - v24;
    v128 = NumSamples;
    if (NumSamples - v24 <= 1)
    {
      v29 = 1;
      goto LABEL_94;
    }

    v122 = NumSamples - v24;
    v163.value = v5;
    v163.timescale = v6;
    v26 = *(DerivedStorage + 128);
    time2.value = 0;
    *&time1.start.value = *v2;
    time1.start.epoch = v130;
    if (v24 < 0 || CMSampleBufferGetNumSamples(v26) <= v24)
    {
      v27 = 0;
      v33 = v130;
      v32 = v114;
      goto LABEL_50;
    }

    if (CMSampleBufferGetOutputSampleTimingInfoArray(v26, 0, 0, &time2.value))
    {
      v27 = 0;
LABEL_198:
      v112 = v27;
      goto LABEL_199;
    }

    if (time2.value <= 0)
    {
      speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_3(&rhs);
      v27 = 0;
      goto LABEL_175;
    }

    v27 = malloc_type_malloc(72 * time2.value, 0x1000040FF89C88EuLL);
    if (!v27)
    {
      speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_2(&rhs);
      goto LABEL_175;
    }

    if (CMSampleBufferGetOutputSampleTimingInfoArray(v26, time2.value, v27, 0))
    {
      goto LABEL_198;
    }

    if (time2.value == 1)
    {
      v28 = *&v27->duration.value;
      lhs.epoch = v27->duration.epoch;
      *&lhs.value = v28;
      CMTimeMultiply(&rhs, &lhs, v24);
      lhs = v27->presentationTimeStamp;
      CMTimeAdd(&time1.start, &lhs, &rhs);
    }

    else
    {
      if (time2.value <= v24)
      {
        speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_1(&rhs);
LABEL_175:
        v108 = rhs.value;
        free(v27);
        v32 = v114;
        v33 = v130;
        if (v108)
        {
          goto LABEL_185;
        }

        goto LABEL_51;
      }

      v30 = &v27[v24];
      v31 = *&v30->presentationTimeStamp.value;
      time1.start.epoch = v30->presentationTimeStamp.epoch;
      *&time1.start.value = v31;
    }

    v163.value = time1.start.value;
    v32 = time1.start.flags;
    v163.timescale = time1.start.timescale;
    v33 = time1.start.epoch;
LABEL_50:
    free(v27);
LABEL_51:
    memset(&v138, 0, sizeof(v138));
    v34 = *(DerivedStorage + 176);
    v166 = v163.value;
    v167 = v163.timescale;
    if (!v34 || (v32 & 0x1D) != 1)
    {
      v138 = **&MEMORY[0x1E6960C88];
      goto LABEL_69;
    }

    v120 = v24;
    BytePtr = CFDataGetBytePtr(v34);
    Length = CFDataGetLength(v34);
    if (Length < 0x60)
    {
LABEL_66:
      v138 = **&MEMORY[0x1E6960C88];
      goto LABEL_67;
    }

    v36 = 0;
    v129 = Length / 0x60;
    v37 = Length / 0x60 - 1;
    v38 = v32 & 3;
    v39 = v37;
    while (1)
    {
      v40 = v37 >> 1;
      v41 = &BytePtr[96 * (v37 >> 1)];
      v176.value = *v41;
      v176.timescale = *(v41 + 2);
      v42 = *(v41 + 3);
      v43 = *(v41 + 2);
      if (v38 != 3 && (*(v41 + 3) & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v166, lhs.timescale = v167, lhs.flags = v32, lhs.epoch = v33, time2.value = v176.value, time2.timescale = v176.timescale, time2.flags = v42, time2.epoch = v43, CMTimeSubtract(&rhs, &lhs, &time2), CMTimeAbsoluteValue(&time1.start, &rhs), CMTimeMake(&rhs, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &rhs) > 0))
      {
        time1.start.value = v166;
        time1.start.timescale = v167;
        time1.start.flags = v32;
        time1.start.epoch = v33;
        rhs.value = v176.value;
        rhs.timescale = v176.timescale;
        rhs.flags = v42;
        rhs.epoch = v43;
        if (CMTimeCompare(&time1.start, &rhs) < 0)
        {
          v39 = v40 - 1;
          goto LABEL_65;
        }
      }

      if ((v44 = *v41, v45 = *(v41 + 2), *&time1.start.epoch = *(v41 + 1), *&time1.duration.timescale = v45, *&time1.start.value = v44, CMTimeRangeGetEnd(&v176, &time1), v38 != 3) && (v176.flags & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v166, lhs.timescale = v167, lhs.flags = v32, lhs.epoch = v33, time2 = v176, CMTimeSubtract(&rhs, &lhs, &time2), CMTimeAbsoluteValue(&time1.start, &rhs), CMTimeMake(&rhs, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &rhs) > 0))
      {
        time1.start.value = v166;
        time1.start.timescale = v167;
        time1.start.flags = v32;
        time1.start.epoch = v33;
        rhs = v176;
        if (CMTimeCompare(&time1.start, &rhs) < 0)
        {
          break;
        }
      }

      v36 = v40 + 1;
LABEL_65:
      v37 = v36 + v39;
      if (v36 >= v129)
      {
        goto LABEL_66;
      }
    }

    v105 = *v41;
    v106 = *(v41 + 2);
    *&time1.start.epoch = *(v41 + 1);
    *&time1.duration.timescale = v106;
    *&time1.start.value = v105;
    CMTimeRangeGetEnd(&v138, &time1);
LABEL_67:
    v2 = MEMORY[0x1E6960C70];
    v23 = v128;
    v24 = v120;
LABEL_69:
    memset(&v176, 0, sizeof(v176));
    time1.start.value = v163.value;
    time1.start.timescale = v163.timescale;
    time1.start.flags = v32;
    time1.start.epoch = v33;
    rhs = v134;
    CMTimeAdd(&v176, &time1.start, &rhs);
    memset(&v173, 0, sizeof(v173));
    time1.start = v138;
    rhs = v176;
    CMTimeMinimum(&v173, &time1.start, &rhs);
    v46 = *(DerivedStorage + 128);
    v164 = v173.value;
    v47 = v173.flags;
    v165 = v173.timescale;
    v48 = v173.epoch;
    timingArrayEntriesNeededOut = 0;
    v49 = CMSampleBufferGetNumSamples(v46);
    if (CMSampleBufferGetOutputSampleTimingInfoArray(v46, 0, 0, &timingArrayEntriesNeededOut))
    {
      v50 = 0;
LABEL_196:
      v112 = v50;
LABEL_199:
      free(v112);
LABEL_185:
      v65 = 0;
      v59 = 0;
      goto LABEL_187;
    }

    if (timingArrayEntriesNeededOut <= 0)
    {
      speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_6(&time1);
      v50 = 0;
      goto LABEL_172;
    }

    v50 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
    if (!v50)
    {
      speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_5(&time1);
LABEL_172:
      v107 = time1.start.value;
      free(v50);
      if (!v107)
      {
        v52 = 0;
        goto LABEL_89;
      }

      goto LABEL_185;
    }

    if (CMSampleBufferGetOutputSampleTimingInfoArray(v46, timingArrayEntriesNeededOut, v50, 0))
    {
      goto LABEL_196;
    }

    if (timingArrayEntriesNeededOut == 1)
    {
      memset(&time1, 0, 24);
      rhs.value = v164;
      rhs.timescale = v165;
      rhs.flags = v47;
      rhs.epoch = v48;
      lhs = v50->presentationTimeStamp;
      CMTimeSubtract(&time1.start, &rhs, &lhs);
      rhs = time1.start;
      v51 = vcvtmd_s64_f64(CMTimeGetSeconds(&rhs) * v50->duration.timescale / v50->duration.value + 1.0);
      if (v49 < v51)
      {
        v51 = v49;
      }

      v52 = v51 & ~(v51 >> 63);
      goto LABEL_88;
    }

    if (timingArrayEntriesNeededOut < 1)
    {
      speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_4(&time1);
      goto LABEL_172;
    }

    if (v49 < 1)
    {
      v52 = 0;
    }

    else
    {
      v121 = v24;
      v52 = 0;
      p_epoch = &v50->presentationTimeStamp.epoch;
      while (1)
      {
        if ((v170.value = *(p_epoch - 2), v170.timescale = *(p_epoch - 2), v54 = *(p_epoch - 1), v55 = *p_epoch, (v47 & 0x1F) != 3) && (*(p_epoch - 1) & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v164, lhs.timescale = v165, lhs.flags = v47, lhs.epoch = v48, time2.value = v170.value, time2.timescale = v170.timescale, time2.flags = v54, time2.epoch = v55, CMTimeSubtract(&rhs, &lhs, &time2), CMTimeAbsoluteValue(&time1.start, &rhs), CMTimeMake(&rhs, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &rhs) > 0))
        {
          time1.start.value = v164;
          time1.start.timescale = v165;
          time1.start.flags = v47;
          time1.start.epoch = v48;
          rhs.value = v170.value;
          rhs.timescale = v170.timescale;
          rhs.flags = v54;
          rhs.epoch = v55;
          if (CMTimeCompare(&time1.start, &rhs) < 0)
          {
            break;
          }
        }

        p_epoch += 9;
        if (v49 == ++v52)
        {
          v52 = v49;
          break;
        }
      }

      v2 = MEMORY[0x1E6960C70];
      v23 = v128;
      v24 = v121;
    }

LABEL_88:
    free(v50);
LABEL_89:
    v56 = *(DerivedStorage + 136);
    v57 = v52 - v56;
    if (v52 - v56 <= 1)
    {
      v57 = 1;
    }

    v25 = v122;
    if (v122 >= v57)
    {
      v25 = v57;
    }

    v29 = v25 + v56 >= v23;
LABEL_94:
    v58 = *(DerivedStorage + 128);
    if (v58)
    {
      v59 = CFRetain(v58);
    }

    else
    {
      v59 = 0;
    }

    if (v23 >= 1)
    {
      v178.location = *(DerivedStorage + 136);
      v178.length = v25;
      v60 = CMSampleBufferCopySampleBufferForRange(allocator, *(DerivedStorage + 128), v178, &sampleBufferOut);
      v61 = *(DerivedStorage + 136) + v25;
      *(DerivedStorage + 136) = v61;
      if (v61 >= v23)
      {
        v62 = *(DerivedStorage + 128);
        if (v62)
        {
          CFRelease(v62);
          *(DerivedStorage + 128) = 0;
        }
      }

      if (!v60)
      {
        if (v24 >= 1)
        {
          CMRemoveAttachment(sampleBufferOut, v119);
          CMRemoveAttachment(sampleBufferOut, v118);
          CMRemoveAttachment(sampleBufferOut, key);
        }

        if (!v29)
        {
          CMRemoveAttachment(sampleBufferOut, v117);
          CMRemoveAttachment(sampleBufferOut, v116);
        }

        v63 = 0;
        goto LABEL_134;
      }

      break;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v65 = CMCopyDictionaryOfAttachments(AllocatorForMedia, v59, 0);
    v66 = CMSampleBufferCreateCopy(allocator, v59, &sampleBufferOut);
    v67 = *(DerivedStorage + 128);
    if (v67)
    {
      CFRelease(v67);
      *(DerivedStorage + 128) = 0;
    }

    if (v66)
    {
      goto LABEL_187;
    }

    if (v65)
    {
      CMSetAttachments(sampleBufferOut, v65, 0);
    }

    v68 = FigGetAllocatorForMedia();
    v69 = CMCopyDictionaryOfAttachments(v68, v59, 1u);
    v70 = FigCFDictionaryGetCount() < 1 ? 0 : FigCFCopyCompactDescription();
    v71 = FigCFDictionaryGetCount() < 1 ? 0 : FigCFCopyCompactDescription();
    if (v70 | v71)
    {
      v72 = FigGetAllocatorForMedia();
      v73 = &stru_1F0B1AFB8;
      if (v70)
      {
        v74 = v70;
      }

      else
      {
        v74 = &stru_1F0B1AFB8;
      }

      if (v71)
      {
        v73 = v71;
      }

      v63 = CFStringCreateWithFormat(v72, 0, @"%@%@", v74, v73);
      if (!v69)
      {
        goto LABEL_128;
      }

LABEL_127:
      CFRelease(v69);
    }

    else
    {
      v63 = 0;
      if (v69)
      {
        goto LABEL_127;
      }
    }

LABEL_128:
    if (v70)
    {
      CFRelease(v70);
    }

    if (v71)
    {
      CFRelease(v71);
    }

    if (v65)
    {
      CFRelease(v65);
    }

LABEL_134:
    memset(&v163, 0, sizeof(v163));
    CMSampleBufferGetOutputPresentationTimeStamp(&v163, sampleBufferOut);
    v75 = sampleBufferOut;
    v76 = *(DerivedStorage + 176);
    if (v76)
    {
      CFDataGetBytePtr(*(DerivedStorage + 176));
      CFDataGetLength(v76);
      *&v176.value = *v2;
      v176.epoch = v130;
      *&v138.value = *&v176.value;
      v138.epoch = v130;
      valuePtr = 1.0;
      CMSampleBufferGetOutputPresentationTimeStamp(&v176, v75);
      CMSampleBufferGetOutputDuration(&time1.start, v75);
      v77 = time1.start.timescale;
      v78 = time1.start.flags;
      v175 = time1.start.timescale;
      v79 = time1.start.value;
      timingArrayEntriesNeededOut = time1.start.value;
      v80 = time1.start.epoch;
      time1.start = v176;
      rhs.value = v79;
      rhs.timescale = v77;
      rhs.flags = v78;
      rhs.epoch = v80;
      CMTimeAdd(&v138, &time1.start, &rhs);
      v173 = v176;
      time1.start = v176;
      CMSpeedRampMapTimeFromSourceToTarget();
      v170 = v138;
      time1.start = v138;
      CMSpeedRampMapTimeFromSourceToTarget();
      rhs = v170;
      lhs = v173;
      CMTimeSubtract(&time1.start, &rhs, &lhs);
      v81 = time1.start.flags;
      v172 = time1.start.timescale;
      v171 = time1.start.value;
      v82 = time1.start.epoch;
      *&rhs.value = *MEMORY[0x1E6960CC0];
      rhs.epoch = v124;
      if (CMTimeCompare(&time1.start, &rhs))
      {
        if ((v81 & 0x1F) != 3 && (v78 & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v171, lhs.timescale = v172, lhs.flags = v81, lhs.epoch = v82, time2.value = timingArrayEntriesNeededOut, time2.timescale = v175, time2.flags = v78, time2.epoch = v80, CMTimeSubtract(&rhs, &lhs, &time2), CMTimeAbsoluteValue(&time1.start, &rhs), CMTimeMake(&rhs, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &rhs) >= 1))
        {
          time1.start.value = v171;
          time1.start.timescale = v172;
          time1.start.flags = v81;
          time1.start.epoch = v82;
          rhs.value = timingArrayEntriesNeededOut;
          rhs.timescale = v175;
          rhs.flags = v78;
          rhs.epoch = v80;
          if (CMTimeCompare(&time1.start, &rhs))
          {
            time1.start.value = v171;
            time1.start.timescale = v172;
            time1.start.flags = v81;
            time1.start.epoch = v82;
            Seconds = CMTimeGetSeconds(&time1.start);
            time1.start.value = timingArrayEntriesNeededOut;
            time1.start.timescale = v175;
            time1.start.flags = v78;
            time1.start.epoch = v80;
            v84 = CMTimeGetSeconds(&time1.start);
            v85 = CMGetAttachment(v75, v125, 0);
            if (v85)
            {
              v86 = v85;
              v87 = CFGetTypeID(v85);
              if (v87 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v86, kCFNumberDoubleType, &valuePtr);
              }
            }

            valuePtr = valuePtr / (Seconds / v84);
            v88 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
            if (v88)
            {
              v89 = v88;
              CMSetAttachment(v75, v125, v88, 1u);
              CFRelease(v89);
            }
          }
        }
      }

      time1.start = v173;
      CMSampleBufferSetOutputPresentationTimeStamp(v75, &time1.start);
      v75 = sampleBufferOut;
    }

    if (CMGetAttachment(v75, v125, 0))
    {
      FigCFNumberGetFloat64();
      v91 = v90;
    }

    else
    {
      v91 = 1.0;
    }

    if (dword_1EAF17C38)
    {
      LODWORD(lhs.value) = 0;
      LOBYTE(time2.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v93 = lhs.value;
      value_low = LOBYTE(time2.value);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value))
      {
        v95 = v93;
      }

      else
      {
        v95 = v93 & 0xFFFFFFFE;
      }

      if (v95)
      {
        v96 = *(DerivedStorage + 136);
        time1.start = v163;
        v97 = CMTimeGetSeconds(&time1.start);
        v98 = sampleBufferOut;
        CMSampleBufferGetDuration(&time1.start, sampleBufferOut);
        v99 = CMTimeGetSeconds(&time1.start);
        CMSampleBufferGetOutputPresentationTimeStamp(&time1.start, sampleBufferOut);
        v100 = CMTimeGetSeconds(&time1.start);
        CMSampleBufferGetOutputPresentationTimeStamp(&time1.start, sampleBufferOut);
        v101 = CMTimeGetSeconds(&time1.start);
        time1.start = start;
        v102 = v101 - CMTimeGetSeconds(&time1.start);
        time1.start = start;
        v103 = CMTimeGetSeconds(&time1.start);
        LODWORD(time1.start.value) = 136318722;
        v104 = &stru_1F0B1AFB8;
        if (v63)
        {
          v104 = v63;
        }

        *(&time1.start.value + 4) = "speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel";
        LOWORD(time1.start.flags) = 2082;
        *(&time1.start.flags + 2) = DerivedStorage + 224;
        HIWORD(time1.start.epoch) = 2048;
        time1.duration.value = a1;
        LOWORD(time1.duration.timescale) = 2048;
        *(&time1.duration.timescale + 2) = v59;
        WORD1(time1.duration.epoch) = 1024;
        HIDWORD(time1.duration.epoch) = v126;
        v142 = 1024;
        v143 = v96;
        v144 = 1024;
        v145 = v128;
        v146 = 2048;
        v147 = v97;
        v148 = 2048;
        v149 = v98;
        v150 = 2048;
        v151 = v99;
        v152 = 2048;
        v153 = v100;
        v154 = 2048;
        v155 = v91;
        v156 = 2048;
        v157 = v102;
        v158 = 2048;
        v159 = v103;
        v160 = 2114;
        v161 = v104;
        LODWORD(v113) = 140;
        _os_log_send_and_compose_impl(v95, 0, &rhs, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< SpeedRamp RP >>>> %s: %{public}s (%p) original sbuf %p [%2d..<%d of %d] opts %1.3f -> adjusted sbuf %p duration %1.3f opts %1.3f speedmult %1.5f (%1.3f ahead of timebase time %1.3f) %{public}@", &time1, v113);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CMBufferQueueEnqueue(*(DerivedStorage + 192), sampleBufferOut))
    {
      break;
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&rhs, sampleBufferOut);
    CMSampleBufferGetOutputDuration(&lhs, sampleBufferOut);
    CMTimeAdd(&time1.start, &rhs, &lhs);
    *(DerivedStorage + 144) = *&time1.start.value;
    *(DerivedStorage + 160) = time1.start.epoch;
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
      sampleBufferOut = 0;
    }

    if (v59)
    {
      CFRelease(v59);
    }

    if (v63)
    {
      CFRelease(v63);
    }
  }

  v65 = 0;
LABEL_187:
  FigSimpleMutexUnlock();
  if (v59)
  {
    CFRelease(v59);
  }

LABEL_189:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v65)
  {
    CFRelease(v65);
  }
}

uint64_t speedramp_dataBecameReady(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v2 = *(result + 32);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 16);
    result = VTable + 16;
    v5 = *(v4 + 16);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

uint64_t speedramp_downstreamBufferQueueLowWater(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v2 = *(result + 32);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 16);
    result = VTable + 16;
    v5 = *(v4 + 16);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

uint64_t speedRampRenderPipelineTimerQueueSetupOnce(uint64_t *a1)
{
  result = FigDispatchQueueCreateWithPriority();
  *a1 = result;
  return result;
}

uint64_t speedramp_wakeUpAndCheckTheTimebase(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v2 = *(result + 32);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 16);
    result = VTable + 16;
    v5 = *(v4 + 16);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

void speedramp_reflectNotificationFromDownstreamRenderPipeline(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t MutableCopy)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"WarehousePleaseRetransmitFromTime", a3) && (v14 = *MEMORY[0x1E6960C70], v15 = *(MEMORY[0x1E6960C70] + 16), FigCFDictionaryGetCMTimeIfPresent()))
  {
    FigSimpleMutexLock();
    v12 = 0uLL;
    v13 = 0;
    v7 = *(DerivedStorage + 176);
    v10 = v14;
    v11 = v15;
    FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData(v7, &v10, &v12);
    FigSimpleMutexUnlock();
    v8 = FigCFDictionaryCreateMutableCopy();
    v10 = v12;
    v11 = v13;
    FigCFDictionarySetCMTime();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t speedramp_reflectNotificationFromUpstreamBufferQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v6 = *(DerivedStorage + 128);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 128) = 0;
    }

    v7 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 144) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 160) = *(v7 + 16);
    CFArrayRemoveAllValues(*(DerivedStorage + 168));
    FigSimpleMutexUnlock();
    v8 = *(DerivedStorage + 32);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v9(v8);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

CFMutableDictionaryRef speedRampRenderPipelineSetupOnce()
{
  sSpeedRampRenderPipelineVTableQueue = dispatch_queue_create("com.apple.coremedia.speedramprenderpipeline.vtables", 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  sSpeedRampRenderPipelineVTableDictionary = result;
  return result;
}

void speedRamp_RenderPipeline_getVTableWithOptionalMethodsWork(int *a1)
{
  v2 = *a1;
  Value = CFDictionaryGetValue(sSpeedRampRenderPipelineVTableDictionary, v2);
  if (Value)
  {
    goto LABEL_15;
  }

  Value = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
  v4 = malloc_type_malloc(0x78uLL, 0x10C00406FD3D2E8uLL);
  __copy_assignment_8_8_t0w8_pa0_57874_8_pa0_34440_16_pa0_612_24_pa0_26992_32_pa0_12599_40_pa0_51310_48_pa0_29770_56_pa0_24547_64_pa0_53210_72_pa0_23665_80_pa0_52496_88_pa0_23813_96_pa0_52734_104_pa0_18255_112(v4, kFigSpeedRampRenderPipeline_FigRenderPipelineClass);
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[1] = 0;
    if ((v2 & 2) != 0)
    {
LABEL_4:
      if ((v2 & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      v4[10] = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v4[2] = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
LABEL_6:
    v4[11] = 0;
  }

LABEL_7:
  *Value = 0;
  Value[1] = &kFigSpeedRampRenderPipeline_BaseClass;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  Value[2] = v5;
  CFDictionarySetValue(sSpeedRampRenderPipelineVTableDictionary, v2, Value);
LABEL_15:
  *(a1 + 1) = Value;
}

void *__copy_assignment_8_8_t0w8_pa0_57874_8_pa0_34440_16_pa0_612_24_pa0_26992_32_pa0_12599_40_pa0_51310_48_pa0_29770_56_pa0_24547_64_pa0_53210_72_pa0_23665_80_pa0_52496_88_pa0_23813_96_pa0_52734_104_pa0_18255_112(void *result, void *a2)
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
  result[12] = a2[12];
  result[13] = a2[13];
  result[14] = a2[14];
  return result;
}

uint64_t figSpeedRampRenderPipelineSetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, float a4, float a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 184);
  v14 = *a2;
  v15 = *(a2 + 2);
  v12 = *a3;
  v13 = *(a3 + 2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  v18 = v14;
  v19 = v15;
  v16 = v12;
  v17 = v13;
  return v10(v9, &v18, &v16, a4, a5);
}

uint64_t figSpeedRampRenderPipelineStartAndUseTimebaseAtTransition(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (a5)
  {
    if (a6)
    {
      v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (!v13)
      {
        figSpeedRampRenderPipelineStartAndUseTimebaseAtTransition_cold_1(&v24);
        return v24;
      }
    }
  }

  FigSimpleMutexLock();
  value[0] = a4;
  value[1] = a2;
  value[2] = 0;
  value[3] = a5;
  value[5] = 0;
  value[6] = 0;
  value[4] = v13;
  CFArrayAppendValue(*(DerivedStorage + 168), value);
  FigSimpleMutexUnlock();
  v14 = *(DerivedStorage + 184);
  v21 = *a3;
  v22 = *(a3 + 2);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v15)
  {
    v19 = 4294954514;
    if (!v13)
    {
      return v19;
    }

    goto LABEL_11;
  }

  v24 = v21;
  v25 = v22;
  v16 = v15(v14, a2, &v24, a4, speedramp_timebaseTransitionCommitted, a1);
  if (v16)
  {
    v19 = v16;
    if (!v13)
    {
      return v19;
    }

    goto LABEL_11;
  }

  v17 = *(DerivedStorage + 32);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v18)
  {
    v18(v17);
  }

  v19 = 0;
  if (v13)
  {
LABEL_11:
    CFRelease(v13);
  }

  return v19;
}

uint64_t figSpeedRampRenderPipelineStartOffline(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 184);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v8 = v6;
  v9 = v7;
  return v4(v3, &v8);
}

uint64_t figSpeedRampRenderPipelineStopOffline(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 184);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

uint64_t figSpeedRampRenderPipelinePretendOutputIsLow(CMTime *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel(a1);
  v3 = *(DerivedStorage + 184);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3);
}

uint64_t figSpeedRampRenderPipelineSynchronizeToTimebase(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 184);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

uint64_t figSpeedRampRenderPipelineRequestDecodeForPreroll(CMTime *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel(a1);
  v5 = *(DerivedStorage + 184);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2);
}

uint64_t figSpeedRampRenderPipelineFinishSettingRate(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 184);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

uint64_t figSpeedRampRenderPipelineCancelAndFlushTransition(CMTime *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17C38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  Count = CFArrayGetCount(*(DerivedStorage + 168));
  if (Count < 1)
  {
LABEL_7:
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 168), v7);
      if (FigCFEqual())
      {
        break;
      }

      if (Count == ++v7)
      {
        goto LABEL_7;
      }
    }

    v10 = *(ValueAtIndex + 2);
    if (v10)
    {
      if (dword_1EAF17C38)
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v10 = *(ValueAtIndex + 2);
      }

      speedramp_setTimebase(a1, v10);
      v15 = *(DerivedStorage + 128);
      if (v15)
      {
        CFRelease(v15);
        *(DerivedStorage + 128) = 0;
      }

      speedramp_setTransferAheadSpeedRampData(a1, *(ValueAtIndex + 6));
    }

    v17.length = Count - v7;
    v17.location = v7;
    CFArrayReplaceValues(*(DerivedStorage + 168), v17, 0, 0);
  }

  FigBufferQueueTwoPassFilter();
  FigSimpleMutexUnlock();
  v11 = *(DerivedStorage + 184);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v12)
  {
    return v12(v11, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t figSpeedRampRenderPipelineFlushFromTime(const void *a1, CMTime *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16[1] = a1;
  *v17 = 0;
  *&v17[4] = *a2;
  memset(&v17[28], 0, 60);
  v16[0] = 0;
  if (dword_1EAF17C38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 128);
  if (v6)
  {
    time = *&v17[4];
    speedramp_copySampleBufferToKeepIfBeforeCutoff(a1, v6, &time, v16, v17);
    v7 = v16[0];
    if (v16[0])
    {
      ++*&v17[28];
    }

    else
    {
      ++*&v17[36];
      CMSampleBufferGetOutputPresentationTimeStamp(&v17[40], *(DerivedStorage + 128));
    }

    v8 = *(DerivedStorage + 128);
    if (v8)
    {
      CFRelease(v8);
    }

    *(DerivedStorage + 128) = v7;
  }

  FigBufferQueueTwoPassFilter();
  if (*&v17[36] + *&v17[32] >= 1 && dword_1EAF17C38)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = *(DerivedStorage + 176);
  v18 = *&a2->value;
  epoch = a2->epoch;
  FigSpeedRampMapTimeFromSourceToTargetUsingMappingArrayData(v10, &v18, &time);
  *&a2->value = *&time.value;
  v11 = time.epoch;
  a2->epoch = time.epoch;
  v12 = *(DerivedStorage + 184);
  v18 = *&a2->value;
  epoch = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v13)
  {
    *&time.value = v18;
    time.epoch = epoch;
    v14 = v13(v12, &time);
  }

  else
  {
    v14 = 4294954514;
  }

  FigSimpleMutexUnlock();
  return v14;
}

uint64_t figSpeedRampRenderPipelineDoesSupportTransitionToFormatDescription(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 184);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v4)
  {
    return 0;
  }

  return v4(v3, a2);
}

uint64_t figSpeedRampRenderPipelineSetPropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    MutableCopy = 0;
LABEL_21:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
    goto LABEL_22;
  }

  v6 = Value;
  v7 = *MEMORY[0x1E695E738];
  if (*MEMORY[0x1E695E738] == Value)
  {
    v8 = 0;
  }

  else
  {
    v8 = Value;
  }

  FigSimpleMutexLock();
  Count = CFArrayGetCount(*(DerivedStorage + 168));
  if (Count < 1)
  {
    goto LABEL_17;
  }

  v10 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 168), 0);
  if (!FigCFEqual())
  {
    v14 = 1;
    while (v10 != v14)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 168), v14++);
      if (FigCFEqual())
      {
        v12 = v14 - 1 < v10;
        goto LABEL_13;
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 1;
LABEL_13:
  v15 = ValueAtIndex[5];
  ValueAtIndex[5] = v8;
  if (v7 != v6)
  {
    CFRetain(v6);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_18:
  FigSimpleMutexUnlock();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryRemoveValue(MutableCopy, @"SpeedRampData");
  if (!v12)
  {
    goto LABEL_21;
  }

  v16 = *(DerivedStorage + 184);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v17)
  {
    v19 = 4294954514;
    if (!MutableCopy)
    {
      return v19;
    }

    goto LABEL_23;
  }

  v18 = v17(v16, a2, MutableCopy);
LABEL_22:
  v19 = v18;
  if (MutableCopy)
  {
LABEL_23:
    CFRelease(MutableCopy);
  }

  return v19;
}

void speedramp_timebaseTransitionCommitted(const void *a1, uint64_t a2, __int128 *a3, __int128 *a4, float a5)
{
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Count = CFArrayGetCount(*(DerivedStorage + 168));
  if (Count < 1)
  {
LABEL_5:

    FigSimpleMutexUnlock();
  }

  else
  {
    v12 = Count;
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 168), v13);
      if (FigCFEqual())
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_5;
      }
    }

    v20 = ValueAtIndex[1];
    ValueAtIndex[1] = 0;
    v15 = ValueAtIndex[3];
    if (ValueAtIndex[4])
    {
      v16 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (!v16)
      {
        if (dword_1EAF17C38)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v16 = 0;
        v15 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = ValueAtIndex[5];
    ValueAtIndex[5] = 0;
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 168), v13);
    CFRetain(a1);
    speedramp_setCommittedTimebase(a1, v20);
    v19 = *(DerivedStorage + 176);
    *(DerivedStorage + 176) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    FigSimpleMutexUnlock();
    if (v15)
    {
      v23 = *a3;
      v24 = *(a3 + 2);
      v21 = *a4;
      v22 = *(a4 + 2);
      v15(v16, a2, &v23, &v21, a5);
    }

    CFRelease(a1);
    if (v20)
    {
      CFRelease(v20);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }
}

void speedramp_setCommittedTimebase(uint64_t a1, const void *a2)
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
}

OpaqueCMTimebase *speedramp_setTimebase(uint64_t a1, OpaqueCMTimebase *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 24);
  if (result != a2)
  {
    if (dword_1EAF17C38)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = *(DerivedStorage + 24);
    }

    if (result)
    {
      CMTimebaseRemoveTimerDispatchSource(result, *(DerivedStorage + 216));
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v6 = *(DerivedStorage + 24);
    }

    else
    {
      v6 = 0;
    }

    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    result = *(DerivedStorage + 24);
    if (result)
    {
      CMTimebaseAddTimerDispatchSource(result, *(DerivedStorage + 216));
      CMNotificationCenterGetDefaultLocalCenter();
      return FigNotificationCenterAddWeakListener();
    }
  }

  return result;
}

CFTypeRef speedramp_retainAndKeepSampleBuffersBeforeTransitionIDMarkerFilterCallback(opaqueCMSampleBuffer *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (*(a2 + 8))
  {
LABEL_9:
    if (CMSampleBufferGetNumSamples(a1) < 1)
    {
      ++*(a2 + 7);
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
      CMSampleBufferGetOutputPresentationTimeStamp(&v11, a1);
      memset(&v10, 0, sizeof(v10));
      CMSampleBufferGetOutputDuration(&v10, a1);
      memset(&v9, 0, sizeof(v9));
      type = v11;
      rhs = v10;
      CMTimeAdd(&v9, &type, &rhs);
      v6 = *(a2 + 8);
      if (!v6)
      {
        *(a2 + 36) = v11;
      }

      *(a2 + 60) = v9;
      *(a2 + 8) = v6 + 1;
    }

    return 0;
  }

  CMGetAttachment(a1, *MEMORY[0x1E6960550], 0);
  if (FigCFEqual())
  {
    if (dword_1EAF17C38)
    {
      LODWORD(v9.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(a2 + 8) = 1;
    goto LABEL_9;
  }

  ++*(a2 + 6);

  return CFRetain(a1);
}

uint64_t speedramp_timebaseTimeJumped(uint64_t a1, uint64_t a2)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 32);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 16);
  if (v6)
  {

    return v6(v2);
  }

  return result;
}

void speedramp_copySampleBufferToKeepIfBeforeCutoff(uint64_t a1, opaqueCMSampleBuffer *a2, CMTime *a3, CFTypeRef *a4, _BYTE *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  sampleBufferOut = 0;
  if (CMSampleBufferGetNumSamples(a2))
  {
    memset(&v32, 0, sizeof(v32));
    CMSampleBufferGetOutputPresentationTimeStamp(&v32, a2);
    memset(&v31, 0, sizeof(v31));
    CMSampleBufferGetOutputDuration(&v31, a2);
    memset(&v30, 0, sizeof(v30));
    lhs = v32;
    rhs = v31;
    CMTimeAdd(&v30, &lhs, &rhs);
    lhs = v30;
    rhs = *a3;
    if (CMTimeCompare(&lhs, &rhs) <= 0)
    {
      if (dword_1EAF17C38 >= 8)
      {
        LODWORD(v29.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v18 = 0;
      *a4 = CFRetain(a2);
      goto LABEL_37;
    }

    lhs = v32;
    rhs = *a3;
    if (CMTimeCompare(&lhs, &rhs) < 0)
    {
      v15 = *MEMORY[0x1E695E480];
      if (!CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], a2, &sampleBufferOut))
      {
        memset(&v29, 0, sizeof(v29));
        lhs = v30;
        rhs = *a3;
        CMTimeSubtract(&v29, &lhs, &rhs);
        v16 = *MEMORY[0x1E6960558];
        v17 = CMGetAttachment(sampleBufferOut, *MEMORY[0x1E6960558], 0);
        memset(&type, 0, sizeof(type));
        CMTimeMakeFromDictionary(&type, v17);
        if ((type.flags & 0x1D) != 1)
        {
          type = **&MEMORY[0x1E6960CC0];
        }

        memset(&v27, 0, sizeof(v27));
        lhs = type;
        rhs = v29;
        CMTimeAdd(&v27, &lhs, &rhs);
        lhs = v27;
        v18 = CMTimeCopyAsDictionary(&lhs, v15);
        CMSetAttachment(sampleBufferOut, v16, v18, 1u);
        *a4 = CFRetain(sampleBufferOut);
        *a5 = 1;
        if (dword_1EAF17C38)
        {
          v26 = 0;
          v25 = OS_LOG_TYPE_DEFAULT;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_37;
      }
    }

    else
    {
      *a5 = 1;
      if (dword_1EAF17C38)
      {
        LODWORD(v29.value) = 0;
        LOBYTE(type.value) = 0;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v18 = 0;
LABEL_37:
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    return;
  }

  memset(&v32, 0, sizeof(v32));
  CMSampleBufferGetOutputPresentationTimeStamp(&v32, a2);
  if ((v32.flags & 0x1D) == 1)
  {
    lhs = v32;
    rhs = *a3;
    v10 = CMTimeCompare(&lhs, &rhs) >= 0;
  }

  else
  {
    v10 = 0;
  }

  if (dword_1EAF17C38)
  {
    v23 = v10;
    v24 = a4;
    v12 = *MEMORY[0x1E695E480];
    v13 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a2, 0);
    if (FigCFDictionaryGetCount() < 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = FigCFCopyCompactDescription();
    }

    v20 = CMCopyDictionaryOfAttachments(v12, a2, 1u);
    if (FigCFDictionaryGetCount() < 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = FigCFCopyCompactDescription();
    }

    a4 = v24;
    if (dword_1EAF17C38)
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a4 = v24;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v10 = v23;
    if (v20)
    {
      CFRelease(v20);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  if (!v10)
  {
    *a4 = CFRetain(a2);
  }
}

CFTypeRef speedramp_copyToSaveTrimOrDiscardFilterCallback(opaqueCMSampleBuffer *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  CMBaseObjectGetDerivedStorage();
  v11 = 0;
  if (*(a2 + 8))
  {
    if (dword_1EAF17C38 >= 8)
    {
      LODWORD(v10.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    time = *(a2 + 12);
    speedramp_copySampleBufferToKeepIfBeforeCutoff(v4, a1, &time, &v11, a2 + 8);
    result = v11;
    if (v11)
    {
      ++*(a2 + 9);
      return result;
    }
  }

  if (CMSampleBufferGetNumSamples(a1) < 1)
  {
    result = 0;
    ++*(a2 + 10);
  }

  else
  {
    memset(&time, 0, sizeof(time));
    CMSampleBufferGetOutputPresentationTimeStamp(&time, a1);
    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetOutputDuration(&v12, a1);
    memset(&v10, 0, sizeof(v10));
    type = time;
    rhs = v12;
    CMTimeAdd(&v10, &type, &rhs);
    v7 = *(a2 + 11);
    if (!v7)
    {
      *(a2 + 2) = time;
    }

    result = 0;
    *(a2 + 3) = v10;
    *(a2 + 11) = v7 + 1;
  }

  return result;
}

uint64_t figSpeedRampRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      if (*(DerivedStorage + 184))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }

      if (*(v2 + 8))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }

      v3 = *(v2 + 200);
      if (v3)
      {
        CMBufferQueueRemoveTrigger(*(v2 + 8), v3);
        *(v2 + 200) = 0;
      }

      v4 = *(v2 + 208);
      if (v4)
      {
        CMBufferQueueRemoveTrigger(*(v2 + 192), v4);
        *(v2 + 208) = 0;
      }

      v5 = *(v2 + 32);
      if (v5 && *(v2 + 40))
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v6)
        {
          v6(v5, 0, 0);
        }

        *(v2 + 40) = 0;
      }

      if (*(v2 + 184))
      {
        FigRenderPipelineGetFigBaseObject();
        if (v7)
        {
          v8 = v7;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v9)
          {
            v9(v8);
          }
        }
      }

      v10 = *(v2 + 216);
      if (v10)
      {
        v11 = *(v2 + 24);
        if (v11)
        {
          CMTimebaseRemoveTimerDispatchSource(v11, v10);
          v10 = *(v2 + 216);
        }

        dispatch_source_cancel(v10);
      }

      if (*(v2 + 24))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }
    }
  }

  return 0;
}

void figSpeedRampRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figSpeedRampRenderPipelineInvalidate(a1);
  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[4] = 0;
  }

  v4 = DerivedStorage[1];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[1] = 0;
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[2] = 0;
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[3] = 0;
  }

  FigSimpleMutexDestroy();
  DerivedStorage[15] = 0;
  v7 = DerivedStorage[16];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[16] = 0;
  }

  v8 = DerivedStorage[21];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[21] = 0;
  }

  v9 = DerivedStorage[23];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[23] = 0;
  }

  v10 = DerivedStorage[24];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[24] = 0;
  }

  v11 = DerivedStorage[27];
  if (v11)
  {
    dispatch_release(v11);
    DerivedStorage[27] = 0;
  }

  v12 = DerivedStorage[22];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[22] = 0;
  }
}

__CFString *figSpeedRampRenderPipelineCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSpeedRampRenderPipeline %p: ", a1);
  v4 = DerivedStorage[23];
  v5 = DerivedStorage[1];
  BufferCount = CMBufferQueueGetBufferCount(v5);
  CFStringAppendFormat(Mutable, 0, @"%s downstreamRenderPipeline %@, sourceSampleBufferQueue %p (%d sbufs)", DerivedStorage + 28, v4, v5, BufferCount);
  v7 = DerivedStorage[22];
  if (v7)
  {
    Length = CFDataGetLength(v7);
    CFStringAppendFormat(Mutable, 0, @", speedRampData with %d mappings", Length / 0x60);
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void figSpeedRampRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v9 = DerivedStorage, *DerivedStorage))
  {
    v10 = qword_1EAF17C30;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954444, "<<<< SpeedRamp RP >>>>", 1198, v4);
    return;
  }

  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    v11 = *(v9 + 1);
    if (v11)
    {
LABEL_8:
      v12 = CFRetain(v11);
LABEL_9:
      v13 = v12;
LABEL_18:
      *a4 = v13;
      return;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (CFEqual(@"SourceSampleBufferConsumer", a2))
  {
    return;
  }

  if (CFEqual(@"SpeedRampData", a2))
  {
    FigSimpleMutexLock();
    v14 = *(v9 + 22);
    if (v14)
    {
      v14 = CFRetain(v14);
    }

    goto LABEL_14;
  }

  if (CFEqual(@"PrefersConsumptionDrivenReads", a2))
  {
    v11 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
  {
    FigSimpleMutexLock();
    memset(&v24, 0, sizeof(v24));
    CMBufferQueueGetEndPresentationTimeStamp(&v24, *(v9 + 1));
    flags = v24.flags;
    if ((v24.flags & 0x1D) != 1)
    {
      v16 = *(v9 + 16);
      if (v16)
      {
        memset(&v23, 0, sizeof(v23));
        CMSampleBufferGetOutputPresentationTimeStamp(&v23, v16);
        memset(&time, 0, sizeof(time));
        CMSampleBufferGetOutputDuration(&time, *(v9 + 16));
        lhs = v23;
        v19 = time;
        CMTimeAdd(&v21, &lhs, &v19);
        v24 = v21;
        flags = v21.flags;
      }
    }

    if ((flags & 1) == 0)
    {
      FigSimpleMutexUnlock();
      FigRenderPipelineCopyProperty(*(v9 + 23), a2, a3, a4);
      return;
    }

    v23 = v24;
    v17 = *(v9 + 22);
    if (v17)
    {
      CFDataGetBytePtr(v17);
      CFDataGetLength(*(v9 + 22));
      time = v24;
      CMSpeedRampMapTimeFromSourceToTarget();
    }

    time = v23;
    v14 = CMTimeCopyAsDictionary(&time, a3);
LABEL_14:
    *a4 = v14;
    FigSimpleMutexUnlock();
    return;
  }

  if (CFEqual(@"SpeedRampCommittedTimebase", a2))
  {
    v11 = *(v9 + 2);
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (CFEqual(@"SpeedRampTransferAheadTimebase", a2))
  {
    v11 = *(v9 + 3);
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (CFEqual(@"LoggingIdentifier", a2))
  {
    v12 = CFStringCreateWithCString(a3, v9 + 224, 0x600u);
    goto LABEL_9;
  }

  v18 = *(v9 + 23);

  FigRenderPipelineCopyProperty(v18, a2, a3, a4);
}

void figSpeedRampRenderPipelineSetProperty(const void *a1, const void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v8 = DerivedStorage, *DerivedStorage))
  {
    v9 = qword_1EAF17C30;
    v10 = v3;
    v11 = 1136;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954444, "<<<< SpeedRamp RP >>>>", v11, v10);
    return;
  }

  if (CFEqual(@"SpeedRampData", a2))
  {
    if (a3)
    {
      v12 = CFGetTypeID(a3);
      if (v12 != CFDataGetTypeID() || !FigSpeedRampDataIsValid(a3))
      {
        v9 = qword_1EAF17C30;
        v10 = v3;
        v11 = 1152;
        goto LABEL_4;
      }
    }

    v20 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (a3 && !FigSpeedRampIsCMTimeMappingArrayDataContinuous(a3))
    {
      FigSimpleMutexUnlock();
      return;
    }

    v44 = *MEMORY[0x1E6960CC0];
    *&v48.value = *MEMORY[0x1E6960CC0];
    v21 = *(MEMORY[0x1E6960CC0] + 16);
    v48.epoch = v21;
    v22 = *(v20 + 24);
    if (v22)
    {
      CMTimebaseGetTime(&v48, v22);
    }

    v23 = *(v20 + 44);
    if (v23 == 1)
    {
      if ((*(v20 + 156) & 0x1D) == 1)
      {
        if ((v46 = 0uLL, v47 = 0, v25 = *(v20 + 176), time1 = *(v20 + 144), FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData(v25, &time1, &v46), memset(&type, 0, sizeof(type)), time1 = *(v20 + 144), FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData(a3, &time1, &type), epoch = type.epoch, v53 = v46.n128_u64[0], v27 = v46.n128_u32[3], v54 = v46.n128_i32[2], v28 = v47, v51 = type.value, flags = type.flags, timescale = type.timescale, (v46.n128_u8[12] & 0x1F) != 3) && (type.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), *&lhs.value = v46, lhs.epoch = v47, rhs = type, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) > 0))
        {
          time1.value = v53;
          time1.timescale = v54;
          time1.flags = v27;
          time1.epoch = v28;
          time.value = v51;
          time.timescale = timescale;
          time.flags = flags;
          time.epoch = epoch;
          if (CMTimeCompare(&time1, &time))
          {
            LODWORD(lhs.value) = 0;
            LOBYTE(rhs.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = lhs.value;
            value_low = LOBYTE(rhs.value);
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, rhs.value))
            {
              v33 = value;
            }

            else
            {
              v33 = value & 0xFFFFFFFE;
            }

            if (v33)
            {
              *&time1.value = v46;
              time1.epoch = v47;
              Seconds = CMTimeGetSeconds(&time1);
              time1 = *(v20 + 144);
              v35 = CMTimeGetSeconds(&time1);
              time1 = type;
              v36 = CMTimeGetSeconds(&time1);
              time1 = *(v20 + 144);
              v37 = CMTimeGetSeconds(&time1);
              time1 = v48;
              v38 = CMTimeGetSeconds(&time1);
              LODWORD(time.value) = 136316930;
              *(&time.value + 4) = "figSpeedRampRenderPipelineSetSpeedRampData";
              LOWORD(time.flags) = 2082;
              *(&time.flags + 2) = v20 + 224;
              HIWORD(time.epoch) = 2048;
              v56 = a1;
              v57 = 2048;
              v58 = Seconds;
              v59 = 2048;
              v60 = v35;
              v61 = 2048;
              v62 = v36;
              v63 = 2048;
              v64 = v37;
              v65 = 2048;
              v66 = v38;
              _os_log_send_and_compose_impl(v33, 0, &time1, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< SpeedRamp RP >>>> %s: %{public}s (%p) WARNING: updated speed ramp indicates different mapping for sbuf already remapped.  previous speed ramp mapped source %1.3f -> target %1.3f, new speed ramp maps source %1.3f -> target %1.3f. (Current target/timebase time: %1.3f.)", &time, 82);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }
    }

    else if (!v23 && (*(v20 + 156) & 0x1D) == 1)
    {
      v24 = *(v20 + 176);
      rhs = v48;
      lhs = **&MEMORY[0x1E6960C70];
      if (v24)
      {
        CFDataGetBytePtr(v24);
        CFDataGetLength(v24);
      }

      if (a3)
      {
        CFDataGetBytePtr(a3);
        CFDataGetLength(a3);
      }

      *&time1.value = v44;
      time1.epoch = v21;
      time = rhs;
      CMFindFirstDivergenceBetweenTimeMappingArrays();
      time1 = lhs;
      time = *(v20 + 144);
      Mutable = 0;
      v40 = 0;
      if (CMTimeCompare(&time1, &time) < 0)
      {
        if (dword_1EAF17C38)
        {
          v46.n128_u32[0] = 0;
          LOBYTE(type.value) = 0;
          v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        time1 = lhs;
        FigCFDictionarySetCMTime();
        v40 = @"WarehousePleaseRetransmitFromTime";
      }

      goto LABEL_53;
    }

    Mutable = 0;
    v40 = 0;
LABEL_53:
    v42 = *(v20 + 176);
    if (v42)
    {
      CFRelease(v42);
      *(v20 + 176) = 0;
    }

    if (a3)
    {
      v43 = CFGetAllocator(a1);
      *(v20 + 176) = CFDataCreateCopy(v43, a3);
    }

    FigSimpleMutexUnlock();
    if (v40)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return;
  }

  if (CFEqual(@"Timebase", a2))
  {
    if (a3)
    {
      v13 = CFGetTypeID(a3);
      if (v13 != CMTimebaseGetTypeID())
      {
        v9 = qword_1EAF17C30;
        v10 = v3;
        v11 = 1168;
        goto LABEL_4;
      }
    }

    speedramp_setCommittedTimebase(a1, a3);
    speedramp_setTimebase(a1, a3);
    FigRenderPipelineGetFigBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v16)
    {
      v16(v15, a2, a3);
    }

    v18 = *(v8 + 4);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v19)
    {
      v19(v18);
    }
  }

  else if (!CFEqual(@"ExpectScaledEdits", a2))
  {
    if (CFEqual(@"WarehouseRetransmissionAvailable", a2) && *MEMORY[0x1E695E4D0] == a3)
    {
      v8[41] = 1;
      *(v8 + 11) = 0;
    }

    v17 = *(v8 + 23);

    FigRenderPipelineSetProperty(v17, a2, a3);
  }
}

uint64_t speedrampUpcomingTransition_retain(uint64_t a1, __int128 *a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 56, 0xE00409497B236, 0);
  v5 = a2[1];
  v4 = a2[2];
  v6 = *a2;
  *(v3 + 48) = *(a2 + 6);
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  *v3 = v6;
  if (*v3)
  {
    CFRetain(*v3);
  }

  v7 = *(v3 + 8);
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = *(v3 + 32);
  if (v9)
  {
    CFRetain(v9);
  }

  v10 = *(v3 + 40);
  if (v10)
  {
    CFRetain(v10);
  }

  v11 = *(v3 + 48);
  if (v11)
  {
    CFRetain(v11);
  }

  return v3;
}

void speedrampUpcomingTransition_release(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  v5 = ptr[2];
  if (v5)
  {
    CFRelease(v5);
    ptr[2] = 0;
  }

  v6 = ptr[4];
  if (v6)
  {
    CFRelease(v6);
    ptr[4] = 0;
  }

  v7 = ptr[5];
  if (v7)
  {
    CFRelease(v7);
    ptr[5] = 0;
  }

  v8 = ptr[6];
  if (v8)
  {
    CFRelease(v8);
    ptr[6] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

Float64 OUTLINED_FUNCTION_0_220@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CMTime *time, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 timea, uint64_t time_16)
{
  time_16 = a1;
  timea = a2;

  return CMTimeGetSeconds(&timea);
}

CMTime *OUTLINED_FUNCTION_2_200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 rangea, __n128 range_16, __n128 range_32, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMTime *a18, uint64_t a19, uint64_t a20, uint64_t a21, CMTimeRange *range, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __n128 rangeb, __n128 range_16a, __n128 range_32a)
{
  range_16a = a10;
  range_32a = a11;
  rangeb = a9;

  return CMTimeRangeGetEnd(&a26, &rangeb);
}

uint64_t figTTMLIntervalTreeRegisterFigTTMLIntervalTree()
{
  result = _CFRuntimeRegisterClass();
  sFigTTMLIntervalTreeID = result;
  return result;
}

uint64_t FigTTMLIntervalTreeCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = Mutable;
  if (a3)
  {
    if (!Mutable)
    {
      FigTTMLIntervalTreeCreate_cold_2(&v20);
      return v20;
    }

    RootNode = FigTTMLTreeGetRootNode(a2);
    v8 = FigTTMLTreeWalkFromNode(RootNode, figTTMLIntervalCopyNodeToArray, 0, v6);
    if (v8)
    {
      v17 = v8;
      goto LABEL_13;
    }

    Count = CFArrayGetCount(v6);
    if (Count >= 2)
    {
      v10 = Count - 1;
      do
      {
        v11 = rand();
        CFArrayExchangeValuesAtIndices(v6, v10, v11 % (v10 + 1));
        --v10;
      }

      while (v10);
    }

    MEMORY[0x19A8D3660](&FigTTMLIntervalTreeGetTypeID_sRegisterFigTTMLIntervalTreeOnce, figTTMLIntervalTreeRegisterFigTTMLIntervalTree);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v13 = Instance;
      Interval = figTTMLIntervalCreateInterval();
      if (CFArrayGetCount(v6) >= 1)
      {
        v15 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v15);
          figTTMLIntervalTreeInsert(Interval, ValueAtIndex);
          ++v15;
        }

        while (v15 < CFArrayGetCount(v6));
      }

      v17 = 0;
      *(v13 + 16) = Interval;
      *a3 = v13;
    }

    else
    {
      FigTTMLIntervalTreeCreate_cold_1(&v19);
      v17 = v19;
    }
  }

  else
  {
    FigTTMLIntervalTreeCreate_cold_3(&v21);
    v17 = v21;
  }

  if (v6)
  {
LABEL_13:
    CFRelease(v6);
  }

  return v17;
}

void *figTTMLIntervalCreateInterval()
{
  v0 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040DD9C6B3AuLL);
  v1 = MEMORY[0x1E6960C70];
  *v0 = *MEMORY[0x1E6960C70];
  v0[2] = *(v1 + 16);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  v0[3] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v0[4] = CFArrayCreateMutable(v2, 0, v3);
  return v0;
}

void figTTMLIntervalReleaseInterval(void *a1)
{
  if (a1)
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

    figTTMLIntervalReleaseInterval(a1[5]);
    figTTMLIntervalReleaseInterval(a1[6]);

    free(a1);
  }
}

uint64_t FigTTMLIntervalTreeAppendActiveNodesToArray(uint64_t a1, __int128 *a2, __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    FigTTMLIntervalTreeAppendActiveNodesToArray_cold_2(&v10);
    return v10;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    FigTTMLIntervalTreeAppendActiveNodesToArray_cold_1(&v10);
    return v10;
  }

  v8 = *(a1 + 16);
  v10 = *a2;
  v11 = *(a2 + 2);
  figTTMLIntervalTreeAppendActiveNodesToArray(v8, &v10, a3, a4, a5, a6, a7, a8);
  return 0;
}

double figTTMLIntervalTreeAppendActiveNodesToArray(uint64_t a1, uint64_t a2, __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 12) & 1) == 0)
  {
    return figTTMLIntervalTreeAppendActiveNodesToArray_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v22.start.value, v22.start.timescale, v22.start.flags, v22.start.epoch);
  }

  *&time1.start.value = *a1;
  time1.start.epoch = *(a1 + 16);
  *&v22.start.value = *a2;
  v22.start.epoch = *(a2 + 16);
  v11 = CMTimeCompare(&time1.start, &v22.start);
  if (v11 < 1)
  {
    v16 = v11;
    Count = CFArrayGetCount(*(a1 + 32));
    if (v16 < 0)
    {
      if (Count >= 1)
      {
        v20 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v20);
          memset(&time1, 0, sizeof(time1));
          FigTTMLNodeGetActiveTimeRange(ValueAtIndex, &time1);
          v22 = time1;
          CMTimeRangeGetEnd(&time2, &v22);
          *&v22.start.value = *a2;
          v22.start.epoch = *(a2 + 16);
          if (CMTimeCompare(&time2, &v22.start) < 1)
          {
            break;
          }

          CFArrayAppendValue(a3, ValueAtIndex);
          ++v20;
        }

        while (v20 < CFArrayGetCount(*(a1 + 32)));
      }

      v15 = *(a1 + 48);
      if (v15)
      {
        goto LABEL_8;
      }
    }

    else if (Count >= 1)
    {
      v18 = 0;
      do
      {
        v19 = CFArrayGetValueAtIndex(*(a1 + 32), v18);
        CFArrayAppendValue(a3, v19);
        ++v18;
      }

      while (v18 < CFArrayGetCount(*(a1 + 32)));
    }
  }

  else
  {
    if (CFArrayGetCount(*(a1 + 24)) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = CFArrayGetValueAtIndex(*(a1 + 24), v13);
        memset(&time1, 0, sizeof(time1));
        FigTTMLNodeGetActiveTimeRange(v14, &time1);
        *&v22.start.value = *a2;
        v22.start.epoch = *(a2 + 16);
        time2 = time1.start;
        if (CMTimeCompare(&v22.start, &time2) < 0)
        {
          break;
        }

        CFArrayAppendValue(a3, v14);
        ++v13;
      }

      while (v13 < CFArrayGetCount(*(a1 + 24)));
    }

    v15 = *(a1 + 40);
    if (v15)
    {
LABEL_8:
      *&time1.start.value = *a2;
      time1.start.epoch = *(a2 + 16);
      figTTMLIntervalTreeAppendActiveNodesToArray(v15, &time1, a3);
    }
  }

  return result;
}

void figTTMLIntervalTreeInsertToSortedArray(const __CFArray *a1, const void *a2, CFComparisonResult (__cdecl *a3)(const void *, const void *, void *))
{
  v8.length = CFArrayGetCount(a1);
  v8.location = 0;
  Count = CFArrayBSearchValues(a1, v8, a2, a3, 0);
  if (Count > CFArrayGetCount(a1))
  {
    Count = CFArrayGetCount(a1);
  }

  CFArrayInsertValueAtIndex(a1, Count, a2);
}

uint64_t figTTMLIntervalTreeCompareByStart(uint64_t a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  FigTTMLNodeGetActiveTimeRange(a1, &v9);
  FigTTMLNodeGetActiveTimeRange(a2, &v6);
  *&time1.value = v9;
  time1.epoch = v10;
  *&v4.value = v6;
  v4.epoch = v7;
  return CMTimeCompare(&time1, &v4);
}

uint64_t figTTMLIntervalTreeCompareByEnd(uint64_t a1, uint64_t a2)
{
  memset(&v8, 0, sizeof(v8));
  memset(&v7, 0, sizeof(v7));
  FigTTMLNodeGetActiveTimeRange(a1, &v8);
  FigTTMLNodeGetActiveTimeRange(a2, &v7);
  range = v7;
  CMTimeRangeGetEnd(&time1, &range);
  range = v8;
  CMTimeRangeGetEnd(&time2, &range);
  return CMTimeCompare(&time1, &time2);
}

uint64_t FigFairPlayCPEProtectorCloudInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 8);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 8) = 0;
    }

    v5 = *v3;
    if (*v3)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v6)
      {
        v6(v5, a1);
      }

      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }
    }

    v7 = *(v3 + 16);
    if (v7)
    {
      FigFairPlayAirPlaySessionDestroy(v7);
      *(v3 + 16) = 0;
    }
  }

  return 0;
}

__CFString *FigFairPlayCPEProtectorCloudCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  if (DerivedStorage && Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigFPCCPEProtector: sharedContext<%@>", *DerivedStorage);
  }

  return v3;
}

uint64_t FigFairPlayCPEProtectorCloudSetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 4294955144;
  }

  else
  {
    return 4294955146;
  }
}

uint64_t FigFairPlayCPEProtectorCloudBeginAirPlaySessionAsync(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    v13 = 4294955138;
    goto LABEL_11;
  }

  v9 = DerivedStorage;
  number = 0;
  valuePtr = 0;
  v10 = *DerivedStorage;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    if (!v11(v10, 0x1F0B529B8, *MEMORY[0x1E695E480], &number))
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      if (number)
      {
        CFRelease(number);
      }
    }
  }

  v12 = FigFairPlayAirPlaySessionCreateWithContentInfo(valuePtr, v9[1], a2);
  v9[2] = v12;
  if (!v12)
  {
    v13 = 4294955145;
    goto LABEL_11;
  }

  v13 = FigFairPlayAirPlaySessionBeginAsync(v12, a3, a4);
  if (v13)
  {
LABEL_11:
    FigFairPlayCPEProtectorCloudEndAirPlaySession(a1);
  }

  return v13;
}

uint64_t RegisterFigFairPlayCPEProtectorCloudType()
{
  FigCPEProtectorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLProfileCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a4)
  {
    FigTTMLProfileCreate_cold_2(&v16);
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
    v15 = 193;
LABEL_14:
    FigTTMLBodyCreate_cold_1(v15, &v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v11;
  if (!v11)
  {
    v15 = 196;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  FigTTMLParseNode(a2, figTTMLProfileConsumeChildNode, a3);
  v13 = v12;
  if (!v12)
  {
    *a4 = 0;
  }

  return v13;
}