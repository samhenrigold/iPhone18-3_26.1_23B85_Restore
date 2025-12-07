uint64_t _extractAndSetRationalForKey(const __CFData *a1, CFIndex a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  OUTLINED_FUNCTION_96();
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (MutableCopy)
  {
    v11 = MutableCopy;
    if (!a1)
    {
      v13 = 4294950306;
LABEL_16:
      CFRelease(v11);
      return v13;
    }

    *buffer = 0;
    if ((CFDataGetLength(a1) - a2) < 8)
    {
      fig_log_get_emitter();
      appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, *buffer, v20);
      if (appended)
      {
        goto LABEL_18;
      }

      if (a3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v21.location = a2;
      v21.length = 8;
      CFDataGetBytes(a1, v21, buffer);
      if (a6)
      {
        *a6 = a2 + 8;
      }

      if (a3)
      {
LABEL_7:
        appended = FigCFArrayAppendInt32();
        if (appended)
        {
          goto LABEL_18;
        }

LABEL_14:
        v13 = FigCFArrayAppendInt64();
        if (!v13)
        {
          OUTLINED_FUNCTION_7_15();
          CFDictionarySetValue(v14, v15, v16);
        }

        goto LABEL_16;
      }
    }

    appended = FigCFArrayAppendInt64();
    if (!appended)
    {
      goto LABEL_14;
    }

LABEL_18:
    v13 = appended;
    goto LABEL_16;
  }

  return 4294950305;
}

uint64_t CMPhotoParseFlexRangeMetadataFromAuxiliaryXMPMetadata(const CGImageMetadata *a1, unsigned int a2, uint64_t a3)
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  v43 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2000000000;
  v42 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if (a1 && a3)
  {
    v6 = CMPhotoMetadataCreateCFNumberFormatter(*MEMORY[0x1E695E480], kCFNumberFormatterNoStyle, &v43);
    v7 = v49;
    *(v49 + 6) = v6;
    if (!v6)
    {
      *(a3 + 64) = 0;
      *(a3 + 56) = 0;
      *(a3 + 68) = 0;
      *(a3 + 76) = 0;
      *(a3 + 28) = 1065353216;
      __asm { FMOV            V0.2S, #1.0 }

      *(a3 + 20) = _D0;
      *(a3 + 8) = 0x3F80000000000000;
      *(a3 + 4) = 1;
      v13 = a2 <= 1 ? 1 : a2;
      *(a3 + 16) = v13;
      OUTLINED_FUNCTION_0_21();
      v18 = 0x40000000;
      v19 = __CMPhotoParseFlexRangeMetadataFromAuxiliaryXMPMetadata_block_invoke;
      v20 = &unk_1E77A24B8;
      v21 = &v29;
      v22 = &v48;
      v27 = v43;
      v28 = a3;
      v23 = v41;
      v24 = &v33;
      v25 = &v44;
      v26 = &v37;
      CGImageMetadataEnumerateTagsUsingBlock(a1, 0, 0, block);
      v7 = v49;
      if (!*(v49 + 6))
      {
        if (*(v30 + 24))
        {
          if (*(v45 + 6) != 1 || !*(v34 + 24) || !*(v38 + 24))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            v7 = v49;
            *(v49 + 6) = v16;
          }
        }

        else
        {
          *(v49 + 6) = -16993;
        }
      }
    }
  }

  else
  {
    v51 = -16990;
    v7 = &v48;
  }

  if (v43)
  {
    CFRelease(v43);
    v7 = v49;
  }

  v14 = *(v7 + 6);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  return v14;
}

BOOL __CMPhotoParseFlexRangeMetadataFromAuxiliaryXMPMetadata_block_invoke(uint64_t a1, int a2, CGImageMetadataTagRef tag)
{
  v5 = CGImageMetadataTagCopyNamespace(tag);
  cf = 0;
  if (FigCFEqual() || FigCFEqual())
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v6 = CGImageMetadataTagCopyName(tag);
    if (v6)
    {
      CMPhotoCopyMetadataTagValue(tag, *(a1 + 80), 0, &cf);
      OUTLINED_FUNCTION_6_13();
      *(v8 + 24) = v7;
      OUTLINED_FUNCTION_6_13();
      if (*(v9 + 24))
      {
        goto LABEL_13;
      }

      if (FigCFEqual())
      {
        *(*(*(a1 + 48) + 8) + 24) = FigCFEqual();
        goto LABEL_13;
      }

      if (FigCFEqual())
      {
        *(*(a1 + 88) + 4) = FigCFEqual();
        goto LABEL_13;
      }

      if (FigCFEqual() || FigCFEqual())
      {
        _extractFloatValuesFromAuxMetaTagValue(cf, 1u, (*(a1 + 88) + 8));
LABEL_12:
        OUTLINED_FUNCTION_6_13();
        *(v11 + 24) = v10;
        goto LABEL_13;
      }

      if (FigCFEqual() || FigCFEqual())
      {
        _extractFloatValuesFromAuxMetaTagValue(cf, 1u, (*(a1 + 88) + 12));
        OUTLINED_FUNCTION_6_13();
        *(v15 + 24) = v14;
        OUTLINED_FUNCTION_6_13();
        if (!*(v16 + 24))
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }
      }

      else
      {
        if (FigCFEqual())
        {
          _extractIntValuesFromAuxMetaTagValue(cf, (*(*(a1 + 64) + 8) + 24));
          goto LABEL_12;
        }

        if ((_findAndAddChannelEntry(v6, cf, 0, *(a1 + 88), (*(*(a1 + 72) + 8) + 24)) & 1) == 0)
        {
          if (cf)
          {
            v18 = CFGetTypeID(cf);
            if (v18 == CFArrayGetTypeID())
            {
              if (FigCFEqual())
              {
                if (cf)
                {
                  theArray = CFRetain(cf);
                  Count = CFArrayGetCount(theArray);
                }

                else
                {
                  theArray = 0;
                  Count = CFArrayGetCount(0);
                }

                if ((Count & 0xFFFFFFFFFFFFFFFDLL) == 1)
                {
                  v20 = Count;
                  v21 = 0;
                  v22 = 0;
                  *(*(a1 + 88) + 16) = Count;
                  while (1)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
                    if (!ValueAtIndex)
                    {
                      break;
                    }

                    v24 = ValueAtIndex;
                    v25 = CFGetTypeID(ValueAtIndex);
                    if (v25 != CFDictionaryGetTypeID())
                    {
                      break;
                    }

                    if (v22)
                    {
                      CFRelease(v22);
                    }

                    v22 = FigCFDictionaryCopyArrayOfKeys();
                    v26 = CFArrayGetCount(v22);
                    if (v26 >= 1)
                    {
                      v27 = v26;
                      for (i = 0; i != v27; ++i)
                      {
                        v29 = CFArrayGetValueAtIndex(v22, i);
                        Value = CFDictionaryGetValue(v24, v29);
                        _findAndAddChannelEntry(v29, Value, v21, *(a1 + 88), (*(*(a1 + 72) + 8) + 24));
                      }
                    }

                    if (++v21 == v20)
                    {
                      if (!v22)
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_46;
                    }
                  }

                  OUTLINED_FUNCTION_6_13();
                  *(v31 + 24) = -17102;
                  if (v22)
                  {
LABEL_46:
                    CFRelease(v22);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_6_13();
                  *(v32 + 24) = -17102;
                }

LABEL_47:
                if (theArray)
                {
                  CFRelease(theArray);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_13();
      *(v17 + 24) = -17102;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_6_13();
  return *(v12 + 24) == 0;
}

uint64_t _findAndAddChannelEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (FigCFEqual() || FigCFEqual())
  {
    v7 = *(a4 + 16);
    return OUTLINED_FUNCTION_13_11(v7) == 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v7 = *(a4 + 16);
    return OUTLINED_FUNCTION_13_11(v7) == 0;
  }

  if (FigCFEqual())
  {
    v7 = *(a4 + 16);
    return OUTLINED_FUNCTION_13_11(v7) == 0;
  }

  if (FigCFEqual())
  {
    if (OUTLINED_FUNCTION_13_11(*(a4 + 16)))
    {
      return 0;
    }

    else
    {
      result = 1;
      if (a5)
      {
        *a5 = 1;
      }
    }
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      v7 = *(a4 + 16);
      return OUTLINED_FUNCTION_13_11(v7) == 0;
    }
  }

  return result;
}

uint64_t CMPhotoCreateXMPMetadataFromMetadata(uint64_t a1, uint64_t a2, CGImageMetadata **a3)
{
  v3 = 4294950306;
  if (a1 && a3)
  {
    Mutable = CGImageMetadataCreateMutable();
    if (!Mutable)
    {
      return 4294950305;
    }

    v7 = Mutable;
    if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.adobe.com/hdr-gain-map/1.0/", @"HDRToneMap", 0))
    {
      v3 = 4294950305;
      goto LABEL_11;
    }

    v8 = _addIntToCGMetadata(v7, 1);
    if (!v8)
    {
      v9 = OUTLINED_FUNCTION_101();
      v8 = _addIntToCGMetadata(v9, v10);
      if (!v8)
      {
        v8 = OUTLINED_FUNCTION_12_14(v8, @"BaseHeadroom", *(a1 + 8));
        if (!v8)
        {
          v8 = OUTLINED_FUNCTION_12_14(v8, @"AlternateHeadroom", *(a1 + 12));
          if (!v8)
          {
            v11 = *(a1 + 16);
            if (v11 == 3)
            {
              v12 = 0;
              v13 = a1 + 44;
              while (1)
              {
                v14 = OUTLINED_FUNCTION_101();
                v8 = _addFloatToCGMetadataArray(v14, v15, @"Gamma", @"http://ns.adobe.com/hdr-gain-map/1.0/", v16);
                if (v8)
                {
                  break;
                }

                v17 = OUTLINED_FUNCTION_101();
                v8 = _addFloatToCGMetadataArray(v17, v18, @"GainMapMin", @"http://ns.adobe.com/hdr-gain-map/1.0/", v19);
                if (v8)
                {
                  break;
                }

                v20 = OUTLINED_FUNCTION_101();
                v8 = _addFloatToCGMetadataArray(v20, v21, @"GainMapMax", @"http://ns.adobe.com/hdr-gain-map/1.0/", v22);
                if (v8)
                {
                  break;
                }

                v23 = OUTLINED_FUNCTION_101();
                v8 = _addFloatToCGMetadataArray(v23, v24, @"OffsetSDR", @"http://ns.adobe.com/hdr-gain-map/1.0/", v25);
                if (v8)
                {
                  break;
                }

                v26 = OUTLINED_FUNCTION_101();
                v8 = _addFloatToCGMetadataArray(v26, v27, @"OffsetHDR", @"http://ns.adobe.com/hdr-gain-map/1.0/", v28);
                if (v8)
                {
                  break;
                }

                ++v12;
                v13 += 4;
                if (v12 >= *(a1 + 16))
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
              if (v11 != 1)
              {
LABEL_11:
                CFRelease(v7);
                return v3;
              }

              v8 = OUTLINED_FUNCTION_12_14(v8, @"Gamma", *(a1 + 20));
              if (!v8)
              {
                v8 = OUTLINED_FUNCTION_12_14(v8, @"GainMapMin", *(a1 + 32));
                if (!v8)
                {
                  v8 = OUTLINED_FUNCTION_12_14(v8, @"GainMapMax", *(a1 + 44));
                  if (!v8)
                  {
                    v8 = OUTLINED_FUNCTION_12_14(v8, @"OffsetSDR", *(a1 + 56));
                    if (!v8)
                    {
                      v8 = OUTLINED_FUNCTION_12_14(v8, @"OffsetHDR", *(a1 + 68));
                      if (!v8)
                      {
LABEL_19:
                        v3 = 0;
                        *a3 = v7;
                        return v3;
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

    v3 = v8;
    goto LABEL_11;
  }

  return v3;
}

uint64_t _addIntToCGMetadata(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_96();
  v5 = CFStringCreateWithFormat(v2, v3, v4, a2);
  if (!v5)
  {
    return 4294950305;
  }

  v9 = v5;
  v10 = OUTLINED_FUNCTION_19_6(v5, v6, v7, v8, @"HDRToneMap");
  CFRelease(v9);
  return v10;
}

uint64_t _addFloatToCGMetadata(float a1)
{
  v11 = a1;
  v1 = OUTLINED_FUNCTION_96();
  v4 = CFStringCreateWithFormat(v1, v2, v3, *&v11);
  if (!v4)
  {
    return 4294950305;
  }

  v8 = v4;
  v9 = OUTLINED_FUNCTION_19_6(v4, v5, v6, v7, @"HDRToneMap");
  CFRelease(v8);
  return v9;
}

uint64_t _addFloatToCGMetadataArray(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, float a5)
{
  v16 = a5;
  v9 = OUTLINED_FUNCTION_96();
  v12 = CFStringCreateWithFormat(v9, v10, v11, *&v16);
  if (!v12)
  {
    return 4294950305;
  }

  v13 = v12;
  v14 = CMPhotoAddValueToCGImageMetadataArray(a1, a2, @"ChannelMetadata", v12, a3, a4, @"HDRToneMap");
  CFRelease(v13);
  return v14;
}

uint64_t CMPhotoHeadroomFromMeteorPlusMetadataMakerNote(uint64_t a1, float *a2)
{
  result = 4294950306;
  if (a1 && a2)
  {
    if ((FigCFDictionaryGetFloatIfPresent() || FigCFDictionaryGetFloatIfPresent()) && FigCFDictionaryGetFloatIfPresent())
    {
      result = 0;
      *a2 = 0.0;
    }

    else
    {
      return 4294950303;
    }
  }

  return result;
}

uint64_t _getOutputPixelFormatFromParameters(CVPixelBufferRef pixelBuffer, int a2, _DWORD *a3)
{
  v12 = 0;
  result = 4294950306;
  if (pixelBuffer && a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    IsITUR_2100TF = CMPhotoPixelBufferIsITUR_2100TF(pixelBuffer);
    if (a2 == 2)
    {
      if (!IsITUR_2100TF)
      {
        goto LABEL_9;
      }

      ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
      BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(PixelFormatType);
      v11 = ChromaSubsamplingFromPixelFormat;
    }

    else
    {
      if (a2 == 5)
      {
        v12 = 1380411457;
LABEL_12:
        result = 0;
        *a3 = v12;
        return result;
      }

      if (IsITUR_2100TF)
      {
LABEL_9:
        v12 = PixelFormatType;
        goto LABEL_12;
      }

      v11 = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
      BitDepthForPixelFormat = 10;
    }

    result = CMPhotoGetYUVPixelFormatForParameters(v11, BitDepthForPixelFormat, 1, 0, 0, 0, 1, &v12);
    if (result)
    {
      return result;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t _newColorSpaceIfAskingForSDRFromHeadroom(CFTypeRef *a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  CICPInfo = CGColorSpaceGetCICPInfo();
  result = 0;
  if (CICPInfo)
  {
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    result = 0;
    *a1 = v4;
  }

  return result;
}

uint64_t _commonApplyHDRGainMapOptions(uint64_t a1, int a2, int a3, __n128 a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  v4 = a4.n128_f32[0];
  if (a2)
  {
    FigCFDictionarySetBoolean();
  }

  result = 0;
  if (!a3 && v4 >= 1.0)
  {
    FigCFDictionarySetFloat();
    return 0;
  }

  return result;
}

uint64_t _extractFloatValuesFromAuxMetaTagValue_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _extractIntValuesFromAuxMetaTagValue_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _extractIntValuesFromAuxMetaTagValue_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t CMPhotoGainMapCreateOutputFromConstituents_cold_1(float *a1, const void *a2, _DWORD *a3)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v5 = CMPhotoParseFlexRangeMetadataDictionary(a2, a1);
  if (!v5)
  {
    if (a1[3] == 0.0)
    {
      return 0;
    }

    fig_log_get_emitter();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  }

  *a3 = v5;
  return 1;
}

uint64_t CMPhotoGainMapCreateOutputFromConstituents_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoGainMapCreateOutputFromConstituents_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t SlimVideoEncoder_CreateSession(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 4294951896;
  }

  pthread_once(&SlimVideoEncoderSessionGetTypeID_onceToken, RegisterSlimVideoEncoderSessionClass);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294951894;
  }

  v4 = Instance;
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t _startEncodeSession(CFTypeRef cf, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v11 = HIDWORD(a4);
  cfa = 0;
  *a6 = a2;
  *(a6 + 12) = a4;
  v12 = *(a6 + 24);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a6 + 24) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  FigFormatDescriptionRelease();
  *(a6 + 32) = 0;
  result = _createPixelBufferAttributesDictionaryForEncoder(*(a6 + 24), a4, v11, a3, v7, &cfa);
  if (!result)
  {
    if (*a6)
    {
      VTEncoderSessionSetPixelBufferAttributes();
    }

    else
    {
      v14 = *(a6 + 96);
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = cfa;
      if (cfa)
      {
        v15 = CFRetain(cfa);
      }

      *(a6 + 96) = v15;
    }

    if (cfa)
    {
      CFRelease(cfa);
    }

    v16 = CMMemoryPoolCreate(0);
    *(a6 + 56) = v16;
    if (v16 && (*(a6 + 48) = 0, v17 = malloc_type_calloc(1uLL, 0x20B0uLL, 0x1030040868D5BD5uLL), (*(a6 + 64) = v17) != 0))
    {
      v18 = v17;
      result = 0;
      *v18 = a4;
      v18[1] = v11;
      *(v18 + 522) = xmmword_1A5ABB590;
      *(v18 + 7) = 3 * *(a6 + 12) * *(a6 + 16) + 0x20000;
      *(v18 + 17) = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

CFIndex _encodeFrame(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v7 = v6;
  v9 = pixelBuffer;
  blockBufferOut = 0;
  v172 = 0;
  dataPointerOut = 0;
  dataLength = 0;
  cf = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  error = 0;
  v12 = CVBufferCopyAttachments(v9, kCVAttachmentMode_ShouldPropagate);
  if (CFDictionaryContainsKey(v12, @"StreamName"))
  {
    Value = CFDictionaryGetValue(v12, @"StreamName");
    if (CFStringCompare(Value, @"Depth", 1uLL))
    {
      v14 = 1;
      if (CFStringCompare(Value, @"IR", 1uLL))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = 0;
    }

    *(*(a1 + 64) + 144) = v14;
  }

LABEL_7:
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  v15 = *(a1 + 64);
  v161 = v12;
  if (!*(v15 + 116))
  {
    *(v15 + 32) = PixelFormatType;
    if (PixelFormatType == 1650943796)
    {
      v25 = CMGetAttachment(v9, @"RawImageMetadata", 0);
      v15 = *(a1 + 64);
      if (v25)
      {
        OUTLINED_FUNCTION_5_16(v15);
        v26 = @"RawImageMetadata";
      }

      else
      {
        v26 = @"MetadataDictionary";
      }

      key = v26;
      PixelFormatType = 1650943796;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v16 = CMGetAttachment(v9, @"RawImage", 0);
  if (!v16)
  {
    v15 = *(a1 + 64);
LABEL_16:
    key = @"MetadataDictionary";
    goto LABEL_19;
  }

  v17 = v16;
  v18 = CFDictionaryGetValue(v16, @"RawImageData");
  if (!v18 || (v19 = v18, (v20 = CFDictionaryGetValue(v17, @"RawImageMetadata")) == 0))
  {
    v31 = 0;
    OUTLINED_FUNCTION_0_22();
    Code = 4294951893;
    goto LABEL_295;
  }

  v21 = v20;
  PixelFormatType = 1650943796;
  Width = CVPixelBufferGetWidth(v19);
  Height = CVPixelBufferGetHeight(v19);
  key = @"RawImageMetadata";
  CMSetAttachment(v19, @"RawImageMetadata", v21, 1u);
  v24 = *(a1 + 64);
  *v24 = Width;
  v24[1] = Height;
  OUTLINED_FUNCTION_5_16(v24);
  *(v15 + 32) = 1650943796;
  v9 = v19;
LABEL_19:
  CVPixelBufferGetExtendedPixels(v9, 0, 0, 0, (v15 + 24));
  *(*(a1 + 64) + 112) = 0;
  if (a5)
  {
    CVPixelBufferGetHeightOfPlane(v9, 0);
    values.version = 0;
    keys.version = 0;
    CMPhotoPixelFormatIsAGXVersatile(PixelFormatType);
    if (CMPhotoPixelFormatContainsRGB(PixelFormatType))
    {
      v27 = 4;
    }

    else
    {
      v27 = CMPhotoPixelFormatIs420(PixelFormatType) || CMPhotoPixelFormatIsBayer14Bits(PixelFormatType) || CMPhotoPixelFormatIsRAWVersatile(PixelFormatType) && PixelFormatType != 1651519798 || CMPhotoPixelFormatIsNonVersatileVersionOf_bvc8(PixelFormatType) ? 8 : 1;
    }

    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    if ((*(a1 + 72) - 1) <= 1 && keys.version % v27 && *(*(a1 + 64) + 24) + keys.version % v27 < v27)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_19();
      Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v31 = 0;
LABEL_336:
      OUTLINED_FUNCTION_0_22();
      goto LABEL_295;
    }
  }

  if (CMPhotoPixelFormatIsVersatile(PixelFormatType))
  {
    VersatileBayerPattern = CMPhotoPixelBufferGetVersatileBayerPattern(v9);
    if (VersatileBayerPattern <= 0xC)
    {
      v29 = *(a1 + 64);
      *(v29 + 8360) = VersatileBayerPattern;
      if ((*(a1 + 72) & 0xFFFFFFFE) != 4)
      {
        v30 = *(v29 + 4);
        if (*(v29 + 24) + v30 < ((v30 + 3) & 0xFFFFFFFC))
        {
          v31 = 0;
          OUTLINED_FUNCTION_0_22();
          Code = 4294951891;
          goto LABEL_295;
        }

        if (((v30 + 3) & 4) != 0)
        {
          *(v29 + 8364) |= 1u;
        }
      }

      goto LABEL_37;
    }

    v31 = 0;
    OUTLINED_FUNCTION_0_22();
    Code = 4294950303;
LABEL_295:
    v54 = 1;
    goto LABEL_296;
  }

LABEL_37:
  v162 = a1;
  pixelBuffera = v9;
  if (*(a1 + 32))
  {
    v31 = 0;
    goto LABEL_66;
  }

  v32 = *(a1 + 24);
  v33 = *(a1 + 64);
  v34 = a1;
  v35 = *(v33 + 8360);
  v36 = *(v33 + 8364);
  v37 = *(v34 + 8);
  v7 = *(v34 + 72);
  *&values.version = 0;
  Mutable = CFDictionaryCreateMutable(v32, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v31 = 0;
    OUTLINED_FUNCTION_0_22();
    Code = 4294951895;
    v54 = 1;
    a1 = v162;
    v9 = pixelBuffera;
    goto LABEL_296;
  }

  v39 = Mutable;
  *v174 = 0;
  VersionFromPixelBufferInfo = Slim_GetVersionFromPixelBufferInfo(PixelFormatType, v35, v36, v7, v174);
  if (VersionFromPixelBufferInfo)
  {
    Code = VersionFromPixelBufferInfo;
    v31 = 0;
    a1 = v162;
    v9 = pixelBuffera;
    goto LABEL_56;
  }

  SInt32 = FigCFNumberCreateSInt32();
  CFDictionarySetValue(v39, *MEMORY[0x1E69600D8], SInt32);
  if ((v7 - 1) > 4)
  {
    v42 = 0;
    goto LABEL_46;
  }

  *bytes = *v174;
  *&values.version = CFDataCreate(v32, bytes, 4);
  if (*&values.version)
  {
    *&keys.version = @"slmC";
    v42 = CFDictionaryCreate(v32, &keys, &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    if (v42)
    {
      CFDictionarySetValue(v39, *MEMORY[0x1E69600A0], v42);
LABEL_46:
      v43 = MEMORY[0x1E6960030];
      if (v37)
      {
        v44 = FigCFNumberCreateSInt32();
        CFDictionarySetValue(v39, *MEMORY[0x1E6960028], v44);
        CFDictionarySetValue(v39, *v43, @"Slim");
        if (v44)
        {
          CFRelease(v44);
        }
      }

      else
      {
        CFDictionarySetValue(v39, *MEMORY[0x1E6960030], @"Slim");
      }

      Code = 0;
      v31 = v39;
      v39 = 0;
      goto LABEL_51;
    }

    v31 = 0;
    Code = 4294951895;
  }

  else
  {
    v31 = 0;
    v42 = 0;
    Code = 0;
  }

LABEL_51:
  v9 = pixelBuffera;
  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  a1 = v162;
LABEL_56:
  v7 = v6;
  if (*&values.version)
  {
    CFRelease(*&values.version);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (Code)
  {
    goto LABEL_336;
  }

  if (!v31)
  {
    OUTLINED_FUNCTION_0_22();
    Code = 4294951895;
    goto LABEL_295;
  }

  if (*a1)
  {
    OUTLINED_FUNCTION_3_18();
    VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
  }

  else
  {
    OUTLINED_FUNCTION_3_18();
    VideoFormatDescription = CMVideoFormatDescriptionCreate(v47, v48, v49, v50, v51, v52);
  }

  Code = VideoFormatDescription;
  if (VideoFormatDescription)
  {
    goto LABEL_336;
  }

LABEL_66:
  if ((*(a1 + 72) - 1) >= 5 && !*(*(a1 + 64) + 136))
  {
    v53 = malloc_type_calloc(1uLL, 0x50uLL, 0x101004022E95A03uLL);
    *(*(a1 + 64) + 136) = v53;
    CreateThreadContext(2, *(a1 + 12), v53);
  }

  v54 = 1;
  v55 = CVPixelBufferLockBaseAddress(v9, 1uLL);
  if (v55)
  {
    Code = v55;
    OUTLINED_FUNCTION_0_22();
    goto LABEL_296;
  }

  if (CVPixelBufferGetPlaneCount(v9) < 2)
  {
    PlaneCount = 1;
  }

  else
  {
    PlaneCount = CVPixelBufferGetPlaneCount(v9);
  }

  v57 = *(a1 + 64);
  *(v57 + 40) = PlaneCount;
  *(v57 + 48) = 1;
  if (CMPhotoPixelFormatContainsYCbCr(PixelFormatType))
  {
    *(*(a1 + 64) + 48) = 2;
    if (CMPhotoPixelFormatIs444(PixelFormatType) || CMPhotoPixelFormatIs422(PixelFormatType))
    {
      *(*(a1 + 64) + 48) = 1;
    }
  }

  if (!CVPixelBufferIsPlanar(v9))
  {
    *(*(a1 + 64) + 64) = CVPixelBufferGetBaseAddress(v9);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v9);
    v90 = *(a1 + 64);
    *(v90 + 8) = BytesPerRow;
    v91 = *(v90 + 112);
    if (!v91)
    {
      goto LABEL_241;
    }

    v9 = pixelBuffera;
    if (((PixelFormatType - 1278226488) > 0x30 || ((1 << (PixelFormatType - 56)) & 0x1400000000001) == 0) && ((PixelFormatType - 1278226736) > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0))
    {
      v92 = PixelFormatType == 825306677 || PixelFormatType == 825437747;
      v93 = v92 || PixelFormatType == 1111970369;
      v94 = v93 || PixelFormatType == 1380411457;
      if (!v94 && PixelFormatType != 1647589490)
      {
        if (PixelFormatType == 1647719528)
        {
          v114 = (v91 * BytesPerRow) >> 1;
          goto LABEL_240;
        }

        if (PixelFormatType != 1650942776 && PixelFormatType != 1650943796 && PixelFormatType != 1651519798 && PixelFormatType != 1651847472 && PixelFormatType != 1651925816 && PixelFormatType != 1651926376 && PixelFormatType != 1652056888 && PixelFormatType != 1717855600 && PixelFormatType != 1717856627 && PixelFormatType != 1734501176 && PixelFormatType != 1734505012 && PixelFormatType != 1735549492 && PixelFormatType != 1735549752 && PixelFormatType != 1751410032 && PixelFormatType != 1751411059 && PixelFormatType != 1815162994 && PixelFormatType != 1815491698 && PixelFormatType != 1919379252 && PixelFormatType != 1919378232)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_19();
          v153 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v154, v155, sampleSizeArray);
LABEL_319:
          Code = v153;
          OUTLINED_FUNCTION_0_22();
          goto LABEL_320;
        }
      }
    }

    v114 = v91 * BytesPerRow;
LABEL_240:
    *(v90 + 64) += v114;
    a1 = v162;
    goto LABEL_241;
  }

  if (*(*(a1 + 64) + 40))
  {
    v58 = 0;
    v7 = 2019963440;
    do
    {
      *(*(a1 + 64) + 8 * v58 + 64) = CVPixelBufferGetBaseAddressOfPlane(pixelBuffera, v58);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffera, v58);
      v60 = *(a1 + 64);
      *(v60 + 4 * v58 + 8) = BytesPerRowOfPlane;
      v61 = *(v60 + 112);
      if (v61)
      {
        if (PixelFormatType != 875704422 && PixelFormatType != 875704438 && PixelFormatType != 875704934 && PixelFormatType != 875704950 && PixelFormatType != 875836518 && PixelFormatType != 875836534 && PixelFormatType != 1751527984 && PixelFormatType != 1882468912 && PixelFormatType != 1885745712 && PixelFormatType != 1936077360 && PixelFormatType != 1936077362 && PixelFormatType != 1936077876 && PixelFormatType != 1937125936 && PixelFormatType != 1937125938 && PixelFormatType != 1937126452 && PixelFormatType != 1952854576 && PixelFormatType != 1952854578 && PixelFormatType != 1952855092 && PixelFormatType != 1953903152 && PixelFormatType != 1953903154 && PixelFormatType != 1953903668 && PixelFormatType != 2016686640 && PixelFormatType != 2016686642 && PixelFormatType != 2016687156 && PixelFormatType != 2019963440 && PixelFormatType != 2019963956 && PixelFormatType != 2019963442)
        {
          OUTLINED_FUNCTION_0_22();
          v54 = 0;
          Code = 4294951891;
          a1 = v162;
          v9 = pixelBuffera;
          goto LABEL_296;
        }

        v88 = (v60 + 64);
        if (v58)
        {
          v88 += v58;
          v61 /= *(v60 + 48);
        }

        *v88 += v61 * BytesPerRowOfPlane;
      }

      ++v58;
      a1 = v162;
    }

    while (*(*(v162 + 64) + 40) > v58);
  }

LABEL_241:
  v9 = pixelBuffera;
  switch(*(a1 + 72))
  {
    case 1:
    case 3:
    case 5:
      v115 = *(a1 + 64);
      v116 = *(v115 + 128);
      if (v116)
      {
        *(v115 + 56) = v116 + 0x80000;
        goto LABEL_250;
      }

      v117 = CVPixelBufferGetPixelFormatType(pixelBuffera);
      DataSizeFromWidthAndHeight = CMPhotoGetDataSizeFromWidthAndHeight(v117, 16 * ((*(a1 + 12) - 1) / 16) + 16, 8 * ((*(a1 + 16) - 1) / 8) + 8);
      if (!DataSizeFromWidthAndHeight)
      {
        goto LABEL_250;
      }

      v119 = DataSizeFromWidthAndHeight + 0x80000;
      goto LABEL_249;
    case 2:
      *&values.version = 0;
      v120 = YZipEncodeFindDataLength(*(a1 + 64), &values);
      if (v120)
      {
        Code = v120;
        OUTLINED_FUNCTION_0_22();
        v54 = 0;
        break;
      }

      v119 = *&values.version;
LABEL_249:
      *(*(a1 + 64) + 56) = v119;
LABEL_250:
      v121 = *(a1 + 48);
      if (v121)
      {
        LODWORD(PixelFormatType) = 1;
        v153 = CVPixelBufferLockBaseAddress(v121, 1uLL);
        if (v153)
        {
          goto LABEL_319;
        }
      }

      else
      {
        LODWORD(PixelFormatType) = 0;
      }

      v122 = *(a1 + 24);
      if (*(a1 + 72) == 4)
      {
        v123 = CMBlockBufferCreateEmpty(*(a1 + 24), 0, 0, &blockBufferOut);
        if (v123 || (v123 = UncompressedCopyFrame(*(a1 + 64), pixelBuffera, blockBufferOut, &dataLength), v123))
        {
LABEL_323:
          Code = v123;
LABEL_324:
          v7 = 0;
          goto LABEL_320;
        }
      }

      else
      {
        v124 = *(*(a1 + 64) + 56);
        Allocator = CMMemoryPoolGetAllocator(*(a1 + 56));
        v123 = CMBlockBufferCreateWithMemoryBlock(v122, 0, v124, Allocator, 0, 0, *(*(a1 + 64) + 56), 1u, &v172);
        if (v123)
        {
          goto LABEL_323;
        }

        CMBlockBufferGetDataPointer(v172, 0, 0, 0, &dataPointerOut);
        if (!dataPointerOut)
        {
          v7 = 0;
          v54 = 0;
          Code = 4294951893;
          break;
        }

        *(*(a1 + 64) + 88) = dataPointerOut;
        v126 = *(a1 + 64);
        switch(*(a1 + 72))
        {
          case 1:
            v127 = OUTLINED_FUNCTION_6_14(v126);
            v129 = SlimXEncodeFrame(v127, v128);
            goto LABEL_267;
          case 2:
            v132 = OUTLINED_FUNCTION_6_14(v126);
            v129 = YZipEncodeFrame(v132, v133);
            goto LABEL_267;
          case 3:
            v130 = OUTLINED_FUNCTION_6_14(v126);
            v129 = HrlcEncodeFrame(v130, v131);
            goto LABEL_267;
          case 5:
            if (*(v126 + 112))
            {
              v7 = 0;
              v54 = 0;
              Code = 4294951891;
              goto LABEL_296;
            }

            v129 = IntcEncodeFrame(pixelBuffera, *(a1 + 64), &dataLength);
LABEL_267:
            Code = v129;
            if (v129)
            {
              goto LABEL_324;
            }

            if (!dataLength)
            {
              v7 = 0;
              goto LABEL_331;
            }

            v123 = CMBlockBufferCreateWithBufferReference(*(a1 + 24), v172, 0, dataLength, 1u, &blockBufferOut);
            if (v123)
            {
              goto LABEL_323;
            }

            break;
          default:
            v134 = OUTLINED_FUNCTION_6_14(v126);
            v129 = SlimEncodeFrame(v134);
            goto LABEL_267;
        }
      }

      v135 = CMGetAttachment(pixelBuffera, key, 0);
      if (!v135)
      {
        goto LABEL_280;
      }

      v136 = CFPropertyListCreateData(*(a1 + 24), v135, kCFPropertyListXMLFormat_v1_0, 0, &error);
      if (v136)
      {
        v7 = v136;
        *v174 = 1635018093;
        Length = CFDataGetLength(v136);
        if (!blockBufferOut)
        {
LABEL_331:
          v54 = 0;
          Code = 4294951894;
          break;
        }

        v138 = Length;
        v139 = CFDataCreate(*MEMORY[0x1E695E480], v174, 4);
        HIDWORD(values.AllocateBlock) = 0;
        *&values.version = 0;
        values.FreeBlock = _bufFreeBlockCallback_0;
        values.refCon = v139;
        v140 = blockBufferOut;
        MutableBytePtr = CFDataGetMutableBytePtr(v139);
        v142 = *MEMORY[0x1E695E498];
        appended = CMBlockBufferAppendMemoryBlock(v140, MutableBytePtr, 4uLL, *MEMORY[0x1E695E498], &values, 0, 4uLL, 0);
        if (appended)
        {
          Code = appended;
          if (v139)
          {
            CFRelease(v139);
          }

          goto LABEL_276;
        }

        dataLength += 4;
        HIDWORD(keys.AllocateBlock) = 0;
        *&keys.version = 0;
        keys.FreeBlock = _bufFreeBlockCallback_0;
        keys.refCon = v7;
        v144 = blockBufferOut;
        v145 = CFDataGetMutableBytePtr(v7);
        v146 = CMBlockBufferAppendMemoryBlock(v144, v145, v138, v142, &keys, 0, v138, 0);
        if (v146)
        {
          Code = v146;
LABEL_276:
          v54 = 0;
          a1 = v162;
          break;
        }

        CFRetain(v7);
        dataLength += v138;
        a1 = v162;
      }

      else if (error)
      {
        Code = CFErrorGetCode(error);
        v7 = 0;
        if (Code)
        {
LABEL_320:
          v54 = 0;
          break;
        }
      }

      else
      {
LABEL_280:
        v7 = 0;
      }

      v147 = *(a1 + 48);
      if (v147)
      {
        CVPixelBufferUnlockBaseAddress(v147, 1uLL);
        v148 = *(a1 + 48);
        if (v148)
        {
          CFRelease(v148);
        }

        LODWORD(PixelFormatType) = 0;
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffera, 1uLL);
      if (*(a1 + 40))
      {
        if (pixelBuffera)
        {
          v149 = CFRetain(pixelBuffera);
        }

        else
        {
          v149 = 0;
        }

        *(a1 + 48) = v149;
      }

      *&sampleTimingArray.decodeTimeStamp.value = *MEMORY[0x1E6960C70];
      *&sampleTimingArray.presentationTimeStamp.value = *a3;
      v150 = *(MEMORY[0x1E6960C70] + 16);
      sampleTimingArray.presentationTimeStamp.epoch = *(a3 + 16);
      sampleTimingArray.decodeTimeStamp.epoch = v150;
      *&sampleTimingArray.duration.value = *a4;
      sampleTimingArray.duration.epoch = *(a4 + 16);
      v54 = 1;
      v151 = CMSampleBufferCreate(*(a1 + 24), blockBufferOut, 1u, 0, 0, *(a1 + 32), 1, 1, &sampleTimingArray, 1, &dataLength, &cf);
      if (!v151)
      {
        Code = 0;
        if (a6)
        {
          *a6 = cf;
          cf = 0;
        }

        goto LABEL_295;
      }

      Code = v151;
      break;
    case 4:
      *(*(a1 + 64) + 56) = 0;
      goto LABEL_250;
    default:
      goto LABEL_250;
  }

LABEL_296:
  if (error)
  {
    CFRelease(error);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v172)
  {
    CFRelease(v172);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v161)
  {
    CFRelease(v161);
  }

  if ((v54 & 1) == 0)
  {
    CVPixelBufferUnlockBaseAddress(v9, 1uLL);
  }

  if (PixelFormatType)
  {
    CVPixelBufferUnlockBaseAddress(*(a1 + 48), 1uLL);
  }

  return Code;
}

uint64_t _createPixelBufferAttributesDictionaryForEncoder(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  if (a5 >= 6)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951896, "<<<< SlimVideoEncoder >>>>", 178, v6);
  }

  else
  {
    v10 = a3;
    v11 = a2;
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 0;
    }

    v13 = Mutable;
    v14 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (v14)
    {
      v15 = v14;
      v16 = &SlimPixelFormatList;
      v17 = 62;
      do
      {
        v18 = CFNumberCreate(0, kCFNumberSInt32Type, v16);
        if (!v18)
        {
          CFRelease(v13);
          CFRelease(v15);
          return 0;
        }

        v19 = v18;
        CFArrayAppendValue(v15, v18);
        CFRelease(v19);
        v16 += 4;
        --v17;
      }

      while (v17);
      CFDictionaryAddValue(v13, *MEMORY[0x1E6966130], v15);
      CFRelease(v15);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if ((a5 - 3) < 3)
      {
        goto LABEL_22;
      }

      if ((a5 - 1) <= 1)
      {
        v20 = (v10 + 3) & 0xFFFFFFFC;
        if (CMPhotoPixelFormatContainsRGB(a4))
        {
          v21 = (v11 + 3) & 0xFFFFFFFC;
        }

        else
        {
          v21 = (v11 + 15) & 0xFFFFFFF0;
          if (CMPhotoPixelFormatIs420(a4))
          {
            v20 = (v10 + 7) & 0xFFFFFFF8;
          }

          else if (CMPhotoPixelFormatIsBayer14Bits(a4) || (IsRAWVersatile = CMPhotoPixelFormatIsRAWVersatile(a4), a4 != 1651519798) && IsRAWVersatile || CMPhotoPixelFormatIsNonVersatileVersionOf_bvc8(a4))
          {
            v21 = (v11 + 7) & 0xFFFFFFF8;
            v20 = (v10 + 7) & 0xFFFFFFF8;
          }
        }

        CMPhotoGetBytesPerPixelForPixelFormat(a4);
        FigCFDictionarySetInt32();
        if (v21 != v11)
        {
          FigCFDictionarySetInt32();
        }

        if (v20 != v10)
        {
LABEL_22:
          FigCFDictionarySetInt32();
        }
      }

      PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
      v24 = PixelBufferAttributesWithIOSurfaceSupport;
      if (a6)
      {
        if (!PixelBufferAttributesWithIOSurfaceSupport)
        {
          *a6 = 0;
        }
      }
    }

    else
    {
      v24 = 0;
    }

    CFRelease(v13);
    return v24;
  }
}

void _setProperty_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_15(a1);
  v7 = _createPixelBufferAttributesDictionaryForEncoder(v3, v6, v5, *(v1 + 76), *v4, &cf);
  *v2 = v7;
  if (!v7)
  {
    VTEncoderSessionSetPixelBufferAttributes();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void _setPropertyInputPixelFormat_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_15(a1);
  v7 = _createPixelBufferAttributesDictionaryForEncoder(v3, v6, v5, *v4, *(v1 + 72), &cf);
  *v2 = v7;
  if (!v7)
  {
    VTEncoderSessionSetPixelBufferAttributes();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t CMPhotoCompressionPluginCreate(const void *a1, const void *a2, const void *a3, const void *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  pthread_once(&_checkFigNoteTraceOnce_onceToken_1, _registerFigNoteTrace_1);
  v15 = 0;
  v16 = 4294950306;
  if (!a7 || !a9)
  {
    goto LABEL_34;
  }

  v15 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10E00403899984DuLL);
  if (!v15)
  {
    v16 = 4294950305;
    goto LABEL_34;
  }

  v17 = a5[1];
  v29 = a9;
  if (a6)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetIntIfPresent();
  }

  v18 = a8;
  IsTileEncoderAvailable = CMPhotoIsTileEncoderAvailable(v17, 0);
  switch(v17)
  {
    case 1635135537:
      if (!CMPhotoSupportsAV1Encode())
      {
LABEL_36:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_0();
        v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        if (v16)
        {
          goto LABEL_34;
        }

        v20 = 0;
        v21 = (v15 + 32);
        goto LABEL_20;
      }

      goto LABEL_16;
    case 1936484717:
      v20 = &CMPhotoCompressionPluginClassSlim;
      break;
    case 1785750887:
      v20 = &CMPhotoCompressionPluginClassJPEG;
      break;
    case 1752589105:
      if (!CMPhotoSupportsHEVCEncode())
      {
        goto LABEL_36;
      }

LABEL_16:
      if (IsTileEncoderAvailable)
      {
        v20 = &CMPhotoCompressionPluginClassVideoToolbox_Tile;
      }

      else
      {
        v20 = CMPhotoCompressionPluginClassVideoToolbox;
      }

      break;
    default:
      v16 = 4294950298;
      goto LABEL_34;
  }

  v21 = (v15 + 32);
LABEL_20:
  *v21 = v20;
  if (a1)
  {
    v22 = CFRetain(a1);
  }

  else
  {
    v22 = 0;
  }

  *v15 = v22;
  if (a2)
  {
    v23 = CFRetain(a2);
  }

  else
  {
    v23 = 0;
  }

  *(v15 + 1) = v23;
  if (a3)
  {
    v24 = CFRetain(a3);
  }

  else
  {
    v24 = 0;
  }

  *(v15 + 2) = v24;
  if (a4)
  {
    v25 = CFRetain(a4);
  }

  else
  {
    v25 = 0;
  }

  *(v15 + 3) = v25;
  v26 = *a5;
  *(v15 + 10) = a5[1];
  v15[52] = *(a5 + 8);
  *(v15 + 12) = v26;
  *(v15 + 17) = a7;
  *(v15 + 18) = v18;
  v27 = *(a5 + 3);
  *(v15 + 108) = *(a5 + 7);
  *(v15 + 92) = v27;
  *(v15 + 14) = a5[9];
  v15[60] = *(a5 + 40);
  *(v15 + 22) = a5[16];
  *(v15 + 16) = a5[11];
  *(v15 + 72) = *(a5 + 3);
  *(v15 + 15) = *(a5 + 9);
  v15[128] = *(a5 + 80);
  v15[44] = *(a5 + 81);
  v16 = (**(v15 + 4))(v15, a6);
  if (!v16)
  {
    *v29 = v15;
    v15 = 0;
  }

LABEL_34:
  CMPhotoCompressionPluginDispose(v15);
  return v16;
}

uint64_t CMPhotoCompressionPluginPrepare(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CMPhotoCompressionPluginEncode(uint64_t a1, __CVBuffer *a2, uint64_t a3, uint64x2_t *a4, uint64x2_t *a5, int a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*&a4[1] == 0)
  {
    v16.f64[0] = CMPhotoGetPixelBufferCLAPAsRect(a2);
    v16.f64[1] = v17;
    v19.f64[1] = v18;
    *a4 = vcvtq_u64_f64(vrndaq_f64(v16));
    a4[1] = vcvtq_u64_f64(vrndaq_f64(v19));
  }

  v20 = a5->i64[0];
  if (a6)
  {
    v20 += a4->i64[0];
    v21 = a5->i64[1] + a4->i64[1];
    a5->i64[0] = v20;
    a5->i64[1] = v21;
  }

  else
  {
    v21 = a5->i64[1];
  }

  if (!(v20 | v21) && *&a5[1] == 0)
  {
    v22 = a4[1];
    *a5 = *a4;
    a5[1] = v22;
  }

  v23 = *(*(a1 + 32) + 32);
  v24 = a4[1];
  v28[0] = *a4;
  v28[1] = v24;
  v25 = a5[1];
  v27[0] = *a5;
  v27[1] = v25;
  return v23(a1, a2, a3, v28, v27, a7, a8);
}

uint64_t CMPhotoCompressionPluginCompleteEncodes(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  v1 = *(*(a1 + 32) + 40);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294950302;
  }
}

uint64_t CMPhotoCompressionPluginPixelTransfer(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294950306;
  }

  v10 = *(*(a1 + 32) + 48);
  if (!v10)
  {
    return 4294950302;
  }

  v16 = v8;
  v17 = v9;
  v11 = a3[1];
  v15[0] = *a3;
  v15[1] = v11;
  v12 = a4[1];
  v14[0] = *a4;
  v14[1] = v12;
  return v10(a1, a2, v15, v14, a5, a6, a7, a8);
}

uint64_t CMPhotoCompressionPluginCanBeReused(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v17 = 0;
  if (!a1)
  {
    return 4294950306;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    return 4294950306;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    return 4294950302;
  }

  memcpy(v16, a2, 0x58uLL);
  result = v9(a1, v16, a3, a4, a5, a6, &v17);
  if (a7)
  {
    if (!result)
    {
      *a7 = v17;
    }
  }

  return result;
}

uint64_t CMPhotoCompressionPluginCopyReconstructionPixelBufferAttributes(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return (*(v1 + 56))();
  }

  else
  {
    return 4294950306;
  }
}

uint64_t SlimCompressionPluginClass_create(uint64_t a1, const __CFDictionary *a2)
{
  pthread_once(&_checkFigNoteTraceOnce_onceToken_2, _registerFigNoteTrace_2);
  v24 = -1;
  v25 = -1;
  v22 = 9;
  v23 = 1;
  v21 = 0;
  if (*(a1 + 40) == 1936484717)
  {
    v5 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E0040A9A32FFAuLL);
    if (!v5)
    {
      return 4294950305;
    }

    v6 = v5;
    v7 = *(a1 + 120);
    LODWORD(v8) = 4;
    if (v7 < 4)
    {
      v8 = *(a1 + 120);
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    *(v5 + 12) = v9;
    if (v9)
    {
      v10 = 0;
      v11 = (v5 + 16);
      while (1)
      {
        Session = SlimVideoEncoder_CreateSession(*a1, v11);
        if (Session)
        {
          break;
        }

        ++v10;
        ++v11;
        if (v10 >= *(v6 + 12))
        {
          goto LABEL_12;
        }
      }

      v17 = Session;
      goto LABEL_28;
    }

LABEL_12:
    *(v6 + 13) = 0;
    if (a2)
    {
      if (CMPhotoCFDictionaryGetIntIfPresent())
      {
        Value = CFDictionaryGetValue(a2, @"QualityControllerParameters");
      }

      else
      {
        Value = 0;
      }

      CMPhotoCFDictionaryGetIntIfPresent();
      if (v23 > 5 || (CMPhotoCFDictionaryGetIntIfPresent(), (v25 - 16) < 0xFFFFFFEF) || (CMPhotoCFDictionaryGetIntIfPresent(), (v24 - 256) < 0xFFFFFEFF))
      {
        v17 = 4294950306;
        goto LABEL_28;
      }

      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      *(v6 + 28) = v22;
      if (Value)
      {
        v14 = CFRetain(Value);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
      *(v6 + 28) = 9;
    }

    *(v6 + 15) = v14;
    v15 = v23;
    *(v6 + 15) = v24;
    *(v6 + 16) = v15;
    *(v6 + 14) = v25;
    if (v6[72] || (TargetingPThreadRootQueueWithPriority = FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority(), (*(v6 + 10) = TargetingPThreadRootQueueWithPriority) != 0))
    {
      v17 = 0;
      *(a1 + 152) = v6;
      return v17;
    }

    v17 = 4294950305;
LABEL_28:
    bzero(v20, 0xA8uLL);
    v20[19] = v6;
    SlimCompressionPluginClass_dispose(v20);
    return v17;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950306, "<<<< CMPhotoCompressionPlugin+Slim >>>>", 197, v2);
}

uint64_t SlimCompressionPluginClass_prepare(void *a1, unint64_t a2, unint64_t a3)
{
  cf = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  if (!a1)
  {
    v8 = 4294950306;
    goto LABEL_31;
  }

  if (!(a2 | a3))
  {
    Mutable = 0;
    goto LABEL_37;
  }

  Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v8 = 4294950305;
    goto LABEL_27;
  }

  v7 = a1[19];
  if (!v7)
  {
    v8 = 4294950194;
    goto LABEL_27;
  }

  CMPhotoVideoQualityControllerDispose(*(v7 + 128));
  *(v7 + 128) = 0;
  v8 = 4294950190;
  if (a2 >> 31 || a3 >> 31)
  {
    goto LABEL_27;
  }

  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4(822280601, v7);
  }

  LODWORD(v18) = *(a1 + 12);
  HIDWORD(v18) = a2;
  v19 = __PAIR64__(*(v7 + 64), a3);
  if (*(v7 + 48) >= 1)
  {
    v10 = 0;
    do
    {
      started = SlimVideoEncoder_StartSessionInternal(*a1, &v18, *(v7 + 16 + 8 * v10));
      if (started)
      {
        goto LABEL_34;
      }
    }

    while (++v10 < *(v7 + 48));
  }

  started = CMPhotoVideoQualityControllerCreate(*a1, *(a1 + 16), *(v7 + 112), a2, a3, a1[9], a1[10], *(v7 + 120), *(a1 + 10), *(a1 + 52), &v21);
  if (!started)
  {
    started = CMPhotoVideoQualityControllerSetSessionProperties(v21);
    if (!started)
    {
      v12 = *(v7 + 56);
      if (v12 != -1)
      {
        CMPhotoCFDictionarySetInt(Mutable, @"SlimXBitShift", v12);
      }

      CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E69836B8], *(a1 + 12));
      v13 = *(v7 + 64);
      if (v13 <= 5)
      {
        if (v13 != 3)
        {
          goto LABEL_19;
        }

        v17 = *(v7 + 60);
        if (v17 != -1)
        {
          CMPhotoCFDictionarySetInt(Mutable, @"SlimHrlcRunLengthValue", v17);
          v13 = *(v7 + 64);
LABEL_19:
          CMPhotoCFDictionarySetInt(Mutable, @"InternalCodecType", v13);
          if (*(v7 + 48) >= 1)
          {
            v14 = 0;
            do
            {
              v15 = *(v7 + 16 + 8 * v14);
              context[0] = 0;
              context[1] = v15;
              CFDictionaryApplyFunction(Mutable, _slimEncoderSessionSetOneProperty, context);
              v8 = LODWORD(context[0]);
              if (LODWORD(context[0]))
              {
                goto LABEL_27;
              }
            }

            while (++v14 < *(v7 + 48));
          }

          started = SlimVideoEncoder_CopyPixelBufferAttributesInternal(*(v7 + 16), &cf);
          if (!started)
          {
            if (*v9 == 1)
            {
              OUTLINED_FUNCTION_4(822280602, v7);
            }

            CMPhotoCFDictionaryGetSizeIfPresent(cf, *MEMORY[0x1E6966020], (v7 + 88));
            CMPhotoPixelBufferAttributesGetExtendedPixels(cf, 0, (v7 + 96), 0, (v7 + 104));
            v8 = 0;
            *v7 = a2;
            *(v7 + 8) = a3;
            *(v7 + 128) = v21;
            v21 = 0;
            goto LABEL_27;
          }

          goto LABEL_34;
        }
      }

LABEL_37:
      v8 = 4294950306;
      goto LABEL_27;
    }
  }

LABEL_34:
  v8 = started;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_31:
  CMPhotoVideoQualityControllerDispose(v21);
  return v8;
}

uint64_t SlimCompressionPluginClass_encode(CFAllocatorRef *a1, __CVBuffer *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  cf = 0;
  if (!a1)
  {
    return 4294950306;
  }

  v8 = a1[19];
  if (!v8)
  {
    v28 = 4294950194;
    goto LABEL_24;
  }

  v12 = *(v8 + 1);
  v13 = a5[2];
  v14 = a5[3];
  if (*v8 != v13 || v12 != v14)
  {
    v16 = a4[1];
    v17 = a5[1];
    if (*a4 == *a5 && v16 == v17)
    {
      SlimEncodeFrameProperties = SlimCompressionPluginClass_prepare(a1, v13, v14);
      if (!SlimEncodeFrameProperties)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v19 = v16 - v17 + a4[3];
      if (*v8 == v13 && v19 <= v12 && v14 < v12)
      {
        goto LABEL_18;
      }

      fig_log_get_emitter();
      SlimEncodeFrameProperties = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, DWORD2(v32), v33);
    }

LABEL_33:
    v28 = SlimEncodeFrameProperties;
    goto LABEL_24;
  }

LABEL_18:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4(822280593, a7);
  }

  if (*(v8 + 72))
  {
    SlimEncodeFrameProperties = _createSlimEncodeFrameProperties(a5[1], a5[3], *a1, &cf);
    if (!SlimEncodeFrameProperties)
    {
      v31 = *(v8 + *(v8 + 13) + 2);
      v34 = *MEMORY[0x1E6960C70];
      v35 = *(MEMORY[0x1E6960C70] + 16);
      v32 = v34;
      v33 = v35;
      SlimEncodeFrameProperties = SlimVideoEncoder_EncodeFrameInternal(v31, a2, &v34, &v32, cf, SlimCompressionPluginClass_callback, a1, a7);
      if (!SlimEncodeFrameProperties)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_33;
  }

  v22 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A00401229A369uLL);
  if (v22)
  {
    v23 = a5[3];
    v24 = a5[1];
    *v22 = *(v8 + *(v8 + 13) + 2);
    *(v22 + 1) = a2;
    *(v22 + 2) = v23;
    v25 = MEMORY[0x1E6960C70];
    v26 = *MEMORY[0x1E6960C70];
    *(v22 + 24) = *MEMORY[0x1E6960C70];
    v27 = *(v25 + 16);
    *(v22 + 5) = v27;
    *(v22 + 3) = v26;
    *(v22 + 8) = v27;
    *(v22 + 9) = v24;
    *(v22 + 10) = SlimCompressionPluginClass_callback;
    *(v22 + 11) = a1;
    *(v22 + 12) = a7;
    dispatch_async_f(*(v8 + 10), v22, _dispatch_tileEncodeAsync);
LABEL_23:
    v28 = 0;
    *(v8 + 13) = (*(v8 + 13) + 1) % *(v8 + 12);
    goto LABEL_24;
  }

  v28 = 4294950305;
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  return v28;
}

uint64_t _createSlimEncodeFrameProperties(uint64_t a1, uint64_t a2, CFAllocatorRef allocator, CFMutableDictionaryRef *a4)
{
  if (!(a2 | a1))
  {
    if (!a4)
    {
      return 0;
    }

    v8 = 0;
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v8 = Mutable;
  if (a1)
  {
    v9 = CMPhotoCFDictionarySetInt(Mutable, @"StillOffsetH", a1);
    if (v9)
    {
      v11 = v9;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v10 = CMPhotoCFDictionarySetInt(v8, @"EncodeHeight", a2);
    v11 = v10;
    if (!a4 || v10)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
    v11 = 0;
LABEL_15:
    CFRelease(v8);
    return v11;
  }

LABEL_12:
  v11 = 0;
  *a4 = v8;
  return v11;
}

void _dispatch_tileEncodeAsync(char *a1)
{
  v11 = 0;
  if (!_createSlimEncodeFrameProperties(*(a1 + 9), *(a1 + 2), 0, &v11))
  {
    v2 = *a1;
    v3 = *(a1 + 1);
    v4 = *(a1 + 10);
    v5 = *(a1 + 11);
    v6 = *(a1 + 12);
    v9 = *(a1 + 24);
    v10 = *(a1 + 5);
    v7 = *(a1 + 3);
    v8 = *(a1 + 8);
    SlimVideoEncoder_EncodeFrameInternal(v2, v3, &v9, &v7, v11, v4, v5, v6);
  }

  free(a1);
  if (v11)
  {
    CFRelease(v11);
  }
}

void CMPhotoOneShotSessionPoolRecycleSession(const void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CMPhotoCompressionSessionGetTypeID())
  {
    v3 = 0;
  }

  else
  {
    if (v2 != CMPhotoDecompressionSessionGetTypeID())
    {
      goto LABEL_16;
    }

    v3 = 1;
  }

  if (globalPool && *globalPool)
  {
    valuePtr = dispatch_time(0, 60000000000);
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      if (!FigSimpleMutexLock())
      {
        CFArrayAppendValue(*(globalPool + 8 * v3 + 16), a1);
        CFDictionarySetValue(*(globalPool + 32), a1, v5);
        if (*(globalPool + 40))
        {
          dispatch_resume(*(globalPool + 48));
          *(globalPool + 40) = 0;
        }

        FigSimpleMutexUnlock();
      }

      CFRelease(a1);
      v6 = v5;
    }

    else
    {
      v6 = a1;
    }

    CFRelease(v6);
    return;
  }

LABEL_16:

  CFRelease(a1);
}

void _once_createGlobalPoolIfNeeded()
{
  globalPool = malloc_type_calloc(1uLL, 0x38uLL, 0x10200404B17195AuLL);
  if (globalPool)
  {
    v0 = FigSimpleMutexCreate();
    *(globalPool + 8) = v0;
    if (v0)
    {
      v1 = 0;
      v2 = *MEMORY[0x1E695E480];
      v3 = 1;
      v4 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v5 = v3;
        Mutable = CFArrayCreateMutable(v2, 0, v4);
        *(globalPool + 8 * v1 + 16) = Mutable;
        if (!Mutable)
        {
          break;
        }

        v3 = 0;
        v1 = 1;
        if ((v5 & 1) == 0)
        {
          v7 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(globalPool + 32) = v7;
          if (v7)
          {
            global_queue = dispatch_get_global_queue(0, 0);
            v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
            v10 = globalPool;
            *(globalPool + 48) = v9;
            if (v9)
            {
              dispatch_set_context(v9, v10);
              dispatch_source_set_event_handler_f(*(globalPool + 48), _performCleanup);
              v11 = dispatch_time(0, 60000000000);
              dispatch_source_set_timer(*(globalPool + 48), v11, 0xDF8475800uLL, 0x1BF08EB00uLL);
              v12 = globalPool;
              *(globalPool + 40) = 1;
              *v12 = 1;
            }
          }

          return;
        }
      }
    }
  }
}

uint64_t _performCleanup(uint64_t a1)
{
  result = FigSimpleMutexLock();
  if (!result)
  {
    v3 = _performCleanupByType(a1, 0);
    if (!(v3 + _performCleanupByType(a1, 1u)))
    {
      dispatch_suspend(*(a1 + 48));
      *(a1 + 40) = 1;
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t CMPhotoHEIFFileWriterCreate(const __CFAllocator *a1, const __CFDictionary *a2, void *a3)
{
  v54 = 0;
  cf = 0;
  v53 = 0;
  if (!a3)
  {
    v9 = 0;
    v50 = 4294950306;
    goto LABEL_46;
  }

  pthread_once(&_checkFigNoteTraceOnce_onceToken_3, _registerFigNoteTrace_3);
  v6 = malloc_type_calloc(1uLL, 0x100uLL, 0x10E0040BC676932uLL);
  v9 = v6;
  if (!v6)
  {
LABEL_54:
    v50 = 4294950305;
    goto LABEL_46;
  }

  *(v6 + 32) = 2;
  v10 = (v6 + 128);
  *(v6 + 23) = 26214400;
  v6[176] = 0;
  v11 = v6 + 176;
  if (!a2)
  {
    v14 = 0;
    goto LABEL_22;
  }

  CMPhotoCFDictionaryGetIntIfPresent();
  v12 = *v10;
  if (*v10)
  {
    if (v12 == 4)
    {
      Value = CFDictionaryGetValue(a2, @"BackingIOSurfaceDestinationSize");
      v14 = Value;
      if (Value)
      {
        v18 = CFGetTypeID(Value);
        if (v18 != CFNumberGetTypeID())
        {
LABEL_9:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_5_0();
          v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_60:
          v50 = v16;
          goto LABEL_46;
        }

        *&valuePtr = 0;
        if (!CFNumberGetValue(v14, kCFNumberLongType, &valuePtr) || valuePtr < 1)
        {
LABEL_59:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_5_0();
          v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_60;
        }

        v14 = 0;
        *(v9 + 18) = valuePtr;
      }
    }

    else if (v12 == 3)
    {
      v13 = CFDictionaryGetValue(a2, @"BackingFileURL");
      if (!v13)
      {
        goto LABEL_9;
      }

      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 != CFURLGetTypeID())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    *v10 = 2;
  }

  CMPhotoCFDictionaryGetSizeIfPresent(a2, @"MaxOutputBufferSize", v9 + 23);
  CMPhotoCFDictionaryGetBooleanIfPresent();
  if (!*v11)
  {
LABEL_22:
    v52 = 0;
    v16 = _createByteStreamAndBacking(a1, &unk_1A5ABB698, &cf, &v54, v7, v8);
    if (v16)
    {
      goto LABEL_60;
    }

    v20 = MEMORY[0x1E6972250];
    goto LABEL_24;
  }

  if (*v10 == 4)
  {
    goto LABEL_59;
  }

  v52 = 0;
  v19 = *(v9 + 18);
  *&valuePtr = *(v9 + 16);
  *(&valuePtr + 1) = v14;
  *&v57 = v19;
  v16 = _createByteStreamAndBacking(a1, &valuePtr, &cf, &v54, v7, v8);
  if (v16)
  {
    goto LABEL_60;
  }

  v20 = MEMORY[0x1E6972248];
LABEL_24:
  v52 = *v20;
  v21 = CFDictionaryCreate(a1, MEMORY[0x1E6972240], &v52, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v21)
  {
    goto LABEL_54;
  }

  v22 = v21;
  v23 = FigIFFPictureCollectionWriterCreateWithByteStream();
  if (v23)
  {
    v50 = v23;
  }

  else
  {
    v58 = 0;
    valuePtr = 0u;
    *(&v57 + 1) = 0;
    *&v57 = _imageRecordReleaseCallback;
    v24 = OUTLINED_FUNCTION_9_0();
    Mutable = CFArrayCreateMutable(v24, v25, v26);
    *(v9 + 5) = Mutable;
    if (Mutable && (v58 = 0, valuePtr = 0u, v57 = MEMORY[0x1E695D720], v28 = OUTLINED_FUNCTION_9_0(), v31 = CFArrayCreateMutable(v28, v29, v30), (*(v9 + 6) = v31) != 0) && (v32 = OUTLINED_FUNCTION_9_0(), v35 = CFArrayCreateMutable(v32, v33, v34), (*(v9 + 25) = v35) != 0) && (v36 = OUTLINED_FUNCTION_9_0(), v39 = CFArrayCreateMutable(v36, v37, v38), (*(v9 + 26) = v39) != 0) && (v40 = OUTLINED_FUNCTION_9_0(), v42 = CFArrayCreateMutable(v40, v41, 0), (*(v9 + 27) = v42) != 0) && (v43 = OUTLINED_FUNCTION_9_0(), v45 = CFSetCreateMutable(v43, v44, 0), (*(v9 + 13) = v45) != 0))
    {
      *(v9 + 24) = 1835623985;
      CFSetAddValue(v45, 0x6D696631);
      *(v9 + 16) = 0;
      v9[34] = 0;
      v9[152] = 0;
      if (v14)
      {
        v46 = CFRetain(v14);
      }

      else
      {
        v46 = 0;
      }

      *(v9 + 17) = v46;
      *(v9 + 1) = FigSimpleMutexCreate();
      if (a1)
      {
        v47 = CFRetain(a1);
      }

      else
      {
        v47 = 0;
      }

      *v9 = v47;
      v48 = v54;
      *(v9 + 2) = v53;
      v53 = 0;
      v54 = 0;
      v49 = cf;
      cf = 0;
      *(v9 + 20) = v49;
      *(v9 + 21) = v48;
      if (v9[176])
      {
        if (v49)
        {
          v49 = CFRetain(v49);
          v48 = *(v9 + 21);
        }

        *(v9 + 14) = v49;
        if (v48)
        {
          v48 = CFRetain(v48);
        }

        *(v9 + 15) = v48;
      }

      v50 = 0;
      *(v9 + 9) = -1;
      *(v9 + 112) = 0;
      *(v9 + 30) = 0;
      v9[248] = 1;
      *a3 = v9;
      v9 = 0;
    }

    else
    {
      v50 = 4294950305;
    }
  }

  CFRelease(v22);
LABEL_46:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  CMPhotoHEIFFileWriterDispose(v9);
  return v50;
}

uint64_t CMPhotoHEIFFileWriterCloseAndCopyBacking(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v8 = OUTLINED_FUNCTION_14_11(a1);
  if (v8)
  {
    return v8;
  }

  if (!a4 && !*(v4 + 64))
  {
LABEL_75:
    v9 = 0;
    goto LABEL_73;
  }

  context = v4;
  if (!FigCFDictionaryGetCount())
  {
LABEL_7:
    cf = 0;
    p_cf = &cf;
    v54 = 0x2000000000;
    v55 = 0;
    v10 = *(v4 + 88);
    if (v10 && CFArrayGetCount(v10) >= 1)
    {
      context = MEMORY[0x1E69E9820];
      v42 = 0x40000000;
      v43 = ___writePendingReferencesIfNeeded_block_invoke;
      v44 = &unk_1E77A2580;
      v45 = &cf;
      v46 = v4;
      FigCFArrayApplyBlock();
    }

    v9 = *(p_cf + 6);
    _Block_object_dispose(&cf, 8);
    if (v9)
    {
      goto LABEL_73;
    }

    cf = 0;
    p_cf = &cf;
    v54 = 0x2000000000;
    v55 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2000000000;
    v51 = 0;
    context = MEMORY[0x1E69E9820];
    v42 = 0x40000000;
    v43 = ___addBackwardsCompatibleStereoGroupsIfNeeded_block_invoke;
    v44 = &unk_1E77A25A8;
    v46 = &v48;
    v47 = v4;
    v45 = &cf;
    FigCFDictionaryApplyBlock();
    if (*(v49 + 24))
    {
      OUTLINED_FUNCTION_22_3();
    }

    v9 = *(p_cf + 6);
    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&cf, 8);
    if (v9)
    {
      goto LABEL_73;
    }

    IsFinal = _ensureBackingIsFinal(v4, v11, v12, v13, v14, v15);
    if (IsFinal)
    {
      goto LABEL_59;
    }

    if (!*(v4 + 24))
    {
      goto LABEL_62;
    }

    context = 0;
    cf = 0;
    v48 = 0;
    v17 = *v4;
    v18 = *(v4 + 48);
    if (v18 && (v19 = CFArrayGetCount(v18), v19 >= 1))
    {
      v20 = v19;
      for (i = 0; i != v20; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 48), i);
        appended = _appendTrackReferenceIfValid(ValueAtIndex[12], *ValueAtIndex, v17, &context);
        if (!appended)
        {
          appended = _appendTrackReferenceIfValid(ValueAtIndex[24], *ValueAtIndex, v17, &cf);
          if (!appended)
          {
            appended = _appendTrackReferenceIfValid(ValueAtIndex[36], *ValueAtIndex, v17, &v48);
            if (!appended)
            {
              continue;
            }
          }
        }

        v9 = appended;
        v24 = context;
        goto LABEL_39;
      }

      v24 = context;
      v25 = cf;
      v9 = v48;
      if (!context)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v9 = 0;
      v25 = 0;
      v24 = 0;
LABEL_26:
      if (!v25 && !v9)
      {
LABEL_41:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v48)
        {
          CFRelease(v48);
        }

        if (v9)
        {
          goto LABEL_73;
        }

        if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          goto LABEL_72;
        }

        v30 = OUTLINED_FUNCTION_7_1();
        IsFinal = v31(v30);
        if (!IsFinal)
        {
          for (j = 0; ; ++j)
          {
            Count = *(v4 + 48);
            if (Count)
            {
              Count = CFArrayGetCount(Count);
            }

            if (j >= Count)
            {
              break;
            }

            v34 = CFArrayGetValueAtIndex(*(v4 + 48), j);
            IsFinal = _updateSampleDescriptionExtensions(v4, *v34);
            if (IsFinal)
            {
              goto LABEL_59;
            }

            if (v34[7] >= 1)
            {
              IsFinal = _updateSampleDescriptionExtensions(v4, *(v34 + 12));
              if (IsFinal)
              {
                goto LABEL_59;
              }
            }

            if (v34[13] >= 1)
            {
              IsFinal = _updateSampleDescriptionExtensions(v4, *(v34 + 24));
              if (IsFinal)
              {
                goto LABEL_59;
              }
            }
          }

          if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            goto LABEL_72;
          }

          v35 = OUTLINED_FUNCTION_7_1();
          IsFinal = v36(v35);
          if (!IsFinal)
          {
LABEL_62:
            if (*(*(CMBaseObjectGetVTable() + 16) + 24))
            {
              v37 = OUTLINED_FUNCTION_7_1();
              IsFinal = v38(v37);
              if (!IsFinal)
              {
                if (a3)
                {
                  *a3 = 0;
                }

                if (a2)
                {
                  *a2 = *(v4 + 128);
                }

                if (a4)
                {
                  v39 = *(v4 + 120);
                  if (v39)
                  {
                    v39 = CFRetain(v39);
                  }

                  v9 = 0;
                  *a4 = v39;
                  goto LABEL_73;
                }

                goto LABEL_75;
              }

              goto LABEL_59;
            }

LABEL_72:
            v9 = 4294954514;
            goto LABEL_73;
          }
        }

LABEL_59:
        v9 = IsFinal;
        goto LABEL_73;
      }
    }

    Mutable = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v27 = Mutable;
      if (v24)
      {
        CFDictionaryAddValue(Mutable, @"thmb", v24);
      }

      if (v25)
      {
        CFDictionaryAddValue(v27, @"auxl", v25);
      }

      if (v9)
      {
        CFDictionaryAddValue(v27, @"cdsc", v9);
      }

      FigBaseObject = FigFormatWriterGetFigBaseObject();
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v29)
      {
        v9 = v29(FigBaseObject, *MEMORY[0x1E6971C70], v27);
      }

      else
      {
        v9 = 4294954514;
      }

      CFRelease(v27);
    }

    else
    {
      v9 = 4294950305;
    }

LABEL_39:
    if (v24)
    {
      CFRelease(v24);
    }

    goto LABEL_41;
  }

  v42 = 0;
  CFDictionaryApplyFunction(*(v4 + 80), _pendingGroupPropertiesApplier, &context);
  v9 = v42;
  if (!v42)
  {
    OUTLINED_FUNCTION_22_3();
    goto LABEL_7;
  }

LABEL_73:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t _ensureBackingIsFinal(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  while (1)
  {
    v7 = a1[25];
    if (!v7 || CFArrayGetCount(v7) < 1)
    {
      break;
    }

    Sample = _reorderingBufferDequeueFirstSample(a1);
    if (Sample)
    {
      return Sample;
    }
  }

  if (*(a1 + 152))
  {
    return 0;
  }

  if (*(a1 + 176))
  {
    *&v156 = 0;
    v170 = 0;
    if (*(a1 + 32) == 4)
    {
      v9 = 4294950304;
LABEL_25:
      if (v170)
      {
        CFRelease(v170);
      }

      return v9;
    }

    appended = _createByteStreamAndBacking(*a1, &unk_1A5ABB698, &v156, &v170, a5, a6);
    v12 = v156;
    if (!appended)
    {
      v13 = a1[2];
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v14)
      {
        v9 = 4294954514;
        goto LABEL_23;
      }

      appended = v14(v13, v12, 0);
      if (!appended)
      {
        v169 = 0;
        v9 = v170;
        DataLength = CMBlockBufferGetDataLength(v170);
        OUTLINED_FUNCTION_44();
        appended = CMByteStreamAppendBlockBuffer();
        if (!appended)
        {
          if (v169 == DataLength)
          {
            v16 = a1[2];
            if (v16)
            {
              CFRelease(v16);
              a1[2] = 0;
            }

            v17 = a1[21];
            if (v17)
            {
              CFRelease(v17);
              a1[21] = 0;
            }

            v18 = a1[20];
            if (v18)
            {
              CFRelease(v18);
              a1[20] = 0;
            }

            OUTLINED_FUNCTION_26_3();
          }

          else
          {
            v9 = 4294950190;
          }

          goto LABEL_23;
        }
      }
    }

    v9 = appended;
LABEL_23:
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_25;
  }

  v169 = 0;
  v166 = 0;
  cf = 0;
  v164 = 0;
  v165 = 0;
  v19 = (a1 + 16);
  v20 = *a1;
  HIDWORD(v153) = *(a1 + 32);
  if (HIDWORD(v153) == 4)
  {
    v21 = &unk_1A5ABB698;
  }

  else
  {
    v156 = *v19;
    v157 = a1[18];
    v21 = &v156;
  }

  v22 = _createByteStreamAndBacking(v20, v21, &v169, &cf, a5, a6);
  if (v22)
  {
    v9 = v22;
LABEL_142:
    Mutable = 0;
LABEL_143:
    if (v169)
    {
      CFRelease(v169);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_147;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_0_6(822280373);
  }

  *(a1 + 248) &= *(a1 + 224);
  v23 = a1[6];
  if (v23 && CFArrayGetCount(v23) == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1[6], 0);
    if (ValueAtIndex[7])
    {
      v25 = 0;
    }

    else
    {
      v25 = ValueAtIndex[13] < 2;
    }

    v26 = v25;
    *(a1 + 247) = v26;
  }

  if (*(a1 + 225))
  {
    if (!a1[29])
    {
      Mutable = 0;
      v9 = 4294950306;
      goto LABEL_143;
    }

    Mutable = CFArrayCreateMutable(*a1, 0, 0);
    if (!Mutable)
    {
      goto LABEL_260;
    }

    CFSetApplyFunction(a1[29], _addNumberToArray, Mutable);
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v29 = Count;
      v30 = 0;
      while (1)
      {
        v31 = CFArrayGetValueAtIndex(Mutable, v30);
        if ((v31 & 0x8000000000000000) != 0)
        {
          break;
        }

        v32 = v31;
        v33 = a1[5];
        if (v33)
        {
          v33 = CFArrayGetCount(v33);
        }

        if (v33 < v32)
        {
          break;
        }

        v34 = OUTLINED_FUNCTION_21_6();
        v35 = *(v34 + 16);
        if (v35)
        {
          v36 = CFArrayGetCount(v35);
          if (v36 >= 1)
          {
            v37 = v36;
            v38 = 0;
            do
            {
              v39 = CFArrayGetValueAtIndex(*(v34 + 16), v38);
              if ((v39 & 0x8000000000000000) != 0)
              {
                goto LABEL_188;
              }

              v40 = v39;
              v41 = a1[5];
              if (v41)
              {
                v41 = CFArrayGetCount(v41);
              }

              if (v41 < v40)
              {
                goto LABEL_188;
              }

              v42 = OUTLINED_FUNCTION_21_6();
              v43 = v42[2];
              if (HIDWORD(v43) || (v44 = v42[3], HIDWORD(v44)) || (v45 = *(v34 + 2), HIDWORD(v45)) || (v46 = *(v34 + 3), HIDWORD(v46)))
              {
                v9 = 4294950190;
                goto LABEL_141;
              }

              v47 = (v43 * v44);
              if (v47 << 32)
              {
                v48 = v45 * v46 / v47;
                LOBYTE(v156) = v48 < 0xC9;
                if (v48 >= 0xC9)
                {
                  v50 = _areSiblingThumbnailsMIAFCompliant(a1, v34, v47, &v156);
                  if (v50)
                  {
                    goto LABEL_258;
                  }

                  v49 = v156;
                }

                else
                {
                  v49 = 1;
                }

                *(a1 + 248) &= v49;
              }
            }

            while (v37 != ++v38);
          }
        }

        if (++v30 == v29)
        {
          goto LABEL_71;
        }
      }

LABEL_188:
      v9 = 4294950306;
      goto LABEL_141;
    }

LABEL_71:
    CFRelease(Mutable);
  }

  if (!*(a1 + 248))
  {
    goto LABEL_128;
  }

  CFSetAddValue(a1[13], 0x6D696166);
  if (*(a1 + 242))
  {
    CFSetAddValue(a1[13], 0x4D694842);
  }

  if (*(a1 + 243))
  {
    CFSetAddValue(a1[13], 0x4D694841);
  }

  if (*(a1 + 244))
  {
    CFSetAddValue(a1[13], 0x4D694845);
  }

  if (*(a1 + 245))
  {
    CFSetAddValue(a1[13], 0x4D694142);
  }

  if (*(a1 + 247))
  {
    v51 = *(a1 + 24);
    if (v51 == 1836279345 || v51 == 1635148659)
    {
      CFSetAddValue(a1[13], 0x4D69416E);
    }
  }

  v53 = CFArrayGetValueAtIndex(a1[5], a1[9]);
  *&v156 = 0;
  v170 = 0;
  v56 = _createByteStreamAndBacking(*a1, &unk_1A5ABB698, &v156, &v170, v54, v55);
  if (v56)
  {
    v9 = v56;
    v61 = 0;
    v57 = 0;
    v58 = v156;
  }

  else
  {
    v57 = CFDictionaryCreate(*a1, MEMORY[0x1E69721B0], MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v58 = v156;
    if (v57)
    {
      v59 = a1[2];
      v60 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v60)
      {
        v9 = v60(v59, v58, v57);
        if (v9)
        {
          v61 = 0;
        }

        else
        {
          v61 = CMBlockBufferGetDataLength(v170);
        }
      }

      else
      {
        v61 = 0;
        v9 = 4294954514;
      }
    }

    else
    {
      v61 = 0;
      v9 = 4294950305;
    }
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v170)
  {
    CFRelease(v170);
  }

  if (v9)
  {
    goto LABEL_142;
  }

  v62 = a1[13];
  if (v62)
  {
    v61 += 4 * CFSetGetCount(v62);
  }

  if (a1[8] != 1)
  {
    v66 = a1[5];
    if (!v66)
    {
      goto LABEL_126;
    }

    v67 = CFArrayGetCount(v66);
    if (!v67)
    {
      goto LABEL_126;
    }

    v68 = v67;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 1;
    do
    {
      v73 = CFArrayGetValueAtIndex(a1[5], v69);
      v74 = v73[8];
      if (*(v73 + 1) == 1)
      {
        v61 += v74;
        if (v73[14] == a1[9])
        {
          break;
        }
      }

      else
      {
        v71 += v74;
        if (v74 > a1[23])
        {
          v70 = 1;
        }
      }

      v72 = ++v69 < v68;
    }

    while (v68 != v69);
    if (v70)
    {
      goto LABEL_126;
    }

    v75 = a1[23];
    if (v71 <= v75)
    {
      v75 = 0;
    }

    if ((v75 + v61) >> 10 > 0x7C || !v72)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  v63 = *(v53 + 8) + v61;
  v64 = *(v53 + 16);
  if (!v64 || !CFArrayGetCount(v64))
  {
    if (v63 >= 0x1F400)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  v65 = CFArrayGetValueAtIndex(*(v53 + 16), 0);
  if (*(CFArrayGetValueAtIndex(a1[5], v65) + 8) + v61 < 0x1F400 && v63 < a1[23])
  {
LABEL_125:
    *(a1 + 246) = 1;
  }

LABEL_126:
  if (*(a1 + 246))
  {
    CFSetAddValue(a1[13], 0x4D695072);
  }

LABEL_128:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_0_6(822280374);
  }

  Mutable = FigCFNumberCreateUInt32();
  if (!Mutable)
  {
    goto LABEL_260;
  }

  CMBaseObject = FigPictureCollectionWriterGetCMBaseObject();
  v77 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v77)
  {
    goto LABEL_140;
  }

  v50 = v77(CMBaseObject, *MEMORY[0x1E6972260], Mutable);
  if (v50)
  {
LABEL_258:
    v9 = v50;
    goto LABEL_141;
  }

  CFRelease(Mutable);
  Mutable = FigCFNumberCreateUInt32();
  if (!Mutable)
  {
LABEL_260:
    v9 = 4294950305;
    goto LABEL_143;
  }

  v78 = FigPictureCollectionWriterGetCMBaseObject();
  v79 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v79)
  {
LABEL_140:
    v9 = 4294954514;
LABEL_141:
    CFRelease(Mutable);
    goto LABEL_142;
  }

  v50 = v79(v78, *MEMORY[0x1E6972268], Mutable);
  if (v50)
  {
    goto LABEL_258;
  }

  if (CFSetGetCount(a1[13]) <= 0)
  {
    CFRelease(Mutable);
    goto LABEL_193;
  }

  v80 = CFArrayCreateMutable(*a1, 0, MEMORY[0x1E695E9C0]);
  if (!v80)
  {
    v9 = 4294950305;
    goto LABEL_141;
  }

  v81 = v80;
  CFSetApplyFunction(a1[13], _addValueToArray, v80);
  v82 = FigPictureCollectionWriterGetCMBaseObject();
  v83 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v83)
  {
    v9 = v83(v82, *MEMORY[0x1E6972258], v81);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(Mutable);
  CFRelease(v81);
  if (v9)
  {
    goto LABEL_142;
  }

LABEL_193:
  Mutable = CFDictionaryCreate(*a1, MEMORY[0x1E69721B0], MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_260;
  }

  v125 = a1[2];
  v126 = v169;
  v127 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v127)
  {
    goto LABEL_211;
  }

  v128 = v127(v125, v126, Mutable);
  if (v128)
  {
    goto LABEL_278;
  }

  v129 = *a1;
  v130 = FigPictureCollectionWriterGetCMBaseObject();
  v131 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v131)
  {
LABEL_211:
    v9 = 4294954514;
    goto LABEL_143;
  }

  v128 = v131(v130, *MEMORY[0x1E6972270], v129, &v164);
  if (v128)
  {
    goto LABEL_278;
  }

  v170 = 0;
  v163 = 0;
  FigCFArrayGetInt64AtIndex();
  FigCFArrayGetInt64AtIndex();
  v9 = 4294950190;
  if (v163 < 0 || (v170 & 0x8000000000000000) != 0)
  {
    goto LABEL_143;
  }

  if (HIDWORD(v153) == 4)
  {
    v132 = cf;
    v135 = CMBlockBufferGetDataLength(cf);
    v136 = v163 + v135;
    v156 = *v19;
    if (a1[18] > v163 + v135)
    {
      v136 = a1[18];
    }

    v137 = *a1;
    v157 = v136;
    v128 = _createByteStreamAndBacking(v137, &v156, &v166, &v165, v133, v134);
    if (v128)
    {
      goto LABEL_278;
    }

    *&v156 = 0;
    v138 = v166;
    v128 = CMByteStreamAppendBlockBuffer();
    if (v128)
    {
      goto LABEL_278;
    }

    if (v156 != v135)
    {
      goto LABEL_277;
    }

    if (v126)
    {
      CFRelease(v126);
      v169 = 0;
    }

    if (v132)
    {
      CFRelease(v132);
    }

    v169 = v138;
    v166 = 0;
    cf = v165;
    v165 = 0;
  }

  else
  {
    v138 = v126;
  }

  *&v156 = 0;
  v128 = CMByteStreamAppendBlockBuffer();
  if (v128)
  {
LABEL_278:
    v9 = v128;
    goto LABEL_143;
  }

  if (v156 != v163)
  {
LABEL_277:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    v128 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_278;
  }

  v143 = a1[2];
  if (v143)
  {
    CFRelease(v143);
    a1[2] = 0;
  }

  v144 = a1[21];
  if (v144)
  {
    CFRelease(v144);
    a1[21] = 0;
  }

  v145 = a1[20];
  if (v145)
  {
    CFRelease(v145);
    a1[20] = 0;
  }

  OUTLINED_FUNCTION_26_3();
  v169 = 0;
  v146 = cf;
  a1[14] = v138;
  a1[15] = v146;
  cf = 0;
LABEL_147:
  if (v166)
  {
    CFRelease(v166);
  }

  if (v165)
  {
    CFRelease(v165);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v164)
  {
    CFRelease(v164);
  }

  if (v9)
  {
    return v9;
  }

  v84 = a1[6];
  if (!v84 || CFArrayGetCount(v84) != 1)
  {
    return 0;
  }

  v85 = CFArrayGetValueAtIndex(a1[6], 0);
  if (v85[1] != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v150, v153, v156);
  }

  v86 = v85;
  if (!v85[2])
  {
    return 0;
  }

  Sample = _createMovieWriterIfNeeded(a1);
  if (Sample)
  {
    return Sample;
  }

  v159 = 0;
  v160 = 0;
  v158 = 0;
  v87 = *(v86 + 24);
  v166 = 0;
  cf = 0;
  v164 = 0;
  v165 = 0;
  v88 = FigPictureCollectionCreateFromByteStream();
  if (v88)
  {
    goto LABEL_276;
  }

  v163 = 0;
  v89 = cf;
  v90 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v90)
  {
    goto LABEL_212;
  }

  v88 = v90(v89, 1, &v163);
  if (v88)
  {
    goto LABEL_276;
  }

  if (v163 <= 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    v88 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v150, v153, v156);
    goto LABEL_276;
  }

  v91 = cf;
  v92 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v92)
  {
    goto LABEL_212;
  }

  v88 = v92(v91, v87, &v166);
  if (v88)
  {
    goto LABEL_276;
  }

  _getSampleOffsetFromPictureReader();
  v101 = *(*(OUTLINED_FUNCTION_37_2(v93, v94, v95, v96, v97, v98, v99, v100, v150, v153, v156, *(&v156 + 1), v157, v158, v159, v160, v161, 0, v163, v164, v165, v166) + 16) + 16);
  if (!v101)
  {
    goto LABEL_212;
  }

  v88 = v101(v91, &v162);
  if (v88)
  {
    goto LABEL_276;
  }

  if (v162 >= 1)
  {
    v109 = *(*(OUTLINED_FUNCTION_37_2(v88, v102, v103, v104, v105, v106, v107, v108, v151, v154, v156, *(&v156 + 1), v157, v158, v159, v160, v161, v162, v163, v164, v165, v166) + 16) + 24);
    if (!v109)
    {
      goto LABEL_212;
    }

    v88 = v109(v91, 0, &v165);
    if (v88)
    {
      goto LABEL_276;
    }

    _getSampleOffsetFromPictureReader();
  }

  v110 = *(*(OUTLINED_FUNCTION_37_2(v88, v102, v103, v104, v105, v106, v107, v108, v151, v154, v156, *(&v156 + 1), v157, v158, v159, v160, 0, v162, v163, v164, v165, v166) + 16) + 32);
  if (!v110)
  {
    goto LABEL_212;
  }

  v88 = v110(v91, &v161);
  if (v88)
  {
    goto LABEL_276;
  }

  if (v161 < 1)
  {
    goto LABEL_179;
  }

  v118 = *(*(OUTLINED_FUNCTION_37_2(v88, v111, v112, v113, v114, v115, v116, v117, v152, v155, v156, *(&v156 + 1), v157, v158, v159, v160, v161, v162, v163, v164, v165, v166) + 16) + 40);
  if (!v118)
  {
LABEL_212:
    v139 = 0;
    v9 = 4294954514;
    goto LABEL_213;
  }

  v88 = v118(v91, 0, &v164);
  if (!v88)
  {
    _getSampleOffsetFromPictureReader();
LABEL_179:
    v119 = v166;
    *&v156 = 0;
    v169 = 0;
    v170 = 0;
    v168 = 0;
    v120 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v120)
    {
      v121 = v120(v119, &v156);
      if (v121)
      {
        goto LABEL_280;
      }

      if (v156 < 1)
      {
        v124 = 0;
        v9 = 0;
        goto LABEL_271;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v122 = OUTLINED_FUNCTION_7_1();
        v9 = v123(v122);
        v124 = 0;
        if (v9 || v156 < 1)
        {
          goto LABEL_271;
        }

        if (v170 == 1)
        {
          v9 = 0;
          v124 = *v169 + v168;
LABEL_271:
          free(v169);
          v139 = v124;
          goto LABEL_213;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_19();
        v121 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v152, v155, v156);
LABEL_280:
        v9 = v121;
        v124 = 0;
        goto LABEL_271;
      }
    }

    v124 = 0;
    v9 = 4294954514;
    goto LABEL_271;
  }

LABEL_276:
  v9 = v88;
  v139 = 0;
LABEL_213:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v166)
  {
    CFRelease(v166);
  }

  if (v165)
  {
    CFRelease(v165);
  }

  if (v164)
  {
    CFRelease(v164);
  }

  if (!v9)
  {
    if (!*v86)
    {
      if (!*(*(OUTLINED_FUNCTION_36_2() + 16) + 8))
      {
        return 4294954514;
      }

      v141 = OUTLINED_FUNCTION_25_4();
      Sample = v142(v141);
      if (Sample)
      {
        return Sample;
      }
    }

    if (*(v86 + 64) && !*(v86 + 48))
    {
      if (!*(*(OUTLINED_FUNCTION_36_2() + 16) + 8))
      {
        return 4294954514;
      }

      v147 = OUTLINED_FUNCTION_25_4();
      Sample = v148(v147);
      if (Sample)
      {
        return Sample;
      }
    }

    if (*(v86 + 112) && !*(v86 + 96))
    {
      v149 = *(*(OUTLINED_FUNCTION_36_2() + 16) + 8);
      if (!v149)
      {
        return 4294954514;
      }

      Sample = v149(v9, 1635088502, 0, v86 + 96);
      if (Sample)
      {
        return Sample;
      }
    }

    if (!*(v86 + 160) || *(v86 + 144))
    {
      goto LABEL_231;
    }

    v140 = *(*(OUTLINED_FUNCTION_36_2() + 16) + 8);
    if (v140)
    {
      Sample = v140(v9, 1835365473, 0, v86 + 144);
      if (!Sample)
      {
LABEL_231:
        Sample = _addFirstSampleReferenceToTrack(a1, v86, v160);
        if (Sample)
        {
          return Sample;
        }

        if (*(v86 + 64))
        {
          Sample = _addFirstSampleReferenceToTrack(a1, v86 + 48, v159);
          if (Sample)
          {
            return Sample;
          }
        }

        if (*(v86 + 112))
        {
          Sample = _addFirstSampleReferenceToTrack(a1, v86 + 96, v158);
          if (Sample)
          {
            return Sample;
          }
        }

        if (*(v86 + 160))
        {
          Sample = _addFirstSampleReferenceToTrack(a1, v86 + 144, v139);
          if (Sample)
          {
            return Sample;
          }
        }

        return 0;
      }

      return Sample;
    }

    return 4294954514;
  }

  return v9;
}

uint64_t CMPhotoHEIFFileWriterAddSequence(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  v5 = OUTLINED_FUNCTION_14_11(a1);
  if (v5)
  {
    return v5;
  }

  if (*(v3 + 33) || *(v3 + 34) || *(v3 + 176))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    v9 = 0;
    v6 = _dataBlobArrayNewEntry(*(v3 + 48), 0xC0uLL, &v9, a3);
    if (!v6)
    {
      v7 = v9;
      *v9 = 0;
      *(v7 + 2) = 0u;
      *(v7 + 6) = 0u;
      *(v7 + 9) = 0u;
      *(v7 + 14) = 0u;
      *(v7 + 18) = 0u;
      *(v7 + 21) = 0u;
      *(v7 + 26) = 0u;
      *(v7 + 30) = 0u;
      *(v7 + 33) = 0u;
      *(v7 + 38) = 0u;
      *(v7 + 42) = 0u;
      *(v7 + 23) = 0;
    }
  }

  FigSimpleMutexUnlock();
  return v6;
}

void _addNewImageRecordForDeferredSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_106();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_15_11();
  v34 = v33;
  v36 = v35;
  a10 = 0;
  if (!_addNewImageRecord(v35, v33, v37, v38, v39, 0, v28, &a10))
  {
    v40 = a10;
    *a10 = 2;
    v40[10] = v32;
    v40[14] = v30;
    v40[15] = CMPhotoDictionaryCreateDeepCopy(*v36, 0, v24);
    if (v22)
    {
      v41 = CFRetain(v22);
    }

    else
    {
      v41 = 0;
    }

    v40[17] = v41;
    if (!v34)
    {
      ++*(v36 + 64);
    }

    OUTLINED_FUNCTION_34_0();
    if (v42)
    {
      OUTLINED_FUNCTION_0_6(822280369);
    }

    if (!_checkForMIAFConstraints(v36, v34, v24, v23, v22, *v28, v30))
    {
      OUTLINED_FUNCTION_34_0();
      if (v42)
      {
        OUTLINED_FUNCTION_0_6(822280370);
      }
    }
  }

  OUTLINED_FUNCTION_105();
}

void _addNewImageRecordForCollection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_106();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  a10 = 0;
  if (!_addNewImageRecord(v38, v36, v34, v32, v30, 0, v24, &a10))
  {
    v40 = a10;
    *a10 = 0;
    v40[18] = v27;
    *(v40 + 14) = v29;
    if (!v37)
    {
      ++*(v39 + 64);
    }

    OUTLINED_FUNCTION_34_0();
    if (v41)
    {
      OUTLINED_FUNCTION_44();
      kdebug_trace();
    }

    if (!_checkForMIAFConstraints(v39, v37, v35, v33, v31, *v25, v29))
    {
      OUTLINED_FUNCTION_34_0();
      if (v41)
      {
        OUTLINED_FUNCTION_44();
        kdebug_trace();
      }

      CMPhotoCFDictionaryGetBooleanIfPresent();
    }
  }

  OUTLINED_FUNCTION_105();
}

uint64_t CMPhotoHEIFFileWriterAddDerivedImageToCollection(const __CFAllocator **a1, CFMutableArrayRef a2, const void *a3, int a4, int32_t a5, int32_t a6, const char *a7, CGColorSpace *MutableCopy, __int128 a9, CGColorSpace *a10, CFArrayRef theArray, char a12, unsigned int *a13)
{
  formatDescriptionOut[0] = 0;
  if (!a1)
  {
    return 4294950306;
  }

  Mutable = v13;
  if (a4 == 1)
  {
    if (!theArray || CFArrayGetCount(theArray) != 2)
    {
      goto LABEL_19;
    }

LABEL_9:
    v59 = a3;
    if (MutableCopy)
    {
      Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v64 = 0;
        value = 0;
        v63 = 0;
        CMPhotoGetTripletsForColorSpace(MutableCopy, 875704422, &value, &v64, &v63);
        v24 = v23;
        v25 = CGColorSpaceContainsFlexGTCInfo();
        if (v24 || (v25 & 1) != 0)
        {
          v28 = CGColorSpaceCopyICCData(MutableCopy);
          if (!v28)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_12();
            v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v13, v59);
            goto LABEL_110;
          }

          v29 = v28;
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6960070], v28);
          CFRelease(v29);
        }

        else
        {
          if (value)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D88], value);
          }

          if (v64)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6965F30], v64);
          }

          if (v63)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6965F98], v63);
          }
        }

LABEL_33:
        v31 = CMVideoFormatDescriptionCreate(*a1, 0x64696D67u, a5, a6, Mutable, formatDescriptionOut);
        if (!v31)
        {
          v31 = FigSimpleMutexLock();
          if (!v31)
          {
            if (!*(a1 + 32))
            {
              HIDWORD(v62) = -1;
              if (!FigCFArrayGetInt32AtIndex())
              {
                goto LABEL_97;
              }

              ValueAtIndex = FigCFArrayGetValueAtIndex();
              if (!ValueAtIndex)
              {
                goto LABEL_97;
              }

              v33 = ValueAtIndex;
              v34 = *(ValueAtIndex + 48);
              if (v34)
              {
                Count = CFArrayGetCount(v34);
                v61 = 0;
                if (CMPhotoCFArrayGetSizeAtIndex(*(v33 + 48), 0, &v61))
                {
                  MutableCopy = FigCFDictionaryCreateMutableCopy();
                  if (MutableCopy)
                  {
                    HIDWORD(v60) = -1;
                    if (a4 != 1)
                    {
                      cmpweak_kFigPictureCollectionWriterOption_IdentityInputItemID();
                      v44 = FigCFDictionarySetInt64();
                      a2 = 0;
                      if (v44)
                      {
                        v27 = v44;
                        v26 = 0;
                        goto LABEL_78;
                      }

                      v45 = Mutable;
LABEL_60:
                      v26 = CFArrayCreateMutable(*a1, Count, MEMORY[0x1E695E9C0]);
                      if (v26)
                      {
                        CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6972208], v26);
                        if (Count)
                        {
                          do
                          {
                            appended = FigCFArrayAppendInt64();
                            if (appended)
                            {
                              goto LABEL_96;
                            }
                          }

                          while (--Count);
                        }

                        LODWORD(v60) = 0;
                        v50 = a1[2];
                        v51 = formatDescriptionOut[0];
                        v52 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                        if (!v52)
                        {
                          v27 = 4294954514;
LABEL_77:
                          Mutable = v45;
LABEL_78:
                          FigSimpleMutexUnlock();
                          goto LABEL_85;
                        }

                        appended = v52(v50, 1684630887, v51, MutableCopy, &v60);
                        if (appended || (_addNewImageRecordForCollection(a1, 0, MutableCopy, 1684630887, formatDescriptionOut[0], SHIDWORD(v62), v60, a13, v58, v13, v59, v60, v61, v62, v63, v64, value, formatDescriptionOut[0], formatDescriptionOut[1], formatDescriptionOut[2], formatDescriptionOut[3], formatDescriptionOut[4]), appended))
                        {
LABEL_96:
                          v27 = appended;
                          goto LABEL_77;
                        }

                        if (!a12)
                        {
                          v55 = 0;
                          goto LABEL_80;
                        }

                        if (a1[11] || (v53 = FigCFArrayCreateMutableCopy(), (a1[11] = v53) != 0))
                        {
                          v54 = FigCFArrayCreateMutableCopy();
                          if (v54)
                          {
                            v55 = v54;
                            v56 = FigCFArrayAppendInt32();
                            if (v56 || (v56 = FigCFArrayAppendInt32(), v56) || HIDWORD(v60) != -1 && (v56 = FigCFArrayAppendInt32(), v56))
                            {
                              v27 = v56;
                              FigSimpleMutexUnlock();
LABEL_83:
                              CFRelease(v55);
LABEL_84:
                              Mutable = v45;
                              goto LABEL_85;
                            }

                            CFArrayAppendValue(a1[11], v55);
LABEL_80:
                            if (a4 == 1)
                            {
                              CFSetAddValue(a1[13], 0x746D6170);
                            }

                            FigSimpleMutexUnlock();
                            v27 = 0;
                            if (!v55)
                            {
                              goto LABEL_84;
                            }

                            goto LABEL_83;
                          }
                        }
                      }

                      v27 = 4294950305;
                      goto LABEL_77;
                    }

                    v36 = *a1;
                    v37 = CFArrayGetCount(theArray);
                    a2 = CFArrayCreateMutable(v36, v37, MEMORY[0x1E695E9C0]);
                    if (a2)
                    {
                      if (!FigCFArrayGetInt32AtIndex())
                      {
                        goto LABEL_98;
                      }

                      v38 = FigCFArrayGetValueAtIndex();
                      if (!v38)
                      {
                        goto LABEL_98;
                      }

                      v39 = v38;
                      v40 = FigCFArrayAppendInt64();
                      if (!v40)
                      {
                        v40 = FigCFArrayAppendInt64();
                        if (!v40)
                        {
                          v41 = *(v39 + 48);
                          if (v41)
                          {
                            v42 = CFArrayGetCount(v41);
                            v43 = *(v39 + 48);
                            if (Count <= v42)
                            {
                              if (v43)
                              {
                                Count = CFArrayGetCount(v43);
                                v43 = *(v39 + 48);
                              }

                              else
                              {
                                Count = 0;
                              }
                            }

                            value = 0;
                            if (!CMPhotoCFArrayGetSizeAtIndex(v43, 0, &value))
                            {
                              goto LABEL_98;
                            }

                            v46 = v61;
                            if (v61 <= value)
                            {
                              v46 = value;
                            }

                            v61 = v46;
                          }

                          if (v59)
                          {
                            v45 = Mutable;
                            v47 = cmpweak_kFigPictureCollectionWriterOption_TonemapMetadata();
                            CFDictionarySetValue(MutableCopy, v47, v59);
                            v48 = cmpweak_kFigPictureCollectionWriterOption_TonemapInputItemIDs();
                            CFDictionarySetValue(MutableCopy, v48, a2);
                            goto LABEL_60;
                          }

LABEL_98:
                          v26 = 0;
                          v27 = 4294950306;
                          goto LABEL_78;
                        }
                      }

                      v27 = v40;
LABEL_105:
                      v26 = 0;
                      goto LABEL_78;
                    }
                  }

                  else
                  {
                    a2 = 0;
                  }

                  v26 = 0;
                  v27 = 4294950305;
                  goto LABEL_78;
                }

LABEL_97:
                OUTLINED_FUNCTION_70();
                goto LABEL_98;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_12();
            v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            OUTLINED_FUNCTION_70();
            goto LABEL_105;
          }
        }

LABEL_110:
        v27 = v31;
        OUTLINED_FUNCTION_70();
        v26 = 0;
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_70();
      v26 = 0;
    }

    else
    {
      Mutable = *(&a9 + 1);
      MutableCopy = a10;
      if (!a9 && __PAIR128__(*(&a9 + 1), 0) == a10)
      {
        Mutable = 0;
        goto LABEL_33;
      }

      v58 = a7;
      v30 = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v26 = v30;
      if (v30)
      {
        if (a9)
        {
          CFDictionarySetValue(v30, *MEMORY[0x1E6965D88], a9);
        }

        if (*(&a9 + 1))
        {
          CFDictionarySetValue(v26, *MEMORY[0x1E6965F30], *(&a9 + 1));
        }

        Mutable = v26;
        if (a10)
        {
          CFDictionarySetValue(v26, *MEMORY[0x1E6965F98], a10);
        }

        goto LABEL_33;
      }

      OUTLINED_FUNCTION_16_6();
    }

    v27 = 4294950305;
    goto LABEL_85;
  }

  if (a4 != 2)
  {
    OUTLINED_FUNCTION_16_6();
    v26 = 0;
    v27 = 4294950300;
    goto LABEL_85;
  }

  if (theArray && CFArrayGetCount(theArray) == 1)
  {
    goto LABEL_9;
  }

LABEL_19:
  OUTLINED_FUNCTION_16_6();
  v26 = 0;
  v27 = 4294950306;
LABEL_85:
  if (formatDescriptionOut[0])
  {
    CFRelease(formatDescriptionOut[0]);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v27;
}

uint64_t CMPhotoHEIFFileWriterAddAuxiliaryReferenceToImage(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_31_1();
  v5 = OUTLINED_FUNCTION_14_11(v4);
  if (v5)
  {
    return v5;
  }

  if (*(v1 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
    goto LABEL_17;
  }

  if (v3 < 0)
  {
    goto LABEL_20;
  }

  Count = *(v1 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v3)
  {
    goto LABEL_20;
  }

  v7 = OUTLINED_FUNCTION_21_6();
  if (v7[1] != 2)
  {
    goto LABEL_21;
  }

  v8 = v7;
  if (*v7)
  {
    goto LABEL_21;
  }

  if (v2 < 0)
  {
    goto LABEL_20;
  }

  v9 = *(v1 + 40);
  if (v9)
  {
    v9 = CFArrayGetCount(v9);
  }

  if (v9 <= v2)
  {
LABEL_20:
    v12 = 4294950306;
    goto LABEL_18;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 40), v2);
  if (ValueAtIndex[1] || *ValueAtIndex)
  {
LABEL_21:
    v12 = 4294950302;
    goto LABEL_18;
  }

  v11 = _addItemReference(v1, ValueAtIndex[18], v8[18], 1635088492);
LABEL_17:
  v12 = v11;
LABEL_18:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t _addItemReference(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v9 = MutableCopy;
  appended = CMPhotoCFArrayAppendInt32(MutableCopy, v6);
  if (!appended)
  {
    v11 = a1[2];
    v12 = *(CMBaseObjectGetVTable() + 16);
    if (*v12 < 5uLL || (v13 = v12[17]) == 0)
    {
      v14 = 4294954514;
      goto LABEL_8;
    }

    appended = v13(v11, a3, v9, a4, 0);
  }

  v14 = appended;
LABEL_8:
  CFRelease(v9);
  return v14;
}

uint64_t CMPhotoHEIFFileWriterAddMetadataReferenceToImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  v6 = OUTLINED_FUNCTION_14_11(a1);
  if (v6)
  {
    return v6;
  }

  if (*(v3 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
  }

  else
  {
    if (a3 < 0)
    {
      goto LABEL_13;
    }

    Count = *(v3 + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= a3)
    {
LABEL_13:
      v10 = 4294950306;
      goto LABEL_11;
    }

    v8 = OUTLINED_FUNCTION_35_2();
    if (*v8)
    {
      v10 = 4294950302;
      goto LABEL_11;
    }

    v9 = _addItemReference(v3, v8[18], a2, 1667527523);
  }

  v10 = v9;
LABEL_11:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t _addSampleBufferToCollection(uint64_t a1, uint64_t a2, const void *a3, void *value)
{
  if ((*(a2 + 4) | 2) == 2)
  {
    v8 = *(a2 + 72);
    CFArrayAppendValue(*(a1 + 200), value);
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = *MEMORY[0x1E695E738];
    }

    CFArrayAppendValue(*(a1 + 208), v9);
    CFArrayAppendValue(*(a1 + 216), v8);
    *(a1 + 192) += CMSampleBufferGetTotalSampleSize(value);
    while (*(a1 + 192) > *(a1 + 184))
    {
      result = _reorderingBufferDequeueFirstSample(a1);
      if (result)
      {
        return result;
      }
    }

LABEL_11:
    TotalSampleSize = CMSampleBufferGetTotalSampleSize(value);
    result = 0;
    *(a2 + 64) += TotalSampleSize;
    return result;
  }

  v11 = *(a1 + 16);
  v12 = *(a2 + 72);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v13)
  {
    result = v13(v11, v12, a3, value);
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  return 4294954514;
}

uint64_t _createMovieWriterIfNeeded(CFAllocatorRef *a1)
{
  if (a1[3])
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v3 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6971B30], *MEMORY[0x1E6971B60]);
  CFDictionarySetValue(v3, *MEMORY[0x1E6971BB8], *MEMORY[0x1E6971BC0]);
  v4 = FigMovieFormatWriterCreateWithByteStream();
  CFRelease(v3);
  return v4;
}

uint64_t CMPhotoHEIFFileWriterGetMetadataCount(void *a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a1[2])
  {
    return 4294950304;
  }

  OUTLINED_FUNCTION_32_1();
  v4 = FigSimpleMutexLock();
  if (v4)
  {
    return v4;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  Count = a1[5];
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v2)
  {
LABEL_16:
    v8 = 4294950306;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_35_2();
    if (*v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 18);
      if (v7)
      {
        v7 = CFArrayGetCount(v7);
      }
    }

    v8 = 0;
    if (v1)
    {
      *v1 = v7;
    }
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t CMPhotoHEIFFileWriterAddGroup(void *a1, int a2, void *a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a1[2])
  {
    return 4294950304;
  }

  v6 = FigSimpleMutexLock();
  if (v6)
  {
    return v6;
  }

  if (*(a1 + 32))
  {
    goto LABEL_25;
  }

  if (a2 == 1634497650)
  {
    v7 = MEMORY[0x1E6972278];
  }

  else
  {
    if (a2 != 1937007986)
    {
LABEL_25:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7();
      v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_26;
    }

    v7 = MEMORY[0x1E6972280];
  }

  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_25;
  }

  v9 = *(CMBaseObjectGetVTable() + 16);
  if (*v9 < 2uLL || !v9[12])
  {
    v17 = 4294954514;
LABEL_27:
    FigSimpleMutexUnlock();
    return v17;
  }

  OUTLINED_FUNCTION_44();
  v11 = v10();
  if (v11)
  {
LABEL_26:
    v17 = v11;
    goto LABEL_27;
  }

  if (!a1[7] && (Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (a1[7] = Mutable) == 0) || (MutableCopy = FigCFDictionaryCreateMutableCopy()) == 0)
  {
    v17 = 4294950305;
    goto LABEL_27;
  }

  v14 = MutableCopy;
  v15 = CFArrayCreateMutable(*a1, 0, MEMORY[0x1E695E9C0]);
  if (v15)
  {
    CFDictionarySetValue(v14, *MEMORY[0x1E69722A0], v15);
    CFDictionarySetValue(v14, *MEMORY[0x1E69722A8], v8);
    Int = CMPhotoCFNumberCreateInt(0);
    if (Int)
    {
      CFDictionarySetValue(a1[7], Int, v14);
      v17 = 0;
      if (a3)
      {
        *a3 = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    Int = 0;
  }

  v17 = 4294950305;
LABEL_20:
  FigSimpleMutexUnlock();
  CFRelease(v14);
  if (v15)
  {
    CFRelease(v15);
  }

  if (Int)
  {
    CFRelease(Int);
  }

  return v17;
}

uint64_t CMPhotoHEIFFileWriterAddGroupProperties(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_32_1();
  v5 = OUTLINED_FUNCTION_14_11(v4);
  if (v5)
  {
    return v5;
  }

  if (FigCFDictionaryGetCount() <= 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    goto LABEL_13;
  }

  if (!v1[10] && (Mutable = CFDictionaryCreateMutable(*v1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (v1[10] = Mutable) == 0) || (Int = CMPhotoCFNumberCreateInt(v3)) == 0)
  {
    v9 = 4294950305;
LABEL_13:
    FigSimpleMutexUnlock();
    return v9;
  }

  v8 = Int;
  CFDictionarySetValue(v1[10], Int, v2);
  FigSimpleMutexUnlock();
  CFRelease(v8);
  return 0;
}

uint64_t CMPhotoHEIFFileWriterAddImageToGroup(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!*(a1 + 16))
  {
    return 4294950304;
  }

  OUTLINED_FUNCTION_31_1();
  v4 = FigSimpleMutexLock();
  if (v4)
  {
    return v4;
  }

  if (*(a1 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
    goto LABEL_26;
  }

  if (v2 < 0)
  {
    goto LABEL_21;
  }

  Count = *(a1 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v2)
  {
LABEL_21:
    appended = 4294950306;
    goto LABEL_19;
  }

  v6 = OUTLINED_FUNCTION_21_6();
  if (v6[1])
  {
    appended = 4294950302;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = *(a1 + 16);
  v9 = v6[18];
  v10 = *(CMBaseObjectGetVTable() + 16);
  if (*v10 < 2uLL || (v11 = v10[13]) == 0)
  {
    appended = 4294954514;
LABEL_19:
    FigSimpleMutexUnlock();
    return appended;
  }

  v12 = v11(v8, v9, v1, 0);
  if (v12)
  {
LABEL_26:
    appended = v12;
    goto LABEL_19;
  }

  Int = CMPhotoCFNumberCreateInt(v1);
  if (!Int)
  {
    appended = 4294950305;
    goto LABEL_19;
  }

  v14 = OUTLINED_FUNCTION_23_3(Int);
  if (v14 && (Value = CFDictionaryGetValue(v14, *MEMORY[0x1E69722A0])) != 0)
  {
    appended = CMPhotoCFArrayAppendInt32(Value, v7[18]);
  }

  else
  {
    appended = 4294950304;
  }

  FigSimpleMutexUnlock();
  CFRelease(v1);
  return appended;
}

uint64_t CMPhotoHEIFFileWriterAddGroupToGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!*(a1 + 16))
  {
    return 4294950304;
  }

  if (a2 == a3)
  {
    return 4294950306;
  }

  v7 = FigSimpleMutexLock();
  if (v7)
  {
    return v7;
  }

  if (*(a1 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    goto LABEL_24;
  }

  Int = CMPhotoCFNumberCreateInt(a3);
  if (!Int)
  {
    goto LABEL_20;
  }

  v9 = OUTLINED_FUNCTION_23_3(Int);
  if (!v9)
  {
LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_26:
    appended = v17;
    goto LABEL_17;
  }

  v10 = v9;
  CFRelease(v3);
  v11 = CMPhotoCFNumberCreateInt(a2);
  if (!v11)
  {
LABEL_20:
    appended = 4294950305;
LABEL_24:
    FigSimpleMutexUnlock();
    return appended;
  }

  if (!OUTLINED_FUNCTION_23_3(v11))
  {
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(v10, *MEMORY[0x1E69722A0]);
  if (!Value)
  {
    appended = 4294950304;
    goto LABEL_17;
  }

  v13 = Value;
  v14 = *(a1 + 16);
  v15 = *(CMBaseObjectGetVTable() + 16);
  if (*v15 >= 7uLL)
  {
    v16 = v15[19];
    if (v16)
    {
      v17 = v16(v14, a2, a3, 0);
      if (!v17)
      {
        appended = CMPhotoCFArrayAppendInt32(v13, a2);
        if (!appended)
        {
          OUTLINED_FUNCTION_22_3();
        }

        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  appended = 4294954514;
LABEL_17:
  FigSimpleMutexUnlock();
  CFRelease(v3);
  return appended;
}

uint64_t CMPhotoHEIFFileWriterGetPropertiesForImage(uint64_t a1, uint64_t a2, _OWORD *a3, _DWORD *a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  v8 = OUTLINED_FUNCTION_14_11(a1);
  if (v8)
  {
    return v8;
  }

  if (a2 < 0)
  {
    goto LABEL_13;
  }

  Count = *(v4 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
LABEL_13:
    v11 = 4294950306;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_21_6();
    if (a3)
    {
      *a3 = v10[1];
    }

    v11 = 0;
    if (a4)
    {
      *a4 = *(v10 + 2);
    }
  }

  FigSimpleMutexUnlock();
  return v11;
}

uint64_t CMPhotoHEIFFileWriterGetPropertiesForSequence(uint64_t a1, CFIndex a2, int a3, _OWORD *a4, _DWORD *a5)
{
  if (!a1)
  {
    return 4294950306;
  }

  v10 = OUTLINED_FUNCTION_14_11(a1);
  if (v10)
  {
    return v10;
  }

  if (a2 < 0)
  {
    goto LABEL_21;
  }

  Count = *(v5 + 48);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
LABEL_21:
    v13 = 4294950306;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 48), a2);
    switch(a3)
    {
      case 0:
LABEL_12:
        if (!*(ValueAtIndex + 7) || ValueAtIndex[2] == 0)
        {
          v13 = 4294950303;
        }

        else
        {
          if (a4)
          {
            *a4 = ValueAtIndex[2];
          }

          v13 = 0;
          if (a5)
          {
            *a5 = *(ValueAtIndex + 7);
          }
        }

        goto LABEL_19;
      case 2:
        ValueAtIndex += 6;
        goto LABEL_12;
      case 1:
        ValueAtIndex += 3;
        goto LABEL_12;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
  }

LABEL_19:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t CMPhotoHEIFFileWriterGetOrientationTransformsForImage(uint64_t a1, CFIndex a2, _BYTE *a3, _DWORD *a4, _BYTE *a5, _DWORD *a6)
{
  if (!a1)
  {
    return 4294950306;
  }

  v12 = OUTLINED_FUNCTION_14_11(a1);
  if (v12)
  {
    return v12;
  }

  if (a2 < 0)
  {
    goto LABEL_17;
  }

  Count = *(v6 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
LABEL_17:
    v15 = 4294950306;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 40), a2);
    if (a3)
    {
      *a3 = ValueAtIndex[32];
    }

    if (a4)
    {
      *a4 = *(ValueAtIndex + 9);
    }

    if (a5)
    {
      *a5 = ValueAtIndex[40];
    }

    v15 = 0;
    if (a6)
    {
      *a6 = *(ValueAtIndex + 11);
    }
  }

  FigSimpleMutexUnlock();
  return v15;
}

uint64_t CMPhotoHEIFFileWriterGetSequenceHandleForImage(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  v8 = OUTLINED_FUNCTION_14_11(a1);
  if (v8)
  {
    return v8;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    Count = *(v4 + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count > a2)
    {
      v10 = OUTLINED_FUNCTION_21_6();
      if ((*v10 - 1) > 1)
      {
        v12 = 0;
        v11 = -1;
        if (!a3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v11 = v10[10];
        v12 = 1;
        if (!a3)
        {
LABEL_12:
          v13 = 0;
          if (a4)
          {
            *a4 = v11;
          }

          goto LABEL_14;
        }
      }

      *a3 = v12;
      goto LABEL_12;
    }
  }

  v13 = 4294950306;
LABEL_14:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t CMPhotoHEIFFileWriterGetTimeStampForImage(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_31_1();
  v5 = OUTLINED_FUNCTION_14_11(v4);
  if (v5)
  {
    return v5;
  }

  if (v3 < 0)
  {
    goto LABEL_11;
  }

  Count = *(v1 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v3)
  {
LABEL_11:
    v8 = 4294950306;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_21_6();
    v8 = 0;
    if (v2)
    {
      v9 = *(v7 + 88);
      *(v2 + 16) = *(v7 + 13);
      *v2 = v9;
    }
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t CMPhotoHEIFFileWriterSetTimeStampForImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (*(a3 + 12) & 1) == 0)
  {
    return 4294950306;
  }

  v6 = OUTLINED_FUNCTION_14_11(a1);
  if (v6)
  {
    return v6;
  }

  if (a2 < 0)
  {
    goto LABEL_12;
  }

  Count = *(v3 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
LABEL_12:
    v9 = 4294950306;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_2();
    v9 = 0;
    v10 = *(a3 + 16);
    *(v8 + 88) = *a3;
    *(v8 + 13) = v10;
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t CMPhotoHEIFFileWriterCompareReservedImageHandleWithOptions(uint64_t a1, const __CFDictionary *a2, int a3, const opaqueCMFormatDescription *a4, CFIndex a5)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  if (CMPhotoHEIFFileWriterCompareReservedImageHandleWithOptions_onceToken != -1)
  {
    dispatch_once(&CMPhotoHEIFFileWriterCompareReservedImageHandleWithOptions_onceToken, &__block_literal_global_11);
  }

  if (FigSimpleMutexLock())
  {
    return 0;
  }

  CFArrayGetValueAtIndex(*(a1 + 40), a5);
  if (_createHEIFWriterImageHandleConfigurationKey(a2, a3, a4, &cf))
  {
    v10 = 0;
  }

  else
  {
    v10 = FigCFEqual();
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t _createHEIFWriterImageHandleConfigurationKey(const __CFDictionary *a1, int a2, CMVideoFormatDescriptionRef videoDesc, __CFData **a4)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  CleanAperture = CMVideoFormatDescriptionGetCleanAperture(videoDesc, 1u);
  height = CleanAperture.size.height;
  width = CleanAperture.size.width;
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 4294950305;
  }

  v10 = Mutable;
  v11.f64[0] = width;
  v11.f64[1] = height;
  *bytes = a2;
  v25 = vcvtq_u64_f64(vrndaq_f64(v11));
  v26 = Dimensions;
  if (a1)
  {
    BYTE4(v29) = 0;
    LODWORD(v29) = FigCFDictionaryGetIntIfPresent();
    *(&v29 + 6) = -1;
    BYTE5(v29) = FigCFDictionaryGetIntIfPresent();
    BYTE10(v29) = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
    Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6972208]);
    FigCFArrayGetIntAtIndex();
    if (Value)
    {
      Count = CFArrayGetCount(Value);
    }

    else
    {
      Count = 0;
    }

    HIDWORD(v30) = Count;
  }

  if (videoDesc)
  {
    Extension = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965D88]);
    v15 = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965F30]);
    v16 = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965F98]);
    CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6960038]);
    BYTE11(v29) = FigCFEqual();
    HIDWORD(v29) = CVColorPrimariesGetIntegerCodePointForString(Extension);
    LODWORD(v30) = CMPhotoCVYCbCrMatrixGetIntegerCodePointForString(v16);
    DWORD1(v30) = CVTransferFunctionGetIntegerCodePointForString(v15);
    if (v30 == 2 && FigCFEqual())
    {
      LODWORD(v30) = 0;
    }

    v17 = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965D70]);
    *&v27 = CMPhotoGetCropRectFromCLAPDict(v17, Dimensions.width, Dimensions.height);
    *(&v27 + 1) = v18;
    *&v28 = v19;
    *(&v28 + 1) = v20;
  }

  CFDataAppendBytes(v10, bytes, 92);
  if (a4)
  {
    result = 0;
    *a4 = v10;
  }

  else
  {
    CFRelease(v10);
    return 0;
  }

  return result;
}

BOOL CMPhotoHEIFFileWriterImageSequenceFirstFrameCompleted(uint64_t a1, int a2, CFIndex idx)
{
  result = 0;
  if (a1 && (idx & 0x8000000000000000) == 0)
  {
    Count = *(a1 + 48);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    return Count > idx && *(CFArrayGetValueAtIndex(*(a1 + 48), idx) + 1) > 1;
  }

  return result;
}

uint64_t _pendingGroupPropertiesApplier(uint64_t key, uint64_t a2, _DWORD *a3)
{
  if (!a3[2])
  {
    Value = CFDictionaryGetValue(*(*a3 + 56), key);
    if (Value && CFDictionaryGetValue(Value, *MEMORY[0x1E69722A0]))
    {
      UInt32 = FigCFNumberGetUInt32();
      v7 = *(*a3 + 16);
      v8 = *(CMBaseObjectGetVTable() + 16);
      if (*v8 >= 6uLL && (v9 = v8[18]) != 0)
      {
        key = v9(v7, UInt32, a2, 0);
      }

      else
      {
        key = 4294954514;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
      key = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    a3[2] = key;
  }

  return key;
}

void ___writePendingReferencesIfNeeded_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_106();
  v25 = v24;
  v27 = v26;
  if (!FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex() || v25 && CFArrayGetCount(v25) >= 3 && !FigCFArrayGetInt32AtIndex())
  {
    v33 = (v27 + 32);
    v47 = -16992;
LABEL_35:
    *(*(*v33 + 8) + 24) = v47;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_28_4();
  ValueAtIndex = FigCFArrayGetValueAtIndex();
  if (!ValueAtIndex || (v29 = ValueAtIndex, OUTLINED_FUNCTION_28_4(), (v30 = FigCFArrayGetValueAtIndex()) == 0))
  {
    v33 = (v27 + 32);
LABEL_34:
    v47 = -16990;
    goto LABEL_35;
  }

  v31 = v30;
  v32 = 0;
  v33 = (v27 + 32);
  while (1)
  {
    Count = OUTLINED_FUNCTION_28_4();
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v32 >= Count)
    {
      break;
    }

    OUTLINED_FUNCTION_28_4();
    v35 = FigCFArrayGetValueAtIndex();
    if (!v35)
    {
      goto LABEL_34;
    }

    if (v32 != -1 && *(v35 + 4) == 2 && *(v35 + 112) == -1)
    {
      v36 = _addItemReference(*(v27 + 40), *(v31 + 72), *(v35 + 72), 1635088492);
      OUTLINED_FUNCTION_0_23(v36);
      if (v37)
      {
        goto LABEL_36;
      }
    }

    ++v32;
  }

  for (i = 0; ; ++i)
  {
    v39 = *(v29 + 144);
    if (v39)
    {
      v39 = CFArrayGetCount(v39);
    }

    if (i >= v39)
    {
      break;
    }

    v40 = FigCFArrayGetValueAtIndex();
    if (v40 && (v41 = CFGetTypeID(v40), v41 == CFNumberGetTypeID()))
    {
      SInt32 = FigCFNumberGetSInt32();
      *(*(*(v27 + 32) + 8) + 24) = _addItemReference(*(v27 + 40), *(v31 + 72), SInt32, 1667527523);
      v45 = *(v27 + 32);
    }

    else
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v42 = OUTLINED_FUNCTION_30_3();
        v44 = v43(v42);
      }

      else
      {
        v44 = -12782;
      }

      *(*(*v33 + 8) + 24) = v44;
      v45 = *v33;
    }

    if (*(*(v45 + 8) + 24))
    {
      break;
    }
  }

LABEL_36:
  OUTLINED_FUNCTION_105();
}

const __CFArray *___addBackwardsCompatibleStereoGroupsIfNeeded_block_invoke(const __CFArray *result, uint64_t a2, uint64_t a3)
{
  if (!*(*(*(result + 4) + 8) + 24))
  {
    v3 = result;
    FigCFDictionaryGetValue();
    result = FigCFEqual();
    if (result)
    {
      result = FigCFDictionaryGetValue();
      if (result)
      {
        result = CFArrayGetCount(result);
        if (result == 3)
        {
          UInt32 = FigCFNumberGetUInt32();
          v38 = 0;
          v5 = *(CMBaseObjectGetVTable() + 16);
          if (*v5 >= 2uLL && v5[12])
          {
            OUTLINED_FUNCTION_44();
            v7 = v6();
          }

          else
          {
            v7 = 4294954514;
          }

          result = OUTLINED_FUNCTION_0_23(v7);
          if (!v8)
          {
            v37 = 0;
            v9 = *(*(v3 + 6) + 16);
            v10 = *(CMBaseObjectGetVTable() + 16);
            if (*v10 >= 2uLL && (v11 = v10[12]) != 0)
            {
              v12 = v11(v9, *MEMORY[0x1E6972278], 0, &v37);
            }

            else
            {
              v12 = 4294954514;
            }

            result = OUTLINED_FUNCTION_0_23(v12);
            if (!v13)
            {
              OUTLINED_FUNCTION_9_0();
              result = FigCFArrayGetInt32AtIndex();
              if (result)
              {
                result = FigCFArrayGetInt32AtIndex();
                if (result)
                {
                  v14 = *(CMBaseObjectGetVTable() + 16);
                  if (*v14 >= 2uLL && v14[13])
                  {
                    v15 = OUTLINED_FUNCTION_27();
                    v17 = v16(v15);
                  }

                  else
                  {
                    v17 = 4294954514;
                  }

                  result = OUTLINED_FUNCTION_0_23(v17);
                  if (!v18)
                  {
                    v19 = *(CMBaseObjectGetVTable() + 16);
                    if (*v19 >= 2uLL && v19[13])
                    {
                      v20 = OUTLINED_FUNCTION_27();
                      v22 = v21(v20);
                    }

                    else
                    {
                      v22 = 4294954514;
                    }

                    result = OUTLINED_FUNCTION_0_23(v22);
                    if (!v23)
                    {
                      v24 = *(*(v3 + 6) + 16);
                      v25 = v37;
                      v26 = *(CMBaseObjectGetVTable() + 16);
                      if (*v26 >= 7uLL && (v27 = v26[19]) != 0)
                      {
                        v28 = v27(v24, UInt32, v25, 0);
                      }

                      else
                      {
                        v28 = 4294954514;
                      }

                      result = OUTLINED_FUNCTION_0_23(v28);
                      if (!v29)
                      {
                        v30 = *(*(v3 + 6) + 16);
                        v32 = v37;
                        v31 = v38;
                        v33 = *(CMBaseObjectGetVTable() + 16);
                        if (*v33 >= 7uLL && (v34 = v33[19]) != 0)
                        {
                          v35 = v34(v30, v31, v32, 0);
                        }

                        else
                        {
                          v35 = 4294954514;
                        }

                        result = OUTLINED_FUNCTION_0_23(v35);
                        if (!v36)
                        {
                          *(*(*(v3 + 5) + 8) + 24) = 1;
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

      else
      {
        *(*(*(v3 + 4) + 8) + 24) = -16992;
      }
    }
  }

  return result;
}

uint64_t _reorderingBufferDequeueFirstSample(uint64_t a1)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 200), 0);
  v3 = CFArrayGetValueAtIndex(*(a1 + 216), 0);
  v4 = CFArrayGetValueAtIndex(*(a1 + 208), 0);
  if (v4 == *MEMORY[0x1E695E738])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a1 + 16);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v7)
  {
    return 4294954514;
  }

  result = v7(v6, v3, v5, ValueAtIndex);
  if (!result)
  {
    TotalSampleSize = CMSampleBufferGetTotalSampleSize(ValueAtIndex);
    v10 = *(a1 + 200);
    *(a1 + 192) -= TotalSampleSize;
    CFArrayRemoveValueAtIndex(v10, 0);
    CFArrayRemoveValueAtIndex(*(a1 + 208), 0);
    CFArrayRemoveValueAtIndex(*(a1 + 216), 0);
    return 0;
  }

  return result;
}

uint64_t _areSiblingThumbnailsMIAFCompliant(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (*(a2 + 128) && (OUTLINED_FUNCTION_32_1(), v9 = CFArrayGetCount(v8), v9 >= 1))
  {
    v10 = v9;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 128), v11);
      if (ValueAtIndex < 0)
      {
        return 4294950306;
      }

      v13 = ValueAtIndex;
      Count = *(a1 + 40);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count < v13)
      {
        return 4294950306;
      }

      v15 = CFArrayGetValueAtIndex(*(a1 + 40), v13);
      v16 = v15[3] * v15[2];
      if (v16 > v4 && v16 / v4 < 0xC9)
      {
        v17 = 1;
        goto LABEL_12;
      }

      if (v10 == ++v11)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v17 = 0;
LABEL_12:
    result = 0;
    if (a4)
    {
      *a4 = v17;
    }
  }

  return result;
}

uint64_t _addFirstSampleReferenceToTrack(CFAllocatorRef *a1, uint64_t a2, uint64_t a3)
{
  valuePtr = a3;
  CopyWithNoData = FigSampleBufferCreateCopyWithNoData();
  if (CopyWithNoData)
  {
    return CopyWithNoData;
  }

  v6 = CFNumberCreate(*a1, kCFNumberSInt64Type, &valuePtr);
  if (!v6)
  {
    return 4294950305;
  }

  v7 = v6;
  CMSetAttachment(0, *MEMORY[0x1E6960528], v6, 1u);
  if (*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v8 = OUTLINED_FUNCTION_27();
    v10 = v9(v8);
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v11 = *(a2 + 16);
      if (v11)
      {
        CFRelease(v11);
        v12 = 0;
        *(a2 + 16) = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(v7);
  return v12;
}

void _getSampleOffsetFromPictureReader()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  dict = 0;
  v14 = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    if (!v4(v1, &v18))
    {
      CMBaseObject = FigPictureTileCursorServiceGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        if (!v6(CMBaseObject, *MEMORY[0x1E69723D8], v3, &dict))
        {
          size.width = 0.0;
          size.height = 0.0;
          if (!CGSizeMakeWithDictionaryRepresentation(dict, &size) || (v7 = vmovn_s64(vmvnq_s8(vceqq_s64(vcvtq_u64_f64(vrndaq_f64(size)), vdupq_n_s64(1uLL)))), ((v7.i32[0] | v7.i32[1]) & 1) != 0))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }

          else
          {
            v8 = v18;
            v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v9)
            {
              if (!v9(v8, &v17))
              {
                v12 = 0;
                v10 = v17;
                v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                if (v11)
                {
                  if (!v11(v10, &v12, &v15, &v14, 0, 0))
                  {
                    if (v12 == 1)
                    {
                      *v0 = *v15;
                    }

                    else
                    {
                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_1();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
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

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (dict)
  {
    CFRelease(dict);
  }

  free(v15);
  free(v14);
}

uint64_t _appendTrackReferenceIfValid(uint64_t a1, uint64_t a2, CFAllocatorRef allocator, CFMutableArrayRef *a4)
{
  v4 = a1;
  result = 0;
  if (v4 && a2)
  {
    if (*a4 || (Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]), (*a4 = Mutable) != 0))
    {
      result = FigCFArrayAppendInt32();
      if (!result)
      {

        return FigCFArrayAppendInt32();
      }
    }

    else
    {
      return 4294950305;
    }
  }

  return result;
}

uint64_t _updateSampleDescriptionExtensions(const __CFAllocator **a1, uint64_t a2)
{
  cf = 0;
  theArray = 0;
  v4 = a1[3];
  v5 = *a1;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    v13 = 0;
    v10 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v7 = v6(v4, a2, *MEMORY[0x1E6971D20], v5, &theArray);
  if (v7)
  {
    goto LABEL_32;
  }

  if (!theArray || CFArrayGetCount(theArray) != 1 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), !CMFormatDescriptionGetExtensions(ValueAtIndex)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_32:
    v15 = v7;
    v13 = 0;
    v10 = 0;
    goto LABEL_37;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v10 = MutableCopy;
  if (MutableCopy)
  {
    v11 = *MEMORY[0x1E69600A0];
    if (CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69600A0]))
    {
      v12 = FigCFDictionaryCreateMutableCopy();
      v13 = v12;
      if (v12)
      {
        if (CFDictionaryContainsKey(v12, @"ccst"))
        {
          v14 = 0;
          v15 = 0;
          goto LABEL_13;
        }

        *bytes = 0;
        Mutable = CFDataCreateMutable(*a1, 0);
        if (Mutable)
        {
          v18 = Mutable;
          *v31 = 132;
          CFDataAppendBytes(Mutable, bytes, 4);
          CFDataAppendBytes(v18, v31, 4);
          CFDictionarySetValue(v13, @"ccst", v18);
          CFRelease(v18);
          goto LABEL_26;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_1();
        v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, cf, theArray);
        if (!v23)
        {
LABEL_26:
          CFDictionarySetValue(v10, v11, v13);
          CFDictionaryRemoveValue(v10, *MEMORY[0x1E69600D0]);
          CFDictionaryRemoveValue(v10, *MEMORY[0x1E69600C8]);
          v19 = *a1;
          MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
          width = CMVideoFormatDescriptionGetDimensions(ValueAtIndex).width;
          Dimensions = CMVideoFormatDescriptionGetDimensions(ValueAtIndex);
          v23 = CMVideoFormatDescriptionCreate(v19, MediaSubType, width, Dimensions.height, v10, &cf);
          if (!v23)
          {
            v24 = CFArrayCreateMutable(*a1, 0, MEMORY[0x1E695E9C0]);
            v14 = v24;
            if (!v24)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_2_1();
              v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, cf, theArray);
              goto LABEL_30;
            }

            CFArrayAppendValue(v24, cf);
            if (*(*(CMBaseObjectGetVTable() + 16) + 24))
            {
              v25 = OUTLINED_FUNCTION_27();
              v27 = v26(v25);
LABEL_30:
              v15 = v27;
              goto LABEL_13;
            }

LABEL_12:
            v15 = 4294954514;
            goto LABEL_13;
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_1();
        v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, cf, theArray);
      }

      v15 = v23;
      goto LABEL_37;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_1();
  v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  v13 = 0;
LABEL_37:
  v14 = 0;
LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v15;
}

uint64_t _dataBlobArrayNewEntry(void *a1, size_t a2, void *a3, void *a4)
{
  v8 = CFGetAllocator(a1);
  v9 = MEMORY[0x1AC550000](v8, a2, 698487154, 0);
  if (!v9)
  {
    return 4294950305;
  }

  v10 = v9;
  bzero(v9, a2);
  CFArrayAppendValue(a1, v10);
  if (a4)
  {
    *a4 = CFArrayGetCount(a1) - 1;
  }

  result = 0;
  if (a3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t _addNewImageRecord(uint64_t a1, int a2, uint64_t a3, int a4, const opaqueCMFormatDescription *a5, int a6, void *a7, void *a8)
{
  v29 = 0;
  result = _dataBlobArrayNewEntry(*(a1 + 40), 0xA0uLL, &v29, a7);
  if (!result)
  {
    CleanAperture = CMVideoFormatDescriptionGetCleanAperture(a5, 1u);
    v16 = v29;
    *(v29 + 4) = a2;
    *(v16 + 8) = a4;
    height = CleanAperture.size.height;
    *(v16 + 16) = vcvtq_u64_f64(vrndaq_f64(CleanAperture.size));
    v18 = MEMORY[0x1E6960C70];
    *(v16 + 88) = *MEMORY[0x1E6960C70];
    *(v16 + 104) = *(v18 + 16);
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      Value = CFRetain(Value);
    }

    v20 = v29;
    *(v29 + 36) = 0;
    *(v20 + 48) = Value;
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    v22 = v29;
    *(v29 + 44) = -1;
    *(v22 + 32) = IntIfPresent;
    v23 = FigCFDictionaryGetIntIfPresent();
    v24 = v29;
    *(v29 + 56) = 0;
    v24 += 56;
    *(v24 - 16) = v23;
    *(v24 + 8) = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
    if (a2)
    {
      v25 = v29;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*a1, 0, 0);
      v25 = v29;
      *(v29 + 128) = Mutable;
      if (!Mutable)
      {
        return 4294950305;
      }
    }

    v27 = v25[56];
    *(a1 + 224) |= v27;
    if (v27)
    {
      *(a1 + 72) = *a7;
    }

    if (!a6)
    {
      if (v25[32])
      {
        v28 = 1;
      }

      else
      {
        v28 = v25[40] != 0;
      }

      *(a1 + 248) &= v28;
    }

    result = 0;
    *a8 = v25;
  }

  return result;
}

uint64_t _checkForMIAFConstraints(uint64_t a1, int a2, const __CFDictionary *a3, int a4, CMVideoFormatDescriptionRef videoDesc, uint64_t a6, const __CFString *a7)
{
  v81 = a6;
  idx = a7;
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  CleanAperture = CMVideoFormatDescriptionGetCleanAperture(videoDesc, 1u);
  x = CleanAperture.origin.x;
  y = CleanAperture.origin.y;
  width = CleanAperture.size.width;
  height = CleanAperture.size.height;
  HIBYTE(v87[0]) = 0;
  v83[0] = 0;
  v86 = 0;
  HIWORD(v85) = 0;
  BYTE5(v85) = 1;
  MediaSubType = CMFormatDescriptionGetMediaSubType(videoDesc);
  if (CVPixelFormatDescriptionGetDescriptionWithPixelFormatType())
  {
    LOBYTE(cf) = 0;
    BYTE4(v85) = 0;
    v18 = 1;
    if (((MediaSubType - 1278226488) > 0x30 || ((1 << (MediaSubType - 56)) & 0x1400000000001) == 0) && ((MediaSubType - 1278226736) > 6 || ((1 << (MediaSubType - 48)) & 0x45) == 0) && MediaSubType != 1717855600 && MediaSubType != 1751410032)
    {
      v18 = MediaSubType == 1751411059 || MediaSubType == 1717856627;
    }

    v31 = CMPhotoGetBitDepthForPixelFormat(MediaSubType) == 10;
    if (CMPhotoPixelFormatIsSubsampled(MediaSubType, &cf, &v85 + 4, v87 + 7, 0))
    {
      goto LABEL_123;
    }

    if (v18)
    {
      BYTE5(v85) = 0;
      goto LABEL_43;
    }

    if (!HIBYTE(v87[0]))
    {
      BYTE5(v85) = 3;
      goto LABEL_43;
    }

    if (cf && BYTE4(v85))
    {
      v32 = 1;
LABEL_42:
      BYTE5(v85) = v32;
      goto LABEL_43;
    }

    if (cf && !BYTE4(v85))
    {
      v32 = 2;
      goto LABEL_42;
    }
  }

  else
  {
    if (a4 == 1635148593)
    {
      Extension = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E69600A0]);
      if (!Extension)
      {
        goto LABEL_123;
      }

      Value = CFDictionaryGetValue(Extension, @"avcC");
      if (!Value)
      {
        goto LABEL_123;
      }

      v35 = Value;
      CFDataGetBytePtr(Value);
      CFDataGetLength(v35);
      SPSFromAVCC = FigH264Bridge_GetSPSFromAVCC();
      if (SPSFromAVCC)
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_19_7(SPSFromAVCC, v37, v38, v39, v40, v41, v42, v43, v81, idx, v83[0]);
      if (FigH264Bridge_GetSPSChromaFormatAndBitDepths() || HIBYTE(v85) != BYTE6(v85))
      {
        goto LABEL_123;
      }

      goto LABEL_63;
    }

    if (a4 == 1752589105)
    {
      v21 = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E69600A0]);
      if (!v21)
      {
        goto LABEL_123;
      }

      if (!CFDictionaryGetValue(v21, @"hvcC"))
      {
        goto LABEL_123;
      }

      HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex();
      if (HEVCParameterSetAtIndex)
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_19_7(HEVCParameterSetAtIndex, v23, v24, v25, v26, v27, v28, v29, v81, idx, v83[0]);
      if (FigHEVCBridge_GetSPSChromaFormatAndBitDepths())
      {
        goto LABEL_123;
      }

      v30 = BYTE5(v85);
      if (HIBYTE(v85) != BYTE6(v85))
      {
        goto LABEL_123;
      }

      v31 = HIBYTE(v85) == 10;
      goto LABEL_46;
    }

    v31 = 0;
  }

LABEL_43:
  if (a4 != 1635148593)
  {
    if (a4 != 1752589105)
    {
      goto LABEL_61;
    }

    v30 = BYTE5(v85);
LABEL_46:
    v45 = v30 == 3 || v30 == 0;
    *(a1 + 244) |= v45;
    v46 = v30 == 1;
    v47 = v31 && v30 == 1;
    if (v31)
    {
      v46 = 0;
    }

    v48 = v30 == 2 || v47;
    *(a1 + 243) |= v48;
    *(a1 + 242) |= v46;
LABEL_61:
    if (!videoDesc)
    {
      goto LABEL_79;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a1 + 245) |= 1u;
  if (videoDesc)
  {
LABEL_64:
    Extensions = CMFormatDescriptionGetExtensions(videoDesc);
    CMPhotoCreateColorSpaceFromPixelBufferAttachments(Extensions, BYTE5(v85) == 0, &cf, 1, 0, v50, v51, v52, v81, idx, v83[0], v83[1], 0, v85, v86, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6]);
    if (!v53 && (cf || (v54 = FigCFDictionaryGetValue()) == 0 || (cf = CGColorSpaceCreateWithName(v54)) != 0))
    {
      BYTE4(v85) = 1;
      if (a3)
      {
        FigCFDictionaryGetBooleanIfPresent();
        v55 = BYTE4(v85) == 0;
      }

      else
      {
        v55 = 0;
      }

      if (a2)
      {
        v55 = 0;
      }

      if (a2 == 2 || cf || v55)
      {
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        *(a1 + 248) = 0;
      }

      goto LABEL_79;
    }

LABEL_123:
    v62 = ~LOBYTE(Dimensions.width) & ~LOBYTE(Dimensions.height);
    v57 = (a1 + 248);
    v56 = *(a1 + 248);
    v58 = (a1 + 224);
    goto LABEL_82;
  }

LABEL_79:
  v57 = (a1 + 248);
  v56 = *(a1 + 248);
  v58 = (a1 + 224);
  if (BYTE5(v85) - 3 < 0xFFFFFFFE)
  {
    v59 = v56 & 1;
    *v57 = v59;
    v60 = 1;
    LOBYTE(v61) = 1;
    goto LABEL_88;
  }

  v62 = ~LOBYTE(Dimensions.width) & ~LOBYTE(Dimensions.height);
LABEL_82:
  v63 = v62 & 1 & v56;
  if (x)
  {
    LOBYTE(v64) = 0;
  }

  else
  {
    v64 = ~width;
  }

  v59 = v64 & v63;
  *v57 = v59;
  v60 = 0;
  if (y)
  {
    LOBYTE(v61) = 0;
  }

  else
  {
    v61 = height ^ 1;
  }

LABEL_88:
  v65 = v61 & v59;
  if (Dimensions.height * Dimensions.width >= 128000001)
  {
    v65 = 0;
  }

  *v57 = v65;
  if (a2 != 1)
  {
    goto LABEL_97;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), idx);
  v67 = ValueAtIndex[2];
  if (HIDWORD(v67))
  {
    return 4294950190;
  }

  v68 = ValueAtIndex[3];
  if (HIDWORD(v68))
  {
    return 4294950190;
  }

  v69 = Dimensions.width * Dimensions.height;
  if (v69)
  {
    v70 = v68 * v67 / v69;
    LOBYTE(v83[0]) = v70 < 0xC9;
    if (v70 < 0xC9)
    {
      goto LABEL_95;
    }

    result = _areSiblingThumbnailsMIAFCompliant(a1, ValueAtIndex, v69, v83);
    if (result)
    {
      return result;
    }

    if (LOBYTE(v83[0]))
    {
LABEL_95:
      v71 = 0;
LABEL_96:
      *(a1 + 225) |= v71;
      goto LABEL_97;
    }

    Mutable = *(a1 + 232);
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(*a1, 0, 0);
      *(a1 + 232) = Mutable;
      if (!Mutable)
      {
        return 4294950305;
      }
    }

    if (idx == idx)
    {
      CFSetAddValue(Mutable, idx);
      v71 = LOBYTE(v83[0]) == 0;
      goto LABEL_96;
    }

    return 4294950190;
  }

LABEL_97:
  if (a3)
  {
    LOBYTE(v86) = 1;
    FigCFDictionaryGetBooleanIfPresent();
    if (v86)
    {
      v72 = CFDictionaryGetValue(a3, *MEMORY[0x1E6972208]);
      v73 = *v57 & 1;
      if (!v72)
      {
        v73 = 0;
      }

      *v57 = v73;
      if (!a2 && !*v58)
      {
        *(a1 + 224) = 1;
        *(a1 + 72) = v81;
      }
    }

    *v83 = *MEMORY[0x1E695F060];
    if (FigCFDictionaryGetCGSizeIfPresent())
    {
      v74 = *v83 >= 64.0;
      if (*&v83[1] < 64.0)
      {
        v74 = 0;
      }

      v75 = v74 & *v57;
      if (v60)
      {
        v76 = 1;
      }

      else
      {
        v76 = ~*v83;
      }

      v77 = v75 & v76;
      if (v60)
      {
        v78 = 1;
      }

      else
      {
        v78 = ~*&v83[1];
      }

      *v57 = v77 & v78;
    }
  }

  return 0;
}

uint64_t _createByteStreamAndBacking_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_4(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_9(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_12(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void CMPhotoHEIFFileWriterAddCompressedMovie_cold_14()
{
  OUTLINED_FUNCTION_32_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  *v0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  CFRelease(v1);
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_22(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_23(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_24(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_25(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t Slim_GetVersionFromPixelBufferInfo(uint64_t a1, unsigned int a2, char a3, int a4, int *a5)
{
  v27 = a2;
  UncompressedPixelFormatFromCompressedPixelFormat = a1;
  if (!CMPhotoPixelFormatIsAGXCompressed(a1))
  {
    goto LABEL_5;
  }

  if (a4 == 5)
  {
    UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
    if (CMPhotoPixelFormatIsAGXVersatile(a1))
    {
      result = CMPhotoGetBayerPatternFromRegroupBayerPattern(a2, &v27);
      if (result)
      {
        return result;
      }
    }

LABEL_5:
    if (UncompressedPixelFormatFromCompressedPixelFormat == 825306677)
    {
      v13 = 61;
      goto LABEL_144;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 825437747)
    {
      v13 = 9;
      goto LABEL_144;
    }

    OUTLINED_FUNCTION_2_21();
    if (v12)
    {
      v13 = 4;
      goto LABEL_144;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 2037741171)
    {
      v13 = 1;
      goto LABEL_144;
    }

    OUTLINED_FUNCTION_2_21();
    if (v12)
    {
      v13 = 76;
      goto LABEL_144;
    }

    OUTLINED_FUNCTION_2_21();
    if (v12)
    {
      v13 = 77;
    }

    else
    {
      switch(UncompressedPixelFormatFromCompressedPixelFormat)
      {
        case 875836518:
          v13 = 6;
          break;
        case 875836534:
          v13 = 5;
          break;
        case 1111970369:
          v13 = 82;
          break;
        default:
          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 15;
            break;
          }

          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 18;
            break;
          }

          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 17;
            break;
          }

          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 16;
            break;
          }

          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 22;
            break;
          }

          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 8;
            break;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat == 1380411457)
          {
            v13 = 75;
            break;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat == 1647589490)
          {
            v13 = 21;
            break;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat == 1647719528)
          {
            if (v27 != 6)
            {
              if (v27 == 7)
              {
                v13 = 60;
                break;
              }

              return 4294951896;
            }

            v13 = 59;
          }

          else
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1650942776)
            {
              v13 = 45;
              break;
            }

            if (UncompressedPixelFormatFromCompressedPixelFormat == 1650943796)
            {
              v13 = 3;
              break;
            }

            if (UncompressedPixelFormatFromCompressedPixelFormat != 1651519798)
            {
              if (UncompressedPixelFormatFromCompressedPixelFormat == 1651847472)
              {
                OUTLINED_FUNCTION_3_20();
                if (!v14)
                {
                  OUTLINED_FUNCTION_1_20();
                  if (v20)
                  {
                    v17 = &unk_1A5ABB6D4;
                    goto LABEL_136;
                  }
                }
              }

              else if (UncompressedPixelFormatFromCompressedPixelFormat == 1651925816)
              {
                OUTLINED_FUNCTION_3_20();
                if (!v14)
                {
                  OUTLINED_FUNCTION_1_20();
                  if (v21)
                  {
                    v17 = &unk_1A5ABB6B0;
                    goto LABEL_136;
                  }
                }
              }

              else if (UncompressedPixelFormatFromCompressedPixelFormat == 1651926376)
              {
                OUTLINED_FUNCTION_3_20();
                if (!v14)
                {
                  OUTLINED_FUNCTION_1_20();
                  if (v16)
                  {
                    v17 = &unk_1A5ABB6F8;
LABEL_136:
                    v13 = v17[v15];
                    break;
                  }
                }
              }

              else
              {
                if (UncompressedPixelFormatFromCompressedPixelFormat != 1652056888)
                {
                  switch(UncompressedPixelFormatFromCompressedPixelFormat)
                  {
                    case 1717855600:
                      v13 = 80;
                      break;
                    case 1717856627:
                      v13 = 81;
                      break;
                    case 1734501176:
                      v13 = 48;
                      break;
                    case 1734505012:
                      v13 = 73;
                      break;
                    case 1735549492:
                      v13 = 72;
                      break;
                    case 1735549752:
                      v13 = 46;
                      break;
                    case 1751410032:
                      v13 = 78;
                      break;
                    case 1751411059:
                      v13 = 79;
                      break;
                    case 1751527984:
                      v13 = 74;
                      break;
                    case 1815162994:
                      v13 = 19;
                      break;
                    case 1815491698:
                      v13 = 20;
                      break;
                    case 1882468912:
                      v13 = 13;
                      break;
                    case 1885745712:
                      v13 = 14;
                      break;
                    case 1919378232:
                      v13 = 47;
                      break;
                    case 1919379252:
                      v13 = 10;
                      break;
                    case 1936077360:
                      v13 = 26;
                      break;
                    case 1936077362:
                      v13 = 91;
                      break;
                    case 1936077876:
                      v13 = 93;
                      break;
                    case 1937125936:
                      v13 = 25;
                      break;
                    case 1937125938:
                      v13 = 92;
                      break;
                    case 1937126452:
                      v13 = 94;
                      break;
                    case 1952854576:
                      v13 = 24;
                      break;
                    case 1952854578:
                      v13 = 87;
                      break;
                    case 1952855092:
                      v13 = 89;
                      break;
                    case 1953903152:
                      v13 = 23;
                      break;
                    case 1953903154:
                      v13 = 88;
                      break;
                    case 1953903668:
                      v13 = 90;
                      break;
                    case 2016686640:
                      v13 = 11;
                      break;
                    case 2016686642:
                      v13 = 84;
                      break;
                    case 2016687156:
                      v13 = 86;
                      break;
                    case 2019963440:
                      v13 = 12;
                      break;
                    case 2019963442:
                      v13 = 83;
                      break;
                    case 2019963956:
                      v13 = 85;
                      break;
                    case 2037741158:
                      v13 = 7;
                      break;
                    default:
                      OUTLINED_FUNCTION_2_21();
                      if (!v12)
                      {
                        OUTLINED_FUNCTION_4_16();
                        return FigSignalErrorAtGM(v22);
                      }

                      v13 = 2;
                      break;
                  }

                  break;
                }

                OUTLINED_FUNCTION_3_20();
                if (!v14)
                {
                  OUTLINED_FUNCTION_1_20();
                  if (v18)
                  {
                    v17 = &unk_1A5ABB71C;
                    goto LABEL_136;
                  }
                }
              }

              return 4294951896;
            }

            if ((a3 & 1) == 0)
            {
              if (v27 < 9)
              {
                OUTLINED_FUNCTION_1_20();
                if (v19)
                {
                  v17 = &unk_1A5ABB740;
                  goto LABEL_136;
                }
              }

              return 4294951896;
            }

            if (v27 >= 5)
            {
              return 4294951896;
            }

            v13 = v27 + 62;
          }

          break;
      }
    }

LABEL_144:
    IsAGXCompressed = CMPhotoPixelFormatIsAGXCompressed(a1);
    if (!a5)
    {
      return 0;
    }

    v24 = IsAGXCompressed;
    result = 0;
    if (v24)
    {
      v25 = v13 | (a4 << 16) | 0x100000;
    }

    else
    {
      v25 = v13 | (a4 << 16);
    }

    *a5 = v25;
    return result;
  }

  OUTLINED_FUNCTION_4_16();

  return FigSignalErrorAtGM(v26);
}

uint64_t Slim_GetPixelBufferInfoFromVersion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_4_16();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t Slim_GetPixelBufferInfoFromVersion_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_4_16();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t CMPhotoDecompressionContainerGetContainerFormat(uint64_t a1, _DWORD *a2)
{
  result = 4294950306;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 544);
    }
  }

  return result;
}

uint64_t CMPhotoDecompressionContainerGetImageCount(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a2)
  {
    return CMPhotoQualityControllerNeedsImageAnalysis();
  }

  result = 0;
  *a2 = *(a1 + 592);
  return result;
}

uint64_t CMPhotoDecompressionContainerGetAlternatesCountForIndex(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_42();
  CMPhotoDecompressionContainerExternalToInternalIndex(v7, v8, v9, v10, v11, v12, v13);
  v5 = v14;
  if (!v14)
  {
    *a4 = 1;
  }

  return v5;
}

uint64_t CMPhotoDecompressionContainerGetPrimaryItemIndex(uint64_t a1, void *a2)
{
  result = 4294950306;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 576);
    }
  }

  return result;
}

void CMPhotoDecompressionContainerCopyFormatDescriptionForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
    if (!v12)
    {
      if (a4)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v13 + 40))
        {
          v14 = OUTLINED_FUNCTION_2_22();
          v15(v14);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 376))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetOriginalPixelFormatForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 384))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyImageIsRGBForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 400))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyImageJPEGEncodingModeForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 408))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetThumbnailCountForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v1, v2, v3, v4, v5, v6, v7);
    if (!v8)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v9 + 72))
      {
        v10 = OUTLINED_FUNCTION_2_22();
        v11(v10);
      }
    }
  }
}

void CMPhotoDecompressionContainerGetThumbnailGeometryForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v4, v5, v6, v7, v8, v9, v10);
    if (!v11 && (v3 || v2 || v1))
    {
      OUTLINED_FUNCTION_28_5();
      if (*(v12 + 424))
      {
        v13 = OUTLINED_FUNCTION_6_15();
        v14(v13);
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

void CMPhotoDecompressionContainerCopyThumbnailBitDepthForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v14 + 432))
        {
          v15 = OUTLINED_FUNCTION_2_22();
          v16(v15);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetThumbnailEncodedPixelFormatForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v14 + 440))
        {
          v15 = OUTLINED_FUNCTION_2_22();
          v16(v15);
        }
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCreateThumbnailImageForIndex(const void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v12, v13, v14, v15, v16, v17, v18);
  if (v19)
  {
    goto LABEL_10;
  }

  if (a3 < 0)
  {
    v22 = 4294950306;
  }

  else if (a6)
  {
    if (a4 && CFDictionaryContainsKey(a4, @"DryRun"))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3();
      v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, cf, v26);
      goto LABEL_10;
    }

    v19 = _createModifiedDecodeOptionsIfNeeded(a1, a2, a3, a4, a5, &cf);
    if (v19)
    {
LABEL_10:
      v22 = v19;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_15_12();
    v21 = *(v20 + 88);
    if (v21)
    {
      v19 = v21(a1, v24, a3, cf, a5, a6);
      goto LABEL_10;
    }

    v22 = 4294950302;
  }

  else
  {
    v22 = 0;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

void CMPhotoDecompressionContainerCopyThumbnailFormatDescriptionForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v7, v8, v9, v10, v11, v12, v13);
    if (!v14 && (v5 & 0x8000000000000000) == 0 && a5)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v15 + 416))
      {
        v16 = OUTLINED_FUNCTION_2_22();
        v17(v16);
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCopyThumbnailSampleBufferForIndexWithOptions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  v5 = 4294950306;
  if (a1 && (a3 & 0x8000000000000000) == 0)
  {
    if (a5)
    {
      v7 = CMPhotoDecompressionContainerCreateTileIteratorForThumbnailImageIndexWithOptions(a1, a2, a3, a4, &cf);
      v8 = cf;
      if (!v7)
      {
        v7 = _copySampleBufferFromIterator(cf, a5);
      }

      v5 = v7;
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t CMPhotoDecompressionContainerCreateTileIteratorForThumbnailImageIndexWithOptions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v8, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    return v15;
  }

  v16 = OUTLINED_FUNCTION_34_1();
  CMPhotoDecompressionContainerGetThumbnailCountForIndexWithOptions(v16);
  if (v15)
  {
    return v15;
  }

  if (v25 <= a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, 0);
  }

  v17 = _allocateTileIterator(a1, &v26);
  v18 = v26;
  if (v17)
  {
    v22 = v17;
    goto LABEL_16;
  }

  v26[3] = 0;
  v18[5] = a3;
  OUTLINED_FUNCTION_23_4();
  if (!*(v19 + 240))
  {
    v22 = 4294950302;
LABEL_10:
    CFRelease(v18);
    return v22;
  }

  v20 = OUTLINED_FUNCTION_17();
  v22 = v21(v20);
  v18 = v26;
  if (v22)
  {
LABEL_16:
    if (!v18)
    {
      return v22;
    }

    goto LABEL_10;
  }

  *a5 = v26;
  return v22;
}

void CMPhotoDecompressionContainerGetAuxiliaryImageGeometryForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_33_2();
    v2 = v1;
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v3, v4, v5, v6, v7, v8, v9);
    if (!v10 && (v2 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_39_1();
      if (*(v11 + 144))
      {
        OUTLINED_FUNCTION_31_2();
        v12();
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageBitDepthForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v14 + 456))
        {
          v15 = OUTLINED_FUNCTION_2_22();
          v16(v15);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetAuxiliaryEncodedPixelFormatForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v14 + 464))
        {
          v15 = OUTLINED_FUNCTION_2_22();
          v16(v15);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetAuxiliaryImageTypeForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9 && (v1 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_28_5();
      if (*(v10 + 152))
      {
        v11 = OUTLINED_FUNCTION_6_15();
        v12(v11);
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageCGColorSpaceForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v14 + 200))
        {
          v15 = OUTLINED_FUNCTION_2_22();
          v16(v15);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    if (v2 && v1)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_21();
      CMPhotoDecompressionContainerExternalToInternalIndex(v3, v4, v5, v6, v7, v8, v9);
      if (!v10)
      {
        OUTLINED_FUNCTION_31_2();
        CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForInternalIndexWithOptions(v11, v12, v13, v14, v15, v16, v17);
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageSubTypeDataForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_16();
    v5 = v4;
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13 && (v3 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_15_12();
      v15 = *(v14 + 160);
      if (v15)
      {
        v15(v5, v16, v3, v2, 0, v1);
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9 && (v1 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_15_12();
      if (*(v10 + 168))
      {
        v11 = OUTLINED_FUNCTION_5_17();
        v12(v11);
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryFormatInfoForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9 && (v1 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v10 + 176))
      {
        v11 = OUTLINED_FUNCTION_2_22();
        v12(v11);
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageFormatDescriptionForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v3, v4, v5, v6, v7, v8, v9);
    if (!v10 && (v2 & 0x8000000000000000) == 0 && v1)
    {
      OUTLINED_FUNCTION_15_12();
      if (*(v11 + 184))
      {
        v12 = OUTLINED_FUNCTION_5_17();
        v13(v12);
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCopyAuxiliaryImageSampleBufferForIndexWithOptions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  v5 = 4294950306;
  if (a1 && (a3 & 0x8000000000000000) == 0)
  {
    if (a5)
    {
      v7 = CMPhotoDecompressionContainerCreateTileIteratorForAuxiliaryImageIndexWithOptions(a1, a2, a3, a4, &cf);
      v8 = cf;
      if (!v7)
      {
        v7 = _copySampleBufferFromIterator(cf, a5);
      }

      v5 = v7;
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t CMPhotoDecompressionContainerCreateTileIteratorForAuxiliaryImageIndexWithOptions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v8, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    return v15;
  }

  v16 = OUTLINED_FUNCTION_34_1();
  CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions(v16, v17, v18, v19);
  if (v15)
  {
    return v15;
  }

  if (v28 <= a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, 0);
  }

  v20 = _allocateTileIterator(a1, &v29);
  v21 = v29;
  if (v20)
  {
    v25 = v20;
    goto LABEL_16;
  }

  v29[3] = 0;
  v21[4] = a3;
  OUTLINED_FUNCTION_23_4();
  if (!*(v22 + 240))
  {
    v25 = 4294950302;
LABEL_10:
    CFRelease(v21);
    return v25;
  }

  v23 = OUTLINED_FUNCTION_17();
  v25 = v24(v23);
  v21 = v29;
  if (v25)
  {
LABEL_16:
    if (!v21)
    {
      return v25;
    }

    goto LABEL_10;
  }

  *a5 = v29;
  return v25;
}

void CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v7, v8, v9, v10, v11, v12, v13);
    if (!v14 && (v6 & 0x8000000000000000) == 0 && v4 != 4 && v2)
    {
      OUTLINED_FUNCTION_28_5();
      if (*(v15 + 192))
      {
        OUTLINED_FUNCTION_20_6();
        v16();
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

uint64_t CMPhotoDecompressionContainerCreateAuxiliaryImageDictionaryRepresentation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (v13 || (OUTLINED_FUNCTION_20_6(), CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex(v14), v13))
    {
      v19 = v13;
      goto LABEL_11;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      CMPhotoCreateAuxiliaryDataDictionaryFromPixelbuffer();
      if (v16)
      {
        v19 = v16;
      }

      else
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E696D218], 0);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E696D220], 0);
        OUTLINED_FUNCTION_20_6();
        CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions(v17);
        if (!v18)
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D228], 0);
LABEL_10:
          v19 = 0;
          *v5 = Mutable;
LABEL_11:
          Mutable = 0;
          goto LABEL_12;
        }

        v19 = v18;
        OUTLINED_FUNCTION_67_0();
        if (v20)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v19 = 4294950305;
    }
  }

  else
  {
    Mutable = 0;
    v19 = 4294950306;
  }

LABEL_12:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v19;
}

void CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a4)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_21();
      CMPhotoDecompressionContainerExternalToInternalIndex(v4, v5, v6, v7, v8, v9, v10);
      if (!v11)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v12 + 208))
        {
          v13 = OUTLINED_FUNCTION_2_22();
          v14(v13);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerCreateOutputBufferAttributesForThumbnailIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a5)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_21();
      CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
      if (!v12)
      {
        OUTLINED_FUNCTION_15_12();
        if (*(v13 + 216))
        {
          v14 = OUTLINED_FUNCTION_5_17();
          v15(v14);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerCreateOutputBufferAttributesForAuxiliaryImageIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a5)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_21();
      CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
      if (!v12)
      {
        OUTLINED_FUNCTION_15_12();
        if (*(v13 + 224))
        {
          v14 = OUTLINED_FUNCTION_5_17();
          v15(v14);
        }
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCopyXMPForIndexWithOptions(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, CFStringRef *a6)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    return v16;
  }

  if (!a6)
  {
    return 0;
  }

  CFGetAllocator(a1);
  OUTLINED_FUNCTION_39_1();
  if (!*(v18 + 272))
  {
    return 4294950302;
  }

  v19 = v17;
  OUTLINED_FUNCTION_20_6();
  v16 = v20();
  if (v16)
  {
    return v16;
  }

  if (!a4)
  {
    v24 = 0;
    *a6 = 0;
    return v24;
  }

  if (a4 != 1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(0);
  Length = CFDataGetLength(0);
  v23 = CFStringCreateWithBytes(v19, BytePtr, Length, 0x8000100u, 0);
  if (!v23)
  {
    return 4294950305;
  }

  v24 = 0;
  *a6 = v23;
  return v24;
}

void CMPhotoDecompressionContainerGetDebugMetadataCountForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
    if (!v12)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v13 + 280))
      {
        v14 = OUTLINED_FUNCTION_2_22();
        v15(v14);
      }

      else if (a4)
      {
        *a4 = 0;
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyDebugMetadataForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_15_12();
        if (*(v10 + 288))
        {
          v11 = OUTLINED_FUNCTION_5_17();
          v12(v11);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetCustomMetadataCountForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
    if (!v12)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v13 + 296))
      {
        v14 = OUTLINED_FUNCTION_2_22();
        v15(v14);
      }

      else if (a4)
      {
        *a4 = 0;
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyCustomMetadataForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_15_12();
        if (*(v10 + 304))
        {
          v11 = OUTLINED_FUNCTION_5_17();
          v12(v11);
        }
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCopyGroupsDescriptionArray(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a2)
  {
    return CMPhotoQualityControllerNeedsImageAnalysis();
  }

  v2 = *(*(a1 + 32) + 328);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 4294950302;
  }
}

void CMPhotoDecompressionContainerCopyCGColorSpaceForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 472))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCopyImagePropertiesForInternalIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  cf = 0;
  v81 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  if (!a1)
  {
    goto LABEL_109;
  }

  if (!a6)
  {
    v15 = 0;
    goto LABEL_40;
  }

  v10 = CFGetAllocator(a1);
  if (a3 != -1)
  {
    v77 = 0;
    OUTLINED_FUNCTION_15_12();
    if (!*(v11 + 256))
    {
      goto LABEL_39;
    }

    v12 = OUTLINED_FUNCTION_21_5();
    v13(v12);
    OUTLINED_FUNCTION_67_0();
    if (!v25)
    {
      v15 = v14;
      if (v14)
      {
        goto LABEL_40;
      }

      if (CFDataGetLength(v90) < v77)
      {
        fig_log_get_emitter();
        v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v70, v71, LODWORD(v72[0]));
        goto LABEL_104;
      }

      v16 = OUTLINED_FUNCTION_17();
      Mutable = CFDataCreateMutable(v16, v17);
      CFDataAppendBytes(Mutable, "Exif", 6);
      BytePtr = CFDataGetBytePtr(v90);
      Length = CFDataGetLength(v90);
      CFDataAppendBytes(Mutable, &BytePtr[v77], Length - v77);
      v90 = Mutable;
    }
  }

  if (a4 != -1)
  {
    OUTLINED_FUNCTION_15_12();
    if (!*(v21 + 272))
    {
      goto LABEL_39;
    }

    v22 = OUTLINED_FUNCTION_21_5();
    v24 = v23(v22);
    if (v24)
    {
      v25 = v24 == -16993;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      goto LABEL_104;
    }
  }

  v26 = a1 + 32;
  if (*(*(a1 + 32) + 480))
  {
    v27 = OUTLINED_FUNCTION_21_5();
    v28(v27);
    OUTLINED_FUNCTION_19_8();
    if (v29 && v24 != 0)
    {
      goto LABEL_104;
    }
  }

  if (*(*v26 + 288))
  {
    v31 = OUTLINED_FUNCTION_21_5();
    v32(v31);
    OUTLINED_FUNCTION_19_8();
    if (v29 && v24 != 0)
    {
      goto LABEL_104;
    }
  }

  v75 = 0;
  v76 = 0;
  v74 = 0;
  if (!*(*v26 + 56))
  {
    goto LABEL_39;
  }

  v34 = OUTLINED_FUNCTION_21_5();
  v24 = v35(v34);
  if (v24)
  {
    goto LABEL_104;
  }

  v73 = 0;
  if (*(*v26 + 64))
  {
    v36 = OUTLINED_FUNCTION_21_5();
    if (!v37(v36) && !CMPhotoCFArrayGetSizeAtIndex(v84, 0, &v73))
    {
      v15 = 4294950304;
      goto LABEL_40;
    }
  }

  v72[0] = v76;
  v72[1] = v75;
  v24 = CMPhotoCreateImagePropertiesFromData(v10, v72, &v73, v90, v89, v88, 0, 0, &v82);
  if (v24)
  {
    goto LABEL_104;
  }

  if (!*(*v26 + 472))
  {
LABEL_39:
    v15 = 4294950302;
    goto LABEL_40;
  }

  v38 = OUTLINED_FUNCTION_21_5();
  v39(v38);
  OUTLINED_FUNCTION_67_0();
  if (v25)
  {
    cf = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (!cf)
    {
      v15 = 4294950305;
      goto LABEL_42;
    }
  }

  else
  {
    v15 = v40;
    if (v40)
    {
      goto LABEL_40;
    }
  }

  v42 = CGColorSpaceCopyICCProfileASCIIDescriptionString();
  if (v42)
  {
    v43 = v42;
    CFDictionarySetValue(v82, *MEMORY[0x1E696DEF0], v42);
    CFRelease(v43);
  }

  if (v87)
  {
    CFDictionarySetValue(v82, @"iOS_Debug", v87);
  }

  v44 = *(a1 + 544);
  if (v44 == 3)
  {
    if (*(*v26 + 320))
    {
      v58 = OUTLINED_FUNCTION_21_5();
      v59(v58);
      OUTLINED_FUNCTION_19_8();
      if (v29)
      {
        v15 = v60;
        if (v60)
        {
          goto LABEL_40;
        }
      }
    }

    v61 = v85;
    if (v85)
    {
      v62 = v82;
      if (v82)
      {
        v63 = CFGetAllocator(v82);
        v24 = CMPhotoMergeDictionaryEntries(v63, v62, v61, 1u);
        if (v24)
        {
          goto LABEL_104;
        }

        goto LABEL_89;
      }

      goto LABEL_109;
    }

LABEL_89:
    if (CFDictionaryGetValue(v82, *MEMORY[0x1E696DF28]))
    {
      v24 = _createMutableTIFFProperties(v10, v82, &v81);
      if (v24)
      {
        goto LABEL_104;
      }

      v64 = v81;
    }

    else
    {
      v64 = 0;
    }

    v77 = v74;
    v65 = *MEMORY[0x1E696DE78];
    IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
    v67 = MEMORY[0x1E696DF58];
    if (!IntIfPresent && v64)
    {
      CMPhotoCFDictionaryGetIntIfPresent();
    }

    v24 = CMPhotoCFDictionarySetInt(v82, v65, v74);
    if (v24)
    {
      goto LABEL_104;
    }

    if (v64)
    {
      v24 = CMPhotoCFDictionarySetInt(v64, *v67, v74);
      if (v24)
      {
        goto LABEL_104;
      }
    }

    if (!*(*v26 + 336) || (v68 = OUTLINED_FUNCTION_21_5(), v69(v68)))
    {
LABEL_105:
      v15 = 0;
      *a6 = v82;
      v82 = 0;
      goto LABEL_40;
    }

    if (!v80)
    {
      v78 = v75;
      v79 = v76;
    }

    if (v64)
    {
LABEL_102:
      v24 = CMPhotoCFDictionarySetInt64(v64, *MEMORY[0x1E696DF78], v79);
      if (v24)
      {
        goto LABEL_104;
      }

      v24 = CMPhotoCFDictionarySetInt64(v64, *MEMORY[0x1E696DF70], v78);
      if (v24)
      {
        goto LABEL_104;
      }

      goto LABEL_105;
    }

    v24 = _createMutableTIFFProperties(v10, v82, &v81);
    if (!v24)
    {
      v64 = v81;
      goto LABEL_102;
    }

LABEL_104:
    v15 = v24;
    goto LABEL_40;
  }

  if (v44)
  {
    goto LABEL_89;
  }

  if (*(*v26 + 312))
  {
    v45 = OUTLINED_FUNCTION_21_5();
    v46(v45);
    OUTLINED_FUNCTION_19_8();
    if (v29)
    {
      v15 = v47;
      if (v47)
      {
        goto LABEL_40;
      }
    }
  }

  v48 = v86;
  if (!v86)
  {
    goto LABEL_89;
  }

  v49 = v82;
  if (!v82)
  {
LABEL_109:
    v15 = 4294950306;
    goto LABEL_40;
  }

  v50 = OUTLINED_FUNCTION_17();
  v54 = CFDictionaryCreateMutable(v50, v51, v52, v53);
  if (v54)
  {
    v55 = v54;
    Value = CFDictionaryGetValue(v48, @"CameraModel");
    if (Value)
    {
      CFDictionarySetValue(v55, @"CameraModel", Value);
    }

    v57 = CFDictionaryGetValue(v48, @"CameraExtrinsics");
    if (v57)
    {
      CFDictionarySetValue(v55, @"CameraExtrinsics", v57);
    }

    if (CFDictionaryGetCount(v55) >= 1)
    {
      CFDictionarySetValue(v49, *MEMORY[0x1E696DD40], v55);
    }

    CFRelease(v55);
    goto LABEL_89;
  }

  v15 = 4294950305;
LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_42:
  if (v84)
  {
    CFRelease(v84);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  return v15;
}

uint64_t _createMutableTIFFProperties(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  v5 = *MEMORY[0x1E696DF28];
  CFDictionaryGetValue(theDict, *MEMORY[0x1E696DF28]);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v7 = MutableCopy;
  CFDictionarySetValue(theDict, v5, MutableCopy);
  result = 0;
  *a3 = v7;
  return result;
}

void CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    v2 = v1;
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v3, v4, v5, v6, v7, v8, v9);
    if (!v10)
    {
      if (v2)
      {
        v11 = OUTLINED_FUNCTION_6_15();
        CMPhotoDecompressionContainerCopyImagePropertiesForInternalIndex(v11, v12, v13, v14, v15, v16);
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

uint64_t CMPhotoDecompressionContainerDecodeThumbnailForIndexAsyncF(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_40_2();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v11, v12, v13, v14, v15, v16, v17);
  if (v18)
  {
    goto LABEL_10;
  }

  v19 = 4294950306;
  if ((v6 & 0x8000000000000000) == 0 && v1)
  {
    if (v4 && CFDictionaryContainsKey(v4, @"DryRun"))
    {
      fig_log_get_emitter();
      v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, cf, v25);
      goto LABEL_10;
    }

    v18 = _createModifiedDecodeOptionsIfNeeded(v10, v8, v6, v4, v2, &cf);
    if (v18)
    {
LABEL_10:
      v19 = v18;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_39_1();
    if (*(v20 + 104))
    {
      OUTLINED_FUNCTION_41_2();
      v18 = v21();
      goto LABEL_10;
    }

    v19 = 4294950302;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

void CMPhotoDecompressionContainerDecodeAuxiliaryImageForIndexAsyncF(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_40_2();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v8, v9, v10, v11, v12, v13, v14);
    if (!v15 && (v5 & 0x8000000000000000) == 0 && v1)
    {
      if (v3 && CFDictionaryContainsKey(v3, @"DryRun"))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
      }

      else if (*(*(v7 + 32) + 112))
      {
        OUTLINED_FUNCTION_41_2();
        v16();
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCancelAsyncRequest(uint64_t a1, uint64_t a2)
{
  v2 = 4294950306;
  if (a1 && a2)
  {
    v3 = *(*(a1 + 32) + 120);
    if (v3)
    {
      return v3();
    }

    v2 = 4294950302;
  }

  return OUTLINED_FUNCTION_36_3(v2);
}

uint64_t CMPhotoDecompressionContainerCreateSequenceContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4294950306;
  if (a1 && a4)
  {
    v5 = *(*(a1 + 32) + 368);
    if (v5)
    {
      return v5();
    }

    v4 = 4294950302;
  }

  return OUTLINED_FUNCTION_36_3(v4);
}

uint64_t CMPhotoDecompressionContainerGetSequenceCount(uint64_t a1, uint64_t a2)
{
  v2 = 4294950306;
  if (a1 && a2)
  {
    v3 = *(*(a1 + 32) + 360);
    if (v3)
    {
      return v3();
    }

    v2 = 4294950302;
  }

  return OUTLINED_FUNCTION_36_3(v2);
}

uint64_t CMPhotoDecompressionContainerGetVideoAndAudioCount(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  v3 = *(*(a1 + 32) + 496);
  if (v3)
  {
    return v3();
  }

  if (a2)
  {
    *a2 = 0;
  }

  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

void CMPhotoDecompressionContainerCreateAlphaDecodeOptionsForInternalIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_38_1();
  a18 = v19;
  a19 = v25;
  a11 = v22;
  if (v20)
  {
    v26 = v24;
    v27 = v23;
    if (!v22)
    {
      if (CMPhotoDecompressionContainerGetDefaultFormatWhenDecodingAlphaForInternalIndex(v20, v21, &a11))
      {
        goto LABEL_33;
      }

      v22 = a11;
    }

    if (v22 == 843264056 || v22 == 843264310 || v22 == 1111970369 || v22 == 1279340600 || v22 == 1279340854 || v22 == 1815491698 || v22 == 1380411457)
    {
      OUTLINED_FUNCTION_19_5();
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v35 = MutableCopy;
        OUTLINED_FUNCTION_19_5();
        v36 = FigCFDictionaryCreateMutableCopy();
        if (!v36)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_72();
        FigCFDictionarySetInt();
        FigCFDictionarySetInt();
        CFDictionaryRemoveValue(v36, @"UseProvidedPixelBuffer");
        if (v27)
        {
          *v27 = v35;
          v35 = 0;
        }

        if (v26)
        {
          *v26 = v36;
          v36 = 0;
        }

        if (v35)
        {
LABEL_30:
          CFRelease(v35);
        }

        if (v36)
        {
          CFRelease(v36);
        }
      }
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_37_3();
}