void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigConvertCSSStyleSheetDataToTextMarkup(const __CFAllocator *a1, const __CFData *a2, __CFArray **a3, void *a4)
{
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_161:
    v62 = v8;
    goto LABEL_148;
  }

  v8 = FigTextContainerCreateWithCFData(a1, a2, 0x8000100u, 0, &v98);
  if (v8)
  {
    goto LABEL_161;
  }

  v8 = FigCSSParserCreate(a1, v98, 0, &v97);
  if (v8)
  {
    goto LABEL_161;
  }

  v8 = FigCSSParserProduceStyleSheet(v97, &v96);
  if (v8)
  {
    goto LABEL_161;
  }

  v8 = FigCSSStyleSheetCopyRuleList(v96, &v94);
  if (v8)
  {
    goto LABEL_161;
  }

  v78 = a3;
  v79 = a4;
  Length = FigCSSRuleListGetLength(v94, v9);
  if (Length < 1)
  {
    v14 = 0;
    v62 = 0;
    v13 = 0;
LABEL_144:
    *v78 = v13;
    if (v79)
    {
      *v79 = 0;
    }

    if (v14)
    {
      goto LABEL_147;
    }

    goto LABEL_148;
  }

  v11 = Length;
  v66 = v4;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  key = *MEMORY[0x1E6960A88];
  v69 = *MEMORY[0x1E6960880];
  v67 = *MEMORY[0x1E6960858];
  v87 = *MEMORY[0x1E695E4D0];
  v91 = *MEMORY[0x1E695E4C0];
  v70 = *MEMORY[0x1E69607C0];
  v71 = *MEMORY[0x1E6960B48];
  v72 = *MEMORY[0x1E6960B40];
  v74 = *MEMORY[0x1E6960B38];
  v75 = *MEMORY[0x1E6960990];
  v84 = *MEMORY[0x1E6960948];
  v76 = *MEMORY[0x1E6960B68];
  v77 = *MEMORY[0x1E6960B70];
  v82 = *MEMORY[0x1E6960938];
  v83 = *MEMORY[0x1E6960B78];
  allocator = *MEMORY[0x1E695E480];
  v81 = *MEMORY[0x1E6960890];
  v86 = *MEMORY[0x1E69608A8];
  v89 = *MEMORY[0x1E6960878];
  v90 = *MEMORY[0x1E69607D0];
  v68 = *MEMORY[0x1E6960928];
  v85 = Length;
  while (1)
  {
    v93 = 0;
    v15 = FigCSSRuleListCopyRuleAtIndex(v94, v12, &v95, &v93);
    if (v93 == 1)
    {
      break;
    }

    v62 = v15;
LABEL_132:
    if (v95)
    {
      CFRelease(v95);
      v95 = 0;
    }

    if (++v12 == v11)
    {
      goto LABEL_144;
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v14 = v95;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  if (!v95)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, v67);
    Mutable = 0;
LABEL_139:
    v19 = 0;
    goto LABEL_142;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, v67);
LABEL_138:
    v14 = 0;
    goto LABEL_139;
  }

  if (FigCSSStyleRuleCopySelector(v14, &v102) || !v102)
  {
    goto LABEL_138;
  }

  v17 = CFStringGetLength(v102);
  MutableCopy = CFStringCreateMutableCopy(a1, v17, v102);
  v19 = MutableCopy;
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, v67);
LABEL_141:
    v14 = 0;
LABEL_142:
    v24 = 0;
    goto LABEL_113;
  }

  CFStringTrimWhitespace(MutableCopy);
  CFDictionarySetValue(Mutable, key, v19);
  if (FigCSSStyleRuleCopyDeclaration(v14, &v101))
  {
    goto LABEL_141;
  }

  PropertyCount = FigCSSStyleDeclarationGetPropertyCount(v101, v20);
  if (PropertyCount < 1)
  {
    v24 = 0;
    goto LABEL_112;
  }

  v22 = PropertyCount;
  theArray = v13;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  do
  {
    if (v100)
    {
      CFRelease(v100);
      v100 = 0;
    }

    if (v99)
    {
      CFRelease(v99);
      v99 = 0;
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (FigCSSStyleDeclarationCopyPropertyNameAtIndex(v101, v23, &v100) || (FigCSSStyleDeclarationCopyPropertyValue(v101, v100, &v99), v26))
    {
      v24 = 0;
      goto LABEL_29;
    }

    v27 = v99;
    if (v99 && (v28 = CFGetTypeID(v99), TypeID = CFStringGetTypeID(), v27 = v99, v28 == TypeID))
    {
      v30 = CFStringGetLength(v99);
      v24 = CFStringCreateMutableCopy(a1, v30, v99);
      CFStringTrimWhitespace(v24);
      v27 = v99;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v31 = v24;
    }

    else
    {
      v31 = v27;
    }

    v103[0] = 0;
    if (OUTLINED_FUNCTION_2_135(@"color") == kCFCompareEqualTo)
    {
      if (FigCSSParserUtilitiesParseColor(a1, v31, v103))
      {
        goto LABEL_65;
      }

      v34 = v103[0];
      v33 = v89;
      goto LABEL_57;
    }

    if (OUTLINED_FUNCTION_2_135(@"font-weight") == kCFCompareEqualTo)
    {
      v36 = OUTLINED_FUNCTION_1_142(@"normal");
      v33 = v90;
      v34 = v91;
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_1_142(@"bold");
        v33 = v90;
        goto LABEL_64;
      }

      goto LABEL_57;
    }

    if (OUTLINED_FUNCTION_2_135(@"font-style") == kCFCompareEqualTo)
    {
      v38 = OUTLINED_FUNCTION_1_142(@"normal");
      v33 = v86;
      v34 = v91;
      if (v38)
      {
        v37 = OUTLINED_FUNCTION_1_142(@"italic");
        v33 = v86;
        goto LABEL_64;
      }

LABEL_57:
      if (v33 && v34)
      {
        CFDictionarySetValue(Mutable, v33, v34);
        v35 = 1;
LABEL_96:
        CFRelease(v34);
        v39 = v35;
        goto LABEL_97;
      }

      goto LABEL_95;
    }

    if (OUTLINED_FUNCTION_2_135(@"text-combine-upright"))
    {
      if (OUTLINED_FUNCTION_2_135(@"ruby-position") == kCFCompareEqualTo)
      {
        v44 = OUTLINED_FUNCTION_1_142(@"over");
        v34 = v83;
        v33 = v84;
        if (v44)
        {
          v45 = OUTLINED_FUNCTION_1_142(@"right");
          v34 = v83;
          v33 = v84;
          if (v45)
          {
            v46 = OUTLINED_FUNCTION_1_142(@"under");
            v33 = v84;
            v34 = v77;
            if (v46)
            {
              v47 = OUTLINED_FUNCTION_1_142(@"left");
              v33 = v84;
              v34 = v77;
              if (v47)
              {
LABEL_65:
                v39 = 0;
                goto LABEL_97;
              }
            }
          }
        }

        goto LABEL_57;
      }

      if (OUTLINED_FUNCTION_2_135(@"ruby-align") == kCFCompareEqualTo)
      {
        v48 = OUTLINED_FUNCTION_1_142(@"start");
        v33 = v82;
        v34 = v76;
        if (v48)
        {
          v49 = OUTLINED_FUNCTION_1_142(@"center");
          v33 = v82;
          v34 = v74;
          if (v49)
          {
            v50 = OUTLINED_FUNCTION_1_142(@"space-between");
            v33 = v82;
            v34 = v72;
            if (v50)
            {
              v51 = OUTLINED_FUNCTION_1_142(@"space-around");
              v33 = v82;
              v34 = v71;
              if (v51)
              {
                goto LABEL_65;
              }
            }
          }
        }

        goto LABEL_57;
      }

      if (OUTLINED_FUNCTION_2_135(@"offset") == kCFCompareEqualTo)
      {
        goto LABEL_65;
      }

      if (OUTLINED_FUNCTION_2_135(@"text-decoration"))
      {
        if (OUTLINED_FUNCTION_2_135(@"background-color"))
        {
          if (OUTLINED_FUNCTION_2_135(@"font-family"))
          {
            if (OUTLINED_FUNCTION_2_135(@"font-size"))
            {
              goto LABEL_65;
            }

            valuePtr[0] = *MEMORY[0x1E6962808];
            if (FigCSSParseFontSize(v31, valuePtr))
            {
              goto LABEL_65;
            }

            if ((BYTE12(valuePtr[0]) & 0x1D) == 1 && DWORD2(valuePtr[0]) == 622862368)
            {
              v34 = OUTLINED_FUNCTION_4_108(*valuePtr, v65, v66, v67, v68, v69, v70, v71, v72, cf, v74, v75, v76, v77, v78, v79, allocator);
              v33 = v68;
            }

            else
            {
              v33 = 0;
              v34 = 0;
            }
          }

          else
          {
            MEMORY[0x19A8D3660](&convertFontFamilyFromCSSToCMTextMarkup_once, initMapFromCSSToCMTextMarkupFontFamily);
            Value = CFDictionaryGetValue(sMapFromCSSToCMTextMarkupFontFamily, v31);
            if (Value)
            {
              v34 = CFRetain(Value);
              v33 = v69;
            }

            else
            {
              if (CFStringGetLength(v31) < 1)
              {
                goto LABEL_65;
              }

              v34 = CFRetain(v31);
              v33 = v67;
            }
          }
        }

        else
        {
          if (FigCSSParserUtilitiesParseColor(a1, v31, v103))
          {
            goto LABEL_65;
          }

          v34 = v103[0];
          v33 = v70;
        }

        goto LABEL_57;
      }

      v52 = OUTLINED_FUNCTION_1_142(@"none");
      v33 = v75;
      v34 = v91;
      if (v52)
      {
        v37 = OUTLINED_FUNCTION_1_142(@"underline");
        v33 = v75;
LABEL_64:
        v34 = v87;
        if (v37)
        {
          goto LABEL_65;
        }

        goto LABEL_57;
      }

      goto LABEL_57;
    }

    if (CFStringCompare(v31, @"none", 1uLL) == kCFCompareEqualTo)
    {
      goto LABEL_65;
    }

    if (CFStringCompare(v31, @"all", 1uLL) == kCFCompareEqualTo || OUTLINED_FUNCTION_2_135(v31) == kCFCompareEqualTo)
    {
      LODWORD(valuePtr[0]) = -1;
      v34 = CFNumberCreate(allocator, kCFNumberSInt32Type, valuePtr);
      v33 = v81;
      goto LABEL_57;
    }

    LODWORD(valuePtr[0]) = 1;
    v40 = CFStringGetLength(@"digits");
    v106.location = 0;
    v106.length = v40;
    if (CFStringCompareWithOptions(v31, @"digits", v106, 1uLL))
    {
      FigCSSParseDigitsAsUInt32(v31, valuePtr);
      v42 = v41;
      v43 = 0;
      if (!v42)
      {
        cf = 0;
LABEL_72:
        v34 = OUTLINED_FUNCTION_4_108(valuePtr[0], v65, v66, v67, v68, v69, v70, v71, v72, cf, v74, v75, v76, v77, v78, v79, allocator);
        v42 = 0;
        v43 = cf;
        if (cf)
        {
          goto LABEL_93;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v53 = CFGetAllocator(v31);
      v54 = CFStringCreateMutableCopy(v53, 0, v31);
      if (v54)
      {
        v55 = v54;
        v105.location = 0;
        v105.length = v40;
        CFStringReplace(v54, v105, &stru_1F0B1AFB8);
        v56 = CFStringGetLength(v55);
        CFStringTrimWhitespace(v55);
        if (v56 > CFStringGetLength(v55))
        {
          cf = v55;
          FigCSSParseDigitsAsUInt32(v55, valuePtr);
          if (v57)
          {
            v42 = v57;
            v34 = 0;
            v43 = cf;
LABEL_93:
            CFRelease(v43);
            goto LABEL_94;
          }

          goto LABEL_72;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, v67);
        v60 = v55;
        v42 = v61;
        v43 = v60;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, v67);
        v42 = v59;
        v43 = 0;
      }
    }

    v34 = 0;
    if (v43)
    {
      goto LABEL_93;
    }

LABEL_94:
    v33 = v81;
    if (!v42)
    {
      goto LABEL_57;
    }

LABEL_95:
    v35 = 0;
    v39 = 0;
    if (v34)
    {
      goto LABEL_96;
    }

LABEL_97:
    v25 += v39;
LABEL_29:
    ++v23;
  }

  while (v22 != v23);
  if (v25)
  {
    v14 = Mutable;
    Mutable = 0;
    v11 = v85;
    v13 = theArray;
    goto LABEL_113;
  }

  v11 = v85;
  v13 = theArray;
LABEL_112:
  CFRelease(Mutable);
  v14 = 0;
  Mutable = 0;
LABEL_113:
  if (v100)
  {
    CFRelease(v100);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v14)
  {
LABEL_131:
    v62 = 0;
    goto LABEL_132;
  }

  if (v13 || (v13 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0])) != 0)
  {
    CFArrayAppendValue(v13, v14);
    goto LABEL_131;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, v67);
  v62 = v64;
LABEL_147:
  CFRelease(v14);
LABEL_148:
  if (v94)
  {
    CFRelease(v94);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  return v62;
}

void FigCSSParserUtilitiesParseColor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigBufferedAirPlayAudioChainSubPipeTranscodeCreate(const __CFAllocator *a1, const void *a2, const void *a3, NSObject *a4, const void *a5, int a6, const void *a7, const __CFDictionary *a8, void *a9)
{
  v286 = a7;
  theDict = a8;
  HIDWORD(v284) = a6;
  v280 = a2;
  allocator = a1;
  v361 = *MEMORY[0x1E69E9840];
  v293 = 0;
  value = 0;
  v292 = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_36_8();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_36_8();
  fig_note_initialize_category_with_default_work_cf();
  v285 = a3;
  if (!a3 || !a4 || !a5 || !a9)
  {
    OUTLINED_FUNCTION_9_51();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigBufferedAirPlayAudioChainSubPipeGetClassID();
  if (CMDerivedObjectCreate())
  {
    return result;
  }

  v290 = a4;
  v288 = a5;
  v279 = v9;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  if (theDict && CFDictionaryGetValueIfPresent(theDict, @"LoggingID", &value))
  {
    CFStringGetCString(value, DerivedStorage, 20, 0x600u);
  }

  v16 = FigSimpleMutexCreate();
  *(DerivedStorage + 24) = v16;
  if (v16)
  {
    v17 = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayAudioChainTranscodeSubPipe.notificationQueue", 0);
    *(DerivedStorage + 32) = v17;
    if (v17)
    {
      v281 = a9;
      v18 = CMBaseObjectGetDerivedStorage();
      memset(&v296, 0, sizeof(v296));
      CMTimeMake(&v296, 1000, 1000);
      memset(&v295, 0, sizeof(v295));
      CMTimeMake(&v295, 2000, 1000);
      v283 = *MEMORY[0x1E6960C70];
      *&time.value = *MEMORY[0x1E6960C70];
      v282 = *(MEMORY[0x1E6960C70] + 16);
      time.epoch = v282;
      v19 = CMTimeCopyAsDictionary(&time, allocator);
      formatDescriptionOut = 0;
      *v300 = 0u;
      v301 = 0u;
      memset(&asbd, 0, sizeof(asbd));
      cf = 0;
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      v21 = MutableCopy;
      v289 = 0;
      if (!MutableCopy)
      {
        v104 = 0;
        v103 = -12853;
        goto LABEL_78;
      }

      CFDictionarySetValue(MutableCopy, @"BufferedAirPlayDecode", *MEMORY[0x1E695E4D0]);
      CFDictionarySetValue(v21, @"PreparedQueueLowWaterLevel", v19);
      CFDictionarySetValue(v21, @"PreparedQueueHighWaterLevel", v19);
      if (theDict)
      {
        v30 = OUTLINED_FUNCTION_45_16();
        if (v30)
        {
          OUTLINED_FUNCTION_21_27(v30);
        }

        v31 = OUTLINED_FUNCTION_45_16();
        if (v31)
        {
          OUTLINED_FUNCTION_21_27(v31);
        }

        v32 = OUTLINED_FUNCTION_45_16();
        if (v32)
        {
          OUTLINED_FUNCTION_21_27(v32);
        }

        v33 = OUTLINED_FUNCTION_45_16();
        if (v33)
        {
          OUTLINED_FUNCTION_21_27(v33);
        }

        v34 = CFDictionaryGetValue(theDict, @"FormatDescription");
        formatDescriptionOut = v34;
        if (v34)
        {
          CFRetain(v34);
          CFDictionarySetValue(v21, @"FormatDescription", formatDescriptionOut);
          FigCFDictionarySetValueFromKeyInDict();
          goto LABEL_37;
        }

        v22 = FigCFDictionarySetValueFromKeyInDict();
      }

      if (dword_1EAF175F0)
      {
        v35 = OUTLINED_FUNCTION_13_40(v22, v23, v24, v25, v26, v27, v28, v29, v273, v274, v275, v276, v277, v278, v9, v280, a9, v282, v283, *(&v283 + 1), v284, v285, v286, theDict, v288, 0, v290, allocator, 0, 0, value, v295.value, *&v295.timescale, v295.epoch, v296.value, *&v296.timescale, v296.epoch, cf, *&asbd.mSampleRate, *&asbd.mFormatID, *&asbd.mBytesPerPacket, *&asbd.mBytesPerFrame, *&asbd.mBitsPerChannel, v299, v300[0], v300[1], v301, *(&v301 + 1), formatDescriptionOut, v303, v304, type[0], v306);
        v36 = v306;
        v37 = type[0];
        if (os_log_type_enabled(v35, type[0]))
        {
          v38 = v36;
        }

        else
        {
          v38 = v36 & 0xFFFFFFFE;
        }

        if (v38)
        {
          if (v289)
          {
            v39 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v39 = "";
          }

          LODWORD(v357.value) = 136315650;
          *(&v357.value + 4) = "bapspTranscode_setupAudioRenderPipelineOptions";
          LOWORD(v357.flags) = 2048;
          *(&v357.flags + 2) = v289;
          HIWORD(v357.epoch) = 2082;
          v358 = v39;
          OUTLINED_FUNCTION_16_38();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v40, v41, v42, v43, v44, v35, v37, v45);
        }

        OUTLINED_FUNCTION_34_21();
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v14 = v289;
      }

      asbd.mSampleRate = 44100.0;
      *&asbd.mFormatID = xmmword_196E78B20;
      *&asbd.mBytesPerFrame = xmmword_196E78B30;
      LODWORD(v46) = CMAudioFormatDescriptionCreate(allocator, &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
      if (v46)
      {
        goto LABEL_236;
      }

      CFDictionarySetValue(v21, @"FormatDescription", formatDescriptionOut);
LABEL_37:
      RichestDecodableFormatAndChannelLayout = FigAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
      if (!RichestDecodableFormatAndChannelLayout)
      {
        goto LABEL_235;
      }

      v48 = *(RichestDecodableFormatAndChannelLayout + 8);
      v49 = v48 == 1667574579 || v48 == 1700997939;
      if (!v49 && v48 != 1885547315 && v48 != 2053319475 && v48 != 1902324531)
      {
LABEL_66:
        CFDictionarySetValue(v21, @"FormatDescription", v290);
        if (dword_1EAF175F0)
        {
          v85 = OUTLINED_FUNCTION_13_40(v77, v78, v79, v80, v81, v82, v83, v84, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, *(&v283 + 1), v284, v285, v286, theDict, v288, v289, v290, allocator, v292, v293, value, v295.value, *&v295.timescale, v295.epoch, v296.value, *&v296.timescale, v296.epoch, cf, *&asbd.mSampleRate, *&asbd.mFormatID, *&asbd.mBytesPerPacket, *&asbd.mBytesPerFrame, *&asbd.mBitsPerChannel, v299, v300[0], v300[1], v301, *(&v301 + 1), formatDescriptionOut, v303, v304, type[0], v306);
          v86 = v306;
          v87 = type[0];
          os_log_type_enabled(v85, type[0]);
          OUTLINED_FUNCTION_425();
          if (v49)
          {
            v89 = v88;
          }

          else
          {
            v89 = v86;
          }

          if (v89)
          {
            if (v14)
            {
              v90 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v90 = "";
            }

            LODWORD(v357.value) = 136315906;
            *(&v357.value + 4) = "bapspTranscode_setupAudioRenderPipelineOptions";
            OUTLINED_FUNCTION_22_28(v90);
            v359 = 2112;
            *(v91 + 226) = v290;
            OUTLINED_FUNCTION_16_38();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v92, v93, v94, v95, v96, v85, v87, v97);
          }

          OUTLINED_FUNCTION_34_21();
          OUTLINED_FUNCTION_7();
          result = OUTLINED_FUNCTION_635(v98, v99, v100, v101, v102);
        }

        v103 = 0;
        v104 = v21;
        v21 = 0;
LABEL_78:
        if (formatDescriptionOut)
        {
          CFRelease(formatDescriptionOut);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        if (!v103)
        {
          FigAudioQueueRenderPipelineCreate(allocator, v104, (DerivedStorage + 112));
          if (!v105)
          {
            FigRenderPipelineGetFigBaseObject();
            v107 = v106;
            v108 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v108)
            {
              v103 = -12782;
              if (!v104)
              {
                goto LABEL_94;
              }

              goto LABEL_93;
            }

            v105 = v108(v107, @"SourceSampleBufferQueue", allocator, v18 + 88);
            if (!v105)
            {
              v109 = *(v18 + 88);
              time = v295;
              v357 = v296;
              FigSampleBufferConsumerCreateForBufferQueue(v109, &time.value, &v357.value, (v18 + 64));
            }
          }

          v103 = v105;
        }

        if (!v104)
        {
LABEL_94:
          if (v103)
          {
            goto LABEL_238;
          }

          v110 = *(DerivedStorage + 112);
          v111 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (!v111)
          {
            UInt32 = 0;
            goto LABEL_103;
          }

          if (v111(v110, 1))
          {
            goto LABEL_238;
          }

          v112 = &_MergedGlobals_89;
          if (qword_1ED4CB510 != -1)
          {
            dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
          }

          v113 = &_MergedGlobals_89;
          if (_MergedGlobals_99)
          {
            if (v280)
            {
              *(DerivedStorage + 104) = CFRetain(v280);
              *(DerivedStorage + 80) = CFRetain(v285);
              v114 = v286;
              goto LABEL_171;
            }

            OUTLINED_FUNCTION_1_143();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, v274, v275);
            goto LABEL_238;
          }

          if (FigSampleBufferConsumerCreateForSampleBufferConsumer("bapspTranscode_SampleBufferConsumerFromMixer", (DerivedStorage + 96)))
          {
LABEL_238:
            UInt32 = 0;
            goto LABEL_103;
          }

          v116 = *(DerivedStorage + 96);
          v300[0] = 0;
          v296.value = 0;
          v295.value = 0;
          memset(&asbd, 0, 32);
          LODWORD(formatDescriptionOut) = 0;
          LODWORD(cf) = 0;
          LODWORD(v280) = FigGetCFPreferenceNumberWithDefault();
          v306 = 0x8000;
          *type = 0;
          HIDWORD(v304) = -1;
          if (v116 && (*(DerivedStorage + 104) = 0, (v117 = FigAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout()) != 0) && (v118 = v117, (v119 = FigEndpointStreamAudioFormatDescriptionGetASBD()) != 0))
          {
            v120 = v119;
            ChannelLayoutTag = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
            LODWORD(asbd.mSampleRate) = ChannelLayoutTag;
            if (qword_1ED4CB510 != -1)
            {
              dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
            }

            OUTLINED_FUNCTION_26_26();
            if (!v122 && dword_1EAF175F0)
            {
              LODWORD(v304) = 0;
              HIBYTE(v303) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v124 = v304;
              v125 = HIBYTE(v303);
              v278 = os_log_and_send_and_compose_flags_and_os_log_type;
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v303));
              OUTLINED_FUNCTION_425();
              if (v49)
              {
                v127 = v126;
              }

              else
              {
                v127 = v124;
              }

              if (v127)
              {
                if (v289)
                {
                  v128 = CMBaseObjectGetDerivedStorage();
                }

                else
                {
                  v128 = "";
                }

                v129 = *v118;
                v130 = *v120;
                v131 = *(v118 + 16);
                v132 = *(v118 + 20);
                v134 = *(v120 + 16);
                v133 = *(v120 + 20);
                v135 = *(v118 + 24);
                v136 = *(v118 + 28);
                v137 = *(v120 + 24);
                v138 = *(v120 + 28);
                v139 = *(v118 + 8);
                v140 = *(v118 + 12);
                v141 = HIBYTE(v139);
                LODWORD(v276) = BYTE2(v139);
                HIDWORD(v276) = BYTE1(v139);
                v142 = v139;
                v144 = *(v120 + 8);
                v143 = *(v120 + 12);
                HIDWORD(v275) = HIBYTE(v144);
                v145 = *(v118 + 32);
                v146 = *(v120 + 32);
                LODWORD(v277) = v144;
                HIDWORD(v277) = v142;
                v147 = v295.value;
                if (v295.value)
                {
                  v147 = *v295.value;
                }

                LODWORD(time.value) = 136321794;
                *(&time.value + 4) = "bapspTranscode_createMixer";
                LOWORD(time.flags) = 2048;
                *(&time.flags + 2) = v289;
                HIWORD(time.epoch) = 2082;
                v308 = v128;
                v309 = 2048;
                v310 = v129;
                v311 = 2048;
                v312 = v130;
                v313 = 1024;
                v314 = v136;
                v315 = 1024;
                v316 = v138;
                v317 = 1024;
                v318 = v131;
                v319 = 1024;
                v320 = v134;
                v321 = 1024;
                v322 = v132;
                v323 = 1024;
                v324 = v133;
                v325 = 1024;
                v326 = v135;
                v327 = 1024;
                v328 = v137;
                v329 = 1024;
                v330 = v145;
                v331 = 1024;
                v332 = v146;
                v333 = 1024;
                v334 = v140;
                v335 = 1024;
                v336 = v143;
                v337 = 1024;
                v338 = v141;
                v339 = 1024;
                v340 = v276;
                v341 = 1024;
                v342 = HIDWORD(v276);
                v343 = 1024;
                v344 = v142;
                v345 = 1024;
                v346 = HIBYTE(v144);
                v347 = 1024;
                v348 = BYTE2(v144);
                v349 = 1024;
                v350 = BYTE1(v144);
                v351 = 1024;
                v352 = v144;
                v353 = 1024;
                v354 = v147;
                v355 = 1024;
                v356 = ChannelLayoutTag;
                OUTLINED_FUNCTION_33_22();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v148, v149, v150, v151, v152, v278, v125, v153);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635(v154, v155, v156, v157, v158);
              v14 = v289;
              v112 = &_MergedGlobals_89;
            }

            result = FigActivitySchedulerCreateForNewThread(allocator, 36, @"com.apple.coremedia.BAPSubPipeTranscode.mixer", &v296);
            if (v159)
            {
              v186 = v159;
            }

            else
            {
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (Mutable)
              {
                v162 = Mutable;
                v163 = OUTLINED_FUNCTION_30_21(Mutable, v161, &v306);
                if (v163)
                {
                  v164 = v163;
                  FigCFDictionarySetValue();
                  OUTLINED_FUNCTION_38_17();
                  if (!v49 && v165 != 1902211171 && v165 != 1667330147)
                  {
                    goto LABEL_143;
                  }

                  CFRelease(v164);
                  v170 = OUTLINED_FUNCTION_30_21(v168, v169, type);
                  if (v170)
                  {
                    v171 = v170;
                    FigCFDictionarySetValue();
                    CFRelease(v171);
                    v174 = OUTLINED_FUNCTION_30_21(v172, v173, &v304 + 4);
                    if (v174)
                    {
                      v164 = v174;
                      FigCFDictionarySetValue();
LABEL_143:
                      FigCFDictionarySetValueFromKeyInDict();
                      v175 = FigAudioQueueOfflineMixerCreate(allocator, v120, 0xCuLL, &asbd, v162, v116, v296.value, v300);
                      if (v175)
                      {
                        v186 = v175;
                        v114 = v286;
                        goto LABEL_249;
                      }

                      CFRelease(v164);
                      if (*(v120 + 28) >= 3u)
                      {
                        v178 = 32;
                      }

                      else
                      {
                        v178 = 64;
                      }

                      LODWORD(formatDescriptionOut) = v178;
                      v179 = OUTLINED_FUNCTION_30_21(v176, v177, &formatDescriptionOut);
                      v114 = v286;
                      if (v179)
                      {
                        v164 = v179;
                        FigAudioQueueOfflineMixerSetProperty(v300[0], @"AudioQueueOfflineMixer_CodecQuality", v179);
                        if (!v180)
                        {
                          v181 = *(v120 + 8);
                          if (v181 == 1634492771 || v181 == 1668047203 || v181 == 1902928227 || v181 == 2053923171)
                          {
                            v113 = &_MergedGlobals_89;
                          }

                          else
                          {
                            CFRelease(v164);
                            OUTLINED_FUNCTION_38_17();
                            if (v260)
                            {
                              v264 = 1;
                            }

                            else
                            {
                              v264 = v263 == 1902211171;
                            }

                            if (v264 || v263 == 1667330147)
                            {
                              switch(*(v120 + 28))
                              {
                                case 6:
                                  v266 = 512000;
                                  break;
                                case 8:
                                case 0xA:
                                  v266 = 768000;
                                  break;
                                case 0xC:
                                  v266 = 896000;
                                  break;
                                default:
                                  v266 = 256000;
                                  break;
                              }
                            }

                            else if (*(v120 + 28) <= 2u)
                            {
                              v266 = 256000;
                            }

                            else
                            {
                              v266 = 512000;
                            }

                            LODWORD(cf) = v266;
                            v113 = &_MergedGlobals_89;
                            if (v280)
                            {
                              LODWORD(cf) = v280;
                            }

                            v267 = OUTLINED_FUNCTION_30_21(v261, v262, &cf);
                            if (!v267)
                            {
                              OUTLINED_FUNCTION_1_143();
                              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, v274, v275);
                              v186 = v272;
                              v14 = v289;
                              goto LABEL_164;
                            }

                            v164 = v267;
                            FigAudioQueueOfflineMixerSetProperty(v300[0], @"AudioQueueOfflineMixer_BitRateForVBR", v267);
                            if (v268)
                            {
                              v186 = v268;
LABEL_163:
                              CFRelease(v164);
                              v14 = v289;
LABEL_164:
                              CFRelease(v162);
                              v112 = &_MergedGlobals_89;
                              goto LABEL_165;
                            }
                          }

                          FigAudioQueueOfflineMixerSetProperty(v300[0], @"AudioQueueOfflineMixer_SampleBufferAllocator", v286);
                          v186 = v185;
                          if (!v185)
                          {
                            *(DerivedStorage + 104) = v300[0];
                            v300[0] = 0;
                          }

                          goto LABEL_163;
                        }

                        v186 = v180;
LABEL_249:
                        v113 = &_MergedGlobals_89;
                        goto LABEL_163;
                      }

                      OUTLINED_FUNCTION_1_143();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v273, v274, v275);
                      v186 = v270;
                      v14 = v289;
LABEL_251:
                      v113 = &_MergedGlobals_89;
                      goto LABEL_164;
                    }
                  }
                }

                OUTLINED_FUNCTION_1_143();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                v186 = v271;
                v14 = v289;
                v114 = v286;
                goto LABEL_251;
              }

              v186 = -12853;
            }

            v114 = v286;
            v113 = &_MergedGlobals_89;
          }

          else
          {
            OUTLINED_FUNCTION_1_143();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            v186 = v269;
            v114 = v286;
          }

LABEL_165:
          if (v300[0])
          {
            CFRelease(v300[0]);
          }

          if (v296.value)
          {
            CFRelease(v296.value);
          }

          if (!v186 && !FigSampleBufferConsumerOPTSAutoOrderCreate(allocator, v285, "TranscodeOPTSAutoOrder", (DerivedStorage + 80)))
          {
LABEL_171:
            UInt32 = FigCFNumberCreateUInt32();
            if (UInt32)
            {
              bapspTranscode_setThreadPriorities(v14, UInt32);
              if (!FigSampleBufferConsumerSbufInspectorCreate(allocator, *(DerivedStorage + 64), bapspTranscode_inspectSampleBuffer, v14, "sbcSbufInspectForTranscode", (DerivedStorage + 72)))
              {
                *(DerivedStorage + 128) = BYTE4(v284);
                *(DerivedStorage + 48) = CFRetain(v288);
                if (v114)
                {
                  v187 = CFRetain(v114);
                }

                else
                {
                  v187 = 0;
                }

                *(DerivedStorage + 56) = v187;
                *(DerivedStorage + 168) = 0;
                *(DerivedStorage + 40) = 0;
                *(DerivedStorage + 44) = 0;
                *(DerivedStorage + 136) = CFRetain(v290);
                *(DerivedStorage + 144) = v283;
                *(DerivedStorage + 160) = v282;
                if (v112[162] != -1)
                {
                  dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
                }

                v195 = v290;
                if (!*(v113 + 1288))
                {
                  goto LABEL_194;
                }

                v196 = FigAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
                if (v196)
                {
                  v197 = v196;
                  v198 = FigEndpointStreamAudioFormatDescriptionGetASBD();
                  if (v198)
                  {
                    v199 = v198;
                    v200 = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
                    if (!dword_1EAF175F0)
                    {
LABEL_205:
                      *v281 = v14;
LABEL_206:
                      CFRelease(UInt32);
                      return result;
                    }

                    v208 = v200;
                    v209 = OUTLINED_FUNCTION_23_36(v200, v201, v202, v203, v204, v205, v206, v207, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, *(&v283 + 1), v284, v285, v286, theDict, v288, v289, v290, allocator, v292, v293, value, v295.value, *&v295.timescale, v295.epoch, v296.value, *&v296.timescale, v296.epoch, cf, SLODWORD(asbd.mSampleRate), *&asbd.mFormatID, *&asbd.mBytesPerPacket, *&asbd.mBytesPerFrame, *&asbd.mBitsPerChannel, v299, v300[0]);
                    mSampleRate_low = LODWORD(asbd.mSampleRate);
                    v211 = LOBYTE(v300[0]);
                    os_log_type_enabled(v209, v300[0]);
                    OUTLINED_FUNCTION_425();
                    if (v49)
                    {
                      v213 = v212;
                    }

                    else
                    {
                      v213 = mSampleRate_low;
                    }

                    if (v213)
                    {
                      LODWORD(allocator) = v208;
                      v290 = v209;
                      if (v289)
                      {
                        v214 = CMBaseObjectGetDerivedStorage();
                      }

                      else
                      {
                        v214 = "";
                      }

                      v215 = *v197;
                      v216 = *v199;
                      v217 = *(v197 + 16);
                      v218 = *(v197 + 20);
                      v220 = *(v199 + 16);
                      v219 = *(v199 + 20);
                      v221 = *(v197 + 24);
                      v222 = *(v197 + 28);
                      v223 = *(v199 + 24);
                      v224 = *(v199 + 28);
                      v225 = *(v197 + 8);
                      v226 = *(v197 + 12);
                      LODWORD(v288) = v225;
                      v228 = *(v199 + 8);
                      v227 = *(v199 + 12);
                      v229 = *(v197 + 32);
                      v230 = *(v199 + 32);
                      LODWORD(theDict) = v228;
                      v231 = v292;
                      if (v292)
                      {
                        v231 = *v292;
                      }

                      LODWORD(time.value) = 136321794;
                      *(&time.value + 4) = "FigBufferedAirPlayAudioChainSubPipeTranscodeCreate";
                      LOWORD(time.flags) = 2048;
                      *(&time.flags + 2) = v289;
                      HIWORD(time.epoch) = 2082;
                      v308 = v214;
                      v309 = 2048;
                      v310 = v215;
                      v311 = 2048;
                      v312 = v216;
                      v313 = 1024;
                      v314 = v222;
                      v315 = 1024;
                      v316 = v224;
                      v317 = 1024;
                      v318 = v217;
                      v319 = 1024;
                      v320 = v220;
                      v321 = 1024;
                      v322 = v218;
                      v323 = 1024;
                      v324 = v219;
                      v325 = 1024;
                      v326 = v221;
                      v327 = 1024;
                      v328 = v223;
                      v329 = 1024;
                      v330 = v229;
                      v331 = 1024;
                      v332 = v230;
                      v333 = 1024;
                      v334 = v226;
                      v335 = 1024;
                      v336 = v227;
                      v337 = 1024;
                      v338 = HIBYTE(v225);
                      v339 = 1024;
                      v340 = BYTE2(v225);
                      v341 = 1024;
                      v342 = BYTE1(v225);
                      v343 = 1024;
                      v344 = v225;
                      v345 = 1024;
                      v346 = HIBYTE(v228);
                      v347 = 1024;
                      v348 = BYTE2(v228);
                      v349 = 1024;
                      v350 = BYTE1(v228);
                      v351 = 1024;
                      v352 = v228;
                      v353 = 1024;
                      v354 = v231;
                      v355 = 1024;
                      v356 = allocator;
                      OUTLINED_FUNCTION_33_22();
                      OUTLINED_FUNCTION_108();
                      _os_log_send_and_compose_impl(v232, v233, v234, v235, v236, v290, v211, v237);
                    }

                    OUTLINED_FUNCTION_34_21();
                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_635(v238, v239, v240, v241, v242);
                    v14 = v289;
LABEL_194:
                    if (dword_1EAF175F0)
                    {
                      v243 = OUTLINED_FUNCTION_23_36(v195, v188, v189, v190, v191, v192, v193, v194, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, *(&v283 + 1), v284, v285, v286, theDict, v288, v289, v290, allocator, v292, v293, value, v295.value, *&v295.timescale, v295.epoch, v296.value, *&v296.timescale, v296.epoch, cf, SLODWORD(asbd.mSampleRate), *&asbd.mFormatID, *&asbd.mBytesPerPacket, *&asbd.mBytesPerFrame, *&asbd.mBitsPerChannel, v299, v300[0]);
                      v244 = LODWORD(asbd.mSampleRate);
                      v245 = LOBYTE(v300[0]);
                      os_log_type_enabled(v243, v300[0]);
                      OUTLINED_FUNCTION_425();
                      if (v49)
                      {
                        v247 = v246;
                      }

                      else
                      {
                        v247 = v244;
                      }

                      if (v247)
                      {
                        if (v14)
                        {
                          v248 = CMBaseObjectGetDerivedStorage();
                        }

                        else
                        {
                          v248 = "";
                        }

                        LODWORD(v357.value) = 136315650;
                        *(&v357.value + 4) = "FigBufferedAirPlayAudioChainSubPipeTranscodeCreate";
                        OUTLINED_FUNCTION_22_28(v248);
                        OUTLINED_FUNCTION_16_38();
                        OUTLINED_FUNCTION_108();
                        _os_log_send_and_compose_impl(v249, v250, v251, v252, v253, v243, v245, v254);
                      }

                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_635(v255, v256, v257, v258, v259);
                    }

                    goto LABEL_205;
                  }
                }

                OUTLINED_FUNCTION_1_143();
                result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              }
            }

            goto LABEL_103;
          }

          goto LABEL_238;
        }

LABEL_93:
        CFRelease(v104);
        goto LABEL_94;
      }

      if (FigEndpointStreamAudioFormatDescriptionGetASBD())
      {
        LODWORD(v300[0]) = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
        v46 = FigAudioRenderingPreferencesCreate();
        if (!v46)
        {
          if (dword_1EAF175F0)
          {
            v60 = OUTLINED_FUNCTION_13_40(v46, v53, v54, v55, v56, v57, v58, v59, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, *(&v283 + 1), v284, v285, v286, theDict, v288, v289, v290, allocator, v292, v293, value, v295.value, *&v295.timescale, v295.epoch, v296.value, *&v296.timescale, v296.epoch, cf, *&asbd.mSampleRate, *&asbd.mFormatID, *&asbd.mBytesPerPacket, *&asbd.mBytesPerFrame, *&asbd.mBitsPerChannel, v299, v300[0], v300[1], v301, *(&v301 + 1), formatDescriptionOut, v303, v304, type[0], v306);
            v61 = v306;
            v62 = type[0];
            os_log_type_enabled(v60, type[0]);
            OUTLINED_FUNCTION_425();
            if (v49)
            {
              v64 = v63;
            }

            else
            {
              v64 = v61;
            }

            if (v64)
            {
              if (v289)
              {
                v65 = CMBaseObjectGetDerivedStorage();
              }

              else
              {
                v65 = "";
              }

              LODWORD(v357.value) = 136315906;
              *(&v357.value + 4) = "bapspTranscode_setupAudioRenderPipelineOptions";
              LOWORD(v357.flags) = 2048;
              *(&v357.flags + 2) = v289;
              HIWORD(v357.epoch) = 2082;
              v358 = v65;
              v359 = 2112;
              v360 = cf;
              OUTLINED_FUNCTION_16_38();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v66, v67, v68, v69, v70, v60, v62, v71);
            }

            OUTLINED_FUNCTION_34_21();
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635(v72, v73, v74, v75, v76);
            v14 = v289;
          }

          CFDictionarySetValue(v21, @"AudioRenderingPreferences", cf);
          goto LABEL_66;
        }
      }

      else
      {
LABEL_235:
        OUTLINED_FUNCTION_1_143();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

LABEL_236:
      v103 = v46;
      v104 = 0;
      goto LABEL_78;
    }
  }

  UInt32 = 0;
LABEL_103:
  if (v14)
  {
    CFRelease(v14);
  }

  if (UInt32)
  {
    goto LABEL_206;
  }

  return result;
}

void bapspTranscode_setThreadPriorities(uint64_t a1, const __CFNumber *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  if (a2)
  {
    v4 = DerivedStorage;
    CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
    switch(valuePtr)
    {
      case '$':
        v5 = kFigAudioRenderPipelineOfflineRenderPriority_BufferedAirPlayUrgent;
        break;
      case '+':
        v5 = kFigAudioRenderPipelineOfflineRenderPriority_BufferedAirPlayRelaxed;
        break;
      case '%':
        v5 = kFigAudioRenderPipelineOfflineRenderPriority_BufferedAirPlayDefault;
        break;
      default:
        return;
    }

    if (*(v4 + 112))
    {
      v6 = *v5;
      FigRenderPipelineGetFigBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(v8, @"OfflineRenderPriority", v6);
      }
    }

    v10 = *(v4 + 104);
    if (v10)
    {
      FigAudioQueueOfflineMixerSetProperty(v10, @"AudioQueueOfflineMixer_ThreadPriority", a2);
    }
  }
}

uint64_t bapspTranscode_inspectSampleBuffer(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v373 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    FormatDescription = CMSampleBufferGetFormatDescription(a1);
    v6 = MEMORY[0x1E695E480];
    LODWORD(v7) = MEMORY[0x1E695E4D0];
    if (FormatDescription)
    {
      v8 = *(v4 + 136);
      if (!v8 || !CMAudioFormatDescriptionEqual(FormatDescription, v8, 0xFu, 0) || !*(v4 + 168))
      {
        v9 = *v6;
        v10 = CMSampleBufferGetFormatDescription(a1);
        v11 = OUTLINED_FUNCTION_18_34();
        CMSampleBufferGetOutputPresentationTimeStamp(v12, v11);
        if (!FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(v9, @"InputContentFormatDesc", v10, &time, &cf))
        {
          OUTLINED_FUNCTION_41_20(0, v13, v14, v15, v16, v17, v18, v19, v248, v259, v270, DerivedStorage, v292, v304, v321, v332, v341, target, cf);
          v20 = *(v4 + 80);
          v21 = cf;
          v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v22)
          {
            if (!v22(v20, v21))
            {
              *(v4 + 168) = 1;
            }
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v23 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v24 = OUTLINED_FUNCTION_624();
    v26 = CMGetAttachment(v24, v25, 0);
    if (v26)
    {
      v27 = v26;
      v28 = *v6;
      v29 = OUTLINED_FUNCTION_18_34();
      CMSampleBufferGetOutputPresentationTimeStamp(v30, v29);
      epoch = !FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(v28, @"SbufTracer", v27, &time, &cf) && (OUTLINED_FUNCTION_41_20(0, v31, v32, v33, v34, v35, v36, v37, v248, v259, v270, DerivedStorage, v292, v304, v321, v332, v341, target, cf), v38 = *(v23 + 80), v39 = cf, (v40 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0) && v40(v38, v39) == 0;
    }

    else
    {
      epoch = 1;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (epoch)
    {
      v42 = CMBaseObjectGetDerivedStorage();
      v43 = *MEMORY[0x1E6962DF0];
      v44 = CMGetAttachment(a1, *MEMORY[0x1E6962DF0], 0);
      if (v44)
      {
        time = v42[6];
        if (bapspTranscode_setLoudnessInfo(a2, v44, &time.value))
        {
          return 1;
        }

        CMRemoveAttachment(a1, v43);
      }

      v45 = CMBaseObjectGetDerivedStorage();
      targeta = 0;
      v46 = OUTLINED_FUNCTION_624();
      v293 = a2;
      if (CMGetAttachment(v46, v47, 0))
      {
        v48 = OUTLINED_FUNCTION_18_34();
        OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(v49, v48);
        OUTLINED_FUNCTION_8_55(OutputPresentationTimeStamp, v51, v52, v53, v54, v55, v56, v57, v248, v259, v270, DerivedStorage, a2, v304, v321, v332, v341, 0, cf, v363, v364, v365, v366, v367, v368, v369, time.value, time.timescale);
        if (v7)
        {
          epoch = time.epoch;
        }

        else
        {
          OUTLINED_FUNCTION_27_23();
        }

        v58 = OUTLINED_FUNCTION_18_34();
        OutputDuration = CMSampleBufferGetOutputDuration(v59, v58);
        OUTLINED_FUNCTION_14_44(OutputDuration, v61, v62, v63, v64, v65, v66, v67, v249, v260, v271, v282, v294, v305, v322, v333, v342, targetb, cf, v363, v364, v365, v366, v367, v368, v369, time.value, time.timescale);
        if (v76)
        {
          OUTLINED_FUNCTION_17_34();
          v79 = OUTLINED_FUNCTION_7_69(v77, v250, v261, v272, v283, v295, v306, v323, v334, SHIDWORD(v334), v343, targetc, cf, __SPAIR64__(v7, v78), epoch, v365, v366, v367, v368, v369, time.value);
          OUTLINED_FUNCTION_8_55(v79, v80, v81, v82, v83, v84, v85, v86, v251, v262, v273, v284, v296, v307, v324, v335, v344, targeth, cf, v363, v364, v365, v366, v367, v368, v369, time.value, time.timescale);
        }

        if (dword_1EAF175F0)
        {
          v87 = OUTLINED_FUNCTION_24_23(v68, v69, v70, v71, v72, v73, v74, v75, v250, v261, v272, v283, v295, v306, SWORD2(v306), SBYTE6(v306), SHIBYTE(v306), v323);
          OUTLINED_FUNCTION_39_18(v87, v88, v89, v90, v91, v92, v93, v94, v252, v263, v274, v285, v297, v308, v315, v317, v319, v325);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            if (v295)
            {
              v272 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v272 = "";
            }

            OUTLINED_FUNCTION_4_109();
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_5_93();
            v365 = v272;
            OUTLINED_FUNCTION_3_112();
            OUTLINED_FUNCTION_43_0(v95, v96, &time, v97, &dword_1962D5000, v98, v99, "<<<< FigBufferedAirPlayAudioChainSubPipeTranscode >>>> %s: [%p] %{public}s Found PossibleEndOfMediaDataMarkerSBuf %p, sending sample buffer marker with OPTS=%1.3f");
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449(v100, v101, v102, v103, v104);
        }

        v105 = OUTLINED_FUNCTION_624();
        CMRemoveAttachment(v105, v106);
        v107 = *MEMORY[0x1E695E4D0];
        OUTLINED_FUNCTION_4_109();
        if (OUTLINED_FUNCTION_42_20(v108, v109, v110, v111, v112, v113, v114, v115, v250, v261, v272, v283, v295, v306, v323, v334, v343, targetc, cf, v363, v364, v365, v366, v367, v368, v369))
        {
          v119 = 0;
          a2 = v293;
        }

        else
        {
          CMSetAttachment(targeta, @"SBUFForAutoOrder", v107, 0);
          v116 = *(v45 + 80);
          v117 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          a2 = v293;
          if (!v117 || v117(v116, targeta))
          {
            v119 = 0;
          }

          else
          {
            FigSimpleMutexLock();
            v118 = bapspTranscode_terminateQueueWithEndMarker(v293);
            FigSimpleMutexUnlock();
            v119 = v118 == 0;
          }
        }
      }

      else
      {
        v119 = 1;
      }

      if (targeta)
      {
        CFRelease(targeta);
      }

      if (v119)
      {
        v120 = CMBaseObjectGetDerivedStorage();
        v121 = *MEMORY[0x1E6962E00];
        v122 = OUTLINED_FUNCTION_624();
        if (!CMGetAttachment(v122, v123, 0))
        {
          goto LABEL_58;
        }

        v124 = OUTLINED_FUNCTION_18_34();
        v126 = CMSampleBufferGetOutputPresentationTimeStamp(v125, v124);
        OUTLINED_FUNCTION_31_23(v126, v127, v128, v129, v130, v131, v132, v133, v248, v259, v270, DerivedStorage, v293, v304, v321, v332, v341, targeta, cf, v363, v364, v365, v366, v367, v368, v369, time.value, time.timescale);
        v7 = time.epoch;
        v134 = OUTLINED_FUNCTION_18_34();
        v136 = CMSampleBufferGetOutputDuration(v135, v134);
        OUTLINED_FUNCTION_14_44(v136, v137, v138, v139, v140, v141, v142, v143, v253, v264, v275, v286, v298, v309, v326, v336, v345, targeti, cf, v363, v364, v365, v366, v367, v368, v369, time.value, time.timescale);
        if (v144)
        {
          OUTLINED_FUNCTION_17_34();
          v147 = OUTLINED_FUNCTION_7_69(v145, v248, v259, v270, DerivedStorage, v293, v304, v321, v332, SHIDWORD(v332), v341, targetd, cf, __SPAIR64__(v119, v146), v7, v365, v366, v367, v368, v369, time.value);
          OUTLINED_FUNCTION_31_23(v147, v148, v149, v150, v151, v152, v153, v154, v254, v265, v276, v287, v299, v310, v327, v337, v346, targetj, cf, v363, v364, v365, v366, v367, v368, v369, time.value, time.timescale);
          v7 = time.epoch;
        }

        if (dword_1EAF175F0)
        {
          LODWORD(v321) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            v270 = v121;
            if (v293)
            {
              v156 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v156 = "";
            }

            time.value = v371;
            time.timescale = v372;
            time.flags = v119;
            time.epoch = v7;
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_5_93();
            v365 = v156;
            OUTLINED_FUNCTION_3_112();
            OUTLINED_FUNCTION_43_0(v157, v158, &time, v159, &dword_1962D5000, v160, v161, "<<<< FigBufferedAirPlayAudioChainSubPipeTranscode >>>> %s: [%p] %{public}s Found ReleasePlayResourceAfterDecoding %p, sending sample buffer marker with OPTS=%1.3f");
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449(v162, v163, v164, v165, v166);
          a2 = v293;
        }

        v167 = OUTLINED_FUNCTION_624();
        CMRemoveAttachment(v167, v168);
        *(v120 + 44) = 1;
        FigSimpleMutexLock();
        v169 = bapspTranscode_terminateQueueWithEndMarker(a2);
        FigSimpleMutexUnlock();
        if (!v169)
        {
LABEL_58:
          v170 = CMBaseObjectGetDerivedStorage();
          targete = 0;
          v171 = OUTLINED_FUNCTION_624();
          if (CMGetAttachment(v171, v172, 0))
          {
            v173 = OUTLINED_FUNCTION_18_34();
            v175 = CMSampleBufferGetOutputPresentationTimeStamp(v174, v173);
            OUTLINED_FUNCTION_8_55(v175, v176, v177, v178, v179, v180, v181, v182, v248, v259, v270, DerivedStorage, v293, v304, v321, v332, v341, 0, cf, v363, v364, v365, v366, v367, v368, v369, time.value, time.timescale);
            if (v7)
            {
              v119 = time.epoch;
            }

            else
            {
              OUTLINED_FUNCTION_27_23();
            }

            v183 = OUTLINED_FUNCTION_18_34();
            v185 = CMSampleBufferGetOutputDuration(v184, v183);
            OUTLINED_FUNCTION_14_44(v185, v186, v187, v188, v189, v190, v191, v192, v255, v266, v277, v288, v300, v311, v328, v338, v347, targetf, cf, v363, v364, v365, v366, v367, v368, v369, time.value, time.timescale);
            if (v201)
            {
              OUTLINED_FUNCTION_17_34();
              v204 = OUTLINED_FUNCTION_7_69(v202, v256, v267, v278, v289, v301, v312, v329, v339, SHIDWORD(v339), v348, targetg, cf, __SPAIR64__(v7, v203), v119, v365, v366, v367, v368, v369, time.value);
              OUTLINED_FUNCTION_8_55(v204, v205, v206, v207, v208, v209, v210, v211, v257, v268, v279, v290, v302, v313, v330, v340, v349, targetk, cf, v363, v364, v365, v366, v367, v368, v369, time.value, time.timescale);
            }

            if (dword_1EAF175F0)
            {
              v212 = OUTLINED_FUNCTION_24_23(v193, v194, v195, v196, v197, v198, v199, v200, v256, v267, v278, v289, v301, v312, SWORD2(v312), SBYTE6(v312), SHIBYTE(v312), v329);
              OUTLINED_FUNCTION_39_18(v212, v213, v214, v215, v216, v217, v218, v219, v258, v269, v280, v291, v303, v314, v316, v318, v320, v331);
              OUTLINED_FUNCTION_37();
              if (a2)
              {
                v278 = @"FlushRangeEnd";
                if (v301)
                {
                  v220 = CMBaseObjectGetDerivedStorage();
                }

                else
                {
                  v220 = "";
                }

                OUTLINED_FUNCTION_4_109();
                CMTimeGetSeconds(&time);
                OUTLINED_FUNCTION_5_93();
                v365 = v220;
                OUTLINED_FUNCTION_3_112();
                OUTLINED_FUNCTION_43_0(v221, v222, &time, v223, &dword_1962D5000, v224, v225, "<<<< FigBufferedAirPlayAudioChainSubPipeTranscode >>>> %s: [%p] %{public}s Found FlushRangeEnd sbuf %p, sending sample buffer marker with OPTS=%1.3f");
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_449(v226, v227, v228, v229, v230);
              a2 = v301;
            }

            v231 = *MEMORY[0x1E695E4D0];
            OUTLINED_FUNCTION_4_109();
            v242 = !OUTLINED_FUNCTION_42_20(v232, v233, v234, v235, v236, v237, v238, v239, v256, v267, v278, v289, v301, v312, v329, v339, v348, targetg, cf, v363, v364, v365, v366, v367, v368, v369) && (CMSetAttachment(targete, @"SBUFForAutoOrder", v231, 0), v240 = *(v170 + 80), (v241 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0) && v241(v240, targete) == 0;
          }

          else
          {
            v242 = 1;
          }

          if (targete)
          {
            CFRelease(targete);
          }

          if (v242)
          {
            v243 = CMSampleBufferGetFormatDescription(a1);
            if (v243)
            {
              v244 = v243;
              v245 = *(DerivedStorage + 136);
              if (v245)
              {
                if (!CMAudioFormatDescriptionEqual(v243, v245, 0xFu, 0))
                {
                  v246 = *(DerivedStorage + 136);
                  *(DerivedStorage + 136) = v244;
                  CFRetain(v244);
                  if (v246)
                  {
                    CFRelease(v246);
                  }
                }
              }

              else
              {
                *(DerivedStorage + 136) = v243;
                CFRetain(v243);
              }
            }

            bapspTranscode_updateLastSbufInfo(a2, a1);
          }
        }
      }
    }
  }

  return 1;
}

uint64_t bapspTranscode_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 42))
  {
    OUTLINED_FUNCTION_29_22(DerivedStorage);
    *(v1 + 42) = 1;
    if (qword_1ED4CB510 != -1)
    {
      dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
    }

    OUTLINED_FUNCTION_26_26();
    if (!v3)
    {
      FigAudioQueueOfflineMixerInvalidate(*(v1 + 104));
    }

    v4 = *(v1 + 136);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 136) = 0;
    }

    v5 = *(v1 + 48);
    if (v5)
    {
      CFRelease(v5);
      *(v1 + 48) = 0;
    }

    v6 = *(v1 + 56);
    if (v6)
    {
      CFRelease(v6);
      *(v1 + 56) = 0;
    }

    v7 = *(v1 + 64);
    if (v7)
    {
      CFRelease(v7);
      *(v1 + 64) = 0;
    }

    v8 = *(v1 + 88);
    if (v8)
    {
      CFRelease(v8);
      *(v1 + 88) = 0;
    }

    v9 = *(v1 + 72);
    if (v9)
    {
      CFRelease(v9);
      *(v1 + 72) = 0;
    }

    v10 = *(v1 + 80);
    if (v10)
    {
      CFRelease(v10);
      *(v1 + 80) = 0;
    }

    v11 = *(v1 + 96);
    if (v11)
    {
      CFRelease(v11);
      *(v1 + 96) = 0;
    }

    v12 = *(v1 + 112);
    if (v12)
    {
      CFRelease(v12);
      *(v1 + 112) = 0;
    }

    v13 = *(v1 + 104);
    if (v13)
    {
      CFRelease(v13);
      *(v1 + 104) = 0;
    }

    v14 = *(v1 + 120);
    if (v14)
    {
      CFRelease(v14);
      *(v1 + 120) = 0;
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t bapspTranscode_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bapspTranscode_invalidate(a1);
  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 32) = 0;
  }

  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 24) = 0;
  return result;
}

uint64_t bapspTranscode_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 42))
  {
    return 0;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, @"SourceSampleBufferConsumer"))
  {
    v9 = *(v8 + 72);
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"IsStarted"))
  {
    v10 = MEMORY[0x1E695E4D0];
    v11 = *(v8 + 41);
    goto LABEL_7;
  }

  if (CFEqual(a2, @"CurrentFormatDescription"))
  {
    v9 = *(v8 + 136);
    if (!v9)
    {
LABEL_14:
      *a4 = v9;
      return 0;
    }

LABEL_13:
    v9 = CFRetain(v9);
    goto LABEL_14;
  }

  if (CFEqual(a2, @"SubPipeType"))
  {
    v10 = kFigBufferedAirPlayAudioChainSubPipeSubPipeType_Transcode;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"IsAudioChainAssembled"))
  {
    v10 = MEMORY[0x1E695E4D0];
    v11 = *(v8 + 40);
LABEL_7:
    if (!v11)
    {
      v10 = MEMORY[0x1E695E4C0];
    }

LABEL_9:
    v9 = *v10;
    if (!*v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"RemainingInputBufferDuration"))
  {
    CMBufferQueueGetDuration(&time, *(v8 + 88));
    v9 = CMTimeCopyAsDictionary(&time, a3);
    goto LABEL_14;
  }

  v13 = *(v8 + 112);

  return FigRenderPipelineCopyProperty(v13, a2, a3, a4);
}

void bapspTranscode_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 42))
  {
    return;
  }

  v8 = DerivedStorage;
  if (CFEqual(@"LoudnessInfo", a2))
  {
    if (!a3 || (v9 = CFGetTypeID(a3), v9 == CFDictionaryGetTypeID()))
    {
      v10 = MEMORY[0x1E6960C70];

      bapspTranscode_setLoudnessInfo(a1, a3, v10);
      return;
    }

    v14 = qword_1EAF175E8;
    v15 = v3;
    v16 = 1956;
    goto LABEL_20;
  }

  if (CFEqual(@"AudioProcessingTap", a2))
  {
    if (!a3 || (TypeID = MTAudioProcessingTapGetTypeID(), TypeID == CFGetTypeID(a3)))
    {
      FigRenderPipelineGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v12 = OUTLINED_FUNCTION_228();

        v13(v12);
      }
    }

    return;
  }

  if (CFEqual(@"ThreadPriority", a2))
  {
    if (a3)
    {
      v17 = CFGetTypeID(a3);
      if (v17 == CFNumberGetTypeID())
      {
        bapspTranscode_setThreadPriorities(a1, a3);
        return;
      }
    }

    v14 = qword_1EAF175E8;
    v15 = v3;
    v16 = 1976;
LABEL_20:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 4294954516, "<<<< FigBufferedAirPlayAudioChainSubPipeTranscode >>>>", v16, v15);
    return;
  }

  if (CFEqual(@"TimelineMilestone", a2))
  {
    v18 = *(v8 + 104);
    v19 = @"AudioQueueOfflineMixer_TimelineMilestone";
LABEL_28:

    FigAudioQueueOfflineMixerSetProperty(v18, v19, a3);
    return;
  }

  if (CFEqual(@"ApplyTrimAtEndAfterPTS", a2))
  {
    v18 = *(v8 + 104);
    v19 = @"AudioQueueOfflineMixer_ApplyTrimAtEndAfterPTS";
    goto LABEL_28;
  }

  FigRenderPipelineGetFigBaseObject();

  CMBaseObjectSetProperty(v20, a2, a3);
}

uint64_t bapspTranscode_stopAudioChain(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v2 + 42))
  {
    v27 = 0;
    goto LABEL_22;
  }

  if (a2)
  {
    v9 = bapspTranscode_stopMixer(a1, 0);
    if (v9)
    {
      goto LABEL_17;
    }
  }

  v7 = *(v2 + 112);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8(v7);
  if (v9)
  {
    goto LABEL_17;
  }

  if (a2)
  {
    a2 = *(v2 + 112);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v17)
    {
      v9 = v17(a2, 1);
      if (!v9)
      {
        goto LABEL_8;
      }

LABEL_17:
      v27 = v9;
      goto LABEL_22;
    }

LABEL_15:
    v27 = 4294954514;
    goto LABEL_22;
  }

LABEL_8:
  if (dword_1EAF175F0)
  {
    v18 = OUTLINED_FUNCTION_20_29(v9, v10, v11, v12, v13, v14, v15, v16, v35, v37, v39, v41, SBYTE2(v41), SBYTE3(v41), SHIDWORD(v41));
    if (OUTLINED_FUNCTION_311(v18, v19, v20, v21, v22, v23, v24, v25, v36, v38, v40, v42, v43, v44, v45))
    {
      v26 = v3;
    }

    else
    {
      v26 = v3 & 0xFFFFFFFE;
    }

    if (v26)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      CMBufferQueueGetDuration(&time, *(v2 + 88));
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_32_22();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v28, v29, v30, v31, v32, a2, v7, v33);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v27 = 0;
  *(v2 + 41) = 0;
  *(v2 + 44) = 0;
LABEL_22:
  FigSimpleMutexUnlock();
  return v27;
}

uint64_t bapspTranscode_assembleAudioChain(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v1 + 42) || *(v1 + 40))
  {
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v4 = FigNotificationCenterAddWeakListeners();
  if (!v4)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v4 = FigNotificationCenterAddWeakListeners();
    if (!v4)
    {
      FigRenderPipelineGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v5 = OUTLINED_FUNCTION_501();
        v6(v5);
      }

      FigRenderPipelineGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v7 = OUTLINED_FUNCTION_501();
        v8(v7);
      }

      FigRenderPipelineGetFigBaseObject();
      if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        goto LABEL_19;
      }

      v9 = OUTLINED_FUNCTION_501();
      v4 = v10(v9);
      if (!v4)
      {
        if (qword_1ED4CB510 != -1)
        {
          dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
        }

        OUTLINED_FUNCTION_26_26();
        if (v11)
        {
          goto LABEL_14;
        }

        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v13 = OUTLINED_FUNCTION_501();
          v4 = v14(v13);
          if (!v4)
          {
LABEL_14:
            *(v3 + 40) = 1;
            if (dword_1EAF175F0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_20;
          }

          goto LABEL_18;
        }

LABEL_19:
        v15 = 4294954514;
        goto LABEL_21;
      }
    }
  }

LABEL_18:
  v15 = v4;
LABEL_21:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t bapspTranscode_breakAudioChain(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v2 + 42))
  {
    v9 = 0;
    goto LABEL_12;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v6 = *(v2 + 112);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v8 = v7(v6, 1);
    if (v8 || (v8 = bapspTranscode_stopMixer(a1, 1), v8) || (FigAudioQueueOfflineMixerSetProperty(*(v2 + 104), @"AudioQueueOfflineMixer_ApplyTrimAtEndAfterPTS", 0), v8))
    {
LABEL_14:
      v9 = v8;
      goto LABEL_12;
    }

LABEL_8:
    CMNotificationCenterGetDefaultLocalCenter();
    v8 = FigNotificationCenterRemoveWeakListeners();
    if (!v8)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v9 = FigNotificationCenterRemoveWeakListeners();
      if (!v9)
      {
        *(v2 + 40) = 0;
        *(v2 + 44) = 0;
      }

      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v9 = 4294954514;
LABEL_12:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t bapspTranscode_flush(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v2 + 42))
  {
    v13 = 0;
    goto LABEL_12;
  }

  v6 = *(v2 + 64);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v7)
  {
    v7(v6);
  }

  v8 = bapspTranscode_terminateQueueWithEndMarker(a1);
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = *(v2 + 112);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    v13 = 4294954514;
    goto LABEL_12;
  }

  v8 = v10(v9);
  if (v8)
  {
LABEL_14:
    v13 = v8;
    goto LABEL_12;
  }

  v11 = *(v2 + 112);
  v15 = *a2;
  v16 = *(a2 + 2);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v12)
  {
    v17 = v15;
    v18 = v16;
    v12(v11, &v17);
  }

  v13 = bapspTranscode_stopMixer(a1, 1);
  if (!v13)
  {
    *(v2 + 44) = 0;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t bapspTranscode_stopMixer(uint64_t a1, int a2)
{
  cf[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  FigAudioQueueOfflineMixerCopyProperty(*(DerivedStorage + 104), @"AudioQueueOfflineMixer_ConnectedAudioQueueCount", *MEMORY[0x1E695E480], cf);
  if (v4)
  {
    goto LABEL_6;
  }

  if (FigCFNumberGetSInt32() < 2)
  {
    v5 = *(DerivedStorage + 104);
    if (a2)
    {
      v4 = FigAudioQueueOfflineMixerInterruptAndStop(v5);
      if (v4)
      {
LABEL_6:
        v6 = v4;
        goto LABEL_7;
      }
    }

    else
    {
      v4 = FigAudioQueueOfflineMixerStop(v5);
      if (v4)
      {
        goto LABEL_6;
      }
    }

    v4 = FigAudioQueueOfflineMixerWaitUntilCompletelyStopped(*(DerivedStorage + 104));
    goto LABEL_6;
  }

  if (dword_1EAF175F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = 0;
LABEL_7:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v6;
}

void bapspTranscode_offlineMixerMilestonePassed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  *&v48.value = *MEMORY[0x1E6960C70];
  v48.epoch = *(MEMORY[0x1E6960C70] + 16);
  if (a5)
  {
    CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
    if (dword_1EAF175F0)
    {
      v17 = OUTLINED_FUNCTION_20_29(CMTimeIfPresent, v10, v11, v12, v13, v14, v15, v16, v36, v38, v41, v43, SBYTE2(v43), SBYTE3(v43), SHIDWORD(v43));
      if (OUTLINED_FUNCTION_311(v17, v18, v19, v20, v21, v22, v23, v24, v37, v39, v42, v44, v45, v46, v47))
      {
        v25 = v7;
      }

      else
      {
        v25 = v7 & 0xFFFFFFFE;
      }

      if (v25)
      {
        if (a2)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          DerivedStorage = "";
        }

        time = v48;
        v49 = 136315906;
        v50 = "bapspTranscode_offlineMixerMilestonePassed";
        v51 = 2048;
        v52 = a2;
        v53 = 2082;
        v54 = DerivedStorage;
        v55 = 2048;
        Seconds = CMTimeGetSeconds(&time);
        LODWORD(v40) = 42;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v27, v28, v29, v30, v31, v5, v6, v32, &v49, v40);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v33 = OUTLINED_FUNCTION_228();
    bapspTranscode_postNotification(v33, v34, v35);
  }
}

void bapspTranscode_offlineMixerDidReachEndOfOutputData(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v88 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = DerivedStorage;
  cf = 0;
  if (dword_1EAF175F0)
  {
    v18 = OUTLINED_FUNCTION_12_49(DerivedStorage, v10, v11, v12, v13, v14, v15, v16, v70, v73, v76, SBYTE2(v76), SBYTE3(v76), SHIDWORD(v76));
    if (os_log_type_enabled(v18, BYTE3(v76)))
    {
      v5 = HIDWORD(v76);
    }

    else
    {
      v5 = HIDWORD(v76) & 0xFFFFFFFE;
    }

    if (v5)
    {
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v86 = 136315650;
      OUTLINED_FUNCTION_2_136();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v18, BYTE3(v76), v24);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(v17 + 42))
  {
    v47 = 0;
  }

  else
  {
    v25 = *MEMORY[0x1E695E480];
    v26 = FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E6960C88], &cf);
    v34 = cf;
    if (cf)
    {
      v5 = *(v17 + 80);
      VTable = CMBaseObjectGetVTable();
      v36 = *(VTable + 16);
      v26 = VTable + 16;
      v37 = *(v36 + 8);
      if (v37)
      {
        v26 = v37(v5, v34);
      }
    }

    if (*(v17 + 43))
    {
      if (dword_1EAF175F0)
      {
        v38 = OUTLINED_FUNCTION_12_49(v26, v27, v28, v29, v30, v31, v32, v33, v70, v73, v76, SBYTE2(v76), SBYTE3(v76), SHIDWORD(v76));
        if (OUTLINED_FUNCTION_40_19(v38, v39, v40, v41, v42, v43, v44, v45, v71, v74, v77, v79, type, v83))
        {
          v46 = v6;
        }

        else
        {
          v46 = v6 & 0xFFFFFFFE;
        }

        if (v46)
        {
          if (a2)
          {
            CMBaseObjectGetDerivedStorage();
          }

          v86 = 136315650;
          OUTLINED_FUNCTION_2_136();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v48, v49, v50, v51, v52, v34, v5, v53);
          v6 = HIDWORD(v76);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (qword_1ED4CB510 != -1)
      {
        dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
      }

      OUTLINED_FUNCTION_26_26();
      if (v54)
      {
        time = *(v17 + 144);
        v47 = CMTimeCopyAsDictionary(&time, v25);
        if (!v47)
        {
          goto LABEL_46;
        }

        bapspTranscode_postNotification(a2, @"FinishedProcessingData", v47);
      }

      else
      {
        bapspTranscode_postNotification(a2, @"FinishedProcessingData", a5);
        v47 = 0;
      }

      *(v17 + 43) = 0;
    }

    else
    {
      v47 = 0;
    }

    if (*(v17 + 44))
    {
      if (dword_1EAF175F0)
      {
        v55 = OUTLINED_FUNCTION_12_49(v26, v27, v28, v29, v30, v31, v32, v33, v70, v73, v76, SBYTE2(v76), SBYTE3(v76), SHIDWORD(v76));
        if (OUTLINED_FUNCTION_40_19(v55, v56, v57, v58, v59, v60, v61, v62, v72, v75, v78, v80, typea, v84))
        {
          v63 = v6;
        }

        else
        {
          v63 = v6 & 0xFFFFFFFE;
        }

        if (v63)
        {
          if (a2)
          {
            CMBaseObjectGetDerivedStorage();
          }

          v86 = 136315650;
          OUTLINED_FUNCTION_2_136();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v64, v65, v66, v67, v68, v34, v5, v69);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      bapspTranscode_postNotification(a2, @"PlayResourceReleased", a5);
      *(v17 + 44) = 0;
    }
  }

LABEL_46:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v47)
  {
    CFRelease(v47);
  }
}

void bapspTranscode_playResourceReleased(uint64_t a1, uint64_t a2)
{
  bapspTranscode_stopAudioChain(a2, 1);
  v2 = OUTLINED_FUNCTION_228();

  bapspTranscode_postNotification(v2, v3, v4);
}

void bapspTranscode_segmentFinished(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 42) || ((v9 = *MEMORY[0x1E695E480], FigAudioQueueOfflineMixerCopyProperty(*(DerivedStorage + 104), @"AudioQueueOfflineMixer_ConnectedAudioQueueCount", *MEMORY[0x1E695E480], &cf), SInt32 = FigCFNumberGetSInt32(), *(DerivedStorage + 43)) ? (v11 = SInt32 < 2) : (v11 = 1), v11))
  {
    v12 = 0;
    goto LABEL_22;
  }

  if (dword_1EAF175F0)
  {
    v13 = SInt32;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_37();
    if (v5)
    {
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v28 = 136315906;
      OUTLINED_FUNCTION_32_22();
      v29 = 2082;
      v30 = v15;
      v31 = 1024;
      v32 = v13;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_43_0(v16, v17, &time, v18, &dword_1962D5000, v19, v20, "<<<< FigBufferedAirPlayAudioChainSubPipeTranscode >>>> %s: [%p] %{public}s posting FinishedProcessingData.  offlineMixer connected audioqueue count %d");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449(v21, v22, v23, v24, v25);
  }

  if (qword_1ED4CB510 != -1)
  {
    dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
  }

  OUTLINED_FUNCTION_26_26();
  if (v26)
  {
    time = *(DerivedStorage + 144);
    v12 = CMTimeCopyAsDictionary(&time, v9);
    if (!v12)
    {
      goto LABEL_22;
    }

    bapspTranscode_postNotification(a2, @"FinishedProcessingData", v12);
  }

  else
  {
    bapspTranscode_postNotification(a2, @"FinishedProcessingData", a5);
    v12 = 0;
  }

  *(DerivedStorage + 43) = 0;
LABEL_22:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t bapspTranscode_setLoudnessInfo_cold_1()
{
  FigRenderPipelineGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v2 = *(VTable + 8);
  result = VTable + 8;
  if (*(v2 + 56))
  {
    v3 = OUTLINED_FUNCTION_228();
    return v4(v3);
  }

  return result;
}

uint64_t bvc_updateSourcebufferCharacteristics(uint64_t a1)
{
  v12 = 0;
  v10 = 0;
  v11 = 0;
  cf = 0;
  v9 = 0;
  bvc_copyCVBufferProperties(*a1, &v11, &v10, &cf, &v9);
  FigVideoCompositorUtilityGetPixelAspectRatio(cf, &v12 + 1, &v12);
  v3 = v10;
  v2 = v11;
  *(a1 + 160) = v11;
  *(a1 + 168) = v3;
  v4 = v12;
  *(a1 + 184) = SHIDWORD(v12);
  *(a1 + 192) = v4;
  bvc_getCleanApertureRect(v9, v2, v3, (a1 + 232));
  v6 = v5;
  if (!v5)
  {
    v14.size.width = *(a1 + 144);
    v14.size.height = *(a1 + 152);
    v13 = *(a1 + 232);
    v14.origin.x = *(a1 + 128) + v13.origin.x;
    v14.origin.y = *(a1 + 136) + v13.origin.y;
    *(a1 + 264) = CGRectIntersection(v13, v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t bvc_computeScaledTransformAndTransformedRect(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(&v17, 0, sizeof(v17));
  bvc_getCleanApertureRect(a3, a1, a2, &v17.origin.x);
  v6 = v5;
  if (!v5)
  {
    v7 = *(a4 + 48);
    v8 = *(a4 + 32);
    v9 = v7;
    *(a4 + 80) = v8;
    *(a4 + 96) = v7;
    *(a4 + 112) = *(a4 + 64);
    v10 = *(a4 + 264);
    *&v7 = *(a4 + 272);
    v11 = *(a4 + 280);
    v12 = *(a4 + 288);
    *&v16.a = v8;
    *&v16.c = v9;
    *&v16.tx = *(a4 + 64);
    v18 = CGRectApplyAffineTransform(*(&v7 - 8), &v16);
    *(a4 + 200) = v18;
    v19 = CGRectIntersection(v18, v17);
    *(a4 + 200) = v19;
    *(a4 + 200) = CGRectStandardize(v19);
    Width = CVPixelBufferGetWidth(*a4);
    Height = CVPixelBufferGetHeight(*a4);
    *(a4 + 296) = 0;
    *(a4 + 304) = 0;
    *(a4 + 312) = Width;
    *(a4 + 320) = Height;
  }

  return v6;
}

void bvc_getCleanApertureRect(uint64_t a1, unint64_t a2, unint64_t a3, double *a4)
{
  if (a4)
  {
    FigVideoCompositorUtilityGetCleanAperture();
    if (!v7)
    {
      v8 = a2;
      v9 = 0.0;
      if ((a2 + (0.0 * 2.0)) <= 0.0)
      {
        v9 = a2 + (0.0 * 2.0);
      }

      if (v9 >= (v8 + (0.0 * -2.0)))
      {
        v9 = v8 + (0.0 * -2.0);
      }

      v10 = a3;
      v11 = a3 + (0.0 * 2.0);
      if (v11 > 0.0)
      {
        v11 = 0.0;
      }

      if (v11 >= (v10 + (0.0 * -2.0)))
      {
        v11 = v10 + (0.0 * -2.0);
      }

      *a4 = (((v8 - v9) * 0.5) + 0.0);
      a4[1] = (((v10 - v11) * 0.5) + 0.0);
      a4[2] = v9;
      a4[3] = v11;
    }
  }
}

BOOL bvc_doesPixelBufferFillCanvasExactly(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  memset(&v20, 0, sizeof(v20));
  bvc_getCleanApertureRect(a5, a3, a4, &v20.origin.x);
  if (v17)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return 0;
  }

  v21.origin.x = a6;
  v21.origin.y = a7;
  v21.size.width = a8;
  v21.size.height = a9;
  return CGRectEqualToRect(v21, v20);
}

uint64_t bvc_createPixelBufferPoolForPreProcessing(int a1, int a2, int a3, CVPixelBufferPoolRef *a4)
{
  theDict = 0;
  poolOut = 0;
  if (!a4)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 3640, v4);
    goto LABEL_17;
  }

  v9 = *MEMORY[0x1E695E480];
  PixelBufferAttributesDictionary = bvc_createPixelBufferAttributesDictionary(*MEMORY[0x1E695E480], &theDict);
  if (PixelBufferAttributesDictionary)
  {
LABEL_17:
    v14 = PixelBufferAttributesDictionary;
    goto LABEL_11;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, theDict);
  if (!MutableCopy)
  {
    v17 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294954510, "<<<< VideoCompositor >>>>", 3646, v4);
    goto LABEL_17;
  }

  v12 = MutableCopy;
  v13 = bvc_CFDictionarySetInt(MutableCopy, *MEMORY[0x1E6966208], a1);
  if (v13 || (v13 = bvc_CFDictionarySetInt(v12, *MEMORY[0x1E69660B8], a2), v13) || (v13 = bvc_CFDictionarySetInt(v12, *MEMORY[0x1E6966130], a3), v13) || (v13 = VTCreatePixelBufferPoolAttributesWithName(), v13))
  {
    v14 = v13;
  }

  else
  {
    v14 = CVPixelBufferPoolCreate(v9, 0, v12, &poolOut);
    if (v14)
    {
      if (poolOut)
      {
        CFRelease(poolOut);
      }
    }

    else
    {
      *a4 = poolOut;
      poolOut = 0;
    }
  }

  CFRelease(v12);
LABEL_11:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v14;
}

void bvc_createPixelBufferAttributesDictionary_cold_1(const void *a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  *a3 = v6;
  CFRelease(a1);
  CFRelease(a2);
}

void bvc_createPixelBufferAttributesDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void bvc_createPixelBufferAttributesDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void bvc_CFDictionarySetInt_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void basicVideoCompositor_RenderFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void basicVideoCompositor_RenderFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void basicVideoCompositor_RenderFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void basicVideoCompositor_RenderFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void basicVideoCompositor_RenderFrame_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL basicVideoCompositor_RenderFrame_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_2_14(v0);
}

BOOL basicVideoCompositor_RenderFrame_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return OUTLINED_FUNCTION_2_14(v0);
}

BOOL basicVideoCompositor_RenderFrame_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return OUTLINED_FUNCTION_2_14(v0);
}

void basicVideoCompositor_RenderFrame_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void basicVideoCompositor_RenderFrame_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void basicVideoCompositor_RenderFrame_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void bvc_getBufferCharacteristics_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void bvc_getBufferCharacteristics_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void bvc_getBufferCharacteristics_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void bvc_getBufferCharacteristics_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigSecureStopManagerCopyDefaultRuntimeInstance(uint64_t a1, void *a2)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (a2)
  {
    *a2 = 0;
    block = MEMORY[0x1E69E9820];
    v10 = 0x40000000;
    v11 = __FigSecureStopManagerCopyDefaultRuntimeInstance_block_invoke;
    v12 = &unk_1E7490FB0;
    v14 = &v16;
    v15 = a1;
    v13 = &v20;
    if (qword_1ED4CB520 != -1)
    {
      dispatch_once(&qword_1ED4CB520, &block);
    }

    if (!*(v21 + 6))
    {
      v3 = v17[3];
      if (v3)
      {
        _MergedGlobals_100 = v17[3];
        v17[3] = 0;
      }

      else
      {
        v3 = _MergedGlobals_100;
        if (!_MergedGlobals_100)
        {
LABEL_9:
          *a2 = v3;
          goto LABEL_10;
        }
      }

      v3 = CFRetain(v3);
      goto LABEL_9;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, block, v10);
    *(v21 + 6) = v7;
  }

LABEL_10:
  v4 = v17[3];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v21 + 6);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v5;
}

void __fssm_fbo_copyRecords_block_invoke()
{
  OUTLINED_FUNCTION_6_82();
  if (v0)
  {
    v2 = *(v1 + 48);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      v4 = v3(v0, v2);
    }

    else
    {
      v4 = 4294954514;
    }

    OUTLINED_FUNCTION_12_7(v4);
  }
}

void __fssm_fbo_removeRecords_block_invoke()
{
  OUTLINED_FUNCTION_6_82();
  if (v0)
  {
    v2 = *(v1 + 48);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v3)
    {
      v4 = v3(v0, v2);
    }

    else
    {
      v4 = 4294954514;
    }

    OUTLINED_FUNCTION_12_7(v4);
  }
}

void __fssm_fbo_updateRecord_block_invoke()
{
  OUTLINED_FUNCTION_6_82();
  if (v0)
  {
    OUTLINED_FUNCTION_5_95();
    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v1 = OUTLINED_FUNCTION_4_110();
      v3 = v2(v1);
    }

    else
    {
      v3 = 4294954514;
    }

    OUTLINED_FUNCTION_12_7(v3);
  }
}

void __fssm_fbo_finalizeRecord_block_invoke()
{
  OUTLINED_FUNCTION_6_82();
  if (v1)
  {
    OUTLINED_FUNCTION_5_95();
    if (*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v2 = OUTLINED_FUNCTION_4_110();
      v4 = v3(v2);
    }

    else
    {
      v4 = 4294954514;
    }

    OUTLINED_FUNCTION_12_7(v4);
    if (!*(*(*(v0 + 32) + 8) + 24))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      FigDispatchAsyncPostNotification();
    }
  }
}

void FigSecureStopManagerCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSecureStopManagerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSecureStopManagerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSecureStopManagerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t fssm_fbo_initialize_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_initialize_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_copyRecords_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_removeRecords_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_updateRecord_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_updateRecord_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_finalizeRecord_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_finalizeRecord_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_finalizeRecord_cold_3()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_1_144(v0);
}

void __fssm_fbo_initialize_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

uint64_t HandleFormatReaderMessage()
{
  OUTLINED_FUNCTION_3_37();
  cf1 = 0;
  v34 = 0;
  HIDWORD(v32) = 0;
  v30 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    goto LABEL_45;
  }

  v4 = MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E69615A0];
  OUTLINED_FUNCTION_26_27();
  if (v7)
  {
    OUTLINED_FUNCTION_23_37();
    uint64 = xpc_dictionary_get_uint64(v2, "OtherProcessObjectID");
    v18 = FigXPCFormatReaderServerCopySampleCursorForID(uint64, v42);
    if (v18)
    {
      v24 = v18;
      v21 = v42[0];
      if (!v42[0])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v19 = xpc_dictionary_get_uint64(v2, "FormatReaderObjectID");
      v20 = xpc_dictionary_get_uint64(v2, "TrackReaderObjectID");
      v21 = v42[0];
      v24 = FigXPCFormatReaderServerAssociateCopiedNeighborSampleCursor(v19, v20, v1, v42[0], v0, value, v22, v23, 0, 0, v32, 0, 0, v35, v36[0], v36[1], v37, v38, v39, v40);
      if (!v24)
      {
        xpc_dictionary_set_uint64(v0, *v5, value[0]);
      }

      if (!v21)
      {
        goto LABEL_36;
      }
    }

    v25 = v21;
LABEL_35:
    CFRelease(v25);
    goto LABEL_36;
  }

  if (v6 != 1180922424)
  {
    xpc_dictionary_get_uint64(v2, *v5);
    OpCode = FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
    if (!OpCode)
    {
      v28 = CFGetTypeID(0);
      v29 = CFCopyTypeIDDescription(v28);
      if (v29)
      {
        CFRelease(v29);
      }

      v24 = 0;
      goto LABEL_36;
    }

LABEL_45:
    v24 = OpCode;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_16_39();
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36[0] = 0;
  pid = xpc_connection_get_pid(v1);
  v9 = *v4;
  v10 = CreateServedFormatReaderState(*v4, pid, &v39);
  if (v10)
  {
    goto LABEL_49;
  }

  v10 = FigXPCMessageCopyCFURL();
  if (v10)
  {
    goto LABEL_49;
  }

  FigXPCMessageCopySandboxRegistration();
  v10 = FigXPCMessageCopyCFDictionary();
  if (v10)
  {
    goto LABEL_49;
  }

  BaseByteStreamProvider = FigGetBaseByteStreamProvider();
  v12 = v42[0];
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v13)
  {
    v24 = 4294954514;
    goto LABEL_24;
  }

  v10 = v13(BaseByteStreamProvider, v12, 0, 0, v9, &v38);
  if (v10 || (v10 = FigFormatReaderCreateForStream(v38, v9, v43, value), v10) || (*(v39 + 32) = mightFormatReaderBlockOnIOWhenStepping(), OUTLINED_FUNCTION_0_155(), v10 = FigXPCServerAssociateObjectWithConnection(), v10))
  {
LABEL_49:
    v24 = v10;
  }

  else
  {
    FigFormatReaderGetFigBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(v15, @"CanMutate", v9, v36);
      v16 = v36[0];
    }

    v26 = v16 != *MEMORY[0x1E695E4D0];
    v39 = 0;
    xpc_dictionary_set_uint64(v0, *v5, v40);
    xpc_dictionary_set_BOOL(v0, "AllowsPropertyCaching", v26);
    if (v36[0])
    {
      CFRelease(v36[0]);
    }

    v24 = 0;
  }

LABEL_24:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v42[0])
  {
    CFRelease(v42[0]);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (value[0])
  {
    CFRelease(value[0]);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  v25 = v37;
  if (v37)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (v34)
  {
    CFRelease(v34);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v24;
}

uint64_t HandleNoReplyFormatReaderMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t FigSampleCursorServer_TranslateFormatDescription()
{
  OUTLINED_FUNCTION_375_0();
  v3 = v2;
  value = 0;
  theBuffer = 0;
  v27 = 0;
  IDForObjectOfType = FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType(*(*v2 + 24), @"FormatDescription", v1, &value, &v27);
  if (IDForObjectOfType)
  {
    v16 = IDForObjectOfType;
    v12 = 0;
    goto LABEL_14;
  }

  if (!v27)
  {
    v12 = 0;
    goto LABEL_13;
  }

  dataPointerOut = 0;
  array = xpc_dictionary_get_array(*(v3 + 8), "SampleCursorFormatDescriptionArray");
  if (!array)
  {
    array = xpc_array_create(0, 0);
    xpc_dictionary_set_value(*(v3 + 8), "SampleCursorFormatDescriptionArray", array);
    FigXPCRelease();
  }

  SerializedAtomDataBlockBufferForFormatDescription = FigRemote_CreateSerializedAtomDataBlockBufferForFormatDescription();
  if (SerializedAtomDataBlockBufferForFormatDescription)
  {
    goto LABEL_21;
  }

  v7 = theBuffer;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!CMBlockBufferIsRangeContiguous(v7, 0, DataLength))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, destructor, v22);
    goto LABEL_21;
  }

  SerializedAtomDataBlockBufferForFormatDescription = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
  if (SerializedAtomDataBlockBufferForFormatDescription)
  {
LABEL_21:
    v16 = SerializedAtomDataBlockBufferForFormatDescription;
    v12 = 0;
    goto LABEL_14;
  }

  v9 = dataPointerOut;
  v10 = CMBlockBufferGetDataLength(theBuffer);
  destructor = MEMORY[0x1E69E9820];
  v22 = 0x40000000;
  v23 = __FigSampleCursorServer_TranslateFormatDescription_block_invoke;
  v24 = &__block_descriptor_tmp_114;
  v25 = theBuffer;
  v11 = dispatch_data_create(v9, v10, 0, &destructor);
  v12 = v11;
  if (v11)
  {
    theBuffer = 0;
    v13 = xpc_data_create_with_dispatch_data(v11);
    if (v13)
    {
      empty = xpc_dictionary_create_empty();
      if (empty)
      {
        v15 = empty;
        xpc_dictionary_set_value(empty, "SampleCursorFormatDescription", v13);
        xpc_dictionary_set_uint64(v15, "SampleCursorFormatDescriptionOutOfBandID", value);
        xpc_array_append_value(array, v15);
LABEL_13:
        v16 = 0;
        *v0 = value;
        goto LABEL_14;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v16 = v19;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, destructor, v22);
    v16 = v18;
  }

LABEL_14:
  FigXPCRelease();
  FigXPCRelease();
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  return v16;
}

void CopySampleCursorAndReturnObjectID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _BYTE *cf, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427_0();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_14_45(v34, v32);
  v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v36)
  {
    goto LABEL_12;
  }

  if (v36(v33, &a12) || (v37 = CFGetAllocator(v33), FigServedSampleCursorStateCreate(v37, v35, *(v31 + 16), &cf)) || (v38 = cf, cf[32] = *(v31 + 32), *(v31 + 32) = 0, CFRetain(v38), OUTLINED_FUNCTION_1_145(), FigXPCServerAssociateObjectWithConnectionWithFlags()))
  {
    if (!v27)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v29)
  {
    *v29 = a12;
    a12 = 0;
  }

  if (v27)
  {
    *v27 = cf;
  }

  if (v25)
  {
    *v25 = a10;
    if (!v27)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_12:
    if (!v27)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  if (*v27)
  {
    CFRetain(*v27);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  OUTLINED_FUNCTION_424_0();
}

void HandleTrackReaderCopyPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, CFTypeRef cf1, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_375_0();
  v23 = OUTLINED_FUNCTION_60_13(v22);
  if (v23 != FigTrackReaderGetTypeID())
  {
    goto LABEL_30;
  }

  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_21;
  }

  if (!cf1)
  {
LABEL_30:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v24 = OUTLINED_FUNCTION_403_0();
    if (FigMetadataCopyTrackISOUserdata(v24, v25, v26))
    {
      goto LABEL_21;
    }
  }

  else if (FigCFEqual())
  {
    v27 = OUTLINED_FUNCTION_403_0();
    if (FigMetadataCopyTrackQuickTimeUserdata(v27, v28, v29))
    {
      goto LABEL_21;
    }
  }

  else if (FigCFEqual())
  {
    v30 = OUTLINED_FUNCTION_403_0();
    if (FigMetadataCopyTrackQuickTimeMetadata(v30, v31, v32))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      FigTrackReaderGetFigBaseObject();
      OUTLINED_FUNCTION_118_0();
      if (CMBaseObjectCopyProperty(v36, v37, v38, v39))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v33 = OUTLINED_FUNCTION_403_0();
    if (FigMetadataCopyTrackCommonMetadata(v33, v34, v35))
    {
      goto LABEL_21;
    }
  }

  if (FigRemote_CreateBinaryPListDataFromMetadataItemArray(cf, &a12))
  {
    goto LABEL_21;
  }

LABEL_16:
  if (a12)
  {
    if (CFEqual(cf1, @"TrackFormatDescriptionArray"))
    {
      FigXPCMessageSetFormatDescriptionArray();
    }

    else
    {
      FigXPCMessageSetCFObject();
    }
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t HandleTrackReaderCopyMetadataReadersMessage(uint64_t a1, CFTypeRef cf, const void *a3, void *a4)
{
  theArray = 0;
  v6 = CFGetTypeID(cf);
  if (v6 != FigTrackReaderGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, theArray, v20);
LABEL_19:
    v17 = v10;
    goto LABEL_13;
  }

  FigTrackReaderGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v17 = 4294954514;
    goto LABEL_13;
  }

  v10 = v9(v8, @"MetadataReaders", *MEMORY[0x1E695E480], &theArray);
  if (v10)
  {
    goto LABEL_19;
  }

  if (!theArray)
  {
    goto LABEL_12;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_12;
  }

  v12 = Count;
  v13 = xpc_array_create(0, 0);
  if (v12 < 1)
  {
LABEL_10:
    xpc_dictionary_set_value(a4, "ObjectIDArray", v13);
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v14 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v14);
    v15 = CFRetain(a3);
    OUTLINED_FUNCTION_0_155();
    v16 = FigXPCServerAssociateObjectWithConnection();
    if (v16)
    {
      break;
    }

    xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (v12 == ++v14)
    {
      goto LABEL_10;
    }
  }

  v17 = v16;
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_13:
  FigXPCRelease();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v17;
}

uint64_t HandleEditCursorServiceCreateCursorAtTrackTimeMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_32_23();
  v25 = *MEMORY[0x1E6960C70];
  v26 = *(MEMORY[0x1E6960C70] + 16);
  value = 0;
  cf = 0;
  v9 = CFGetTypeID(v8);
  if (v9 != FigEditCursorServiceGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
LABEL_11:
    v18 = v11;
    goto LABEL_7;
  }

  FigXPCMessageGetCMTime();
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    v18 = 4294954514;
    goto LABEL_7;
  }

  v27 = v25;
  v28 = v26;
  v11 = v10(v6, &v27, &cf);
  if (v11)
  {
    goto LABEL_11;
  }

  v12 = CFRetain(v5);
  OUTLINED_FUNCTION_0_155();
  v18 = OUTLINED_FUNCTION_18_35(v13, v14, v15, v16, v17, &value);
  if (v18)
  {
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    xpc_dictionary_set_uint64(a5, *MEMORY[0x1E69615A0], value);
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

void HandleEditCursorCopyPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v19;
  cf = 0;
  v21 = CFGetTypeID(v20);
  if (v21 != FigEditCursorGetTypeID() || !FigXPCMessageCopyCFString())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  OUTLINED_FUNCTION_652();
}

double HandleEditCursorGetEditSegmentMessage(const void *a1, uint64_t a2)
{
  memset(__src, 0, sizeof(__src));
  v3 = CFGetTypeID(a1);
  if (v3 == FigEditCursorGetTypeID())
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {
      if (!v4(a1, __src))
      {
        memcpy(v6, __src, sizeof(v6));
        FigXPCMessageSetCMTimeMapping();
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t HandleSampleCursorServiceCreateCursorAtPresentationTimeStampMessage(int a1, const void *a2, int a3, void *a4, void *a5, int a6, int a7, int a8)
{
  v11 = OUTLINED_FUNCTION_27_24(a1, a2, a3, a4, a5, a6, a7, a8, v39, v41, v42, v44, v45, SWORD2(v45), SHIWORD(v45), cf, value, v48, v49, v50);
  if (v11 != FigSampleCursorServiceGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, DWORD2(v40), v43);
LABEL_15:
    v35 = CMTime;
    goto LABEL_9;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_15;
  }

  v13 = OUTLINED_FUNCTION_42_21();
  v22 = *(v13 + 16);
  v21 = v13 + 16;
  if (!*(v22 + 8))
  {
    v35 = 4294954514;
    goto LABEL_9;
  }

  v23 = OUTLINED_FUNCTION_37_23(v21, v14, v15, v16, v17, v18, v19, v20, v40);
  CMTime = v24(a2, v23);
  if (CMTime)
  {
    goto LABEL_15;
  }

  v25 = CFGetAllocator(a2);
  CMTime = OUTLINED_FUNCTION_58_9(v25, v26, v27, &cf);
  if (CMTime)
  {
    goto LABEL_15;
  }

  v28 = FigSampleCursorServer_obtainCacheOption(a4);
  OUTLINED_FUNCTION_31_24(cf, v48, v29, v28, MEMORY[0x1E6960C98]);
  OUTLINED_FUNCTION_1_145();
  v35 = OUTLINED_FUNCTION_30_22(v30, v31, v32, v33, v34);
  if (!v35)
  {
    cf = 0;
    xpc_dictionary_set_uint64(a5, *MEMORY[0x1E69615A0], value);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(a5, "SampleCursorCreatedBeforeStart", v36);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(a5, "SampleCursorCreatedAfterEnd", v37);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  return v35;
}

uint64_t HandleSampleCursorServiceCreateCursorNearPresentationTimeStampMessage(int a1, const void *a2, int a3, void *a4, void *a5, int a6, int a7, int a8)
{
  v11 = OUTLINED_FUNCTION_27_24(a1, a2, a3, a4, a5, a6, a7, a8, v39, v41, v42, v44, v45, SWORD2(v45), SHIWORD(v45), cf, value, v48, v49, v50);
  if (v11 != FigSampleCursorServiceGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, DWORD2(v40), v43);
LABEL_15:
    v35 = CMTime;
    goto LABEL_9;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_15;
  }

  xpc_dictionary_get_BOOL(a4, "SampleCursorAllowCreationAfterPTS");
  v13 = OUTLINED_FUNCTION_42_21();
  v22 = *(v13 + 16);
  v21 = v13 + 16;
  if (!*(v22 + 16))
  {
    v35 = 4294954514;
    goto LABEL_9;
  }

  v23 = OUTLINED_FUNCTION_37_23(v21, v14, v15, v16, v17, v18, v19, v20, v40);
  CMTime = v24(a2, v23);
  if (CMTime)
  {
    goto LABEL_15;
  }

  v25 = CFGetAllocator(a2);
  CMTime = OUTLINED_FUNCTION_58_9(v25, v26, v27, &cf);
  if (CMTime)
  {
    goto LABEL_15;
  }

  v28 = FigSampleCursorServer_obtainCacheOption(a4);
  OUTLINED_FUNCTION_31_24(cf, v48, v29, v28, MEMORY[0x1E6960C98]);
  OUTLINED_FUNCTION_1_145();
  v35 = OUTLINED_FUNCTION_30_22(v30, v31, v32, v33, v34);
  if (!v35)
  {
    cf = 0;
    xpc_dictionary_set_uint64(a5, *MEMORY[0x1E69615A0], value);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(a5, "SampleCursorCreatedBeforeStart", v36);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(a5, "SampleCursorCreatedAfterEnd", v37);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  return v35;
}

void HandleMetadataReaderCopyPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, CFTypeRef cf1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_113_1();
  v23 = OUTLINED_FUNCTION_60_13(v22);
  if (v23 != FigMetadataReaderGetTypeID())
  {
    goto LABEL_17;
  }

  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_12;
  }

  if (!cf1)
  {
LABEL_17:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  FigMetadataReaderGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    OUTLINED_FUNCTION_118_0();
    if (!v24())
    {
      v25 = CFEqual(cf1, @"containerByteStream");
      if (!v25)
      {
        goto LABEL_11;
      }

      if (FigSampleCursorServer_TranslateByteStream(v25, cf, &a10))
      {
        goto LABEL_12;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      cf = FigCFNumberCreateUInt64();
      if (cf)
      {
LABEL_11:
        FigXPCMessageSetCFObject();
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

LABEL_12:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t HandleMetadataReaderCopyValueMessage()
{
  OUTLINED_FUNCTION_3_37();
  v17 = 0;
  cf = 0;
  v3 = OUTLINED_FUNCTION_60_13(v2);
  if (v3 != FigMetadataReaderGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, theData);
LABEL_27:
    MetadataPropertiesBinaryPListData = v4;
    goto LABEL_15;
  }

  v4 = FigXPCMessageCopyCFString();
  if (v4)
  {
    goto LABEL_27;
  }

  v4 = FigXPCMessageCopyCFObject();
  if (v4)
  {
    goto LABEL_27;
  }

  xpc_dictionary_get_BOOL(v1, "MetadataPropertiesDesired");
  xpc_dictionary_get_BOOL(v1, "MetadataValueDesired");
  xpc_dictionary_get_uint64(v1, "MetadataValueType");
  OUTLINED_FUNCTION_44_21();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    MetadataPropertiesBinaryPListData = 4294954514;
    goto LABEL_15;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = OUTLINED_FUNCTION_25_26();
  v4 = v7(v6);
  if (v4)
  {
    goto LABEL_27;
  }

  if (v14)
  {
    MetadataPropertiesBinaryPListData = FigXPCMessageSetCFObject();
    if (MetadataPropertiesBinaryPListData)
    {
      goto LABEL_15;
    }

    v9 = v16;
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = v16;
    if (!v16)
    {
      MetadataPropertiesBinaryPListData = 0;
      goto LABEL_15;
    }
  }

  MetadataPropertiesBinaryPListData = FigRemote_CreateMetadataPropertiesBinaryPListData(v9, v5, &theData);
  if (!MetadataPropertiesBinaryPListData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    xpc_dictionary_set_data(v0, "MetadataProperties", BytePtr, Length);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return MetadataPropertiesBinaryPListData;
}

uint64_t HandleMetadataReaderCopyItemWithKeyAndIndexMessage()
{
  OUTLINED_FUNCTION_3_37();
  v17 = 0;
  cf = 0;
  v3 = OUTLINED_FUNCTION_60_13(v2);
  if (v3 != FigMetadataReaderGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, theData);
LABEL_27:
    MetadataPropertiesBinaryPListData = v4;
    goto LABEL_15;
  }

  v4 = FigXPCMessageCopyCFString();
  if (v4)
  {
    goto LABEL_27;
  }

  v4 = FigXPCMessageCopyCFObject();
  if (v4)
  {
    goto LABEL_27;
  }

  xpc_dictionary_get_BOOL(v1, "MetadataPropertiesDesired");
  xpc_dictionary_get_BOOL(v1, "MetadataValueDesired");
  xpc_dictionary_get_int64(v1, "MetadataItemIndex");
  OUTLINED_FUNCTION_44_21();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    MetadataPropertiesBinaryPListData = 4294954514;
    goto LABEL_15;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = OUTLINED_FUNCTION_25_26();
  v4 = v7(v6);
  if (v4)
  {
    goto LABEL_27;
  }

  if (v14)
  {
    MetadataPropertiesBinaryPListData = FigXPCMessageSetCFObject();
    if (MetadataPropertiesBinaryPListData)
    {
      goto LABEL_15;
    }

    v9 = v16;
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = v16;
    if (!v16)
    {
      MetadataPropertiesBinaryPListData = 0;
      goto LABEL_15;
    }
  }

  MetadataPropertiesBinaryPListData = FigRemote_CreateMetadataPropertiesBinaryPListData(v9, v5, &theData);
  if (!MetadataPropertiesBinaryPListData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    xpc_dictionary_set_data(v0, "MetadataProperties", BytePtr, Length);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return MetadataPropertiesBinaryPListData;
}

uint64_t EventLinkServerMessageHandler(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3, OpaqueCMBlockBuffer *a4)
{
  FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection();
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a3, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (!DataPointer)
  {
    DataPointer = 4294949526;
    if ((dataPointerOut & 7) == 0 && lengthAtOffsetOut > 0x197)
    {
      lengthAtOffsetOut = 0;
      dataPointerOut = 0;
      DataPointer = CMBlockBufferGetDataPointer(a4, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (!DataPointer)
      {
        DataPointer = 4294949526;
        if ((dataPointerOut & 7) == 0 && lengthAtOffsetOut > 0x197)
        {
          bzero(dataPointerOut, 0x198uLL);
          FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection();
          return FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
        }
      }
    }
  }

  return DataPointer;
}

void HandleSampleCursorSetPropertyFromEventLink(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v19 = v18;
  v21 = v20;
  v23 = CFGetTypeID(v22);
  if (v23 != FigSampleCursorGetTypeID() || (v24 = *(v21 + 336), v24 > v19) || !v24 || !FigInMemoryDeserializerCopyCFString())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  OUTLINED_FUNCTION_652();
}

double HandleSampleCursorGetSampleTimingInfoFromEventLink(const void *a1, uint64_t a2)
{
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  v4 = CFGetTypeID(a1);
  if (v4 == FigSampleCursorGetTypeID())
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v5)
    {
      if (!v5(a1, &__dst[24]))
      {
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v7)
        {
          if (!v7(a1, &__dst[48]))
          {
            v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v8)
            {
              if (!v8(a1, __dst))
              {
                memcpy((a2 + 336), __dst, 0x48uLL);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t HandleSampleCursorStepByDecodeTimeFromEventLink()
{
  OUTLINED_FUNCTION_15_41();
  v25 = v1;
  cf = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v19, v21);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19_35();
  v3 = FigSampleCursorServer_ResolveCopiedCursorObjectIDForEventLinkReplyAndCopyCursorToUse();
  if (v3)
  {
LABEL_17:
    v14 = v3;
    goto LABEL_11;
  }

  if (*(*(OUTLINED_FUNCTION_36_23(v3, v4, v5, v6, v7, v8, v9, v10, v17, v19, v21, v23, v25, cf) + 16) + 120))
  {
    v11 = OUTLINED_FUNCTION_29_23();
    v13 = v12(v11);
    v14 = v13;
    if (v13)
    {
      v15 = v13 == -12840;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      OUTLINED_FUNCTION_35_17(-12840, v18, v20, v22, v24, v25, cf);
      v14 = 0;
    }
  }

  else
  {
    v14 = 4294954514;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v14;
}

uint64_t HandleSampleCursorStepByPresentationTimeFromEventLink()
{
  OUTLINED_FUNCTION_15_41();
  v25 = v1;
  cf = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v19, v21);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19_35();
  v3 = FigSampleCursorServer_ResolveCopiedCursorObjectIDForEventLinkReplyAndCopyCursorToUse();
  if (v3)
  {
LABEL_17:
    v14 = v3;
    goto LABEL_11;
  }

  if (*(*(OUTLINED_FUNCTION_36_23(v3, v4, v5, v6, v7, v8, v9, v10, v17, v19, v21, v23, v25, cf) + 16) + 128))
  {
    v11 = OUTLINED_FUNCTION_29_23();
    v13 = v12(v11);
    v14 = v13;
    if (v13)
    {
      v15 = v13 == -12840;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      OUTLINED_FUNCTION_35_17(-12840, v18, v20, v22, v24, v25, cf);
      v14 = 0;
    }
  }

  else
  {
    v14 = 4294954514;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v14;
}

uint64_t HandleSampleCursorCopyChunkDetailsFromEventLink()
{
  OUTLINED_FUNCTION_113_1();
  v20 = 0;
  cf = 0;
  v19 = 0;
  v4 = CFGetTypeID(v3);
  if (v4 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
LABEL_7:
    v11 = v6;
    goto LABEL_9;
  }

  v17 = 0uLL;
  v16 = 0uLL;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v5)
  {
    v6 = v5(v2, &v19, &cf, &v17, &v17 + 8, &v16, &v20, &v16 + 8, &v16 + 9, &v16 + 10);
    if (!v6)
    {
      OUTLINED_FUNCTION_59_13();
      *(v0 + 368) = 0u;
      *(v0 + 384) = 0u;
      v10 = v16;
      *(v0 + 336) = v17;
      *(v0 + 352) = v10;
      *(v0 + 368) = v20;
      if (!v19 || (v6 = FigSampleCursorServer_TranslateByteStream(v6, v19, (v0 + 376)), !v6))
      {
        v6 = OUTLINED_FUNCTION_56_15(v6, *(v1 + 48), cf, v7, v8, v9, (v0 + 384), (v0 + 392));
      }
    }

    goto LABEL_7;
  }

  v11 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v11;
}

uint64_t HandleSampleCursorCreateSampleBufferFromEventLink(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v8 = CFGetTypeID(a1);
  if (v8 == FigSampleCursorGetTypeID())
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (!v9)
    {
      appended = 4294954514;
      goto LABEL_6;
    }

    v10 = v9(a1, a2, &v16);
    if (!v10)
    {
      OUTLINED_FUNCTION_59_13();
      *(a4 + 336) = 0;
      appended = FigInMemorySerializerAppendCMSampleBuffer();
      goto LABEL_6;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
  }

  appended = v10;
LABEL_6:
  if (v16)
  {
    CFRelease(v16);
  }

  return appended;
}

double HandleSampleCursorGetBatchSampleTimingAndSizesFromEventLink(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v12 = CFGetTypeID(a1);
  if (v12 != FigSampleCursorGetTypeID())
  {
    goto LABEL_38;
  }

  v32 = v9;
  v13 = *(a4 + 336);
  *(a5 + 368) = 0;
  *(a5 + 336) = 0u;
  *(a5 + 352) = 0u;
  v14 = (a5 + 360);
  if (*(a4 + 344))
  {
    v15 = (a5 + 360);
  }

  else
  {
    v15 = 0;
  }

  v16 = (a5 + 352);
  if (*(a4 + 345))
  {
    v17 = (a5 + 352);
  }

  else
  {
    v17 = 0;
  }

  if (FigSampleCursorUtilityGetBatchSampleTimingAndSizes(a1, v13, a2, 0, v15, 0, v17, 0))
  {
    return result;
  }

  v19 = *v14;
  if (*v14 <= v13 && (v20 = *v16, *v16 <= v13))
  {
    v21 = MEMORY[0x1E695E480];
    if (!v20)
    {
      MutableBytePtr = 0;
      v23 = 0;
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 8 * v20);
    if (Mutable)
    {
      v23 = Mutable;
      CFDataSetLength(Mutable, 8 * *v16);
      MutableBytePtr = CFDataGetMutableBytePtr(v23);
      v19 = *v14;
      if (*v14)
      {
LABEL_14:
        v25 = CFDataCreateMutable(*v21, 72 * v19);
        v26 = v25;
        if (!v25)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v6, v32);
          goto LABEL_31;
        }

        CFDataSetLength(v25, 72 * *v14);
        v27 = CFDataGetMutableBytePtr(v26);
LABEL_18:
        if (*(a4 + 344))
        {
          v28 = (a5 + 360);
        }

        else
        {
          v28 = 0;
        }

        if (*(a4 + 345))
        {
          v29 = (a5 + 352);
        }

        else
        {
          v29 = 0;
        }

        if (!FigSampleCursorUtilityGetBatchSampleTimingAndSizes(a1, v13, a2, (a5 + 368), v28, v27, v29, MutableBytePtr))
        {
          if (v23)
          {
            appended = FigInMemorySerializerAppendCFType();
            if (!v26 || appended)
            {
LABEL_32:
              CFRelease(v23);
LABEL_33:
              if (v26)
              {
                CFRelease(v26);
              }

              return result;
            }
          }

          else if (!v26)
          {
            return result;
          }

          FigInMemorySerializerAppendCFType();
        }

LABEL_31:
        if (!v23)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

LABEL_17:
      v27 = 0;
      v26 = 0;
      goto LABEL_18;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
  }

  else
  {
LABEL_38:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigSampleCursorServer_TranslateSampleDependencyAttributesFromEventLink(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_427_0();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v32 = OUTLINED_FUNCTION_41_21(v31);
  if (FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType(v32, @"SampleDependencyAttributes", v33, &a15, &a13))
  {
    goto LABEL_8;
  }

  if (a13)
  {
    if (FigInMemorySerializerAppendCFType())
    {
      goto LABEL_8;
    }

    if (!v30)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a14 = 0;
  if (v30)
  {
LABEL_5:
    *v30 = a15;
  }

LABEL_6:
  if (v28)
  {
    *v28 = a14;
  }

LABEL_8:
  OUTLINED_FUNCTION_424_0();
}

void FigSampleCursorServer_SetSampleCursorPropertiesFromEventLink(uint64_t a1, uint64_t a2, CFTypeRef cf, uint64_t a4)
{
  v34 = 0;
  v35 = 0;
  v33 = 0uLL;
  v31 = 0;
  cfa = 0;
  v8 = CFGetTypeID(cf);
  if (v8 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, *__src);
    goto LABEL_32;
  }

  bzero((a4 + 24), 0x130uLL);
  memset(__src, 0, sizeof(__src));
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v9)
  {
    if (!v9(cf, &__src[24]))
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v10)
      {
        if (!v10(cf, &__src[48]))
        {
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v11)
          {
            if (!v11(cf, __src))
            {
              v28 = 0;
              if (*(*(a1 + 16) + 32) && *(*(CMBaseObjectGetVTable() + 16) + 64))
              {
                v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                if (v12)
                {
                  v12(cf, &v28 + 4, &v28 + 5, &v28, &v28 + 6);
                }

                *(a4 + 96) = v28;
              }

              memcpy((a4 + 24), __src, 0x48uLL);
              v13 = *(*(CMBaseObjectGetVTable() + 16) + 160);
              if (v13)
              {
                v13(cf, &cfa);
              }

              *(a4 + 104) = 0;
              if (!FigSampleCursorServer_TranslateFormatDescriptionFromEventLink(a1, *(a1 + 48), cfa, a4, a2, a4 + 104, a4 + 144))
              {
                *(a4 + 112) = 0;
                *(a4 + 120) = 0;
                *(a4 + 168) = 0;
                *(a4 + 152) = 0;
                if (*(a1 + 32))
                {
                  FigSampleCursorGetFigBaseObject();
                  v15 = v14;
                  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v16 && (v16(v15, @"SampleDependencyAttributes", *MEMORY[0x1E695E480], &v31), v31))
                  {
                    FigSampleCursorServer_TranslateSampleDependencyAttributesFromEventLink(a1, *(a1 + 48), v31, a4, *(a4 + 144), a2, a4 + 112, a4 + 152, v27, v28, SWORD2(v28), SBYTE6(v28), SHIBYTE(v28), *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v30, v31, cfa);
                    if (v26)
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    *(a4 + 112) = -1;
                  }
                }

                if (*(*(CMBaseObjectGetVTable() + 16) + 144))
                {
                  v17 = *(*(CMBaseObjectGetVTable() + 16) + 144);
                  if (v17)
                  {
                    v18 = v17(cf, &v33, &v33 + 8, &v35, &v34);
                    v19 = v35;
                    *(a4 + 128) = v33;
                    if (v19 && FigSampleCursorServer_TranslateByteStream(v18, v19, (a4 + 168)))
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    *(a4 + 128) = v33;
                  }

                  if (FigSampleCursorServer_TranslateDataSourceFromEventLink(a1, *(a1 + 48), v34, a4, *(a4 + 152) + *(a4 + 144), a2, (a4 + 120), (a4 + 160)))
                  {
                    goto LABEL_32;
                  }
                }

                v21 = *(MEMORY[0x1E6960C98] + 16);
                v20 = *(MEMORY[0x1E6960C98] + 32);
                *(a4 + 176) = *MEMORY[0x1E6960C98];
                *(a4 + 192) = v21;
                v22 = MEMORY[0x1E6960C70];
                v23 = *MEMORY[0x1E6960C70];
                *(a4 + 208) = v20;
                *(a4 + 224) = v23;
                v24 = *(v22 + 16);
                *(a4 + 240) = v24;
                *(a4 + 248) = v23;
                *(a4 + 264) = v24;
                *(a4 + 272) = 0;
                *(a4 + 292) = v24;
                *(a4 + 276) = v23;
                *(a4 + 316) = v24;
                *(a4 + 300) = v23;
                if (*(*(a1 + 16) + 36) != 1936684398)
                {
                  FigSampleCursorUtilityGetPresentationTimeRange(cf, (a4 + 176));
                  if (*(*(CMBaseObjectGetVTable() + 16) + 200))
                  {
                    v25 = *(*(CMBaseObjectGetVTable() + 16) + 200);
                    if (v25)
                    {
                      v25(cf, a4 + 224, a4 + 248);
                    }
                  }

                  FigSampleCursorUtilityGetMinimumUpcomingPresentationTime(cf, 0, (a4 + 276), (a4 + 300));
                  *(a4 + 272) = 1;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_32:
  if (v34)
  {
    CFRelease(v34);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v31)
  {
    CFRelease(v31);
  }
}

void FigServedTrackReaderStateCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigServedTrackReaderStateCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigServedTrackReaderStateCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigServedSampleCursorStateCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigServedSampleCursorStateCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigServedSampleCursorStateCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigServedSampleCursorStateCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigSampleCursorServer_SetSampleCursorProperties_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void CreateServedFormatReaderState_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CreateServedFormatReaderState_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXPCFormatReaderServerCopyFormatReaderForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFormatReaderServerStart_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint_cold_2()
{
  OUTLINED_FUNCTION_375_0();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v2 = FigXPCServerStartWithNewXPCEndpoint();
  if (!v2)
  {
    v2 = FigXPCServerCopyXPCEndpoint();
  }

  v3 = v2;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  *v0 = v3;
}

void FigXPCFormatReaderServerCopyTrackReaderForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXPCFormatReaderServerCopySampleCursorForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleEditCursorStepMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleSampleCursorCopyPropertyFromEventLink_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleSampleCursorCopyPropertyFromEventLink_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleSampleCursorCopyPropertyFromEventLink_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleSampleCursorGetSampleSyncInfoFromEventLink_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleSampleCursorCompareInDecodeOrderFromEventLink_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleSampleCursorCompareInDecodeOrderFromEventLink_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleSampleCursorTestReorderingBoundaryFromEventLink_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleSampleCursorTestReorderingBoundaryFromEventLink_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleCursorServer_TranslateDataSourceFromEventLink_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigRemote_CreateEditArrayFromData(const UInt8 *__src, unint64_t a2, const __CFAllocator *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return result;
  }

  v5 = __src;
  if (!__src || (v6 = a2) == 0)
  {
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_1_19();
LABEL_23:

    return FigSignalErrorAtGM(v20);
  }

  v7 = a4;
  if (a4 < 1)
  {
LABEL_22:
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_1_19();
    goto LABEL_23;
  }

  v9 = (a5 + 104);
  do
  {
    memset(v21, 0, sizeof(v21));
    if (v6 <= 0x67 || (memcpy(v21, v5, sizeof(v21)), v10 = *(v5 + 8), *(v9 - 14) = *(v5 + 3), *(v9 - 5) = v10, *(v9 - 2) = *(&v21[4] + 8), *(v9 - 2) = *(&v21[5] + 1), *(v9 - 11) = *&v21[1], *(v9 - 26) = v21[0], result = *(&v21[1] + 1), *(v9 - 5) = *(&v21[1] + 8), *(v9 - 8) = *(&v21[2] + 1), v12 = *(v5 + 24), v13 = v6 - 100, v14 = (-v12 & 3) + v12, v6 - 100 < v14 + 4))
    {
      OUTLINED_FUNCTION_376();
      OUTLINED_FUNCTION_1_19();
      return FigSignalErrorAtGM(v19, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5]);
    }

    v15 = v5 + 100;
    if (v12)
    {
      v16 = CFStringCreateWithBytes(a3, v15, v12, 0x8000100u, 0);
      if (!v16 || (v17 = v16, *(v9 - 1) = CFURLCreateWithString(a3, v16, 0), CFRelease(v17), !*(v9 - 1)))
      {
        OUTLINED_FUNCTION_376();
        OUTLINED_FUNCTION_2_139();
        return FigSignalErrorAtGM(v19, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5]);
      }

      v15 += v14;
      v13 -= v14;
    }

    else
    {
      *(v9 - 1) = 0;
    }

    v18 = *v15;
    v5 = v15 + 4;
    *v9 = v18;
    v9 += 27;
    v6 = v13 - 4;
    --v7;
  }

  while (v7);
  if (v13 != 4)
  {
    goto LABEL_22;
  }

  return result;
}

void FigRemote_CreateEditArrayData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_139();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigRemote_CreateEditArrayData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_139();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigRemote_CreateEditArrayData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_139();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMutableCompositionClientServer_CreateFlattenedFormatDescriptionReplacementTable_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigNetworkWirelessReportingReportWiFiStats(uint64_t a1, uint64_t a2)
{
  result = 4294948045;
  if (a1 && a2)
  {
    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v4 = OUTLINED_FUNCTION_0_156();
      v5(v4);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v6 = OUTLINED_FUNCTION_0_156();
      v7(v6);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v8 = OUTLINED_FUNCTION_0_156();
      v9(v8);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v10 = OUTLINED_FUNCTION_0_156();
      v11(v10);
    }

    FigCFDictionaryGetValue();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 48))
    {
      v12 = OUTLINED_FUNCTION_0_156();
      v13(v12);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v14 = OUTLINED_FUNCTION_0_156();
      v15(v14);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v16 = OUTLINED_FUNCTION_0_156();
      v17(v16);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v18 = OUTLINED_FUNCTION_0_156();
      v19(v18);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v20 = OUTLINED_FUNCTION_0_156();
      v21(v20);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetFloat64();
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v22 = OUTLINED_FUNCTION_298();
      v23(v22);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetFloat64();
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v24 = OUTLINED_FUNCTION_298();
      v25(v24);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetUInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v26 = OUTLINED_FUNCTION_0_156();
      v27(v26);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v28 = OUTLINED_FUNCTION_0_156();
      v29(v28);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v30 = OUTLINED_FUNCTION_0_156();
      v31(v30);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v32 = OUTLINED_FUNCTION_0_156();
      v33(v32);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetUInt64();
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v34 = OUTLINED_FUNCTION_298();
      v35(v34);
    }

    return 0;
  }

  return result;
}

uint64_t FigNetworkWirelessReportingReportCellStats(uint64_t a1, uint64_t a2)
{
  result = 4294948045;
  if (a1 && a2)
  {
    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v4 = OUTLINED_FUNCTION_0_156();
      v5(v4);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v6 = OUTLINED_FUNCTION_0_156();
      v7(v6);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v8 = OUTLINED_FUNCTION_0_156();
      v9(v8);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v10 = OUTLINED_FUNCTION_0_156();
      v11(v10);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
    {
      v12 = OUTLINED_FUNCTION_0_156();
      v13(v12);
    }

    FigCFDictionaryGetValue();
    FigCFNumberGetSInt64();
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v14 = OUTLINED_FUNCTION_298();
      v15(v14);
    }

    return 0;
  }

  return result;
}

uint64_t FigNetworkWirelessReportingReportWTEPredictions(uint64_t a1, uint64_t a2)
{
  result = 4294948045;
  if (a1 && a2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = FigCFDictionaryGetValue();
    if (v5)
    {
      v6 = v5;
      [v5 timeIntervalSinceNow];
      v8 = v7;

      objc_autoreleasePoolPop(v4);
      FigCFDictionaryGetValue();
      FigCFNumberGetUInt64();
      if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
      {
        v9 = OUTLINED_FUNCTION_2_140();
        v10(v9);
      }

      FigCFDictionaryGetValue();
      FigCFNumberGetSInt64();
      if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
      {
        v11 = OUTLINED_FUNCTION_2_140();
        v12(v11);
      }

      v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v13)
      {
        v13(a1, 0x1F0B64558, 0x1F0B67E38, (v8 * 1000.0), 0);
      }

      FigCFDictionaryGetValue();
      FigCFNumberGetSInt64();
      if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
      {
        v14 = OUTLINED_FUNCTION_2_140();
        v15(v14);
      }

      FigCFDictionaryGetValue();
      FigCFNumberGetUInt64();
      if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
      {
        v16 = OUTLINED_FUNCTION_2_140();
        v17(v16);
      }

      FigCFDictionaryGetValue();
      FigCFNumberGetSInt64();
      if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
      {
        v18 = OUTLINED_FUNCTION_2_140();
        v19(v18);
      }

      FigCFDictionaryGetValue();
      FigCFNumberGetSInt64();
      if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
      {
        v20 = OUTLINED_FUNCTION_2_140();
        v21(v20);
      }

      FigCFDictionaryGetValue();
      FigCFNumberGetSInt64();
      if (*(*(OUTLINED_FUNCTION_5_96() + 16) + 56))
      {
        v22 = OUTLINED_FUNCTION_2_140();
        v23(v22);
      }

      FigCFDictionaryGetValue();
      UInt64 = FigCFNumberGetUInt64();
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v25)
      {
        v25(a1, 0x1F0B64558, 0x1F0B67EF8, UInt64, 0);
      }
    }

    else
    {
      objc_autoreleasePoolPop(v4);
    }

    return 0;
  }

  return result;
}

void FigNetworkWirelessReportingInterfaceCopyWifiStats_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"OSStatus FigNetworkWirelessReportingInterfaceCopyWifiStats(CFDictionaryRef *)"];
  [v1 handleFailureInFunction:v0 file:@"FigNetworkWirelessReportingInterface.m" lineNumber:252 description:@"Bug in MediaToolbox: expected a non-NULL wifiStatsOut parameter"];
}

void FigNetworkWirelessReportingInterfaceCopyWTEPredictionStats_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"OSStatus FigNetworkWirelessReportingInterfaceCopyWTEPredictionStats(CFDictionaryRef *)"];
  [v1 handleFailureInFunction:v0 file:@"FigNetworkWirelessReportingInterface.m" lineNumber:272 description:@"Bug in MediaToolbox: expected a non-NULL wtePredictionsOut parameter"];
}

void FigNetworkWirelessReportingInterfaceCopyCellStats_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"OSStatus FigNetworkWirelessReportingInterfaceCopyCellStats(CFDictionaryRef *)"];
  [v1 handleFailureInFunction:v0 file:@"FigNetworkWirelessReportingInterface.m" lineNumber:292 description:@"Bug in MediaToolbox: expected a non-NULL cellStatsOut parameter"];
}

double FigStreamPlaylistParseStringAndCreateProtocolVersionList(const __CFString *a1, CFTypeRef *a2)
{
  __endptr = 0;
  __stringp = 0;
  if (!a1)
  {
LABEL_19:
    OUTLINED_FUNCTION_424_0();
    return result;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a1);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = malloc_type_calloc(MaximumSizeOfFileSystemRepresentation, 1uLL, 0x100004077774924uLL);
    if (v8 && CFStringGetFileSystemRepresentation(a1, v8, MaximumSizeOfFileSystemRepresentation - 1))
    {
      __stringp = v8;
      v9 = strsep(&__stringp, "/");
      if (v9)
      {
        while (1)
        {
          valuePtr = strtol(v9, &__endptr, 0);
          if (valuePtr < 1 || __endptr == 0)
          {
            break;
          }

          v11 = *__endptr;
          if (v11 != 47 && v11 != 0)
          {
            break;
          }

          v13 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
          if (!v13)
          {
            OUTLINED_FUNCTION_239();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            break;
          }

          v14 = v13;
          CFArrayAppendValue(v7, v13);
          CFRelease(v14);
          v9 = strsep(&__stringp, "/");
          if (!v9)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        *a2 = CFRetain(v7);
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    free(v8);
    CFRelease(v7);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_424_0();

  return FigSignalErrorAtGM(v16);
}

uint64_t PlaylistGetSelectionGroupGuts(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, void *a5)
{
  v5 = a1;
  if (a1)
  {
    OUTLINED_FUNCTION_28_25();
    if (v9 == v10)
    {
      v13 = "closed caption";
      v14 = 4294951058;
    }

    else
    {
      OUTLINED_FUNCTION_27_25();
      if (v11 == v12)
      {
        v13 = "subtitle";
        v14 = 4294954980;
      }

      else if (v11 == 1986618469)
      {
        v13 = "video";
        v14 = 4294954981;
      }

      else
      {
        if (v11 != 1936684398)
        {
          v5 = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294954985, a4, @"Illegal type %c%c%c%c in EXT-X-MEDIA", HIBYTE(v11), BYTE2(v11), BYTE1(v11), v11);
          return v5;
        }

        v13 = "audio";
        v14 = 4294954982;
      }
    }

    if (FigCFDictionaryGetCount())
    {
      Value = CFDictionaryGetValue(a3, v5);
      v5 = 0;
      *a5 = Value;
    }

    else
    {
      v17 = v5;
      v5 = 4294954654;
      _StreamPlaylistLogError(4294954654, v14, a4, @"have %s %@ in STREAMINF without EXT-X-MEDIA %s group", v13, v17, v13);
    }
  }

  return v5;
}

uint64_t _StreamPlaylistLogError(uint64_t a1, uint64_t a2, uint64_t a3, CFStringRef format, ...)
{
  va_start(va, format);
  if (a3 && (a1 || *(a3 + 40)))
  {
    v6 = *MEMORY[0x1E695E480];
    if (format)
    {
      v7 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, format, va);
    }

    else
    {
      v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "Format Error", 0x8000100u);
    }

    v8 = v7;
    if (a1)
    {
      HIBYTE(v24) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
    }

    if (*(a3 + 8))
    {
      v10 = *(a3 + 32);
      if (v10)
      {
        v11 = strcspn(*(a3 + 32), "\r\n");
        v10 = OUTLINED_FUNCTION_15_42(v6, v10, v11);
      }

      Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v13 = Mutable;
        Current = CFAbsoluteTimeGetCurrent();
        v15 = CFDateCreate(v6, Current);
        if (v15)
        {
          v16 = v15;
          CFDictionarySetValue(v13, @"date", v15);
          CFRelease(v16);
        }

        v17 = *(a3 + 16);
        if (v17)
        {
          v18 = FigCFHTTPCreateURLString(v17);
          if (v18)
          {
            v19 = v18;
            CFDictionarySetValue(v13, @"uri", v18);
            CFRelease(v19);
          }
        }

        CFDictionarySetValue(v13, @"domain", @"CoreMediaErrorDomain");
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        if (v8)
        {
          CFDictionarySetValue(v13, @"comment", v8);
        }

        if (v10)
        {
          CFDictionarySetValue(v13, @"StreamPlaylistLine", v10);
        }

        v20 = **(a3 + 8);
        if (!v20)
        {
          **(a3 + 8) = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
          v20 = **(a3 + 8);
        }

        CFArrayAppendValue(v20, v13);
        CFRelease(v13);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return a1;
}

uint64_t PlaylistProcessKey(uint64_t a1, uint64_t a2, const char *a3, char *a4, CFTypeRef *a5, CFTypeRef *a6, char **a7, uint64_t a8)
{
  v9 = a4;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v112 = *MEMORY[0x1E69E9840];
  v107 = 0;
  v108 = a4;
  cf = 0;
  v106 = 0;
  allocator = *MEMORY[0x1E695E480];
  while (2)
  {
    v17 = *v9;
    v18 = v17 > 0xD;
    v19 = (1 << v17) & 0x2401;
    if (v18 || v19 == 0)
    {
      URLBytes = 0;
      __s1 = 0;
      length = 0;
      v102 = 0;
      v100 = 0;
      free(v107);
      v107 = 0;
      v16 = sp_ParseAttribute(a3, v9, 1, 0, &__s1, &v102, &URLBytes, &length, &v108, &v100, &v107, a8);
      if (v16 && !*(a8 + 41))
      {
        goto LABEL_160;
      }

      v21 = v100;
      if ((v100 & 2) != 0)
      {
        goto LABEL_160;
      }

      if (!__s1)
      {
        goto LABEL_102;
      }

      v22 = URLBytes;
      if (!URLBytes)
      {
        goto LABEL_102;
      }

      switch(v102)
      {
        case 2:
          if (*__s1 != 73 || __s1[1] != 86)
          {
            goto LABEL_58;
          }

          if (v100)
          {
            v60 = OUTLINED_FUNCTION_10_53();
            _StreamPlaylistLogError(v60, 4294955029, a8, @"IV MUST be a hexadecimal sequence", v90);
            goto LABEL_101;
          }

          if (*URLBytes != 48 || __tolower(URLBytes[1]) != 120)
          {
            v59 = OUTLINED_FUNCTION_10_53();
            _StreamPlaylistLogError(v59, 4294955029, a8, @"No 0x at start of IV", v90);
            goto LABEL_101;
          }

          v23 = URLBytes;
          v24 = strcspn(URLBytes + 2, ",\r\n");
          strcpy(v109, "00000000000000000000000000000000");
          if (v24 >= 0x21)
          {
            v76 = OUTLINED_FUNCTION_10_53();
            v78 = 4294955029;
            goto LABEL_159;
          }

          memcpy(&v109[-v24 + 32], v23 + 2, v24);
          OUTLINED_FUNCTION_22_29();
          v31 = sp_strtoull(v25, v26, v27, v28, v29, v30, "IV lower", a8);
          if (v31 || (v109[16] = 0, OUTLINED_FUNCTION_22_29(), v31 = sp_strtoull(v32, v33, v34, v35, v36, v37, "IV upper", a8), v31))
          {
            v16 = v31;
            goto LABEL_160;
          }

          *bytes = bswap64(0);
          v111 = *bytes;
          if (v14)
          {
            CFRelease(v14);
          }

          v14 = CFDataCreate(allocator, bytes, 16);
          goto LABEL_39;
        case 3:
          if (*__s1 != 85 || __s1[1] != 82 || __s1[2] != 73)
          {
            goto LABEL_58;
          }

          if ((v100 & 1) == 0)
          {
            goto LABEL_65;
          }

          if (v15)
          {
            _StreamPlaylistLogError(0, 4294955035, a8, @"%s has multiple %s params. Ignoring old one.", a3, "URI");
            CFRelease(v15);
            v22 = URLBytes;
          }

          v15 = CFURLCreateWithBytes(allocator, v22, length, 0x8000100u, *(a8 + 16));
          if (v15)
          {
            goto LABEL_100;
          }

          v45 = OUTLINED_FUNCTION_10_53();
          _StreamPlaylistLogError(v45, 4294955034, a8, @"Invalid %s: %s", a3, "URI");
          goto LABEL_101;
        case 4:
        case 5:
        case 7:
        case 8:
          goto LABEL_58;
        case 6:
          if (strncmp(__s1, "METHOD", 6uLL))
          {
            goto LABEL_58;
          }

          if (strncmp(v22, "NONE", 4uLL))
          {
            goto LABEL_69;
          }

          v46 = v22[4];
          if ((v46 & 0x80000000) != 0)
          {
            v47 = __maskrune(v46, 0x500uLL);
          }

          else
          {
            v47 = OUTLINED_FUNCTION_4_112(v46, MEMORY[0x1E69E9830]);
          }

          if (!v47)
          {
            v11 = 5;
            goto LABEL_100;
          }

          v22 = URLBytes;
          if (URLBytes)
          {
LABEL_69:
            if (strncmp(v22, "AES-128", 7uLL))
            {
              goto LABEL_76;
            }

            v50 = v22[7];
            if ((v50 & 0x80000000) != 0)
            {
              if (!__maskrune(v50, 0x500uLL))
              {
LABEL_89:
                v12 = 2;
                v11 = 3;
                goto LABEL_100;
              }
            }

            else if (!OUTLINED_FUNCTION_4_112(v50, MEMORY[0x1E69E9830]))
            {
              goto LABEL_89;
            }
          }

          else
          {
            OUTLINED_FUNCTION_120();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v90, v92, v93);
          }

          v22 = URLBytes;
          if (!URLBytes)
          {
            OUTLINED_FUNCTION_120();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v90, v92, v93);
            goto LABEL_77;
          }

LABEL_76:
          if (strncmp(v22, "SAMPLE-AES", 0xAuLL))
          {
            goto LABEL_77;
          }

          v57 = v22[10];
          if ((v57 & 0x80000000) != 0)
          {
            if (!__maskrune(v57, 0x500uLL))
            {
LABEL_91:
              v11 = 1;
              goto LABEL_100;
            }
          }

          else if (!OUTLINED_FUNCTION_4_112(v57, MEMORY[0x1E69E9830]))
          {
            goto LABEL_91;
          }

LABEL_77:
          v51 = URLBytes;
          if (URLBytes)
          {
            if (strncmp(URLBytes, "ISO-23001-7", 0xBuLL))
            {
LABEL_79:
              if (strncmp(v51, "SAMPLE-AES-CTR", 0xEuLL))
              {
                goto LABEL_96;
              }

              v56 = v51[14];
              if ((v56 & 0x80000000) == 0)
              {
                if (!OUTLINED_FUNCTION_4_112(v56, MEMORY[0x1E69E9830]))
                {
                  goto LABEL_99;
                }

LABEL_96:
                if (!StreamingPlaylist_MatchAlphanumericStringExactly(URLBytes, "AES-256-GCM", 0xBuLL, &URLBytes, v52, v53, v54, v55))
                {
                  v61 = OUTLINED_FUNCTION_10_53();
                  _StreamPlaylistLogError(v61, 4294955036, a8, @"Unrecognized %s: %s", a3, "METHOD");
                  goto LABEL_101;
                }

                v12 = 2;
                v11 = 4;
                goto LABEL_100;
              }

              if (__maskrune(v56, 0x500uLL))
              {
                goto LABEL_96;
              }

LABEL_99:
              v11 = 2;
LABEL_100:
              if (v16)
              {
                goto LABEL_101;
              }

              goto LABEL_102;
            }

            v58 = v51[11];
            if ((v58 & 0x80000000) != 0)
            {
              if (!__maskrune(v58, 0x500uLL))
              {
                goto LABEL_99;
              }
            }

            else if (!OUTLINED_FUNCTION_4_112(v58, MEMORY[0x1E69E9830]))
            {
              goto LABEL_99;
            }
          }

          else
          {
            OUTLINED_FUNCTION_120();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v90, v92, v93);
          }

          v51 = URLBytes;
          if (!URLBytes)
          {
            OUTLINED_FUNCTION_120();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v90, v92, v93);
            goto LABEL_96;
          }

          goto LABEL_79;
        case 9:
          if (strncmp(__s1, "KEYFORMAT", 9uLL))
          {
            goto LABEL_58;
          }

          if ((v21 & 1) == 0)
          {
            goto LABEL_65;
          }

          v44 = length;
          if (length == 8)
          {
            if (!strncmp(v22, "identity", 8uLL))
            {
              v12 = 2;
              goto LABEL_100;
            }
          }

          else
          {
            if (length != 16)
            {
              if (length != 30 || strncmp(v22, "com.apple.streamingkeydelivery", 0x1EuLL))
              {
                goto LABEL_153;
              }

LABEL_62:
              v12 = 1;
              goto LABEL_100;
            }

            if (!strncmp(v22, "com.apple.pastis", 0x10uLL))
            {
              goto LABEL_62;
            }
          }

LABEL_153:
          if (*(a8 + 40) != 1)
          {
LABEL_160:
            v68 = 0;
            goto LABEL_161;
          }

          v92 = v44;
          v93 = v22;
          v90 = a3;
          v75 = @"%s: invalid KEYFORMAT %.*s";
          v76 = 0;
LABEL_158:
          v78 = 4294955032;
LABEL_159:
          _StreamPlaylistLogError(v76, v78, a8, v75, v90, v92, v93);
          goto LABEL_160;
        default:
          if (v102 != 17 || strncmp(__s1, "KEYFORMATVERSIONS", 0x11uLL))
          {
LABEL_58:
            _StreamPlaylistLogError(0, 4294955022, a8, @"Unrecognized attribute in %s", a3);
            goto LABEL_100;
          }

          if ((v21 & 1) == 0)
          {
LABEL_65:
            v16 = 4294954654;
            v48 = OUTLINED_FUNCTION_5_97();
            _StreamPlaylistLogError(v48, v49, a8, @"%s: missing quotes", a3);
            goto LABEL_101;
          }

          v38 = length;
          if (!length)
          {
LABEL_35:
            if (v16)
            {
              goto LABEL_101;
            }

            if (v13)
            {
              CFRelease(v13);
              v22 = URLBytes;
              v38 = length;
            }

            v13 = OUTLINED_FUNCTION_15_42(allocator, v22, v38);
LABEL_39:
            v16 = 0;
            goto LABEL_102;
          }

          v39 = 0;
          v40 = v22;
          v41 = length;
          while (2)
          {
            v43 = *v40++;
            v42 = v43;
            if (v43 - 48 < 0xA)
            {
              v39 = 1;
              goto LABEL_34;
            }

            if (v42 != 47)
            {
              v91 = v42;
              v16 = 4294954654;
              v62 = OUTLINED_FUNCTION_6_84();
              _StreamPlaylistLogError(v62, v63, a8, @"illegal character %c in %s", v91, "KEYFORMATVERSIONS");
              goto LABEL_101;
            }

            if (v39)
            {
              v39 = 0;
LABEL_34:
              if (!--v41)
              {
                goto LABEL_35;
              }

              continue;
            }

            break;
          }

          v16 = 4294954654;
          v64 = OUTLINED_FUNCTION_6_84();
          _StreamPlaylistLogError(v64, v65, a8, @"illegal / character in %s", "KEYFORMATVERSIONS", v92);
LABEL_101:
          if (!*(a8 + 41))
          {
            goto LABEL_160;
          }

LABEL_102:
          v9 = v108;
          continue;
      }
    }

    break;
  }

  if (v12)
  {
    v66 = 1;
  }

  else
  {
    v66 = (v11 - 1) >= 2;
  }

  if (v66)
  {
    v67 = v12;
  }

  else
  {
    v67 = 2;
  }

  if (v11 == 5 && v15 || v11 != 5 && !v15)
  {
    v76 = OUTLINED_FUNCTION_10_53();
    goto LABEL_158;
  }

  if (v11 == 2 && v14)
  {
    CFRelease(v14);
    v16 = 4294954654;
    v80 = OUTLINED_FUNCTION_5_97();
    _StreamPlaylistLogError(v80, v81, a8, v82);
    v68 = 0;
    v14 = 0;
    goto LABEL_161;
  }

  if (v16)
  {
    goto LABEL_160;
  }

  if (v67 == 1 && !v13)
  {
    v13 = CFStringCreateWithCString(allocator, "1", 0x8000100u);
  }

  if (v15)
  {
    v68 = FigCFHTTPCreateURLString(v15);
  }

  else
  {
    v68 = 0;
  }

  if (v11 != 5)
  {
    if (v11)
    {
      if (a1)
      {
        ContentKeySpecifiers = FigMultivariantPlaylistGetContentKeySpecifiers(a1);
      }

      else
      {
        ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(a2);
      }

      v71 = ContentKeySpecifiers;
      v72 = 0;
      if (ContentKeySpecifiers)
      {
        goto LABEL_148;
      }

LABEL_149:
      for (i = 0; ; i = CFArrayGetCount(v71))
      {
        if (v72 >= i)
        {
          if (cf)
          {
            goto LABEL_178;
          }

          goto LABEL_187;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v71, v72);
        FigContentKeySpecifierGetIdentifier(ValueAtIndex);
        if (FigCFEqual())
        {
          if (FigContentKeySpecifierGetKeySystem(ValueAtIndex) == v67 && FigContentKeySpecifierGetEncryptionMethod(ValueAtIndex) == v11)
          {
            break;
          }
        }

        ++v72;
        if (!v71)
        {
          goto LABEL_149;
        }

LABEL_148:
        ;
      }

      if (ValueAtIndex)
      {
        v77 = CFRetain(ValueAtIndex);
      }

      else
      {
        v77 = 0;
      }

      cf = v77;
      if (v77)
      {
        goto LABEL_178;
      }

LABEL_187:
      FigStreamPlaylistParseStringAndCreateProtocolVersionList(v13, &v106);
      if (v86 || (v86 = FigContentKeySpecifierCreate(v67, v68, v11, v106, &cf), v86))
      {
        v16 = v86;
        goto LABEL_161;
      }

      if (a2)
      {
        CryptKeyCount = FigMediaPlaylistGetCryptKeyCount(a2);
        FigMediaPlaylistSetCryptKeyCount(a2, CryptKeyCount + 1);
        v88 = cf;
        v89 = FigMediaPlaylistGetCryptKeyCount(a2);
        FigContentKeySpecifierSetCryptKeyParsedIndex(v88, v89);
      }

      FigContentKeySpecifierSetIsChangedInCurrent(cf, 1);
      if (a1)
      {
        FigMultivariantPlaylistAddContentKeySpecifier(a1, cf);
      }

      else
      {
        FigMediaPlaylistAddContentKeySpecifier(a2, cf);
      }

LABEL_178:
      v83 = *a5;
      *a5 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      if (v83)
      {
        CFRelease(v83);
      }

      v84 = *a6;
      v85 = cf;
      *a6 = cf;
      if (v85)
      {
        CFRetain(v85);
      }

      if (v84)
      {
        CFRelease(v84);
      }

      goto LABEL_186;
    }

    if (!*a6)
    {
LABEL_186:
      v16 = 0;
      goto LABEL_161;
    }

    CFRelease(*a6);
    v16 = 0;
    *a6 = 0;
LABEL_161:
    v69 = a7;
    goto LABEL_162;
  }

  v69 = a7;
  if (*a6)
  {
    CFRelease(*a6);
    *a6 = 0;
  }

  if (*a5)
  {
    CFRelease(*a5);
    v16 = 0;
    *a5 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_162:
  *v69 = v108;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  free(v107);
  return v16;
}

void PlaylistExtractDisallowedCPCForFairPlayStreaming(char *a1, size_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_25_27(a1, a2, a3, a4, a5, a6, a7, a8, v27, v28, v29, theArray);
  v11 = theArray;
  if (v10)
  {
    goto LABEL_20;
  }

  v12 = 0;
  v13 = 0;
  do
  {
    if (v11)
    {
      Count = CFArrayGetCount(v11);
    }

    else
    {
      Count = 0;
    }

    if (v13 >= Count)
    {
      if (!v12)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v27 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
    v17 = OUTLINED_FUNCTION_9_21(ValueAtIndex, v16, &v27);
    v18 = OUTLINED_FUNCTION_35_18(v17);
    if (OUTLINED_FUNCTION_33_23(v18, v19, v20))
    {
      v28 = OUTLINED_FUNCTION_35_18(v28);
      v21 = strlen(v28);
      v22 = PlaylistTokenizeString(v28, v21, v8, 47, &v29);
      v12 = 1;
    }

    else
    {
      v22 = 0;
    }

    free(v27);
    if (v22)
    {
      goto LABEL_20;
    }

    ++v13;
    v23 = v29;
  }

  while (!v29);
  if (!v12)
  {
    goto LABEL_20;
  }

  if (CFArrayGetCount(v29) < 1)
  {
LABEL_19:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
    goto LABEL_20;
  }

  v24 = 0;
  while (v24 < CFArrayGetCount(v23))
  {
    v25 = CFArrayGetValueAtIndex(v23, v24++);
    if (PKDIsCPCLabelAOCP(v25))
    {
      v26 = 0;
      goto LABEL_21;
    }
  }

LABEL_20:
  v26 = 1;
LABEL_21:
  *a4 = v26;
  if (v11)
  {
    CFRelease(v11);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  OUTLINED_FUNCTION_424_0();
}

void PlaylistExtractallowedCPCForFairPlayStreaming(char *a1, size_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_25_27(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, theArray);
  v11 = theArray;
  if (v10)
  {
LABEL_16:
    if (v11)
    {
LABEL_17:
      CFRelease(v11);
    }
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = v11 ? CFArrayGetCount(v11) : 0;
      if (v12 >= v13)
      {
        break;
      }

      v24 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
      v16 = OUTLINED_FUNCTION_9_21(ValueAtIndex, v15, &v24);
      v17 = OUTLINED_FUNCTION_35_18(v16);
      v20 = OUTLINED_FUNCTION_33_23(v17, v18, v19);
      if (v20)
      {
        v25 = OUTLINED_FUNCTION_35_18(v25);
        v21 = strlen(v25);
        v22 = PlaylistTokenizeString(v25, v21, v8, 47, &v26);
      }

      else
      {
        v22 = 0;
      }

      free(v24);
      if (v22)
      {
        goto LABEL_16;
      }

      ++v12;
      if (v20)
      {
        v23 = v26;
        if (v26 && CFArrayGetCount(v26) > 0)
        {
          PKDGetCPCBitfieldFromLabels(v23, a4);
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
        }

        goto LABEL_16;
      }
    }

    if (v11)
    {
      goto LABEL_17;
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

  OUTLINED_FUNCTION_424_0();
}

char *PlaylistExtractVideoImmersiveAttribute(char *a1, size_t a2, uint64_t a3, __CFArray **a4)
{
  v79 = *MEMORY[0x1E69E9840];
  value = 0;
  theArray = 0;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  v7 = PlaylistTokenizeString(a1, a2, a3, 44, &theArray);
  if (v7)
  {
    v4 = v7;
    Mutable = 0;
    v9 = theArray;
    goto LABEL_65;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = theArray;
  if (!Mutable)
  {
LABEL_64:
    v4 = 0;
    goto LABEL_65;
  }

  v69 = a4;
  v10 = 0;
  if (!theArray)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = CFArrayGetCount(v9); v10 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
    v74 = 0;
    v72 = 0;
    v73 = 0uLL;
    OUTLINED_FUNCTION_9_21(ValueAtIndex, v13, &v72);
    v14 = OUTLINED_FUNCTION_34_23();
    v15 = PlaylistTokenizeString(v4, v14, a3, 47, &v74);
    v16 = v74;
    if (v15)
    {
      v4 = v15;
      if (!v74)
      {
LABEL_61:
        free(v72);
        goto LABEL_65;
      }
    }

    else
    {
      if (v74 && CFArrayGetCount(v74) > 2)
      {
        v17 = CFArrayGetValueAtIndex(v16, 0);
        OUTLINED_FUNCTION_14_46(v17, v18, v19, v20, v21, v22, v23, v24, v67, v68, v69, value, theArray, v72, v73, *(&v73 + 1), v74, v75);
        if (!ValueAtIndex || !OUTLINED_FUNCTION_34_23())
        {
          v45 = OUTLINED_FUNCTION_1_147();
          _StreamPlaylistLogError(v45, v46, v47, @"Missing packing value in VIDEO-IMMERSIVE");
          goto LABEL_50;
        }

        if (!strncasecmp(v4, "NONE", 4uLL))
        {
          v4 = 0;
          v25 = MEMORY[0x1E6963158];
        }

        else
        {
          if (strncasecmp(v4, "SIDE", 4uLL))
          {
            if (!strncasecmp(v4, "OVER", 4uLL))
            {
              v4 = 0;
              v25 = MEMORY[0x1E6963160];
              goto LABEL_18;
            }

            v60 = OUTLINED_FUNCTION_1_147();
            _StreamPlaylistLogError(v60, v61, v62, @"Invalid packing value in VIDEO-IMMERSIVE");
LABEL_50:
            ValueAtIndex = 0;
LABEL_19:
            free(v75);
            v76 = v73;
            if (!ValueAtIndex)
            {
              goto LABEL_43;
            }

            v26 = CFArrayGetValueAtIndex(v16, 1);
            OUTLINED_FUNCTION_14_46(v26, v27, v28, v29, v30, v31, v32, v33, v67, v68, v69, value, theArray, v72, v73, *(&v73 + 1), v74, v75);
            if (!ValueAtIndex || !OUTLINED_FUNCTION_34_23())
            {
              v48 = OUTLINED_FUNCTION_1_147();
              _StreamPlaylistLogError(v48, v49, v50, @"Missing channels value in VIDEO-IMMERSIVE");
              goto LABEL_52;
            }

            if (!strncasecmp(v4, "LR", 2uLL))
            {
              v4 = 0;
              v34 = MEMORY[0x1E69631A0];
            }

            else if (!strncasecmp(v4, "L", 1uLL))
            {
              v4 = 0;
              v34 = MEMORY[0x1E69631A8];
            }

            else
            {
              if (strncasecmp(v4, "R", 1uLL))
              {
                if (!strncasecmp(v4, "M", 1uLL))
                {
                  v4 = 0;
                  v34 = MEMORY[0x1E69631B0];
                  goto LABEL_30;
                }

                v63 = OUTLINED_FUNCTION_1_147();
                _StreamPlaylistLogError(v63, v64, v65, @"Invalid channels value in VIDEO-IMMERSIVE");
LABEL_52:
                ValueAtIndex = 0;
LABEL_31:
                free(v75);
                v77 = v73;
                if (!ValueAtIndex)
                {
                  goto LABEL_43;
                }

                v35 = CFArrayGetValueAtIndex(v16, 2);
                OUTLINED_FUNCTION_14_46(v35, v36, v37, v38, v39, v40, v41, v42, v67, v68, v69, value, theArray, v72, v73, *(&v73 + 1), v74, v75);
                if (ValueAtIndex && OUTLINED_FUNCTION_34_23())
                {
                  if (!strncasecmp(v4, "FISH", 4uLL))
                  {
                    v4 = 0;
                    v43 = MEMORY[0x1E6963178];
LABEL_38:
                    OUTLINED_FUNCTION_21_29(v43);
                  }

                  else
                  {
                    if (!strncasecmp(v4, "RECT", 4uLL))
                    {
                      v4 = 0;
                      v43 = MEMORY[0x1E6963188];
                      goto LABEL_38;
                    }

                    v57 = OUTLINED_FUNCTION_1_147();
                    _StreamPlaylistLogError(v57, v58, v59, @"Invalid projection value in VIDEO-IMMERSIVE");
LABEL_57:
                    LODWORD(ValueAtIndex) = 0;
                  }

                  free(v75);
                  v78 = v73;
                  if (ValueAtIndex)
                  {
                    if (CFArrayGetCount(v16) >= 4)
                    {
                      v67 = CFArrayGetCount(v16) - 3;
                      _StreamPlaylistLogError(0, 4294949659, a3, @"Unexpected values in VIDEO-IMMERSIVE ignored %d");
                    }

                    v4 = 0;
                  }

                  goto LABEL_43;
                }

                v51 = OUTLINED_FUNCTION_1_147();
                _StreamPlaylistLogError(v51, v52, v53, @"Missing projection value in VIDEO-IMMERSIVE");
                goto LABEL_57;
              }

              v4 = 0;
              v34 = MEMORY[0x1E69631B8];
            }

LABEL_30:
            OUTLINED_FUNCTION_21_29(v34);
            goto LABEL_31;
          }

          v4 = 0;
          v25 = MEMORY[0x1E6963168];
        }

LABEL_18:
        OUTLINED_FUNCTION_21_29(v25);
        goto LABEL_19;
      }

      v54 = OUTLINED_FUNCTION_1_147();
      _StreamPlaylistLogError(v54, v55, v56, @"Unexpected number of tags in VIDEO-IMMERSIVE");
      if (!v16)
      {
        goto LABEL_61;
      }
    }

LABEL_43:
    CFRelease(v16);
    free(v72);
    if (v4)
    {
      goto LABEL_65;
    }

    v44 = FigTagCollectionCreate();
    if (v44)
    {
      v4 = v44;
      goto LABEL_65;
    }

    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    ++v10;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_5:
    ;
  }

  if (!v69)
  {
    goto LABEL_64;
  }

  v4 = 0;
  *v69 = Mutable;
  Mutable = 0;
LABEL_65:
  if (v9)
  {
    CFRelease(v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v4;
}

const char *PlaylistExtractVideoLayoutAttribute(char *a1, size_t a2, uint64_t a3, CFMutableArrayRef *a4, _BYTE *a5)
{
  v58 = *MEMORY[0x1E69E9840];
  theArray = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v8 = PlaylistTokenizeString(a1, a2, a3, 44, &theArray);
  if (!v8)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v10 = Mutable;
    v11 = theArray;
    if (Mutable)
    {
      v12 = 0;
      v44 = Mutable;
      v45 = theArray;
      if (!theArray)
      {
        goto LABEL_5;
      }

LABEL_4:
      for (i = CFArrayGetCount(v11); v12 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
        v52 = 0;
        v53 = 0;
        v51 = 0;
        v50 = 0;
        v16 = OUTLINED_FUNCTION_9_21(ValueAtIndex, v15, &v52);
        Length = CFStringGetLength(ValueAtIndex);
        v18 = PlaylistTokenizeString(v16, Length, a3, 47, &v53);
        v19 = v53;
        if (v18)
        {
          v5 = v18;
        }

        else
        {
          if (v53 && CFArrayGetCount(v53))
          {
            v20 = 0;
            v46 = *MEMORY[0x1E6963158];
            v55 = *MEMORY[0x1E6963158];
            v21 = *MEMORY[0x1E6963188];
            v56 = *MEMORY[0x1E69631B0];
            v57 = v21;
            v47 = v56;
            while (1)
            {
              if (v20 >= CFArrayGetCount(v19))
              {
                v5 = 0;
                goto LABEL_63;
              }

              v22 = CFArrayGetValueAtIndex(v19, v20);
              v54 = 0;
              *a5 = 0;
              v24 = OUTLINED_FUNCTION_9_21(v22, v23, &v54);
              if (!v22)
              {
                goto LABEL_61;
              }

              v5 = v24;
              if (!CFStringGetLength(v22))
              {
                goto LABEL_61;
              }

              if (!strncasecmp(v5, "PACK-", 5uLL))
              {
                if (HIBYTE(v51))
                {
                  v30 = OUTLINED_FUNCTION_2_141();
                  _StreamPlaylistLogError(v30, v31, a3, @"Multiple packing tags in VIDEO-LAYOUT");
                }

                else
                {
                  if (!strncasecmp(v5, "PACK-NONE", 9uLL))
                  {
                    v5 = 0;
                    v28 = v46;
                  }

                  else
                  {
                    if (!strncasecmp(v5, "PACK-SIDE", 9uLL))
                    {
                      v5 = 0;
                      v26 = MEMORY[0x1E6963168];
                    }

                    else
                    {
                      if (strncasecmp(v5, "PACK-OVER", 9uLL))
                      {
                        v36 = (&v51 + 1);
                        goto LABEL_59;
                      }

                      v5 = 0;
                      v26 = MEMORY[0x1E6963160];
                    }

                    v28 = *v26;
                  }

                  v55 = v28;
                }

                v29 = (&v51 + 1);
              }

              else if (!strncasecmp(v5, "PROJ-", 5uLL))
              {
                if (v50)
                {
                  v34 = OUTLINED_FUNCTION_2_141();
                  _StreamPlaylistLogError(v34, v35, a3, @"Multiple projection tags in VIDEO-LAYOUT");
                }

                else
                {
                  if (!strncasecmp(v5, "PROJ-RECT", 9uLL))
                  {
                    v5 = 0;
                    v27 = MEMORY[0x1E6960680];
                  }

                  else if (!strncasecmp(v5, "PROJ-FISH", 9uLL) || !strncasecmp(v5, "PROJ-AIV", 8uLL))
                  {
                    v5 = 0;
                    v27 = MEMORY[0x1E6963178];
                  }

                  else
                  {
                    if (!_os_feature_enabled_impl())
                    {
                      goto LABEL_58;
                    }

                    if (!strncasecmp(v5, "PROJ-EQUI", 9uLL))
                    {
                      v5 = 0;
                      v27 = MEMORY[0x1E6960660];
                    }

                    else if (!strncasecmp(v5, "PROJ-HEQU", 9uLL))
                    {
                      v5 = 0;
                      v27 = MEMORY[0x1E6960670];
                    }

                    else
                    {
                      if (strncasecmp(v5, "PROJ-PRIM", 9uLL))
                      {
LABEL_58:
                        v36 = &v50;
LABEL_59:
                        *v36 = 1;
LABEL_60:
                        *a5 = 1;
LABEL_61:
                        v37 = OUTLINED_FUNCTION_2_141();
                        _StreamPlaylistLogError(v37, v38, a3, v39);
                        goto LABEL_49;
                      }

                      v5 = 0;
                      v27 = MEMORY[0x1E6960678];
                    }
                  }

                  v57 = *v27;
                }

                v29 = &v50;
              }

              else
              {
                if (strncasecmp(v5, "CH-", 3uLL))
                {
                  goto LABEL_60;
                }

                if (v51)
                {
                  v32 = OUTLINED_FUNCTION_2_141();
                  _StreamPlaylistLogError(v32, v33, a3, @"Multiple channel tags in VIDEO-LAYOUT");
                }

                else
                {
                  if (!strncasecmp(v5, "CH-STEREO", 9uLL))
                  {
                    v5 = 0;
                    v25 = *MEMORY[0x1E69631A0];
                  }

                  else
                  {
                    if (strncasecmp(v5, "CH-MONO", 7uLL))
                    {
                      v36 = &v51;
                      goto LABEL_59;
                    }

                    v5 = 0;
                    v25 = v47;
                  }

                  v56 = v25;
                }

                v29 = &v51;
              }

              *v29 = 1;
LABEL_49:
              free(v54);
              ++v20;
              if (v5)
              {
                goto LABEL_63;
              }
            }
          }

          v41 = OUTLINED_FUNCTION_2_141();
          _StreamPlaylistLogError(v41, v42, a3, @"No valid tags in VIDEO-LAYOUT");
        }

LABEL_63:
        if (v19)
        {
          CFRelease(v19);
        }

        free(v52);
        v10 = v44;
        v11 = v45;
        if (v5)
        {
          goto LABEL_75;
        }

        if (*a5)
        {
          goto LABEL_74;
        }

        v40 = FigTagCollectionCreate();
        if (v40)
        {
          v5 = v40;
          goto LABEL_75;
        }

        CFArrayAppendValue(v44, 0);
        ++v12;
        if (v45)
        {
          goto LABEL_4;
        }

LABEL_5:
        ;
      }

      if (a4)
      {
        v5 = 0;
        *a4 = v10;
        v10 = 0;
        goto LABEL_75;
      }
    }

LABEL_74:
    v5 = 0;
    goto LABEL_75;
  }

  v5 = v8;
  v10 = 0;
  v11 = theArray;
LABEL_75:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v5;
}

char *PlaylistProcessAlternate(uint64_t a1, const void *PlaylistAlternateURL, void *a3, uint64_t a4, void *a5, const __CFString *a6, const __CFString *a7, uint64_t a8, double a9, double a10, void *a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, uint64_t a17, int a18, int a19, uint64_t a20, CFArrayRef theArray, uint64_t a22, _BYTE *a23, char a24, uint64_t a25)
{
  v120 = 0;
  v119[0] = 0;
  *(v119 + 3) = 0;
  v118[0] = 0;
  *(v118 + 3) = 0;
  v117[0] = 0;
  *(v117 + 3) = 0;
  v116[0] = 0;
  *(v116 + 3) = 0;
  v115[0] = 0;
  *(v115 + 3) = 0;
  v113 = 0u;
  v114 = 0u;
  v112[0] = 0;
  *(v112 + 3) = 0;
  if (!a4)
  {
    v71 = OUTLINED_FUNCTION_16_40();
    v73 = 4294955020;
    goto LABEL_88;
  }

  v33 = a14;
  v111 = 0;
  if (!a6)
  {
    if (a7)
    {
      v53 = OUTLINED_FUNCTION_16_40();
      _StreamPlaylistLogError(v53, 4294951416, a25, v54);
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_39;
  }

  v34 = FigMediaValidatorValidateRFC4281CodecsForStreaming(a6, 0, &v111);
  if (a7)
  {
    v84 = (v34 | v111 & 2) != 0;
    v124[0] = 0;
    v85[0] = 0;
    v122 = 0;
    v123 = 0;
    v121 = 0;
    v25 = OUTLINED_FUNCTION_9_21(a7, v35, v85);
    Length = CFStringGetLength(a7);
    if (PlaylistTokenizeString(v25, Length, a25, 44, &v122))
    {
      v74 = OUTLINED_FUNCTION_16_40();
      _StreamPlaylistLogError(v74, 4294951415, a25, v75);
      v38 = v122;
      if (v122)
      {
LABEL_35:
        CFRelease(v38);
      }
    }

    else
    {
      v37 = 0;
      v25 = 0;
      v38 = v122;
      if (!v122)
      {
        goto LABEL_7;
      }

LABEL_6:
      for (i = CFArrayGetCount(v38); v37 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v38, v37);
        if (!ValueAtIndex)
        {
LABEL_32:
          v50 = OUTLINED_FUNCTION_16_40();
          v52 = 4294951415;
LABEL_33:
          _StreamPlaylistLogError(v50, v52, a25, v51);
          break;
        }

        v42 = ValueAtIndex;
        if (v121)
        {
          CFRelease(v121);
          v121 = 0;
        }

        v43 = v123;
        if (v123)
        {
          v123 = 0;
          free(v43);
        }

        v44 = OUTLINED_FUNCTION_9_21(v42, v41, &v123);
        v45 = CFStringGetLength(v42);
        v25 = PlaylistTokenizeString(v44, v45, a25, 47, &v121);
        if (!v25)
        {
          v46 = 0;
          v47 = v121;
          if (v121)
          {
LABEL_18:
            Count = CFArrayGetCount(v47);
            goto LABEL_20;
          }

          while (1)
          {
            Count = 0;
LABEL_20:
            if (v46 >= Count)
            {
              break;
            }

            v49 = CFArrayGetValueAtIndex(v47, v46);
            if (v46)
            {
              if (CFStringGetLength(v49) != 4)
              {
                v50 = OUTLINED_FUNCTION_16_40();
                v52 = 4294951414;
                goto LABEL_33;
              }
            }

            else if (FigMediaValidatorValidateRFC4281CodecsForStreaming(v49, 0, v124))
            {
              goto LABEL_32;
            }

            ++v46;
            if (v47)
            {
              goto LABEL_18;
            }
          }
        }

        ++v37;
        if (v38)
        {
          goto LABEL_6;
        }

LABEL_7:
        ;
      }

      v33 = a14;
      if (v38)
      {
        goto LABEL_35;
      }
    }

    if (v121)
    {
      CFRelease(v121);
    }

    free(v123);
    free(v85[0]);
    if (!v84)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v25 = 0;
  if (v34 | v111 & 2)
  {
LABEL_39:
    *a23 = 1;
  }

LABEL_40:
  if (!v33)
  {
    Alternates = FigMultivariantPlaylistGetAlternates(a1);
    if (Alternates)
    {
      if (CFArrayGetCount(Alternates) >= 1)
      {
        v59 = FigMultivariantPlaylistGetAlternates(a1);
        if (v59)
        {
          v60 = CFArrayGetCount(v59);
          if (v60 >= 1)
          {
            v61 = v60;
            v62 = 0;
            while (1)
            {
              v63 = FigMultivariantPlaylistGetAlternates(a1);
              v64 = CFArrayGetValueAtIndex(v63, v62);
              if (!FigAlternateIsIFrameOnly(v64))
              {
                break;
              }

              if (v61 == ++v62)
              {
                goto LABEL_41;
              }
            }

            if (v64)
            {
              SubtitleGroupIDString = FigAlternateGetSubtitleGroupIDString(v64);
              if (a12 || !SubtitleGroupIDString)
              {
                if (!a12 || SubtitleGroupIDString)
                {
                  AudioGroupIDString = FigAlternateGetAudioGroupIDString(v64);
                  if (a8 || !AudioGroupIDString)
                  {
                    if (!a8 || AudioGroupIDString)
                    {
                      if (v25)
                      {
                        return v25;
                      }

                      goto LABEL_41;
                    }

                    PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v64);
                  }

                  v76 = PlaylistAlternateURL;
                  v71 = OUTLINED_FUNCTION_16_40();
                  v73 = 4294954982;
LABEL_88:
                  _StreamPlaylistLogError(v71, v73, a25, v72, v76);
                  return v25;
                }

                PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v64);
              }

              v76 = PlaylistAlternateURL;
              v71 = OUTLINED_FUNCTION_16_40();
              v73 = 4294954980;
              goto LABEL_88;
            }
          }
        }
      }
    }
  }

LABEL_41:
  v55 = a5;
  if (a5 && a5 > a4)
  {
    _StreamPlaylistLogError(0, 4294955032, a25, @"Ignoring AVERAGE-BANDWIDTH %lld as it exceeds peak BANDWIDTH %lld", a5, a4);
    v55 = 0;
  }

  if ((a16 | a15) < 0)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = a15;
  }

  if ((a16 | a15) < 0)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = a16;
  }

  if (a10 <= 0.0)
  {
    a10 = -1.0;
  }

  if (theArray)
  {
    v80 = CFArrayGetCount(theArray) > 0;
  }

  else
  {
    v80 = 0;
  }

  v78 = *MEMORY[0x1E695E480];
  v77 = FigAtomicIncrement32();
  v65 = FigMultivariantPlaylistGetAlternates(a1);
  if (v65)
  {
    v66 = CFArrayGetCount(v65);
  }

  else
  {
    v66 = 0;
  }

  v85[0] = a3;
  v85[1] = v55;
  v85[2] = *&a9;
  v85[3] = *&a10;
  v85[4] = a7;
  v85[5] = a11;
  v86 = 0;
  *v87 = v119[0];
  *&v87[3] = *(v119 + 3);
  v88 = a8;
  v89 = 0;
  *v90 = v118[0];
  *&v90[3] = *(v118 + 3);
  v91 = a12;
  v92 = 0;
  *v93 = v117[0];
  *&v93[3] = *(v117 + 3);
  v94 = a13;
  v95 = 0;
  *v96 = v116[0];
  *&v96[3] = *(v116 + 3);
  v97 = a17;
  v98 = a18;
  v99 = a19;
  v100 = a20;
  v101 = theArray;
  v102 = v80;
  *&v103[3] = *(v115 + 3);
  *v103 = v115[0];
  v104 = a22;
  v105 = v56;
  v106 = v57;
  v108 = v114;
  v107 = v113;
  v109 = a24;
  *&v110[3] = *(v112 + 3);
  *v110 = v112[0];
  v25 = FigAlternateCreate(v78, 0, PlaylistAlternateURL, a4, a6, a14, v77, v66, v85, &v120);
  v67 = v120;
  if (!v25)
  {
    FigMultivariantPlaylistAddAlternate(a1, v120);
    v67 = v120;
  }

  if (v67)
  {
    CFRelease(v67);
  }

  return v25;
}

uint64_t PlaylistProcessByteRange(uint64_t *a1, uint64_t *a2, _BYTE *a3, char **a4, uint64_t a5, uint64_t a6)
{
  v14 = *a4;
  *__error() = 0;
  if (a3)
  {
    *a3 = 0;
  }

  result = sp_strtoll(*a4, &v14, a1, 0, "byte range", a6);
  if (!result)
  {
    v13 = StreamingPlaylist_SkipSpacesAndTabs(v14, a6);
    v14 = v13;
    if (*v13 == 64)
    {
      v14 = (StreamingPlaylist_SkipSpacesAndTabs(v13, a6) + 1);
      result = sp_strtoll(v14, &v14, a2, a5 == 0, "byte range offset", a6);
      if (a3 && !result)
      {
        result = 0;
        *a3 = 1;
      }
    }

    else
    {
      result = 0;
    }
  }

  *a4 = v14;
  return result;
}

uint64_t PlaylistProcessBitRate(double *a1, char **a2, uint64_t a3)
{
  v6 = *a2;
  v8 = 0;
  v9 = v6;
  *__error() = 0;
  result = sp_strtoull(*a2, &v9, &v8, 10, 0, 1, "BitRate", a3);
  if (!result)
  {
    *a1 = v8 * 1000.0;
  }

  *a2 = v9;
  return result;
}

uint64_t PlaylistCreateCharacteristicsArray(char *a1, size_t a2, uint64_t a3, CFMutableArrayRef *a4)
{
  theArray = 0;
  v5 = PlaylistTokenizeString(a1, a2, a3, 44, &theArray);
  v6 = theArray;
  if (v5)
  {
LABEL_7:
    v8 = v5;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_4;
  }

  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  *a4 = MutableCopy;
  if (!MutableCopy)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, theArray, v12);
    goto LABEL_7;
  }

  v8 = 0;
  if (v6)
  {
LABEL_4:
    CFRelease(v6);
  }

  return v8;
}

uint64_t PlaylistAddMediaGroup(uint64_t a1, uint64_t a2, const void *a3, const __CFString *a4, const void *a5, const void *a6, const void *a7, const void *a8, double a9, char a10, char a11, char a12, char a13, const void *a14, const __CFString *a15, const __CFString *a16, void *a17, int a18, void *valuePtr)
{
  v21 = a2;
  v125[13] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_27_25();
  values = 0;
  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
  MediaSelectionArray = FigMultivariantPlaylistGetMediaSelectionArray(a1);
  MediaSelectionOptionArrayByMediaType = FindMediaSelectionOptionArrayByMediaType(MediaSelectionArray, CFStringForOSTypeValue);
  v114 = a1;
  v115 = a3;
  if (MediaSelectionOptionArrayByMediaType)
  {
    v38 = MediaSelectionOptionArrayByMediaType;
    goto LABEL_22;
  }

  v26 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v28 = Mutable;
  v29 = &v124 + 1;
  *(&v124 + 1) = 0;
  v125[0] = 0;
  v122[0] = 0;
  v121 = 0uLL;
  v120 = CFStringForOSTypeValue;
  keys = @"MediaSelectionGroupMediaType";
  *&v124 = @"MediaSelectionGroupAllowEmptySelection";
  v30 = kFigStdAssetMediaSelectionGroupKey_OptionsArray;
  v31 = v21 == 1668047728 || v21 == 1935832172;
  if (v31)
  {
    *&v121 = *MEMORY[0x1E695E4D0];
    v32 = kFigStdAssetMediaCharacteristic_Legible;
  }

  else if (v21 == 1986618469)
  {
    *&v121 = *MEMORY[0x1E695E4D0];
    v32 = kFigStdAssetMediaCharacteristic_Visual;
  }

  else
  {
    if (v21 != 1936684398)
    {
      v35 = 0;
      v33 = &v121 + 1;
      v34 = 3;
      goto LABEL_17;
    }

    *&v121 = *MEMORY[0x1E695E4D0];
    v32 = kFigStdAssetMediaCharacteristic_Audible;
  }

  values = *v32;
  *(&v124 + 1) = @"MediaSelectionGroupOptions";
  *(&v121 + 1) = Mutable;
  if (!values)
  {
    v35 = 0;
    v34 = 3;
    goto LABEL_18;
  }

  Mutable = CFArrayCreate(v26, &values, 1, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    CFRelease(v28);
    return 4294954510;
  }

  v33 = v122;
  v29 = v125;
  v30 = kFigStdAssetMediaSelectionGroupKey_MediaCharacteristics;
  v34 = 4;
  v35 = Mutable;
LABEL_17:
  *v29 = *v30;
  *v33 = Mutable;
LABEL_18:
  v36 = CFDictionaryCreate(v26, &keys, &v120, v34, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v36)
  {
    FigMultivariantPlaylistAddMediaSelection(a1, v36);
    CFRelease(v36);
    v37 = 0;
    v38 = v28;
    if (!v35)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v38 = 0;
  v37 = 4294954510;
  if (v35)
  {
LABEL_20:
    CFRelease(v35);
  }

LABEL_21:
  CFRelease(v28);
  if (!v36)
  {
    return v37;
  }

LABEL_22:
  v116 = v21;
  v39 = FigGetCFStringForOSTypeValue();
  Count = CFArrayGetCount(v38);
  if (Count >= 1)
  {
    v41 = Count;
    v42 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v38, v42);
      CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsName");
      CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsMediaType");
      if (FigCFEqual())
      {
        if (FigCFEqual())
        {
          CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsExtendedLanguageTag");
          if (FigCFEqual())
          {
            break;
          }
        }
      }

      if (v41 == ++v42)
      {
        goto LABEL_30;
      }
    }

    if (ValueAtIndex)
    {
      v83 = v21;
      goto LABEL_81;
    }
  }

LABEL_30:
  keys = @"MediaSelectionOptionsPersistentID";
  v44 = *MEMORY[0x1E695E480];
  v45 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, valuePtr);
  v120 = v45;
  if (!v45)
  {
    return 4294954510;
  }

  v113 = v45;
  v46 = &v124;
  v47 = &v121;
  memset(v125, 0, 104);
  v124 = 0u;
  v121 = 0u;
  memset(v122, 0, sizeof(v122));
  ++*valuePtr;
  if (a5)
  {
    v47 = (&v121 + 8);
    v46 = (&v124 + 8);
    *&v124 = @"MediaSelectionOptionsName";
    *&v121 = a5;
    v48 = 2;
  }

  else
  {
    v48 = 1;
  }

  CanonicalLanguageIdentifierFromString = a4;
  if (!a4)
  {
    StringForLanguageCode = 0;
    cf = 0;
    *v46 = @"MediaSelectionOptionsLanguageCode";
    v56 = @"und";
    *v47 = @"und";
    v55 = v48 + 1;
    goto LABEL_41;
  }

  PackedISO639_2TFromLocaleIdentifier = FigMetadataGetPackedISO639_2TFromLocaleIdentifier(a4);
  *v46 = @"MediaSelectionOptionsExtendedLanguageTag";
  *v47 = a4;
  v51 = v48 + 1;
  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v44, a4);
  if (CanonicalLanguageIdentifierFromString)
  {
    OUTLINED_FUNCTION_12_52(@"MediaSelectionOptionsUnicodeLanguageIdentifier");
    *(v52 + 8 * v51) = CanonicalLanguageIdentifierFromString;
    v51 = v48 + 2;
  }

  StringForLanguageCode = FigCreateStringForLanguageCode(v44, PackedISO639_2TFromLocaleIdentifier, 1);
  if (StringForLanguageCode)
  {
    OUTLINED_FUNCTION_12_52(@"MediaSelectionOptionsLanguageCode");
    *(v54 + 8 * v51) = StringForLanguageCode;
    v55 = v51 + 1;
    v56 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v44, StringForLanguageCode);
    if (v56)
    {
      v48 = v51;
      cf = v56;
LABEL_41:
      *(&keys + v55) = @"MediaSelectionOptionsUnicodeLanguageCode";
      *(&v120 + v55) = v56;
      v51 = v48 + 2;
      goto LABEL_44;
    }

    cf = 0;
    ++v51;
  }

  else
  {
    cf = 0;
  }

LABEL_44:
  if (a10)
  {
    v57 = kFigStdAssetMediaSelectionOptionsKey_IsDefault;
LABEL_46:
    *(&keys + v51) = *v57;
    *(&v120 + v51++) = *MEMORY[0x1E695E4D0];
    goto LABEL_48;
  }

  if (!a11)
  {
    v57 = kFigStdAssetMediaSelectionOptionsKey_IsAuxiliaryContent;
    goto LABEL_46;
  }

LABEL_48:
  OUTLINED_FUNCTION_28_25();
  if (v116 == v59)
  {
    *(&keys + v51) = @"MediaSelectionOptionsIsMuxedClosedCaption";
    v67 = MEMORY[0x1E695E4D0];
    if (!a13)
    {
      v67 = MEMORY[0x1E695E4C0];
    }

    v62 = *v67;
    v66 = 1;
    v65 = v51;
  }

  else
  {
    OUTLINED_FUNCTION_27_25();
    if (v61 != v60)
    {
      goto LABEL_60;
    }

    *(&keys + v51) = @"MediaSelectionOptionsDisplaysNonForcedSubtitles";
    v62 = *MEMORY[0x1E695E4C0];
    v63 = *MEMORY[0x1E695E4D0];
    if (a12)
    {
      v64 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      v64 = *MEMORY[0x1E695E4D0];
    }

    *(&v120 + v51) = v64;
    v65 = v51 + 1;
    *(&keys + v51 + 1) = @"MediaSelectionOptionsDisplaysForcedSubtitlesOnly";
    if (a12)
    {
      v62 = v63;
    }

    v66 = 2;
  }

  *(&v120 + v65) = v62;
  v51 += v66;
LABEL_60:
  v68 = a15;
  if (v58)
  {
    OUTLINED_FUNCTION_12_52(@"MediaSelectionOptionsTaggedMediaCharacteristics");
    *(v69 + 8 * v51++) = v70;
  }

  if (v68)
  {
    *(&keys + v51) = @"MediaSelectionOptionsAssociatedExtendedLanguageTag";
    *(&v120 + v51) = v68;
    v71 = v51 + 1;
    v72 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v44, v68);
    v73 = v72;
    if (v72)
    {
      *(&keys + v71) = @"MediaSelectionOptionsAssociatedUnicodeLanguageIdentifier";
      *(&v120 + v71) = v72;
      v51 += 2;
    }

    else
    {
      ++v51;
    }
  }

  else
  {
    v73 = 0;
  }

  OUTLINED_FUNCTION_12_52(@"MediaSelectionOptionsMediaType");
  *(v74 + 8 * v51) = v39;
  ValueAtIndex = CFDictionaryCreateMutable(v44, v51 + 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (ValueAtIndex)
  {
    v75 = v51 + 1;
    v76 = &v120;
    p_keys = &keys;
    do
    {
      v79 = *p_keys++;
      v78 = v79;
      v80 = *v76++;
      CFDictionaryAddValue(ValueAtIndex, v78, v80);
      --v75;
    }

    while (v75);
    v81 = FigCopyGMLoggingDescriptionForOption(ValueAtIndex);
    CFDictionaryAddValue(ValueAtIndex, @"MediaSelectionOptionsDebugDescription", v81);
    v82 = v113;
    if (v81)
    {
      CFRelease(v81);
    }

    CFArrayAppendValue(v38, ValueAtIndex);
    CFRelease(ValueAtIndex);
    v37 = 0;
    if (StringForLanguageCode)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v37 = 4294954510;
    v82 = v113;
    if (StringForLanguageCode)
    {
LABEL_73:
      CFRelease(StringForLanguageCode);
    }
  }

  CFRelease(v82);
  if (CanonicalLanguageIdentifierFromString)
  {
    CFRelease(CanonicalLanguageIdentifierFromString);
  }

  v83 = v116;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (ValueAtIndex)
  {
LABEL_81:
    v84 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
    OUTLINED_FUNCTION_20_30();
    if (v31)
    {
      FigMultivariantPlaylistGetMutableAudioGroups(v114);
      v85 = v115;
    }

    else
    {
      OUTLINED_FUNCTION_28_25();
      v85 = v115;
      if (v83 != v87)
      {
        OUTLINED_FUNCTION_27_25();
        v86 = MEMORY[0x1E695E480];
        if (v83 == v89)
        {
          FigMultivariantPlaylistGetMutableSubtitleGroups(v88);
        }

        else
        {
          if (v83 != 1986618469)
          {
LABEL_107:
            OUTLINED_FUNCTION_120();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            return v103;
          }

          FigMultivariantPlaylistGetMutableVideoGroups(v88);
        }

        goto LABEL_91;
      }

      FigMultivariantPlaylistGetMutableClosedCaptionGroups(v114);
    }

    v86 = MEMORY[0x1E695E480];
LABEL_91:
    v90 = OUTLINED_FUNCTION_177();
    v92 = CFDictionaryGetValue(v90, v91);
    if (v92)
    {
      v94 = v92;
LABEL_94:
      if (CFDictionaryGetValue(v94, v84))
      {
        return 0;
      }

      v97 = *v86;
      v98 = CFDictionaryCreateMutable(*v86, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v98)
      {
        v99 = v98;
        if (v85)
        {
          CFDictionarySetValue(v98, *MEMORY[0x1E6962B90], v85);
        }

        if (a6)
        {
          CFDictionarySetValue(v99, *MEMORY[0x1E6962BB0], a6);
        }

        else
        {
          OUTLINED_FUNCTION_28_25();
          if (v83 == v104 && a16)
          {
            v105 = CFGetTypeID(a16);
            if (v105 == CFStringGetTypeID())
            {
              CFDictionarySetValue(v99, *MEMORY[0x1E6962B78], a16);
            }

            goto LABEL_112;
          }
        }

        OUTLINED_FUNCTION_20_30();
        if (!v31 || !a16 || (v100 = CFGetTypeID(a16), v100 != CFStringGetTypeID()))
        {
LABEL_112:
          if (a7)
          {
            CFDictionarySetValue(v99, *MEMORY[0x1E6962BB8], a7);
          }

          OUTLINED_FUNCTION_20_30();
          if (v31 && a17)
          {
            CFDictionarySetValue(v99, *MEMORY[0x1E6962B68], a17);
          }

          if (a14)
          {
            CFDictionarySetValue(v99, *MEMORY[0x1E6962B70], a14);
          }

          if (v83 == 1936684398 && a18 >= 1)
          {
            FigCFDictionarySetInt32();
          }

          if (v83 == 1936684398 && a9 > 0.0)
          {
            FigCFDictionarySetDouble();
          }

          if (a8)
          {
            CFDictionarySetValue(v99, *MEMORY[0x1E6962BA8], a8);
          }

          OUTLINED_FUNCTION_26_28(*MEMORY[0x1E6962B58], a11);
          OUTLINED_FUNCTION_26_28(*MEMORY[0x1E6962B80], a10);
          v107 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v97, a4);
          if (v107)
          {
            CFDictionarySetValue(v99, *MEMORY[0x1E6962BC0], v107);
          }

          if (a5)
          {
            CFDictionarySetValue(v99, *MEMORY[0x1E6962B98], a5);
          }

          OUTLINED_FUNCTION_26_28(*MEMORY[0x1E6962B88], a12);
          CFDictionaryAddValue(v94, v84, v99);
          CFRelease(v99);
          if (v107)
          {
            CFRelease(v107);
          }

          return 0;
        }

        FigGetAllocatorForMedia();
        CFStringGetIntValue(a16);
        SInt32 = FigCFNumberCreateSInt32();
        if (SInt32)
        {
          v102 = SInt32;
          CFDictionarySetValue(v99, *MEMORY[0x1E6962B50], SInt32);
          CFRelease(v102);
          goto LABEL_112;
        }
      }

      goto LABEL_107;
    }

    v93 = CFDictionaryCreateMutable(*v86, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v93)
    {
      v94 = v93;
      v95 = OUTLINED_FUNCTION_177();
      CFDictionaryAddValue(v95, v96, v94);
      CFRelease(v94);
      goto LABEL_94;
    }

    return 4294954510;
  }

  return v37;
}

uint64_t PlaylistProcessSessionDataTag(uint64_t a1, char *a2, const __CFURL *a3, uint64_t a4)
{
  baseURL = a3;
  v94 = a2;
  v93 = 0;
  if (!a1)
  {
    v9 = 0;
    goto LABEL_67;
  }

  v5 = a2;
  v7 = 0;
  v85 = 0;
  v8 = 0;
  v88 = 0;
  v9 = 0;
  HIDWORD(v86) = 0;
  alloc = *MEMORY[0x1E695E480];
  while (1)
  {
    v10 = *v5;
    v11 = v10 > 0xD;
    v12 = (1 << v10) & 0x2401;
    if (!v11 && v12 != 0)
    {
      break;
    }

    v95 = 0;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v89 = 0;
    free(v93);
    v93 = 0;
    v14 = sp_ParseAttribute("#EXT-X-SESSION-DATA", v5, 1, 1, &v95, &v91, &v92, &v90, &v94, &v89, &v93, a4);
    v9 = v14;
    if (v14 && !*(a4 + 41))
    {
      goto LABEL_69;
    }

    v22 = v89;
    if ((v89 & 2) != 0)
    {
      goto LABEL_69;
    }

    v23 = v95;
    if (v95)
    {
      v24 = v92;
      if (v92)
      {
        v25 = v90;
        if (v90)
        {
          switch(v91)
          {
            case 3:
              if (*v95 != 85 || v95[1] != 82 || v95[2] != 73)
              {
                break;
              }

              if (v89)
              {
                v26 = OUTLINED_FUNCTION_7_72(v14, v15, v16, v17, v18, v19, v20, v21, v79, v80, v82, v83, baseURL, v85, v86, alloc);
                v85 = CFURLCreateWithBytes(v26, v27, v28, v29, baseURL);
                break;
              }

              v55 = "URI";
              goto LABEL_44;
            case 5:
              goto LABEL_22;
            case 6:
              if (strncmp(v95, "FORMAT", 6uLL))
              {
                break;
              }

              if (!strncasecmp(v24, "JSON", 4uLL))
              {
                v42 = 1;
                goto LABEL_38;
              }

              if (!strncasecmp(v24, "PLIST", 5uLL))
              {
                v42 = 2;
                goto LABEL_38;
              }

              if (!strncasecmp(v24, "RAW", 3uLL))
              {
                v42 = 3;
LABEL_38:
                HIDWORD(v86) = v42;
                break;
              }

              v9 = 4294954654;
              v56 = OUTLINED_FUNCTION_5_97();
              _StreamPlaylistLogError(v56, v57, a4, @"%s unknown format %s", "#EXT-X-SESSION-DATA", v24);
              break;
            case 7:
              if (strncmp(v95, "DATA-ID", 7uLL))
              {
                break;
              }

              if (v22)
              {
                v7 = CFStringCreateWithBytes(alloc, v24, v25, 0x600u, 1u);
                break;
              }

              v55 = "DATA-ID";
              goto LABEL_44;
            case 8:
              v43 = strncmp(v95, "LANGUAGE", 8uLL);
              if (v43)
              {
                break;
              }

              if (v22)
              {
                v51 = OUTLINED_FUNCTION_7_72(v43, v44, v45, v46, v47, v48, v49, v50, v79, v80, v82, v83, baseURL, v85, v86, alloc);
                v8 = CFStringCreateWithBytes(v51, v52, v53, v54, 1u);
                break;
              }

              v55 = "LANGUAGE";
              goto LABEL_44;
            default:
              break;
          }
        }

        else if (v91 == 5 && !strncmp(v95, "VALUE", 5uLL))
        {
LABEL_22:
          v30 = strncmp(v23, "VALUE", 5uLL);
          if (!v30)
          {
            if (v22)
            {
              v38 = OUTLINED_FUNCTION_7_72(v30, v31, v32, v33, v34, v35, v36, v37, v79, v80, v82, v83, baseURL, v85, v86, alloc);
              v88 = CFStringCreateWithBytes(v38, v39, v40, v41, 1u);
            }

            else
            {
              v55 = "VALUE";
LABEL_44:
              v81 = v55;
              v9 = 4294954654;
              v58 = OUTLINED_FUNCTION_5_97();
              _StreamPlaylistLogError(v58, v59, a4, @"%s %s: missing quotes", "#EXT-X-SESSION-DATA", v81);
            }
          }
        }
      }
    }

    v5 = v94;
  }

  if (v9)
  {
LABEL_69:
    v60 = v88;
    v61 = v85;
  }

  else
  {
    v60 = v88;
    v61 = v85;
    if (!v7)
    {
      v9 = 4294954654;
      v73 = OUTLINED_FUNCTION_17_36();
      _StreamPlaylistLogError(v73, v74, a4, v75, "#EXT-X-SESSION-DATA", "DATA-ID");
      if (!v85)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(a1);
    if (SessionDataSpecifiers && (Count = CFArrayGetCount(SessionDataSpecifiers), Count >= 1))
    {
      v64 = Count;
      v65 = 0;
      while (1)
      {
        v66 = FigMultivariantPlaylistGetSessionDataSpecifiers(a1);
        ValueAtIndex = CFArrayGetValueAtIndex(v66, v65);
        FigSessionDataSpecifierGetIdentifier(ValueAtIndex);
        if (FigCFEqual())
        {
          FigSessionDataSpecifierGetLanguage(ValueAtIndex);
          if (FigCFEqual())
          {
            break;
          }
        }

        if (v64 == ++v65)
        {
          goto LABEL_54;
        }
      }

      v9 = 4294954654;
      v70 = OUTLINED_FUNCTION_8_57();
      _StreamPlaylistLogError(v70, v71, a4, v72, "#EXT-X-SESSION-DATA", "DATA-ID");
    }

    else
    {
LABEL_54:
      if (v85 | v88)
      {
        v95 = 0;
        v68 = FigSessionDataSpecifierCreate(v7, v85, v88, v8, SHIDWORD(v86), &v95);
        if (!v68)
        {
          v68 = FigMultivariantPlaylistAddSessionDataSpecifier(a1, v95);
        }

        v9 = v68;
        if (v95)
        {
          CFRelease(v95);
        }
      }

      else
      {
        v9 = 4294954654;
        v76 = OUTLINED_FUNCTION_5_97();
        _StreamPlaylistLogError(v76, v77, a4, v78, "#EXT-X-SESSION-DATA");
        v61 = 0;
        v60 = 0;
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (!v61)
  {
    goto LABEL_63;
  }

LABEL_62:
  CFRelease(v61);
LABEL_63:
  if (v60)
  {
    CFRelease(v60);
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_67:
  free(v93);
  return v9;
}

uint64_t sp_GetStringWithReplacement(char *__s, uint64_t a2, int a3, char **a4, void *a5, size_t *a6, UInt8 **a7, uint64_t a8)
{
  v8 = a2;
  if (!__s)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v51, v52);
    v13 = 0;
    if (v8)
    {
      v32 = 4294951057;
    }

    else
    {
      v32 = v48;
    }

    goto LABEL_52;
  }

  v9 = a3;
  v10 = __s;
  if (a2)
  {
    if (*__s != 34)
    {
      v13 = 0;
      v32 = 4294951057;
      goto LABEL_52;
    }

    v10 = __s + 1;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v54 = *MEMORY[0x1E695E480];
  while (1)
  {
    v14 = *v10;
    if (v14 <= 0xD && ((1 << v14) & 0x2401) != 0)
    {
      v30 = a4;
      if (!v8)
      {
        v31 = 0;
LABEL_49:
        v32 = 0;
        *v30 = v10;
        *a5 = v11;
        *a6 = v12;
        *a7 = v13;
        v13 = 0;
        goto LABEL_50;
      }

LABEL_53:
      v34 = OUTLINED_FUNCTION_177();
      v36 = strcspn(v34, v35);
      v32 = 4294951057;
      _StreamPlaylistLogError(4294951057, 4294955032, a8, @"%.*s: unterminated quoted string", v36, __s);
      v37 = &v10[strcspn(v10, "\r\n")];
      v38 = OUTLINED_FUNCTION_177();
      *v30 = &v37[strspn(v38, v39)];
      goto LABEL_52;
    }

    if (v8 && v14 == 34)
    {
      ++v10;
      v31 = 1;
      v30 = a4;
      goto LABEL_49;
    }

    if (!v9 || v14 != 123 || v10[1] != 36)
    {
      v18 = 0;
      v19 = 0;
      while (v14 > 0xD || ((1 << v14) & 0x2401) == 0)
      {
        if (v9 && v14 == 123)
        {
          v14 = v10[1];
          if (v14 == 36)
          {
            break;
          }
        }

        else
        {
          if (v8 && v14 == 34)
          {
            break;
          }

          v14 = v10[1];
        }

        if (!v18)
        {
          v18 = v10;
        }

        ++v19;
        ++v10;
      }

      v20 = 0;
      if (!v11)
      {
        goto LABEL_44;
      }

      goto LABEL_34;
    }

    v62 = 0;
    v61 = 0;
    if (*v10 != 123 || v10[1] != 36)
    {
      goto LABEL_55;
    }

    v16 = v11;
    if (v10[2] == 36)
    {
      v10 += 3;
      v17 = @"{$";
      goto LABEL_42;
    }

    if (!sp_MatchAttributeName((v10 + 2), 1, &v62, &v61))
    {
      goto LABEL_55;
    }

    v24 = &v62[v61];
    if (v62[v61] != 125)
    {
      goto LABEL_55;
    }

    v25 = OUTLINED_FUNCTION_15_42(v54, v62, v61);
    if (!v25)
    {
      goto LABEL_55;
    }

    v26 = v25;
    v27 = *(a8 + 24);
    if (!v27)
    {
      break;
    }

    Value = CFDictionaryGetValue(v27, v26);
    if (!Value)
    {
      break;
    }

    v17 = Value;
    v10 = (v24 + 1);
    CFRelease(v26);
LABEL_42:
    v62 = 0;
    v29 = OUTLINED_FUNCTION_9_21(v17, a2, &v62);
    if (!v29)
    {
LABEL_56:
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v51, v52);
      v32 = v47;
      v31 = 0;
      v30 = a4;
      goto LABEL_50;
    }

    v18 = v29;
    v20 = v62;
    v19 = strlen(v29);
    *(a8 + 42) = 1;
    v11 = v16;
    v9 = a3;
    if (!v11)
    {
LABEL_44:
      v13 = v20;
      v20 = 0;
      goto LABEL_45;
    }

LABEL_34:
    v21 = v11;
    v22 = malloc_type_malloc(v19 + v12 + 1, 0x4DBBD48EuLL);
    if (!v22)
    {
      goto LABEL_56;
    }

    v23 = v22;
    memcpy(v22, v21, v12);
    memcpy(&v23[v12], v18, v19);
    v23[v19 + v12] = 0;
    free(v13);
    v18 = v23;
    v19 += v12;
    v13 = v23;
    v9 = a3;
LABEL_45:
    free(v20);
    v11 = v18;
    v12 = v19;
  }

  CFRelease(v26);
LABEL_55:
  v50 = strcspn(v10, "\r\n");
  v32 = 4294954654;
  v40 = OUTLINED_FUNCTION_5_97();
  _StreamPlaylistLogError(v40, v41, a8, v42, v50, v10);
  v43 = &v10[strcspn(v10, "\r\n")];
  v44 = OUTLINED_FUNCTION_177();
  v46 = strspn(v44, v45);
  v31 = 0;
  v30 = a4;
  *a4 = &v43[v46];
LABEL_50:
  if (v8 && (v31 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_52:
  free(v13);
  return v32;
}

uint64_t PlaylistCheckAllAlternatesCarryScore(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result && (v5 = result, result = CFArrayGetCount(result), result >= 2))
  {
    if (!(a2 | a3))
    {
      return result;
    }

    v6 = result;
    v21 = a3;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v10);
      IsIFrameOnly = FigAlternateIsIFrameOnly(ValueAtIndex);
      result = FigAlternateHasRankingScore(ValueAtIndex);
      if (result)
      {
        v14 = v8;
      }

      else
      {
        v14 = 1;
      }

      if (result)
      {
        v15 = 1;
      }

      else
      {
        v15 = v7;
      }

      if (result)
      {
        v16 = v11;
      }

      else
      {
        v16 = 1;
      }

      if (result)
      {
        v17 = 1;
      }

      else
      {
        v17 = v9;
      }

      if (IsIFrameOnly)
      {
        v11 = v16;
        v9 = v17;
      }

      else
      {
        v8 = v14;
      }

      if (!IsIFrameOnly)
      {
        v7 = v15;
      }

      ++v10;
    }

    while (v6 != v10);
    if (v8)
    {
      v18 = v7 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    v20 = v9 != 0;
    if (!v11)
    {
      v20 = 0;
    }

    a3 = v21;
    if (a2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
    if (a2)
    {
LABEL_32:
      *a2 = v19;
    }
  }

  if (a3)
  {
    *a3 = v20;
  }

  return result;
}

double PlaylistAddTaggedRangeMetadataDictionaryToArray(__CFArray *a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v12 = Mutable;
        CFDictionaryAddValue(Mutable, @"key", a2);
        CFDictionaryAddValue(v12, @"value", a3);
        CFDictionaryAddValue(v12, @"keyspace", *MEMORY[0x1E69603D0]);
        CFDictionaryAddValue(v12, @"dataTypeNamespace", @"com.apple.coremedia");
        CFDictionaryAddValue(v12, @"dataType", a4);
        CFDictionaryAddValue(v12, @"discoveryTimestamp", a5);
        CFArrayAppendValue(a1, v12);
        CFRelease(v12);
        return result;
      }

      v14 = qword_1EAF17628;
      v15 = v5;
      v16 = 4294954510;
      v17 = 5817;
    }

    else
    {
      v14 = qword_1EAF17628;
      v15 = v5;
      v16 = 4294954516;
      v17 = 5814;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v16, "<<<< StreamPlaylist >>>>", v17, v15);
  }

  return result;
}

double StreamingPlaylist_VerifyLeadingMagicNumber_cold_1()
{
  v0 = OUTLINED_FUNCTION_24_25();
  FigSignalErrorAtGM(v0);
  v1 = OUTLINED_FUNCTION_24_25();

  return FigSignalErrorAtGM(v1);
}

uint64_t FigStreamPlaylistParseInProcess_cold_24(uint64_t *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a2 = v4;
  if (v4)
  {
    return 1;
  }

  FigMultivariantPlaylistSetMediaSelectionArray(*a1, 0);
  return 0;
}

uint64_t FigStreamPlaylistParseInProcess_cold_25(uint64_t *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a2 = v4;
  if (v4)
  {
    return 1;
  }

  FigMultivariantPlaylistSetMediaSelectionArray(*a1, 0);
  return 0;
}

void FigStreamPlaylistParseInProcess_cold_28(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

uint64_t PlaylistCharacteristicsCheckFn_cold_1(const __CFString *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  buffer[0] = 0;
  CFStringGetCString(a1, buffer, 80, 0x600u);
  return _StreamPlaylistLogError(0, 4294955028, *(a2 + 8), @"Unrecognized characteristic tag %s", buffer);
}

uint64_t PlaylistProcessTaggedRangeTag_cold_9()
{
  OUTLINED_FUNCTION_29_24();
  v0 = OUTLINED_FUNCTION_6_84();
  return _StreamPlaylistLogError(v0, v1, v2, v3);
}

uint64_t PlaylistProcessTaggedRangeTag_cold_10()
{
  OUTLINED_FUNCTION_29_24();
  v0 = OUTLINED_FUNCTION_6_84();
  return _StreamPlaylistLogError(v0, v1, v2, v3);
}

void PlaylistProcessTaggedRangeTag_cold_13(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_24();
  _StreamPlaylistLogError(0, 4294955030, v3, @"%s: %s and %s both specified");
  FigDateRangeSpecifierSetTempEndDate(a2, 0);
}

uint64_t PlaylistProcessTaggedRangeTag_cold_14(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_24();
  _StreamPlaylistLogError(0, 4294955030, v3, @"%s: %s and %s both specified");
  return FigDateRangeSpecifierSetTempDuration(a2, -1.0);
}

BOOL MergeLeadingPartialMediaEntries_cold_1(uint64_t a1)
{
  MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a1);
  OUTLINED_FUNCTION_9_55(MediaSequence, v1, v2, @"Media Entry discontinuity value does not match previous playlist for MEDIA-SEQUENCE %llu");
  return OUTLINED_FUNCTION_3_115();
}

BOOL MergeLeadingPartialMediaEntries_cold_3(uint64_t a1)
{
  FigMediaSegmentSpecifierGetURLString(a1);
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  OUTLINED_FUNCTION_9_55(IsItOKToLogURLs, v2, v3, @"New EXT-X-PART segments cannot be added after parent segment %@ appears");
  return OUTLINED_FUNCTION_3_115();
}

BOOL DoesMediaFileMatchEntry_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_18_36(a1);
  v2 = OUTLINED_FUNCTION_398();
  FigMediaSegmentSpecifierGetTimeInSeconds(v2);
  FigMediaSegmentSpecifierGetTimeInSeconds(v1);
  OUTLINED_FUNCTION_9_55(v3, v4, v5, @"Media Entry time value does not match previous playlist for MEDIA-SEQUENCE %llu: %f vs %f");
  return OUTLINED_FUNCTION_3_115();
}

BOOL DoesMediaFileMatchEntry_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_18_36(a1);
  v2 = OUTLINED_FUNCTION_398();
  FigMediaSegmentSpecifierGetStartOffset(v2);
  StartOffset = FigMediaSegmentSpecifierGetStartOffset(v1);
  OUTLINED_FUNCTION_9_55(StartOffset, v3, v4, @"Media Entry start offset does not match previous playlist for MEDIA-SEQUENCE %llu: %lld vs %lld");
  return OUTLINED_FUNCTION_3_115();
}

BOOL DoesMediaFileMatchEntry_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_18_36(a1);
  v2 = OUTLINED_FUNCTION_398();
  FigMediaSegmentSpecifierGetBytesToRead(v2);
  v6 = FigMediaSegmentSpecifierGetBytesToRead(v1);
  OUTLINED_FUNCTION_9_55(v6, v3, v4, @"Media Entry bytes to read does not match previous playlist for MEDIA-SEQUENCE %llu: %lld vs %lld");
  return OUTLINED_FUNCTION_3_115();
}

BOOL DoesMediaFileMatchEntry_cold_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigMediaSegmentSpecifierGetMediaSequence(a1);
  FigMediaSegmentSpecifierGetURLString(a1);
  FigIsItOKToLogURLs();
  FigMediaSegmentSpecifierGetURLString(a3);
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  OUTLINED_FUNCTION_9_55(IsItOKToLogURLs, v6, v7, @"Media Entry URL not match previous playlist for MEDIA-SEQUENCE %llu: %@ vs %@");
  return OUTLINED_FUNCTION_3_115();
}

BOOL DoesMediaFileMatchEntry_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_18_36(a1);
  v2 = OUTLINED_FUNCTION_398();
  FigMediaSegmentSpecifierIsMarkedAsGap(v2);
  IsMarkedAsGap = FigMediaSegmentSpecifierIsMarkedAsGap(v1);
  OUTLINED_FUNCTION_9_55(IsMarkedAsGap, v4, v5, @"Media Entry gap mode not match previous playlist for MEDIA-SEQUENCE %llu: %s vs %s");
  return OUTLINED_FUNCTION_3_115();
}

BOOL PlaylistTokenizeString_cold_2(uint64_t a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return v3 == 0;
}

uint64_t TaggedRangeUniquenessApplier_cold_1(uint64_t a1, _DWORD *a2)
{
  v3 = OUTLINED_FUNCTION_8_57();
  result = _StreamPlaylistLogError(v3, v4, v5, v6);
  *a2 = -12642;
  return result;
}

void TaggedRangeTagApplier_cold_1(const void *a1, uint64_t a2, const void *a3, _DWORD *a4)
{
  v8 = CFGetTypeID(a1);
  if (v8 == CFStringGetTypeID())
  {
    v9 = MEMORY[0x1E69602B8];
  }

  else
  {
    TypeID = CFNumberGetTypeID();
    v9 = MEMORY[0x1E6960260];
    if (v8 == TypeID)
    {
      v9 = MEMORY[0x1E6960210];
    }
  }

  v11 = *v9;
  TagsFirstFoundDateDict = FigDateRangeSpecifierGetTagsFirstFoundDateDict(*(a2 + 8));
  Value = CFDictionaryGetValue(TagsFirstFoundDateDict, a3);
  PlaylistAddTaggedRangeMetadataDictionaryToArray(*a2, a3, a1, v11, Value);
  *a4 = v14;
}