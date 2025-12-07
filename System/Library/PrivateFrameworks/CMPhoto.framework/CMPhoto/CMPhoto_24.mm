UInt8 *___compressAllTiles_block_invoke_3(UInt8 *result)
{
  if (!*(*(result + 4) + 8))
  {
    v1 = result;
    Length = CFDataGetLength(*(result + 5));
    v3 = *(v1 + 5);
    BytePtr = CFDataGetBytePtr(**(v1 + 4));
    v5 = CFDataGetLength(**(v1 + 4));
    CFDataAppendBytes(v3, BytePtr, v5);
    v6 = **(v1 + 4);
    if (v6)
    {
      CFRelease(v6);
      **(v1 + 4) = 0;
    }

    v7 = CFDataGetLength(*(v1 + 5));
    result = CFDataGetMutableBytePtr(*(v1 + 5));
    v8 = bswap32(Length);
    if (v1[60])
    {
      v9 = v8;
    }

    else
    {
      v9 = Length;
    }

    *&result[4 * *(v1 + 13) + *(v1 + 12)] = v9;
    v10 = v7 - Length;
    v11 = bswap32(v7 - Length);
    if (v1[60])
    {
      v10 = v11;
    }

    *&result[4 * *(v1 + 13) + *(v1 + 14)] = v10;
  }

  return result;
}

uint64_t _jxlOutputCallback_cold_1_0()
{
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950738, "<<<< CMPhotoDNGCompression >>>>", 1197, v0);
}

uint64_t _jxlOutputCallback_cold_2_0()
{
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950739, "<<<< CMPhotoDNGCompression >>>>", 1172, v0);
}

uint64_t CMPhotoDecompressionContainerJFIFTranscode(void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (!a1)
  {
    return 4294950306;
  }

  v9 = CMPhotoDecompressionContainerCopyTranslatedOptionsForAlternates(a1, a3, a2, 1, &cf);
  if (v9)
  {
    goto LABEL_7;
  }

  v13 = -1;
  CMPhotoDecompressionContainerExternalToInternalIndex(a1, a3, -1, cf, &v13, 0, 0);
  if (v9)
  {
    goto LABEL_7;
  }

  if (a4 < 0)
  {
    v11 = 4294950306;
  }

  else
  {
    v10 = *(a1[4] + 232);
    if (v10)
    {
      v9 = v10(a1, cf, v13, a4, a5);
LABEL_7:
      v11 = v9;
      goto LABEL_9;
    }

    v11 = 4294950302;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t CMPhotoDecompressionContainerFlexibleTranscode(const void *a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (a3 > 1)
  {
    return 4294950302;
  }

  if (!a5)
  {
    return 4294950306;
  }

  v52[0] = 0;
  allocator = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v10 = Mutable;
  v50 = a3;
  v63 = 0;
  ImageCountWithOptions = CMPhotoDecompressionContainerGetImageCountWithOptions(a1, 0, &v63);
  if (ImageCountWithOptions)
  {
    v27 = ImageCountWithOptions;
    v12 = 0;
  }

  else
  {
    v12 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (v12)
    {
      if (v63 < 1)
      {
LABEL_18:
        v26 = v10;
        if (!CMPhotoDecompressionContainerCopyGroupsDescriptionArray(a1, v52))
        {
          FigCFDictionarySetValue();
        }

        FigCFDictionarySetValue();
        v27 = 0;
        goto LABEL_21;
      }

      v13 = 0;
      while (1)
      {
        v62 = 0;
        v14 = OUTLINED_FUNCTION_6_19();
        AlternatesCountForIndex = CMPhotoDecompressionContainerGetAlternatesCountForIndex(v14, v15, 0, v16);
        if (AlternatesCountForIndex)
        {
          break;
        }

        v18 = OUTLINED_FUNCTION_0_29();
        AlternatesCountForIndex = _createTranscodePayload(v18, v19, v20, v21, -1, -1, v22);
        if (AlternatesCountForIndex)
        {
          break;
        }

        CFArrayAppendValue(v12, cf);
        if (cf)
        {
          CFRelease(cf);
        }

        v23 = OUTLINED_FUNCTION_6_19();
        AlternatesCountForIndex = _populateTranscodeDescriptionForMainImage(v23, v24, -1, v25);
        if (AlternatesCountForIndex)
        {
          break;
        }

        if (++v13 >= v63)
        {
          goto LABEL_18;
        }
      }

      v27 = AlternatesCountForIndex;
    }

    else
    {
      v27 = 4294950305;
    }
  }

  CFRelease(v10);
  v26 = 0;
  if (v12)
  {
LABEL_21:
    CFRelease(v12);
  }

  if (v52[0])
  {
    CFRelease(v52[0]);
  }

  if (!v27)
  {
    if (a4)
    {
      v28 = OUTLINED_FUNCTION_27();
      v30 = v29(v28);
      if (v30)
      {
        v27 = v30;
        if (!v26)
        {
          return v27;
        }

        goto LABEL_52;
      }
    }

    v31 = &v63;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2000000000;
    v66 = 0;
    v62 = 0;
    if (v26)
    {
      v32 = CFGetTypeID(v26);
      if (v32 == CFDictionaryGetTypeID())
      {
        v33 = CFGetAllocator(a1);
        v34 = CMPhotoCompressionSessionCreate(v33, 0, &v62);
        if (OUTLINED_FUNCTION_2_27(v34))
        {
          v36 = 0;
          goto LABEL_45;
        }

        v35 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v36 = v35;
        if (!v35)
        {
          v31 = v64;
          v49 = -16991;
          goto LABEL_69;
        }

        v37 = CMPhotoCFDictionarySetSize(v35, @"ContainerFormat", a3);
        if (OUTLINED_FUNCTION_2_27(v37))
        {
          goto LABEL_45;
        }

        v38 = CMPhotoCFDictionarySetSize(v36, @"BackingType", 1);
        if (OUTLINED_FUNCTION_2_27(v38))
        {
          goto LABEL_45;
        }

        v39 = CMPhotoCompressionSessionOpenEmptyContainer(v62, v36);
        if (OUTLINED_FUNCTION_2_27(v39))
        {
          goto LABEL_45;
        }

        Value = CFDictionaryGetValue(v26, @"MainImageList");
        if (Value)
        {
          v41 = CFGetTypeID(Value);
          if (v41 == CFArrayGetTypeID())
          {
            if (CFDictionaryContainsKey(v26, @"GroupsDescriptionList"))
            {
              v42 = *MEMORY[0x1E695E480];
              v43 = CFDictionaryGetValue(v26, @"GroupsDescriptionList");
              MutableCopy = CFArrayCreateMutableCopy(v42, 0, v43);
            }

            else
            {
              MutableCopy = 0;
            }

            cf = MEMORY[0x1E69E9820];
            v54 = 0x40000000;
            v55 = ___writeTranscodeDescriptionToData_block_invoke;
            v56 = &unk_1E77A3150;
            v57 = &v63;
            v58 = a1;
            v61 = v50;
            v59 = v62;
            v60 = MutableCopy;
            FigCFArrayApplyBlock();
            OUTLINED_FUNCTION_7_19();
            if (!v45)
            {
              if (MutableCopy)
              {
                v52[0] = MEMORY[0x1E69E9820];
                v52[1] = 0x40000000;
                v52[2] = ___writeTranscodeDescriptionToData_block_invoke_2;
                v52[3] = &unk_1E77A3178;
                v52[4] = &v63;
                v52[5] = v62;
                FigCFArrayApplyBlock();
                OUTLINED_FUNCTION_7_19();
                if (v46)
                {
                  goto LABEL_44;
                }
              }

              v47 = CMPhotoCompressionSessionCloseContainerAndCopyBacking(v62);
              OUTLINED_FUNCTION_2_27(v47);
            }

            if (!MutableCopy)
            {
LABEL_45:
              if (v62)
              {
                CFRelease(v62);
              }

              if (v36)
              {
                CFRelease(v36);
              }

              v27 = *(v64 + 6);
              _Block_object_dispose(&v63, 8);
              if (!v27)
              {
                *a5 = 0;
              }

              goto LABEL_51;
            }

LABEL_44:
            CFRelease(MutableCopy);
            goto LABEL_45;
          }
        }

        v31 = v64;
LABEL_66:
        v49 = -16990;
LABEL_69:
        *(v31 + 6) = v49;
        goto LABEL_45;
      }

      v31 = v64;
    }

    v36 = 0;
    goto LABEL_66;
  }

LABEL_51:
  if (v26)
  {
LABEL_52:
    CFRelease(v26);
  }

  return v27;
}

uint64_t _createTranscodePayload(const void *a1, CFAllocatorRef allocator, int a3, uint64_t a4, uint64_t a5, uint64_t a6, CFMutableDictionaryRef *a7)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v15 = Mutable;
  v16 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v16;
  FigCFDictionarySetValue();
  CFRelease(v17);
  v18 = CMPhotoCFDictionarySetInt(v15, @"EntryType", 1);
  if (v18)
  {
    goto LABEL_21;
  }

  v18 = CMPhotoCFDictionarySetSize(v17, @"MainIndex", a4);
  if (v18)
  {
    goto LABEL_21;
  }

  if (a5 != -1)
  {
    v18 = CMPhotoCFDictionarySetSize(v17, @"AlternateIndex", a5);
    if (v18)
    {
      goto LABEL_21;
    }
  }

  if (a6 != -1)
  {
    v18 = CMPhotoCFDictionarySetSize(v17, @"SubIndex", a6);
    if (v18)
    {
      goto LABEL_21;
    }
  }

  CMPhotoCFDictionarySetInt(v17, @"Type", a3);
  if (a3 != 3)
  {
    goto LABEL_14;
  }

  v19 = CFGetAllocator(a1);
  v20 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v20)
  {
LABEL_22:
    v23 = 4294950305;
    goto LABEL_16;
  }

  v21 = v20;
  v18 = FigCFDictionarySetCFIndex();
  if (v18)
  {
LABEL_21:
    v23 = v18;
    goto LABEL_16;
  }

  CMPhotoDecompressionContainerCopyAuxiliaryImageTypeURNForIndexWithOptions(a1, a4, a6, v21, &cf);
  v23 = v22;
  CFRelease(v21);
  if (!v23)
  {
    FigCFDictionarySetValue();
LABEL_14:
    v23 = 0;
    if (a7)
    {
      *a7 = v15;
      v15 = 0;
    }
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v23;
}

uint64_t _createTranscodePayloadArray(const void *a1, CFAllocatorRef allocator, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __CFArray **a7)
{
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v15 = Mutable;
  if (a4 >= 1)
  {
    v16 = 0;
    while (1)
    {
      value = 0;
      TranscodePayload = _createTranscodePayload(a1, allocator, a3, a5, a6, v16, &value);
      if (TranscodePayload)
      {
        break;
      }

      CFArrayAppendValue(v15, value);
      if (value)
      {
        CFRelease(value);
      }

      if (a4 == ++v16)
      {
        goto LABEL_8;
      }
    }

    v18 = TranscodePayload;
    goto LABEL_11;
  }

LABEL_8:
  v18 = 0;
  if (!a7)
  {
LABEL_11:
    CFRelease(v15);
    return v18;
  }

  *a7 = v15;
  return v18;
}

uint64_t _writeMainImageToDestination(const void *a1, uint64_t a2, int a3, const void *a4, uint64_t *a5)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  BufferFromImageDescriptionEntry = _createBufferFromImageDescriptionEntry(a1, a4, a3, 0, 1, &v34, &v32, 0, 0, 0);
  if (OUTLINED_FUNCTION_2_27(BufferFromImageDescriptionEntry))
  {
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(a4, @"EncodeOptions");
  v8 = CFGetAllocator(a1);
  v9 = CMPhotoMergeDictionaryEntries(v8, v32, Value, 1u);
  if (OUTLINED_FUNCTION_2_27(v9))
  {
    goto LABEL_24;
  }

  v10 = CFDictionaryGetValue(a4, @"HEIFItemPropertiesList");
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 != CFArrayGetTypeID() || CFArrayGetCount(v11) != 1)
    {
      goto LABEL_31;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
    EncodeOptionsWithHEIFItemProperties = _createEncodeOptionsWithHEIFItemProperties(a1, ValueAtIndex, v32);
    if (OUTLINED_FUNCTION_2_27(EncodeOptionsWithHEIFItemProperties))
    {
      goto LABEL_24;
    }

    v32 = v33;
    v33 = 0;
  }

  v15 = CMPhotoCompressionSessionAddImage(a2);
  if (OUTLINED_FUNCTION_2_27(v15))
  {
    goto LABEL_24;
  }

  if (v34)
  {
    CFRelease(v34);
    v34 = 0;
  }

  FigCFDictionarySetInt();
  v16 = CFDictionaryGetValue(a4, @"ThumbnailImageList");
  if (v16)
  {
    v17 = CFGetTypeID(v16);
    if (v17 != CFArrayGetTypeID())
    {
      goto LABEL_31;
    }

    FigCFArrayApplyBlock();
    OUTLINED_FUNCTION_7_19();
    if (v18)
    {
      goto LABEL_24;
    }
  }

  v19 = CFDictionaryGetValue(a4, @"AuxiliaryImageList");
  if (v19)
  {
    v20 = CFGetTypeID(v19);
    if (v20 == CFArrayGetTypeID())
    {
      FigCFArrayApplyBlock();
      OUTLINED_FUNCTION_7_19();
      if (v21)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_31:
    *(v36 + 6) = -16990;
    goto LABEL_24;
  }

LABEL_17:
  v22 = &off_1F1916AD0;
  v23 = 4;
  while (1)
  {
    v24 = CFDictionaryGetValue(a4, *(v22 - 2));
    if (v24)
    {
      v25 = CFGetTypeID(v24);
      if (v25 != CFArrayGetTypeID())
      {
        goto LABEL_31;
      }

      FigCFArrayApplyBlock();
      OUTLINED_FUNCTION_7_19();
      if (v26)
      {
        break;
      }
    }

    v22 += 3;
    if (!--v23)
    {
      if (a5)
      {
        *a5 = -1;
      }

      break;
    }
  }

LABEL_24:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v27 = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  return v27;
}

uint64_t _writePictureHandleToGroup(uint64_t result, uint64_t a2)
{
  valuePtr = a2;
  if (result)
  {
    if (CFArrayGetCount(result) == 1)
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex && (v3 = CFGetTypeID(ValueAtIndex), v3 == CFDictionaryGetTypeID()))
      {
        CMPhotoCFDictionaryGetIntIfPresent();
        return 0;
      }

      else
      {
        return 4294950306;
      }
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

uint64_t _createBufferFromImageDescriptionEntry(const void *a1, CFTypeRef cf, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v17 = 0;
  cfa = 0;
  v16 = 0;
  if (!cf || (v11 = CFGetTypeID(cf), v11 != CFDictionaryGetTypeID()))
  {
    MutableCopy = 0;
LABEL_6:
    v13 = 4294950306;
    goto LABEL_7;
  }

  CFGetAllocator(a1);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v15 = 0;
    if (CMPhotoCFDictionaryGetIntIfPresent())
    {
      FigCFDictionaryGetValue();
    }

    goto LABEL_6;
  }

  v13 = 4294950305;
LABEL_7:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v13;
}

uint64_t _createEncodeOptionsWithHEIFItemProperties(int a1, CFTypeRef cf, const void *a3)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (!a3 || (v5 = CFGetTypeID(a3), v5 == CFDictionaryGetTypeID()))
      {
        if (CMPhotoCFDictionaryGetIntIfPresent())
        {
          FigCFDictionaryGetValue();
        }
      }
    }
  }

  return 4294950306;
}

uint64_t ___writeMainImageToDestination_block_invoke_3_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ___writeMainImageToDestination_block_invoke_3_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGDecodeSessionCreateCVPixelBufferFromData(uint64_t a1, const __CFData *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      return 4294951220;
    }

    else
    {

      return fjds_createPixelBufferFromJPEGData(a1, 0, a2, a3, a4, 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

uint64_t fjds_createPixelBufferFromJPEGData(uint64_t a1, uint64_t a2, const __CFData *AllocSize, uint64_t a4, uint64_t a5, int a6)
{
  v12 = v7;
  IntValue_0 = &v127;
  v129 = 0u;
  v130 = 0u;
  v128 = 0u;
  v127 = 0u;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  v121 = 0;
  v122 = 0;
  v120 = 0;
  v117 = 0;
  dsema = 0;
  v119 = 0;
  length = 0;
  v116 = 0;
  v113 = 0;
  pixelBuffer = 0;
  if (fjds_getRequestStatus(a1, a2))
  {
    OUTLINED_FUNCTION_3_25();
    v25 = 0;
    OUTLINED_FUNCTION_6_20();
    goto LABEL_174;
  }

  if (a4)
  {
    FourCCValue = _getFourCCValue(a4);
    if (FourCCValue != 875704422 && FourCCValue != 875704438 && FourCCValue != 1111970369 && FourCCValue != 1278555701)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_11();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, v97, v99);
      OUTLINED_FUNCTION_3_25();
      v25 = 0;
LABEL_24:
      OUTLINED_FUNCTION_6_20();
LABEL_25:
      LOBYTE(a4) = 1;
LABEL_119:
      LOBYTE(a5) = 1;
LABEL_120:
      IntValue_0 = &v127;
      goto LABEL_149;
    }

    v6 = FourCCValue;
    v104 = a6;
    IntValue_0 = _getIntValue_0(a4, @"OutputBytesPerRowAlignment");
    LODWORD(cf) = OUTLINED_FUNCTION_7_20(IntValue_0, @"ApplyTransform");
    v20 = _getIntValue_0(a4, @"MaxPixelSize");
    v21 = v20;
    v103 = a5;
    if (v20)
    {
      v20 = OUTLINED_FUNCTION_7_20(v20, @"RelaxMaxPixelSize");
      v12 = v20;
    }

    else
    {
      v12 = 0;
    }

    v23 = OUTLINED_FUNCTION_7_20(v20, @"AllowNonExactOutputDimensions");
    v105 = v23 == 0;
    v106 = OUTLINED_FUNCTION_7_20(v23, @"ForceHighSpeedDecode");
    v110 = _getIntValue_0(a4, @"KTraceArg");
    Value = CFDictionaryGetValue(a4, @"SourceIOSurface");
    v25 = Value;
    buffer = Value;
    if (Value)
    {
      AllocSize = CFGetTypeID(Value);
      if (AllocSize != IOSurfaceGetTypeID())
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_11();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, v97, v99);
        OUTLINED_FUNCTION_3_25();
        goto LABEL_24;
      }

      AllocSize = IOSurfaceGetAllocSize(v25);
      CMPhotoCFDictionaryGetSizeIfPresent(a4, @"SourceIOSurfaceSize", &length);
      if (length)
      {
        if (length > AllocSize)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_11();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, v97, v99);
          OUTLINED_FUNCTION_3_25();
          OUTLINED_FUNCTION_6_20();
          OUTLINED_FUNCTION_5_20();
          goto LABEL_149;
        }
      }

      else
      {
        length = AllocSize;
      }

      a5 = v6;
      v25 = buffer;
      if (IOSurfaceLock(buffer, 1u, 0))
      {
        OUTLINED_FUNCTION_3_25();
        OUTLINED_FUNCTION_6_20();
        LOBYTE(a5) = 1;
        IntValue_0 = &v127;
        LOBYTE(a4) = 1;
        goto LABEL_149;
      }

      v26 = *MEMORY[0x1E695E480];
      BaseAddress = IOSurfaceGetBaseAddress(buffer);
      v28 = CFDataCreateWithBytesNoCopy(v26, BaseAddress, length, *MEMORY[0x1E695E498]);
      v108 = 1;
      if (!v28)
      {
        LODWORD(AllocSize) = 0;
        cf = 0;
        v6 = 4294951225;
        OUTLINED_FUNCTION_5_20();
        v12 = 1;
        goto LABEL_149;
      }

      v25 = v28;
      AllocSize = v28;
    }

    else
    {
      a5 = v6;
      v108 = 0;
    }

    v107 = IntValue_0;
    v29 = CFDictionaryGetValue(a4, @"ProvidedPixelBuffer");
    if (v29)
    {
      v30 = v29;
      TypeID = CVPixelBufferGetTypeID();
      if (TypeID == CFGetTypeID(v30))
      {
        pixelBuffer = CFRetain(v30);
      }
    }

    v6 = a5;
    v22 = cf;
  }

  else
  {
    v104 = a6;
    v103 = a5;
    v110 = 0;
    buffer = 0;
    v25 = 0;
    v108 = 0;
    v106 = 0;
    v22 = 0;
    v12 = 0;
    v21 = 0;
    v107 = 0;
    v105 = 1;
    v6 = 875704422;
  }

  v32 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4(822280521, v110);
  }

  v33 = JPEGParseJPEGInfo(AllocSize, &v127, 1, *(a1 + 180) != 0);
  if (*v32 == 1)
  {
    OUTLINED_FUNCTION_1_25();
    OUTLINED_FUNCTION_4((v34 + 1), v35);
  }

  cf = v25;
  if (v33)
  {
    IntValue_0 = &v127;
    v25 = buffer;
    v12 = v108;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    OUTLINED_FUNCTION_3_25();
LABEL_174:
    LOBYTE(a4) = 1;
    goto LABEL_147;
  }

  if (BYTE4(v130))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
    RequestStatus = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_177;
  }

  v36 = 1;
  v112 = 1;
  if (JPEGParseExifOrientation(AllocSize, &v112))
  {
    v112 = 1;
  }

  else
  {
    v36 = v112;
  }

  JPEGCalculateOutputDimensions(v127, DWORD1(v127), v21, v12, v22, v36, &v125, &v123, &v121, &v120, 0);
  if (v120)
  {
    v37 = 1;
  }

  else
  {
    v37 = v125 != v123 || v126 != v124;
  }

  v39 = 875704422;
  v40 = JPEGDeviceInterface_supportsDecodeSize(v127, DWORD1(v127), v128, v125, v126);
  if (!v40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
    RequestStatus = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_177;
  }

  v41 = v40;
  if (v6 == 1111970369)
  {
    v42 = v6;
    v43 = v128;
    v44 = JPEGDeviceInterface_supportsAppleInterchangeFormats();
    if (v44)
    {
      v45 = 1111970369;
    }

    else
    {
      v45 = 875704422;
    }

    if (v44 != 0 && v37)
    {
      if (v43 == 2)
      {
        v46 = 875836518;
      }

      else
      {
        v46 = 875704422;
      }

      if (v43 == 1)
      {
        v39 = 2037741158;
      }

      else
      {
        v39 = v46;
      }
    }

    else
    {
      v39 = v45;
    }

    v6 = v42;
  }

  v102 = v6;
  v47 = v6 != v39 || v37;
  if (pixelBuffer)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v49 = PixelFormatType == v39 ? v41 : -16990;
    v6 = (v6 != v39) | v37 ? 4294950194 : v49;
    if (v47 || PixelFormatType != v39)
    {
      goto LABEL_73;
    }
  }

  if (v107)
  {
    v50 = 4;
    v51 = CMPhotoLeastCommonMultiple(4, v107);
    if (v47)
    {
      v52 = v51;
    }

    else
    {
      v50 = v51;
      v52 = 0;
    }

    v101 = v52;
    v53 = MEMORY[0x1E695FF58];
  }

  else
  {
    v53 = MEMORY[0x1E695FF58];
    if (v47)
    {
      v101 = 0;
      v50 = 4;
    }

    else
    {
      v50 = CMPhotoLeastCommonMultiple(4, 16);
      v101 = 0;
    }
  }

  RequestStatus = fjds_getRequestStatus(a1, a2);
  if (RequestStatus)
  {
LABEL_177:
    v6 = RequestStatus;
LABEL_73:
    LODWORD(AllocSize) = 0;
    LOBYTE(a4) = 1;
    LOBYTE(a5) = 1;
LABEL_95:
    IntValue_0 = &v127;
    v25 = buffer;
    v12 = v108;
    goto LABEL_149;
  }

  dispatch_semaphore_wait(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL);
  if (buffer && (BYTE5(v130) & 1) != 0)
  {
    v116 = CFRetain(buffer);
  }

  else
  {
    v55 = CFDataGetLength(AllocSize);
    v58 = 2;
    if (BYTE5(v130))
    {
      v58 = 0;
    }

    v59 = v58 + v55;
    if (*v53 == 1)
    {
      OUTLINED_FUNCTION_1_25();
      OUTLINED_FUNCTION_4((v60 + 4), v61);
    }

    v62 = *(a1 + 200);
    LOBYTE(a5) = 1;
    if (v62 == @"SurfacePoolOneShot")
    {
      v63 = 2;
    }

    else
    {
      v63 = 1;
    }

    if (CMPhotoSurfacePoolCreateMemorySurface(v62, v59, v63, &v116, v56, v57))
    {
      OUTLINED_FUNCTION_3_25();
      LOBYTE(a4) = 0;
      goto LABEL_95;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_1_25();
      OUTLINED_FUNCTION_4((v64 + 5), v65);
    }

    IOSurfaceLock(v116, 0, 0);
    v66 = IOSurfaceGetBaseAddress(v116);
    BytePtr = CFDataGetBytePtr(AllocSize);
    v68 = CFDataGetLength(AllocSize);
    memcpy(v66, BytePtr, v68);
    if ((BYTE5(v130) & 1) == 0)
    {
      *&v66[v59 - 2] = -9729;
    }

    IOSurfaceUnlock(v116, 0, 0);
    v53 = MEMORY[0x1E695FF58];
  }

  if (*v53 == 1)
  {
    OUTLINED_FUNCTION_1_25();
    OUTLINED_FUNCTION_4((v69 + 8), v70);
  }

  if (pixelBuffer)
  {
    v6 = 0;
  }

  else
  {
    v71 = v125;
    v72 = v126;
    v73 = DWORD2(v127);
    v74 = HIDWORD(v127);
    v75 = *(a1 + 200);
    if (v75 == @"SurfacePoolOneShot")
    {
      if (v50 <= 1)
      {
        v50 = 1;
      }

      v73 = CMPhotoLeastCommonMultiple(DWORD2(v127), v50);
      v75 = *(a1 + 200);
    }

    v6 = CMPhotoSurfacePoolCreatePixelBuffer(v75, v39, v71, v72, v105, v73, v74, 0, v50, 0, &pixelBuffer);
    v53 = MEMORY[0x1E695FF58];
  }

  v25 = buffer;
  v12 = v108;
  if (*v53 == 1)
  {
    OUTLINED_FUNCTION_1_25();
    OUTLINED_FUNCTION_4((v76 + 9), v77);
  }

  if (v6)
  {
    goto LABEL_179;
  }

  v78 = fjds_getRequestStatus(a1, a2);
  if (v78)
  {
    v6 = v78;
    goto LABEL_179;
  }

  dispatch_semaphore_wait(*(a1 + 152), 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock((a1 + 144));
  if (CFArrayGetCount(*(a1 + 136)) <= 0)
  {
    os_unfair_lock_unlock((a1 + 144));
    dispatch_semaphore_signal(*(a1 + 152));
    LODWORD(AllocSize) = 0;
    LOBYTE(a4) = 0;
    v6 = 4294951226;
    goto LABEL_119;
  }

  AllocSize = CFArrayGetValueAtIndex(*(a1 + 136), 0);
  CFArrayRemoveValueAtIndex(*(a1 + 136), 0);
  os_unfair_lock_unlock((a1 + 144));
  if (!v104)
  {
    v80 = v116;
    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    v82 = JPEGDecompressSurface(AllocSize, 0, v80, 0, IOSurface, &v127, v106 != 0, v110, v125, v126, 0, 0);
    if (!v82)
    {
      fjds_enqueueDriverConnection(a1, AllocSize);
      goto LABEL_127;
    }

    goto LABEL_183;
  }

  LODWORD(v119) = v110;
  os_unfair_lock_lock((a1 + 176));
  v79 = *(a1 + 168);
  if (v79)
  {
    a4 = *v79;
    *(a1 + 168) = v79[1];
    free(v79);
  }

  else
  {
    a4 = dispatch_semaphore_create(0);
  }

  os_unfair_lock_unlock((a1 + 176));
  dsema = a4;
  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v95, v98, v100);
    goto LABEL_119;
  }

  v83 = v116;
  v84 = CVPixelBufferGetIOSurface(pixelBuffer);
  *(&v96 + 1) = &v117;
  *&v96 = _asyncDecodeCompleteCallback;
  v82 = JPEGDecompressSurfaceAsync(AllocSize, v83, v84, &v127, v106 != 0, v110, v125, v126, v96, 0);
  if (v82)
  {
LABEL_183:
    v6 = v82;
    goto LABEL_184;
  }

  fjds_enqueueDriverConnection(a1, AllocSize);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v85 = dsema;
  os_unfair_lock_lock((a1 + 176));
  v86 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  v87 = *(a1 + 168);
  *v86 = v85;
  v86[1] = v87;
  *(a1 + 168) = v86;
  os_unfair_lock_unlock((a1 + 176));
  v6 = v117;
  if (v117)
  {
LABEL_179:
    LODWORD(AllocSize) = 0;
LABEL_184:
    LOBYTE(a4) = 0;
    goto LABEL_119;
  }

LABEL_127:
  v88 = v116;
  if (v116 != buffer)
  {
    IOSurfaceDecrementUseCount(v116);
    v88 = v116;
  }

  if (v88)
  {
    CFRelease(v88);
    v116 = 0;
  }

  dispatch_semaphore_signal(*(a1 + 80));
  CMPhotoAddDefault601709MatrixToBufferIfAllowed(pixelBuffer, 1, 0);
  v89 = fjds_getRequestStatus(a1, a2);
  v6 = v89;
  if (v47)
  {
    if (!v89)
    {
      dispatch_semaphore_wait(*(a1 + 88), 0xFFFFFFFFFFFFFFFFLL);
      if (v120)
      {
        v90 = v112;
      }

      else
      {
        v90 = 1;
      }

      LOBYTE(a4) = 1;
      if (CMPhotoScaleAndRotateSessionTransformForSize(*(a1 + 208), pixelBuffer, 1, v90, v102, 0, 0, v105, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v121, v122, v101, v106, &v113))
      {
        OUTLINED_FUNCTION_3_25();
        LOBYTE(a5) = 0;
        goto LABEL_120;
      }

      IntValue_0 = &v127;
      if (pixelBuffer)
      {
        CFRelease(pixelBuffer);
        pixelBuffer = 0;
      }

      dispatch_semaphore_signal(*(a1 + 88));
      if (fjds_getRequestStatus(a1, a2))
      {
        OUTLINED_FUNCTION_3_25();
        goto LABEL_147;
      }

      v91 = v113;
      *v103 = v113;
      v113 = 0;
      goto LABEL_143;
    }

LABEL_185:
    LODWORD(AllocSize) = 0;
    goto LABEL_25;
  }

  if (v89)
  {
    goto LABEL_185;
  }

  v91 = pixelBuffer;
  *v103 = pixelBuffer;
  pixelBuffer = 0;
  IntValue_0 = &v127;
LABEL_143:
  LODWORD(AllocSize) = 0;
  LOBYTE(a4) = 1;
  if (*(a1 + 180) && *(&v129 + 4) && v91)
  {
    CVBufferSetAttachment(v91, *MEMORY[0x1E6965CE8], *(&v129 + 4), kCVAttachmentMode_ShouldPropagate);
    LODWORD(AllocSize) = 0;
    v6 = 0;
LABEL_147:
    LOBYTE(a5) = 1;
    goto LABEL_149;
  }

  LOBYTE(a5) = 1;
  v6 = 0;
LABEL_149:
  v92 = *(IntValue_0 + 36);
  if (v92)
  {
    CFRelease(v92);
  }

  if (AllocSize)
  {
    fjds_enqueueDriverConnection(a1, AllocSize);
  }

  if (v116 && v116 != v25)
  {
    IOSurfaceDecrementUseCount(v116);
  }

  if (v25 && v12)
  {
    IOSurfaceUnlock(v25, 1u, 0);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((a4 & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 80));
  }

  if ((a5 & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 88));
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  return v6;
}

uint64_t CMPhotoJPEGDecodeSessionCreateCGImageFromData(_BYTE *a1, const __CFData *a2, const __CFDictionary *a3, CGImageRef *a4)
{
  pixelBuffer = 0;
  v16 = 1;
  if (a1)
  {
    if (a1[16])
    {
      return 4294951220;
    }

    v9 = unpackCGImageRequestOptions(a3, &v16);
    if (v9)
    {
      return v9;
    }

    PixelBufferFromJPEGData = fjds_createPixelBufferFromJPEGData(a1, 0, a2, a3, &pixelBuffer, 0);
    if (PixelBufferFromJPEGData)
    {
      CGImageWithPixelBuffer = PixelBufferFromJPEGData;
      v12 = pixelBuffer;
      if (!pixelBuffer)
      {
        return CGImageWithPixelBuffer;
      }
    }

    else
    {
      v11 = CFGetAllocator(a1);
      v12 = pixelBuffer;
      CGImageWithPixelBuffer = CMPhotoCreateCGImageWithPixelBuffer(v11, pixelBuffer, v16, a4);
      if (!v12)
      {
        return CGImageWithPixelBuffer;
      }
    }

    CFRelease(v12);
    return CGImageWithPixelBuffer;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951226, "<<<< CMPhotoJPEGDecodeSession >>>>", 1262, v4);
}

uint64_t CMPhotoJPEGDecodeSessionCancelRequest(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      return 4294951220;
    }

    os_unfair_lock_lock((a1 + 40));
    if (CFSetContainsValue(*(a1 + 32), a2))
    {
      CFSetRemoveValue(*(a1 + 32), a2);
      v5 = 0;
    }

    else
    {
      v5 = 4294951223;
    }

    os_unfair_lock_unlock((a1 + 40));
    return v5;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951226, "<<<< CMPhotoJPEGDecodeSession >>>>", 1428, v2);
  }
}

uint64_t CMPhotoJPEGDecodeSessionDiscardCachedBuffers(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      return 4294951220;
    }

    else
    {
      CMPhotoSurfacePoolFlushCaches(*(a1 + 200), 0);
      CMPhotoScaleAndRotateSessionDiscardCaches(*(a1 + 208), v3);
      return 0;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951226, "<<<< CMPhotoJPEGDecodeSession >>>>", 1451, v1);
  }
}

void CMPhotoJPEGDecodeSessionCreate_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);

  CFRelease(a1);
}

uint64_t unpackCGImageRequestOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;
  return v3 == 0;
}

void CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_cold_2(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  global_queue = dispatch_get_global_queue(0, 0);
  *a1 = MEMORY[0x1E69E9820];
  a1[1] = 0x40000000;
  a1[2] = __CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_block_invoke_2;
  a1[3] = &unk_1E77A32F8;
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = 0;
  *(a1 + 14) = a4;
  dispatch_async(global_queue, a1);
}

uint64_t JPEGCompressionPluginClass_create(uint64_t a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x10600400847F242uLL);
    v5 = v4;
    if (v4)
    {
      *v4 = 0;
      if (!a2 || (CMPhotoCFDictionaryGetBooleanIfPresent(), FigCFDictionaryGetIntIfPresent(), HIBYTE(v12) = 0, CMPhotoCFDictionaryGetBooleanIfPresent(), CMPhotoCFDictionaryGetBooleanIfPresent(), *(v5 + 1) = CFDictionaryCreateCopy(*a1, a2), !*v5))
      {
        if (CMPhotoUnifiedJPEGEncoderIsHardwareAvailable())
        {
          v6 = 2;
        }

        else
        {
          v6 = 1;
        }

        *v5 = v6;
      }

      CMPhotoGetEncodeAccelerationModeOverride();
      *v5 = v7;
      if (*(v5 + 4) || (v8 = dispatch_queue_create("com.apple.coremedia.jpeg-encoder", MEMORY[0x1E69E96A8]), (*(v5 + 2) = v8) != 0))
      {
        v9 = CMPhotoUnifiedJPEGEncoderCreate(*a1, *(a1 + 16), *(a1 + 8), 0, v5 + 3);
        if (!v9)
        {
          *(a1 + 152) = v5;
          v5 = 0;
        }
      }

      else
      {
        v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
      }
    }

    else
    {
      v9 = 4294950305;
    }
  }

  else
  {
    v5 = 0;
    v9 = 4294950306;
  }

  PluginInstance_Dispose_0(v5);
  return v9;
}

uint64_t JPEGCompressionPluginClass_encode(uint64_t a1, CFTypeRef cf, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    return 4294950306;
  }

  v8 = *(a1 + 152);
  if (!v8)
  {
    return 4294950195;
  }

  if (!cf)
  {
    return 4294950306;
  }

  v38 = 0;
  v37 = 0;
  if (a6)
  {
    CMPhotoCFDictionaryGetSizeIfPresent(a6, @"BitDepth", &v38);
    CMPhotoCFDictionaryGetInt32IfPresent();
  }

  if (*(v8 + 4))
  {
    v26[0] = 0;
    v27 = a1;
    v21 = CFRetain(cf);
    v22 = a4[1];
    v29 = *a4;
    v30 = v22;
    v23 = a5[1];
    v31 = *a5;
    v28 = v21;
    v32 = v23;
    v33 = v38;
    v34 = v37;
    v35 = a7;
    v36 = 0;
    _dispatch_encode(v26);
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A0040BC83C01EuLL);
    if (!v13)
    {
      return 4294950305;
    }

    v14 = v13;
    v15 = CFRetain(cf);
    v16 = *a4;
    v25 = a4[1];
    v17 = *a5;
    v24 = a5[1];
    v18 = v38;
    v19 = v37;
    *v14 = 1;
    *(v14 + 1) = a1;
    *(v14 + 2) = v15;
    *(v14 + 24) = v16;
    *(v14 + 40) = v25;
    *(v14 + 56) = v17;
    *(v14 + 72) = v24;
    *(v14 + 11) = v18;
    *(v14 + 24) = v19;
    *(v14 + 13) = a7;
    *(v14 + 14) = 0;
    dispatch_async_f(*(v8 + 16), v14, _dispatch_encode);
  }

  return 0;
}

uint64_t JPEGCompressionPluginClass_completeEncodes(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  v1 = *(a1 + 152);
  if (!v1)
  {
    return 4294950195;
  }

  if (!*(v1 + 4))
  {
    dispatch_barrier_sync_f(*(v1 + 16), 0, _dispatch_empty_1);
  }

  return 0;
}

void _dispatch_encode(_BYTE *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v7 = *(a1 + 7);
  DictionaryRepresentation = *(a1 + 8);
  v34 = *(a1 + 10);
  pixelBuffer = *(a1 + 2);
  v8 = *(a1 + 11);
  v9 = *(a1 + 24);
  v33 = *(a1 + 13);
  if (*a1)
  {
    free(a1);
  }

  v10 = *(v1 + 152);
  v43 = 0;
  cf = 0;
  v11 = MEMORY[0x1E695E480];
  if (*(v10 + 1) || v8 || (MutableCopy = 0, v9))
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v31);
      v22 = 0;
      OUTLINED_FUNCTION_0_30();
      Mutable = 0;
      v23 = pixelBuffer;
      v24 = v33;
      goto LABEL_37;
    }

    if (v8)
    {
      CMPhotoCFDictionarySetSize(MutableCopy, @"BitDepth", v8);
    }

    if (v9)
    {
      CMPhotoCFDictionarySetInt32(MutableCopy, @"Subsampling", v9);
    }

    v11 = MEMORY[0x1E695E480];
  }

  v37 = v1;
  v9 = (v38 + v7);
  v12 = v4 + v2;
  v13 = v34;
  v14 = v34 + DictionaryRepresentation;
  v3 += v5;
  if (v38 + v7 <= v12 && v14 <= v3)
  {
    v20 = 0;
    v32 = 0;
    v9 = 0;
    Mutable = 0;
    v23 = pixelBuffer;
    v22 = MutableCopy;
    v24 = v33;
LABEL_36:
    v25 = *(v10 + 3);
    v26 = *v10;
    v39.i64[0] = v7;
    v39.i64[1] = DictionaryRepresentation;
    v40 = v38;
    v41 = v13;
    v27 = CMPhotoUnifiedJPEGEncoderEncode(v25, v22, v23, 0, &v39, 1, v26, v10, &v43);
    v28 = v43;
    DictionaryRepresentation = v20;
    v1 = v37;
    v3 = v32;
    goto LABEL_37;
  }

  v16 = v11;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (CMPhotoSurfacePoolCreatePixelBuffer(*(v37 + 8), PixelFormatType, v38, v34, 0, 0, 0, 0, 0, 0, &cf))
  {
    OUTLINED_FUNCTION_0_30();
    Mutable = 0;
LABEL_58:
    v22 = MutableCopy;
    v1 = v37;
    v24 = v33;
    v23 = pixelBuffer;
    goto LABEL_37;
  }

  if (v14 <= v3)
  {
    v3 = v34;
  }

  else
  {
    v3 -= DictionaryRepresentation;
  }

  if (v9 <= v12)
  {
    v18 = v38;
  }

  else
  {
    v18 = v12 - v7;
  }

  Mutable = CFDictionaryCreateMutable(*v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_0_30();
    v27 = 4294950305;
    goto LABEL_58;
  }

  v44.origin.x = v7;
  v44.origin.y = DictionaryRepresentation;
  v44.size.width = v18;
  v44.size.height = v3;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v44);
  v24 = v33;
  v1 = v37;
  if (DictionaryRepresentation)
  {
    CFDictionarySetValue(Mutable, @"SourceCropRectDictionary", DictionaryRepresentation);
  }

  v3 = CMPhotoColorTripletCreateDictionaryRepresentation(0, 1);
  v23 = pixelBuffer;
  if (v3)
  {
    CFDictionarySetValue(Mutable, @"DestinationColorTripletDictionary", v3);
  }

  v45.origin.x = OUTLINED_FUNCTION_1_26();
  v9 = CGRectCreateDictionaryRepresentation(v45);
  v22 = MutableCopy;
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"DestinationCropRectDictionary", v9);
  }

  v19 = CMPhotoScaleAndRotateSessionTransformImage(*(v37 + 16), pixelBuffer, Mutable, &cf);
  if (!v19)
  {
    OUTLINED_FUNCTION_1_26();
    v19 = VTFillPixelBufferBorderWithBlack();
    if (!v19)
    {
      v32 = v3;
      v20 = DictionaryRepresentation;
      if (pixelBuffer)
      {
        CFRelease(pixelBuffer);
      }

      DictionaryRepresentation = 0;
      v7 = 0;
      v23 = cf;
      cf = 0;
      v13 = v34;
      goto LABEL_36;
    }
  }

  v27 = v19;
  v28 = 0;
LABEL_37:
  (*(v1 + 136))(v1, v27, v28, *(v1 + 144), v24);
  if (v43)
  {
    CFRelease(v43);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

uint64_t CMPhotoCreateImageSurfaceWrappingPixelBuffer(__CVBuffer *a1, _BYTE *a2, __IOSurface **a3)
{
  v4 = 4294950306;
  if (a1)
  {
    if (a2)
    {
      v6 = a3;
      if (a3)
      {
        allocator = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          return 4294950305;
        }

        v9 = Mutable;
        v42 = *a2;
        if (!*a2)
        {
          v10 = CVPixelBufferLockBaseAddress(a1, 1uLL);
          if (v10)
          {
            v4 = v10;
LABEL_23:
            CFRelease(v9);
            return v4;
          }

          *a2 = 1;
        }

        PixelBufferSize = CMPhotoGetPixelBufferSize(a1);
        v13 = v12;
        PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        FigCFDictionarySetInt64();
        v54 = BaseAddress;
        if ((*MEMORY[0x1E69E9AB8] & BaseAddress) != 0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_0();
          v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, v43);
          v18 = 0;
          v22 = 0;
        }

        else
        {
          v16 = vcvtad_u64_f64(v13);
          CMPhotoCFDictionarySetInt(v9, *MEMORY[0x1E696CE60], 0);
          CMPhotoCFDictionarySetSize(v9, *MEMORY[0x1E696D130], vcvtad_u64_f64(PixelBufferSize));
          CMPhotoCFDictionarySetSize(v9, *MEMORY[0x1E696CF58], v16);
          CMPhotoCFDictionarySetInt32(v9, *MEMORY[0x1E696CFC0], PixelFormatType);
          BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
          if (CVPixelBufferIsPlanar(a1))
          {
            if (CVPixelBufferGetPlaneCount(a1) != 2)
            {
              v18 = 0;
              v22 = 0;
              v4 = 4294950301;
              goto LABEL_29;
            }

            DataSize = CVPixelBufferGetDataSize(a1);
            v18 = CFArrayCreateMutable(allocator, 2, MEMORY[0x1E695E9C0]);
            if (v18)
            {
              v52 = BytesPerPixelForPixelFormat;
              v44 = v6;
              theDict = v9;
              v19 = 0;
              v51 = *MEMORY[0x1E696D0C8];
              v50 = *MEMORY[0x1E696D090];
              v49 = *MEMORY[0x1E696CFE0];
              v48 = *MEMORY[0x1E696CFE8];
              v47 = *MEMORY[0x1E696D0B0];
              v46 = *MEMORY[0x1E696D0B8];
              v20 = 1;
              while (1)
              {
                v21 = v20;
                v22 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v22)
                {
                  break;
                }

                CFArrayAppendValue(v18, v22);
                v23 = OUTLINED_FUNCTION_11_16();
                WidthOfPlane = CVPixelBufferGetWidthOfPlane(v23, v24);
                v26 = OUTLINED_FUNCTION_11_16();
                HeightOfPlane = CVPixelBufferGetHeightOfPlane(v26, v27);
                v29 = OUTLINED_FUNCTION_11_16();
                BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v29, v30);
                v32 = OUTLINED_FUNCTION_11_16();
                BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v32, v33);
                v35 = BaseAddressOfPlane - v54;
                if (BaseAddressOfPlane < v54)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_14();
                  v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v41, v44);
                  goto LABEL_27;
                }

                if (v35 + BytesPerRowOfPlane * HeightOfPlane > DataSize)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_14();
                  v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v41, v44);
                  v9 = theDict;
                  goto LABEL_29;
                }

                CMPhotoCFDictionarySetSize(v22, v51, WidthOfPlane);
                CMPhotoCFDictionarySetSize(v22, v50, HeightOfPlane);
                CMPhotoCFDictionarySetSize(v22, v49, v52 << v19);
                CMPhotoCFDictionarySetSize(v22, v48, BytesPerRowOfPlane);
                CMPhotoCFDictionarySetSize(v22, v47, v35);
                CMPhotoCFDictionarySetSize(v22, v46, BytesPerRowOfPlane * HeightOfPlane);
                CFRelease(v22);
                v20 = 0;
                v19 = 1;
                if ((v21 & 1) == 0)
                {
                  v9 = theDict;
                  CFDictionarySetValue(theDict, *MEMORY[0x1E696D0A8], v18);
                  v6 = v44;
                  goto LABEL_19;
                }
              }

              v4 = 4294950305;
LABEL_27:
              v9 = theDict;
              goto LABEL_29;
            }
          }

          else
          {
            BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
            CMPhotoCFDictionarySetInt(v9, *MEMORY[0x1E696CFA8], 0);
            CMPhotoCFDictionarySetSize(v9, *MEMORY[0x1E696CE58], BytesPerRow);
            CMPhotoCFDictionarySetSize(v9, *MEMORY[0x1E696CE50], BytesPerPixelForPixelFormat);
            CMPhotoCFDictionarySetSize(v9, *MEMORY[0x1E696CE30], BytesPerRow * v16);
            v18 = 0;
LABEL_19:
            v37 = IOSurfaceCreate(v9);
            if (v37)
            {
              v38 = v37;
              IOSurfaceSetValue(v37, *MEMORY[0x1E696CF98], @"CMPhoto Wrapped Image");
              v4 = 0;
              *v6 = v38;
LABEL_21:
              if (v18)
              {
                CFRelease(v18);
              }

              goto LABEL_23;
            }
          }

          v22 = 0;
          v4 = 4294950305;
        }

LABEL_29:
        if (!v42)
        {
          CVPixelBufferUnlockBaseAddress(a1, 1uLL);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        goto LABEL_21;
      }
    }
  }

  return v4;
}

OpaqueCMBlockBuffer *CMPhotoCreateSampleBufferWrappingIOSurface(const __CFAllocator *a1, __IOSurface *a2, unint64_t a3, size_t a4, char a5, IOSurfaceLockOptions a6)
{
  v6 = a3;
  target = 0;
  sampleSizeArray = a4;
  result = CMPhotoCreateBlockBufferWrappingIOSurface(a1, a2, a3, a4, a5, a6);
  if (result)
  {
    v10 = result;
    if (CMSampleBufferCreate(a1, result, 1u, 0, 0, 0, 1, 0, 0, 1, &sampleSizeArray, &target))
    {
      if (target)
      {
        CFRelease(target);
        target = 0;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v12 = Mutable;
        CFDictionarySetValue(Mutable, @"IOSurface", a2);
        CMPhotoCFDictionarySetInt(v12, @"IOSurfaceDataOffset", v6);
        CMPhotoCFDictionarySetInt(v12, @"IOSurfaceDataSize", sampleSizeArray);
        CMSetAttachments(target, v12, 1u);
        CMPropagateAttachments(target, v10);
        CFRelease(v12);
      }
    }

    CFRelease(v10);
    return target;
  }

  return result;
}

uint64_t CMPhotoCreateBlockBufferWrappingIOSurface_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateBlockBufferWrappingIOSurface_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VideoQualityControllerClass_create_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, CFTypeRef cf)
{
  if (cf)
  {
    v10 = CFGetTypeID(cf);
    if (v10 != CFDictionaryGetTypeID())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_5_0();
      v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
      goto LABEL_31;
    }
  }

  pthread_once(&_checkFigNoteTraceOnce_onceToken_5, _registerFigNoteTrace_5);
  v11 = malloc_type_calloc(1uLL, 0x38uLL, 0x106004071E7DF65uLL);
  v12 = v11;
  if (!v11)
  {
    v22 = 4294950305;
    goto LABEL_32;
  }

  *v11 = a3;
  v11[1] = a4;
  v11[2] = -1;
  *(v11 + 6) = -1082130432;
  *(v11 + 40) = 1;
  *(v11 + 28) = 1;
  *(v11 + 8) = a2;
  *(v11 + 9) = 1;
  if (cf)
  {
    v13 = OUTLINED_FUNCTION_1_27();
    if (CFDictionaryContainsKey(v13, v14))
    {
      OUTLINED_FUNCTION_1_27();
      if (!CMPhotoCFDictionaryGetFloatIfPresent())
      {
        goto LABEL_35;
      }

      if (-1.0 < 0.0 || -1.0 > 1.0)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_0_31(-1.0);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_1_27();
      v16 = CFDictionaryContainsKey(v18, v19);
      if (v16)
      {
        OUTLINED_FUNCTION_1_27();
        CMPhotoCFDictionaryGetIntIfPresent();
        goto LABEL_35;
      }
    }

    if (a2 != 1635148593)
    {
      if (a2 != 1752589105 || !CMPhotoReuseCompressionSessionForDifferentQuantizationMatrixPresetDisabled(v16, v17))
      {
LABEL_24:
        CMPhotoCFDictionaryGetBooleanIfPresent();
        if (*(v12 + 4) != -1)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      *(a1 + 32) = *(v12 + 9);
LABEL_23:
      FigCFDictionaryGetInt32IfPresent();
      goto LABEL_24;
    }

    if (!CFDictionaryContainsKey(cf, @"EntropyMode"))
    {
LABEL_22:
      *(a1 + 33) = 3;
      goto LABEL_23;
    }

    CFDictionaryGetValue(cf, @"EntropyMode");
    if (FigCFEqual() || FigCFEqual())
    {
      *(a1 + 32) = FigCFEqual();
      goto LABEL_22;
    }

LABEL_35:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_32;
  }

LABEL_25:
  if (*(v12 + 6) == -1.0)
  {
    HEIFQualityDefault = CMPhotoGetHEIFQualityDefault(*(a1 + 40), *(a1 + 48));
    OUTLINED_FUNCTION_0_31(HEIFQualityDefault);
  }

  if (!cf)
  {
    v21 = 0;
    goto LABEL_30;
  }

LABEL_28:
  v21 = CFRetain(cf);
LABEL_30:
  v22 = 0;
  v12[6] = v21;
  *(a1 + 56) = v12;
LABEL_31:
  v12 = 0;
LABEL_32:
  QualityController_dispose(v12);
  return v22;
}

uint64_t VideoQualityControllerClass_setSessionProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionBuildSequenceReadersAndCopyDescription(const void *a1, uint64_t a2, __CFArray **a3)
{
  v6 = a1;
  v7 = CFGetAllocator(a1);
  v152 = 0;
  v153 = 0;
  v159 = 0;
  v160[0] = 0;
  Mutable = CFArrayCreateMutable(v7, 0, 0);
  v119 = a3;
  v135 = v6;
  if (Mutable)
  {
    FigBaseObject = FigFormatReaderGetFigBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      hasTrackReferenceOfType = v10(FigBaseObject, *MEMORY[0x1E6971AC0], v7, &v153);
      if (hasTrackReferenceOfType)
      {
LABEL_107:
        ReferenceSequenceReaders = hasTrackReferenceOfType;
LABEL_108:
        FigBaseObject = 0;
      }

      else
      {
        HIDWORD(v151) = 0;
        if (*(*(CMBaseObjectGetVTable() + 16) + 64))
        {
          v12 = 0;
          OUTLINED_FUNCTION_9_20();
          while (1)
          {
            if (!v13)
            {
              goto LABEL_42;
            }

            v14 = v13(a2, v12, 1885954932, 0, &v151 + 4);
            if (v14)
            {
              goto LABEL_42;
            }

            WORD1(v151) = 0;
            v22 = OUTLINED_FUNCTION_7_22(v14, v15, v16, v17, v18, v19, v20, v21, v117, v118, v119, v120, v125, v130, v135, v136, v141, key, v151, v152, v153);
            hasTrackReferenceOfType = _hasTrackReferenceOfType(v22, @"thmb", v23, &v151 + 3);
            if (hasTrackReferenceOfType)
            {
              goto LABEL_107;
            }

            v31 = OUTLINED_FUNCTION_7_22(hasTrackReferenceOfType, v24, v25, v26, v27, v28, v29, v30, v117, v118, v119, v121, v126, v131, v135, v137, v142, keya, v151, v152, v153);
            hasTrackReferenceOfType = _hasTrackReferenceOfType(v31, @"auxl", v32, &v151 + 2);
            if (hasTrackReferenceOfType)
            {
              goto LABEL_107;
            }

            if (!(BYTE3(v151) | BYTE2(v151)))
            {
              break;
            }

LABEL_11:
            v13 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            ++v12;
            if (!v13)
            {
              goto LABEL_42;
            }
          }

          v40 = OUTLINED_FUNCTION_7_22(hasTrackReferenceOfType, v33, v34, v35, v36, v37, v38, v39, v117, v118, v119, v120, v125, v130, v135, v136, v141, key, v151, v152, v153);
          v42 = _copyTrackReferencesOfType(v40, @"thmb", v41, v160);
          if (v42)
          {
            OUTLINED_FUNCTION_4_22();
            if (!v50)
            {
              goto LABEL_108;
            }
          }

          v51 = OUTLINED_FUNCTION_7_22(v42, v43, v44, v45, v46, v47, v48, v49, v117, v118, v119, v122, v127, v132, v135, v138, v143, keyb, v151, v152, v153);
          v53 = _copyTrackReferencesOfType(v51, @"auxl", v52, &v159);
          if (v53)
          {
            OUTLINED_FUNCTION_4_22();
            if (!v50)
            {
              goto LABEL_108;
            }
          }

          v61 = OUTLINED_FUNCTION_7_22(v53, v54, v55, v56, v57, v58, v59, v60, v117, v118, v119, v123, v128, v133, v135, v139, v144, keyc, v151, v152, v153);
          if (_copyTrackReferencesOfType(v61, @"cdsc", v62, &v152))
          {
            OUTLINED_FUNCTION_4_22();
            if (!v50)
            {
              goto LABEL_108;
            }
          }

          v63 = HIDWORD(v151);
          v64 = FigBaseObject;
          v65 = v159;
          v66 = v160[0];
          cf[0] = 0;
          v67 = malloc_type_calloc(1uLL, 0x18uLL, v64);
          if (!v67)
          {
            FigBaseObject = 0;
            ReferenceSequenceReaders = 4294950305;
LABEL_112:
            v6 = v135;
            goto LABEL_43;
          }

          v68 = v67;
          v69 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v69)
          {
            SequenceReader_0 = v69(a2, v63, cf, 0);
            if (SequenceReader_0 || (SequenceReader_0 = _createSequenceReader_0(v7, a2, cf[0], v68), SequenceReader_0) || (SequenceReader_0 = _createReferenceSequenceReaders(v7, a2, v66, 1885954932, v68 + 1), SequenceReader_0))
            {
              ReferenceSequenceReaders = SequenceReader_0;
            }

            else
            {
              ReferenceSequenceReaders = _createReferenceSequenceReaders(v7, a2, v65, 1635088502, v68 + 2);
              if (!ReferenceSequenceReaders)
              {
                FigBaseObject = v68;
                v68 = 0;
                goto LABEL_31;
              }
            }

            FigBaseObject = 0;
          }

          else
          {
            FigBaseObject = 0;
            ReferenceSequenceReaders = 4294954514;
          }

LABEL_31:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          _destroySequenceGroupReader(v68);
          if (ReferenceSequenceReaders)
          {
            goto LABEL_112;
          }

          CFArrayAppendValue(Mutable, FigBaseObject);
          v6 = v135;
          if (v160[0])
          {
            CFRelease(v160[0]);
            v160[0] = 0;
          }

          OUTLINED_FUNCTION_9_20();
          if (v71)
          {
            CFRelease(v71);
            v159 = 0;
          }

          if (v152)
          {
            CFRelease(v152);
            v152 = 0;
          }

          goto LABEL_11;
        }

LABEL_42:
        FigBaseObject = 0;
        ReferenceSequenceReaders = 0;
        *(v6 + 144) = Mutable;
        Mutable = 0;
      }
    }

    else
    {
      FigBaseObject = 0;
      ReferenceSequenceReaders = 4294954514;
    }
  }

  else
  {
    FigBaseObject = 0;
    ReferenceSequenceReaders = 4294950305;
  }

LABEL_43:
  if (v153)
  {
    CFRelease(v153);
  }

  _destroySequenceGroupReader(FigBaseObject);
  CMPhotoCompressionSessionDestroySequenceGroupReaders(Mutable);
  if (!ReferenceSequenceReaders)
  {
    v72 = CFArrayCreateMutable(*(v6 + 96), 0, MEMORY[0x1E695E9C0]);
    if (v72)
    {
      v73 = v72;
      v74 = 0;
      v145 = @"Auxiliary";
      keyd = @"ThumbnailImage";
      v124 = @"ImageList";
      v129 = @"SequenceHandle";
      v75 = MEMORY[0x1E6960C70];
      v134 = *&v72;
      while (1)
      {
        Count = *(v6 + 144);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v74 >= Count)
        {
          break;
        }

        v77 = *(v6 + 96);
        v159 = 0;
        v160[0] = 0;
        v78 = *(v6 + 144);
        if (!v78)
        {
          ReferenceSequenceReaders = 4294950304;
          goto LABEL_105;
        }

        if (CFArrayGetCount(v78) <= v74)
        {
          v114 = 0;
          ReferenceSequenceReaders = 4294950304;
          v73 = *&v134;
          goto LABEL_82;
        }

        v140 = *&v74;
        ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 144), v74);
        v80 = CFArrayCreateMutable(v77, 0, MEMORY[0x1E695E9C0]);
        if (!v80)
        {
          v114 = 0;
          ReferenceSequenceReaders = 4294950305;
          v73 = *&v134;
          v74 = *&v140;
          goto LABEL_82;
        }

        v81 = v80;
        v82 = *ValueAtIndex;
        v83 = _moveCursorToPosition(*ValueAtIndex, 0);
        if (v83)
        {
          ReferenceSequenceReaders = v83;
          v114 = 0;
          goto LABEL_94;
        }

        v84 = 0;
        do
        {
          v85 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!v85)
          {
            v114 = 0;
            ReferenceSequenceReaders = 4294950305;
LABEL_94:
            v86 = v81;
            v73 = *&v134;
            v6 = v135;
            goto LABEL_95;
          }

          v86 = v85;
          v158 = *(v75 + 16);
          *cf = *v75;
          v87 = *(v82 + 16);
          v88 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v88)
          {
            goto LABEL_79;
          }

          ReferenceSequencesDescription = v88(v87, cf);
          if (ReferenceSequencesDescription)
          {
LABEL_92:
            ReferenceSequenceReaders = ReferenceSequencesDescription;
            goto LABEL_80;
          }

          if ((*(v82 + 32) & 0x8000000000000000) != 0)
          {
            fig_log_get_emitter();
            ReferenceSequencesDescription = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v117, v118, v119);
            if (ReferenceSequencesDescription)
            {
              goto LABEL_92;
            }

            v93 = 1;
          }

          else
          {
            v153 = 0;
            v90 = *(v82 + 16);
            v91 = *(*(CMBaseObjectGetVTable() + 16) + 176);
            if (!v91)
            {
LABEL_79:
              ReferenceSequenceReaders = 4294954514;
LABEL_80:
              v73 = *&v134;
              v6 = v135;
              v74 = *&v140;
              CFRelease(v81);
              v114 = 0;
              goto LABEL_81;
            }

            ReferenceSequencesDescription = v91(v90, 1, &v153);
            if (ReferenceSequencesDescription)
            {
              goto LABEL_92;
            }

            v92 = v153;
            *(v82 + 32) += v153;
            v93 = v92 == 1;
          }

          FigCFDictionarySetInt();
          OUTLINED_FUNCTION_6_22(v94, v95, v96, v97, v98, v99, v100, v101, *&v117, *&v118, *&v119, *&v124, *&v129, v134, *&v135, v140, *&v145, *&keyd, *&v151, *&v152, *&v153, v154, v155, v156, *cf);
          ReferenceSequencesDescription = _createReferenceSequencesDescription(v77, v102, v103, v160);
          if (ReferenceSequencesDescription)
          {
            goto LABEL_92;
          }

          if (v160[0] && CFArrayGetCount(v160[0]) >= 1)
          {
            CFDictionaryAddValue(v86, keyd, v160[0]);
          }

          OUTLINED_FUNCTION_6_22(v104, v105, v106, v107, v108, v109, v110, v111, *&v117, *&v118, *&v119, *&v124, *&v129, v134, *&v135, v140, *&v145, *&keyd, *&v151, *&v152, *&v153, v154, v155, v156, *cf);
          ReferenceSequencesDescription = _createReferenceSequencesDescription(v77, v112, v113, &v159);
          if (ReferenceSequencesDescription)
          {
            goto LABEL_92;
          }

          if (v159 && CFArrayGetCount(v159) >= 1)
          {
            CFDictionaryAddValue(v86, v145, v159);
          }

          CFArrayAppendValue(v81, v86);
          CFRelease(v86);
          if (v160[0])
          {
            CFRelease(v160[0]);
            v160[0] = 0;
          }

          if (v159)
          {
            CFRelease(v159);
            v159 = 0;
          }

          ++v84;
        }

        while (v93);
        v115 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v114 = v115;
        v73 = *&v134;
        v6 = v135;
        if (v115)
        {
          v74 = *&v140;
          FigCFDictionarySetInt64();
          CFDictionaryAddValue(v114, v124, v81);
          ReferenceSequenceReaders = 0;
          v86 = v81;
          goto LABEL_81;
        }

        ReferenceSequenceReaders = 4294950305;
        v86 = v81;
LABEL_95:
        v74 = *&v140;
LABEL_81:
        CFRelease(v86);
LABEL_82:
        if (v160[0])
        {
          CFRelease(v160[0]);
        }

        if (v159)
        {
          CFRelease(v159);
        }

        if (ReferenceSequenceReaders)
        {
          if (v114)
          {
            CFRelease(v114);
          }

          v73 = *&v134;
          goto LABEL_105;
        }

        CFArrayAppendValue(v73, v114);
        if (v114)
        {
          CFRelease(v114);
        }

        ++v74;
      }

      if (v119 && CFArrayGetCount(v73) >= 1)
      {
        ReferenceSequenceReaders = 0;
        *v119 = v73;
        return ReferenceSequenceReaders;
      }

      ReferenceSequenceReaders = 0;
LABEL_105:
      CFRelease(v73);
    }

    else
    {
      return 4294950305;
    }
  }

  return ReferenceSequenceReaders;
}

size_t _compressThumbnail_1(uint64_t a1, int a2, CFDictionaryRef theDict, opaqueCMSampleBuffer *a4)
{
  v12[0] = 0;
  v12[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a4, theDict, v12);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  OUTLINED_FUNCTION_10_19();
  if (v9)
  {
    kdebug_trace();
  }

  v10 = _compressX(a1, theDict, a4, 1, a2, 0, 0, -1, MEMORY[0x1E6960C70], 0);
  OUTLINED_FUNCTION_10_19();
  if (v9)
  {
    kdebug_trace();
  }

  return v10;
}

size_t _compressAuxImage_3(uint64_t a1, int a2, int a3, int a4, CFDictionaryRef theDict, opaqueCMSampleBuffer *a6, uint64_t a7)
{
  v17[0] = 0;
  v17[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a6, theDict, v17);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  SourceDimensions = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  v14 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v15 = _compressX(a1, theDict, a6, 2, a2, a3, 1, -1, MEMORY[0x1E6960C70], a7);
  if (*v14 == 1)
  {
    kdebug_trace();
  }

  return v15;
}

uint64_t _startImageSequence(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 104))
  {
    emitter = fig_log_get_emitter();
    v15 = v3;
    v16 = 1696;
  }

  else
  {
    v5 = (a1 + 48);
    if (!*(a1 + 48) && !*(a1 + 56))
    {
      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_42();
        kdebug_trace();
      }

      Mutable = CFDictionaryCreateMutable(*(a1 + 96), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        return 4294950305;
      }

      v9 = Mutable;
      v10 = CMPhotoCFDictionarySetInt(Mutable, @"MaxSimultaneousCompressionSessions", 3);
      if (!v10)
      {
        v10 = CMPhotoCFDictionarySetInt64(v9, @"IdleTimeoutMilliseconds", 0);
        if (!v10)
        {
          v10 = CMPhotoCodecSessionPoolCreate(*(a1 + 96), v9, v5);
          if (!v10)
          {
            v11 = CFDictionaryCreateMutable(*(a1 + 96), 0, MEMORY[0x1E695E9D8], 0);
            *(a1 + 56) = v11;
            if (!v11)
            {
              v12 = 4294950305;
              goto LABEL_13;
            }

            v10 = CMPhotoHEIFFileWriterAddSequence(*(a1 + 88), a2, a3);
          }
        }
      }

      v12 = v10;
LABEL_13:
      CFRelease(v9);
      return v12;
    }

    emitter = fig_log_get_emitter();
    v15 = v3;
    v16 = 1700;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950194, "<<<< CMPhotoCompressionSession+HEICS >>>>", v16, v15);
}

uint64_t _copyTrackReferencesOfType(const __CFDictionary *a1, const void *a2, int a3, const __CFArray **a4)
{
  if (!a1)
  {
    return 4294950303;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 4294950303;
  }

  v7 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 4294950303;
  }

  v9 = Count;
  if (Count)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (Count == 1)
  {
    return 4294950303;
  }

  Mutable = 0;
  v11 = *MEMORY[0x1E695E480];
  v12 = 1;
  v13 = MEMORY[0x1E695E9C0];
  while (1)
  {
    if (!FigCFArrayGetInt32AtIndex())
    {
      v15 = 4294950304;
      if (!Mutable)
      {
        return v15;
      }

      goto LABEL_20;
    }

    if (!a3)
    {
      break;
    }

LABEL_12:
    v12 += 2;
    if (v12 >= v9)
    {
      if (!Mutable)
      {
        return 4294950303;
      }

      if (CFArrayGetCount(Mutable) < 1)
      {
        v15 = 4294950303;
      }

      else
      {
        v15 = 0;
        if (a4)
        {
          *a4 = Mutable;
          return v15;
        }
      }

LABEL_20:
      CFRelease(Mutable);
      return v15;
    }
  }

  if (Mutable || (Mutable = CFArrayCreateMutable(v11, 0, v13)) != 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v12 ^ 1);
    CFArrayAppendValue(Mutable, ValueAtIndex);
    goto LABEL_12;
  }

  return 4294950305;
}

uint64_t _createSequenceReader_0(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200400824DF26uLL);
  if (!v6)
  {
    return 4294950305;
  }

  v7 = v6;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  *v7 = v8;
  v9 = (v7 + 8);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10(a3, v7 + 8);
  if (v11)
  {
    goto LABEL_26;
  }

  v12 = *(v7 + 1);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v13)
  {
LABEL_14:
    v16 = 4294954514;
    goto LABEL_15;
  }

  v11 = v13(v12, v7 + 16);
  if (v11 || (*(v7 + 4) = 0, OUTLINED_FUNCTION_42(), v11 = FigSampleGeneratorCreateForFormatReaderUsingByteStreams(), v11))
  {
LABEL_26:
    v16 = v11;
    goto LABEL_15;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v14(a3, v7 + 44, v7 + 40);
  v16 = v15;
  if (a4 && !v15)
  {
    *a4 = v7;
    return v16;
  }

LABEL_15:
  if (*v9)
  {
    CFRelease(*v9);
  }

  v17 = *(v7 + 2);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(v7 + 3);
  if (v18)
  {
    CFRelease(v18);
  }

  if (*v7)
  {
    CFRelease(*v7);
  }

  free(v7);
  return v16;
}

uint64_t _createReferenceSequenceReaders(const __CFAllocator *a1, uint64_t a2, const __CFArray *a3, int a4, CFMutableArrayRef *a5)
{
  cf = 0;
  Mutable = CFArrayCreateMutable(a1, 0, 0);
  if (!Mutable)
  {
    return 4294950305;
  }

  v11 = Mutable;
  v12 = 0;
  if (!a3)
  {
    goto LABEL_4;
  }

LABEL_3:
  for (i = CFArrayGetCount(a3); v12 < i; i = 0)
  {
    v21 = 0;
    if (!FigCFArrayGetInt32AtIndex())
    {
      v17 = 4294950304;
      goto LABEL_17;
    }

    v20 = 0;
    v14 = v21;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v15)
    {
      v17 = 4294954514;
LABEL_17:
      CFRelease(v11);
      goto LABEL_20;
    }

    v16 = v15(a2, v14, &cf, &v20);
    if (v16)
    {
      goto LABEL_25;
    }

    if (v20 == a4)
    {
      value = 0;
      v16 = _createSequenceReader_0(a1, a2, cf, &value);
      if (v16)
      {
LABEL_25:
        v17 = v16;
        goto LABEL_17;
      }

      CFArrayAppendValue(v11, value);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    ++v12;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_4:
    ;
  }

  v17 = 0;
  if (!a5)
  {
    goto LABEL_17;
  }

  *a5 = v11;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t _moveCursorToPresentationTime(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v53 = 0uLL;
  v54 = 0;
  v5 = *(a1 + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    return 4294954514;
  }

  result = v6(v5, &v53);
  if (result)
  {
    return result;
  }

  v15 = OUTLINED_FUNCTION_2_29(result, v8, v9, v10, v11, v12, v13, v14, v50.value, *&v50.timescale, v50.epoch, v51, v52.value, *&v52.timescale, v52.epoch, v53);
  result = OUTLINED_FUNCTION_8_19(v16, v17, v18, v19, v20, v21, v22, v23, v15, v24, v50.value, *&v50.timescale, v50.epoch, v51, v25, v52.value, *&v52.timescale, v52.epoch, v53);
  if (!result)
  {
LABEL_13:
    v38 = OUTLINED_FUNCTION_2_29(result, v26, v27, v28, v29, v30, v31, v32, v50.value, *&v50.timescale, v50.epoch, v51, v52.value, *&v52.timescale, v52.epoch, v53);
    v49 = OUTLINED_FUNCTION_8_19(v39, v40, v41, v42, v43, v44, v45, v46, v38, v47, v50.value, *&v50.timescale, v50.epoch, v51, v48, v52.value, *&v52.timescale, v52.epoch, v53);
    result = 0;
    *a3 = v49 == 0;
    return result;
  }

  v33 = *(a1 + 16);
  *&v50.value = OUTLINED_FUNCTION_2_29(result, v26, v27, v28, v29, v30, v31, v32, v50.value, *&v50.timescale, v50.epoch, v51, v52.value, *&v52.timescale, v52.epoch, v53);
  v50.epoch = v54;
  CMTimeSubtract(&v52, &lhs, &v50);
  v34 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v34)
  {
    return 4294954514;
  }

  lhs = v52;
  result = v34(v33, &lhs);
  if (result)
  {
    v35 = result == -12840;
  }

  else
  {
    v35 = 1;
  }

  if (v35)
  {
    v36 = *(a1 + 16);
    v37 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v37)
    {
      result = v37(v36, &v53);
      if (result)
      {
        return result;
      }

      *(a1 + 32) = -1;
      goto LABEL_13;
    }

    return 4294954514;
  }

  return result;
}

size_t _compressX(uint64_t a1, CFDictionaryRef theDict, void *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  cf = 0;
  if (!*(a1 + 104))
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"DryRun");
      if ((a3 == 0) != (Value != 0))
      {
        return 4294950306;
      }

      v39 = Value;
      v37 = v10;
      v14 = CFDictionaryGetValue(theDict, @"Tiling");
      LODWORD(v41) = 0;
      Int32IfPresent = CMPhotoCFDictionaryGetInt32IfPresent();
      if (v14)
      {
        v38 = a10;
        v22 = CFGetTypeID(v14);
        if (v22 != CFBooleanGetTypeID() || (Int32IfPresent = CFBooleanGetValue(v14), Int32IfPresent))
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, v10);
        }
      }

      if (v39)
      {
        return OUTLINED_FUNCTION_3_27(Int32IfPresent, v16, v17, v18, v39, v19, v20, v21, v35, v36, v10, v38, v39, a3, v41, v42);
      }
    }

    v25 = CMPhotoCreatePixelBufferFromImage(*(a1 + 96), a3, &cf);
    v32 = cf;
    if (v25)
    {
      v24 = v25;
      if (!cf)
      {
        return v24;
      }
    }

    else
    {
      v24 = OUTLINED_FUNCTION_3_27(v25, v26, v27, v28, cf, v29, v30, v31, v35, v36, v37, v38, v39, a3, v41, v42);
      v32 = cf;
      if (!cf)
      {
        return v24;
      }
    }

    CFRelease(v32);
    return v24;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950194, "<<<< CMPhotoCompressionSession+HEICS >>>>", 787, v10);
}

size_t ___compressMainWithAuxiliaryAsync_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 40), @"IncludeAlphaAuxiliaryImageWithOptions");
  if (CFDictionaryGetCount(Value) <= 0)
  {
    goto LABEL_21;
  }

  v3 = FigCFDictionaryGetValue();
  if (CFDictionaryContainsKey(Value, @"IncludeAlphaAuxiliaryImageWithOptions") || (v3 != 0) != (*(a1 + 48) == 0))
  {
    goto LABEL_21;
  }

  if (!v3)
  {
    v5 = *(a1 + 56);
    if (*(v5 + 16) || !*(v5 + 72))
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v4 = CFGetTypeID(v3);
  if (v4 != CMFormatDescriptionGetTypeID())
  {
LABEL_21:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_18;
  }

  if (*(*(a1 + 56) + 16))
  {
LABEL_20:
    result = 4294950195;
    goto LABEL_18;
  }

LABEL_10:
  OUTLINED_FUNCTION_10_19();
  if (v6)
  {
    OUTLINED_FUNCTION_42();
    kdebug_trace();
  }

  FigSemaphoreWaitRelative();
  OUTLINED_FUNCTION_10_19();
  if (v6)
  {
    OUTLINED_FUNCTION_42();
    kdebug_trace();
  }

  v8 = *(*(a1 + 64) + 144);
  if (v8 < 0)
  {
    goto LABEL_21;
  }

  result = _compressAuxImage_3(*(a1 + 56), v8, 3, v7, Value, *(a1 + 48), 0);
LABEL_18:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _moveCursorToPosition_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addReferenceSequencesDescriptionToWriter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addReferenceSequencesDescriptionToWriter_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addReferenceSequencesDescriptionToWriter_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addImageToSequence_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _hasTrackReferenceOfType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSuggestedPaddingForOptions(CFDictionaryRef theDict, unint64_t a2, unint64_t a3, double a4, double a5)
{
  if (!(a2 | a3))
  {
    return 0;
  }

  v42 = 0;
  v43 = 0uLL;
  v44 = 0uLL;
  v45 = a4;
  v46 = a5;
  if (!theDict)
  {
    v15 = 0.0;
    v16 = 1;
    v17 = a5;
    v18 = a4;
    v19 = 0.0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(theDict, @"SourceCropRect");
  if (Value)
  {
    memset(&rect, 0, sizeof(rect));
    v11 = CGRectMakeWithDictionaryRepresentation(Value, &rect);
    v12.f64[0] = a5;
    v13 = a4;
    if (v11)
    {
      v12.f64[0] = rect.origin.x;
      result = CMPhotoApplyCropRectToRect(&v44, v12, rect.origin.y, rect.size.width, rect.size.height);
      if (result)
      {
        return result;
      }

      v13 = v45;
      v12.f64[0] = v46;
    }
  }

  else
  {
    v12.f64[0] = a5;
    v13 = a4;
  }

  result = CMPhotoGetTilingOption(theDict, vcvtad_u64_f64(v13), vcvtad_u64_f64(v12.f64[0]), 0, 0, &v42, &v42 + 1, &v43, 0);
  if (!result)
  {
    v15 = v44.f64[1];
    v19 = v44.f64[0];
    v18 = v45;
    v17 = v46;
    v16 = v42 == 0;
LABEL_11:
    v20 = round(v19);
    v21 = round(v15);
    v22 = round(v18);
    v23 = round(v17);
    if (v16)
    {
      v43 = kCMPhotoTilingDefaultTileSize;
      v24 = fmax(v22, v23);
      if (v24 <= 6144.0 || v22 * v23 <= 67108864.0)
      {
        v26 = 1024.0;
      }

      else
      {
        v43 = kCMPhotoTilingDefaultTileSizeAboveMaxPictureSize;
        v26 = 2048.0;
      }

      BYTE1(v42) = v24 >= v26;
    }

    v27 = v20;
    v28 = v21;
    if (v20 & 0x7F | v21 & 0x3F)
    {
      v36 = 0;
      v37 = 0;
      if (!a2)
      {
LABEL_31:
        result = 0;
        if (a3)
        {
          *a3 = v36;
        }

        return result;
      }
    }

    else
    {
      v29 = round(a4);
      v30 = round(a5);
      v31 = v22;
      v32 = v23;
      if (BYTE1(v42))
      {
        v33 = (v31 + v43 - 1) / v43;
        v34 = v32 + *(&v43 + 1) - 1;
        v32 = *(&v43 + 1);
        v31 = v43;
        v35 = v34 / *(&v43 + 1);
      }

      else
      {
        v33 = 1;
        v35 = 1;
      }

      v38 = v28 + v35 * v32;
      v39 = (v27 + v33 * v31) - v29;
      if (v39 < 0.0)
      {
        v39 = 0.0;
      }

      v37 = v39;
      v40 = v38 - v30;
      if (v40 < 0.0)
      {
        v40 = 0.0;
      }

      v36 = v40;
      if (!a2)
      {
        goto LABEL_31;
      }
    }

    *a2 = v37;
    goto LABEL_31;
  }

  return result;
}

uint64_t CMPhotoCompressionCreateContainerFromImageExt(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3 || !a1 || theDict && CFDictionaryContainsKey(theDict, @"DryRun"))
  {
    OUTLINED_FUNCTION_2();
    v14 = FigSignalErrorAtGM(v16);
    v10 = 0;
  }

  else
  {
    CompressionSession = CMPhotoOneShotSessionPoolGetCompressionSession();
    v10 = CompressionSession;
    if (CompressionSession)
    {
      v11 = CMPhotoCompressionSessionOpenEmptyContainer(CompressionSession, a1);
      if (!v11)
      {
        v11 = CMPhotoCompressionSessionAddImage(v10);
        if (!v11 && (!a5 || (v11 = CMPhotoCompressionSessionAddThumbnail(v10)) == 0) && (!a6 || (v11 = CMPhotoCompressionSessionAddMetadataFromImageProperties(v10, 0, 0, a6)) == 0))
        {
          v11 = CMPhotoCompressionSessionCloseContainerAndCopyBacking(v10);
        }
      }

      v12 = v11;
      v13 = CMPhotoCompressionSessionCloseContainer(v10);
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v14 = 4294950195;
    }
  }

  CMPhotoOneShotSessionPoolRecycleSession(v10);
  return v14;
}

uint64_t CMPhotoCompressionCreateDataContainerFromImage(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      v11 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        return 4294950305;
      }

      v13 = Mutable;
      v14 = CMPhotoCFDictionarySetInt(Mutable, @"ContainerFormat", a5);
      if (v14 || (v14 = CMPhotoCFDictionarySetInt(v13, @"BackingType", 1), v14))
      {
        ContainerFromImageExt = v14;
      }

      else
      {
        if (!a3)
        {
          v16 = 0;
          v17 = 0;
          goto LABEL_9;
        }

        MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, a1);
        if (MutableCopy)
        {
          v16 = MutableCopy;
          CFDictionaryRemoveValue(MutableCopy, @"Tiling");
          CMPhotoCFDictionaryGetBooleanIfPresent();
          CFDictionaryRemoveValue(v16, @"ImageOrientation");
          CMPhotoCFDictionarySetInt(v16, @"MaxPixelSize", a3);
          v17 = a2;
LABEL_9:
          ContainerFromImageExt = CMPhotoCompressionCreateContainerFromImageExt(v13, a1, a2, v16, v17, a4);
          CFRelease(v13);
          if (!v16)
          {
            return ContainerFromImageExt;
          }

          v19 = v16;
LABEL_11:
          CFRelease(v19);
          return ContainerFromImageExt;
        }

        ContainerFromImageExt = 4294950305;
      }

      v19 = v13;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_2();
  }

  else
  {
    v21 = "%s signalled err=%d at <>:%d";
  }

  return FigSignalErrorAtGM(v21);
}

uint64_t CMPhotoCompressionWriteFileContainerFromImage_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionWriteFileContainerFromImage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void CMPhotoCreateMPOFromJFIFData(uint64_t a1, int a2, CFDataRef theData, CFDataRef *a4, uint64_t a5, char a6)
{
  if (a1 && theData && a5 && a4 && (v11 = CFDataGetBytePtr(theData), v12 = &v11[CFDataGetLength(theData)], __PAIR64__(*(v12 - 1), *(v12 - 2)) == 0xD9000000FFLL))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v14 = Mutable;
      if (!_storeStreamLengths(a1, Mutable))
      {
        OUTLINED_FUNCTION_4_23();
        v59 = a1;
        v60 = theData;
        v57 = a5 + 1;
        v61 = 16 * (a5 + 1) + 58;
        v62 = a4;
        v66 = 0;
        v63 = a5;
        v64 = _writeInitialMPHeaderSegment;
        v65 = 0;
        v67 = a2;
        *(&v67 + 1) = 0;
        BYTE5(v67) = a6;
        v15 = OUTLINED_FUNCTION_15_13();
        v18 = malloc_type_calloc(v15, v16, v17);
        v19 = v18;
        if (!v18 || (v18[5] = _mpoScannerCallback, v18[6] = &v59, v18[7] = 0, v18[8] = 0, v20 = CFDataGetBytePtr(theData), v21 = CFDataGetLength(theData), CMPhotoJFIFScannerRun(v19, v20, v21), v22))
        {
LABEL_40:
          if (v19)
          {
            free(v19);
          }
        }

        else
        {
          free(v19);
          v23 = v65;
          v24 = v66;
          if (!_storeStreamLengths(a1, v14))
          {
            v55 = v24;
            v56 = v23;
            v25 = a4;
            v26 = a5;
            do
            {
              v27 = *v25;
              if (a2)
              {
                Length = CFDataGetLength(*v25);
                v59 = 0;
                CFDataGetBytePtr(v27);
                if (CMByteStreamAppend())
                {
                  goto LABEL_37;
                }

                if (v59 != Length)
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v59 = a1;
                v60 = v27;
                v61 = 0;
                v62 = a4;
                v67 = 0x100000000;
                v63 = a5;
                v65 = 0;
                v66 = 0;
                v64 = 0;
                OUTLINED_FUNCTION_15_13();
                OUTLINED_FUNCTION_4_23();
                v32 = malloc_type_calloc(v29, v30, v31);
                v19 = v32;
                if (!v32)
                {
                  goto LABEL_40;
                }

                v32[5] = _mpoScannerCallback;
                v32[6] = &v59;
                v32[7] = 0;
                v32[8] = 0;
                BytePtr = CFDataGetBytePtr(v27);
                v34 = CFDataGetLength(v27);
                CMPhotoJFIFScannerRun(v19, BytePtr, v34);
                if (v35)
                {
                  goto LABEL_40;
                }

                free(v19);
              }

              if (_storeStreamLengths(a1, v14))
              {
                goto LABEL_37;
              }

              v25 += 2;
              --v26;
            }

            while (v26);
            v59 = 0;
            if (CFArrayGetCount(v14) == a5 + 2)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
              Size = CMPhotoCFNumberGetSize(ValueAtIndex);
              if ((Size & 0x8000000000000000) != 0)
              {
LABEL_15:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_12();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                goto LABEL_37;
              }

              if (a5 != -1)
              {
                v38 = Size;
                v39 = 0;
                v40 = Size + v55 + 4;
                v41 = (Size + v56);
                while (1)
                {
                  v42 = v39 + 1;
                  v43 = CFArrayGetValueAtIndex(v14, v39 + 1);
                  v44 = CMPhotoCFNumberGetSize(v43);
                  v45 = v44 - v38;
                  if (v44 <= v38 || v45 >= 0x7FFFFFFF)
                  {
                    goto LABEL_15;
                  }

                  v46 = v44;
                  v69 = bswap32(v45);
                  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
                  {
                    break;
                  }

                  v47 = OUTLINED_FUNCTION_17_11();
                  if (v48(v47))
                  {
                    break;
                  }

                  if (v59 != 4)
                  {
                    goto LABEL_15;
                  }

                  v49 = v38 - v41;
                  if (!v39)
                  {
                    v49 = 0;
                  }

                  if (v49 >= 0x7FFFFFFF)
                  {
                    goto LABEL_15;
                  }

                  v68 = bswap32(v49);
                  if (*(*(CMBaseObjectGetVTable() + 16) + 16))
                  {
                    v50 = v40 + 4;
                    v51 = OUTLINED_FUNCTION_17_11();
                    if (!v52(v51))
                    {
                      if (v59 != 4)
                      {
                        goto LABEL_15;
                      }

                      v40 = v50 + 12;
                      v38 = v46;
                      ++v39;
                      if (v57 != v42)
                      {
                        continue;
                      }
                    }
                  }

                  break;
                }
              }
            }
          }
        }
      }

LABEL_37:
      CFRelease(v14);
    }

    OUTLINED_FUNCTION_20_8();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_20_8();

    FigSignalErrorAtGM(v53);
  }
}

uint64_t CMPhotoJFIFScannerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 | a3)
  {
    if (a5)
    {
      OUTLINED_FUNCTION_4_23();
      v11 = OUTLINED_FUNCTION_15_13();
      v14 = malloc_type_calloc(v11, v12, v13);
      if (v14)
      {
        v15 = v14;
        result = 0;
        v15[5] = a1;
        v15[6] = a2;
        v15[7] = a3;
        v15[8] = a4;
        *a5 = v15;
      }

      else
      {
        return 4294950305;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950306, "<<<< CMPhotoJFIFUtilities >>>>", 1056, v5);
  }

  return result;
}

void _mpoScannerCallback()
{
  OUTLINED_FUNCTION_21_8();
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v8 = v7;
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (*(v2 + 68) || (v1 - 226) > 0xFFFFFFFD || !*(v2 + 67))
  {
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v0);
  (v3[5])(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v3[3], v3[4], v3 + 6, v3 + 7);
  if (CMByteStreamAppend())
  {
    goto LABEL_32;
  }

  if (v14 != v3[2])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
    goto LABEL_32;
  }

  *(v3 + 68) = 1;
  if (!*(v3 + 69) || (v10 = *v3, v17 = 0, v16 = 570483455, v10) && (v15 = 0, !CMByteStreamAppend()) && v15 == 4 && !CMByteStreamAppend() && v15 == 28 && !CMByteStreamAppend() && v15 == 4)
  {
LABEL_14:
    BytePtr = CFDataGetBytePtr(v3[1]);
    if (v6 == 226 && v5 >= 6uLL && !strcmp(&BytePtr[v8 + 4], "MPF"))
    {
      if (*(v3 + 64))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v12 = &BytePtr[v8];
      if (CMByteStreamAppend())
      {
        goto LABEL_32;
      }

      if (v14 == (v5 + 2))
      {
        switch(v6)
        {
          case 216:
            *(v3 + 67) = 1;
            break;
          case 218:
            if (!*(v3 + 68))
            {
              goto LABEL_33;
            }

            v13 = (CFDataGetLength(v3[1]) - (v8 + v5 + 2));
            if (!CMByteStreamAppend() && v14 != v13)
            {
              goto LABEL_33;
            }

            break;
          case 224:
            if (v5 >= 0x10 && !strcmp(v12 + 4, "JFIF"))
            {
              *(v3 + 65) = 1;
            }

            break;
          case 225:
            if (v5 >= 0x10uLL && !memcmp(v12 + 4, "Exif", 6uLL))
            {
              *(v3 + 66) = 1;
            }

            break;
          default:
            goto LABEL_32;
        }

        goto LABEL_32;
      }
    }

LABEL_33:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_32:
  OUTLINED_FUNCTION_22_5();
}

void CMPhotoJFIFScannerRun(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1 || !a2 || *a1)
  {
    goto LABEL_95;
  }

  v5 = a3;
  if (!a3)
  {
    goto LABEL_94;
  }

  v37 = ~a2;
  LODWORD(v6) = -17105;
  v7 = 3;
  v8 = 208;
  v9 = a2;
  v10 = a3;
LABEL_6:
  while (2)
  {
    switch(*(a1 + 4))
    {
      case 0:
        if (*v9 != 255)
        {
          goto LABEL_96;
        }

        --v10;
        ++v9;
        *(a1 + 4) = 1;
        if (!v10)
        {
          goto LABEL_94;
        }

        continue;
      case 1:
        v19 = *v9++;
        v18 = v19;
        --v10;
        if (v19 == 216)
        {
          *(a1 + 24) = -40;
          if (*(a1 + 40))
          {
            v20 = OUTLINED_FUNCTION_8_20();
            v17 = v21(v20);
            v8 = 208;
            if (v17 == v6)
            {
              goto LABEL_94;
            }

            if (v17)
            {
              goto LABEL_97;
            }
          }

LABEL_29:
          *(a1 + 4) = 0;
          if (!v10)
          {
            goto LABEL_94;
          }
        }

        else
        {
          *(a1 + 24) = v18;
          *(a1 + 4) = 2;
          *(a1 + 28) = v18 == 218;
          if (!v10)
          {
            goto LABEL_94;
          }
        }

        continue;
      case 2:
        v14 = *v9++;
        *(a1 + 26) = v14 << 8;
        --v10;
        *(a1 + 4) = v7;
        if (!v10)
        {
          goto LABEL_94;
        }

        continue;
      case 3:
        v15 = *(a1 + 26) | *v9;
        *(a1 + 26) = v15;
        if (v15 >= 2u)
        {
          *(a1 + 26) = v15 - 2;
          ++v9;
          v16 = *(a1 + 40);
          if (v16)
          {
            v17 = v16(a1, &v9[*(a1 + 16) - a2 - 4], *(a1 + 24), v15, *(a1 + 48));
            v8 = 208;
            if (v17 == v6)
            {
              goto LABEL_94;
            }

            if (v17)
            {
              goto LABEL_97;
            }
          }

          --v10;
          *(a1 + 4) = 4;
          if (!v10)
          {
            goto LABEL_94;
          }

          continue;
        }

LABEL_96:
        v17 = -17102;
LABEL_97:
        *a1 = v17;
LABEL_95:
        OUTLINED_FUNCTION_105();
        return;
      case 4:
        v11 = *(a1 + 26);
        if (v10 >= v11)
        {
          v12 = *(a1 + 26);
        }

        else
        {
          v12 = v10;
        }

        v10 -= v12;
        v9 += v12;
        v13 = v11 - v12;
        *(a1 + 26) = v13;
        if (v13)
        {
          goto LABEL_89;
        }

        if (!*(a1 + 28))
        {
          goto LABEL_29;
        }

        *(a1 + 32) = &v9[*(a1 + 16) - a2];
        *(a1 + 4) = 5;
        if (!v10)
        {
          goto LABEL_94;
        }

        continue;
      case 5:
        if (!*(a1 + 56))
        {
          if (v10 < 2)
          {
            v10 = 1;
            goto LABEL_88;
          }

          v30 = v9;
LABEL_72:
          v9 = &v30[v10];
          if (v30[v10 - 2] == 255 && *(v9 - 1) == 217)
          {
            goto LABEL_74;
          }

          if (*v30 == 255)
          {
            v34 = v30[1];
            if (v34 == 218)
            {
              *(a1 + 4) = 0;
              v9 = v30;
              if (v10)
              {
                continue;
              }

              goto LABEL_94;
            }

            if (v34 == 217)
            {
              v9 = v30 + 2;
              v10 -= 2;
              goto LABEL_83;
            }
          }

          v9 = v30;
          goto LABEL_88;
        }

        v22 = 0;
        v7 = *(a1 + 8);
        v23 = v7;
LABEL_33:
        v6 = 0;
        v24 = 1;
        while (v23 == 1)
        {
          v25 = v9[v6];
          if (v25 == (*(a1 + 12) | v8))
          {
            v17 = (*(a1 + 56))(a1, &v9[v37 + v6 + *(a1 + 16)], &v9[v37 + v6 + *(a1 + 16) - *(a1 + 32)]);
            if (v17)
            {
              goto LABEL_97;
            }

            v7 = 0;
            v28 = &v9[v6];
            *(a1 + 12) = (*(a1 + 12) + 1) & 7;
            goto LABEL_50;
          }

          if (v25 != 217)
          {
            v28 = &v9[v6];
            if (v25 == 218)
            {
              v7 = 2;
            }

            else
            {
              v7 = 0;
            }

LABEL_51:
            *(a1 + 8) = v7;
            v23 = v7;
LABEL_52:
            v29 = v9 - v28 + v10;
            v10 = v29 - 1;
            if (v29)
            {
              v9 = v28 + 1;
            }

            else
            {
              v9 = v28;
            }

            if (v29 < 2)
            {
              OUTLINED_FUNCTION_13_16();
              if (!v22)
              {
                goto LABEL_94;
              }

LABEL_74:
              v10 = 0;
              goto LABEL_83;
            }

            goto LABEL_33;
          }

          *(a1 + 12) = 2;
          ++v6;
          --v24;
          v23 = 1;
          v22 = 1;
          if (v10 + v24 < 2)
          {
            v10 = 0;
            v9 += v6;
            OUTLINED_FUNCTION_13_16();
LABEL_83:
            if (*(a1 + 40))
            {
              v35 = OUTLINED_FUNCTION_8_20();
              v17 = v36(v35);
              v8 = 208;
              if (v17)
              {
                goto LABEL_97;
              }
            }

            *(a1 + 4) = 6;
            if (!v10)
            {
              goto LABEL_94;
            }

            goto LABEL_6;
          }
        }

        if (v23 != 2)
        {
          if (v23)
          {
            v28 = &v9[v6];
            if (!&v9[v6])
            {
              v26 = v5;
              v27 = 0;
              goto LABEL_63;
            }

            goto LABEL_52;
          }

          v26 = v5;
          v27 = &v9[v6];
          v28 = memchr(&v9[v6], 255, v10 - v6);
          if (!v28)
          {
            goto LABEL_63;
          }

          v7 = 1;
          v5 = v26;
LABEL_50:
          v8 = 208;
          goto LABEL_51;
        }

        v26 = v5;
        v27 = &v9[v6];
LABEL_63:
        v10 -= v6;
        if (v7 == 2)
        {
          v31 = v10;
        }

        else
        {
          v31 = 0;
        }

        if (v7 == 2)
        {
          v32 = 0;
        }

        else
        {
          v32 = v10;
        }

        v9 = &v27[v32];
        if (!v22 && v31 > 1)
        {
          v5 = v26;
          OUTLINED_FUNCTION_13_16();
          goto LABEL_72;
        }

        v5 = v26;
        OUTLINED_FUNCTION_13_16();
        if (v22)
        {
          v10 = v33;
          goto LABEL_83;
        }

        if (v33)
        {
LABEL_88:
          --v10;
          ++v9;
LABEL_89:
          if (v10)
          {
            continue;
          }
        }

LABEL_94:
        *a1 = 0;
        *(a1 + 16) += v5;
        goto LABEL_95;
      case 6:
        goto LABEL_94;
      default:
        goto LABEL_89;
    }
  }
}

uint64_t CMPhotoCreateDataFromJFIFSampleBufferAndInjectAppMarkers(const __CFAllocator *a1, CMSampleBufferRef sbuf, uint64_t a3, const __CFData **a4, char *a5, CFDataRef *a6)
{
  if (!a4)
  {

    return CMPhotoDataCreateFromSampleBuffer(a1, sbuf, 1, a6);
  }

  result = 4294950306;
  if (!a5 || !sbuf || !a6)
  {
    return result;
  }

  if (a3 >= 1)
  {
    v13 = 0;
    v14 = a5;
    v15 = a4;
    v16 = a3;
    while (1)
    {
      v17 = *v14++;
      if ((v17 & 0xF0) != 0xE0)
      {
        return 4294950306;
      }

      v18 = *v15++;
      v13 += CFDataGetLength(v18);
      if (!--v16)
      {
        goto LABEL_14;
      }
    }
  }

  v13 = 0;
LABEL_14:
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  if (!DataBuffer)
  {
    return 4294950306;
  }

  v20 = DataBuffer;
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  v22 = v13 + 4 * a3;
  Mutable = CFDataCreateMutable(a1, v22 + DataLength);
  if (!Mutable)
  {
    return 4294950305;
  }

  v24 = Mutable;
  CFDataSetLength(Mutable, v22 + DataLength);
  v35[0] = a3;
  v35[1] = a4;
  v35[2] = a5;
  v36 = 0;
  v37 = 0u;
  v38 = 0u;
  MutableBytePtr = CFDataGetMutableBytePtr(v24);
  OUTLINED_FUNCTION_4_23();
  v25 = OUTLINED_FUNCTION_15_13();
  v28 = malloc_type_calloc(v25, v26, v27);
  if (!v28)
  {
    CFRelease(v24);
    return 4294950305;
  }

  v29 = v28;
  v28[5] = _appInjectionScannerCallback;
  v28[6] = v35;
  v28[7] = 0;
  v28[8] = 0;
  *a6 = v24;
  if (DataLength)
  {
    v30 = 0;
    do
    {
      v34 = 0;
      if (CMBlockBufferGetDataPointer(v20, v30, &v38, 0, &v34))
      {
        break;
      }

      v31 = v37;
      *(&v38 + 1) = v34;
      *(&v37 + 1) = v37;
      v30 = v37;
      if (!v36)
      {
        CMPhotoJFIFScannerRun(v29, v34, v38);
        if (v33)
        {
          break;
        }

        v31 = *(&v37 + 1);
        v30 = v37;
      }

      v32 = v38 - (v30 - v31);
      if (v38 != v30 - v31)
      {
        memcpy(MutableBytePtr, (*(&v38 + 1) + v30 - v31), v38 - (v30 - v31));
        v30 = v37 + v32;
        *&v37 = v37 + v32;
        MutableBytePtr += v32;
      }
    }

    while (v30 < DataLength);
  }

  free(v29);
  return 0;
}

void CMPhotoJFIFCreateStrippedBufferFromByteStream(const void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6, unint64_t *a7, CMBlockBufferRef *a8)
{
  v30 = 0;
  blockBufferOut = 0;
  v16 = CFGetAllocator(a1);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = a2;
  if (!CMBlockBufferCreateEmpty(v16, a4 + 1, 0, &blockBufferOut))
  {
    v25[1] = MEMORY[0x1E69E9820];
    v25[2] = 0x40000000;
    v25[3] = __CMPhotoJFIFCreateStrippedBufferFromByteStream_block_invoke;
    v25[4] = &unk_1E77A34C0;
    v25[5] = &v26;
    v25[6] = a1;
    v25[7] = blockBufferOut;
    v17 = OUTLINED_FUNCTION_20_0();
    if (!CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v17, v18, a4, a5, a6, a7, v19))
    {
      v20 = v27[3];
      v21 = a2 + a3 - v20;
      if (v21 < 1)
      {
LABEL_8:
        *a8 = blockBufferOut;
        blockBufferOut = 0;
        goto LABEL_9;
      }

      v25[0] = 0;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v22 && !v22(a1, v21, v20, &v30, v25))
      {
        if (v25[0] == v21)
        {
          if (!CMBlockBufferAppendBufferReference(blockBufferOut, v30, 0, 0, 0))
          {
            goto LABEL_8;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_12();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, LODWORD(v25[0]));
        }
      }
    }
  }

LABEL_9:
  if (v30)
  {
    CFRelease(v30);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  _Block_object_dispose(&v26, 8);
  OUTLINED_FUNCTION_20_8();
}

void CMPhotoCompressedAuxImageStorageCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, char a22, int a23, uint64_t a24, uint64_t a25, int a26, void *a27)
{
  OUTLINED_FUNCTION_21_8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = malloc_type_malloc(0x58uLL, 0x1060040031647FEuLL);
  if (v43)
  {
    v44 = v43;
    if (v42)
    {
      v45 = CFRetain(v42);
    }

    else
    {
      v45 = 0;
    }

    *v44 = v45;
    v44[8] = v40;
    v44[9] = v32;
    *(v44 + 3) = v30;
    if (v38)
    {
      v46 = CFRetain(v38);
    }

    else
    {
      v46 = 0;
    }

    *(v44 + 2) = v46;
    if (v36)
    {
      v47 = CFRetain(v36);
    }

    else
    {
      v47 = 0;
    }

    *(v44 + 3) = v47;
    if (v34)
    {
      v48 = CFRetain(v34);
    }

    else
    {
      v48 = 0;
    }

    *(v44 + 4) = v48;
    if (v28)
    {
      v49 = CFRetain(v28);
    }

    else
    {
      v49 = 0;
    }

    *(v44 + 5) = v49;
    if (a21)
    {
      v50 = CFRetain(a21);
    }

    else
    {
      v50 = 0;
    }

    *(v44 + 6) = v50;
    v44[56] = a22;
    *(v44 + 15) = a23;
    *(v44 + 8) = a24;
    *(v44 + 9) = a25;
    *(v44 + 20) = a26;
    *a27 = v44;
  }

  OUTLINED_FUNCTION_22_5();
}

void CMPhotoFilterCompressedAuxImageStorageArray(CFArrayRef theArray, const __CFArray *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFArrayGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_105();

    FigSignalErrorAtGM(v17);
  }

  else
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v6 = Count;
        while (1)
        {
          if (cf)
          {
            v7 = CFArrayGetCount(cf);
            if (v7 >= 1)
            {
              break;
            }
          }

LABEL_14:
          v11 = OUTLINED_FUNCTION_20_0();
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
          CMPhotoCompressedAuxImageStorageDestroy(ValueAtIndex);
          v14 = OUTLINED_FUNCTION_20_0();
          CFArrayRemoveValueAtIndex(v14, v15);
LABEL_15:
          if (v6-- <= 1)
          {
            goto LABEL_17;
          }
        }

        v8 = v7 + 1;
        while (1)
        {
          v9 = CFArrayGetValueAtIndex(cf, v8 - 2);
          if (!v9)
          {
            break;
          }

          v10 = CFGetTypeID(v9);
          if (v10 != CFDictionaryGetTypeID())
          {
            break;
          }

          if (!CMPhotoCFDictionaryGetIntIfPresent())
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
            break;
          }

          if (v6 == 1)
          {
            goto LABEL_15;
          }

          if (--v8 < 2)
          {
            goto LABEL_14;
          }
        }
      }
    }

LABEL_17:
    OUTLINED_FUNCTION_105();
  }
}

uint64_t CMPhotoJFIFUtilitiesMergeImageComponents(const __CFAllocator *a1, const void *a2, uint64_t a3, const __CFAllocator *a4, CFArrayRef theArray, CFTypeRef a6, uint64_t a7)
{
  v8 = v7;
  v72[1] = *MEMORY[0x1E69E9840];
  v68 = 0;
  if (!theArray || (Count = CFArrayGetCount(theArray)) == 0)
  {
    v23 = CMPhotoByteStreamWriteStreamCreate(a1, 0, a2);
    if (v23)
    {
      v20 = v23;
      if (a6)
      {
        a6 = CFRetain(a6);
      }

      v16 = 0;
      v18 = 0;
      v22 = 1;
      goto LABEL_11;
    }

    return 4294950305;
  }

  v16 = Count;
  Mutable = CFDataCreateMutable(a1, 0);
  if (!Mutable)
  {
    return 4294950305;
  }

  v18 = Mutable;
  v19 = CMPhotoMutableDataWriteStreamCreate(a1, Mutable);
  if (!v19)
  {
    a6 = 0;
    a7 = 4294950305;
    goto LABEL_71;
  }

  v20 = v19;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  a6 = MutableCopy;
  if (!MutableCopy)
  {
LABEL_77:
    a7 = 4294950305;
    goto LABEL_70;
  }

  CFDictionaryAddValue(MutableCopy, @"kCGImageWriteExtendedAPP0", *MEMORY[0x1E695E4D0]);
  v22 = 0;
LABEL_11:
  if (!CFWriteStreamOpen(v20) || !CGImageWriteEXIFJPEGWithMetadata())
  {
    fig_log_get_emitter();
    a7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v51, v53);
    goto LABEL_70;
  }

  CFWriteStreamClose(v20);
  if (v22)
  {
    a7 = 0;
    goto LABEL_70;
  }

  v58 = malloc_type_calloc(v16, 0x10uLL, 0x1060040ADAFC7CAuLL);
  if (!v58)
  {
    goto LABEL_77;
  }

  *v54 = a2;
  v55 = v20;
  v56 = a6;
  v57 = v18;
  if (v16 < 1)
  {
    v62 = 0;
    v60 = 0;
LABEL_48:
    v18 = v57;
    v47 = v58;
    CMPhotoCreateMPOFromJFIFData(*v54, v62, v57, v58, v16, v60);
    OUTLINED_FUNCTION_12_18();
    v20 = v55;
    a6 = v56;
    goto LABEL_57;
  }

  v52 = v7;
  v24 = 0;
  v60 = 0;
  v62 = 0;
  a3 = 29;
  v25 = theArray;
  v26 = v58 + 1;
  v61 = v16;
  a4 = a1;
  while (1)
  {
    v67 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v25, v24);
    v28 = ValueAtIndex;
    if (*(ValueAtIndex + 9))
    {
      if (CMPhotoDataCreateFromSampleBuffer(a4, *ValueAtIndex, *(ValueAtIndex + 8) == 0, &v67))
      {
        goto LABEL_46;
      }

      v62 = 1;
      goto LABEL_41;
    }

    v70 = 0;
    v71 = 0;
    v72[0] = 0;
    v66 = 0;
    v65 = 0;
    if (CMPhotoAuxiliaryImageMetadataCreateXMPData(a4, ValueAtIndex[2], ValueAtIndex[4], *(ValueAtIndex + 3), ValueAtIndex[3], &v68))
    {
LABEL_46:
      OUTLINED_FUNCTION_12_18();
      goto LABEL_56;
    }

    Length = CFDataGetLength(v68);
    v30 = CFDataCreateMutable(a4, Length + 29);
    a4 = v30;
    if (!v30)
    {
      v8 = 0;
      a3 = 0;
      goto LABEL_54;
    }

    CFDataAppendBytes(v30, "http://ns.adobe.com/xap/1.0/", 29);
    BytePtr = CFDataGetBytePtr(v68);
    v32 = CFDataGetLength(v68);
    CFDataAppendBytes(a4, BytePtr, v32);
    v70 = a4;
    LOBYTE(v65) = -31;
    v33 = v28[6];
    if (v33)
    {
      break;
    }

    v63 = 0;
    v37 = &v71;
    v38 = 1;
LABEL_28:
    a7 = v28[5];
    if (a7)
    {
      v39 = v25;
      v40 = CFDataGetLength(v28[5]);
      if ((v40 - 65519) < 0xFFFFFFFFFFFF0001)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_12();
        v46 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v52, v54[0]);
        v8 = 0;
        if (v46)
        {
          a7 = v46;
LABEL_52:
          v16 = v61;
          a3 = v63;
          goto LABEL_56;
        }
      }

      else
      {
        v41 = v40;
        v42 = CFGetAllocator(a7);
        v43 = CFDataCreateMutable(v42, 0);
        v8 = v43;
        if (!v43)
        {
          a7 = 4294950305;
          goto LABEL_52;
        }

        CFDataAppendBytes(v43, "ICC_PROFILE", 12);
        *bytes = 257;
        CFDataAppendBytes(v8, bytes, 2);
        v44 = CFDataGetBytePtr(a7);
        CFDataAppendBytes(v8, v44, v41);
      }

      v25 = v39;
      *v37 = v8;
      *(&v65 + v38++) = -30;
    }

    else
    {
      v8 = 0;
    }

    v45 = CMPhotoCreateDataFromJFIFSampleBufferAndInjectAppMarkers(a1, *v28, v38, &v70, &v65, &v67);
    v16 = v61;
    a3 = v63;
    if (v45)
    {
      a7 = v45;
      goto LABEL_56;
    }

    if (v68)
    {
      CFRelease(v68);
      v68 = 0;
    }

    CFRelease(a4);
    a4 = a1;
    if (v8)
    {
      CFRelease(v8);
    }

    if (v63)
    {
      CFRelease(v63);
    }

    a3 = 29;
LABEL_41:
    *(v26 - 1) = v67;
    *v26 = 0;
    v26 += 4;
    if (v16 == ++v24)
    {
      goto LABEL_48;
    }
  }

  v34 = CFGetAllocator(v28[6]);
  v35 = CFDataCreateMutable(v34, 0);
  a3 = v35;
  if (v35)
  {
    CFDataAppendBytes(v35, "urn:iso:std:iso:ts:21496:-1", 28);
    v36 = CMPhotoWriteFlexRangeBinaryMetadata(v33, a3);
    if (v36)
    {
      a7 = v36;
      CFRelease(a3);
      v8 = 0;
      a3 = 0;
      goto LABEL_56;
    }

    v63 = a3;
    v71 = a3;
    HIBYTE(v65) = -30;
    v60 = 1;
    v37 = v72;
    v38 = 2;
    goto LABEL_28;
  }

  v8 = 0;
LABEL_54:
  a7 = 4294950305;
LABEL_56:
  a6 = v56;
  v18 = v57;
  v20 = v55;
  v47 = v58;
LABEL_57:
  if (v16 >= 1)
  {
    v48 = v47;
    do
    {
      if (*v48)
      {
        CFRelease(*v48);
        *v48 = 0;
      }

      v48 += 2;
      --v16;
    }

    while (v16);
  }

  free(v47);
  if (v68)
  {
    CFRelease(v68);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (a3)
  {
    CFRelease(a3);
  }

LABEL_70:
  CFRelease(v20);
  if (v18)
  {
LABEL_71:
    CFRelease(v18);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  return a7;
}

uint64_t CMPhotoCopyDebugMetadataFromJFIFByteStream(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, __int128 *a5, CFDataRef *a6)
{
  v15 = 0;
  v14 = 0uLL;
  theData = 0;
  v9 = _copyChunkedHeadersFromJFIFByteStream(a1, a2, a3, 227, "iOS_Debug", 12, 2, &v15, &v14, &theData);
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    if (!theData)
    {
      v11 = 0;
      goto LABEL_13;
    }

    BytePtr = CFDataGetBytePtr(theData);
    v11 = malloc_type_malloc(0xCuLL, 0xC84AF006uLL);
    memcpy(v11, BytePtr, 0xCuLL);
    if (strncmp(v11, "iOSCustom", 0xCuLL))
    {
      if (a4)
      {
        *a4 = v15;
      }

      if (a5)
      {
        *a5 = v14;
      }

      if (a6)
      {
        *a6 = theData;
        theData = 0;
        goto LABEL_13;
      }
    }
  }

  if (theData)
  {
    CFRelease(theData);
  }

LABEL_13:
  free(v11);
  return v9;
}

uint64_t CMPhotoGetXMPLocationFromJFIFByteStream()
{
  OUTLINED_FUNCTION_11_17();
  v4 = v3;
  v28 = *MEMORY[0x1E69E9840];
  v27 = xmmword_1E77A3580;
  v26[0] = 29;
  v26[1] = 35;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v21 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2800000000;
  v18 = 0;
  v19 = 0;
  v14 = -7711;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __CMPhotoGetXMPLocationFromJFIFByteStream_block_invoke;
  v13[3] = &unk_1E77A3598;
  v13[4] = &v15;
  v13[5] = &v22;
  v13[6] = v20;
  v13[7] = v5;
  MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v6, v7, 2u, &v14, &v27, v26, v13);
  if (!MarkersWithSignaturesInJFIFByteStreamWithHandler)
  {
    if (v4)
    {
      *v4 = *(v23 + 24);
    }

    if (v2)
    {
      OUTLINED_FUNCTION_18_7();
      *v2 = v9;
    }

    if (v1)
    {
      if (*(v23 + 24))
      {
        v10 = v16[3] + 29;
      }

      else
      {
        v10 = 0;
      }

      *v1 = v10;
    }

    if (v0)
    {
      if (*(v23 + 24))
      {
        v11 = v16[4] - 29;
      }

      else
      {
        v11 = 0;
      }

      *v0 = v11;
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
  return MarkersWithSignaturesInJFIFByteStreamWithHandler;
}

uint64_t CMPhotoCopyExtendedXMPPayloadsFromJFIFByteStream(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = 35;
  v25 = "http://ns.adobe.com/xmp/extension/";
  v3 = &v20;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v4 = 4294950306;
  if (a1 && a3)
  {
    v19 = -31;
    OUTLINED_FUNCTION_6_23();
    v13 = 0x40000000;
    v14 = __CMPhotoCopyExtendedXMPPayloadsFromJFIFByteStream_block_invoke;
    v15 = &unk_1E77A35C0;
    v16 = &v20;
    v17 = v6;
    v18 = a3;
    MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v6, v7, 1u, &v19, &v25, &v24, &v12);
    v3 = v21;
    if (MarkersWithSignaturesInJFIFByteStreamWithHandler)
    {
      v4 = MarkersWithSignaturesInJFIFByteStreamWithHandler;
    }

    else
    {
      v9 = v21[3];
      if (v9 && CFArrayGetCount(v9) > 0)
      {
        v4 = 0;
        v3 = v21;
        *a3 = v21[3];
        v3[3] = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
        v3 = v21;
      }
    }
  }

  v10 = v3[3];
  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v20, 8);
  return v4;
}

uint64_t CMPhotoGetDQTLocationFromJFIFByteStream(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void *a5)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2800000000;
  v21 = 0;
  v22 = 0;
  OUTLINED_FUNCTION_5_22();
  v16[1] = 0x40000000;
  v16[2] = __CMPhotoGetDQTLocationFromJFIFByteStream_block_invoke;
  v16[3] = &unk_1E77A35E8;
  v16[4] = v9;
  v16[5] = v8;
  MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v10, v11, 1u, &v17, 0, 0, v16);
  if (!MarkersWithSignaturesInJFIFByteStreamWithHandler)
  {
    if (a3)
    {
      *a3 = *(v24 + 24);
    }

    if (a4)
    {
      if (*(v24 + 24))
      {
        v13 = v19[3];
      }

      else
      {
        v13 = 0;
      }

      *a4 = v13;
    }

    if (a5)
    {
      if (*(v24 + 24))
      {
        v14 = v19[4];
      }

      else
      {
        v14 = 0;
      }

      *a5 = v14;
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v23, 8);
  return MarkersWithSignaturesInJFIFByteStreamWithHandler;
}

uint64_t CMPhotoCopyIPTCFromJFIFByteStream(const __CFAllocator *a1, uint64_t a2, uint64_t a3, _BYTE *a4, __CFData **a5)
{
  v33 = 14;
  v34 = "Photoshop 3.0";
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2000000000;
  v32 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2800000000;
  v29 = 0;
  v30 = 0;
  v8 = OUTLINED_FUNCTION_10_20(a1, a2);
  MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v8, v9, v10, v11, v12, v13, v14);
  if (MarkersWithSignaturesInJFIFByteStreamWithHandler)
  {
    v24 = MarkersWithSignaturesInJFIFByteStreamWithHandler;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_18_7();
  if (v16)
  {
    v17 = v27[4];
    Mutable = CFDataCreateMutable(a1, 0);
    if (!Mutable)
    {
      v24 = 4294950305;
      goto LABEL_14;
    }

    v19 = Mutable;
    if (v17 - 14 < 0)
    {
      v24 = 4294950190;
    }

    else
    {
      CFDataSetLength(Mutable, v17 - 14);
      CFDataGetMutableBytePtr(v19);
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v20 = OUTLINED_FUNCTION_20_0();
        v22 = v21(v20);
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          if (v17 == 14)
          {
            if (!a4)
            {
              goto LABEL_10;
            }

            goto LABEL_9;
          }

          v24 = 4294950194;
        }
      }

      else
      {
        v24 = 4294954514;
      }
    }

LABEL_13:
    CFRelease(v19);
    goto LABEL_14;
  }

  v19 = 0;
  if (a4)
  {
LABEL_9:
    OUTLINED_FUNCTION_18_7();
    *a4 = v23;
  }

LABEL_10:
  v24 = 0;
  if (!a5)
  {
    if (!v19)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *a5 = v19;
LABEL_14:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v31, 8);
  return v24;
}

uint64_t CMPhotoJFIFCopyCustomMetadataFromCFData(const __CFData *a1, CFTypeRef *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (!a1)
  {
    return 4294950306;
  }

  v5 = BytePtr;
  Length = CFDataGetLength(a1);
  if (Length < 8)
  {
    return 4294950194;
  }

  v7 = Length;
  v8 = *v5;
  v9 = *v5 + 8;
  if (v9 > Length)
  {
    return 4294950194;
  }

  v10 = CFStringCreateWithBytes(0, v5 + 8, *v5, 0x8000100u, 1u);
  if (!v10)
  {
    return 4294950305;
  }

  v11 = v10;
  v12 = v8 + 16;
  if (v8 + 16 > v7 || (v13 = *&v5[v9], v14 = v13 + v12, v13 + v12 > v7))
  {
    v24 = 4294950194;
LABEL_26:
    v21 = v11;
LABEL_18:
    CFRelease(v21);
    return v24;
  }

  v15 = CFStringCreateWithBytes(0, &v5[v12], v13, 0x8000100u, 1u);
  if (!v15)
  {
    v24 = 4294950305;
    goto LABEL_26;
  }

  v16 = v15;
  v17 = v14 + 8;
  if (v14 + 8 > v7 || *&v5[v14] + v17 > v7)
  {
    v21 = 0;
    v23 = 0;
    v24 = 4294950194;
  }

  else
  {
    v18 = CFDataGetLength(a1) - v17;
    v19 = *MEMORY[0x1E695E480];
    v20 = CFDataGetBytePtr(a1);
    v21 = CFDataCreateWithBytesNoCopy(v19, &v20[v17], v18, *MEMORY[0x1E695E498]);
    Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v23 = Mutable;
    if (Mutable)
    {
      if (v21)
      {
        CFDictionarySetValue(Mutable, @"Data", v21);
      }

      CFDictionarySetValue(v23, @"URI", v11);
      CFDictionarySetValue(v23, @"Name", v16);
      v24 = 0;
      if (a2)
      {
        *a2 = CFRetain(v23);
      }
    }

    else
    {
      v24 = 4294950305;
    }
  }

  CFRelease(v11);
  CFRelease(v16);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v21)
  {
    goto LABEL_18;
  }

  return v24;
}

BOOL _appInjectionScannerCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t __CMPhotoJFIFCreateStrippedBufferFromByteStream_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t SlimEncodeFrame(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v93 = *MEMORY[0x1E69E9840];
  v9 = *v1;
  if (*v1 < 0x10u)
  {
    return 4294951896;
  }

  v10 = v1;
  v11 = *(v1 + 4);
  if (v11 < 0x10)
  {
    return 4294951896;
  }

  v12 = *(v1 + 32);
  v13 = v12 == 825437747 || v12 == 846624121;
  v14 = v13 || v12 == 875704422;
  v15 = v14 || v12 == 875704438;
  v16 = v15 || v12 == 875836518;
  v17 = v16 || v12 == 875836534;
  v18 = v17 || v12 == 1278226536;
  v19 = v18 || v12 == 1278226742;
  v20 = v19 || v12 == 1650943796;
  v21 = v20 || v12 == 2037741171;
  if (!v21 && v12 != 2037741158)
  {
    return 4294951896;
  }

  v23 = v2;
  v24 = *(v1 + 64);
  v25 = *(v1 + 88);
  if (v12 != 825437747)
  {
    v26 = v11 * v9;
    v27 = 2 * v26;
    if (v12 == 2037741171)
    {
      *v25 = *v24;
      v31 = (v25 + 4);
      if (v27 >= 5)
      {
        v52 = 0;
        v33 = 0;
        v53 = v27 - 4;
        v54 = v24 + 4;
        v36 = -32;
        do
        {
          v55 = &luma + 2 * (v54[v52] - v54[v52 - 2]);
          v56 = *v55;
          v57 = v36 + v56;
          if (v36 + v56 < 0)
          {
            v59 = (v33 << v56) | v55[1];
          }

          else
          {
            v58 = v33 << -v36;
            v59 = v55[1];
            *v31++ = (v59 >> v57) | v58;
            v57 -= 32;
          }

          v60 = &chroma + 2 * (v54[v52 + 1] - v54[v52 - 3]);
          v61 = *v60;
          v36 = v57 + v61;
          if (v57 + v61 < 0)
          {
            v33 = (v59 << v61) | v60[1];
          }

          else
          {
            v62 = v59 << -v57;
            v33 = v60[1];
            *v31++ = (v33 >> v36) | v62;
            v36 -= 32;
          }

          v52 += 2;
        }

        while (v52 < v53);
        goto LABEL_74;
      }

LABEL_76:
      v48 = v31 - v25;
      goto LABEL_151;
    }

    if (v12 == 875704422 || v12 == 875704438 || v12 == 875836518 || v12 == 875836534)
    {
      v45 = pack_420v_luma_arm();
      v46 = v45;
      if ((v45 & 3) != 0)
      {
        v47 = v45 >> 2;
        bzero((v25 + (v45 & 3 | (4 * v47))), 4 - (v45 & 3u));
        *(v25 + 4 * v47) = bswap32(*(v25 + 4 * v47));
        v46 = (v46 + 3) & 0xFFFFFFFC;
      }

      v48 = pack_420v_chroma_arm() + v46;
      v49 = v48 & 3;
      if ((v48 & 3) == 0)
      {
        goto LABEL_151;
      }

      v50 = v48 >> 2;
      v51 = v48 >> 2;
      goto LABEL_79;
    }

    if (v12 != 1278226742)
    {
      if (v12 != 1650943796)
      {
        if (v12 != 2037741158)
        {
          if (v12 == 846624121)
          {
            *v25 = v24[1] | (((v24[2] << 16) | (v24[3] << 8) | *v24) << 8);
            v31 = (v25 + 4);
            if (v27 >= 5)
            {
              v32 = 0;
              v33 = 0;
              v34 = v27 - 4;
              v35 = v24 + 5;
              v36 = -32;
              do
              {
                v37 = &luma + 2 * (*v35 - *(v35 - 2));
                v38 = *v37;
                v39 = v36 + v38;
                if (v36 + v38 < 0)
                {
                  v41 = (v33 << v38) | v37[1];
                }

                else
                {
                  v40 = v33 << -v36;
                  v41 = v37[1];
                  *v31++ = (v41 >> v39) | v40;
                  v39 -= 32;
                }

                v42 = &chroma + 2 * (*(v35 - 1) - *(v35 - 5));
                v43 = *v42;
                v36 = v39 + v43;
                if (v39 + v43 < 0)
                {
                  v33 = (v41 << v43) | v42[1];
                }

                else
                {
                  v44 = v41 << -v39;
                  v33 = v42[1];
                  *v31++ = (v33 >> v36) | v44;
                  v36 -= 32;
                }

                v35 += 2;
                v32 += 2;
              }

              while (v32 < v34);
LABEL_74:
              if (v36 >= -31)
              {
                *v31 = v33 << -v36;
                LODWORD(v31) = v31 + 4;
              }

              goto LABEL_76;
            }

            goto LABEL_76;
          }

          if (v12 != 1278226536)
          {
LABEL_82:
            v48 = 0;
            goto LABEL_151;
          }
        }

        goto LABEL_81;
      }

      v63 = pack_bgg4_arm(v5, v6, v7, v8, *(v1 + 64), *(v1 + 88), v26, &bgg4, v3, v4);
      v48 = v63;
      v49 = v63 & 3;
      if ((v63 & 3) == 0)
      {
        goto LABEL_151;
      }

      v50 = v63 >> 2;
      v51 = v63 >> 2;
LABEL_79:
      bzero((v25 + (v49 | (4 * v51))), (4 - v49));
      *(v25 + 4 * v50) = bswap32(*(v25 + 4 * v50));
      v48 = (v48 + 3) & 0xFFFFFFFC;
      goto LABEL_151;
    }
  }

LABEL_81:
  v64 = (v9 + 15) & 0xFFFFFFF0;
  v65 = *(v1 + 8);
  v66 = (v65 >> 1) - v64;
  if (v65 >> 1 < v64)
  {
    goto LABEL_82;
  }

  v67 = v65 * v11;
  if (*(v1 + 144))
  {
    v68 = *(v1 + 136);
    if (v68)
    {
      v48 = EncodeFrameThreads(v68, *(v10 + 64), v67, *(v10 + 88), v64, (v65 >> 1) - v64);
      goto LABEL_151;
    }

    return 4294951896;
  }

  v70 = v67 & 0xFFFFFFFE;
  v71 = v25 + 4;
  bzero(v92, 0x1FFFEuLL);
  if (v67 >= 2)
  {
    v72 = v67 & 0xFFFFFFFE;
    v73 = v24;
    do
    {
      v74 = *v73++;
      v92[v74] = 1;
      v72 -= 2;
    }

    while (v72);
  }

  v75 = 0;
  v76 = 0;
  do
  {
    if (v92[v75] == 1)
    {
      v92[v75] = v76++;
      *v71 = v75;
      v71 += 2;
    }

    ++v75;
  }

  while (v75 != 0xFFFF);
  *v25 = 23043;
  *(v25 + 2) = v76;
  v77 = v92[*v24];
  *v71 = (v77 >> 12) | 0xF0;
  *(v71 + 1) = v77 >> 4;
  v78 = (v71 + 2);
  v79 = 16 * v77;
  if (v70 == 2)
  {
LABEL_149:
    *v78 = v79 + 13;
    LODWORD(v78) = v78 + 1;
    goto LABEL_150;
  }

  v80 = 0;
  v81 = v24 + 2;
  v82 = 1;
  v83 = 1;
  do
  {
    v84 = v92[*v81];
    v85 = v84 - v77;
    v86 = (v84 - v77);
    if (v86 >= 0)
    {
      v87 = (v84 - v77);
    }

    else
    {
      v87 = -v86;
    }

    v88 = 16 * v80;
    if (v87 > 6)
    {
      if (!v80)
      {
        if (v83)
        {
          goto LABEL_123;
        }

        goto LABEL_127;
      }

      if (v80 == 1)
      {
        if (v83)
        {
          *v78++ = v79 + 6;
LABEL_127:
          if ((v85 + 64) > 0x7Fu)
          {
            v80 = 0;
            *v78 = (v84 >> 12) | 0xF0;
            v78[1] = v84 >> 4;
            v78 += 2;
            v79 = 16 * v84;
LABEL_137:
            v83 = 1;
            goto LABEL_138;
          }

          v80 = 0;
          *v78++ = ((v85 + 192) >> 4) - 16;
LABEL_136:
          v79 = 16 * v85;
          goto LABEL_137;
        }

        v79 = 96;
      }

      else
      {
        if (!v83)
        {
          *v78++ = v80 - 33;
          goto LABEL_127;
        }

        *v78 = v79 + 14;
        v79 = v88 - 16;
        ++v78;
      }

LABEL_123:
      v79 += 15;
      *v78 = v79;
      v83 = 0;
      v80 = 0;
      if ((v85 + 64) > 0x7Fu)
      {
        *(v78 + 1) = __rev16(v84);
        v78 += 3;
      }

      else
      {
        v78[1] = v85 - 64;
        v78 += 2;
      }

      goto LABEL_138;
    }

    if (v84 != v77)
    {
      if (!v80)
      {
        v85 += 6;
        if (v83)
        {
          goto LABEL_132;
        }

        goto LABEL_135;
      }

      if (v80 == 1)
      {
        if (v83)
        {
          v90 = v79 + 6;
LABEL_134:
          *v78++ = v90;
          v85 += 6;
LABEL_135:
          v80 = 0;
          goto LABEL_136;
        }

        v79 = 96;
      }

      else
      {
        if (!v83)
        {
          v90 = v80 - 33;
          goto LABEL_134;
        }

        *v78++ = v79 + 14;
        v79 = v88 - 16;
      }

      v85 += 6;
LABEL_132:
      v83 = 0;
      v80 = 0;
      v79 += v85;
      *v78++ = v79;
      goto LABEL_138;
    }

    if (++v80 == 16)
    {
      v80 = 0;
      v89 = v79 + 14;
      if (v83)
      {
        v79 = -16;
      }

      else
      {
        v89 = -17;
      }

      *v78++ = v89;
    }

LABEL_138:
    if (v82 + 1 == v64)
    {
      v91 = v66;
    }

    else
    {
      v91 = 0;
    }

    v81 += 2 * v91 + 2;
    if (v82 + 1 == v64)
    {
      v82 = 0;
    }

    else
    {
      ++v82;
    }

    v77 = v84;
  }

  while (v81 != &v24[v70]);
  if (!v80)
  {
    if (!v83)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

  if (v83)
  {
    *v78 = v79 + 14;
    LOBYTE(v79) = 16 * v80 - 16;
    ++v78;
    goto LABEL_149;
  }

  *v78 = v80 - 33;
  LODWORD(v78) = v78 + 1;
LABEL_150:
  v48 = v78 - v25;
LABEL_151:
  result = 0;
  if (v23)
  {
    *v23 = v48;
  }

  return result;
}

uint64_t CMPhotoCFDictionarySetInt16(uint64_t a1, uint64_t a2, __int16 a3)
{
  valuePtr = a3;
  result = 4294950306;
  if (a1 && a2)
  {
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr))
    {
      v6 = OUTLINED_FUNCTION_0_32();
      CFDictionarySetValue(v6, v7, v8);
      CFRelease(v3);
      return 0;
    }

    else
    {
      return 4294950305;
    }
  }

  return result;
}

uint64_t CMPhotoCFDictionarySetDouble(uint64_t a1, uint64_t a2, double a3)
{
  valuePtr = a3;
  result = 4294950306;
  if (a1 && a2)
  {
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr))
    {
      v6 = OUTLINED_FUNCTION_0_32();
      CFDictionarySetValue(v6, v7, v8);
      CFRelease(v3);
      return 0;
    }

    else
    {
      return 4294950305;
    }
  }

  return result;
}

uint64_t CMPhotoCFDictionaryGetLongIfPresent()
{
  result = OUTLINED_FUNCTION_1_28();
  if (v4)
  {
    if (v2)
    {
      v5 = v3;
      if (v3)
      {
        result = OUTLINED_FUNCTION_2_30(v2, v4, v14, number);
        if (result)
        {
          TypeID = CFNumberGetTypeID();
          if (v0 == OUTLINED_FUNCTION_3_29(TypeID, v7, v8, v9, v10, v11, v12, v13, v15, numbera))
          {
            CFNumberGetValue(numberb, kCFNumberLongType, v5);
            return 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMPhotoCFDictionaryGetFloatIfPresent()
{
  result = OUTLINED_FUNCTION_1_28();
  if (v4)
  {
    if (v2)
    {
      v5 = v3;
      if (v3)
      {
        result = OUTLINED_FUNCTION_2_30(v2, v4, v14, number);
        if (result)
        {
          TypeID = CFNumberGetTypeID();
          if (v0 == OUTLINED_FUNCTION_3_29(TypeID, v7, v8, v9, v10, v11, v12, v13, v15, numbera))
          {
            CFNumberGetValue(numberb, kCFNumberFloatType, v5);
            return 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMPhotoCFArrayAppendInt32(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 4294950306;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (!v3)
  {
    return 4294950305;
  }

  OUTLINED_FUNCTION_4_24(v3);
  CFRelease(v2);
  return 0;
}

uint64_t CMPhotoCFArrayAppendFloat(uint64_t a1, float a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 4294950306;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  if (!v3)
  {
    return 4294950305;
  }

  OUTLINED_FUNCTION_4_24(v3);
  CFRelease(v2);
  return 0;
}

uint64_t CMPhotoCFArrayAppendDouble(uint64_t a1, double a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 4294950306;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (!v3)
  {
    return 4294950305;
  }

  OUTLINED_FUNCTION_4_24(v3);
  CFRelease(v2);
  return 0;
}

uint64_t CMPhotoCFArraySetCFIndexAtIndex(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 4294950306;
  }

  if (!CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr))
  {
    return 4294950305;
  }

  v3 = OUTLINED_FUNCTION_0_32();
  CFArraySetValueAtIndex(v3, v4, v5);
  CFRelease(v2);
  return 0;
}

uint64_t CMPhotoDataCreateFromSource(const __CFAllocator *a1, const __CFData *a2, size_t a3, size_t a4, void *a5, char *a6)
{
  v38 = 0;
  version = a4;
  v37 = 0;
  v35 = 0;
  cf = 0;
  if (!a2)
  {
    v22 = 4294950306;
    goto LABEL_52;
  }

  if (a5)
  {
    DataLength = a4;
    v11 = a2;
    switch(CMPhotoGetStorageType(a2))
    {
      case 1u:
        if (!DataLength)
        {
          if ((a3 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          DataLength = CFDataGetLength(v11) - a3;
          version = DataLength;
        }

        if (DataLength + a3 > CFDataGetLength(v11))
        {
          Contiguous = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950306, "(Fig)", 665, v6);
          goto LABEL_37;
        }

        if (!a3 && DataLength == CFDataGetLength(v11))
        {
          v13 = 0;
          v38 = CFRetain(v11);
          goto LABEL_42;
        }

        if ((DataLength & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        BytePtr = CFDataGetBytePtr(v11);
        v38 = CFDataCreate(a1, &BytePtr[a3], DataLength);
        v13 = 0;
        if (v38)
        {
          v37 = 1;
          goto LABEL_42;
        }

        v11 = 0;
        goto LABEL_68;
      case 2u:
        dataPointerOut = 0;
        lengthAtOffsetOut = 0;
        if (!DataLength)
        {
          DataLength = CMBlockBufferGetDataLength(v11);
          version = DataLength;
        }

        if ((a3 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (CMBlockBufferIsRangeContiguous(v11, a3, DataLength))
        {
          goto LABEL_29;
        }

        v26 = OUTLINED_FUNCTION_20_0();
        Contiguous = CMBlockBufferCreateContiguous(v26, v27, a1, 0, a3, DataLength, 2u, v28);
        if (Contiguous)
        {
          goto LABEL_37;
        }

        a3 = 0;
        v11 = cf;
        v37 = 1;
LABEL_29:
        Contiguous = CMBlockBufferGetDataPointer(v11, a3, &lengthAtOffsetOut, 0, &dataPointerOut);
        if (Contiguous)
        {
          goto LABEL_37;
        }

        if (v11)
        {
          v11 = CFRetain(v11);
        }

        v32.version = 0;
        v32.info = v11;
        memset(&v32.retain, 0, 24);
        v32.allocate = _cfTypeDeallocator_allocate_0;
        v32.reallocate = 0;
        v32.deallocate = _cfTypeDeallocator_deallocate_0;
        v32.preferredSize = 0;
        v13 = CFAllocatorCreate(0, &v32);
        if (!v13)
        {
          goto LABEL_68;
        }

        if ((DataLength & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        v38 = CFDataCreateWithBytesNoCopy(a1, dataPointerOut, DataLength, v13);
        if (v38)
        {
          goto LABEL_42;
        }

LABEL_68:
        v22 = 4294950305;
        break;
      case 3u:
        OUTLINED_FUNCTION_20_0();
        Contiguous = CMByteStreamCreateForFileURL();
        if (Contiguous)
        {
          goto LABEL_37;
        }

        v16 = v35;
        v20 = &v37;
        v18 = a1;
        v19 = a3;
        v17 = DataLength;
        goto LABEL_17;
      case 4u:
        if ((a3 & 0x8000000000000000) != 0)
        {
LABEL_63:
          v13 = 0;
          v11 = 0;
LABEL_64:
          v22 = 4294950190;
          break;
        }

        v23 = OUTLINED_FUNCTION_20_0();
        DataWrappingIOSurface = CMPhotoCreateDataWrappingIOSurface(v23, v24, a3, DataLength);
        v13 = 0;
        v38 = DataWrappingIOSurface;
        if (DataWrappingIOSurface)
        {
          goto LABEL_42;
        }

        v22 = 4294950305;
        goto LABEL_22;
      case 5u:
        if (DataLength)
        {
          goto LABEL_12;
        }

        v32.version = 0;
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v31)
        {
          v22 = 4294954514;
          goto LABEL_38;
        }

        Contiguous = v31(v11, 0, &v32);
        if (Contiguous)
        {
          goto LABEL_37;
        }

        DataLength = v32.version;
        if (v32.version < 0)
        {
LABEL_65:
          v22 = 4294950190;
          goto LABEL_38;
        }

        version = v32.version;
LABEL_12:
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v14)
        {
          Contiguous = v14(v11, DataLength, a3, &cf, &version);
          if (!Contiguous)
          {
            v37 = 1;
            v16 = cf;
            v17 = version;
            v18 = a1;
            v19 = 0;
            v20 = 0;
LABEL_17:
            v21 = CMPhotoDataCreateFromSource(v18, v16, v19, v17, &v38, v20);
            v13 = 0;
            if (v21)
            {
              v22 = v21;
LABEL_22:
              v11 = 0;
            }

            else
            {
LABEL_42:
              *a5 = v38;
              v38 = 0;
              v22 = 0;
              v11 = 0;
              if (a6)
              {
                *a6 = v37;
              }
            }

            break;
          }

LABEL_37:
          v22 = Contiguous;
          goto LABEL_38;
        }

        v13 = 0;
        v11 = 0;
        v22 = 4294954514;
        break;
      default:
        Contiguous = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950299, "(Fig)", 692, v6);
        goto LABEL_37;
    }
  }

  else
  {
    v22 = 0;
LABEL_38:
    v13 = 0;
    v11 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_52:
  if (v38)
  {
    CFRelease(v38);
  }

  return v22;
}

void _mergeDictionaryEntries(const void *a1, CFTypeRef cf, uint64_t a3)
{
  if (*a3)
  {
    return;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {
    v7 = CFDictionaryContainsKey(*(a3 + 16), a1);
    v8 = *(a3 + 16);
    if (v7)
    {
      Value = CFDictionaryGetValue(v8, a1);
      v10 = CFGetTypeID(Value);
      if (v10 == CFDictionaryGetTypeID())
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*(a3 + 8), 0, Value);
        CFDictionarySetValue(*(a3 + 16), a1, MutableCopy);
        v12 = 0u;
        v13 = 0u;
        LODWORD(v12) = *a3;
        *(&v12 + 1) = *(a3 + 8);
        *&v13 = MutableCopy;
        BYTE8(v13) = *(a3 + 24);
        CFDictionaryApplyFunction(cf, _mergeDictionaryEntries, &v12);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      else
      {
        *a3 = -17102;
      }

      return;
    }

    goto LABEL_12;
  }

  v8 = *(a3 + 16);
  if (!*(a3 + 24))
  {
LABEL_12:

    CFDictionaryAddValue(v8, a1, cf);
    return;
  }

  CFDictionarySetValue(v8, a1, cf);
}

uint64_t CMPhotoPropertyListCopyWithMutableContainers(const __CFAllocator *a1, const void *a2, CFMutableArrayRef *a3)
{
  value = 0;
  if (!a2)
  {
    return 0;
  }

  v6 = CFGetTypeID(a2);
  if (v6 != CFDictionaryGetTypeID())
  {
    v11 = CFGetTypeID(a2);
    if (v11 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a2);
      Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v9 = Mutable;
        if (CFArrayGetCount(a2) >= 1)
        {
          for (i = 0; i < CFArrayGetCount(a2); ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
            v16 = ValueAtIndex;
            if (ValueAtIndex && ((v17 = CFGetTypeID(ValueAtIndex), v17 == CFDictionaryGetTypeID()) || (v18 = CFGetTypeID(v16), v18 == CFArrayGetTypeID())))
            {
              v19 = OUTLINED_FUNCTION_20_0();
              v22 = CMPhotoPropertyListCopyWithMutableContainers(v19, v20, v21);
              if (v22)
              {
                v10 = v22;
                CFRelease(v9);
                return v10;
              }

              CFArrayAppendValue(v9, value);
            }

            else
            {
              CFArrayAppendValue(v9, v16);
            }
          }
        }

        v10 = 0;
        goto LABEL_20;
      }

      return 4294950305;
    }

    return 0;
  }

  v7 = FigCFDictionaryGetCount();
  v8 = CFDictionaryCreateMutable(a1, v7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v8)
  {
    return 4294950305;
  }

  v9 = v8;
  v24[1] = a1;
  v25 = 0;
  v24[0] = v8;
  CFDictionaryApplyFunction(a2, _transferDictionaryValue, v24);
  v10 = v25;
  if (!v25)
  {
LABEL_20:
    *a3 = v9;
    return v10;
  }

  CFRelease(v9);
  return v10;
}

void _transferDictionaryValue(void *key, CFTypeRef cf, uint64_t a3)
{
  value = 0;
  if (*(a3 + 16))
  {
    return;
  }

  if (cf && ((v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()) || (v7 = CFGetTypeID(cf), v7 == CFArrayGetTypeID())))
  {
    v9 = CMPhotoPropertyListCopyWithMutableContainers(*(a3 + 8), cf, &value);
    if (!v9)
    {
      v10 = *a3;
      v8 = value;
      CFDictionarySetValue(v10, key, value);
      if (!v8)
      {
        return;
      }

      goto LABEL_7;
    }

    if (!*(a3 + 16))
    {
      *(a3 + 16) = v9;
    }
  }

  else
  {
    CFDictionarySetValue(*a3, key, cf);
  }

  v8 = value;
  if (!value)
  {
    return;
  }

LABEL_7:

  CFRelease(v8);
}

uint64_t CMPhotoComputeMSEForPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, unint64_t a3, uint64_t a4, int a5, double *a6, CVPixelBufferRef *a7)
{
  pixelBufferOut = 0;
  v13 = *MEMORY[0x1E695E480];
  v14 = OUTLINED_FUNCTION_6_24();
  cf = OUTLINED_FUNCTION_6_24();
  CFDictionaryAddValue(v14, *MEMORY[0x1E69660D8], cf);
  pixelBuffer = a2;
  if (CMPhotoPixelBufferHasCLAP(a1) || CMPhotoPixelBufferHasCLAP(a2) || a3 && (a5 >= 1 ? (v15 = a5 > a3) : (v15 = 1), v15))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_2();
    FigSignalErrorAtGM(v129);
    v34 = 0;
    goto LABEL_140;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_2();
    goto LABEL_136;
  }

  v147 = a5;
  v17 = CVPixelBufferGetPixelFormatType(a2);
  v150 = 0;
  v151 = 0;
  v18 = OUTLINED_FUNCTION_37();
  CMPhotoGetPixelBufferCLAP(v18, v19, 0, v20, v21);
  v148 = 0;
  v149 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v148, &v149);
  v22 = v150 == v148 && v151 == v149;
  if (!v22)
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_2();
LABEL_136:
    v34 = FigSignalErrorAtGM(v128);
LABEL_140:
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0.0;
    goto LABEL_122;
  }

  v142 = v14;
  v143 = a6;
  v139 = a7;
  allocator = v13;
  if (!a3)
  {
    v24 = 0;
    v25 = 0;
LABEL_27:
    v30 = 0;
    goto LABEL_28;
  }

  v23 = v151 - (a3 - 1);
  if (v23)
  {
    v26 = 0;
    v24 = 0;
    do
    {
      ++v24;
      v26 += v147;
    }

    while (v23 > v26);
  }

  else
  {
    v24 = 0;
  }

  v27 = v150 - (a3 - 1);
  if (v27)
  {
    v28 = 0;
    v25 = 0;
    do
    {
      ++v25;
      v28 += v147;
    }

    while (v27 > v28);
  }

  else
  {
    v25 = 0;
  }

  v29 = v25 * v24;
  if (!v29)
  {
    goto LABEL_27;
  }

  v30 = malloc_type_calloc(v29, 8uLL, 0x100004000313F17uLL);
  if (!v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0.0;
    v34 = 4294950305;
LABEL_121:
    v14 = v142;
    a6 = v143;
    goto LABEL_122;
  }

LABEL_28:
  v141 = a3;
  v35 = CMPhotoPixelFormatContainsYCbCr(v17);
  v36 = CMPhotoPixelFormatContainsRGB(v17);
  v37 = CMPhotoPixelFormatContainsGrayScale(v17);
  v38 = CVPixelBufferGetPixelFormatType(a2);
  BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(v38);
  v40 = CVPixelBufferGetPixelFormatType(a2);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v40);
  v41 = OUTLINED_FUNCTION_37();
  v43 = CVPixelBufferLockBaseAddress(v41, v42);
  v33 = 0.0;
  if (v43)
  {
    v34 = v43;
    v31 = 0;
    v32 = 0;
    goto LABEL_121;
  }

  v44 = CVPixelBufferLockBaseAddress(a2, 0);
  if (v44)
  {
    v34 = v44;
    v31 = 0;
    goto LABEL_118;
  }

  if (v37)
  {
    if (v17 - 1278226736 <= 6 && ((1 << (v17 - 48)) & 0x45) != 0)
    {
      v45 = 16 - BitDepthForPixelFormat;
      v46 = v141;
      goto LABEL_47;
    }

    v46 = v141;
    if (v17 == 1278226488)
    {
      v45 = 0;
LABEL_47:
      v50 = CVPixelBufferGetBytesPerRow(a2) / BytesPerPixelForPixelFormat;
      BaseAddress = CVPixelBufferGetBaseAddress(a2);
      v52 = CVPixelBufferGetBytesPerRow(a1) / BytesPerPixelForPixelFormat;
      v53 = CVPixelBufferGetBaseAddress(a1);
      v54 = calc_ssd(BaseAddress, v50, v53, v52, BitDepthForPixelFormat, v148, v149, v46, v147, 1, v45, v30, v25);
      v33 = v54 / (v148 * v149);
      if (v24)
      {
        v55 = 0;
        v56 = v46 * v46;
        v57 = v25;
        do
        {
          v58 = v57;
          v59 = v55;
          if (v25)
          {
            do
            {
              v30[v59] = v30[v59] / v56;
              ++v59;
              --v58;
            }

            while (v58);
          }

          OUTLINED_FUNCTION_2_31();
        }

        while (!v22);
      }

      goto LABEL_104;
    }

LABEL_62:
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_2();
    FigSignalErrorAtGM(v124);
LABEL_119:
    v34 = 0;
    goto LABEL_120;
  }

  if (!v35)
  {
    if (v36)
    {
      if (v17 != 1111970369 && v17 != 1815491698 && v17 != 1380401729)
      {
        goto LABEL_62;
      }

      v62 = CVPixelBufferGetBytesPerRow(a2) / BytesPerPixelForPixelFormat;
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
      v64 = CVPixelBufferGetBytesPerRow(a1) / BytesPerPixelForPixelFormat;
      v65 = CVPixelBufferGetBaseAddress(a1);
      v66 = v62;
      v67 = v65;
      v68 = 4 * v66;
      v69 = 4 * v64;
      v70 = 0.0;
      if (v149)
      {
        v71 = 0;
        v72 = 0;
        v73 = 4 * v148;
        do
        {
          if (v73)
          {
            for (i = 0; i < v73; i += 4)
            {
              if (BitDepthForPixelFormat < 9)
              {
                v75 = BaseAddressOfPlane[v68 * v71 + i];
                v76 = v65[v69 * v71 + i];
              }

              else
              {
                v75 = *&BaseAddressOfPlane[2 * v68 * v71 + 2 * i];
                v76 = *&v65[2 * v69 * v71 + 2 * i];
              }

              v72 += (v75 - v76) * (v75 - v76);
            }
          }

          ++v71;
        }

        while (v71 != v149);
        v70 = v72;
      }

      v77 = 1;
      if (BitDepthForPixelFormat <= 8)
      {
        v78 = 2;
      }

      else
      {
        v77 = 2;
        v78 = 4;
      }

      v79 = calc_ssd(&BaseAddressOfPlane[v77], v66, &v65[v77], v64, BitDepthForPixelFormat, v148, v149, v141, v147, 4, 0, v30, v25);
      if (v149)
      {
        v80 = 0;
        v81 = 0;
        v82 = &BaseAddressOfPlane[v78];
        v83 = &v67[v78];
        v84 = 4 * v148;
        do
        {
          if (v84)
          {
            for (j = 0; j < v84; j += 4)
            {
              if (BitDepthForPixelFormat < 9)
              {
                v86 = v82[v68 * v80 + j];
                v87 = v83[v69 * v80 + j];
              }

              else
              {
                v86 = *&v82[2 * v68 * v80 + 2 * j];
                v87 = *&v83[2 * v69 * v80 + 2 * j];
              }

              v81 += (v86 - v87) * (v86 - v87);
            }
          }

          ++v80;
        }

        while (v80 != v149);
        v33 = v81;
      }

      v88 = v148 * v149;
      v89 = v70 / v88;
      v90 = v79 / v88;
      v91 = v33 / v88;
      v46 = v141;
      if (v24)
      {
        OUTLINED_FUNCTION_3_30();
        do
        {
          if (v25)
          {
            do
            {
              OUTLINED_FUNCTION_5_23(v89, v90, v91, v92);
            }

            while (!v22);
          }

          OUTLINED_FUNCTION_2_31();
        }

        while (!v22);
      }

      v33 = (v89 + v90 + v91) / 3.0;
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_2();
    v34 = FigSignalErrorAtGM(v123);
    v31 = 1;
LABEL_118:
    v32 = 1;
    goto LABEL_121;
  }

  if (v17 == 875704422 || v17 == 875704438)
  {
    v49 = 0;
  }

  else
  {
    if (v17 != 2019963440 && v17 != 2016686640)
    {
      goto LABEL_62;
    }

    v49 = 6;
  }

  v137 = v148 >> 1;
  v138 = v149 >> 1;
  v134 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0) / BytesPerPixelForPixelFormat;
  v93 = 2 * BytesPerPixelForPixelFormat;
  v136 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL) / v93;
  v131 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v133 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v94 = OUTLINED_FUNCTION_37();
  v96 = CVPixelBufferGetBytesPerRowOfPlane(v94, v95) / BytesPerPixelForPixelFormat;
  v130 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL) / v93;
  v97 = OUTLINED_FUNCTION_37();
  v99 = CVPixelBufferGetBaseAddressOfPlane(v97, v98);
  v100 = a1;
  v101 = v99;
  v102 = CVPixelBufferGetBaseAddressOfPlane(v100, 1uLL);
  v135 = calc_ssd(v131, v134, v101, v96, BitDepthForPixelFormat, v148, v149, v141, v147, 1, v49, v30, v25);
  v132 = calc_ssd(v133, v136, v102, v130, BitDepthForPixelFormat, v137, v138, v141, v147, 2, v49, 0, 0);
  v103 = calc_ssd(v133 + BytesPerPixelForPixelFormat, v136, v102 + BytesPerPixelForPixelFormat, v130, BitDepthForPixelFormat, v137, v138, v141, v147, 2, v49, 0, 0);
  v104 = v148 * v149;
  v105 = v135 / v104;
  v106 = v103 / v104;
  v46 = v141;
  v107 = v132 / v104;
  if (v24)
  {
    OUTLINED_FUNCTION_3_30();
    do
    {
      if (v25)
      {
        do
        {
          OUTLINED_FUNCTION_5_23(v105, v106, v107, v108);
        }

        while (!v22);
      }

      OUTLINED_FUNCTION_2_31();
    }

    while (!v22);
  }

  v33 = (v107 + v106 + v105 * 6.0) * 0.125;
LABEL_104:
  if (!v46)
  {
    goto LABEL_119;
  }

  v34 = CVPixelBufferCreate(allocator, v25, v24, 0x72673366u, 0, &pixelBufferOut);
  v109 = pixelBufferOut;
  if (!v34)
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
    v111 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
    v112 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
    v113 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 2uLL);
    if (v24)
    {
      v114 = 0;
      v115 = 0;
      v116 = 4 * (BytesPerRowOfPlane >> 2);
      do
      {
        v117 = v25;
        v118 = v111;
        v119 = v112;
        v120 = v113;
        v121 = v114;
        if (v25)
        {
          do
          {
            v122 = v30[v121];
            *v118++ = v122;
            *v119++ = v122;
            *v120++ = v122;
            ++v121;
            --v117;
          }

          while (v117);
        }

        ++v115;
        v114 += v25;
        v113 = (v113 + v116);
        v112 = (v112 + v116);
        v111 = (v111 + v116);
      }

      while (v115 != v24);
    }

    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v109 = pixelBufferOut;
    if (v139)
    {
      v34 = 0;
      *v139 = pixelBufferOut;
      pixelBufferOut = 0;
LABEL_120:
      v31 = 1;
      v32 = 1;
      goto LABEL_121;
    }

    v34 = 0;
  }

  v14 = v142;
  a6 = v143;
  if (v109)
  {
    CFRelease(v109);
  }

  v31 = 1;
  v32 = 1;
LABEL_122:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  free(v30);
  if (a6)
  {
    *a6 = v33;
  }

  if (v32)
  {
    v125 = OUTLINED_FUNCTION_37();
    CVPixelBufferUnlockBaseAddress(v125, v126);
  }

  if (v31)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  return v34;
}

const __CFDictionary *_decodeAuxiliaryImageForIndexAsync_1(void *a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0)
  {
    v16 = a1[10];
    if (a3 < 0)
    {
LABEL_9:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_0();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    v16 = 0;
    if (a3 < 0)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= a3)
  {
    goto LABEL_9;
  }

  result = CMPhotoDecompressionContainerCheckForbiddenAuxOptions(theDict, 3);
  if (!result)
  {
    return _queueAsyncImageDecode_0(a1, 2, a2, a3, theDict, a5, a6, a7, a8);
  }

  return result;
}

uint64_t _getAuxiliaryImageGeometryForIndex_3(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, _DWORD *a7, uint64_t a8)
{
  if (a2)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950306, "<<<< CMPhotoDecompressionContainer+DICOM >>>>", 690, v8);
  }

  else
  {
    result = OUTLINED_FUNCTION_2_32(a1, 0, a3, a4, a5, a6, a7, a8, v14, v15);
    if (!result)
    {
      if (a5)
      {
        *a5 = *v16;
      }

      if (a6)
      {
        *a6 = v16[1];
      }

      result = 0;
      if (a7)
      {
        *a7 = 1;
      }
    }
  }

  return result;
}

uint64_t _getAuxiliaryImageTypeForIndex_3(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950306, "<<<< CMPhotoDecompressionContainer+DICOM >>>>", 720, v8);
  }

  else
  {
    result = OUTLINED_FUNCTION_2_32(a1, 0, a3, a4, a5, a6, a7, a8, v13, v14);
    if (!result)
    {
      if (a5)
      {
        *a5 = *(v15 + 20);
      }

      result = 0;
      if (a6)
      {
        *a6 = *(v15 + 24);
      }
    }
  }

  return result;
}

uint64_t _copyAuxiliaryColorSpaceForIndex_1(uint64_t a1, uint64_t a2, unint64_t a3, CGColorSpaceRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    result = OUTLINED_FUNCTION_2_32(a1, 0, a3, a4, a5, a6, a7, a8, v13, v14);
    if (a4 && !result)
    {
      v10 = *(v15 + 80);
      if (v10 && (v11 = CGColorSpaceCreateWithICCData(v10)) != 0)
      {
        v12 = v11;
        result = 0;
        *a4 = v12;
      }

      else
      {
        return 4294950303;
      }
    }
  }

  return result;
}

uint64_t _createOutputBufferAttributesForImageIndex_3(uint64_t a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 1;
  cf = 0;
  ImageGeometryForIndex = DicomGetImageGeometryForIndex(*(a1 + 112), 0, a2, &v18, &v19, &v17);
  if (ImageGeometryForIndex)
  {
    return ImageGeometryForIndex;
  }

  ImageGeometryForIndex = DicomGetPhotometricInterpretationForIndex(*(a1 + 112), 0, a2, 0, &v16);
  if (ImageGeometryForIndex)
  {
    return ImageGeometryForIndex;
  }

  ImageBitDepthForIndex = DicomGetImageBitDepthForIndex(*(a1 + 112), 0, a2, &cf);
  v10 = cf;
  if (!ImageBitDepthForIndex)
  {
    FigCFArrayGetIntAtIndex();
    ImageBitDepthForIndex = _createOutputBufferAttributesForImageGeometry_0(a1, a3, v18, v19, a4, v11, v12, v13);
    v10 = cf;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return ImageBitDepthForIndex;
}

uint64_t _createOutputBufferAttributesForAuxiliaryIndex_2(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, CFMutableDictionaryRef *a5)
{
  if (a2)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950306, "<<<< CMPhotoDecompressionContainer+DICOM >>>>", 936, v5);
  }

  else
  {
    v16 = 0;
    result = _getAuxiliaryImageStorageForIndex_0(a1, a3, &v16);
    if (!result)
    {
      v13 = *v16;
      v14 = v16[1];

      return _createOutputBufferAttributesForImageGeometry_0(a1, a4, v13, v14, a5, v10, v11, v12);
    }
  }

  return result;
}

uint64_t _copyDebugMetadataForIndex_1(uint64_t a1, uint64_t a2, CFIndex a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 96);
  if (v7)
  {
    Count = CFArrayGetCount(v7);
  }

  else
  {
    Count = 0;
  }

  result = 4294950303;
  if ((a3 & 0x8000000000000000) == 0 && Count > a3)
  {
    if (a5)
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v11 = CFRetain(ValueAtIndex);
      }

      else
      {
        v11 = 0;
      }

      result = 0;
      *a5 = v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _copyCustomMetadataForIndex_1(uint64_t a1, uint64_t a2, CFIndex a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 104);
  if (v7)
  {
    Count = CFArrayGetCount(v7);
  }

  else
  {
    Count = 0;
  }

  result = 4294950303;
  if ((a3 & 0x8000000000000000) == 0 && Count > a3)
  {
    if (a5)
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v11 = CFRetain(ValueAtIndex);
      }

      else
      {
        v11 = 0;
      }

      result = 0;
      *a5 = v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _copyDICOMItemPropertiesForIndex(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a4)
  {
    return 0;
  }

  v5 = DicomCopyImageProperties(*(a1 + 112), a3, a2, &cf);
  if (v5)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
  }

  return v5;
}

uint64_t _copyImageIsRGBForIndex_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 0;
  }

  result = DicomGetPhotometricInterpretationForIndex(*(a1 + 112), 0, a2, &v5, 0);
  if (!result)
  {
    if ((v5 - 1) > 0xC)
    {
      return 4294950303;
    }

    else
    {
      result = 0;
      *a3 = byte_1A5ABC82C[v5 - 1];
    }
  }

  return result;
}

uint64_t _copyColorSpaceForIndex_3(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v7 = 0;
  if (!a3)
  {
    return 0;
  }

  v4 = DicomCopyColorSpaceAndICCProfile(*(a1 + 112), 0, a2, &v7, &cf);
  if (v4)
  {
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    *a3 = v7;
    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t _createImageForIndexInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_11_18(a1, a2, a3, a4, a5, a6, a7, a8, v32, v35);
  v39 = 0;
  cf = 0;
  v38 = 0;
  if (a4 && OUTLINED_FUNCTION_5_24())
  {
    goto LABEL_18;
  }

  ImageGeometryForIndex = DicomGetImageGeometryForIndex(*(v8 + 112), 0, v9, &v38, &v39, 0);
  if (ImageGeometryForIndex || (ImageGeometryForIndex = CMPhotoDecompressionContainerParseOptions(v8, a3, v38, v39, v41), ImageGeometryForIndex) || (ImageGeometryForIndex = OUTLINED_FUNCTION_6_25(ImageGeometryForIndex, v13, v14, v15, v16, v17, v18, v19, v33, v36, SWORD2(v36), SBYTE6(v36), SHIBYTE(v36)), ImageGeometryForIndex))
  {
LABEL_20:
    v30 = ImageGeometryForIndex;
    goto LABEL_15;
  }

  if (!HIBYTE(v37))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    ImageGeometryForIndex = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v37, v38);
    goto LABEL_20;
  }

  ImageGeometryForIndex = _verifyOptions(v41, &v38);
  if (ImageGeometryForIndex)
  {
    goto LABEL_20;
  }

  v20 = OUTLINED_FUNCTION_8_21();
  ImageGeometryForIndex = DicomDecodeImageForIndex(v20, v21, a3, v9, v22, &cf);
  if (ImageGeometryForIndex)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    LODWORD(ImageGeometryForIndex) = OUTLINED_FUNCTION_5_24();
    if (ImageGeometryForIndex)
    {
LABEL_18:
      v30 = 4294950191;
      goto LABEL_15;
    }
  }

  v29 = OUTLINED_FUNCTION_12_19(ImageGeometryForIndex, cf, v23, v24, v25, v26, v27, v28, v34, v37, v38, v39, cf);
  v30 = v29;
  if (a4 && !v29)
  {
    if (!OUTLINED_FUNCTION_5_24())
    {
      v30 = 0;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v30;
}

uint64_t _verifyOptions(uint64_t a1, void *a2)
{
  result = 4294950306;
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 88);
      if (result)
      {
        OUTLINED_FUNCTION_31();
        CMPhotoGetPixelBufferCLAP(v5, v6, v7, v8, v9);
        if (*a2 || a2[1])
        {
          goto LABEL_11;
        }

        if (*(a1 + 105))
        {
          result = CVPixelBufferGetIOSurface(*(a1 + 88));
          if (result)
          {
LABEL_11:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v10);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _createFinalOutputForBuffer(uint64_t *a1, CVPixelBufferRef pixelBuffer, uint64_t a3, int a4, CGImageRef *a5)
{
  DictionaryRepresentation = 0;
  v30 = 0;
  cf = 0;
  v7 = 4294950306;
  if (!a1)
  {
    PixelFormatType = 0;
    goto LABEL_27;
  }

  v8 = pixelBuffer;
  PixelFormatType = 0;
  if (!pixelBuffer)
  {
    goto LABEL_27;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v29 = 0;
  CMPhotoGetPixelBufferCLAPAsRect(v8);
  v27 = vcvtad_u64_f64(v13);
  v28 = vcvtad_u64_f64(v14);
  CMPhotoPixelBufferConstrainSizeToMaxSideLength(v27, v28, *(a3 + 56), v27, v28, *(a3 + 64), *(a3 + 70), &v27, &v29, 0);
  v15 = *(a3 + 8);
  if (v15)
  {
    v15 = PixelFormatType != *(a3 + 4);
  }

  if ((v29 || *(a3 + 88) != 0) | v15)
  {
    if (CMPhotoPixelFormatContainsRGB(PixelFormatType) && !CMPhotoPixelFormatContainsRGB(*(a3 + 4)))
    {
      v16 = 0;
      v22 = *(a3 + 4);
      if (((v22 - 1278226488) > 0x30 || ((1 << (v22 - 56)) & 0x1400000000001) == 0) && ((v22 - 1278226736) > 6 || ((1 << (v22 - 48)) & 0x45) == 0))
      {
        v23 = v22 == 1717855600 || v22 == 1717856627;
        v24 = v23 || v22 == 1751410032;
        if (!v24 && v22 != 1751411059)
        {
          v16 = 1;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, *(a3 + 1), *(a3 + 66), *(a3 + 67), *(a3 + 68));
    PixelFormatType = ScaleAndRotateOptionsWithHWIfNeeded;
    if (!ScaleAndRotateOptionsWithHWIfNeeded)
    {
      DictionaryRepresentation = 0;
      v7 = 4294950305;
      goto LABEL_27;
    }

    if (*(a3 + 3))
    {
      CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"PreferLowMemory", *(a3 + 3));
    }

    CMPhotoCFDictionarySetBoolean(PixelFormatType, @"DestinationBackedByIOSurface", *(a3 + 105) == 0);
    CMPhotoCFDictionarySetInt(PixelFormatType, @"SourceExifOrientation", 1);
    CMPhotoCFDictionarySetInt(PixelFormatType, @"DestinationPixelFormat", *(a3 + 4));
    CMPhotoCFDictionarySetBoolean(PixelFormatType, @"ExactDimensions", 1);
    if (v29)
    {
      CMPhotoCFDictionarySetSize(PixelFormatType, @"DestinationMaxSideLength", *(a3 + 56));
      CMPhotoCFDictionarySetBoolean(PixelFormatType, @"AllowMaxPixelScaleUpscale", *(a3 + 64));
    }

    if (v16)
    {
      DictionaryRepresentation = CMPhotoColorTripletCreateDictionaryRepresentation(0, 1);
      if (DictionaryRepresentation)
      {
        CFDictionarySetValue(PixelFormatType, @"DestinationColorTripletDictionary", DictionaryRepresentation);
      }
    }

    else
    {
      DictionaryRepresentation = 0;
    }

    WrappedPixelBufferForType = CMPhotoDecompressionSessionCopyScaler(a1[2], &cf);
    if (WrappedPixelBufferForType)
    {
      goto LABEL_26;
    }

    v19 = *(a3 + 88);
    if (v19)
    {
      v30 = CFRetain(v19);
    }

    WrappedPixelBufferForType = CMPhotoScaleAndRotateSessionTransformImage(cf, v8, PixelFormatType, &v30);
    if (WrappedPixelBufferForType)
    {
      goto LABEL_26;
    }

    v8 = v30;
  }

  else
  {
    OUTLINED_FUNCTION_10_21();
  }

  if (a5)
  {
    v20 = CFGetAllocator(a1);
    WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(v20, v8, *(a3 + 104), a4, a5);
LABEL_26:
    v7 = WrappedPixelBufferForType;
    goto LABEL_27;
  }

  v7 = 0;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (PixelFormatType)
  {
    CFRelease(PixelFormatType);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (a1)
  {
    v26 = 0;
    if (!CMPhotoDecompressionSessionCopySurfacePool(a1[2], &v26))
    {
      CMPhotoSurfacePoolMarkCachesVolatile(v26, 0);
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }

  return v7;
}

uint64_t _createAuxiliaryImageForIndexInternal(uint64_t a1, uint64_t a2, unint64_t a3, const __CFDictionary *a4, uint64_t a5)
{
  v42 = 0;
  v43 = 0;
  bzero(v38, 0x98uLL);
  v36 = 0;
  v37 = 0;
  if (a5 && OUTLINED_FUNCTION_5_24())
  {
    goto LABEL_34;
  }

  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    AuxiliaryImageStorageForIndex_0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_37;
  }

  v35 = 0;
  AuxiliaryImageStorageForIndex_0 = _getAuxiliaryImageStorageForIndex_0(a1, a3, &v35);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_37;
  }

  AuxiliaryImageStorageForIndex_0 = _getAuxiliaryImageGeometryForIndex_3(a1, 0, a3, v11, &v36, &v37, 0, v12);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_37;
  }

  AuxiliaryImageStorageForIndex_0 = CMPhotoDecompressionContainerParseOptions(a1, a4, v36, v37, v38);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_37;
  }

  if (!v40 && *(v35 + 24))
  {
    v39 = *(v35 + 24);
  }

  AuxiliaryImageStorageForIndex_0 = OUTLINED_FUNCTION_6_25(AuxiliaryImageStorageForIndex_0, v13, v14, v15, v16, v17, v18, v19, v33, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_37;
  }

  if (!HIBYTE(v34))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    AuxiliaryImageStorageForIndex_0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_37;
  }

  AuxiliaryImageStorageForIndex_0 = _verifyOptions(v38, &v36);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_37;
  }

  AuxiliaryImageStorageForIndex_0 = CMPhotoDecompressionContainerCheckForbiddenAuxOptions(a4, 3);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_37;
  }

  v20 = OUTLINED_FUNCTION_8_21();
  AuxiliaryImageStorageForIndex_0 = DicomDecodeAuxiliaryImageForIndex(v20, v21, a4, a3, v22, &v43);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_37;
  }

  if (a5 && OUTLINED_FUNCTION_5_24())
  {
    goto LABEL_34;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v43);
  if (PixelFormatType == v39)
  {
    goto LABEL_23;
  }

  AuxiliaryImageStorageForIndex_0 = CMPhotoDecompressionSessionCopySurfacePool(*(a1 + 16), &v42);
  if (AuxiliaryImageStorageForIndex_0 || (v33 = 0, AuxiliaryImageStorageForIndex_0 = CMPhotoCreateFractionalPixelBuffer(v43, v42, v39, v41, *(v35 + 48), &v33), AuxiliaryImageStorageForIndex_0))
  {
LABEL_37:
    v31 = AuxiliaryImageStorageForIndex_0;
    goto LABEL_29;
  }

  PixelFormatType = v43;
  if (v43)
  {
    CFRelease(v43);
  }

  v43 = v33;
LABEL_23:
  if (a5)
  {
    PixelFormatType = OUTLINED_FUNCTION_5_24();
    if (PixelFormatType)
    {
LABEL_34:
      v31 = 4294950191;
      goto LABEL_29;
    }
  }

  v30 = OUTLINED_FUNCTION_12_19(PixelFormatType, v43, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, v37);
  v31 = v30;
  if (a5 && !v30)
  {
    if (!OUTLINED_FUNCTION_5_24())
    {
      v31 = 0;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_29:
  if (v43)
  {
    CFRelease(v43);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v31;
}

uint64_t _createOutputBufferAttributesForImageGeometry_0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, CFMutableDictionaryRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_11_18(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20);
  v21 = a3;
  v22 = a4;
  if (!a5)
  {
    return 0;
  }

  v13 = CMPhotoDecompressionContainerParseOptions(v8, v9, a3, a4, v23);
  if (v13)
  {
    return v13;
  }

  CMPhotoPixelBufferConstrainSizeToMaxSideLength(a3, a4, v24, a3, a4, v25, v26, &v21, 0, 0);
  Mutable = CFDictionaryCreateMutable(*(v8 + 40), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v15 = Mutable;
  v16 = CMPhotoCFDictionarySetSize(Mutable, *MEMORY[0x1E6966208], v21);
  if (v16 || (v16 = CMPhotoCFDictionarySetSize(v15, *MEMORY[0x1E69660B8], v22), v16))
  {
    v17 = v16;
    goto LABEL_10;
  }

  v17 = CMPhotoCFDictionarySetSize(v15, *MEMORY[0x1E6966020], 16);
  if (v17)
  {
LABEL_10:
    CFRelease(v15);
    return v17;
  }

  *a5 = v15;
  return v17;
}

uint64_t _copyAuxiliaryImageTypeInfoForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _copyAuxiliaryImageMetadataForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoDecompressionSessionSetSurfacePool(os_unfair_lock_s *a1, const void *a2)
{
  OUTLINED_FUNCTION_1_29(a1);
  v4 = *(v2 + 272);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *(v2 + 272) = v5;
  v6 = *(v2 + 280);
  if (v6)
  {
    goto LABEL_9;
  }

  v7 = CFGetAllocator(v2);
  v8 = CMPhotoScaleAndRotateSessionCreate(v7, 0, (v2 + 280));
  if (!v8)
  {
    v6 = *(v2 + 280);
LABEL_9:
    v8 = CMPhotoScaleAndRotateSessionSetSurfacePool(v6, a2);
  }

  v9 = v8;
  os_unfair_lock_unlock((v2 + 16));
  return v9;
}

uint64_t CMPhotoDecompressionSessionCopySequenceCodecPool(os_unfair_lock_s *a1, void *a2)
{
  v3 = 4294950306;
  if (!a1 || !a2)
  {
    return v3;
  }

  OUTLINED_FUNCTION_1_29(a1);
  v5 = *(v2 + 296);
  if (v5)
  {
    v6 = 0;
LABEL_10:
    v11 = CFRetain(v5);
    goto LABEL_11;
  }

  v7 = CFGetAllocator(v2);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
    goto LABEL_16;
  }

  v9 = CMPhotoCFDictionarySetInt(Mutable, @"MaxSimultaneousDecompressionSessions", 3);
  if (v9 || (v9 = CMPhotoCFDictionarySetInt64(v6, @"IdleTimeoutMilliseconds", 0), v9) || (v10 = CFGetAllocator(v2), v9 = CMPhotoCodecSessionPoolCreate(v10, v6, (v2 + 296)), v9))
  {
LABEL_16:
    v3 = v9;
    os_unfair_lock_unlock((v2 + 16));
    if (!v6)
    {
      return v3;
    }

    goto LABEL_12;
  }

  v5 = *(v2 + 296);
  if (v5)
  {
    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:
  os_unfair_lock_unlock((v2 + 16));
  v3 = 0;
  *a2 = v11;
  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

  return v3;
}

uint64_t CMPhotoDecompressionSessionReserveRequestID(uint64_t a1, void *a2)
{
  result = 4294950306;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = atomic_fetch_add_explicit((a1 + 24), 1uLL, memory_order_relaxed) + 1;
    }
  }

  return result;
}

uint64_t CMPhotoDecompressionSessionReleaseHardwareResources(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  result = CMPhotoCodecSessionPoolFlush(*(a1 + 288), 2);
  if (!result)
  {
    result = *(a1 + 296);
    if (result)
    {

      return CMPhotoCodecSessionPoolFlush(result, 2);
    }
  }

  return result;
}

CFMutableStringRef CMPhotoDecompressionSession_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v5 = Mutable;
  if (Mutable)
  {
    OUTLINED_FUNCTION_0_34(Mutable, v4, @"<CMPhotoDecompressionSession %p> {\n");
    os_unfair_lock_lock((a1 + 16));
    Default = *(a1 + 288);
    if ((Default || (Default = CMPhotoCodecSessionPoolGetDefault()) != 0) && (v7 = CFCopyDescription(Default)) != 0 && ((v9 = v7, OUTLINED_FUNCTION_0_34(v7, v8, @"\tCodecPool: {\n%@\n}\n"), CFRelease(v9), (v10 = *(a1 + 272)) != 0) || (v10 = CMPhotoSurfacePoolGetDefault()) != 0) && (v11 = CFCopyDescription(v10)) != 0)
    {
      v13 = v11;
      OUTLINED_FUNCTION_0_34(v11, v12, @"\tSurfacePool: {\n%@\n}\n");
      os_unfair_lock_unlock((a1 + 16));
      OUTLINED_FUNCTION_0_34(v14, v15, @"}");
      CFRelease(v13);
    }

    else
    {
      os_unfair_lock_unlock((a1 + 16));
    }
  }

  return v5;
}

uint64_t CMPhotoDecompressionSessionCreateAsyncRequest_cold_1()
{
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950305, "<<<< CMPhotoDecompressionSession >>>>", 669, v0);
}

uint64_t CMPhotoDecompressionSessionCreateAsyncRequest_cold_2()
{
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950305, "<<<< CMPhotoDecompressionSession >>>>", 666, v0);
}

uint64_t CMPhotoGetCropPreOrientation(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return 4294950306;
  }

  if (a4 == 1)
  {
    goto LABEL_19;
  }

  result = OUTLINED_FUNCTION_5_25(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28);
  if (result)
  {
    return result;
  }

  v13 = *a3;
  v14 = a3[1];
  v25 = v14;
  v26 = v13;
  v15 = a3[2];
  v16 = a3[3];
  if (v27)
  {
    if (v27 != 1)
    {
      goto LABEL_9;
    }

    v17 = &v26;
    v18 = a3[2];
    v19 = a1;
  }

  else
  {
    v17 = &v25;
    v13 = v14;
    v18 = a3[3];
    v19 = a2;
  }

  *v17 = v19 - (v18 + v13);
  v14 = v25;
  v13 = v26;
LABEL_9:
  v20 = v28 % 360;
  if (v28 % 360 == 270)
  {
    v13 = a1 - (v15 + v13);
    v21 = v14;
    goto LABEL_15;
  }

  if (v20 == 180)
  {
    v21 = a1 - (v15 + v13);
    v13 = a2 - (v16 + v14);
LABEL_17:
    v22 = v15;
    v15 = v16;
    goto LABEL_18;
  }

  if (v20 != 90)
  {
    v21 = v13;
    v13 = v14;
    goto LABEL_17;
  }

  v21 = a2 - (v16 + v14);
LABEL_15:
  v22 = v16;
LABEL_18:
  *a3 = v21;
  a3[1] = v13;
  a3[2] = v22;
  a3[3] = v15;
LABEL_19:
  result = 0;
  v23 = *(a3 + 1);
  *a5 = *a3;
  a5[1] = v23;
  return result;
}

uint64_t CMPhotoGetCropPostOrientation(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return 4294950306;
  }

  if (a4 == 1)
  {
    goto LABEL_22;
  }

  v10 = a2;
  v11 = a1;
  result = OUTLINED_FUNCTION_5_25(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28);
  if (result)
  {
    return result;
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v16 = a3[3];
  v17 = (360 - v28) % 360;
  if (v17 == 270)
  {
    v13 = v11 - (v13 + v15);
    v18 = a3[1];
    goto LABEL_10;
  }

  if (v17 == 180)
  {
    v18 = v11 - (v13 + v15);
    v13 = v10 - (v14 + v16);
LABEL_12:
    v19 = a3[2];
    v15 = a3[3];
    goto LABEL_13;
  }

  if (v17 != 90)
  {
    v18 = *a3;
    v13 = a3[1];
    goto LABEL_12;
  }

  v18 = v10 - (v14 + v16);
LABEL_10:
  v19 = a3[3];
LABEL_13:
  if (v28 == 270 || v28 == 90)
  {
    v20 = v11;
    v11 = v10;
    v10 = v20;
  }

  v25 = v13;
  v26 = v18;
  if (!v27)
  {
    v21 = &v25;
    v18 = v13;
    v22 = v15;
    v11 = v10;
    goto LABEL_20;
  }

  if (v27 == 1)
  {
    v21 = &v26;
    v22 = v19;
LABEL_20:
    *v21 = v11 - v22 - v18;
    v13 = v25;
    v18 = v26;
  }

  *a3 = v18;
  a3[1] = v13;
  a3[2] = v19;
  a3[3] = v15;
LABEL_22:
  result = 0;
  v23 = *(a3 + 1);
  *a5 = *a3;
  a5[1] = v23;
  return result;
}

uint64_t CMPhotoTranslateAndScalePreOrientationCrop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8, char a9)
{
  if (!a8)
  {
    return 4294950306;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0uLL;
  v53.i64[0] = a1;
  v53.i64[1] = a2;
  result = CMPhotoGetCropPostOrientation(a1, a2, v52.i64, a4, &v54, a6, a7, a8);
  if (!result)
  {
    v47 = v55;
    v52 = 0uLL;
    v53.i64[0] = a5;
    v53.i64[1] = a6;
    result = CMPhotoGetCropPostOrientation(a5, a6, v52.i64, a7, &v54, v18, v19, v20);
    if (!result)
    {
      v46 = v55;
      v24 = *(a3 + 16);
      v50 = *a3;
      v51 = v24;
      v25 = *(a3 + 16);
      v52 = *a3;
      v53 = v25;
      result = CMPhotoGetCropPostOrientation(a1, a2, v52.i64, a4, &v50, v21, v22, v23);
      if (!result)
      {
        v29 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(v46)), vcvt_f32_f64(vcvtq_f64_u64(v47)));
        v30 = vcvtq_f64_f32(v29);
        v31 = v50;
        v32 = v51;
        v34 = v29.f32[1] == 1.0 && v29.f32[0] == 1.0;
        if (a9)
        {
          if (!v34)
          {
            __asm { FMOV            V3.2D, #0.5 }

            v31 = vcvtq_n_u64_f64(vrndaq_f64(vmulq_f64(vmulq_f64(v30, vcvtq_f64_u64(v50)), _Q3)), 1uLL);
            v32 = vcvtq_n_u64_f64(vrndaq_f64(vmulq_f64(vmulq_f64(v30, vcvtq_f64_u64(v51)), _Q3)), 1uLL);
          }
        }

        else if (!v34)
        {
          v31 = vcvtq_u64_f64(vrndaq_f64(vmulq_f64(v30, vcvtq_f64_u64(v50))));
          v32 = vcvtq_u64_f64(vrndaq_f64(vmulq_f64(v30, vcvtq_f64_u64(v51))));
        }

        v39 = vaddq_s64(v31, v32);
        v40 = vbslq_s8(vcgtq_u64(v46, v39), v39, v46);
        v41 = vmovn_s64(vcgtq_u64(v40, v31));
        v42 = vsubq_s64(v40, v31);
        if (v41.i8[0] & v41.i8[4])
        {
          v43 = -1;
        }

        else
        {
          v43 = 0;
        }

        v44 = vdupq_n_s64(v43);
        v48 = 0u;
        v49 = 0u;
        v52 = vandq_s8(v31, v44);
        v53 = vandq_s8(v42, v44);
        result = CMPhotoGetCropPreOrientation(v46.i64[0], v46.i64[1], v52.i64, a7, &v48, v26, v27, v28);
        if (!result)
        {
          v45 = v49;
          *a8 = v48;
          a8[1] = v45;
        }
      }
    }
  }

  return result;
}

uint64_t CMPhotoPictureReaderCopyByteStreamForFirstTile(uint64_t a1, void *a2, void *a3)
{
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  cf = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

  ContiguousBufferFromChunks = v6(a1, &v23);
  if (!ContiguousBufferFromChunks)
  {
    v8 = v23;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v9)
    {
      goto LABEL_11;
    }

    ContiguousBufferFromChunks = v9(v8, &v22);
    if (!ContiguousBufferFromChunks)
    {
      v10 = v22;
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v11)
      {
        ContiguousBufferFromChunks = v11(v10, &v21, &v20, &v19, &cf, 0);
        if (!ContiguousBufferFromChunks)
        {
          if (v21 == 1 && cf)
          {
            v12 = CFRetain(cf);
            v13 = *v20;
LABEL_10:
            v14 = 0;
            *a2 = v12;
            v17 = 0;
            *a3 = v13;
            goto LABEL_12;
          }

          ContiguousBufferFromChunks = _createContiguousBufferFromChunks(*MEMORY[0x1E695E480], v21, v20, v19, cf, 1, 0, 0, 0, &v16);
          if (!ContiguousBufferFromChunks)
          {
            ContiguousBufferFromChunks = FigByteStreamCreateWithCFData();
            if (!ContiguousBufferFromChunks)
            {
              v13 = 0;
              v12 = v17;
              goto LABEL_10;
            }
          }
        }

        goto LABEL_26;
      }

LABEL_11:
      v14 = 4294954514;
      goto LABEL_12;
    }
  }

LABEL_26:
  v14 = ContiguousBufferFromChunks;
LABEL_12:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  free(v20);
  free(v19);
  return v14;
}

uint64_t CMPhotoPictureReaderCopyImageBitDepthForJPEG(uint64_t a1, CFMutableArrayRef *a2)
{
  v15 = 0;
  v13 = 0;
  v14 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v5 = Mutable;
  appended = CMPhotoPictureReaderCopyByteStreamForFirstTile(a1, &v14, &v13);
  v7 = v14;
  if (!appended)
  {
    OUTLINED_FUNCTION_4_25();
    if (!appended)
    {
      v8 = 0;
      v9 = v15;
      while (1)
      {
        appended = FigCFArrayAppendInt();
        if (appended)
        {
          break;
        }

        if (v9 == 6 || v8++ > 1)
        {
          v11 = 0;
          if (!a2)
          {
            goto LABEL_15;
          }

          *a2 = v5;
          if (v7)
          {
            goto LABEL_16;
          }

          return v11;
        }
      }
    }
  }

  v11 = appended;
LABEL_15:
  CFRelease(v5);
  if (v7)
  {
LABEL_16:
    CFRelease(v7);
  }

  return v11;
}

uint64_t CMPhotoPictureReaderGetYUVPixelFormatForJPEG(uint64_t a1, int *a2)
{
  cf = 0;
  v8 = 0;
  if (!a2)
  {
    return 0;
  }

  if (a1)
  {
    YUVPixelFormatForParameters = CMPhotoPictureReaderCopyByteStreamForFirstTile(a1, &cf, &v8);
    v4 = cf;
    if (!YUVPixelFormatForParameters)
    {
      OUTLINED_FUNCTION_4_25();
      if (!YUVPixelFormatForParameters)
      {
        YUVPixelFormatForParameters = CMPhotoGetYUVPixelFormatForParameters(0, 0, 1, 0, 0, 0, 1, a2);
      }
    }

    v5 = YUVPixelFormatForParameters;
    if (v4)
    {
      CFRelease(v4);
    }

    return v5;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t CMPhotoPictureReaderCopyBaseReaderAndPropertiesForDerivedPicture(const void *a1, void *a2, uint64x2_t *a3, _DWORD *a4)
{
  v78 = 0;
  v79[0] = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0;
  v73 = 0;
  v71 = 0uLL;
  v70 = 1;
  ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(a1, 0, &v76, &v72);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_45;
  }

  v9 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = *MEMORY[0x1E6972368];
  ImageGeometryFromPictureReader = v11(FigBaseObject, *MEMORY[0x1E6972368], v9, &v78);
  if (ImageGeometryFromPictureReader)
  {
    v13 = ImageGeometryFromPictureReader == -12783;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    goto LABEL_45;
  }

  if (v78)
  {
    Int = CMPhotoCFNumberGetInt(v78);
    if (Int % 90)
    {
      goto LABEL_99;
    }

    v15 = Int;
    if (v78)
    {
      CFRelease(v78);
      v78 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = CFGetAllocator(a1);
  v17 = FigPictureReaderGetFigBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
LABEL_36:
    v32 = 0;
    v21 = 4294954514;
    goto LABEL_37;
  }

  v19 = *MEMORY[0x1E6972338];
  v20 = v18(v17, *MEMORY[0x1E6972338], v16, &v78);
  if (v20)
  {
    v21 = v20;
    if (v20 != -12783)
    {
      goto LABEL_46;
    }
  }

  if (!v78)
  {
    v23 = -1;
    goto LABEL_21;
  }

  v22 = CMPhotoCFNumberGetInt(v78);
  if (v22 > 1)
  {
LABEL_99:
    v32 = 0;
LABEL_100:
    v21 = 4294950195;
    goto LABEL_37;
  }

  v23 = v22;
  if (v78)
  {
    CFRelease(v78);
    v78 = 0;
  }

LABEL_21:
  v24 = CFGetAllocator(a1);
  v25 = FigPictureReaderGetFigBaseObject();
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v26)
  {
    goto LABEL_36;
  }

  ImageGeometryFromPictureReader = v26(v25, *MEMORY[0x1E69722C8], v24, v79);
  if (ImageGeometryFromPictureReader)
  {
LABEL_45:
    v21 = ImageGeometryFromPictureReader;
LABEL_46:
    v32 = 0;
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(v79[0], *MEMORY[0x1E69722E0]);
  if (!Value || (v28 = Value, v29 = CFGetTypeID(Value), v29 != CFArrayGetTypeID()) || CFArrayGetCount(v28) != 1 || (ValueAtIndex = CFArrayGetValueAtIndex(v28, 0)) == 0 || (v31 = CFRetain(ValueAtIndex)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    ImageGeometryFromPictureReader = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_45;
  }

  v32 = v31;
  v33 = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v31, 0, 0, &v71);
  if (v33)
  {
LABEL_104:
    v21 = v33;
    goto LABEL_37;
  }

  v75 = v71;
  v34 = CFDictionaryGetValue(v79[0], *MEMORY[0x1E69722D8]);
  if (!v34)
  {
    v43 = 0;
    v45 = -1;
    v46 = v75.i64[0];
LABEL_58:
    if (v46 != v72)
    {
      goto LABEL_100;
    }

    v48 = v75.i64[1];
    if (v75.i64[1] != v73)
    {
      goto LABEL_100;
    }

    goto LABEL_60;
  }

  v35 = v34;
  v67 = v23;
  v36 = CFGetTypeID(v34);
  if (v36 != CFDictionaryGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    v33 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, LODWORD(v68[0]));
    goto LABEL_104;
  }

  v37 = CFDictionaryGetValue(v35, *MEMORY[0x1E6965D70]);
  if (v37)
  {
    v38.f64[0] = CMPhotoGetCropRectFromCLAPDict(v37, v71.u64[0], v71.u64[1]);
    v38.f64[1] = v39;
    v41.f64[1] = v40;
    v74 = vcvtq_u64_f64(vrndaq_f64(v38));
    v75 = vcvtq_u64_f64(vrndaq_f64(v41));
  }

  v42 = CFDictionaryGetValue(v35, v12);
  v23 = v67;
  if (v42)
  {
    v43 = CMPhotoCFNumberGetInt(v42);
    if (v43 % 90)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v43 = 0;
  }

  v47 = CFDictionaryGetValue(v35, v19);
  if (v47)
  {
    v45 = CMPhotoCFNumberGetInt(v47);
    if (v45 > 1)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v45 = -1;
  }

  v48 = v75.i64[0];
  if (!(v43 % 180))
  {
    v46 = v75.i64[0];
    goto LABEL_58;
  }

  if (v75.i64[0] != v73)
  {
    goto LABEL_100;
  }

  v46 = v75.i64[1];
  if (v75.i64[1] != v72)
  {
    goto LABEL_100;
  }

LABEL_60:
  v49 = *(&v76 + 1);
  v51 = v76;
  v69 = v51 >> 64;
  v50 = v51;
  *&v68[0] = v76;
  v53 = *(&v77 + 1);
  v52 = v77;
  if (v45 == 1)
  {
    v54 = v68;
    v55 = v77;
    v56 = v46;
  }

  else
  {
    if (v45)
    {
      goto LABEL_65;
    }

    v54 = &v69;
    v50 = *(&v76 + 1);
    v55 = *(&v77 + 1);
    v56 = v48;
  }

  *v54 = v56 - (v55 + v50);
  v50 = *&v68[0];
  v49 = v69;
LABEL_65:
  v57 = v43 % 360;
  if (v43 % 360 == 270)
  {
    v50 = v46 - (v52 + v50);
    v58 = v49;
    goto LABEL_71;
  }

  if (v57 == 180)
  {
    v58 = v46 - (v52 + v50);
    v50 = v48 - (v53 + v49);
LABEL_73:
    v59 = v52;
    v52 = v53;
    goto LABEL_74;
  }

  if (v57 != 90)
  {
    v58 = v50;
    v50 = v49;
    goto LABEL_73;
  }

  v58 = v48 - (v53 + v49);
LABEL_71:
  v59 = v53;
LABEL_74:
  *&v76 = v58;
  *(&v76 + 1) = v50;
  *&v77 = v59;
  *(&v77 + 1) = v52;
  if (v45 != -1 && (v15 == 270 || v15 == 90))
  {
    if (v15 < 0xB4)
    {
      v60 = 180;
    }

    else
    {
      v60 = -180;
    }

    v15 += v60;
  }

  v68[0] = v76;
  v68[1] = v77;
  v33 = CMPhotoApplyCropCMPhotoRectToRect(&v74, v68);
  if (v33)
  {
    goto LABEL_104;
  }

  v61 = (v15 + v43) % 360;
  if (v23 == v45)
  {
    goto LABEL_91;
  }

  if (v23 == -1)
  {
    v62 = v45;
  }

  else
  {
    v62 = v23;
  }

  if (v23 != -1 && v45 != -1)
  {
    v61 = (v61 + 180) % 360;
LABEL_91:
    v62 = -1;
  }

  v33 = CMPhotoExifOrientationFromHEIFRotationCCWAndMirroring(v61, v62, &v70);
  if (v33)
  {
    goto LABEL_104;
  }

  if (a2)
  {
    *a2 = v32;
    v32 = 0;
  }

  if (a3)
  {
    v64 = v75;
    *a3 = v74;
    a3[1] = v64;
  }

  v21 = 0;
  if (a4)
  {
    *a4 = v70;
  }

LABEL_37:
  if (v79[0])
  {
    CFRelease(v79[0]);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  return v21;
}

uint64_t CMPhotoPictureReaderCopyBaseReader(uint64_t a1, int a2, void *a3)
{
  v26 = 0;
  theDict = 0;
  v24 = 0;
  cf = 0;
  if (a2 != 1735551332)
  {
    if (a2 != 1768187246 && a2 != 1953325424 && a2 != 1768912492)
    {
      ValueAtIndex = 0;
      if (!a3)
      {
LABEL_27:
        v21 = 0;
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    FigBaseObject = FigPictureReaderGetFigBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(FigBaseObject, *MEMORY[0x1E69722C8], *MEMORY[0x1E695E480], &theDict);
      if (!v10)
      {
        Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E69722E0]);
        if (!Value)
        {
          goto LABEL_42;
        }

        v12 = Value;
        v13 = CFGetTypeID(Value);
        if (v13 != CFArrayGetTypeID())
        {
          goto LABEL_42;
        }

        Count = CFArrayGetCount(v12);
        if (a2 == 1768187246)
        {
          if (Count != 1)
          {
LABEL_42:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_19();
            v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_43;
          }
        }

        else if (Count <= 0)
        {
          goto LABEL_42;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        v26 = ValueAtIndex;
        if (!a3)
        {
          goto LABEL_27;
        }

LABEL_32:
        v21 = 0;
        *a3 = ValueAtIndex;
        v26 = 0;
        goto LABEL_33;
      }

LABEL_43:
      v21 = v10;
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v15)
  {
    goto LABEL_25;
  }

  v10 = v15(a1, &cf);
  if (v10)
  {
    goto LABEL_43;
  }

  v16 = cf;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    goto LABEL_25;
  }

  v10 = v17(v16, &v24);
  if (v10)
  {
    goto LABEL_43;
  }

  CMBaseObject = FigPictureTileCursorGetCMBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
LABEL_25:
    v21 = 4294954514;
    goto LABEL_33;
  }

  v20 = v19(CMBaseObject, *MEMORY[0x1E69723A0], *MEMORY[0x1E695E480], &v26);
  v21 = v20;
  if (a3 && !v20)
  {
    ValueAtIndex = v26;
    goto LABEL_32;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v21;
}

uint64_t CMPhotoPictureReaderCopyFormatDescriptorFromReader(uint64_t a1, uint64_t a2, int a3, CMFormatDescriptionRef *a4)
{
  cf = 0;
  v22 = 0;
  desc = 0;
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9(FigBaseObject, *MEMORY[0x1E69722F8], a2, &desc);
  if (v10)
  {
    goto LABEL_26;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (!a3 || MediaSubType != 1735551332)
  {
    if (!a4)
    {
      v18 = 0;
      goto LABEL_16;
    }

LABEL_24:
    v18 = 0;
    *a4 = desc;
    desc = 0;
    goto LABEL_16;
  }

  if (desc)
  {
    CFRelease(desc);
    desc = 0;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
LABEL_15:
    v18 = 4294954514;
    goto LABEL_16;
  }

  v10 = v12(a1, &v22);
  if (v10)
  {
LABEL_26:
    v18 = v10;
    goto LABEL_16;
  }

  v13 = v22;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    goto LABEL_15;
  }

  v10 = v14(v13, &cf);
  if (v10)
  {
    goto LABEL_26;
  }

  CMBaseObject = FigPictureTileCursorGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16(CMBaseObject, *MEMORY[0x1E6972398], a2, &desc);
  v18 = v17;
  if (a4 && !v17)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (desc)
  {
    CFRelease(desc);
  }

  return v18;
}

uint64_t _readBytesFromChunks(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (*(a1 + 32) == 0)
  {
    v8 = **(a1 + 16);
    *(a1 + 40) = v8;
  }

  v9 = *(a1 + 48);
  if (v9 >= v8)
  {
    *(a1 + 32) = ++v7;
    if (v7 >= *a1)
    {
      return 4294950194;
    }

    v9 = 0;
    v8 = *(*(a1 + 16) + 8 * v7);
    *(a1 + 40) = v8;
    *(a1 + 48) = 0;
  }

  v10 = v8 - v9;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v10;
  }

  v17 = 0;
  v12 = *(a1 + 24);
  v13 = *(*(a1 + 8) + 8 * v7);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    return 4294954514;
  }

  result = v14(v12, v11, v13 + v9, a3, &v17);
  if (!result)
  {
    v16 = v17;
    *(a1 + 48) = vaddq_s64(*(a1 + 48), vdupq_n_s64(v17));
    result = 0;
    if (a4)
    {
      *a4 = v16;
    }
  }

  return result;
}

uint64_t _processCompressedData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t byteStreamWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v12 = 0;
  v9 = v8;
  do
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v10)
    {
      return 4294954514;
    }

    result = v10(a1, a3, v9, a2 + v9 - v8, &v12);
    if (result)
    {
      return result;
    }

    v9 += v12;
    a3 -= v12;
  }

  while (v12 && a3);
  if (a3)
  {
    return 4294954516;
  }

  result = 0;
  *a4 = v9;
  return result;
}

uint64_t CMPhotoJPEGAddMPDataToJPEG(__IOSurface *a1, CFIndex a2, IOSurfaceRef *a3, unsigned int *a4, signed int a5, CFMutableDictionaryRef *a6, CFIndex *a7)
{
  v11 = a2 + 16 * a5 + 74;
  if (a5 >= 1)
  {
    v12 = a3;
    v13 = a4;
    v14 = a5;
    do
    {
      if ((IOSurfaceGetPixelFormat(*v12) & 0xFFFFFFEF) == 0x34323066)
      {
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(*v12, 0);
        v16 = v11 + IOSurfaceGetHeightOfPlane(*v12, 0) * BytesPerRowOfPlane;
        v17 = IOSurfaceGetBytesPerRowOfPlane(*v12, 1uLL);
        v11 = v16 + IOSurfaceGetHeightOfPlane(*v12, 1uLL) * v17;
      }

      else
      {
        v11 += *v13;
      }

      v13 += 2;
      ++v12;
      --v14;
    }

    while (v14);
  }

  JPEGSurface = createJPEGSurface(v11);
  if (JPEGSurface)
  {
    WritableWithIOSurface = FigByteStreamCreateWritableWithIOSurface();
    if (WritableWithIOSurface)
    {
      v20 = WritableWithIOSurface;
    }

    else
    {
      v20 = CMPhotoJPEGWriteMPFWithJPEG(a1, a2, a3, a4, a5, 0);
      if (!v20)
      {
        *a6 = JPEGSurface;
        *a7 = v11;
        JPEGSurface = 0;
      }
    }
  }

  else
  {
    v20 = 4294954510;
  }

  if (JPEGSurface)
  {
    CFRelease(JPEGSurface);
  }

  return v20;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _openContainerWithModificationCallback(uint64_t a1, const __CFDictionary *a2, uint64_t a3, void *a4, CFMutableDictionaryRef *a5, uint64_t (*a6)(CFDictionaryRef, uint64_t), uint64_t a7)
{
  v59[4] = *MEMORY[0x1E69E9840];
  theDict = 0;
  v57 = 0;
  v13 = _parseContainer(a1, a2, a3, a4);
  if (v13)
  {
    return v13;
  }

  _handleStripping(a1, a2);
  v14 = _createDescriptionFromSession(a1, &v57);
  if (v14)
  {
    DescriptionFromSession = v14;
    v16 = v57;
    goto LABEL_58;
  }

  v15 = CFGetAllocator(a1);
  v16 = v57;
  v17 = CMPhotoPropertyListCopyWithMutableContainers(v15, v57, &theDict);
  if (v17 || (v17 = a6(theDict, a7), v17))
  {
LABEL_66:
    DescriptionFromSession = v17;
    goto LABEL_58;
  }

  if (!CMPhotoCompressionSessionCheckForIllegalModification(v16, theDict))
  {
    fig_log_get_emitter();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v51, v53);
    goto LABEL_66;
  }

  v59[0] = @"EXIFMetadata";
  v59[1] = @"XMPMetadata";
  v59[2] = @"DebugMetadata";
  v59[3] = @"CustomMetadata";
  v58[0] = a1 + 328;
  v58[1] = a1 + 336;
  v58[2] = a1 + 344;
  v58[3] = a1 + 352;
  Value = CFDictionaryGetValue(theDict, @"ImageList");
  if (!Value || (v19 = Value, CFArrayGetCount(Value) != 1) || (ValueAtIndex = CFArrayGetValueAtIndex(v19, 0)) == 0 || (v21 = ValueAtIndex, v22 = CFGetTypeID(ValueAtIndex), v22 != CFDictionaryGetTypeID()))
  {
    DescriptionFromSession = 4294950306;
    goto LABEL_58;
  }

  v54 = (a1 + 344);
  v52 = (a1 + 352);
  v55 = a5;
  v23 = 0;
  v24 = 1;
  while (2)
  {
    v25 = v23;
    while (1)
    {
      v26 = v58[v25];
      v27 = *v26;
      v28 = CFDictionaryGetValue(v21, v59[v25]);
      if (v28)
      {
        break;
      }

      if (v27)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (++v25 == 4)
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }
    }

    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 != CFArrayGetTypeID())
    {
      v36 = v55;
      goto LABEL_53;
    }

    if (!v27 || CFArrayGetCount(v29))
    {
      if (CFArrayGetCount(v29) >= 1)
      {
        v31 = OUTLINED_FUNCTION_37();
        v33 = CFArrayGetValueAtIndex(v31, v32);
        if (!FigCFEqual())
        {
          *(a1 + 376) = 1;
          if (*v26)
          {
            CFRelease(*v26);
          }

          if (v33)
          {
            v34 = CFRetain(v33);
          }

          else
          {
LABEL_28:
            v34 = 0;
          }

          goto LABEL_29;
        }
      }

      goto LABEL_20;
    }

LABEL_22:
    *(a1 + 376) = 1;
    v34 = *v26;
    if (*v26)
    {
      CFRelease(v34);
      goto LABEL_28;
    }

LABEL_29:
    v24 = 0;
    *v26 = v34;
    v23 = v25 + 1;
    if (v25 != 3)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v35 = *(a1 + 328) || *(a1 + 336) || *v54 || *v52 != 0;
  *(a1 + 320) = v35;
LABEL_37:
  v36 = v55;
  if (!*(a1 + 280))
  {
    goto LABEL_43;
  }

  v37 = CFDictionaryGetValue(v21, @"ThumbnailImage");
  if (!v37)
  {
LABEL_41:
    *(a1 + 376) = 1;
    v40 = *(a1 + 280);
    if (v40)
    {
      CFRelease(v40);
      *(a1 + 280) = 0;
    }

    goto LABEL_43;
  }

  v38 = v37;
  v39 = CFGetTypeID(v37);
  if (v39 == CFArrayGetTypeID())
  {
    if (!CFArrayGetCount(v38))
    {
      goto LABEL_41;
    }

LABEL_43:
    v41 = *(a1 + 312);
    if (v41 && CFArrayGetCount(v41) >= 1)
    {
      v42 = CFDictionaryGetValue(v21, @"Auxiliary");
      CMPhotoFilterCompressedAuxImageStorageArray(*(a1 + 312), v42);
      if (v17)
      {
        goto LABEL_66;
      }

      v43 = *(a1 + 312);
      if (v43)
      {
        if (!CFArrayGetCount(v43))
        {
          v44 = *(a1 + 312);
          if (v44)
          {
            CFRelease(v44);
            *(a1 + 312) = 0;
          }
        }
      }
    }

    goto LABEL_54;
  }

LABEL_53:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_14();
  v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v52, v54);
  if (v17)
  {
    goto LABEL_66;
  }

LABEL_54:
  v46 = OUTLINED_FUNCTION_27();
  v48 = _handleRewrite(v46, v47);
  DescriptionFromSession = v48;
  if (v36)
  {
    if (!v48)
    {
      v59[0] = 0;
      DescriptionFromSession = _createDescriptionFromSession(a1, v59);
      if (!DescriptionFromSession)
      {
        *v36 = v59[0];
      }
    }
  }

LABEL_58:
  if (v16)
  {
    CFRelease(v16);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return DescriptionFromSession;
}

uint64_t _closeContainerAndCopyBacking(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  OUTLINED_FUNCTION_54_0();
  v8 = v7;
  v9 = CFGetAllocator(v7);
  DataLength = 0;
  OUTLINED_FUNCTION_7_0();
  if (v12)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (!(a4 | *(v8 + 264)))
  {
LABEL_104:
    v21 = 0;
    goto LABEL_105;
  }

  if (!*(v8 + 376) && !*(v8 + 280))
  {
    v22 = *(v8 + 312);
    if ((!v22 || !CFArrayGetCount(v22)) && !*(v8 + 320) && !*(v8 + 288))
    {
      if (*(v8 + 304))
      {
        v23 = (v8 + 248);
        if (!*(v8 + 248))
        {
          v13 = *(v8 + 240);
          if (v13 != 4)
          {
            if (v13 == 2)
            {
              DataBuffer = CMSampleBufferGetDataBuffer(*(v8 + 264));
              if (DataBuffer)
              {
                v55 = DataBuffer;
                DataLength = CMBlockBufferGetDataLength(DataBuffer);
                *v23 = CFRetain(v55);
                goto LABEL_98;
              }

              v21 = 4294950304;
              goto LABEL_105;
            }

            if (v13 == 1)
            {
              v24 = OUTLINED_FUNCTION_14_16();
              WritableWithCFMutableData = CMPhotoDataCreateFromSampleBuffer(v24, v25, v26, (v8 + 248));
              if (!WritableWithCFMutableData)
              {
                DataLength = CFDataGetLength(*v23);
                goto LABEL_98;
              }

LABEL_23:
              v21 = WritableWithCFMutableData;
              goto LABEL_105;
            }

            goto LABEL_8;
          }

          theData = 0;
          WritableWithCFMutableData = CMPhotoSampleBufferCopyIOSurfaceBacking(*(v8 + 264), (v8 + 248), &theData, &DataLength);
          if (WritableWithCFMutableData)
          {
            goto LABEL_23;
          }

          if (*v23)
          {
LABEL_98:
            if (v5)
            {
              *v5 = *(v8 + 240);
            }

            if (v4)
            {
              *v4 = DataLength;
            }

            if (a4)
            {
              v21 = 0;
              *a4 = *(v8 + 248);
              *(v8 + 248) = 0;
              goto LABEL_105;
            }

            goto LABEL_104;
          }
        }
      }
    }
  }

  v13 = *(v8 + 240);
LABEL_8:
  switch(v13)
  {
    case 1:
      if (!*(v8 + 248))
      {
        Mutable = CFDataCreateMutable(v9, 0);
        *(v8 + 248) = Mutable;
        if (!Mutable)
        {
          v21 = 4294950305;
          goto LABEL_105;
        }
      }

      WritableWithCFMutableData = FigByteStreamCreateWritableWithCFMutableData();
      if (WritableWithCFMutableData)
      {
        goto LABEL_23;
      }

LABEL_58:
      cf = 0;
      theData = 0;
      v63 = 0;
      if (*(v8 + 376))
      {
        v38 = OUTLINED_FUNCTION_14_16();
      }

      else
      {
        v39 = *(v8 + 264);
        v40 = *(v8 + 304) == 0;
        p_theData = &theData;
        v38 = v9;
      }

      v21 = CMPhotoDataCreateFromSampleBuffer(v38, v39, v40, p_theData);
      if (v21)
      {
        MutableCopy = 0;
        goto LABEL_89;
      }

      if (*(v8 + 376) || *(v8 + 280) || *(v8 + 320) || *(v8 + 288) || (v49 = *(v8 + 312)) != 0 && CFArrayGetCount(v49))
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          v21 = 4294950305;
          goto LABEL_89;
        }

        v43 = *(v8 + 280);
        if (v43)
        {
          ImagePropertiesFromData = CMPhotoDataCreateFromSampleBuffer(v9, v43, *(v8 + 305) == 0, &cf);
          if (ImagePropertiesFromData)
          {
LABEL_80:
            v21 = ImagePropertiesFromData;
            goto LABEL_89;
          }
        }

        v45 = *(v8 + 288);
        if (v45)
        {
          CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696D320], v45);
        }

        v46 = *(v8 + 352);
        if (v46)
        {
          CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696DD60], v46);
        }

        v47 = *(v8 + 344);
        if (v47)
        {
          CFDictionarySetValue(MutableCopy, @"iOS_Debug", v47);
        }

        if (*(v8 + 328) == 0)
        {
          v48 = 0;
        }

        else
        {
          ImagePropertiesFromData = CMPhotoCreateImagePropertiesFromData(v9, 0, 0, *(v8 + 328), *(v8 + 336), 0, *(v8 + 288), &v63, 0);
          if (ImagePropertiesFromData)
          {
            goto LABEL_80;
          }

          v48 = v63;
        }

        ImagePropertiesFromData = CMPhotoJFIFUtilitiesMergeImageComponents(v9, 0, theData, cf, *(v8 + 312), MutableCopy, v48);
        if (ImagePropertiesFromData)
        {
          goto LABEL_80;
        }
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        ImagePropertiesFromData = CMByteStreamWrite(0, Length, BytePtr);
        MutableCopy = 0;
        if (ImagePropertiesFromData)
        {
          goto LABEL_80;
        }
      }

      v62 = 0;
      v52 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v52)
      {
        v21 = 4294954514;
        goto LABEL_89;
      }

      ImagePropertiesFromData = v52(0, 0, &v62);
      if (ImagePropertiesFromData)
      {
        goto LABEL_80;
      }

      if ((v62 & 0x8000000000000000) != 0)
      {
        v21 = 4294950190;
      }

      else
      {
        v21 = 0;
        DataLength = v62;
      }

LABEL_89:
      if (theData)
      {
        CFRelease(theData);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v63)
      {
        CFRelease(v63);
      }

      if (!v21)
      {
        goto LABEL_98;
      }

LABEL_105:
      _releaseAllContainerResources(v8);
      OUTLINED_FUNCTION_7_0();
      if (v12)
      {
        OUTLINED_FUNCTION_6();
        kdebug_trace();
      }

      return v21;
    case 2:
      if (!*(v8 + 248))
      {
        v18 = OUTLINED_FUNCTION_14_16();
        WritableWithCFMutableData = CMBlockBufferCreateEmpty(v18, v19, v20, (v8 + 248));
        if (WritableWithCFMutableData)
        {
          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_14_16();
      WritableWithCFMutableData = CMByteStreamCreateWritableForBlockBuffer();
      if (WritableWithCFMutableData)
      {
        goto LABEL_23;
      }

      goto LABEL_58;
    case 3:
      WritableWithCFMutableData = CMByteStreamCreateForFileURL();
      if (WritableWithCFMutableData)
      {
        goto LABEL_23;
      }

      goto LABEL_58;
    case 4:
      if (*(v8 + 248))
      {
        goto LABEL_57;
      }

      v16 = *(v8 + 264);
      if (v16)
      {
        v17 = CMSampleBufferGetSampleSize(v16, 0) + 0x10000;
      }

      else
      {
        v17 = 0x10000;
      }

      v60 = v17;
      v27 = *(v8 + 280);
      if (v27)
      {
        SampleSize = CMSampleBufferGetSampleSize(v27, 0);
      }

      else
      {
        SampleSize = 0;
      }

      v28 = 0;
      v29 = 0;
      while (1)
      {
        Count = *(v8 + 312);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v28 >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 312), v28);
        v29 += CMSampleBufferGetSampleSize(*ValueAtIndex, 0);
        ++v28;
      }

      v32 = *(v8 + 288);
      if (v32)
      {
        v33 = CFDataGetLength(v32);
      }

      else
      {
        v33 = 0;
      }

      v34 = *(v8 + 344);
      if (v34)
      {
        v35 = CFDataGetLength(v34);
      }

      else
      {
        v35 = 0;
      }

      v36 = *(v8 + 352);
      if (v36)
      {
        v36 = CFDataGetLength(v36);
      }

      if (*(v8 + 256) <= v36 + v35 + v60 + SampleSize + v29 + v33)
      {
        v37 = v36 + v35 + v60 + SampleSize + v29 + v33;
      }

      else
      {
        v37 = *(v8 + 256);
      }

      WritableWithCFMutableData = CMPhotoSurfacePoolCreateMemorySurface(@"SurfacePoolOneShot", v37, 1, (v8 + 248), v10, v11);
      if (!WritableWithCFMutableData)
      {
        IOSurfaceDecrementUseCount(*(v8 + 248));
LABEL_57:
        WritableWithCFMutableData = FigByteStreamCreateWritableWithIOSurface();
        if (!WritableWithCFMutableData)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_23;
    default:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3();
      WritableWithCFMutableData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, v57, v58);
      goto LABEL_23;
  }
}

uint64_t _addExif (uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef a4)
{
  v8 = CFGetAllocator(a1);
  if (a4)
  {
    a4 = CFRetain(a4);
  }

  if (a2 || !*(a1 + 264) || *(a1 + 328))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_28;
  }

  v17 = 0;
  Length = CFDataGetLength(a4);
  if (!a3 || !CMPhotoCFDictionaryGetInt32IfPresent())
  {
    v10 = CMPhotoExifDetectTIFFHeaderOffset(a4, &v17, &v17 + 1);
    if (!v10)
    {
      if (v17)
      {
        goto LABEL_12;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
      v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

LABEL_28:
    v15 = v10;
    goto LABEL_20;
  }

  if (Length <= HIDWORD(v17))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_28;
  }

  LOBYTE(v17) = 1;
LABEL_12:
  BytePtr = CFDataGetBytePtr(a4);
  if (!memcmp(BytePtr, "Exif", 6uLL))
  {
    if (!a4)
    {
      v14 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v14 = CFRetain(a4);
LABEL_19:
    v15 = 0;
    *(a1 + 328) = v14;
    *(a1 + 320) = 1;
    goto LABEL_20;
  }

  Mutable = CFDataCreateMutable(v8, 0);
  if (Mutable)
  {
    v13 = Mutable;
    CFDataAppendBytes(Mutable, "Exif", 6);
    CFDataAppendBytes(v13, &BytePtr[HIDWORD(v17)], Length - HIDWORD(v17));
    if (a4)
    {
      CFRelease(a4);
    }

    a4 = v13;
    goto LABEL_18;
  }

  v15 = 4294950305;
LABEL_20:
  if (a4)
  {
    CFRelease(a4);
  }

  return v15;
}

uint64_t _addAuxImageMetadata(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  OUTLINED_FUNCTION_54_0();
  v8 = v7;
  Count = *(v7 + 312);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if ((v5 & 0x8000000000000000) == 0 && Count > v5)
  {
    if (!v4)
    {
      return 4294950306;
    }

    v10 = CFGetTypeID(v4);
    if (v10 != CGImageMetadataGetTypeID())
    {
      return 4294950306;
    }

    if (!a4)
    {
      v12 = 0;
      goto LABEL_15;
    }

    Value = FigCFDictionaryGetValue();
    v12 = Value;
    if (!Value)
    {
LABEL_11:
      v14 = FigCFDictionaryGetValue();
      a4 = v14;
      if (v14)
      {
        v15 = CFGetTypeID(v14);
        if (v15 != CFDictionaryGetTypeID())
        {
          v16 = 4294950306;
LABEL_30:
          if (v12)
          {
            CFRelease(v12);
          }

          return v16;
        }
      }

LABEL_15:
      ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 312), v5);
      if (ValueAtIndex)
      {
        v18 = ValueAtIndex;
        if (!ValueAtIndex[2])
        {
          ValueAtIndex[2] = CFRetain(v4);
          v19 = v18[6];
          if (v19)
          {
            CFRelease(v19);
            v18[6] = 0;
          }

          if (a4)
          {
            v20 = CFRetain(a4);
          }

          else
          {
            v20 = 0;
          }

          v18[6] = v20;
          v21 = v18[5];
          if (v21)
          {
            CFRelease(v21);
          }

          v16 = 0;
          v18[5] = v12;
          return v16;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
      }

      else
      {
        v16 = 4294950304;
      }

      goto LABEL_30;
    }

    v13 = CFGetTypeID(Value);
    if (v13 != CGColorSpaceGetTypeID())
    {
      return 4294950306;
    }

    v12 = CGColorSpaceCopyICCData(v12);
    if (v12)
    {
      goto LABEL_11;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _addTmapImageOneShot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, int a7, const CGImageMetadata *a8, uint64_t *a9)
{
  v31 = 0;
  v32 = -1;
  if (a2 || !a5 || !a6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_36:
    v22 = v24;
    v19 = 0;
    MutableCopy = 0;
    goto LABEL_18;
  }

  ColorSpaceFromTriplets = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  CFValueIfPresent = CMPhotoCFDictionaryGetCFValueIfPresent();
  v13 = CMPhotoCFDictionaryGetCFValueIfPresent();
  v14 = CMPhotoCFDictionaryGetCFValueIfPresent();
  v15 = CMPhotoCFDictionaryGetCFValueIfPresent();
  if (CFValueIfPresent || !v13 || !v14 || !v15 || (ColorSpaceFromTriplets = CMPhotoCreateColorSpaceFromTriplets(v29, v28, v27, 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_14();
    v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_36;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v19 = 0;
    goto LABEL_33;
  }

  memset(v26, 0, sizeof(v26));
  v17 = CMPhotoParseFlexRangeMetadataDictionary(a6, v26);
  if (v17 || (v18 = CGColorSpaceUsesITUR_2100TF(ColorSpaceFromTriplets), v17 = CMPhotoCreateXMPMetadataFromMetadata(v26, !v18, &v31), v17))
  {
    v22 = v17;
    v19 = 0;
    goto LABEL_18;
  }

  if (a7)
  {
    v19 = CGImageMetadataCreateMutableCopy(v31);
    if (v19)
    {
      v20 = CMPhotoAddMeteorPlusGainMapMetadata(a8, v19);
      if (v20)
      {
        v22 = v20;
        goto LABEL_18;
      }

      if (v31)
      {
        CFRelease(v31);
      }

      v31 = v19;
      goto LABEL_15;
    }

LABEL_33:
    v22 = 4294950305;
    goto LABEL_18;
  }

LABEL_15:
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  CMPhotoCompressionSessionAddAuxiliaryImage(a1);
  v22 = v21;
  v19 = 0;
  if (a9 && !v21)
  {
    v19 = 0;
    *a9 = v32;
  }

LABEL_18:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v22;
}

uint64_t _parseContainer(uint64_t a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  AllocSize = 0;
  v87 = 0;
  v8 = CFGetAllocator(a1);
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v82 = 0;
  cf = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

  v9 = CFGetTypeID(a4);
  if (v9 == IOSurfaceGetTypeID() && !CMPhotoCFDictionaryGetSizeIfPresent(a2, @"BackingIOSurfaceSourceSize", &AllocSize))
  {
    AllocSize = IOSurfaceGetAllocSize(a4);
  }

  CMPhotoCFDictionaryGetBooleanIfPresent();
  if (!AllocSize)
  {
LABEL_6:
    v89[0] = 0;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v19 = 4294954514;
      goto LABEL_66;
    }

    v10 = OUTLINED_FUNCTION_17();
    ExifLocationFromJFIFByteStream = v11(v10);
    if (ExifLocationFromJFIFByteStream)
    {
      goto LABEL_84;
    }

    if ((v89[0] & 0x8000000000000000) != 0)
    {
      v19 = 4294950190;
      goto LABEL_66;
    }

    AllocSize = v89[0];
  }

  ExifLocationFromJFIFByteStream = _newContainer(a1, a2);
  if (ExifLocationFromJFIFByteStream)
  {
    goto LABEL_84;
  }

  v13 = OUTLINED_FUNCTION_17();
  CMPhotoCopyImageCountAndRangesFromJFIFByteStream(v13, v14, v15, v16, v17, v18);
  if (ExifLocationFromJFIFByteStream)
  {
    goto LABEL_84;
  }

  *(a1 + 384) = AllocSize;
  v20 = OUTLINED_FUNCTION_27();
  ExifLocationFromJFIFByteStream = CMPhotoSampleBufferCreateFromSource(v20, v21, 0, v22, v23, v24);
  if (ExifLocationFromJFIFByteStream)
  {
    goto LABEL_84;
  }

  if (v87 >= 2)
  {
    v25 = *MEMORY[0x1E695E498];
    v26 = 16;
    for (i = 1; i < v87; ++i)
    {
      if (v85)
      {
        CFRelease(v85);
        v85 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v78 = 0;
      v28 = OUTLINED_FUNCTION_27();
      ExifLocationFromJFIFByteStream = CMPhotoSampleBufferCreateFromSource(v28, v29, v30, v31, v32, v33);
      if (ExifLocationFromJFIFByteStream)
      {
        goto LABEL_84;
      }

      LODWORD(sampleSizeArray.isa) = 0;
      if (!CMPhotoJFIFUtilitiesCreateAuxiliaryPropertiesFromStream(v8, a3, *&v86[v26], &sampleSizeArray, 0, &cf, 0))
      {
        goto LABEL_35;
      }

      v89[0] = 0;
      OUTLINED_FUNCTION_6();
      CMPhotoGetImageInformationFromJFIFByteStream();
      if (v34)
      {
        v19 = v34;
      }

      else if (v89[0])
      {
        CFRelease(v89[0]);
        v89[0] = 0;
        LODWORD(sampleSizeArray.isa) = 4;
        cf = CFStringCreateWithCStringNoCopy(v8, "urn:iso:std:iso:ts:21496:-1", 0x8000100u, v25);
        if (cf)
        {
          v19 = 0;
        }

        else
        {
          v19 = 4294950305;
        }

        if (!v19)
        {
LABEL_34:
          if (v19)
          {
            goto LABEL_66;
          }

LABEL_35:
          ExifLocationFromJFIFByteStream = _saveAuxImage(a1 + 240, v85, v78, 1, LODWORD(sampleSizeArray.isa), 0, cf, 0, 0, 0, 0, 0, 0, 0, 0);
          if (ExifLocationFromJFIFByteStream)
          {
            goto LABEL_84;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v19 = 4294950300;
      }

      if (!v79)
      {
        goto LABEL_34;
      }

      *(a1 + 376) = 1;
LABEL_36:
      v26 += 16;
    }
  }

  v77 = 0;
  memset(&sampleSizeArray.info, 0, 24);
  OUTLINED_FUNCTION_17();
  ExifLocationFromJFIFByteStream = CMPhotoGetExifLocationFromJFIFByteStream();
  if (ExifLocationFromJFIFByteStream)
  {
    goto LABEL_84;
  }

  if (!v77)
  {
    goto LABEL_49;
  }

  v78 = 0;
  v89[0] = 0;
  sampleSizeArray.isa = 0;
  DataBuffer = CMSampleBufferGetDataBuffer(*(a1 + 264));
  if (DataBuffer)
  {
    ExifLocationFromJFIFByteStream = CMPhotoParseExifFromTIFF(DataBuffer, sampleSizeArray.info, sampleSizeArray.data, 0, 0, &v78, v89, &sampleSizeArray, (a1 + 368));
    if (!ExifLocationFromJFIFByteStream)
    {
      if (v78)
      {
        v36 = OUTLINED_FUNCTION_27();
        ExifLocationFromJFIFByteStream = CMBlockBufferCreateWithBufferReference(v36, v37, v38, v39, 0, v40);
        if (ExifLocationFromJFIFByteStream)
        {
          goto LABEL_84;
        }

        ExifLocationFromJFIFByteStream = CMSampleBufferCreate(v8, v84, 1u, 0, 0, 0, 1, 0, 0, 1, &sampleSizeArray, (a1 + 280));
        if (ExifLocationFromJFIFByteStream)
        {
          goto LABEL_84;
        }

        *(a1 + 305) = *(a1 + 304);
      }

      v41 = OUTLINED_FUNCTION_27();
      ExifLocationFromJFIFByteStream = CMPhotoDataCreateFromSource(v41, v42, v43, v44, v45, 0);
      if (!ExifLocationFromJFIFByteStream)
      {
        v46 = v82;
        if (v82)
        {
          v46 = CFRetain(v82);
        }

        *(a1 + 328) = v46;
        *(a1 + 320) = 1;
LABEL_49:
        OUTLINED_FUNCTION_17();
        ExifLocationFromJFIFByteStream = CMPhotoGetXMPLocationFromJFIFByteStream();
        if (!ExifLocationFromJFIFByteStream)
        {
          OUTLINED_FUNCTION_9_22();
          ExifLocationFromJFIFByteStream = CMPhotoCopyDebugMetadataFromJFIFByteStream(v47, v48, v49, v50, v51, v52);
          if (!ExifLocationFromJFIFByteStream)
          {
            *(a1 + 320) = *(a1 + 320);
            OUTLINED_FUNCTION_9_22();
            ExifLocationFromJFIFByteStream = CMPhotoCopyCustomMetadataFromJFIFByteStream(v53, v54, v55, v56, v57, v58);
            if (!ExifLocationFromJFIFByteStream)
            {
              *(a1 + 320) = *(a1 + 320);
              OUTLINED_FUNCTION_6();
              ExifLocationFromJFIFByteStream = CMPhotoCopyICCProfileFromJFIFByteStream(v59, v60, v61, v62, v63, v64);
              if (!ExifLocationFromJFIFByteStream)
              {
                v89[0] = 0;
                v65 = *(a1 + 288);
                if (v65)
                {
                  v66 = CGColorSpaceCreateWithICCData(v65);
                  v67 = v66;
                  if (v66 && CGColorSpaceGetModel(v66) < kCGColorSpaceModelCMYK)
                  {
                    goto LABEL_64;
                  }

                  v68 = *(a1 + 288);
                  if (v68)
                  {
                    CFRelease(v68);
                    *(a1 + 288) = 0;
                  }

                  if (!v67)
                  {
                    goto LABEL_64;
                  }

                  CFRelease(v67);
                }

                else if (*(a1 + 368))
                {
                  if (!CGImageCreateColorSpaceFromExifOrData())
                  {
                    v70 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
                    if (v70)
                    {
                      v71 = v70;
                      v72 = CGColorSpaceEqualToColorSpace();
                      v73 = v89[0];
                      if ((v72 & 1) == 0)
                      {
                        *(a1 + 288) = CGColorSpaceCopyICCData(v89[0]);
                        v73 = v89[0];
                      }

                      *(a1 + 296) = v73;
                      v89[0] = 0;
                      CFRelease(v71);
                    }

                    else
                    {
                      v74 = CGColorSpaceCopyICCData(v89[0]);
                      v75 = v89[0];
                      *(a1 + 288) = v74;
                      *(a1 + 296) = v75;
                    }

                    goto LABEL_65;
                  }

                  v67 = v89[0];
LABEL_64:
                  *(a1 + 296) = v67;
LABEL_65:
                  v19 = 0;
                  goto LABEL_66;
                }

                v67 = 0;
                goto LABEL_64;
              }
            }
          }
        }
      }
    }

LABEL_84:
    v19 = ExifLocationFromJFIFByteStream;
    goto LABEL_66;
  }

  v19 = 4294950304;
LABEL_66:
  free(v86);
  if (v85)
  {
    CFRelease(v85);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t _createDescriptionFromSession(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v6 = Mutable;
  v7 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_74;
  }

  v8 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = v8;
  if (!v8)
  {
LABEL_74:
    v16 = 0;
    goto LABEL_75;
  }

  allocator = v4;
  v10 = CMPhotoCFDictionarySetInt(v8, @"ImageHandle", 0);
  if (v10 || (v10 = CMPhotoCFDictionarySetInt64(v9, @"ItemID", 1), v10) || (v10 = CMPhotoCFDictionarySetInt(v9, @"CodecType", 1785750887), v10))
  {
    v51 = v10;
    v16 = 0;
    cf = 0;
LABEL_71:
    v22 = 0;
    v31 = 0;
    goto LABEL_67;
  }

  v11 = *(a1 + 296);
  if (v11)
  {
    CFDictionarySetValue(v9, @"ColorSpace", v11);
  }

  v12 = v4;
  if (!*(a1 + 280))
  {
    v22 = 0;
    v16 = 0;
    v25 = 2;
    goto LABEL_19;
  }

  v13 = OUTLINED_FUNCTION_37();
  v16 = CFArrayCreateMutable(v13, v14, v15);
  if (!v16)
  {
LABEL_75:
    cf = 0;
LABEL_76:
    v22 = 0;
LABEL_77:
    v31 = 0;
    goto LABEL_78;
  }

  v17 = OUTLINED_FUNCTION_37();
  v21 = CFDictionaryCreateMutable(v17, v18, v19, v20);
  v22 = v21;
  if (!v21)
  {
    cf = 0;
    goto LABEL_77;
  }

  v23 = CMPhotoCFDictionarySetInt(v21, @"ImageHandle", 0);
  if (v23 || (v23 = CMPhotoCFDictionarySetInt64(v9, @"ItemID", 2), v23) || (v23 = CMPhotoCFDictionarySetInt(v22, @"CodecType", 1785750887), v23))
  {
    v51 = v23;
    cf = v22;
    goto LABEL_71;
  }

  v24 = *(a1 + 296);
  if (v24)
  {
    CFDictionarySetValue(v22, @"ColorSpace", v24);
  }

  CFArrayAppendValue(v16, v22);
  CFDictionarySetValue(v9, @"ThumbnailImage", v16);
  v25 = 3;
  v12 = allocator;
LABEL_19:
  v26 = *(a1 + 312);
  cf = v22;
  if (v26 && CFArrayGetCount(v26) >= 1)
  {
    v27 = OUTLINED_FUNCTION_37();
    v30 = CFArrayCreateMutable(v27, v28, v29);
    if (v30)
    {
      v53 = a2;
      v54 = v16;
      v31 = v30;
      v55 = v7;
      v22 = 0;
      v32 = 0;
      v33 = MEMORY[0x1E695E9D8];
      v34 = MEMORY[0x1E695E9E8];
      while (1)
      {
        Count = *(a1 + 312);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v32 >= Count)
        {
          CFDictionarySetValue(v9, @"Auxiliary", v31);
          v7 = v55;
          a2 = v53;
          v16 = v54;
          goto LABEL_35;
        }

        if (v22)
        {
          CFRelease(v22);
        }

        v36 = OUTLINED_FUNCTION_37();
        v38 = CFDictionaryCreateMutable(v36, v37, v33, v34);
        v22 = v38;
        if (!v38)
        {
          v51 = 4294950305;
          goto LABEL_66;
        }

        v39 = CMPhotoCFDictionarySetInt(v38, @"ImageHandle", v32);
        if (v39 || (v39 = CMPhotoCFDictionarySetInt64(v9, @"ItemID", v25), v39))
        {
          v51 = v39;
          goto LABEL_66;
        }

        v40 = *(CFArrayGetValueAtIndex(*(a1 + 312), v32) + 3);
        if (!v40)
        {
          break;
        }

        CFDictionarySetValue(v22, @"AuxiliaryImageType", v40);
        CFArrayAppendValue(v31, v22);
        ++v32;
        ++v25;
        v12 = allocator;
      }

      v51 = 4294950194;
LABEL_66:
      v7 = v55;
      v16 = v54;
LABEL_67:
      CFRelease(v6);
      if (!v7)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    goto LABEL_76;
  }

  v31 = 0;
  v22 = 0;
LABEL_35:
  if (*(a1 + 328))
  {
    v41 = CFArrayCreate(v12, (a1 + 328), 1, MEMORY[0x1E695E9C0]);
    if (!v41)
    {
      goto LABEL_78;
    }

    v42 = v41;
    OUTLINED_FUNCTION_18_8(v41, @"EXIFMetadata");
    CFRelease(v42);
  }

  if (*(a1 + 336))
  {
    v43 = CFArrayCreate(v12, (a1 + 336), 1, MEMORY[0x1E695E9C0]);
    if (!v43)
    {
      goto LABEL_78;
    }

    v44 = v43;
    OUTLINED_FUNCTION_18_8(v43, @"XMPMetadata");
    CFRelease(v44);
  }

  if (*(a1 + 344))
  {
    v45 = CFArrayCreate(v12, (a1 + 344), 1, MEMORY[0x1E695E9C0]);
    if (!v45)
    {
      goto LABEL_78;
    }

    v46 = v45;
    OUTLINED_FUNCTION_18_8(v45, @"DebugMetadata");
    CFRelease(v46);
  }

  v47 = *(a1 + 352);
  if (!v47)
  {
    goto LABEL_49;
  }

  values = 0;
  v48 = CMPhotoJFIFCopyCustomMetadataFromCFData(v47, &values);
  if (v48)
  {
    v51 = v48;
    goto LABEL_67;
  }

  v49 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
  if (!v49)
  {
LABEL_78:
    v51 = 4294950305;
    goto LABEL_67;
  }

  v50 = v49;
  OUTLINED_FUNCTION_18_8(v49, @"CustomMetadata");
  CFRelease(v50);
  if (values)
  {
    CFRelease(values);
  }

LABEL_49:
  CFArrayAppendValue(v7, v9);
  CFDictionaryAddValue(v6, @"ImageList", v7);
  v51 = CMPhotoCFDictionarySetInt(v6, @"PrimaryImageHandle", 0);
  if (v51)
  {
    goto LABEL_67;
  }

  *a2 = v6;
LABEL_51:
  CFRelease(v7);
LABEL_52:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v51;
}

uint64_t _saveAuxImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, uint64_t a13, uint64_t a14, int a15)
{
  value[0] = 0;
  if (*(a1 + 72) || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0), (*(a1 + 72) = Mutable) != 0))
  {
    LODWORD(v29) = a15;
    HIDWORD(v28) = a12;
    LOBYTE(v28) = a11;
    CMPhotoCompressedAuxImageStorageCreate(a2, a3, a6, a7, a8, a4, a5, a9, a10, v28, a13, a14, v29, value, v30, value[0], value[1], value[2], value[3], value[4], value[5], v32, v33, v34, v35, vars0, vars8);
    v25 = v24;
    v26 = value[0];
    if (!v24)
    {
      CFArrayAppendValue(*(a1 + 72), value[0]);
      v26 = 0;
      value[0] = 0;
    }
  }

  else
  {
    v26 = 0;
    v25 = 4294950305;
  }

  CMPhotoCompressedAuxImageStorageDestroy(v26);
  return v25;
}

uint64_t _compressImageInternal_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 264))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950192, "<<<< CMPhotoCompressionSession+JFIF >>>>", 1590, v5);
  }

  else
  {
    OUTLINED_FUNCTION_54_0();
    v22 = 0;
    v21[0] = 0;
    v21[1] = 0;
    SourceDimensions = CMPhotoGetSourceDimensions(v4, v7, v21);
    if (SourceDimensions)
    {
      return SourceDimensions;
    }

    v9 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    OUTLINED_FUNCTION_13_17();
    v17 = _encodeSource(v10, v11, v12, v13, v14, v15, v16);
    if (*v9 == 1)
    {
      OUTLINED_FUNCTION_9_22();
      kdebug_trace();
    }

    if (a4 && !v17)
    {
      if (v22)
      {
        v18 = -1;
      }

      else
      {
        v18 = 0;
      }

      *a4 = v18;
    }

    return v17;
  }
}

uint64_t _compressThumbnailInternal(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, uint64_t a4)
{
  if (theDict && CFDictionaryContainsKey(theDict, @"DryRun"))
  {
    v6 = 1;
LABEL_11:
    v8 = OUTLINED_FUNCTION_27();
    SourceDimensions = CMPhotoGetSourceDimensions(v8, v9, v10);
    if (SourceDimensions)
    {
      return SourceDimensions;
    }

    v12 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    OUTLINED_FUNCTION_13_17();
    v19 = _encodeSource(v13, v14, v15, v16, v17, v18, 0);
    if (*v12 == 1)
    {
      kdebug_trace();
    }

    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = v6;
    }

    if ((v20 & 1) == 0)
    {
      if (CMSampleBufferGetTotalSampleSize(*(a1 + 280)) < 0x10000)
      {
        return 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_19();
        v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v22);
        v21 = *(a1 + 280);
        if (v21)
        {
          CFRelease(v21);
          *(a1 + 280) = 0;
        }
      }
    }

    return v19;
  }

  if (!a2 && *(a1 + 264) && !*(a1 + 280))
  {
    v6 = 0;
    goto LABEL_11;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void _compressAuxImageInternal()
{
  OUTLINED_FUNCTION_106();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v0 && CFDictionaryContainsKey(v0, @"DryRun"))
  {
    v14 = 0;
  }

  else
  {
    if (v11 || !*(v13 + 264))
    {
      goto LABEL_26;
    }

    v14 = 1;
  }

  if (v9 <= 5 && ((1 << v9) & 0x36) != 0)
  {
    v15 = OUTLINED_FUNCTION_27();
    if (CMPhotoGetSourceDimensions(v15, v16, v17))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_7_0();
    if (v18)
    {
      kdebug_trace();
    }

    v19 = _encodeSource(v13, 2, v9, v7, v5, v4, 0);
    OUTLINED_FUNCTION_7_0();
    if (v18)
    {
      kdebug_trace();
    }

    if (v19)
    {
      goto LABEL_25;
    }

    if (v14)
    {
      v20 = *(v13 + 312);
      if (!v20)
      {
        goto LABEL_25;
      }

      Count = CFArrayGetCount(v20);
      if (Count < 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      Count = 0;
    }

    if (v2)
    {
      *v2 = Count - 1;
    }

LABEL_25:
    OUTLINED_FUNCTION_105();
    return;
  }

LABEL_26:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_105();

  FigSignalErrorAtGM(v22);
}

uint64_t _newContainer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _newContainer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addXMP_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addXMP_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addDebugMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addDebugMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addMetadataFromImageProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addMetadataFromImageProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodeImageForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodeImageForIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodeImageForIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _encodeImageForIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _openContainerWithModificationCallback_0(const void *a1, const __CFDictionary *a2, __CFArray *a3, uint64_t a4, __CFDictionary **a5, uint64_t (*a6)(CFTypeRef, uint64_t), uint64_t a7)
{
  v92[4] = *MEMORY[0x1E69E9840];
  v13 = CFGetAllocator(a1);
  v70 = 0;
  cf = 0;
  v14 = _newContainer_0(a1, a2);
  if (v14)
  {
    return v14;
  }

  ContainerAndCopyDescription = _readContainerAndCopyDescription(a1, a3, &cf);
  if (ContainerAndCopyDescription)
  {
    goto LABEL_69;
  }

  ContainerAndCopyDescription = CMPhotoPropertyListCopyWithMutableContainers(v13, cf, &v70);
  if (ContainerAndCopyDescription)
  {
    goto LABEL_69;
  }

  ContainerAndCopyDescription = a6(v70, a7);
  if (ContainerAndCopyDescription)
  {
    goto LABEL_69;
  }

  v67 = a5;
  Value = CFDictionaryGetValue(cf, @"ImageList");
  v66 = a1;
  if (Value && (v17 = Value, v18 = CFGetTypeID(Value), v18 == CFArrayGetTypeID()) && (v19 = OUTLINED_FUNCTION_18_9(), (v21 = CFDictionaryGetValue(v19, v20)) != 0) && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFArrayGetTypeID()))
  {
    if (CFArrayGetCount(v22) >= 1)
    {
      v24 = 0;
      theArray = v22;
      while (1)
      {
        LODWORD(v75) = 0;
        LODWORD(v88) = 0;
        LODWORD(v92[0]) = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v22, v24);
        if (!CMPhotoCFDictionaryGetIntIfPresent())
        {
          goto LABEL_38;
        }

        CFArrayGetValueAtIndex(v17, v24);
        if (!CMPhotoCFDictionaryGetIntIfPresent())
        {
          goto LABEL_38;
        }

        CMPhotoCFDictionaryGetInt32IfPresent();
        if (v88 != v75)
        {
          if (CFArrayGetCount(v17) >= 1)
          {
            v33 = 0;
            do
            {
              CFArrayGetValueAtIndex(v17, v33);
              if (!CMPhotoCFDictionaryGetIntIfPresent())
              {
                break;
              }

              if (v88 == v75)
              {
                goto LABEL_14;
              }

              ++v33;
            }

            while (v33 < CFArrayGetCount(v17));
          }

          goto LABEL_38;
        }

LABEL_14:
        LODWORD(v85) = -1;
        v87 = -1;
        IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
        v27 = CMPhotoCFDictionaryGetIntIfPresent();
        v28 = v85;
        v29 = v87;
        v30 = IntIfPresent != v27 && IntIfPresent != 0;
        v31 = CFDictionaryGetValue(ValueAtIndex, @"ThumbnailImage");
        v32 = CFDictionaryGetValue(ValueAtIndex, @"Auxiliary");
        if (v30 || v28 != v29)
        {
          break;
        }

        if (LODWORD(v92[0]) != 1953325424)
        {
          v74 = 0;
          v86 = v87;
          ContainerAndCopyDescription = _checkOrientationForImages(v31, v87, v27, &v74 + 1, &v74, &v86);
          if (ContainerAndCopyDescription)
          {
            goto LABEL_69;
          }

          v73 = 0;
          v72 = v87;
          ContainerAndCopyDescription = _checkOrientationForImages(v32, v87, v27, &v73 + 1, &v73, &v72);
          if (ContainerAndCopyDescription)
          {
            goto LABEL_69;
          }

          if (v74 || v73)
          {
            v40 = &v86;
            if (!HIBYTE(v74))
            {
              v40 = &v72;
            }

            v35 = *v40;
            v34 = (HIBYTE(v74) | HIBYTE(v73)) != 0;
            v39 = (v74 | v73) != 0;
            v36 = ValueAtIndex;
            v37 = v31;
            v38 = v32;
LABEL_36:
            ContainerAndCopyDescription = _updateOrRemoveOrientationForImages(v36, v37, v38, v35, v34, v39);
            if (ContainerAndCopyDescription)
            {
              goto LABEL_69;
            }
          }
        }

        ++v24;
        v22 = theArray;
        if (v24 >= CFArrayGetCount(theArray))
        {
          goto LABEL_39;
        }
      }

      v34 = v28 != v29;
      v35 = v87;
      v36 = 0;
      v37 = v31;
      v38 = v32;
      v39 = v30;
      goto LABEL_36;
    }
  }

  else
  {
LABEL_38:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_0();
    v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    if (v41)
    {
      goto LABEL_70;
    }
  }

LABEL_39:
  v43 = v70;
  v42 = cf;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2000000000;
  v91 = 0;
  v44 = CFDictionaryGetValue(v70, @"GroupList");
  if (v44)
  {
    v45 = v44;
    if (CFArrayGetCount(v44) >= 1)
    {
      v46 = CFDictionaryGetValue(v42, @"ImageList");
      v47 = CFDictionaryGetValue(v43, @"ImageList");
      if (v46)
      {
        v48 = v47;
        v49 = CFGetTypeID(v46);
        if (v49 == CFArrayGetTypeID())
        {
          if (v48)
          {
            v50 = CFGetTypeID(v48);
            if (v50 == CFArrayGetTypeID())
            {
              if (CFArrayGetCount(v45) < 1)
              {
                goto LABEL_66;
              }

              v51 = 0;
              v64 = @"CustomMetadata";
              v52 = *MEMORY[0x1E695E738];
              v63 = v45;
              while (1)
              {
                v69 = v51;
                v53 = FigCFArrayGetValueAtIndex();
                if (!v53)
                {
                  break;
                }

                v54 = CFGetTypeID(v53);
                if (v54 != CFDictionaryGetTypeID())
                {
                  break;
                }

                v87 = 0;
                if (!CMPhotoCFDictionaryGetInt32IfPresent())
                {
                  break;
                }

                if (v87 == 1634497650)
                {
                  v55 = FigCFDictionaryGetValue();
                  if (v55)
                  {
                    v56 = v55;
                    if (CFArrayGetCount(v55) >= 2)
                    {
                      v57 = 0;
                      v92[0] = @"EXIFMetadata";
                      v92[1] = @"XMPMetadata";
                      v92[2] = @"DebugMetadata";
                      v92[3] = @"CustomMetadata";
                      while (1)
                      {
                        v58 = v92[v57];
                        if (CFArrayGetCount(v56) >= 1)
                        {
                          break;
                        }

LABEL_61:
                        if (++v57 == 4)
                        {
                          v45 = v63;
                          goto LABEL_63;
                        }
                      }

                      v59 = 0;
                      while (1)
                      {
                        v86 = -1;
                        FigCFArrayGetValueAtIndex();
                        if (!CMPhotoCFDictionaryGetInt32IfPresent())
                        {
                          break;
                        }

                        v85 = v52;
                        hasMetadataChangedForImageHandle = _hasMetadataChangedForImageHandle(v46, v48, v86, v58, &v85);
                        *(v89 + 6) = hasMetadataChangedForImageHandle;
                        if (hasMetadataChangedForImageHandle)
                        {
                          goto LABEL_66;
                        }

                        if (v85 != v52)
                        {
                          v75 = MEMORY[0x1E69E9820];
                          v76 = 0x40000000;
                          v77 = ___propagateMetadataChange_block_invoke;
                          v78 = &unk_1E77A3BB0;
                          v84 = v86;
                          v79 = &v88;
                          v80 = v46;
                          v81 = v48;
                          v82 = v58;
                          v83 = v85;
                          FigCFArrayApplyBlock();
                          if (*(v89 + 6))
                          {
                            goto LABEL_66;
                          }
                        }

                        if (CFArrayGetCount(v56) <= ++v59)
                        {
                          goto LABEL_61;
                        }
                      }

                      *(v89 + 6) = -16990;
                      goto LABEL_66;
                    }
                  }
                }

LABEL_63:
                v51 = v69 + 1;
                if (v69 + 1 >= CFArrayGetCount(v45))
                {
                  goto LABEL_66;
                }
              }
            }
          }
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_0();
      v62 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      *(v89 + 6) = v62;
    }
  }

LABEL_66:
  v41 = *(v89 + 6);
  _Block_object_dispose(&v88, 8);
  if (!v41)
  {
    if (CMPhotoCompressionSessionCheckForIllegalModification(cf, v70))
    {
      ContainerAndCopyDescription = _initContainerFromDescription(v66, v70, v67);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_0();
      ContainerAndCopyDescription = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, v64, v65);
    }

LABEL_69:
    v41 = ContainerAndCopyDescription;
  }

LABEL_70:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  return v41;
}

uint64_t _closeContainerAndCopyBacking_0(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4(822280385, a1 + 88);
  }

  v9 = _finishAsyncEncoding(a1);
  if (!v9)
  {
    v9 = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
    if (!v9)
    {
      v9 = CMPhotoHEIFFileWriterCloseAndCopyBacking(*(a1 + 88), a2, a3, a4);
    }
  }

  v10 = v9;
  *(a1 + 104) = 0;
  CMPhotoHEIFFileWriterDispose(*(a1 + 88));
  *(a1 + 88) = 0;
  if (*v8 == 1)
  {
    OUTLINED_FUNCTION_4(822280386, a1 + 88);
  }

  return v10;
}

uint64_t _addCompressedImage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_10_22();
    return _addCompressedX(v6, v7, v8, v9, v10, v11, v12, v13, 0, a4);
  }

  return result;
}

uint64_t _addCompressedThumbnail(uint64_t a1)
{
  result = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_10_22();
    return _addCompressedX(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0);
  }

  return result;
}

uint64_t _addCompressedAux(uint64_t a1, uint64_t a2, int a3, const void *a4, const CGImageMetadata *a5, uint64_t a6, const __CFDictionary *a7, const void *a8)
{
  result = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (!result)
  {
    return _addCompressedX(a1, a7, a8, 2, a2, a3, a4, a5, a6, 0);
  }

  return result;
}

uint64_t _addCompressedMovie(uint64_t a1, uint64_t a2, const void *a3)
{
  v7 = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (v7)
  {
    return v7;
  }

  if (a3)
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFURLGetTypeID())
    {
      v15 = 0;
      cf = 0;
      if (*(a1 + 104))
      {
        fig_log_get_emitter();
        v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, cf, v17);
      }

      else
      {
        v9 = CMByteStreamCreateForFileURL();
        if (!v9)
        {
          Mutable = CFDictionaryCreateMutable(*(a1 + 96), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            if (CMPhotoHEIFUtilitiesByteStreamHasMoovAtom(cf))
            {
              FigCFDictionarySetValue();
              v11 = MEMORY[0x1AC5519C0](cf, Mutable, *(a1 + 96), 0, &v15, 0, 0);
              if (!v11)
              {
                v11 = CMPhotoHEIFFileWriterAddCompressedMovie(*(a1 + 88), a2, v15);
              }

              v12 = v11;
            }

            else
            {
              v12 = 4294950194;
            }
          }

          else
          {
            v12 = 4294950305;
          }

          goto LABEL_11;
        }
      }

      v12 = v9;
      Mutable = 0;
LABEL_11:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return v12;
    }
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950194, "<<<< CMPhotoCompressionSession+HEIF >>>>", 6000, v3);
}

uint64_t _addXMP_0(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, const __CFData *a4)
{
  cf = 0;
  if (*(a1 + 104))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, cf, v16);
    goto LABEL_10;
  }

  if (!theDict)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(theDict, @"UseXMPContentEncoding");
  v8 = Value;
  if (!Value)
  {
LABEL_9:
    v12 = CMPhotoHEIFFileWriterAddMetadataToImage(*(a1 + 88), 0, a2, 1, a4, 0, v8, 0);
LABEL_10:
    v11 = v12;
    goto LABEL_11;
  }

  v9 = CFGetTypeID(Value);
  if (v9 == CFStringGetTypeID())
  {
    v10 = CMPhotoCompressDataWithContentEncoding(*(a1 + 96), a4, v8, &cf);
    if (v10 != -17106)
    {
      v11 = v10;
      if (v10)
      {
        goto LABEL_11;
      }

      a4 = cf;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = 4294950306;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t _addMetadataFromImageProperties_1(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  v7 = CFGetAllocator(a1);
  v32 = 0;
  cf = 0;
  v31 = 1;
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4(822280381, a1 + 88);
  }

  if (*(a1 + 104))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    PropertiesForImage = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v28);
LABEL_40:
    v17 = PropertiesForImage;
    v11 = 0;
    goto LABEL_25;
  }

  v30 = 0uLL;
  PropertiesForImage = CMPhotoHEIFFileWriterGetPropertiesForImage(*(a1 + 88), a2, &v30, 0);
  if (PropertiesForImage)
  {
    goto LABEL_40;
  }

  PropertiesForImage = CMPhotoImagePropertiesCreateDataRepresentation(v7, v30, *(&v30 + 1), a4, &cf, &v32);
  if (PropertiesForImage)
  {
    goto LABEL_40;
  }

  Value = CFDictionaryGetValue(a4, @"iOS_Debug");
  if (Value)
  {
    v11 = CFRetain(Value);
  }

  else
  {
    v11 = 0;
  }

  if (CMPhotoCFDictionaryGetIntIfPresent())
  {
    v12 = 0;
  }

  else if (CFDictionaryGetValue(a4, *MEMORY[0x1E696DF28]))
  {
    v12 = CMPhotoCFDictionaryGetIntIfPresent() == 0;
  }

  else
  {
    v12 = 1;
  }

  v29 = 0;
  HIBYTE(v28) = 0;
  v27 = -1;
  HIBYTE(v26) = 0;
  OrientationTransformsForImage = CMPhotoHEIFFileWriterGetOrientationTransformsForImage(*(a1 + 88), a2, &v28 + 3, &v29, &v26 + 3, &v27);
  if (OrientationTransformsForImage)
  {
    goto LABEL_23;
  }

  if (!v12 && HIBYTE(v28) | HIBYTE(v26))
  {
    HIDWORD(v25) = 1;
    OrientationTransformsForImage = CMPhotoExifOrientationFromHEIFRotationCCWAndMirroring(v29, v27, &v25 + 1);
    if (OrientationTransformsForImage)
    {
LABEL_23:
      v17 = OrientationTransformsForImage;
      goto LABEL_25;
    }

    if (HIDWORD(v25) != v31)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_5_0();
      OrientationTransformsForImage = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v28);
      goto LABEL_23;
    }
  }

  if (cf)
  {
    v19 = OUTLINED_FUNCTION_18_9();
    OrientationTransformsForImage = _addExifInternal(v19, v20, 0, v21);
    if (OrientationTransformsForImage)
    {
      goto LABEL_23;
    }
  }

  if (v32)
  {
    v22 = OUTLINED_FUNCTION_18_9();
    v17 = _addXMP_0(v22, v23, 0, v24);
    if (!v17 && v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v11)
    {
LABEL_22:
      v14 = OUTLINED_FUNCTION_18_9();
      OrientationTransformsForImage = _addDebugMetadata_0(v14, v15, v16, v11);
      goto LABEL_23;
    }

    v17 = 0;
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (*v8 == 1)
  {
    OUTLINED_FUNCTION_4(822280382, a1 + 88);
  }

  return v17;
}

uint64_t _addAuxImageMetadata_0(uint64_t a1, int a2, CGImageMetadataRef metadata)
{
  cf = 0;
  XMPData = CMPhotoAuxiliaryImageMetadataCreateXMPData(*(a1 + 96), metadata, 0, 4, 0, &cf);
  if (!XMPData)
  {
    XMPData = CMPhotoHEIFFileWriterGetMetadataCount(*(a1 + 88));
    if (!XMPData)
    {
      OUTLINED_FUNCTION_10_22();
      XMPData = CMPhotoHEIFFileWriterAddMetadataToImage(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = XMPData;
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void _addTmapImageOneShot_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9)
{
  if (a5 && a6)
  {
    CFValueIfPresent = CMPhotoCFDictionaryGetCFValueIfPresent();
    v13 = CMPhotoCFDictionaryGetCFValueIfPresent();
    v14 = CMPhotoCFDictionaryGetCFValueIfPresent();
    v15 = CMPhotoCFDictionaryGetCFValueIfPresent();
    if (!CFValueIfPresent && (!v13 || !v14 || !v15))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_16();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, @"Matrix", @"Transfer");
      goto LABEL_30;
    }

    v16 = *MEMORY[0x1E695E480];
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      goto LABEL_30;
    }

    v18 = MutableCopy;
    if (a7)
    {
      FigCFDictionarySetValue();
      CMPhotoCompressionSessionAddAuxiliaryImage(a1);
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      FigCFDictionarySetBoolean();
      if (!CMPhotoCompressionSessionAddImage(a1))
      {
LABEL_10:
        Mutable = CFDictionaryCreateMutable(v16, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v21 = Mutable;
          v22 = CFDictionaryCreateMutable(v16, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v22)
          {
            v23 = v22;
            FigCFDictionarySetInt();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            if (CFValueIfPresent)
            {
              CGColorSpaceUsesITUR_2100TF(0);
            }

            else
            {
              if (!FigCFEqual())
              {
                FigCFEqual();
              }

              FigCFDictionarySetBoolean();
              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
            }

            FigCFDictionarySetValue();
            FigCFDictionarySetInt();
            v24 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            if (v24)
            {
              v25 = v24;
              FigCFArrayAppendInt32();
              FigCFArrayAppendInt32();
              if (!CMPhotoCompressionSessionAddImage(a1))
              {
                v26 = OUTLINED_FUNCTION_17();
                if (!CMPhotoCompressionSessionAddGroup(v26, v27, 1634497650))
                {
                  v28 = OUTLINED_FUNCTION_17();
                  if (!CMPhotoCompressionSessionAddImageHandleToGroup(v28))
                  {
                    v29 = OUTLINED_FUNCTION_17();
                    v30 = CMPhotoCompressionSessionAddImageHandleToGroup(v29);
                    if (a9)
                    {
                      if (!v30)
                      {
                        *a9 = -1;
                      }
                    }
                  }
                }
              }

              CFRelease(v25);
            }

            CFRelease(v23);
          }

          CFRelease(v21);
        }
      }
    }

    CFRelease(v18);
LABEL_30:
    OUTLINED_FUNCTION_33_3();
    return;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_33_3();

  FigSignalErrorAtGM(v31);
}

uint64_t _readContainerAndCopyDescription(uint64_t a1, CFMutableArrayRef a2, __CFDictionary **a3)
{
  v6 = a1;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  v7 = *MEMORY[0x1E695E4C0];
  v96 = 0;
  v97 = v7;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  Mutable = CFArrayCreateMutable(*(a1 + 96), 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_11_20();
    v28 = 4294950305;
    goto LABEL_30;
  }

  v9 = FigPictureCollectionCreateFromByteStream();
  if (v9)
  {
    v28 = v9;
    OUTLINED_FUNCTION_11_20();
    goto LABEL_30;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    OUTLINED_FUNCTION_11_20();
    v28 = 4294954514;
    goto LABEL_30;
  }

  v91 = Mutable;
  v11 = v10(v96, 1, &v100);
  if (v11)
  {
    goto LABEL_157;
  }

  if (v100 < 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v76);
LABEL_157:
    v28 = v11;
    OUTLINED_FUNCTION_11_20();
    goto LABEL_150;
  }

  v88 = a3;
  v12 = 0;
  Int = 0;
  v13 = 0;
  v14 = *MEMORY[0x1E6972318];
  v15 = MEMORY[0x1E695E9D8];
  v16 = MEMORY[0x1E695E9E8];
  do
  {
    if (v95)
    {
      CFRelease(v95);
      v95 = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v97)
    {
      CFRelease(v97);
      v97 = 0;
    }

    v17 = CFDictionaryCreateMutable(*(v6 + 96), 0, v15, v16);
    if (!v17)
    {
      v3 = 0;
      a2 = 0;
      v28 = 4294950305;
LABEL_150:
      Mutable = v91;
      goto LABEL_30;
    }

    v13 = v17;
    v18 = v96;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v19)
    {
      goto LABEL_27;
    }

    v20 = v19(v18, v12, &v95, 0);
    if (v20)
    {
      goto LABEL_152;
    }

    v20 = _copyPictureReaderToImageDescription(v6 + 88, v95, 0, v12, v13);
    if (v20)
    {
      goto LABEL_152;
    }

    v21 = *(v6 + 96);
    FigBaseObject = FigPictureReaderGetFigBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v23)
    {
LABEL_27:
      v3 = 0;
      a2 = 0;
      v28 = 4294954514;
      goto LABEL_28;
    }

    v20 = v23(FigBaseObject, v14, v21, &v97);
    if (v20)
    {
      goto LABEL_152;
    }

    if (FigCFEqual())
    {
      if (Int)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_16();
        v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v76);
LABEL_152:
        v28 = v20;
        v3 = 0;
        goto LABEL_153;
      }

      Int = CMPhotoCFNumberCreateInt(v12);
    }

    CFArrayAppendValue(v91, v13);
    ++v12;
  }

  while (v12 < v100);
  *(v6 + 112) = 1;
  *(v6 + 120) = v96;
  v96 = 0;
  v24 = *(v6 + 96);
  CMBaseObject = FigPictureCollectionGetCMBaseObject();
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v26)
  {
    v3 = 0;
    Mutable = v91;
    v27 = v88;
LABEL_54:
    v30 = *(v6 + 96);
    v31 = FigPictureCollectionGetCMBaseObject();
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v32 || v32(v31, *MEMORY[0x1E6972188], v30, &v98) || !v98 || CFArrayGetCount(v98) < 1)
    {
      a2 = 0;
LABEL_57:
      v33 = CFDictionaryCreateMutable(*(v6 + 96), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v33)
      {
        v34 = v33;
        CFDictionaryAddValue(v33, @"PrimaryImageHandle", Int);
        CFDictionaryAddValue(v34, @"ImageList", Mutable);
        if (v99)
        {
          CFDictionaryAddValue(v34, @"SequenceList", v99);
        }

        if (a2)
        {
          CFDictionaryAddValue(v34, @"GroupList", a2);
        }

        *(v6 + 128) = v93;
        v93 = 0;
        if (v27)
        {
          v28 = 0;
          *v27 = v34;
        }

        else
        {
          CFRelease(v34);
          v28 = 0;
        }
      }

      else
      {
        v28 = 4294950305;
      }

      goto LABEL_29;
    }

    v75 = v3;
    v36 = CFArrayCreateMutable(*(v6 + 96), 0, MEMORY[0x1E695E9C0]);
    a2 = v36;
    if (!v36)
    {
LABEL_158:
      v28 = 4294950305;
LABEL_159:
      Mutable = v91;
      v3 = v75;
      goto LABEL_29;
    }

    v37 = 0;
    key = *MEMORY[0x1E69722A8];
    v38 = *MEMORY[0x1E6972290];
    v82 = *MEMORY[0x1E69722A0];
    v80 = *MEMORY[0x1E6973978];
    v79 = *MEMORY[0x1E6973990];
    v78 = *MEMORY[0x1E6973980];
    v77 = @"ImageList";
    v81 = v36;
    while (1)
    {
      Count = v98;
      if (v98)
      {
        Count = CFArrayGetCount(v98);
      }

      if (v37 >= Count)
      {
        Mutable = v91;
        v27 = v88;
        v3 = v75;
        goto LABEL_57;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v98, v37);
      v87 = *(v6 + 120);
      v41 = v98;
      v90 = *(v6 + 96);
      v86 = CFDictionaryCreateMutable(v90, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v86)
      {
        goto LABEL_158;
      }

      CFDictionaryGetValue(ValueAtIndex, key);
      if (FigCFEqual())
      {
        v42 = 1937007986;
      }

      else
      {
        if (!FigCFEqual())
        {
          goto LABEL_144;
        }

        v42 = 1634497650;
      }

      v103 = 0;
      if (!CMPhotoCFDictionaryGetInt32IfPresent())
      {
        goto LABEL_144;
      }

      v85 = v37;
      Value = CFDictionaryGetValue(ValueAtIndex, v82);
      if (!Value)
      {
        v47 = 0;
        v46 = 0;
        v28 = 4294950304;
LABEL_146:
        v37 = v85;
        v61 = v86;
        goto LABEL_129;
      }

      v44 = Value;
      v45 = CFArrayGetCount(Value);
      if (v45 < 1)
      {
        a2 = v81;
        v37 = v85;
LABEL_144:
        v61 = v86;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_16();
        v28 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v75, v77);
        v47 = 0;
        v46 = 0;
        goto LABEL_129;
      }

      v84 = v42;
      v89 = v45;
      v46 = CFArrayCreateMutable(v90, v45, MEMORY[0x1E695E9C0]);
      v47 = 0;
      if (!v46)
      {
        v28 = 4294950305;
        a2 = v81;
        goto LABEL_146;
      }

      v48 = 0;
      do
      {
        if (v48)
        {
          CFRelease(v48);
        }

        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          v47 = 0;
          v28 = 4294950305;
          a2 = v81;
          v37 = v85;
          v61 = v86;
          goto LABEL_129;
        }

        v48 = MutableCopy;
        v50 = CFArrayGetValueAtIndex(v44, v47);
        if (!v50)
        {
          v47 = 0;
          v28 = 4294950194;
          a2 = v81;
          v37 = v85;
          v61 = v86;
          goto LABEL_128;
        }

        v51 = v50;
        v52 = v6;
        v53 = v46;
        v54 = CFGetTypeID(v50);
        if (v54 == CFNumberGetTypeID())
        {
          CFDictionarySetValue(v48, @"ImageHandle", v51);
        }

        else
        {
          v55 = CFGetTypeID(v51);
          if (v55 != CFDictionaryGetTypeID())
          {
            v47 = 0;
            v28 = 4294950194;
LABEL_127:
            v37 = v85;
            v61 = v86;
            v46 = v53;
            v6 = v52;
            a2 = v81;
            goto LABEL_128;
          }

          CFDictionaryGetValue(v51, v38);
          v56 = 0;
          if (v41)
          {
LABEL_95:
            v57 = CFArrayGetCount(v41);
            goto LABEL_97;
          }

          while (1)
          {
            v57 = 0;
LABEL_97:
            if (v56 >= v57)
            {
              break;
            }

            v58 = FigCFArrayGetValueAtIndex();
            CFDictionaryGetValue(v58, v38);
            if (FigCFEqual())
            {
              goto LABEL_102;
            }

            ++v56;
            if (v41)
            {
              goto LABEL_95;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_16();
          v59 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v75, v77);
          v56 = 0;
          if (v59)
          {
            v28 = v59;
            v47 = 0;
            goto LABEL_127;
          }

LABEL_102:
          CMPhotoCFDictionarySetSize(v48, @"GroupHandle", v56);
        }

        v46 = v53;
        CFArrayAppendValue(v53, v48);
        v47 = (v47 + 1);
        v6 = v52;
      }

      while (v47 != v89);
      v60 = FigCFDictionaryGetValue();
      a2 = v81;
      v37 = v85;
      v61 = v86;
      if (v60)
      {
        v62 = v60;
        if (CFDictionaryGetValue(v60, v80))
        {
          v63 = OUTLINED_FUNCTION_31_3();
          CFDictionaryAddValue(v63, @"DisparityAdjustment", v64);
        }

        if (CFDictionaryGetValue(v62, v79))
        {
          v65 = OUTLINED_FUNCTION_31_3();
          CFDictionaryAddValue(v65, @"StereoAggressors", v66);
        }

        if (CFDictionaryGetValue(v62, v78))
        {
          v67 = OUTLINED_FUNCTION_31_3();
          CFDictionaryAddValue(v67, @"MonoImageLocation", v68);
        }
      }

      values = 0;
      v69 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v69)
      {
        v47 = 0;
        v28 = 4294954514;
        goto LABEL_128;
      }

      v70 = v69(v87, 1, &values);
      if (v70)
      {
        break;
      }

      LODWORD(v71) = values;
      if (values < 1)
      {
LABEL_120:
        v70 = CMPhotoCFDictionarySetInt32(v86, @"GroupType", v84);
        if (v70)
        {
          break;
        }

        v70 = CMPhotoCFDictionarySetInt32(v86, @"GroupHandle", v85);
        if (v70)
        {
          break;
        }

        v28 = CMPhotoCFDictionarySetInt32(v86, @"GroupSortOrder", v71);
        if (!v28)
        {
          CFDictionarySetValue(v86, v77, v46);
          v47 = v86;
          v61 = 0;
          goto LABEL_128;
        }
      }

      else
      {
        v71 = 0;
        while (1)
        {
          v101 = 0;
          v72 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v72)
          {
            break;
          }

          v70 = v72(v87, v71, 0, &v101);
          if (v70)
          {
            goto LABEL_147;
          }

          if (v103 < v101)
          {
            goto LABEL_120;
          }

          if (++v71 >= values)
          {
            LODWORD(v71) = values;
            goto LABEL_120;
          }
        }

        v28 = 4294954514;
      }

LABEL_137:
      v47 = 0;
LABEL_128:
      CFRelease(v48);
      if (!v61)
      {
        goto LABEL_130;
      }

LABEL_129:
      CFRelease(v61);
LABEL_130:
      if (v46)
      {
        CFRelease(v46);
      }

      if (v28)
      {
        goto LABEL_159;
      }

      CFArrayAppendValue(a2, v47);
      if (v47)
      {
        CFRelease(v47);
      }

      ++v37;
    }

LABEL_147:
    v28 = v70;
    goto LABEL_137;
  }

  Mutable = v91;
  v27 = v88;
  if (v26(CMBaseObject, *MEMORY[0x1E69721A8], v24, &v94) || !CFBooleanGetValue(v94))
  {
    v3 = 0;
    goto LABEL_54;
  }

  values = @"video/mp4";
  v3 = CFDictionaryCreate(*(v6 + 96), MEMORY[0x1E6971AD8], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v3)
  {
    v28 = 4294950305;
    goto LABEL_153;
  }

  v35 = MEMORY[0x1AC5519C0](a2, v3, *(v6 + 96), 0, &v93, 0, 0);
  if (!v35)
  {
    v35 = CMPhotoCompressionSessionBuildSequenceReadersAndCopyDescription(v6, v93, &v99);
    if (!v35)
    {
      goto LABEL_54;
    }
  }

  v28 = v35;
LABEL_153:
  a2 = 0;
LABEL_28:
  Mutable = v91;
LABEL_29:
  CFRelease(v13);
LABEL_30:
  if (v99)
  {
    CFRelease(v99);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (Int)
  {
    CFRelease(Int);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v28;
}

uint64_t _initContainerFromDescription(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  v7 = CFGetAllocator(a1);
  v65 = 0;
  v66 = 0;
  v64 = 0;
  theArray = 0;
  key_4 = 0;
  Mutable = CFDictionaryCreateMutable(v7, 0, 0, 0);
  if (!Mutable)
  {
    v11 = 0;
LABEL_68:
    v40 = 4294950305;
    goto LABEL_46;
  }

  v9 = OUTLINED_FUNCTION_53();
  v11 = CFDictionaryCreateMutable(v9, v10, 0, 0);
  if (!v11)
  {
    goto LABEL_68;
  }

  v12 = OUTLINED_FUNCTION_53();
  cf = CFDictionaryCreateMutable(v12, v13, 0, 0);
  if (!cf)
  {
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_53();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v40 = 4294950305;
    CFRelease(cf);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_53();
  v57 = FigCFArrayCreateMutableCopy();
  if (!v57)
  {
LABEL_77:
    v40 = 4294950305;
    goto LABEL_45;
  }

  if (!FigCFDictionaryGetIntIfPresent())
  {
    emitter = fig_log_get_emitter();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950306, "<<<< CMPhotoCompressionSession+HEIF >>>>", 4558, v3);
    goto LABEL_74;
  }

  v14 = OUTLINED_FUNCTION_26_4();
  v16 = CFDictionaryGetValue(v14, v15);
  if (!v16)
  {
    v40 = 4294950305;
LABEL_66:
    CFRelease(v57);
    goto LABEL_45;
  }

  v17 = v16;
  v18 = CMPhotoPropertyListCopyWithMutableContainers(v7, v16, &theArray);
  if (v18 || (v19 = OUTLINED_FUNCTION_26_4(), CFDictionaryGetValue(v19, v20)) && (v21 = OUTLINED_FUNCTION_26_4(), (v23 = CFDictionaryGetValue(v21, v22)) != 0) && (v24 = v23, CFArrayGetCount(v23) >= 1) && (v18 = CMPhotoPropertyListCopyWithMutableContainers(v7, v24, &v66), v18))
  {
LABEL_74:
    v40 = v18;
    goto LABEL_66;
  }

  theDict = a2;
  Count = CFArrayGetCount(v17);
  if (Count < 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_0();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, 4294950194, "<<<< CMPhotoCompressionSession+HEIF >>>>", 4578, v49);
    goto LABEL_74;
  }

  v26 = Count;
  v55 = Count - 1;
  v54 = a3;
  v27 = 0;
  v28 = 0;
  do
  {
    v18 = _addGroupsForCurrentPosition(a1 + 88, v27 - 1, v27, v11, v66);
    if (v18)
    {
      goto LABEL_74;
    }

    key = -1;
    value = -1;
    ValueAtIndex = CFArrayGetValueAtIndex(v17, v27);
    if (!ValueAtIndex)
    {
      v40 = 4294950304;
      goto LABEL_66;
    }

    v30 = ValueAtIndex;
    v31 = v11;
    v32 = Mutable;
    v33 = CFGetTypeID(ValueAtIndex);
    if (v33 != CFDictionaryGetTypeID() || !CFArrayGetValueAtIndex(theArray, v27))
    {
      v40 = 4294950304;
LABEL_65:
      Mutable = v32;
      v11 = v31;
      goto LABEL_66;
    }

    if (!CMPhotoCFDictionaryGetIntIfPresent())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_0();
      v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, v53, v3);
LABEL_64:
      v40 = v34;
      goto LABEL_65;
    }

    if (key_4 == key)
    {
      v28 = 1;
    }

    v34 = _copyImageDescriptionToWriter((a1 + 88), v30, 0, 0, key, key_4 == key, cf, MutableCopy, v57, &value);
    if (v34)
    {
      goto LABEL_64;
    }

    v34 = FigCFDictionarySetInt();
    if (v34)
    {
      goto LABEL_64;
    }

    Mutable = v32;
    CFDictionaryAddValue(v32, key, value);
    ++v27;
    v11 = v31;
  }

  while (v26 != v27);
  if (!v28)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_0();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 4294950194, "<<<< CMPhotoCompressionSession+HEIF >>>>", 4623, v51);
    goto LABEL_74;
  }

  v18 = _addGroupsForCurrentPosition(a1 + 88, v55, 0xFFFFFFFFLL, v31, v66);
  if (v18)
  {
    goto LABEL_74;
  }

  *(a1 + 152) = Mutable;
  *(a1 + 160) = v31;
  *(a1 + 168) = v57;
  if (v66)
  {
    v38 = _addGenericListToWriter(a1 + 88, _addGroupDescriptionToWriter, v66, &v65);
    if (v38)
    {
LABEL_60:
      v40 = v38;
LABEL_43:
      Mutable = 0;
LABEL_44:
      v11 = 0;
      goto LABEL_45;
    }
  }

  v35 = CFDictionaryGetValue(theDict, @"SequenceList");
  if (!v35)
  {
    v41 = v54;
    if (!v54)
    {
      v40 = 0;
      goto LABEL_43;
    }

LABEL_35:
    v42 = OUTLINED_FUNCTION_53();
    v11 = CFDictionaryCreateMutable(v42, v43, v44, v45);
    if (v11)
    {
      CFDictionaryGetValue(*(a1 + 152), key_4);
      OUTLINED_FUNCTION_31_3();
      v40 = FigCFDictionarySetInt();
      CFDictionarySetValue(v11, @"ImageList", theArray);
      if (v64)
      {
        CFDictionarySetValue(v11, @"SequenceList", v64);
      }

      if (v65)
      {
        CFDictionarySetValue(v11, @"GroupList", v65);
      }

      Mutable = 0;
      *v41 = v11;
      goto LABEL_44;
    }

    Mutable = 0;
    goto LABEL_77;
  }

  v36 = v35;
  v37 = CFGetTypeID(v35);
  if (v37 == CFArrayGetTypeID())
  {
    v38 = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
    if (v38)
    {
      goto LABEL_60;
    }

    v39 = _addGenericListToWriter(a1 + 88, CMPhotoCompressionSessionAddSequenceDescriptionToWriter, v36, &v64);
    v40 = v39;
    Mutable = 0;
    v41 = v54;
    if (!v54)
    {
      v11 = 0;
      goto LABEL_45;
    }

    v11 = 0;
    if (v39)
    {
      goto LABEL_45;
    }

    goto LABEL_35;
  }

  Mutable = 0;
  v11 = 0;
  v40 = 4294950306;
LABEL_45:
  CFRelease(cf);
  CFRelease(MutableCopy);
LABEL_46:
  if (v66)
  {
    CFRelease(v66);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v40;
}

uint64_t _copyPictureReaderToImageDescription(uint64_t a1, const void *a2, int a3, int a4, __CFDictionary *a5)
{
  v101 = 0;
  v102 = 0;
  v99 = 0;
  number = 0;
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  FigPictureReaderGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_115;
  }

  v10 = OUTLINED_FUNCTION_29_4();
  v12 = v11(v10);
  if (v12)
  {
    goto LABEL_112;
  }

  HIDWORD(v93) = 0;
  v13 = CFNumberGetValue(number, kCFNumberSInt32Type, &v93 + 4);
  if (!v13)
  {
    Mutable = 0;
    v59 = 0;
    v20 = 4294950194;
    goto LABEL_116;
  }

  if (HIDWORD(v93) == 1953325424 || HIDWORD(v93) == 1768187246)
  {
    cf[0] = 0;
    FigPictureReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v15 = OUTLINED_FUNCTION_29_4();
      v17 = v16(v15);
      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v18 = *MEMORY[0x1E69722D8];
        v19 = FigCFDictionaryGetValue();
        if (v19)
        {
          CFDictionarySetValue(a5, v18, v19);
        }

        v20 = 0;
      }
    }

    else
    {
      v20 = 4294954514;
    }

    v13 = cf[0];
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v20)
    {
      goto LABEL_113;
    }
  }

  OUTLINED_FUNCTION_24_2(v13, *MEMORY[0x1E6972310], @"ItemID");
  OUTLINED_FUNCTION_24_2(v21, @"CodecType", @"CodecType");
  cf[0] = 0;
  value[0] = 0;
  v110[0] = 0;
  v22 = CFGetAllocator(a2);
  FigPictureReaderGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v24 = MEMORY[0x1E6972360];
  if (*(*(VTable + 8) + 48))
  {
    v25 = OUTLINED_FUNCTION_29_4();
    if (!v26(v25))
    {
      Extensions = CMFormatDescriptionGetExtensions(cf[0]);
      if (cf[0])
      {
        v28 = Extensions;
        FigBaseObject = FigPictureReaderGetFigBaseObject();
        v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v33 && !v33(FigBaseObject, *v24, v22, v110))
        {
          v34 = CFArrayGetCount(v110[0]) == 1;
        }

        else
        {
          v34 = a3 == 2;
        }

        CMPhotoCreateColorSpaceFromPixelBufferAttachments(v28, v34, value, 1, 1, v30, v31, v32, v89, v91, v93, v94, v95, v96, v97, v98, v99, number, v101, v102, value[0], value[1]);
        if (!v35)
        {
          if (value[0])
          {
            CFDictionarySetValue(a5, @"ColorSpace", value[0]);
          }
        }
      }
    }
  }

  if (v110[0])
  {
    CFRelease(v110[0]);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (value[0])
  {
    CFRelease(value[0]);
  }

  v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v36)
  {
    goto LABEL_115;
  }

  v12 = v36(a2, &v102);
  if (v12)
  {
    goto LABEL_112;
  }

  FigPictureTileCursorServiceGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_115;
  }

  v37 = OUTLINED_FUNCTION_29_4();
  v12 = v38(v37);
  if (v12)
  {
LABEL_112:
    v20 = v12;
LABEL_113:
    Mutable = 0;
    goto LABEL_114;
  }

  if (!v101)
  {
    Mutable = 0;
    v59 = 0;
    v20 = 4294950304;
    goto LABEL_116;
  }

  CFDictionarySetValue(a5, @"TileDimensions", v101);
  LODWORD(cf[0]) = 1;
  LOBYTE(value[0]) = 0;
  v39 = OUTLINED_FUNCTION_25_6();
  HEIFOrientation = CMPhotoPictureReaderGetHEIFOrientation(v39, v40, v41);
  v20 = HEIFOrientation;
  if (!HEIFOrientation && LOBYTE(value[0]))
  {
    HEIFOrientation = CMPhotoCFDictionarySetInt(a5, @"Orientation", cf[0]);
    v20 = HEIFOrientation;
  }

  if (v20)
  {
    goto LABEL_113;
  }

  OUTLINED_FUNCTION_24_2(HEIFOrientation, *v24, @"PixelInformation");
  if (a3)
  {
    if (a3 != 2)
    {
      v44 = 0;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_24_2(v43, *MEMORY[0x1E69722B8], @"AuxiliaryImageType");
    OUTLINED_FUNCTION_24_2(v68, *MEMORY[0x1E69722B0], @"AuxiliaryImageSubType");
    goto LABEL_110;
  }

  v46 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v46)
  {
LABEL_115:
    Mutable = 0;
    v59 = 0;
    v20 = 4294954514;
    goto LABEL_116;
  }

  v12 = v46(a2, &v99);
  if (v12)
  {
    goto LABEL_112;
  }

  v47 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v47)
  {
    goto LABEL_115;
  }

  v12 = v47(a2, &v98);
  if (v12)
  {
    goto LABEL_112;
  }

  v48 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v48)
  {
    goto LABEL_115;
  }

  v12 = v48(a2, &v97);
  if (v12)
  {
    goto LABEL_112;
  }

  v49 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v49)
  {
    goto LABEL_115;
  }

  v12 = v49(a2, &v95);
  if (v12)
  {
    goto LABEL_112;
  }

  v50 = *(CMBaseObjectGetVTable() + 16);
  if (*v50 < 2uLL)
  {
    goto LABEL_115;
  }

  v51 = v50[13];
  if (!v51)
  {
    goto LABEL_115;
  }

  v12 = v51(a2, &v94);
  if (v12)
  {
    goto LABEL_112;
  }

LABEL_110:
  v69 = a3 == 2;
  v70 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v70)
  {
    goto LABEL_115;
  }

  v12 = v70(a2, &v96);
  v44 = v69;
  if (v12)
  {
    goto LABEL_112;
  }

LABEL_45:
  if (*(a1 + 49))
  {
    Mutable = 0;
    goto LABEL_81;
  }

  LODWORD(v93) = v44;
  Mutable = CFArrayCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v59 = 0;
    goto LABEL_181;
  }

  if (v99 >= 1)
  {
    v52 = 0;
    v53 = MEMORY[0x1E695E9D8];
    v54 = MEMORY[0x1E695E9E8];
    do
    {
      cf[0] = 0;
      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v55 = OUTLINED_FUNCTION_25_6();
        v57 = v56(v55, v52);
        if (v57)
        {
          v20 = v57;
          v58 = 0;
        }

        else
        {
          v58 = CFDictionaryCreateMutable(*(a1 + 8), 0, v53, v54);
          if (v58)
          {
            v20 = _copyPictureReaderToImageDescription(a1, cf[0], 1, v52, v58);
            if (!v20)
            {
              CFArrayAppendValue(Mutable, v58);
            }
          }

          else
          {
            v20 = 4294950305;
          }
        }
      }

      else
      {
        v58 = 0;
        v20 = 4294954514;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v58)
      {
        CFRelease(v58);
      }

      ++v52;
    }

    while (v52 < v99);
    if (v20)
    {
LABEL_114:
      v59 = 0;
      goto LABEL_116;
    }
  }

  if (CFArrayGetCount(Mutable) >= 1)
  {
    CFDictionarySetValue(a5, @"ThumbnailImage", Mutable);
  }

  v44 = v93;
LABEL_81:
  if (*(a1 + 50))
  {
    v59 = 0;
    goto LABEL_104;
  }

  LODWORD(v93) = v44;
  v59 = CFArrayCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9C0]);
  if (!v59)
  {
LABEL_181:
    v20 = 4294950305;
    goto LABEL_116;
  }

  if (v98 >= 1)
  {
    v60 = 0;
    v61 = MEMORY[0x1E695E9E8];
    do
    {
      cf[0] = 0;
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v62 = OUTLINED_FUNCTION_25_6();
        v64 = v63(v62, v60);
        if (v64)
        {
          v20 = v64;
          v65 = 0;
        }

        else
        {
          v65 = CFDictionaryCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9D8], v61);
          if (v65)
          {
            v20 = _copyPictureReaderToImageDescription(a1, cf[0], 2, v60, v65);
            if (!v20)
            {
              CFArrayAppendValue(v59, v65);
            }
          }

          else
          {
            v20 = 4294950305;
          }
        }
      }

      else
      {
        v65 = 0;
        v20 = 4294954514;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v65)
      {
        CFRelease(v65);
      }

      ++v60;
    }

    while (v60 < v98);
    if (v20)
    {
      goto LABEL_116;
    }
  }

  if (CFArrayGetCount(v59) >= 1)
  {
    CFDictionarySetValue(a5, @"Auxiliary", v59);
  }

  v44 = v93;
LABEL_104:
  if (*(a1 + 48))
  {
    v66 = 0;
LABEL_106:
    if ((v44 | v66) != 1 || (_copyMetadataTypeFromReaderToDictionary(a2, *(a1 + 8), v96, 1, a5), !v67))
    {
      v67 = CMPhotoCFDictionarySetInt(a5, @"ImageHandle", a4);
    }

    goto LABEL_108;
  }

  LODWORD(v93) = v44;
  _copyMetadataTypeFromReaderToDictionary(a2, *(a1 + 8), v97, 0, a5);
  if (v67 || (_copyMetadataTypeFromReaderToDictionary(a2, *(a1 + 8), v95, 2, a5), v67) || (_copyMetadataTypeFromReaderToDictionary(a2, *(a1 + 8), v94, 4, a5), v67))
  {
LABEL_108:
    v20 = v67;
    goto LABEL_116;
  }

  v72 = *(a1 + 8);
  v109 = 0;
  v110[0] = 0;
  v107 = 0;
  v108 = 0;
  v73 = FigPictureReaderGetFigBaseObject();
  v74 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v74)
  {
    v20 = 4294954514;
LABEL_136:
    v90 = 0;
    v92 = 0;
LABEL_137:
    v76 = 0;
    v77 = 0;
    goto LABEL_161;
  }

  v75 = v74(v73, *MEMORY[0x1E6972370], 0, v110);
  if (v75 == -12783)
  {
    v90 = 0;
    v92 = 0;
LABEL_158:
    v76 = 0;
    goto LABEL_159;
  }

  v20 = v75;
  if (v75)
  {
    goto LABEL_136;
  }

  *cf = 0u;
  v106 = 0u;
  v78 = OUTLINED_FUNCTION_25_6();
  ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v78, 0, v79, 0);
  if (ImageGeometryFromPictureReader || (v104 = 1, ImageGeometryFromPictureReader = CMPhotoPictureReaderGetHEIFOrientation(a2, 0, &v104), ImageGeometryFromPictureReader))
  {
    v20 = ImageGeometryFromPictureReader;
    goto LABEL_136;
  }

  v81 = FigCFDictionaryGetValue();
  if (!v81 || (v92 = CFRetain(v81)) == 0)
  {
    v92 = 0;
    v76 = 0;
    goto LABEL_150;
  }

  v76 = CFDictionaryCreateMutable(v72, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v76)
  {
    v90 = 0;
    v77 = 0;
LABEL_185:
    v20 = 4294950305;
    goto LABEL_161;
  }

  *value = v106;
  IntrinsicsMatrixFromFigIntrinsicsDict = CMPhotoFlipSizeIfNeeded(v104, v106, *(&v106 + 1), value);
  if (IntrinsicsMatrixFromFigIntrinsicsDict || (IntrinsicsMatrixFromFigIntrinsicsDict = CMPhotoCreateIntrinsicsMatrixFromFigIntrinsicsDict(v72, v92, v106, *(&v106 + 1), value[0], value[1], 0, &v109), IntrinsicsMatrixFromFigIntrinsicsDict))
  {
    v20 = IntrinsicsMatrixFromFigIntrinsicsDict;
    v90 = v76;
    goto LABEL_137;
  }

  CFDictionarySetValue(v76, @"Intrinsics_Matrix", v109);
  CFDictionarySetValue(v76, @"Intrinsics_Storage", v92);
  v83 = cmpweak_kFigCameraIntrinsics_OfficialBox();
  v84 = CFDictionaryGetValue(v92, v83);
  if (v84)
  {
    CFDictionarySetValue(v76, @"Intrinsics_OfficialBox", v84);
  }

  CFDictionaryAddValue(a5, @"Intrinsics", v76);
LABEL_150:
  v90 = v76;
  v85 = FigCFDictionaryGetValue();
  if (!v85)
  {
    goto LABEL_158;
  }

  v76 = CFRetain(v85);
  if (!v76)
  {
LABEL_159:
    v77 = 0;
LABEL_160:
    v20 = 0;
    goto LABEL_161;
  }

  v77 = CFDictionaryCreateMutable(v72, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v77)
  {
    goto LABEL_185;
  }

  v86 = _createPositionAndRotationFromFigExtrinsics(v72, v76, &v108, &v107, 0, 0);
  if (!v86)
  {
    CFDictionarySetValue(v77, @"Extrinsics_Position", v108);
    CFDictionarySetValue(v77, @"Extrinsics_Rotation", v107);
    CFDictionarySetValue(v77, @"Extrinsics_Storage", v76);
    v87 = cmpweak_kFigCameraExtrinsics_OfficialBox();
    v88 = CFDictionaryGetValue(v76, v87);
    if (v88)
    {
      CFDictionarySetValue(v77, @"Extrinsics_OfficialBox", v88);
    }

    CFDictionaryAddValue(a5, @"Extrinsics", v77);
    goto LABEL_160;
  }

  v20 = v86;
LABEL_161:
  if (v109)
  {
    CFRelease(v109);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (v110[0])
  {
    CFRelease(v110[0]);
  }

  if (!v20)
  {
    v66 = *(a1 + 48) == 0;
    v44 = v93;
    goto LABEL_106;
  }

LABEL_116:
  if (number)
  {
    CFRelease(number);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  return v20;
}

void _copyPropertyFromReaderToDictionary(const void *a1, uint64_t a2, const void *a3, __CFDictionary *a4)
{
  value = 0;
  v7 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(FigBaseObject, a2, v7, &value);
    v11 = value;
    if (!v10)
    {
      if (!value)
      {
        return;
      }

      CFDictionarySetValue(a4, a3, value);
      v11 = value;
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void _copyMetadataTypeFromReaderToDictionary(uint64_t a1, CFAllocatorRef allocator, uint64_t a3, int a4, __CFDictionary *a5)
{
  v29 = 0;
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (a3 < 1)
    {
LABEL_30:
      switch(a4)
      {
        case 0:
          if (CFArrayGetCount(Mutable) >= 1)
          {
            v28 = &kCMPhotoCompressionContainerDescription_EXIFMetadata;
            goto LABEL_40;
          }

          break;
        case 1:
          if (CFArrayGetCount(Mutable) >= 1)
          {
            v28 = &kCMPhotoCompressionContainerDescription_XMPMetadata;
            goto LABEL_40;
          }

          break;
        case 2:
          if (CFArrayGetCount(Mutable) >= 1)
          {
            v28 = &kCMPhotoCompressionContainerDescription_DebugMetadata;
            goto LABEL_40;
          }

          break;
        case 4:
          if (CFArrayGetCount(Mutable) >= 1)
          {
            v28 = &kCMPhotoCompressionContainerDescription_CustomMetadata;
LABEL_40:
            CFDictionarySetValue(a5, *v28, Mutable);
          }

          break;
        default:
          break;
      }
    }

    else
    {
      v10 = 0;
      while (2)
      {
        switch(a4)
        {
          case 0:
            v11 = *(CMBaseObjectGetVTable() + 16);
            if (*v11 >= 3uLL && v11[15])
            {
              v12 = OUTLINED_FUNCTION_16_7();
              v14 = v13(v12);
              goto LABEL_20;
            }

            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v19 = OUTLINED_FUNCTION_16_7();
              v14 = v20(v19);
              goto LABEL_20;
            }

            break;
          case 1:
            v15 = *(CMBaseObjectGetVTable() + 16);
            if (*v15 >= 3uLL && v15[16])
            {
              goto LABEL_12;
            }

            if (*(*(CMBaseObjectGetVTable() + 16) + 72))
            {
              goto LABEL_19;
            }

            break;
          case 2:
            if (*(*(CMBaseObjectGetVTable() + 16) + 88))
            {
LABEL_19:
              OUTLINED_FUNCTION_6_26();
              v21 = OUTLINED_FUNCTION_13_18();
              v14 = v22(v21);
              goto LABEL_20;
            }

            break;
          case 4:
            v18 = *(CMBaseObjectGetVTable() + 16);
            if (*v18 >= 2uLL && v18[14])
            {
LABEL_12:
              OUTLINED_FUNCTION_6_26();
              v16 = OUTLINED_FUNCTION_13_18();
              v14 = v17(v16);
LABEL_20:
              if (!v14)
              {
                goto LABEL_21;
              }
            }

            break;
          default:
LABEL_21:
            if (CMPhotoPictureReaderCreateContiguousDataFromChunks(allocator, 0, 0, 0, 0, 0, 0, 0, &v29) || !v29)
            {
              break;
            }

            if (a4 != 4)
            {
              CFArrayAppendValue(Mutable, v29);
LABEL_27:
              if (v29)
              {
                CFRelease(v29);
                v29 = 0;
              }

              if (a3 != ++v10)
              {
                continue;
              }

              goto LABEL_30;
            }

            v23 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v23)
            {
              v24 = v23;
              CFArrayAppendValue(Mutable, v23);
              CFRelease(v24);
              v25 = OUTLINED_FUNCTION_26_4();
              CFDictionarySetValue(v25, v26, v27);
              goto LABEL_27;
            }

            break;
        }

        break;
      }
    }
  }

  free(0);
  free(0);
  if (v29)
  {
    CFRelease(v29);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_33_3();
}

uint64_t _addGenericListToWriter(uint64_t a1, uint64_t (*a2)(uint64_t, CFIndex, const void *, void **), const __CFArray *a3, __CFArray **a4)
{
  value = 0;
  Mutable = CFArrayCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v9 = Mutable;
  v10 = 0;
  if (!a3)
  {
    goto LABEL_4;
  }

LABEL_3:
  for (i = CFArrayGetCount(a3); v10 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v10);
    v13 = a2(a1, v10, ValueAtIndex, &value);
    if (v13)
    {
      v14 = v13;
      goto LABEL_13;
    }

    CFArrayAppendValue(v9, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    ++v10;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_4:
    ;
  }

  v14 = 0;
  if (a4)
  {
    *a4 = v9;
    v9 = 0;
  }

LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v14;
}

void ___addGroupsForCurrentPosition_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return;
  }

  v24 = 0;
  if (!CMPhotoCFDictionaryGetLongIfPresent())
  {
    goto LABEL_31;
  }

  if (v24 > *(a1 + 40))
  {
    v4 = *(a1 + 48);
    if (v4 == 0xFFFFFFFFLL || v24 <= v4)
    {
      key = 0;
      if (CMPhotoCFDictionaryGetLongIfPresent())
      {
        v22 = 0;
        if (CMPhotoCFDictionaryGetInt32IfPresent())
        {
          v6 = CFDictionaryGetValue(a2, @"ImageList");
          if (v6)
          {
            v7 = v6;
            v8 = CFGetTypeID(v6);
            if (v8 == CFArrayGetTypeID() && CFArrayGetCount(v7) > 0)
            {
              value = 0;
              v9 = CMPhotoHEIFFileWriterAddGroup(**(a1 + 56), v22, &value);
              OUTLINED_FUNCTION_0_23(v9);
              if (v10)
              {
                return;
              }

              v11 = CMPhotoCFDictionarySetSize(a2, @"GroupID", value);
              OUTLINED_FUNCTION_0_23(v11);
              if (v12)
              {
                return;
              }

              v13 = CFDictionaryGetValue(a2, @"DisparityAdjustment");
              v14 = CFDictionaryGetValue(a2, @"StereoAggressors");
              v15 = CFDictionaryGetValue(a2, @"MonoImageLocation");
              v16 = v15;
              if (v13 || v14 || v15)
              {
                Mutable = CFDictionaryCreateMutable(*(*(a1 + 56) + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!Mutable)
                {
                  *(*(*(a1 + 32) + 8) + 24) = -16991;
                  return;
                }

                v17 = Mutable;
                if (v13)
                {
                  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6973978], v13);
                }

                if (v14)
                {
                  CFDictionaryAddValue(v17, *MEMORY[0x1E6973990], v14);
                }

                if (v16)
                {
                  CFDictionaryAddValue(v17, *MEMORY[0x1E6973980], v16);
                }

                v19 = CMPhotoHEIFFileWriterAddGroupProperties(**(a1 + 56));
                OUTLINED_FUNCTION_0_23(v19);
                if (v20)
                {
LABEL_29:
                  CFRelease(v17);
                  return;
                }
              }

              else
              {
                v17 = 0;
              }

              CFDictionaryAddValue(*(a1 + 64), key, value);
              if (!v17)
              {
                return;
              }

              goto LABEL_29;
            }
          }
        }
      }

LABEL_31:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
      *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }
}

uint64_t _createItemPropertiesFromIntrinsicsAndExtrinsics(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __CFDictionary **a7)
{
  if (!a7 || !(a5 | a6))
  {
    return 4294950306;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v13 = Mutable;
  v36 = a2;
  v37 = a3;
  v14 = CMPhotoFlipSizeIfNeeded(a4, a2, a3, &v36);
  if (v14)
  {
    goto LABEL_32;
  }

  v35 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  Value = FigCFDictionaryGetValue();
  v16 = FigCFDictionaryGetValue();
  v17 = v16;
  if (v16 && Value)
  {
    cf = 0;
    if (CMPhotoCreateIntrinsicsMatrixFromFigIntrinsicsDict(a1, v16, a2, a3, v36, v37, 0, &cf))
    {
      goto LABEL_15;
    }

    v18 = FigCFEqual();
    if (cf)
    {
      CFRelease(cf);
    }

    if (!v18)
    {
LABEL_15:
      cf = 0;
      CMPhotoCreateFigIntrinsicsDictFromIntrinsicsMatrix(a1, Value, a2, a3, a4, v35, &cf);
      if (!v14)
      {
        CFDictionarySetValue(v13, *MEMORY[0x1E6973970], cf);
        CFRelease(cf);
        goto LABEL_17;
      }

LABEL_32:
      FigExtrinsicsDictFromExtrinsics = v14;
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  if (v16)
  {
LABEL_13:
    CFDictionarySetValue(v13, *MEMORY[0x1E6973970], v17);
    goto LABEL_17;
  }

  if (Value)
  {
    goto LABEL_15;
  }

LABEL_17:
  FigCFDictionaryGetBooleanIfPresent();
  v19 = FigCFDictionaryGetValue();
  v20 = FigCFDictionaryGetValue();
  v21 = FigCFDictionaryGetValue();
  if (v21)
  {
    v22 = v21;
    if (!(v19 | v20))
    {
      goto LABEL_24;
    }

    cf = 0;
    v23 = OUTLINED_FUNCTION_27();
    PositionAndRotationFromFigExtrinsics = _createPositionAndRotationFromFigExtrinsics(v23, v24, v25, v26, v27, v28);
    if (PositionAndRotationFromFigExtrinsics)
    {
      FigExtrinsicsDictFromExtrinsics = PositionAndRotationFromFigExtrinsics;
      goto LABEL_26;
    }

    v31 = FigCFEqual() != 0;
    v32 = v31 & (FigCFEqual() != 0);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v32)
    {
LABEL_24:
      CFDictionarySetValue(v13, *MEMORY[0x1E6973968], v22);
      FigExtrinsicsDictFromExtrinsics = 0;
      goto LABEL_29;
    }
  }

  FigExtrinsicsDictFromExtrinsics = 0;
LABEL_26:
  if (v19 | v20)
  {
    cf = 0;
    FigExtrinsicsDictFromExtrinsics = CMPhotoCreateFigExtrinsicsDictFromExtrinsics(a1, v19, v20, 0, 0, &cf);
    if (!FigExtrinsicsDictFromExtrinsics)
    {
      CFDictionarySetValue(v13, *MEMORY[0x1E6973968], cf);
      CFRelease(cf);
      goto LABEL_29;
    }

LABEL_33:
    CFRelease(v13);
    return FigExtrinsicsDictFromExtrinsics;
  }

LABEL_29:
  *a7 = v13;
  return FigExtrinsicsDictFromExtrinsics;
}

uint64_t _updateOrRemoveOrientationForImages(__CFDictionary *a1, CFArrayRef theArray, const __CFArray *a3, int a4, int a5, int a6)
{
  if (a6)
  {
    if (a1)
    {
      CFDictionaryRemoveValue(a1, @"Orientation");
    }

    result = _removeOrientation(theArray);
    if (!result)
    {

      return _removeOrientation(a3);
    }
  }

  else if (a5)
  {
    if (a1)
    {
      CMPhotoCFDictionarySetInt(a1, @"Orientation", a4);
    }

    result = _updateOrientation(theArray, a4);
    if (!result)
    {

      return _updateOrientation(a3, a4);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t _hasMetadataChangedForImageHandle(const __CFArray *a1, const __CFArray *a2, uint64_t a3, const void *a4, void *a5)
{
  v7 = a3;
  v13 = 0;
  theDict = 0;
  result = _getImageWithHandleFromDescriptionList(a1, a3, &theDict);
  if (!result)
  {
    result = _getImageWithHandleFromDescriptionList(a2, v7, &v13);
    if (!result)
    {
      CFDictionaryGetValue(theDict, a4);
      Value = CFDictionaryGetValue(v13, a4);
      v11 = FigCFEqual();
      result = 0;
      if (v11)
      {
        v12 = *MEMORY[0x1E695E738];
      }

      else
      {
        v12 = Value;
      }

      *a5 = v12;
    }
  }

  return result;
}

uint64_t _getImageWithHandleFromDescriptionList(CFArrayRef theArray, int a2, void *a3)
{
  v6 = 0;
  while (1)
  {
    v7 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v6 >= v7)
    {
      break;
    }

    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (!ValueAtIndex)
    {
      return 4294950306;
    }

    v9 = ValueAtIndex;
    v10 = CFGetTypeID(ValueAtIndex);
    if (v10 != CFDictionaryGetTypeID() || !CMPhotoCFDictionaryGetIntIfPresent())
    {
      return 4294950306;
    }

    ++v6;
    if (a2 == -1)
    {
      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_12:
  if (v9)
  {
    result = 0;
    if (a3)
    {
      *a3 = v9;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
  }

  return result;
}

const void *_finishAsyncEncoding(void *a1)
{
  v2 = CMPhotoCompressionSessionDisposeCompressionPluginsForSequenceAsyncEncoding(a1);
  if (!v2)
  {
    v3 = a1[24];
    if (v3)
    {
      if (a1[25])
      {
        if (a1[26])
        {
          v4 = 0;
          do
          {
            FigSemaphoreWaitRelative();
            ++v4;
          }

          while (v4 < a1[26]);
          v3 = a1[24];
        }

        a1[26] = 0;
      }

      dispatch_barrier_sync(v3, &__block_literal_global_22);
    }
  }

  return v2;
}

uint64_t _compressMainImage(uint64_t a1, const __CFDictionary *a2, opaqueCMSampleBuffer *a3, int a4, uint64_t *a5, uint64_t a6)
{
  v19[0] = 0;
  v19[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a3, a2, v19);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  SourceDimensions = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  v12 = 0;
  v13 = MEMORY[0x1E695FF58];
  if (!a3 || !a4)
  {
    goto LABEL_8;
  }

  v12 = a3 + rand();
  OUTLINED_FUNCTION_9_1();
  if (v14)
  {
    kdebug_trace();
LABEL_8:
    if (*v13 == 1)
    {
      kdebug_trace();
    }
  }

  v15 = OUTLINED_FUNCTION_18_9();
  v17 = _compressX_0(v15, v16, a3, 0, 0, 0, 0, 1u, a4, v12, a5, a6);
  OUTLINED_FUNCTION_9_1();
  if (v14)
  {
    kdebug_trace();
  }

  return v17;
}

uint64_t _compressX_0(uint64_t a1, CFDictionaryRef theDict, const __CFArray *a3, int a4, int a5, unsigned int a6, uint64_t a7, unsigned int a8, char a9, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  cf = 0;
  if (!*(a1 + 104))
  {
    if (theDict)
    {
      if (a4 == 1)
      {
        Value = CFDictionaryGetValue(theDict, @"Tiling");
        v80[0] = 0;
        CMPhotoCFDictionaryGetInt32IfPresent();
        if (Value)
        {
          v17 = CFGetTypeID(Value);
          if (v17 != CFBooleanGetTypeID() || CFBooleanGetValue(Value))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_16();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }

      v18 = CFDictionaryGetValue(theDict, @"DryRun");
      if ((a3 != 0) != (v18 == 0))
      {
        return 4294950306;
      }

      v19 = v18;
      v20 = OUTLINED_FUNCTION_27();
      v22 = CFDictionaryGetValue(v20, v21);
      v29 = v22 ? 0 : v19;
      if (v19 && v22)
      {
        return 4294950306;
      }

      if (v29)
      {
        return OUTLINED_FUNCTION_12_21(v22, v23, v24, v25, v29, v26, v27, v28, v62, v64, v65, v66, v67, v68, v69, v12, v70, a6, a7, v73, a8, a11);
      }

      if (v22)
      {
        v85 = 0;
        v86 = -1;
        v83 = 0;
        v84 = 0;
        v82 = 0;
        bzero(v80, 0x168uLL);
        v30 = OUTLINED_FUNCTION_18_9();
        PropertiesForImage = CMPhotoCompressionSessionParseOptions(v30, v31, 0, 0, v32, v33, v34, v35, v36);
        if (PropertiesForImage)
        {
          return PropertiesForImage;
        }

        v38 = OUTLINED_FUNCTION_27();
        v40 = CFDictionaryGetValue(v38, v39);
        if (v40)
        {
          v41 = v40;
          v79 = 0;
          if (CMPhotoCFDictionaryGetInt32IfPresent())
          {
            v42 = CFDictionaryGetValue(v41, @"Metadata");
            if (!a3 || (v43 = v42, CFArrayGetCount(a3) <= 0))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_2_16();
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }

            v78 = -1;
            OUTLINED_FUNCTION_17();
            if (FigCFArrayGetInt32AtIndex())
            {
              CMPhotoCFDictionaryGetSizeIfPresent(theDict, @"BitDepth", &v85);
              v44 = CFDictionaryGetValue(theDict, @"ColorSpace");
              v45 = v44;
              if (!v44 || (v46 = CFGetTypeID(v44), v46 == CGColorSpaceGetTypeID()))
              {
                FigCFDictionaryGetValueIfPresent();
                FigCFDictionaryGetValueIfPresent();
                FigCFDictionaryGetValueIfPresent();
                v77 = 0uLL;
                PropertiesForImage = CMPhotoHEIFFileWriterGetPropertiesForImage(*(a1 + 88), v78, &v77, 0);
                if (!PropertiesForImage)
                {
                  v76 = 0;
                  PropertiesForImage = CMPhotoHEIFFileWriterGetOrientationTransformsForImage(*(a1 + 88), v78, 0, &v76, 0, 0);
                  if (!PropertiesForImage)
                  {
                    if (v76 == 270 || v76 == 90)
                    {
                      v77 = vextq_s8(v77, v77, 8uLL);
                    }

                    Mutable = CFDictionaryCreateMutable(*(a1 + 96), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (!Mutable)
                    {
                      return 4294950305;
                    }

                    v48 = Mutable;
                    v49 = CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E6972218], v80[39]);
                    if (v49 || v81 != -1 && (v49 = CMPhotoCFDictionarySetInt(v48, *MEMORY[0x1E69721E0], v81), v49))
                    {
                      v51 = v49;
                    }

                    else
                    {
                      *&v63 = v84;
                      *(&v63 + 1) = v83;
                      v50 = CMPhotoHEIFFileWriterAddDerivedImageToCollection(*(a1 + 88), v48, v43, v79, v77.i32[0], v77.i32[2], v85, v45, v63, v82, a3, v79 == 1, &v86);
                      v51 = v50;
                      if (a11)
                      {
                        if (!v50)
                        {
                          *a11 = v86;
                        }
                      }
                    }

                    v52 = v48;
                    goto LABEL_39;
                  }
                }

                return PropertiesForImage;
              }
            }
          }
        }

        return 4294950306;
      }
    }

    v53 = CMPhotoCreatePixelBufferFromImage(*(a1 + 96), a3, &cf);
    v60 = cf;
    if (v53)
    {
      v51 = v53;
      if (!cf)
      {
        return v51;
      }
    }

    else
    {
      v51 = OUTLINED_FUNCTION_12_21(v53, v54, v55, v56, cf, v57, v58, v59, v62, v64, v65, v66, v67, v68, v69, v12, v70, a6, a7, v73, a8, a11);
      v60 = cf;
      if (!cf)
      {
        return v51;
      }
    }

    v52 = v60;
LABEL_39:
    CFRelease(v52);
    return v51;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_5_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _encodePixelBufferForIndex_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  HIDWORD(v261) = a8;
  v14 = a6;
  v15 = a5;
  BooleanIfPresent = a4;
  v282 = a3;
  LODWORD(v17) = v12;
  LODWORD(v18) = a2;
  cf = a1;
  v366 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_7_25(822280345, a2, a3, a4, a5, a6, a7, a8, v230, v233, v236, v240, v243, v246, v249, v252, v255, v257, v259, v260, v261, v262, v264, v265, v267, v268, v270, v271, v272, v273, v275, v276, v278, v280, a3, v284, v285, v287, theDict, allocator, a1);
  }

  allocatora = CFGetAllocator(cf);
  v19 = CFGetTypeID(v15);
  TypeID = CMFormatDescriptionGetTypeID();
  formatDescriptionOut = 0;
  v364 = 0;
  LODWORD(v286) = v19 == TypeID;
  v361 = 0;
  v362 = 0;
  v359 = 0;
  Mutable = 0;
  v357 = 0;
  v358 = 0;
  v353 = 0;
  v354 = &v353;
  v355 = 0x2000000000;
  v356 = 0;
  v349 = 0;
  v350 = &v349;
  v351 = 0x2000000000;
  v352 = 0;
  if (_allowHEIFAsynchronousEncodeOverride_onceToken != -1)
  {
    dispatch_once(&_allowHEIFAsynchronousEncodeOverride_onceToken, &__block_literal_global_21_0);
  }

  v288 = cf + 11;
  v348 = 0;
  v346 = 0u;
  v347 = 0u;
  v345 = -1;
  v344 = 0;
  v343 = 0uLL;
  v342 = 0;
  v338 = 0;
  v339 = &v338;
  v340 = 0x18000000000;
  bzero(&v341, 0x168uLL);
  if (BooleanIfPresent)
  {
    v21 = CFRetain(BooleanIfPresent);
  }

  else
  {
    v21 = 0;
  }

  v274 = a10;
  v263 = a7;
  if (v19 == TypeID)
  {
    HIDWORD(v259) = CMFormatDescriptionGetMediaSubType(v15);
    v337 = 0;
    BooleanIfPresent = CMPhotoCFDictionaryGetBooleanIfPresent();
    CleanAperture = CMVideoFormatDescriptionGetCleanAperture(v15, 1u);
    if (v18 == 1 && BooleanIfPresent)
    {
      *v322 = 320;
      pixelBuffer[0] = 0uLL;
      CMPhotoPixelBufferConstrainSizeToMaxSideLength(vcvtad_u64_f64(CleanAperture.size.width), vcvtad_u64_f64(CleanAperture.size.height), 0x140uLL, 0, 0, 0, 1, pixelBuffer, 0, 0);
      v346 = 0uLL;
      v347 = vcvtq_f64_u64(pixelBuffer[0]);
      UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(HIDWORD(v259));
    }

    else
    {
      *&v346 = CleanAperture.origin.x;
      *(&v346 + 1) = *&CleanAperture.origin.y;
      UncompressedPixelFormatFromCompressedPixelFormat = HIDWORD(v259);
      v347.f64[0] = CleanAperture.size.width;
      v347.f64[1] = CleanAperture.size.height;
    }
  }

  else
  {
    v354[3] = v15;
    UncompressedPixelFormatFromCompressedPixelFormat = CVPixelBufferGetPixelFormatType(v15);
    v23 = OUTLINED_FUNCTION_22_6();
    v15 = 0;
    *&v346 = CMPhotoGetPixelBufferCLAPAsRect(v23);
    *(&v346 + 1) = v24;
    v347.f64[0] = v25;
    v347.f64[1] = v26;
    HIDWORD(v259) = UncompressedPixelFormatFromCompressedPixelFormat;
  }

  v348 = UncompressedPixelFormatFromCompressedPixelFormat;
  v27 = OUTLINED_FUNCTION_22_6();
  CVPixelBufferRetain(v27);
  if (!CMPhotoCompressionSessionFormatIsSupportedForImageType(UncompressedPixelFormatFromCompressedPixelFormat, v18, v14))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v230, v233, v236);
    goto LABEL_297;
  }

  v28 = OUTLINED_FUNCTION_30_4();
  if (CMPhotoCompressionSessionParseOptions(cf, v21, v18, 0, v29 + 24, v28, v30, v31, v32))
  {
LABEL_297:
    OUTLINED_FUNCTION_14_17();
    HIDWORD(v275) = 0;
LABEL_298:
    OUTLINED_FUNCTION_20_9();
    goto LABEL_335;
  }

  theDicta = v21;
  OUTLINED_FUNCTION_23_5(v339);
  v33 = OUTLINED_FUNCTION_30_4();
  if (CMPhotoCompressionSessionVerifyOptions(pixelBuffer, v18, v286, UncompressedPixelFormatFromCompressedPixelFormat, v33, v34, v35, v36) || CMPhotoCompressionSessionHandleOrientationAndTransform(cf, (v339 + 3), v286, &v342, &v346, UncompressedPixelFormatFromCompressedPixelFormat, v354 + 3, v37))
  {
    OUTLINED_FUNCTION_14_17();
    HIDWORD(v275) = 0;
    OUTLINED_FUNCTION_20_9();
LABEL_312:
    v21 = theDicta;
    goto LABEL_335;
  }

  if (*(v339 + 279))
  {
    v38 = 1;
  }

  else
  {
    v38 = *(v339 + 280) != 0;
  }

  HIDWORD(v275) = v38;
  if (!*(v339 + 24) && v19 != TypeID && CMPhotoCompressionSessionGetDerivedCodecForImage(v288, v18, -1, v282, *(v339 + 7), UncompressedPixelFormatFromCompressedPixelFormat, v339 + 7))
  {
    OUTLINED_FUNCTION_14_17();
    goto LABEL_298;
  }

  HIDWORD(v286) = v14;
  v258 = v12;
  v281 = TypeID;
  if (v18 == 2)
  {
    BooleanIfPresent = v339;
    if (!*(v339 + 32))
    {
      v39 = v339[40];
      if (v39 && !*(v339 + 24))
      {
        *(v339 + 7) = 1785750887;
      }

      v40 = UncompressedPixelFormatFromCompressedPixelFormat == 1278226742 || UncompressedPixelFormatFromCompressedPixelFormat == 1278226736;
      if (v40)
      {
        if (!v39 && *(BooleanIfPresent + 28) != 1785750887)
        {
          goto LABEL_45;
        }
      }

      else if (!v39)
      {
        goto LABEL_45;
      }

      v41 = *(BooleanIfPresent + 40);
      if (v41)
      {
        CFRelease(v41);
        *(BooleanIfPresent + 40) = 0;
      }

      Int = CMPhotoCFNumberCreateInt(5);
      *(BooleanIfPresent + 40) = Int;
      if (Int)
      {
        *(BooleanIfPresent + 32) = 1;
        LODWORD(v17) = v21;
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (MutableCopy)
        {
          BooleanIfPresent = MutableCopy;
          CMPhotoCFDictionarySetInt(MutableCopy, @"QualityControllerType", 5);
          if (v21)
          {
            CFRelease(v21);
          }

          theDicta = BooleanIfPresent;
        }
      }
    }
  }

LABEL_45:
  if (CMPhotoGetDestinationPixelFormatFromOptions(theDicta, *(v339 + 7), UncompressedPixelFormatFromCompressedPixelFormat, &v348) || CMPhotoCompressionSessionCreatePluginOptions((v339 + 3), allocatora, *(cf + 64), *(cf + 65), 0, v18, v348, &v364))
  {
    goto LABEL_311;
  }

  v277 = v19;
  if (v18 != 2)
  {
    v45 = 0;
    goto LABEL_145;
  }

  v322[0] = 0;
  if (FigCFDictionaryGetIntIfPresent())
  {
    v44 = v322[0] == 5;
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  if (v339[40] && (v45 & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    BooleanIfPresent = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v230, v233, v236);
LABEL_328:
    TypeID = v281;
    v21 = theDicta;
LABEL_329:
    v264 = 0;
    UncompressedPixelFormatFromCompressedPixelFormat = 0;
    v272 = 0;
    goto LABEL_330;
  }

  if (v19 == TypeID)
  {
    if ((UncompressedPixelFormatFromCompressedPixelFormat - 1278226488) <= 0x30 && ((1 << (UncompressedPixelFormatFromCompressedPixelFormat - 56)) & 0x1400000000001) != 0 || (UncompressedPixelFormatFromCompressedPixelFormat - 1278226736) <= 6 && ((1 << (UncompressedPixelFormatFromCompressedPixelFormat - 48)) & 0x45) != 0 || (UncompressedPixelFormatFromCompressedPixelFormat != 825306677 ? (v46 = UncompressedPixelFormatFromCompressedPixelFormat == 825437747) : (v46 = 1), !v46 ? (v47 = UncompressedPixelFormatFromCompressedPixelFormat == 1380410945) : (v47 = 1), !v47 ? (v48 = UncompressedPixelFormatFromCompressedPixelFormat == 1380411457) : (v48 = 1), !v48 ? (v49 = UncompressedPixelFormatFromCompressedPixelFormat == 1647719528) : (v49 = 1), !v49 ? (v50 = UncompressedPixelFormatFromCompressedPixelFormat == 1651926376) : (v50 = 1), !v50 ? (v51 = UncompressedPixelFormatFromCompressedPixelFormat == 1717855600) : (v51 = 1), !v51 ? (v52 = UncompressedPixelFormatFromCompressedPixelFormat == 1717856627) : (v52 = 1), !v52 ? (v53 = UncompressedPixelFormatFromCompressedPixelFormat == 1751410032) : (v53 = 1), !v53 ? (v54 = UncompressedPixelFormatFromCompressedPixelFormat == 1751411059) : (v54 = 1), !v54 ? (v55 = UncompressedPixelFormatFromCompressedPixelFormat == 1932996149) : (v55 = 1), !v55 ? (v56 = UncompressedPixelFormatFromCompressedPixelFormat == 1751527984) : (v56 = 1), v56))
    {
      if (v45)
      {
        UncompressedPixelFormatFromCompressedPixelFormat = 1278226742;
      }

      else
      {
        UncompressedPixelFormatFromCompressedPixelFormat = 1278226488;
      }

      v348 = UncompressedPixelFormatFromCompressedPixelFormat;
    }

    if (v14 != 4)
    {
      goto LABEL_144;
    }

    if (theDicta)
    {
      Value = CFDictionaryGetValue(theDicta, @"AuxiliaryImageCustomTypeURN");
      if (Value)
      {
        v91 = Value;
        v17 = CFGetTypeID(Value);
        if (v17 == CFStringGetTypeID())
        {
LABEL_143:
          v362 = CFRetain(v91);
          goto LABEL_144;
        }
      }

      goto LABEL_325;
    }

LABEL_331:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    BooleanIfPresent = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v19 = v277;
    TypeID = v281;
    v21 = 0;
    goto LABEL_329;
  }

  v57 = *(v339 + 7);
  if (v57 == 1936484717)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      BooleanIfPresent = 4294950305;
      goto LABEL_327;
    }

    v58 = FigCFDictionarySetInt();
    if (v58)
    {
      goto LABEL_326;
    }

    v58 = FigCFDictionarySetInt();
    if (v58)
    {
      goto LABEL_326;
    }

    v59 = OUTLINED_FUNCTION_22_6();
    UncompressedPixelFormatFromCompressedPixelFormat = CVPixelBufferGetPixelFormatType(v59);
    v348 = UncompressedPixelFormatFromCompressedPixelFormat;
  }

  else
  {
    pixelBuffer[0].i64[0] = 0;
    BitDepth = CMPhotoCompressionSessionGetBitDepth(v348, v57, v45);
    if (!BitDepth)
    {
      goto LABEL_325;
    }

    v61 = BitDepth;
    v62 = v339;
    v63 = *(v339 + 7);
    v64 = BitDepth == 16;
    v65 = v348 == 1278226736;
    if (v348 != 1278226736)
    {
      v64 = 0;
    }

    if (v63 != 1752589105)
    {
      v65 = 0;
    }

    if (v348 == 1278226742)
    {
      v66 = v45;
    }

    else
    {
      v66 = 0;
    }

    v67 = v14 == 5 || v65;
    v68 = v64 | v66;
    if (v63 != 1785750887)
    {
      v68 = 0;
    }

    v69 = v68 | v67;
    if (UncompressedPixelFormatFromCompressedPixelFormat == 1751527984)
    {
      LODWORD(v17) = 1;
    }

    else
    {
      LODWORD(v17) = v69;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_7_25((v70 + 68), v71, v72, v73, v74, v75, v76, v77, v230, v233, v236, v240, v243, v246, v249, v252, v255, v12, v259, v260, v261, v263, v264, v265, v267, v268, v270, v271, v272, a10, v275, v19, v278, TypeID, v282, v284, v286, v288, theDicta, allocatora, cf);
      v62 = v339;
    }

    BooleanIfPresent = CMPhotoCreateCompressionCompatiblePixelBufferWithAuxType(v354[3], cf[3], SHIDWORD(v286), v61, *(v62 + 320), v17, pixelBuffer, &Mutable);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_7_25((v78 + 69), v79, v80, v81, v82, v83, v84, v85, v230, v233, v236, v240, v243, v246, v249, v252, v255, v258, v259, v260, v261, v263, v264, v265, v267, v268, v270, v271, v272, v274, v275, v277, v278, v281, v282, v284, v286, v288, theDicta, allocatora, cf);
    }

    if (BooleanIfPresent)
    {
      goto LABEL_327;
    }

    v86 = OUTLINED_FUNCTION_22_6();
    if (v86)
    {
      CFRelease(v86);
      v87 = v354;
    }

    v88 = pixelBuffer[0].i64[0];
    v87[3] = pixelBuffer[0].i64[0];
    PixelFormatType = CVPixelBufferGetPixelFormatType(v88);
    UncompressedPixelFormatFromCompressedPixelFormat = PixelFormatType;
    if (*(v339 + 7) != 1785750887)
    {
      v348 = PixelFormatType;
    }
  }

  if (HIDWORD(v286) == 4)
  {
    if (!theDicta)
    {
      goto LABEL_331;
    }

    v90 = CFDictionaryGetValue(theDicta, @"AuxiliaryImageCustomTypeURN");
    if (v90)
    {
      v91 = v90;
      v17 = CFGetTypeID(v90);
      if (v17 == CFStringGetTypeID())
      {
        goto LABEL_143;
      }
    }

LABEL_325:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    v58 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_326:
    BooleanIfPresent = v58;
    goto LABEL_327;
  }

  v92 = CMPhotoCompressionSessionCreateAuxTypeProperties(SHIDWORD(v286), Mutable, v354[3], &v362, &v361);
  if (v92)
  {
    BooleanIfPresent = v92;
LABEL_327:
    v19 = v277;
    goto LABEL_328;
  }

LABEL_144:
  v19 = v277;
LABEL_145:
  pixelBuffer[0].i32[0] = v348;
  BooleanIfPresent = CMPhotoEncoderSupportsPixelFormat(v348, *(v339 + 7), *(v339 + 65), *(v339 + 277), pixelBuffer);
  if (!pixelBuffer[0].i32[0])
  {
    BooleanIfPresent = 1734;
LABEL_310:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v230, v233, v236);
LABEL_311:
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_20_9();
    TypeID = v281;
    goto LABEL_312;
  }

  v94 = v348;
  if (v348 == pixelBuffer[0].i32[0])
  {
    v94 = pixelBuffer[0].i32[0];
  }

  else if (*(v339 + 7) == 1936484717 && *(v339 + 65) == 5)
  {
    CMPhotoPixelFormatIsAGXCompressed(pixelBuffer[0].i32[0]);
    v94 = v348;
  }

  if (BooleanIfPresent)
  {
    LODWORD(v17) = UncompressedPixelFormatFromCompressedPixelFormat != v94;
  }

  else
  {
    LODWORD(v17) = 1;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat != v94 && !BooleanIfPresent)
  {
    BooleanIfPresent = 1759;
    goto LABEL_310;
  }

  v348 = pixelBuffer[0].i32[0];
  if (CMPhotoCompressionSessionDetermineEncodeDimensionsAndTiling(v288, v18, v282, theDicta, SHIDWORD(v286), v362, *(v339 + 96), *(v339 + 97), *(v339 + 25), *(v339 + 26), *(v339 + 27), *(v339 + 28), 0, v286, *(v339 + 7), pixelBuffer[0].i32[0], v339 + 23, &v343, (v339 + 13), &v344))
  {
    goto LABEL_311;
  }

  v334 = *MEMORY[0x1E695F060];
  v335 = v334;
  pixelBuffer[0].i64[0] = 0;
  v96 = *(v339 + 7);
  v40 = v96 == 1785750887;
  v97 = v96 != 1785750887;
  v98 = v40 ? UncompressedPixelFormatFromCompressedPixelFormat : v348;
  v250 = &v357;
  if (CMPhotoCompressionSessionCreatePixelBufferForEncoding(cf, v354[3], v344, v97 & v17, v286, (v339 + 3), v98, v95, v343, *(&v343 + 1), &v335, &v334, v364, pixelBuffer))
  {
    goto LABEL_311;
  }

  v99 = OUTLINED_FUNCTION_22_6();
  if (v99)
  {
    CFRelease(v99);
    v100 = v354;
  }

  v100[3] = pixelBuffer[0].i64[0];
  if (v364)
  {
    if (*(v339 + 32))
    {
      CFDictionaryGetValue(v364, @"QualityControllerType");
      v17 = @"QualityControllerParameters";
      BooleanIfPresent = CFDictionaryGetValue(v364, @"QualityControllerParameters");
      if (CMPhotoQualityControllerNeedsImageAnalysis())
      {
        pixelBuffer[0].i64[0] = 0;
        if (!CMPhotoAnalyzeImageAndCreateUpdatedQualityParameters(allocatora, v354[3], BooleanIfPresent, pixelBuffer, *(v339 + 25), *(v339 + 26), *(v339 + 27), *(v339 + 28)))
        {
          if (pixelBuffer[0].i64[0])
          {
            CFDictionarySetValue(v364, @"QualityControllerParameters", pixelBuffer[0].i64[0]);
            if (pixelBuffer[0].i64[0])
            {
              CFRelease(pixelBuffer[0].i64[0]);
            }
          }

          goto LABEL_170;
        }

        goto LABEL_311;
      }
    }
  }

LABEL_170:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_7_25((v101 + 1), v102, v103, v104, v105, v106, v107, v108, v231, v234, v237, v241, v244, v247, &v357, v252, v255, v258, v259, v260, v261, v263, v264, v265, v267, v268, v270, v271, v272, v274, v275, v277, v278, v281, v282, v284, v286, v288, theDicta, allocatora, cf);
  }

  v332 = 0;
  v331 = 0;
  v109 = *(v339 + 7);
  v110 = v348;
  if (v109 == 1785750887)
  {
    v110 = UncompressedPixelFormatFromCompressedPixelFormat;
  }

  HIDWORD(v267) = v110;
  v111 = *(MEMORY[0x1E6960C70] + 4);
  v17 = *MEMORY[0x1E6960C70] << 24;
  *v365 = *(MEMORY[0x1E6960C70] + 5);
  *&v365[15] = *(MEMORY[0x1E6960C70] + 20);
  v333 = v343;
  HIDWORD(v270) = *(v339 + 380);
  LODWORD(v271) = v109;
  v269 = v339[21] * v339[20];
  if (v269 == 1 && v109 == 1936484717)
  {
    CMPhotoCFDictionarySetBoolean(v364, @"SyncEncode", 1);
  }

  v266 = v17 | (v111 << 56);
  TypeID = v281;
  LODWORD(v261) = v45;
  if (v19 == v281)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(v15);
    if (v342)
    {
      LODWORD(v17) = v347.f64[0];
    }

    else
    {
      LODWORD(v17) = Dimensions.width;
    }

    if (v342)
    {
      height = v347.f64[1];
    }

    else
    {
      height = Dimensions.height;
    }

    Extensions = CMFormatDescriptionGetExtensions(v15);
    v116 = FigCFDictionaryCreateMutableCopy();
    if (!v116)
    {
      v264 = 0;
      UncompressedPixelFormatFromCompressedPixelFormat = 0;
      OUTLINED_FUNCTION_20_9();
      BooleanIfPresent = 4294950305;
LABEL_316:
      v21 = theDicta;
      goto LABEL_335;
    }

    v117 = v116;
    MediaSubType = CMFormatDescriptionGetMediaSubType(v15);
    v119 = CMPhotoModifyColorExtensionsForCompression(MediaSubType, Extensions, v117, *(v339 + 58), *(v339 + 15), v18 == 2, v357);
    v264 = v117;
    if (!v119)
    {
      v120 = *MEMORY[0x1E695E480];
      v121 = CMFormatDescriptionGetMediaSubType(v15);
      v119 = CMVideoFormatDescriptionCreate(v120, v121, v17, height, v117, &formatDescriptionOut);
      if (!v119)
      {
        v122 = v18 == 0;
        if (!v18)
        {
          v368 = CMVideoFormatDescriptionGetCleanAperture(formatDescriptionOut, 1u);
          v123 = v368.size.height;
          *(cf + 11) = vcvtq_u64_f64(vrndaq_f64(v368.size));
        }

        if (*(v339 + 58))
        {
          v124 = v19;
          v125 = v281;
          v126 = 0;
          UncompressedPixelFormatFromCompressedPixelFormat = 0;
          LODWORD(v260) = a9 == 0;
        }

        else
        {
          v136 = v15;
          v124 = v19;
          v137 = CMFormatDescriptionGetExtensions(v136);
          v125 = v281;
          if (v137)
          {
            v126 = CFRetain(v137);
          }

          else
          {
            v126 = 0;
          }

          UncompressedPixelFormatFromCompressedPixelFormat = 0;
          LODWORD(v260) = a9 == 0;
        }

        goto LABEL_208;
      }
    }

    BooleanIfPresent = v119;
LABEL_315:
    UncompressedPixelFormatFromCompressedPixelFormat = 0;
    OUTLINED_FUNCTION_20_9();
    goto LABEL_316;
  }

  FormatDescriptionForHEIFWriter = CMPhotoCreateFormatDescriptionForHEIFWriter();
  if (FormatDescriptionForHEIFWriter)
  {
    BooleanIfPresent = FormatDescriptionForHEIFWriter;
    v264 = 0;
    goto LABEL_315;
  }

  LODWORD(v17) = 1;
  UncompressedPixelFormatFromCompressedPixelFormat = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040F6617ADFuLL);
  if (!UncompressedPixelFormatFromCompressedPixelFormat)
  {
    v264 = 0;
    v272 = 0;
    BooleanIfPresent = 4294950305;
    goto LABEL_312;
  }

  v122 = v18 == 0;
  if (*(v339 + 58))
  {
    Plugin = 0;
  }

  else
  {
    Plugin = CMFormatDescriptionGetExtensions(formatDescriptionOut);
    if (Plugin)
    {
      Plugin = CFRetain(Plugin);
    }
  }

  if (a9)
  {
    v272 = Plugin;
    v264 = 0;
    LODWORD(v260) = 0;
    if (!v18)
    {
LABEL_220:
      HIDWORD(v271) = 1;
      goto LABEL_223;
    }

    v21 = theDicta;
    goto LABEL_221;
  }

  LODWORD(v260) = 1;
  v124 = v19;
  v125 = v281;
  v264 = 0;
  v126 = Plugin;
LABEL_208:
  v138 = v364;
  v139 = v350;
  OUTLINED_FUNCTION_23_5(v339);
  v322[0] = HIDWORD(v267);
  v322[1] = v271;
  LOBYTE(v322[2]) = 0;
  *(&v322[2] + 1) = v266;
  *(&v322[4] + 1) = *v365;
  *&v322[9] = 0;
  v322[8] = *&v365[15];
  v322[11] = v18;
  v323 = v333;
  v324 = HIDWORD(v286);
  v325 = 0;
  v326 = v269;
  v327 = v286;
  v328 = BYTE4(v270);
  v329 = 0;
  v330 = 0;
  v272 = v126;
  Plugin = _createPlugin(allocatora, cf, pixelBuffer, v138, v322, UncompressedPixelFormatFromCompressedPixelFormat, v126, v139 + 3);
  v21 = theDicta;
  if (Plugin)
  {
    BooleanIfPresent = Plugin;
    LODWORD(v17) = 1;
    TypeID = v125;
    v19 = v124;
    goto LABEL_335;
  }

  TypeID = v125;
  v19 = v124;
  v140 = v124 == TypeID && v122;
  if (v140 && !*(v339 + 340) && (*(v339 + 279) || *(v339 + 280)))
  {
    cf[29] = 0;
    Plugin = FigSemaphoreSignal();
    HIDWORD(v275) = 0;
  }

  if (v124 == TypeID && !*(v339 + 340))
  {
    BooleanIfPresent = 0;
    goto LABEL_330;
  }

  if (v122)
  {
    goto LABEL_220;
  }

LABEL_221:
  v141 = OUTLINED_FUNCTION_27_5(Plugin, v128, v129, v130, v131, v132, v133, v134, v231, v234, v237, v241, v244, v247, v250, v252, v255, v258, v259, v260, v261, v263, v264, v266, v267, v269, v270, v271, v272, v274, v275, v277, v278, v281, v282, v284, v286, v288);
  OrientationTransformsForImage = CMPhotoHEIFFileWriterGetOrientationTransformsForImage(v141, v282, v339 + 176, v339 + 45, 0, v339 + 46);
  if (OrientationTransformsForImage)
  {
    BooleanIfPresent = OrientationTransformsForImage;
LABEL_330:
    LODWORD(v17) = 1;
    goto LABEL_335;
  }

  HIDWORD(v271) = 0;
LABEL_223:
  v279 = UncompressedPixelFormatFromCompressedPixelFormat;
  HIDWORD(v260) = v18;
  OUTLINED_FUNCTION_9_1();
  if (v40)
  {
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_7_25((v143 + 12), v144, v145, v146, v147, v148, v149, v150, v231, v234, v237, v241, v244, v247, v250, v252, v255, v258, v259, v260, v261, v263, v264, v266, v267, v269, v270, v271, v272, v274, v275, v277, UncompressedPixelFormatFromCompressedPixelFormat, v281, v282, v284, v286, v288, theDicta, allocatora, cf);
  }

  v151 = *(v339 + 7);
  v21 = *(v339 + 99);
  v152 = v339[43];
  TypeID = *(v339 + 340);
  v19 = *(v339 + 15) == 3;
  v153 = *(v339 + 306);
  *v322 = *(v339 + 11);
  v322[4] = *(v339 + 48);
  memcpy(pixelBuffer, v339 + 13, 0x48uLL);
  v18 = HIDWORD(v260);
  v154 = CMPhotoCompressionSessionAddHEIFItemIfNeeded(cf, SHIDWORD(v260), v151, formatDescriptionOut, v282, v361, v362, v261, v322, v21, v152, TypeID, -1, v348, pixelBuffer, 0, v19, v153, &v345);
  if (v154)
  {
    BooleanIfPresent = v154;
    LODWORD(v17) = 1;
    OUTLINED_FUNCTION_19_10();
    goto LABEL_284;
  }

  *v283 = v334;
  v155 = v339;
  if (v339[29] || v339[30] || v339[31])
  {
    CFDictionaryCreateMutable(allocatora, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    OUTLINED_FUNCTION_19_10();
    if (!v156)
    {
LABEL_319:
      LODWORD(v17) = 1;
      BooleanIfPresent = 4294950305;
      goto LABEL_284;
    }

    v162 = v156;
    v163 = *(v155 + 232);
    if (v163)
    {
      v164 = vcvtq_u64_f64(vrndaq_f64(*v283));
      pixelBuffer[0].i64[0] = 0;
      CMPhotoCreateFigIntrinsicsDictFromIntrinsicsMatrix(allocatora, v163, v164.u64[0], v164.u64[1], *(v155 + 188), *(v155 + 257), pixelBuffer);
      if (FigExtrinsicsDictFromExtrinsics)
      {
        goto LABEL_295;
      }

      CFDictionarySetValue(v162, *MEMORY[0x1E6973970], pixelBuffer[0].i64[0]);
      v156 = pixelBuffer[0].i64[0];
      if (pixelBuffer[0].i64[0])
      {
        CFRelease(pixelBuffer[0].i64[0]);
      }
    }

    v166 = *(v155 + 240);
    v167 = *(v155 + 248);
    if (*(v155 + 240) == 0)
    {
      goto LABEL_239;
    }

    pixelBuffer[0].i64[0] = 0;
    FigExtrinsicsDictFromExtrinsics = CMPhotoCreateFigExtrinsicsDictFromExtrinsics(allocatora, v166, v167, *(v155 + 256), *(v155 + 257), pixelBuffer);
    if (!FigExtrinsicsDictFromExtrinsics)
    {
      CFDictionarySetValue(v162, *MEMORY[0x1E6973968], pixelBuffer[0].i64[0]);
      v156 = pixelBuffer[0].i64[0];
      if (pixelBuffer[0].i64[0])
      {
        CFRelease(pixelBuffer[0].i64[0]);
      }

LABEL_239:
      OUTLINED_FUNCTION_27_5(v156, v166, v167, v157, v158, v159, v160, v161, v232, v235, v238, v242, v245, v248, v251, v253, v256, v258, v259, v260, v261, v263, v264, v266, v267, v269, v270, v271, v272, v274, v275, v277, v279, v281, v283[0], v283[1], v286, v288);
      OUTLINED_FUNCTION_10_22();
      BooleanIfPresent = CMPhotoHEIFFileWriterAddMetadataToImage(v168, v169, v170, v171, v172, v173, v174, v175);
      CFRelease(v162);
      if (!BooleanIfPresent)
      {
        v155 = v339;
        goto LABEL_241;
      }

LABEL_303:
      LODWORD(v17) = 1;
      goto LABEL_284;
    }

LABEL_295:
    BooleanIfPresent = FigExtrinsicsDictFromExtrinsics;
    CFRelease(v162);
    goto LABEL_303;
  }

  OUTLINED_FUNCTION_19_10();
LABEL_241:
  if (*(v155 + 279))
  {
    if (!HIDWORD(v271))
    {
      goto LABEL_244;
    }

    goto LABEL_243;
  }

  v207 = BYTE4(v271);
  if (!*(v155 + 280))
  {
    v207 = 0;
  }

  if (v207)
  {
LABEL_243:
    cf[29] = v345;
    FigSemaphoreSignal();
    HIDWORD(v275) = 0;
  }

LABEL_244:
  OUTLINED_FUNCTION_9_1();
  if (v40)
  {
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_7_25((v176 + 13), v177, v178, v179, v180, v181, v182, v183, v232, v235, v238, v242, v245, v248, v251, v253, v256, v258, v259, v260, v261, v263, v264, v266, v267, v269, v270, v271, v272, v274, v275, v277, v279, v281, v283[0], v283[1], v286, v288, theDicta, allocatora, cf);
  }

  if (*(v339 + 340))
  {
    BooleanIfPresent = 0;
    goto LABEL_303;
  }

  if (v260)
  {
    v184 = v350[3];
    v185 = v345;
    v186 = v354[3];
    v187 = v348;
    v188 = v364;
    OUTLINED_FUNCTION_23_5(v339);
    v254 = v188;
    v239 = v186;
    v19 = v277;
    v189 = v185;
    v190 = HIDWORD(v286);
    v191 = v263;
    v192 = _encodeTiles(cf, v184, v18, v189, pixelBuffer, SHIDWORD(v286), v263, HIDWORD(v261), v343, *(&v343 + 1), v239, v279, v187, 0, v274, v272, v254, a12);
    if (v192)
    {
      goto LABEL_304;
    }

    goto LABEL_263;
  }

  os_unfair_lock_lock(cf + 54);
  v191 = v263;
  if (!cf[24])
  {
    TargetingPThreadRootQueueWithPriority = FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority();
    cf[24] = TargetingPThreadRootQueueWithPriority;
    if (!TargetingPThreadRootQueueWithPriority)
    {
      goto LABEL_318;
    }
  }

  v195 = _allowHEIFAsynchronousCompleteEncodeTilesOverride(TargetingPThreadRootQueueWithPriority, v194);
  v196 = cf[25];
  if (v196 || !v195)
  {
    goto LABEL_257;
  }

  v196 = FigSemaphoreCreate();
  cf[25] = v196;
  if (!cf[24])
  {
LABEL_318:
    os_unfair_lock_unlock(cf + 54);
    goto LABEL_319;
  }

  cf[26] = 0;
LABEL_257:
  if (v196)
  {
    ++cf[26];
  }

  os_unfair_lock_unlock(cf + 54);
  OUTLINED_FUNCTION_9_1();
  if (v40)
  {
    OUTLINED_FUNCTION_17_12();
    kdebug_trace();
  }

  v197 = cf[24];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___encodePixelBufferForIndex_block_invoke;
  block[3] = &unk_1E77A3C40;
  block[8] = cf;
  block[9] = allocatora;
  block[10] = v364;
  v295 = HIDWORD(v267);
  v296 = v271;
  v297 = 0;
  v298 = v266;
  *v299 = *v365;
  *&v299[15] = *&v365[15];
  v300 = 0;
  v302 = v333;
  v301 = v18;
  v190 = HIDWORD(v286);
  v303 = HIDWORD(v286);
  v304 = 0;
  v305 = v269;
  v306 = v286;
  v307 = BYTE4(v270);
  v308 = v331;
  v309 = v332;
  v310 = v279;
  v311 = v272;
  v312 = v343;
  v313 = v21;
  v314 = v345;
  v318 = v18;
  v319 = HIDWORD(v286);
  v321 = BYTE4(v261);
  block[6] = &v349;
  block[7] = &v353;
  v320 = v348;
  v315 = v263;
  v316 = v274;
  block[4] = a12;
  block[5] = &v338;
  v317 = v288;
  dispatch_async(v197, block);
LABEL_263:
  OUTLINED_FUNCTION_9_1();
  if (v40)
  {
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_4((v198 + 16), v288);
  }

  if (v18 == 2 && v191 | Mutable)
  {
    v192 = CMPhotoAuxiliaryImageMetadataCreateXMPData(cf[12], v191, Mutable, v190, 0, &v359);
    if (v192)
    {
      goto LABEL_304;
    }

    v205 = v339[8];
    v206 = v359;
    UncompressedPixelFormatFromCompressedPixelFormat = v279;
    if (v205)
    {
      pixelBuffer[0].i64[0] = 0;
      v192 = CMPhotoCompressDataWithContentEncoding(cf[12], v359, v205, pixelBuffer);
      if (v192)
      {
        BooleanIfPresent = v192;
        if (v192 != -17106)
        {
LABEL_334:
          LODWORD(v17) = 0;
          goto LABEL_335;
        }

        v205 = 0;
        v206 = v359;
      }

      else
      {
        v192 = v359;
        if (v359)
        {
          CFRelease(v359);
        }

        v206 = pixelBuffer[0].i64[0];
        v359 = pixelBuffer[0].i64[0];
      }
    }

    v208 = OUTLINED_FUNCTION_27_5(v192, v199, v200, v201, v206, v202, v203, v204, v232, v235, v238, v242, v245, v248, v251, v253, v256, v258, v259, v260, v261, v263, v264, v266, v267, v269, v270, v271, v272, v274, v275, v277, v279, v281, v283[0], v283[1], v286, v288);
    v192 = CMPhotoHEIFFileWriterAddMetadataToImage(v208, 0, v345, 1, v209, 0, v205, 0);
    if (v192)
    {
LABEL_304:
      BooleanIfPresent = v192;
      goto LABEL_283;
    }
  }

  if (v19 == TypeID)
  {
    BooleanIfPresent = 0;
LABEL_283:
    LODWORD(v17) = 0;
LABEL_284:
    UncompressedPixelFormatFromCompressedPixelFormat = v279;
    goto LABEL_335;
  }

  UncompressedPixelFormatFromCompressedPixelFormat = v279;
  if (!HIDWORD(v271) || *(v339 + 7) != 1936484717)
  {
LABEL_333:
    BooleanIfPresent = 0;
    goto LABEL_334;
  }

  if (Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v232, v235, v238);
    goto LABEL_333;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v210 = FigCFDictionarySetInt();
    if (!v210)
    {
      v210 = FigCFDictionarySetInt();
      if (!v210)
      {
        v210 = CMPhotoCreateMainImageXMPDataFromFormatInfo(cf[12], Mutable, &v358);
        if (!v210)
        {
          OUTLINED_FUNCTION_27_5(v210, v211, v212, v213, v214, v215, v216, v217, v232, v235, v238, v242, v245, v248, v251, v253, v256, v258, v259, v260, v261, v263, v264, v266, v267, v269, v270, v271, v272, v274, v275, v277, v279, v281, v283[0], v283[1], v286, v288);
          OUTLINED_FUNCTION_10_22();
          v210 = CMPhotoHEIFFileWriterAddMetadataToImage(v218, v219, v220, v221, v222, v223, v224, v225);
        }
      }
    }

    BooleanIfPresent = v210;
    goto LABEL_334;
  }

  LODWORD(v17) = 0;
  BooleanIfPresent = 4294950305;
LABEL_335:
  OUTLINED_FUNCTION_9_1();
  if (v40)
  {
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_4((v226 + 17), v288);
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat)
  {
    if (*(v339 + 352))
    {
      v227 = *(UncompressedPixelFormatFromCompressedPixelFormat + 64);
      if (v227)
      {
        _Block_release(v227);
      }
    }
  }

  if (a11 && !BooleanIfPresent)
  {
    *a11 = v345;
  }

  v228 = v19 == TypeID || BooleanIfPresent == -15474;
  if (!v228 && BooleanIfPresent)
  {
    *(cf + 104) = 1;
  }

  if (HIDWORD(v275))
  {
    FigSemaphoreSignal();
  }

  if (v17)
  {
    _freeVariablesUsedAcrossAsyncEncodingMethods(cf, v350[3], v354[3], UncompressedPixelFormatFromCompressedPixelFormat, 0, v18, v272, v364, v274);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v359)
  {
    CFRelease(v359);
  }

  if (v358)
  {
    CFRelease(v358);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v362)
  {
    CFRelease(v362);
  }

  if (v361)
  {
    CFRelease(v361);
  }

  if (v357)
  {
    CFRelease(v357);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v264)
  {
    CFRelease(v264);
  }

  _Block_object_dispose(&v338, 8);
  _Block_object_dispose(&v349, 8);
  _Block_object_dispose(&v353, 8);
  return BooleanIfPresent;
}

uint64_t _waitForTileEncodingToComplete(uint64_t a1, CFTypeRef *a2, const void *a3, void *a4, uint64_t a5, uint64_t a6, _DWORD *a7, int a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12)
{
  v19 = CMPhotoCompressionPluginCompleteEncodes(a2);
  v24 = a6;
  if (v19)
  {
    goto LABEL_11;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4(822280338, a7);
  }

  if (a7[12])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_16();
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, a6);
LABEL_11:
    v20 = v19;
    goto LABEL_6;
  }

  v20 = 0;
LABEL_6:
  if (a8 && a12)
  {
    (*(a12 + 16))(a12, v20, a5, v24, 0);
  }

  _freeVariablesUsedAcrossAsyncEncodingMethods(a1, a2, a3, a7, a4, a5, a10, a11, a9);
  return v20;
}

uint64_t _compressThumbnailInternal_0(uint64_t a1, int a2, CFDictionaryRef theDict, opaqueCMSampleBuffer *a4, int a5, uint64_t a6)
{
  v18[0] = 0;
  v18[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a4, theDict, v18);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  v13 = 0;
  v14 = MEMORY[0x1E695FF58];
  if (!a4 || !a5)
  {
    goto LABEL_7;
  }

  v13 = a4 + rand();
  OUTLINED_FUNCTION_9_1();
  if (v15)
  {
    kdebug_trace();
LABEL_7:
    if (*v14 == 1)
    {
      kdebug_trace();
    }
  }

  v16 = _compressX_0(a1, theDict, a4, 1, a2, 0, 0, 0, a5, v13, 0, a6);
  OUTLINED_FUNCTION_9_1();
  if (v15)
  {
    kdebug_trace();
  }

  return v16;
}

uint64_t _compressAuxImageInternal_0(uint64_t a1, int a2, unsigned int a3, uint64_t a4, CFDictionaryRef theDict, opaqueCMSampleBuffer *a6, int a7, uint64_t *a8, uint64_t a9)
{
  v21[0] = 0;
  v21[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a6, theDict, v21);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  SourceDimensions = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  v18 = 0;
  if (!a6 || !a7)
  {
    goto LABEL_7;
  }

  v18 = a6 + rand();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
LABEL_7:
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }
  }

  v19 = _compressX_0(a1, theDict, a6, 2, a2, a3, a4, 1u, a7, v18, a8, a9);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v19;
}

uint64_t _addExifInternal(uint64_t a1, uint64_t a2, uint64_t a3, const __CFData *a4)
{
  if (*(a1 + 104))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    v8 = 0;
    if (a3 && CMPhotoCFDictionaryGetInt32IfPresent())
    {
      if (CFDataGetLength(a4) <= HIDWORD(v8))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      LOBYTE(v8) = 1;
    }

    else
    {
      result = CMPhotoExifDetectTIFFHeaderOffset(a4, &v8, &v8 + 1);
      if (result)
      {
        return result;
      }

      if (!v8)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    return CMPhotoHEIFFileWriterAddMetadataToImage(*(a1 + 88), 0, a2, 0, a4, HIDWORD(v8), 0, 0);
  }
}

uint64_t _addDebugMetadata_cold_1_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addCustomMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addGroupProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addImageToGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addGroupToGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void _copyImageDescriptionToWriter_cold_7(const void **a1, CFMutableArrayRef theArray, int *a3)
{
  CFArrayAppendValue(theArray, *a1);
  CMPhotoCFArrayAppendInt32(theArray, *a3);
  v5 = OUTLINED_FUNCTION_18_9();
  CFArrayAppendValue(v5, v6);
}

uint64_t _copyImageDescriptionToWriter_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addGroupDescriptionToWriter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addGroupDescriptionToWriter_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t _addGroupDescriptionToWriter_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addGroupDescriptionToWriter_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addGroupDescriptionToWriter_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _checkOrientationForImages_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _removeOrientation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _updateOrientation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _compressImageInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _compressImageInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ___compressMainWithThumbAsync_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t ___compressMainWithThumbAsync_block_invoke_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ___compressMainWithThumbAsync_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ___compressMainWithThumbAsync_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ___compressMainWithThumbAsync_block_invoke_cold_5(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t _addCompressedX_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addCompressedX_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addCompressedX_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addCompressedX_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addCompressedX_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addCompressedX_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _openContainerWithModificationCallback_1(uint64_t a1, const __CFDictionary *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t (*a6)(CFDictionaryRef, uint64_t), uint64_t a7)
{
  theDict = 0;
  cf = 0;
  v11 = _openContainer_6(a1, a2, a3, a4);
  if (v11)
  {
    goto LABEL_78;
  }

  v12 = CFGetAllocator(a1);
  v11 = CMPhotoPropertyListCopyWithMutableContainers(v12, cf, &theDict);
  if (v11)
  {
    goto LABEL_78;
  }

  v11 = a6(theDict, a7);
  if (v11)
  {
    goto LABEL_78;
  }

  if (!CMPhotoCompressionSessionCheckForIllegalModification(cf, theDict))
  {
    emitter = fig_log_get_emitter();
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950194, "<<<< CMPhotoCompressionSession+DICOM >>>>", 934, v7);
    goto LABEL_78;
  }

  Value = CFDictionaryGetValue(theDict, @"ImageList");
  v14 = 0;
  if (Value)
  {
    goto LABEL_10;
  }

LABEL_11:
  for (i = 0; ; i = CFArrayGetCount(Value))
  {
    if (v14 >= i)
    {
      v68 = 0;
      v69 = &v68;
      v70 = 0x2000000000;
      v71 = 0;
      v16 = CFDictionaryGetValue(theDict, @"ImageList");
      if (!v16 || (v17 = v16, !CFArrayGetCount(v16)))
      {
        v29 = *(a1 + 472);
        if (v29)
        {
          CFRelease(v29);
          *(a1 + 472) = 0;
        }

        v30 = *(a1 + 480);
        if (v30)
        {
          CFRelease(v30);
          *(a1 + 480) = 0;
        }

        v31 = *(a1 + 440);
        if (v31)
        {
          CFRelease(v31);
          *(a1 + 440) = 0;
        }

        v32 = *(a1 + 464);
        if (v32)
        {
          CFRelease(v32);
          *(a1 + 464) = 0;
        }

        v33 = *(a1 + 456);
        if (v33)
        {
          CFRelease(v33);
          *(a1 + 456) = 0;
        }

        goto LABEL_69;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
      if (!ValueAtIndex)
      {
        goto LABEL_79;
      }

      v19 = ValueAtIndex;
      v20 = CFGetTypeID(ValueAtIndex);
      if (v20 != CFDictionaryGetTypeID())
      {
        goto LABEL_79;
      }

      v21 = FigCFDictionaryGetValue();
      v22 = *(a1 + 472);
      if (v22)
      {
        CFRelease(v22);
        *(a1 + 472) = 0;
      }

      if (v21)
      {
        v23 = CFGetTypeID(v21);
        if (v23 != CFDictionaryGetTypeID())
        {
          goto LABEL_79;
        }

        *(a1 + 472) = CFRetain(v21);
      }

      v24 = FigCFDictionaryGetValue();
      v25 = FigCFDictionaryGetValue();
      if (v24 && CFArrayGetCount(v24) > 0 || v25 && CFArrayGetCount(v25) >= 1)
      {
        CFGetAllocator(a1);
        MutableCopy = FigCFArrayCreateMutableCopy();
        if (!MutableCopy)
        {
          v56 = v69;
          v57 = -16991;
          goto LABEL_80;
        }

        v27 = MutableCopy;
        v61 = MEMORY[0x1E69E9820];
        v62 = 0x40000000;
        v63 = ___applyModifiedDescriptionToSession_block_invoke;
        v64 = &unk_1E77A3CF0;
        v65 = &v68;
        v66 = a1;
        v67 = MutableCopy;
        FigCFArrayApplyBlock();
        if (*(v69 + 6))
        {
          CFRelease(v27);
          goto LABEL_69;
        }

        v28 = *(a1 + 480);
        if (v28)
        {
          CFRelease(v28);
        }

        *(a1 + 480) = v27;
      }

      else
      {
        v34 = *(a1 + 480);
        if (v34)
        {
          CFRelease(v34);
          *(a1 + 480) = 0;
        }
      }

      v35 = FigCFDictionaryGetValue();
      v36 = *(a1 + 440);
      if (v36)
      {
        CFRelease(v36);
        *(a1 + 440) = 0;
      }

      if (!v35 || (v37 = CFGetTypeID(v35), v37 == CGColorSpaceGetTypeID()) && (v38 = CGColorSpaceCopyICCData(v35), (*(a1 + 440) = v38) != 0))
      {
        CFGetAllocator(a1);
        if (*(a1 + 464))
        {
          v39 = FigCFArrayCreateMutableCopy();
          if (!v39)
          {
            v52 = -16991;
            goto LABEL_68;
          }

          v40 = v39;
          if (!CFArrayGetCount(v17))
          {
LABEL_57:
            *(v69 + 6) = 0;
            v46 = *(a1 + 464);
            if (v46)
            {
              CFRelease(v46);
            }

            *(a1 + 464) = v40;
            v47 = *(a1 + 448);
            if (v47)
            {
              if (CFArrayGetCount(v47) >= 1)
              {
                v48 = CFDictionaryGetValue(v19, @"Auxiliary");
                CMPhotoFilterCompressedAuxImageStorageArray(*(a1 + 448), v48);
                *(v69 + 6) = v49;
                if (!v49)
                {
                  v50 = *(a1 + 448);
                  if (v50)
                  {
                    if (!CFArrayGetCount(v50))
                    {
                      v51 = *(a1 + 448);
                      if (v51)
                      {
                        CFRelease(v51);
                        *(a1 + 448) = 0;
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_69;
          }

          v41 = 0;
          while (1)
          {
            v42 = FigCFArrayGetValueAtIndex();
            if (!v42)
            {
              break;
            }

            v43 = v42;
            v44 = CFGetTypeID(v42);
            if (v44 != CFDictionaryGetTypeID())
            {
              break;
            }

            v72 = 0;
            if (!CMPhotoCFDictionaryGetSizeIfPresent(v43, @"ImageHandle", &v72))
            {
              break;
            }

            v45 = FigCFArrayGetValueAtIndex();
            if (!v45)
            {
              break;
            }

            CFArrayAppendValue(v40, v45);
            if (++v41 >= CFArrayGetCount(v17))
            {
              goto LABEL_57;
            }
          }

          CFRelease(v40);
        }

        v52 = -16990;
LABEL_68:
        *(v69 + 6) = v52;
LABEL_69:
        v53 = *(v69 + 6);
        _Block_object_dispose(&v68, 8);
        goto LABEL_70;
      }

LABEL_79:
      v56 = v69;
      v57 = -16990;
LABEL_80:
      *(v56 + 6) = v57;
      goto LABEL_69;
    }

    FigCFArrayGetValueAtIndex();
    LODWORD(v61) = 1;
    if (FigCFDictionaryGetIntIfPresent())
    {
      if (v61 != 1)
      {
        break;
      }
    }

    ++v14;
    if (!Value)
    {
      goto LABEL_11;
    }

LABEL_10:
    ;
  }

  v55 = fig_log_get_emitter();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, 4294950306, "<<<< CMPhotoCompressionSession+DICOM >>>>", 945, v7);
LABEL_78:
  v53 = v11;
LABEL_70:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v53)
  {
    _releaseAllContainerResources_0(a1);
  }

  return v53;
}

uint64_t _closeContainerAndCopyBacking_1(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v8 = CFGetAllocator(a1);
  v45 = 0;
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_0_6(822281069);
  }

  if (*(a1 + 416) || (v10 = *(a1 + 464)) != 0 && CFArrayGetCount(v10) >= 1)
  {
    switch(*(a1 + 392))
    {
      case 1:
        if (!*(a1 + 400))
        {
          Mutable = CFDataCreateMutable(v8, 0);
          *(a1 + 400) = Mutable;
          if (!Mutable)
          {
            goto LABEL_65;
          }
        }

        WritableWithCFMutableData = FigByteStreamCreateWritableWithCFMutableData();
        if (!WritableWithCFMutableData)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      case 2:
        if (!*(a1 + 400))
        {
          WritableWithCFMutableData = CMBlockBufferCreateEmpty(v8, 0, 0, (a1 + 400));
          if (WritableWithCFMutableData)
          {
            goto LABEL_48;
          }
        }

        WritableWithCFMutableData = CMByteStreamCreateWritableForBlockBuffer();
        if (WritableWithCFMutableData)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 3:
        WritableWithCFMutableData = CMByteStreamCreateForFileURL();
        if (WritableWithCFMutableData)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 4:
        if (*(a1 + 400))
        {
          goto LABEL_46;
        }

        v13 = *(a1 + 416);
        if (v13)
        {
          Length = CFDataGetLength(v13);
        }

        else
        {
          v16 = 0;
          Length = 0;
          while (1)
          {
            Count = *(a1 + 464);
            if (Count)
            {
              Count = CFArrayGetCount(Count);
            }

            if (v16 >= Count)
            {
              break;
            }

            ValueAtIndex = FigCFArrayGetValueAtIndex();
            if (!ValueAtIndex)
            {
              goto LABEL_65;
            }

            Length += CFDataGetLength(ValueAtIndex);
            ++v16;
          }
        }

        if (!Length)
        {
LABEL_65:
          v32 = 4294950305;
          goto LABEL_60;
        }

        v15 = *(a1 + 440);
        if (v15)
        {
          v39 = CFDataGetLength(v15);
        }

        else
        {
          v39 = 0;
        }

        v19 = 0;
        for (i = 0; ; ++i)
        {
          v21 = *(a1 + 448);
          if (v21)
          {
            v21 = CFArrayGetCount(v21);
          }

          if (i >= v21)
          {
            break;
          }

          v22 = CFArrayGetValueAtIndex(*(a1 + 448), i);
          v19 += CMSampleBufferGetSampleSize(*v22, 0);
          v23 = v22[5];
          if (v23)
          {
            v19 += CFDataGetLength(v23);
          }

          if (v22[2])
          {
            v19 += 0x10000;
          }
        }

        v44 = 0;
        v24 = DicomEstimateImagePropertiesSize(*(a1 + 472), &v44);
        if (v24)
        {
          v32 = v24;
          goto LABEL_60;
        }

        v40 = 0;
        v41 = &v40;
        v42 = 0x2000000000;
        v43 = 0;
        FigCFArrayApplyBlock();
        v27 = v41[3];
        v28 = Length + v39 + v19;
        if (*(a1 + 408) <= &v44[0x2000] + v28 + v27)
        {
          v29 = &v44[0x2000] + v28 + v27;
        }

        else
        {
          v29 = *(a1 + 408);
        }

        MemorySurface = CMPhotoSurfacePoolCreateMemorySurface(@"SurfacePoolOneShot", v29, 1, (a1 + 400), v25, v26);
        if (MemorySurface)
        {
          v32 = MemorySurface;
          _Block_object_dispose(&v40, 8);
          goto LABEL_60;
        }

        IOSurfaceDecrementUseCount(*(a1 + 400));
        _Block_object_dispose(&v40, 8);
LABEL_46:
        WritableWithCFMutableData = FigByteStreamCreateWritableWithIOSurface();
        if (WritableWithCFMutableData)
        {
          goto LABEL_48;
        }

LABEL_47:
        v31 = v45;
        WritableWithCFMutableData = DicomMergeImageComponents(v8, v45, *(a1 + 416), *(a1 + 464), *(a1 + 456), *(a1 + 424), *(a1 + 432), *(a1 + 440), *(a1 + 472), *(a1 + 480), *(a1 + 448));
        if (WritableWithCFMutableData)
        {
LABEL_48:
          v32 = WritableWithCFMutableData;
          goto LABEL_60;
        }

        v40 = 0;
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v33)
        {
          v32 = 4294954514;
          goto LABEL_60;
        }

        WritableWithCFMutableData = v33(v31, 0, &v40);
        if (WritableWithCFMutableData)
        {
          goto LABEL_48;
        }

        v34 = v40;
        if (v40 < 0)
        {
          v32 = 4294950190;
          goto LABEL_60;
        }

        if (a2)
        {
          *a2 = *(a1 + 392);
        }

        if (a3)
        {
          *a3 = v34;
        }

        if (a4)
        {
          v32 = 0;
          *a4 = *(a1 + 400);
          *(a1 + 400) = 0;
          goto LABEL_60;
        }

        break;
      default:
        fig_log_get_emitter();
        WritableWithCFMutableData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
        goto LABEL_48;
    }
  }

  v32 = 0;
LABEL_60:
  _releaseAllContainerResources_0(a1);
  if (*v9 == 1)
  {
    OUTLINED_FUNCTION_0_6(822281070);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  return v32;
}

uint64_t _compressImage_1(uint64_t a1, const __CFDictionary *a2, opaqueCMSampleBuffer *a3, uint64_t *a4)
{
  if (*(a1 + 416))
  {
    emitter = fig_log_get_emitter();
    v15 = v4;
    v16 = 1128;
  }

  else
  {
    if (!*(a1 + 464))
    {
      v18 = 0;
      v17[0] = 0;
      v17[1] = 0;
      SourceDimensions = CMPhotoGetSourceDimensions(a3, a2, v17);
      if (SourceDimensions)
      {
        return SourceDimensions;
      }

      v10 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      v11 = _encodeSource_0(a1, 0, 0, 0, a2, a3, &v18);
      if (*v10 == 1)
      {
        kdebug_trace();
      }

      if (a4 && !v11)
      {
        if (v18)
        {
          v12 = -1;
        }

        else
        {
          v12 = 0;
        }

        *a4 = v12;
      }

      return v11;
    }

    emitter = fig_log_get_emitter();
    v15 = v4;
    v16 = 1129;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950192, "<<<< CMPhotoCompressionSession+DICOM >>>>", v16, v15);
}

uint64_t _addDebugMetadata_1(void *cf, uint64_t a2, uint64_t a3, const void *a4)
{
  if (cf[52])
  {
    v6 = 1;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = cf[58] != 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    CFGetAllocator(cf);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      return 4294950305;
    }

    v8 = MutableCopy;
    CFDictionarySetValue(MutableCopy, @"Data", a4);
    CFDictionarySetValue(v8, @"URI", @"tag:apple.com,2025:dicom:debug_metadata");
    v10 = _addCustomMetadata_1(cf, 0, v9, v8);
    CFRelease(v8);
    return v10;
  }

LABEL_8:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _addCustomMetadata_1(void *cf, uint64_t a2, int a3, void *value)
{
  if (cf[52])
  {
    v6 = 1;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = cf[58] != 0;
    if (a2)
    {
LABEL_9:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  MutableCopy = cf[60];
  if (!MutableCopy)
  {
    CFGetAllocator(cf);
    MutableCopy = FigCFArrayCreateMutableCopy();
    cf[60] = MutableCopy;
    if (!MutableCopy)
    {
      return 4294950305;
    }
  }

  CFArrayAppendValue(MutableCopy, value);
  return 0;
}

uint64_t _addAuxImageMetadata_1(uint64_t a1, CFIndex a2, CFTypeRef cf, CFDataRef a4)
{
  Count = *(a1 + 448);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if ((a2 & 0x8000000000000000) == 0 && Count > a2)
  {
    if (!cf)
    {
      return 4294950306;
    }

    v9 = CFGetTypeID(cf);
    if (v9 != CGImageMetadataGetTypeID())
    {
      return 4294950306;
    }

    if (!a4 || (Value = FigCFDictionaryGetValue(), (a4 = Value) == 0))
    {
LABEL_11:
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 448), a2);
      if (ValueAtIndex)
      {
        v13 = ValueAtIndex;
        if (!ValueAtIndex[2])
        {
          ValueAtIndex[2] = CFRetain(cf);
          v14 = v13[5];
          if (v14)
          {
            CFRelease(v14);
          }

          v15 = 0;
          v13[5] = a4;
          return v15;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
      }

      else
      {
        v15 = 4294950304;
      }

      if (a4)
      {
        CFRelease(a4);
      }

      return v15;
    }

    v11 = CFGetTypeID(Value);
    if (v11 != CGColorSpaceGetTypeID())
    {
      return 4294950306;
    }

    a4 = CGColorSpaceCopyICCData(a4);
    if (a4)
    {
      goto LABEL_11;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _compressImageAsync_1(uint64_t a1, const __CFDictionary *a2, opaqueCMSampleBuffer *a3, void *a4, uint64_t a5)
{
  v10 = -1;
  v7 = _compressImage_1(a1, a2, a3, &v10);
  v8 = v7;
  if (a4 && !v7)
  {
    *a4 = v10;
  }

  if (a5 && !v7)
  {
    (*(a5 + 16))(a5, 0, 0, v10, 0);
  }

  return v8;
}

uint64_t _createImageDescription(const __CFAllocator *a1, int a2, uint64_t a3, const void *a4, CFMutableDictionaryRef *a5)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v10 = Mutable;
  v11 = CMPhotoCFDictionarySetInt(Mutable, @"ImageHandle", a2);
  if (v11 || (v11 = CMPhotoCFDictionarySetInt64(v10, @"ItemID", a3), v11))
  {
    v12 = v11;
    CFRelease(v10);
  }

  else
  {
    if (a4)
    {
      CFDictionarySetValue(v10, @"AuxiliaryImageType", a4);
    }

    v12 = 0;
    *a5 = v10;
  }

  return v12;
}

uint64_t _encodeSource_0(uint64_t a1, int a2, int a3, uint64_t a4, CFDictionaryRef theDict, const opaqueCMFormatDescription *a6, _BYTE *a7)
{
  v8 = a6;
  v9 = theDict;
  if (!theDict)
  {
    if (a6)
    {
      v15 = 0;
      goto LABEL_8;
    }

    return 4294950306;
  }

  Value = CFDictionaryGetValue(theDict, @"DryRun");
  if ((v8 == 0) != (Value != 0))
  {
    return 4294950306;
  }

  v15 = Value != 0;
  if (Value)
  {
    v8 = Value;
  }

LABEL_8:
  v16 = CFGetAllocator(a1);
  v61 = 0;
  v62[0] = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  if ((a2 | 2) == 2)
  {
    v17 = v16;
    if (v9)
    {
      LODWORD(v54.f64[0]) = 0;
      if (CMPhotoCFDictionaryGetInt32IfPresent())
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_9();
        InputForJPEGCompression = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_85:
        v26 = InputForJPEGCompression;
        goto LABEL_31;
      }
    }

    v48 = a4;
    v18 = *(MEMORY[0x1E695F050] + 16);
    v54 = *MEMORY[0x1E695F050];
    v55 = v18;
    InputForJPEGCompression = CMPhotoCompressionSessionCreateInputForJPEGCompression(a1, v9, v15, a2, v8, &v54, v62);
    if (InputForJPEGCompression)
    {
      goto LABEL_85;
    }

    if (!v15)
    {
      HIBYTE(v53) = 0;
      CMPhotoCFDictionaryGetBooleanIfPresent();
      if (a2 == 2)
      {
        v19 = a7;
        v20 = CMPhotoCompressionSessionCreateEncodeOptionsAndBufferForJPEGAuxImage(a1, v9, a3, 1, &v61, v62, &v60, &v59, &v56);
        if (v20)
        {
LABEL_83:
          v26 = v20;
          goto LABEL_84;
        }

        v9 = v61;
        HIBYTE(v53) = 1;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(v62[0]);
      LODWORD(v53) = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
      if ((v53 - 7) <= 0xFFFFFFF9)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_9();
        InputForJPEGCompression = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_85;
      }

      HIDWORD(v47) = a3;
      v19 = a7;
      if (v9)
      {
        HIBYTE(v52) = 0;
        CMPhotoCFDictionaryGetBooleanIfPresent();
        CMPhotoCFDictionaryGetBooleanIfPresent();
        if (CMPhotoCFDictionaryGetInt32IfPresent() && (v53 - 7) <= 0xFFFFFFF9 || (LODWORD(space[0]) = 0, CMPhotoCFDictionaryGetInt32IfPresent()) && (a2 != 2 ? (v22 = LODWORD(space[0]) == 8) : (v22 = 1), !v22))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9();
          v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_83;
        }

        v23 = FigCFDictionaryGetValue();
        v24 = v23;
        if (v23)
        {
          v25 = CFGetTypeID(v23);
          if (v25 != CGColorSpaceGetTypeID())
          {
            v26 = 4294950306;
LABEL_84:
            a7 = v19;
            goto LABEL_31;
          }
        }
      }

      else
      {
        v24 = 0;
      }

      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (!MutableCopy)
      {
        v26 = 4294950305;
        goto LABEL_84;
      }

      v29 = MutableCopy;
      ColorSpaceFromPixelBuffer = CMPhotoCFDictionarySetInt(MutableCopy, @"Subsampling", v53);
      if (!ColorSpaceFromPixelBuffer)
      {
        if (HIBYTE(v53))
        {
          if (a2 != 2)
          {
            v27 = 0;
            goto LABEL_46;
          }

          v27 = CGColorSpaceCopyICCData(v24);
LABEL_42:
          if (!v24 && v27)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_9();
            v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v44, v45);
LABEL_75:
            v26 = v31;
LABEL_77:
            a7 = v19;
LABEL_57:
            CMPhotoUnifiedJPEGEncoderDestroy(v58);
            CFRelease(v29);
            goto LABEL_58;
          }

LABEL_46:
          v31 = CMPhotoUnifiedJPEGEncoderCreate(v17, *(a1 + 32), *(a1 + 24), *(a1 + 492), &v58);
          if (!v31)
          {
            *space = vcvtq_u64_f64(vrndaq_f64(v54));
            v51 = vcvtq_u64_f64(vrndaq_f64(v55));
            v32 = CMPhotoUnifiedJPEGEncoderEncode(v58, v29, v62[0], 0, space, 1, 0, a1, &v57);
            a7 = v19;
            if (v32)
            {
              v26 = v32;
            }

            else if (a2)
            {
              if (a2 == 2)
              {
                if (*(a1 + 448) || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0), (*(a1 + 448) = Mutable) != 0))
                {
                  v34 = CVPixelBufferGetPixelFormatType(v62[0]);
                  v49 = vcvtq_u64_f64(vrndaq_f64(v55));
                  CMPhotoGetUsedBitDepthForPixelFormat(v34);
                  space[0] = 0;
                  LODWORD(v46) = v53;
                  OUTLINED_FUNCTION_5_26();
                  CMPhotoCompressedAuxImageStorageCreate(v35, v36, v48, v37, v38, 0, HIDWORD(v47), v27, v43, v44, v49.i64[0], v49.i64[1], v46, space, v47, v48, v49.i64[0], v49.i64[1], space[0], space[1], v51.i64[0], v51.i8[8], v51.i32[3], v52, v53, SLODWORD(v54.f64[0]), *&v54.f64[1]);
                  v26 = v39;
                  if (!v39)
                  {
                    CFArrayAppendValue(*(a1 + 448), space[0]);
                  }
                }

                else
                {
                  v26 = 4294950305;
                }
              }

              else
              {
                v26 = 4294950306;
              }
            }

            else
            {
              v26 = CMPhotoDataCreateFromSampleBuffer(v17, v57, 0, (a1 + 416));
              if (!v26)
              {
                *(a1 + 424) = vmovn_s64(vcvtq_s64_f64(v55));
                *(a1 + 440) = v27;
                *(a1 + 432) = v53;
                v27 = 0;
              }
            }

            goto LABEL_57;
          }

          goto LABEL_75;
        }

        space[0] = 0;
        ColorSpaceFromPixelBuffer = CMPhotoCreateColorSpaceFromPixelBuffer(v62[0], space, 1, 1);
        if (!ColorSpaceFromPixelBuffer)
        {
          v27 = CGColorSpaceCopyICCData(space[0]);
          if (space[0])
          {
            CFRelease(space[0]);
          }

          if (a2 != 2)
          {
            goto LABEL_46;
          }

          goto LABEL_42;
        }
      }

      v26 = ColorSpaceFromPixelBuffer;
      v27 = 0;
      goto LABEL_77;
    }

    v26 = 0;
  }

  else
  {
    v26 = 4294950306;
  }

LABEL_31:
  CMPhotoUnifiedJPEGEncoderDestroy(0);
  v27 = 0;
LABEL_58:
  if (v61)
  {
    CFRelease(v61);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v62[0])
  {
    CFRelease(v62[0]);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  CMPhotoSurfacePoolMarkCachesVolatile(*(a1 + 24), 0);
  if (a7 && !v26)
  {
    *a7 = v15;
  }

  return v26;
}

uint64_t _compressAuxImageInternal_1(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, CFDictionaryRef theDict, opaqueCMSampleBuffer *a6, void *a7)
{
  if (theDict)
  {
    v15 = CFDictionaryContainsKey(theDict, @"DryRun") == 0;
  }

  else
  {
    v15 = 1;
  }

  if (a1[52])
  {
    v16 = 1;
  }

  else
  {
    v16 = a1[58] != 0;
  }

  if (v15 && (a2 != 0 || !v16))
  {
    emitter = fig_log_get_emitter();
    v24 = v7;
    v25 = 1176;
  }

  else
  {
    if (a3 <= 5 && ((1 << a3) & 0x36) != 0)
    {
      v26[0] = 0;
      v26[1] = 0;
      SourceDimensions = CMPhotoGetSourceDimensions(a6, theDict, v26);
      if (!SourceDimensions)
      {
        v18 = MEMORY[0x1E695FF58];
        if (*MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        v19 = _encodeSource_0(a1, 2, a3, a4, theDict, a6, 0);
        if (*v18 == 1)
        {
          kdebug_trace();
        }

        if (v19)
        {
          return v19;
        }

        if (v15)
        {
          v20 = a1[56];
          if (!v20)
          {
            return 4294950304;
          }

          Count = CFArrayGetCount(v20);
          if (Count < 1)
          {
            return 4294950304;
          }
        }

        else
        {
          Count = 0;
        }

        v19 = 0;
        if (a7)
        {
          *a7 = Count - 1;
        }

        return v19;
      }

      return SourceDimensions;
    }

    emitter = fig_log_get_emitter();
    v24 = v7;
    v25 = 1181;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950306, "<<<< CMPhotoCompressionSession+DICOM >>>>", v25, v24);
}

uint64_t _newContainer_cold_1_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _newContainer_cold_2_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addMetadataFromImageProperties_cold_1_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addMetadataFromImageProperties_cold_2_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _addMetadataFromImageProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void __CMPhotoIsTileDecoderAvailable_block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  cf = 0;
  v2 = *MEMORY[0x1E695E480];
  keys[0] = *MEMORY[0x1E69841F8];
  values = *MEMORY[0x1E695E4D0];
  v3 = CFDictionaryCreate(v2, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  if (v1 == 1635135537 || v1 == 1752589105 || v1 == 1635148593)
  {
    if (!FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom())
    {
LABEL_6:
      v5 = VTTileDecompressionSessionCreate() == 0;
      goto LABEL_7;
    }
  }

  else if (!CMVideoFormatDescriptionCreate(v2, v1, 1024, 1024, 0, &cf))
  {
    goto LABEL_6;
  }

  v5 = 0;
LABEL_7:
  CFRelease(v4);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_9:
  sTileDecodersAvailable_0 = v5;
}

uint64_t CMPhotoEncoderSupportsPixelFormat(uint64_t a1, int a2, int a3, int a4, _DWORD *a5)
{
  v46 = a1;
  if (!a1)
  {
    return 0;
  }

  if (a2 == 1635135537)
  {
    if (a1 == 875704422 || a1 == 875704438 || a1 == 875704934 || a1 == 875704950 || a1 == 875836518 || a1 == 875836534 || a1 == 1278226488 || a1 == 1278226736 || a1 == 1278226738 || a1 == 1952854576 || a1 == 1952854578 || a1 == 1952855092 || a1 == 1953903152 || a1 == 1953903154 || a1 == 1953903668 || a1 == 2016686640 || a1 == 2016686642 || a1 == 2016687156 || a1 == 2019963440 || a1 == 2019963442 || a1 == 2019963956)
    {
      goto LABEL_90;
    }

    v7 = 1;
    DefaultImageSubsamplingForEncodeFromPixelFormat = CMPhotoGetDefaultImageSubsamplingForEncodeFromPixelFormat(a1, 1635135537, 1);
    IsFullRange = CMPhotoPixelFormatIsFullRange(a1);
    BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(a1);
    if (BitDepthForPixelFormat <= 8)
    {
      v42 = 8;
    }

    else
    {
      v42 = 10;
    }

    if (BitDepthForPixelFormat <= 0xA)
    {
      v43 = v42;
    }

    else
    {
      v43 = 12;
    }

    if (CMPhotoGetYUVPixelFormatForParameters(DefaultImageSubsamplingForEncodeFromPixelFormat, v43, IsFullRange, 0, 0, 0, 0, &v46))
    {
      return v7;
    }
  }

  else
  {
    if (a2 != 1936484717)
    {
      if (a2 == 1752589105)
      {
        if (!CMPhotoIsPixelFormatSupportedByHEVC(a1, a4))
        {
          v11 = CMPhotoGetBitDepthForPixelFormat(a1);
          if ((a1 - 1278226488) <= 0x30 && ((1 << (a1 - 56)) & 0x1400000000001) != 0 || (a1 - 1278226736) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0 || (a1 != 1717855600 ? (v12 = a1 == 1717856627) : (v12 = 1), !v12 ? (v13 = a1 == 1751410032) : (v13 = 1), !v13 ? (v14 = a1 == 1751411059) : (v14 = 1), v14 || CMPhotoPixelFormatIsRAW(a1) || CMPhotoPixelFormatIsRAWVersatile(a1)))
          {
            v8 = 1278226488;
            v16 = 1278226736;
            v15 = v11 > 8;
          }

          else
          {
            v15 = v11 > 8;
            v8 = 875704422;
            v16 = 2019963440;
          }

          if (v15)
          {
            v8 = v16;
          }

          v7 = 0;
          goto LABEL_101;
        }
      }

      else if (a2 == 1635148593 && !CMPhotoIsPixelFormatSupportedByAVC(a1))
      {
        v7 = 0;
        v8 = 875704422;
LABEL_101:
        v46 = v8;
        goto LABEL_91;
      }

LABEL_90:
      v7 = 1;
      goto LABEL_91;
    }

    if (CMPhotoIsPixelFormatSupportedBySLIM(a1, a3))
    {
      goto LABEL_90;
    }

    v46 = 0;
    if (a3 == 5)
    {
      OUTLINED_FUNCTION_0_35(&_getDeviceType_onceToken);
      v7 = &unk_1ED6FA000;
      if (sDeviceType < 0x11)
      {
LABEL_11:
        v10 = 1;
        goto LABEL_121;
      }

      switch(a1)
      {
        case 0x62703136:
          v10 = 0;
          v38 = 643970675;
          break;
        case 0x62766338:
          v10 = 0;
          v38 = 645161784;
          break;
        case 0x62766568:
          v10 = 0;
          v38 = 643970664;
          break;
        case 0x68646973:
          v10 = 0;
          v38 = 644375667;
          break;
        case 0x62786338:
          v10 = 0;
          v38 = 645423928;
          break;
        default:
          goto LABEL_11;
      }

      v46 = v38;
LABEL_121:
      OUTLINED_FUNCTION_0_35(&_getDeviceType_onceToken);
      if (sDeviceType < 0xA)
      {
        goto LABEL_122;
      }

      if (a1 == 1751411059)
      {
        if (!v10)
        {
          goto LABEL_122;
        }
      }

      else if (a1 != 1278226536)
      {
        if (a1 == 1278226742)
        {
          OUTLINED_FUNCTION_1_30();
          v8 = v45 + 206;
          goto LABEL_101;
        }

        if (a1 != 1751410032)
        {
          if (a1 == 1278226488)
          {
            OUTLINED_FUNCTION_1_30();
            v8 = v44 - 48;
            goto LABEL_101;
          }

          goto LABEL_122;
        }
      }

      OUTLINED_FUNCTION_1_30();
      goto LABEL_101;
    }
  }

LABEL_122:
  v7 = 0;
LABEL_91:
  if (a5)
  {
    *a5 = v46;
  }

  return v7;
}

void CMPhotoValidateMobileGestaltQuery_cold_1(_BYTE *a1)
{
  v2 = MGCopyAnswer();
  v3 = FigCFEqual();
  v4 = MGCopyAnswer();
  v5 = FigCFEqual();
  if (v3 || (OUTLINED_FUNCTION_0_35(&_getDeviceType_onceToken), sDeviceType <= 5))
  {
    if (v5)
    {
      LOBYTE(v6) = 1;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_35(&_getDeviceType_onceToken);
      v6 = sDeviceType <= 4;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    CFRelease(v2);
    goto LABEL_8;
  }

  LOBYTE(v6) = 0;
  if (v2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = v6;
}

uint64_t _createDNGInternal(const __CFDictionary *a1, const __CFData *a2, const __CFDictionary *a3, const __CFData *a4, __CVBuffer *a5, const __CFArray *a6, int a7, uint64_t a8, void *a9)
{
  HIDWORD(v598) = a7;
  v584 = a2;
  keys[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_66_0();
  bzero(&__src, 0x878uLL);
  v618 = 0;
  *v616 = 0u;
  *v617 = 0u;
  *v615 = 0u;
  v614 = 0xFFFF0000FFFFLL;
  FigKTraceInit();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  v15 = 4294950746;
  if (!a1)
  {
    goto LABEL_13;
  }

  v16 = a9;
  if (!a9)
  {
    goto LABEL_13;
  }

  if ((a4 == 0) != (a5 != 0))
  {
    goto LABEL_188;
  }

  if (HIDWORD(v598))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a5);
    v18 = PixelFormatType == 1751527984 || PixelFormatType == 1815491698;
    if (!v18)
    {
      fig_log_get_emitter();
      v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v468, v482, v496);
LABEL_12:
      v15 = v19;
      goto LABEL_13;
    }
  }

  *a9 = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  v15 = _dngInfoInit(&__src, a4, a5, a1, a6, SHIDWORD(v598), a3, v584);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_42();
    kdebug_trace();
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v28 = *MEMORY[0x1E695E480];
  v617[1] = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!v617[1] || (v539 = a8, LOBYTE(v618) = 1, LODWORD(v616[0]) = 0, LODWORD(v617[0]) = 20, OUTLINED_FUNCTION_83_1(), (v616[1] = malloc_type_malloc(0x50uLL, v29)) == 0))
  {
LABEL_186:
    v15 = 4294950745;
    goto LABEL_13;
  }

  memset(v615, 0, sizeof(v615));
  LODWORD(v30) = v658;
  CFDataAppendBytes(v617[1], byte_1ED6FA2D0, 8);
  CFDataAppendBytes(v617[1], &byte_1ED6FA2D0[8], 8);
  v19 = _cmphotoDNGWriterIFDBegin(v615, 4);
  if (v19)
  {
    goto LABEL_12;
  }

  if (v584)
  {
    v30 = (v30 + 1);
  }

  else
  {
    v30 = v30;
  }

  if (v632)
  {
    _ifdAddTagS(v615, 270, v632);
  }

  _ifdAddTagS(v615, 271, v621);
  _ifdAddTagS(v615, 272, v622);
  OUTLINED_FUNCTION_6_27(v628);
  OUTLINED_FUNCTION_41_3(v31, 274, v32, v33, v34);
  _ifdAddTagS(v615, 305, v623);
  _ifdAddTagS(v615, 306, cf);
  if (v624)
  {
    _ifdAddTagS(v615, 315, v624);
  }

  if (v30 < 1)
  {
    HIDWORD(v570) = 0xFFFF;
  }

  else
  {
    v35 = _ifdAddTag4(v615, 330, 4, v30, 0);
    HIDWORD(v570) = v35;
  }

  v42 = v625;
  if (v625)
  {
    _ifdAddTagS(v615, 33432, v625);
  }

  if (v654)
  {
    LODWORD(keys[0]) = 0;
    v43 = OUTLINED_FUNCTION_18_10(v35, v36, v42, v37, v38, v39, v40, v41, v468, v482, v496, v510, v524, a8, v554, v570, v584, v598, v613, v614, v615[0]);
    v35 = OUTLINED_FUNCTION_42_3(v43, 34665, v44, v45, v46);
    v47 = v35;
  }

  else
  {
    v47 = 0xFFFF;
  }

  if (v653)
  {
    LODWORD(keys[0]) = 0;
    v48 = OUTLINED_FUNCTION_18_10(v35, v36, v42, v37, v38, v39, v40, v41, v468, v482, v496, v510, v524, v539, v554, v570, v584, v598, v613, v614, v615[0]);
    v52 = OUTLINED_FUNCTION_42_3(v48, 34853, v49, v50, v51);
  }

  else
  {
    v52 = 0xFFFF;
  }

  _ifdAddTag4(v615, 50706, 1, 4uLL, &__src);
  _ifdAddTag4(v615, 50707, 1, 4uLL, v620);
  _ifdAddTagS(v615, 50708, v627);
  v55 = OUTLINED_FUNCTION_93_0(v615, 50721, v53, v54, v638);
  if (v640)
  {
    v55 = OUTLINED_FUNCTION_93_0(v615, 50722, v57, v58, v639);
  }

  if (v645)
  {
    v63 = OUTLINED_FUNCTION_38_2(v55, v56, v57, v58, v59, v60, v61, v62, v468, v482, v496, v510, v524, v539, v554, v570, v584, v598, v613, v614, v615[0]);
    v55 = OUTLINED_FUNCTION_93_0(v63, 50723, v65, v66, (v64 + 572));
  }

  if (v646)
  {
    v67 = OUTLINED_FUNCTION_38_2(v55, v56, v57, v58, v59, v60, v61, v62, v468, v482, v496, v510, v524, v539, v554, v570, v584, v598, v613, v614, v615[0]);
    v55 = OUTLINED_FUNCTION_93_0(v67, 50724, v69, v70, (v68 + 648));
  }

  if (v643)
  {
    v71 = OUTLINED_FUNCTION_38_2(v55, v56, v57, v58, v59, v60, v61, v62, v468, v482, v496, v510, v524, v539, v554, v570, v584, v598, v613, v614, v615[0]);
    v73 = (v72 + 444);
    v74 = -14808;
    v75 = 3;
  }

  else
  {
    v71 = OUTLINED_FUNCTION_38_2(v55, v56, v57, v58, v59, v60, v61, v62, v468, v482, v496, v510, v524, v539, v554, v570, v584, v598, v613, v614, v615[0]);
    v73 = (v76 + 496);
    v74 = -14807;
    v75 = 2;
  }

  v77 = _ifdAddTag4(v71, v74, 5, v75, v73);
  if (v644)
  {
    v85 = OUTLINED_FUNCTION_38_2(v77, v78, v79, v80, v81, v82, v83, v84, v469, v483, v497, v511, v525, v540, v555, v571, v585, v599, v613, v614, v615[0]);
    v77 = _ifdAddTag4(v85, 50727, 5, 3uLL, (v86 + 516));
  }

  if (v641)
  {
    v77 = _ifdAddTag4(v615, 50730, 10, 1uLL, &v641);
  }

  if (v642[0])
  {
    v77 = OUTLINED_FUNCTION_71_1(v615, 50731, v79, v80, v642);
  }

  if (v642[2])
  {
    v87 = OUTLINED_FUNCTION_38_2(v77, v78, v79, v80, v81, v82, v83, v84, v469, v483, v497, v511, v525, v540, v555, v571, v585, v599, v613, v614, v615[0]);
    OUTLINED_FUNCTION_71_1(v87, 50732, v89, v90, (v88 + 436));
  }

  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    _ifdAddTag4(v615, 50740, 1, Length, BytePtr);
  }

  OUTLINED_FUNCTION_6_27(v633);
  v97 = OUTLINED_FUNCTION_41_3(v93, 50778, v94, v95, v96);
  if (v635)
  {
    OUTLINED_FUNCTION_6_27(v634);
    v97 = OUTLINED_FUNCTION_41_3(v105, 50779, v106, v107, v108);
  }

  if (v636)
  {
    v109 = OUTLINED_FUNCTION_38_2(v97, v98, v99, v100, v101, v102, v103, v104, v469, v483, v497, v511, v525, v540, v555, v571, v585, v599, v613, v614, v615[0]);
    _ifdAddTagIlluminant(v109, 52533, (v110 + 232));
  }

  if (v637)
  {
    v111 = OUTLINED_FUNCTION_38_2(v97, v98, v99, v100, v101, v102, v103, v104, v469, v483, v497, v511, v525, v540, v555, v571, v585, v599, v613, v614, v615[0]);
    _ifdAddTagIlluminant(v111, 52534, (v112 + 252));
  }

  if (v648)
  {
    _ifdAddTagS(v615, 50931, v648);
  }

  if (v649)
  {
    _ifdAddTagS(v615, 50932, v649);
  }

  v113 = __n[0];
  if (__n[0] >= 1)
  {
    _ifdAddTag4(v615, 50940, 11, __n[0], *&__n[1]);
  }

  if (v650)
  {
    _ifdAddTagS(v615, 50934, v650);
  }

  v114 = v651;
  if (v651)
  {
    _ifdAddTagS(v615, 50936, v651);
  }

  if (v662 != -1)
  {
    OUTLINED_FUNCTION_6_27(v662);
    OUTLINED_FUNCTION_42_3(v115, 50941, v116, v117, v118);
  }

  v119 = OUTLINED_FUNCTION_71_1(v615, 50935, v114, v113, v647);
  if (v585)
  {
    LODWORD(keys[0]) = 1;
    v127 = OUTLINED_FUNCTION_18_10(v119, v120, v121, v122, v123, v124, v125, v126, v469, v483, v497, v511, v525, v540, v555, v571, v585, v599, v613, v614, v615[0]);
    OUTLINED_FUNCTION_42_3(v127, 254, v128, v129, v130);
    OUTLINED_FUNCTION_6_27(v655);
    OUTLINED_FUNCTION_42_3(v131, 256, v132, v133, v134);
    OUTLINED_FUNCTION_6_27(v656);
    OUTLINED_FUNCTION_42_3(v135, 257, v136, v137, v138);
    OUTLINED_FUNCTION_94_1(v615, 258, v139, v140, _addJPEGPreviewTags_bps888);
    OUTLINED_FUNCTION_6_27(v657);
    OUTLINED_FUNCTION_40_3(v141, v142, v143, v144, v145);
    if (v657 == 52546)
    {
      v146 = 2;
    }

    else
    {
      v146 = 6;
    }

    OUTLINED_FUNCTION_6_27(v146);
    v152 = OUTLINED_FUNCTION_39_2(v147, v148, v149, v150, v151);
    LODWORD(keys[0]) = 0;
    v160 = OUTLINED_FUNCTION_18_10(v152, v153, v154, v155, v156, v157, v158, v159, v470, v484, v498, v512, v526, v541, v556, v572, v586, v600, v613, v614, v615[0]);
    HIDWORD(v513) = OUTLINED_FUNCTION_42_3(v160, 273, v161, v162, v163);
    OUTLINED_FUNCTION_6_27(3);
    OUTLINED_FUNCTION_41_3(v164, 277, v165, v166, v167);
    OUTLINED_FUNCTION_6_27(v656);
    OUTLINED_FUNCTION_42_3(v168, 278, v169, v170, v171);
    v172 = CFDataGetLength(v587);
    LODWORD(keys[0]) = v172;
    v180 = OUTLINED_FUNCTION_18_10(v172, v173, v174, v175, v176, v177, v178, v179, v471, v485, v499, v513, v527, v542, v557, v573, v587, v601, v613, v614, v615[0]);
    OUTLINED_FUNCTION_42_3(v180, 279, v181, v182, v183);
  }

  else
  {
    OUTLINED_FUNCTION_92_1(v119, v120, v121, v122, v123, v124, v125, v126, v469, v483, v497, v511, v525, v540, v555, v571, 0, v599, v613, v614, SHIDWORD(v614), *v615, *&v615[8], v616[0], v616[1], v617[0], v617[1], v618, __src);
    HIDWORD(v514) = 0xFFFF;
  }

  v184 = _cmphotoDNGWriterIFDEnd(v615);
  if (v184)
  {
    goto LABEL_172;
  }

  v528 = a4;
  if (v652)
  {
    v613 = 0;
    if (v654)
    {
      v184 = _cmphotoDNGWriterIFDGetTagDataOffset(v615, v47, &v613 + 1);
      if (v184)
      {
        goto LABEL_172;
      }
    }

    if (v653)
    {
      v184 = _cmphotoDNGWriterIFDGetTagDataOffset(v615, v52, &v613);
      if (v184)
      {
LABEL_172:
        v15 = v184;
        OUTLINED_FUNCTION_66_0();
        goto LABEL_13;
      }

      v192 = v613;
    }

    else
    {
      v192 = 0;
    }

    OUTLINED_FUNCTION_66_0();
    v193 = HIDWORD(v613);
    keys[0] = *MEMORY[0x1E696D378];
    values = *MEMORY[0x1E695E4C0];
    v194 = CFDictionaryCreate(v28, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v194)
    {
      v195 = v194;
      EXIFDataFromProperties = CGImageCreateEXIFDataFromProperties();
      if (EXIFDataFromProperties)
      {
        v197 = EXIFDataFromProperties;
        v198 = CFDataGetBytePtr(EXIFDataFromProperties);
        v500 = (v198 + 6);
        v199 = CMPhotoDNGRead16(v198 + 3, 0);
        if (v199 != 19789 && v199 != 18761)
        {
          goto LABEL_129;
        }

        v201 = v199 == 19789;
        if (v618 == v201)
        {
          if (CMPhotoDNGRead16(v198 + 4, v201) != 42)
          {
LABEL_129:
            v15 = 4294950743;
            goto LABEL_130;
          }

          v202 = CMPhotoDNGRead32((v198 + 10), v201);
          if (!v202)
          {
LABEL_128:
            v15 = 0;
            goto LABEL_130;
          }

          v203 = v202;
          HIDWORD(v486) = v193;
          v15 = CMPhotoDNGRead16((v500 + v202), v201);
          if (!v15)
          {
            goto LABEL_130;
          }

          LODWORD(v486) = v192;
          v558 = a9;
          v204 = 0;
          v205 = 0;
          v206 = &v198[v203 + 16];
          do
          {
            v207 = CMPhotoDNGRead16(v206 - 4, v201);
            if (v207 == 34853)
            {
              v205 = CMPhotoDNGRead32(v206, v201);
            }

            else if (v207 == 34665)
            {
              v204 = CMPhotoDNGRead32(v206, v201);
            }

            v206 += 3;
            LODWORD(v15) = v15 - 1;
          }

          while (v15);
          OUTLINED_FUNCTION_66_0();
          if (!v204)
          {
            v16 = a9;
            if (!v205)
            {
              goto LABEL_128;
            }

LABEL_184:
            v15 = _cmphotoDNGWriterIFDInsert(v615, v500, v205, v486);
            goto LABEL_130;
          }

          v15 = _cmphotoDNGWriterIFDInsert(v615, v500, v204, SHIDWORD(v486));
          if (!v15)
          {
            v16 = a9;
            if (!v205)
            {
              goto LABEL_130;
            }

            goto LABEL_184;
          }

          v16 = a9;
        }

        else
        {
          v15 = 4294950739;
        }

LABEL_130:
        CFRelease(v197);
        CFRelease(v195);
        if (v15)
        {
          goto LABEL_13;
        }

        goto LABEL_131;
      }

      CFRelease(v195);
LABEL_188:
      v15 = 4294950739;
      goto LABEL_13;
    }

    goto LABEL_186;
  }

LABEL_131:
  if (v588)
  {
    LODWORD(keys[0]) = 0;
    v208 = OUTLINED_FUNCTION_84_1(v184, v185, v186, v187, v188, v189, v190, v191, v472, v486, v500, v514, v528, v543, v558, v574, v588, v602, v613, v614, v615[0]);
    v184 = _cmphotoDNGWriterIFDGetTagDataOffset(v208, HIDWORD(v575), v209);
    if (v184)
    {
      goto LABEL_172;
    }

    v184 = _cmphotoDNGWriterIFDBegin(v615, keys[0]);
    if (v184)
    {
      goto LABEL_172;
    }

    OUTLINED_FUNCTION_92_1(v184, v210, v211, v212, v213, v214, v215, v216, v473, v487, v501, v515, v529, v544, v559, v575, v589, v603, v613, v614, SHIDWORD(v614), *v615, *&v615[8], v616[0], v616[1], v617[0], v617[1], v618, __src);
    v184 = _cmphotoDNGWriterIFDEnd(v615);
    if (v184)
    {
      goto LABEL_172;
    }
  }

  v560 = v16;
  if (v658 >= 1)
  {
    v217 = 0;
    v218 = 0;
    v219 = 0;
    v220 = 4 * (v588 != 0);
    while (1)
    {
      v221 = v659;
      LODWORD(values) = 0;
      v184 = _cmphotoDNGWriterIFDGetTagDataOffset(v615, HIDWORD(v574), &values);
      if (v184)
      {
        goto LABEL_172;
      }

      v184 = _cmphotoDNGWriterIFDBegin(v615, v220 + values);
      if (v184)
      {
        goto LABEL_172;
      }

      v229 = &v221[v217];
      if ((*&v221[v217 + 28] - 1) > 1)
      {
        OUTLINED_FUNCTION_6_27(65540);
        OUTLINED_FUNCTION_42_3(v249, 254, v250, v251, v252);
        OUTLINED_FUNCTION_6_27(*(v229 + 8));
        OUTLINED_FUNCTION_42_3(v253, 256, v254, v255, v256);
        OUTLINED_FUNCTION_6_27(*(v229 + 9));
        v261 = OUTLINED_FUNCTION_42_3(v257, 257, v258, v259, v260);
        LODWORD(keys[0]) = 8;
        v269 = OUTLINED_FUNCTION_18_10(v261, v262, v263, v264, v265, v266, v267, v268, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
        OUTLINED_FUNCTION_41_3(v269, 258, v270, v271, v272);
        OUTLINED_FUNCTION_75_1();
        if (!v18 & v247)
        {
          v274 = 0;
        }

        else
        {
          v274 = dword_1A5ABCB58[v273];
        }

        OUTLINED_FUNCTION_6_27(v274);
        OUTLINED_FUNCTION_40_3(v368, v369, v370, v371, v372);
        OUTLINED_FUNCTION_6_27(52527);
        v378 = OUTLINED_FUNCTION_39_2(v373, v374, v375, v376, v377);
        LODWORD(keys[0]) = 0;
        v386 = OUTLINED_FUNCTION_18_10(v378, v379, v380, v381, v382, v383, v384, v385, v475, v489, v503, v517, v531, v546, v562, v577, v591, v605, v613, v614, v615[0]);
        v390 = OUTLINED_FUNCTION_42_3(v386, 273, v387, v388, v389);
        *(v229 + 15) = v390;
        LODWORD(keys[0]) = 1;
        v398 = OUTLINED_FUNCTION_18_10(v390, v391, v392, v393, v394, v395, v396, v397, v480, v494, v508, v522, v536, v551, v567, v582, v596, v610, v613, v614, v615[0]);
        OUTLINED_FUNCTION_41_3(v398, 277, v399, v400, v401);
        OUTLINED_FUNCTION_6_27(*(v229 + 9));
        OUTLINED_FUNCTION_42_3(v402, 278, v403, v404, v405);
        v406 = &v221[v217];
        v407 = CFDataGetLength(*&v221[v217]);
        LODWORD(keys[0]) = v407;
        v415 = OUTLINED_FUNCTION_18_10(v407, v408, v409, v410, v411, v412, v413, v414, v481, v495, v509, v523, v537, v552, v568, v583, v597, v611, v613, v614, v615[0]);
        OUTLINED_FUNCTION_42_3(v415, 279, v416, v417, v418);
        v419 = *&v221[v217 + 8];
        if (v419)
        {
          CFDataGetLength(v419);
          v420 = CFDataGetBytePtr(*(v406 + 1));
          OUTLINED_FUNCTION_67_1(v420, v421, v422, v423, v424, v425, v426, v427, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614);
        }

        _ifdAddTagS(v615, 52526, *(v406 + 2));
      }

      else
      {
        LODWORD(keys[0]) = 8;
        v230 = OUTLINED_FUNCTION_18_10(v184, v222, v223, v224, v225, v226, v227, v228, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
        OUTLINED_FUNCTION_42_3(v230, 254, v231, v232, v233);
        OUTLINED_FUNCTION_6_27(*(v229 + 8));
        OUTLINED_FUNCTION_42_3(v234, 256, v235, v236, v237);
        OUTLINED_FUNCTION_6_27(*(v229 + 9));
        OUTLINED_FUNCTION_42_3(v238, 257, v239, v240, v241);
        OUTLINED_FUNCTION_6_27(*(v229 + 10));
        OUTLINED_FUNCTION_41_3(v242, 258, v243, v244, v245);
        OUTLINED_FUNCTION_75_1();
        if (!v18 & v247)
        {
          v248 = 0;
        }

        else
        {
          v248 = dword_1A5ABCB58[v246];
        }

        OUTLINED_FUNCTION_6_27(v248);
        OUTLINED_FUNCTION_40_3(v275, v276, v277, v278, v279);
        OUTLINED_FUNCTION_6_27(51177);
        v285 = OUTLINED_FUNCTION_39_2(v280, v281, v282, v283, v284);
        LODWORD(keys[0]) = 0;
        v293 = OUTLINED_FUNCTION_18_10(v285, v286, v287, v288, v289, v290, v291, v292, v474, v488, v502, v516, v530, v545, v561, v576, v590, v604, v613, v614, v615[0]);
        v297 = OUTLINED_FUNCTION_42_3(v293, 273, v294, v295, v296);
        *(v229 + 15) = v297;
        LODWORD(keys[0]) = 1;
        v305 = OUTLINED_FUNCTION_18_10(v297, v298, v299, v300, v301, v302, v303, v304, v476, v490, v504, v518, v532, v547, v563, v578, v592, v606, v613, v614, v615[0]);
        OUTLINED_FUNCTION_41_3(v305, 277, v306, v307, v308);
        OUTLINED_FUNCTION_6_27(*(v229 + 9));
        OUTLINED_FUNCTION_42_3(v309, 278, v310, v311, v312);
        v313 = &v221[v217];
        v314 = CFDataGetLength(*&v221[v217]);
        LODWORD(keys[0]) = v314;
        v322 = OUTLINED_FUNCTION_18_10(v314, v315, v316, v317, v318, v319, v320, v321, v477, v491, v505, v519, v533, v548, v564, v579, v593, v607, v613, v614, v615[0]);
        OUTLINED_FUNCTION_42_3(v322, 279, v323, v324, v325);
        v326 = *&v221[v217 + 8];
        if (v326)
        {
          CFDataGetLength(v326);
          v327 = CFDataGetBytePtr(*(v313 + 1));
          OUTLINED_FUNCTION_67_1(v327, v328, v329, v330, v331, v332, v333, v334, v478, v492, v506, v520, v534, v549, v565, v580, v594, v608, v613, v614);
        }

        v335 = *(v229 + 7) == 1 ? 2 : 1;
        OUTLINED_FUNCTION_6_27(v335);
        OUTLINED_FUNCTION_41_3(v336, 51177, v337, v338, v339);
        OUTLINED_FUNCTION_71_1(v615, 51178, v340, v341, v313 + 22);
        v344 = OUTLINED_FUNCTION_71_1(v615, 51179, v342, v343, v313 + 26);
        LODWORD(keys[0]) = 1;
        v352 = OUTLINED_FUNCTION_18_10(v344, v345, v346, v347, v348, v349, v350, v351, v478, v492, v506, v520, v534, v549, v565, v580, v594, v608, v613, v614, v615[0]);
        v356 = OUTLINED_FUNCTION_41_3(v352, 51180, v353, v354, v355);
        LODWORD(keys[0]) = 1;
        v364 = OUTLINED_FUNCTION_18_10(v356, v357, v358, v359, v360, v361, v362, v363, v479, v493, v507, v521, v535, v550, v566, v581, v595, v609, v613, v614, v615[0]);
        OUTLINED_FUNCTION_41_3(v364, 51181, v365, v366, v367);
      }

      v428 = CFDataGetLength(*&v221[v217]);
      v184 = _cmphotoDNGWriterIFDEnd(v615);
      if (v184)
      {
        goto LABEL_172;
      }

      v219 += v428;
      ++v218;
      v220 += 4;
      v217 += 64;
      if (v218 >= v658)
      {
        goto LABEL_159;
      }
    }
  }

  v219 = 0;
LABEL_159:
  OUTLINED_FUNCTION_66_0();
  if (v588)
  {
    LODWORD(keys[0]) = 0;
    v438 = OUTLINED_FUNCTION_84_1(v429, v430, v431, v432, v433, v434, v435, v436, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
    v19 = _cmphotoDNGWriterIFDGetTagDataOffset(v438, HIDWORD(v514), v439);
    if (v19)
    {
      goto LABEL_12;
    }

    MutableBytePtr = CFDataGetMutableBytePtr(v617[1]);
    v441 = LODWORD(keys[0]);
    v442 = CFDataGetLength(v617[1]);
    CMPhotoDNGWrite32(&MutableBytePtr[v441], v442, v618);
    v443 = v617[1];
    v444 = CFDataGetBytePtr(v588);
    v445 = CFDataGetLength(v588);
    CFDataAppendBytes(v443, v444, v445);
    v446 = v617[1];
    v447 = CFDataGetLength(v617[1]);
    CFDataAppendBytes(v446, zero, -v447 & 3);
    v437 = v658;
  }

  if (v437 >= 1)
  {
    v448 = 0;
    v449 = 0;
    do
    {
      LODWORD(keys[0]) = 0;
      v450 = OUTLINED_FUNCTION_84_1(v429, *(v659 + v448 + 60), v431, v432, v433, v434, v435, v436, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
      v19 = _cmphotoDNGWriterIFDGetTagDataOffset(v450, v451, v452);
      if (v19)
      {
        goto LABEL_12;
      }

      v453 = CFDataGetMutableBytePtr(v617[1]);
      v454 = LODWORD(keys[0]);
      v455 = CFDataGetLength(v617[1]);
      CMPhotoDNGWrite32(&v453[v454], v455, v618);
      v456 = *(v659 + v448);
      v457 = v617[1];
      v458 = CFDataGetBytePtr(v456);
      v459 = CFDataGetLength(v456);
      CFDataAppendBytes(v457, v458, v459);
      CFDataGetLength(v617[1]);
      v460 = OUTLINED_FUNCTION_48_1();
      CFDataAppendBytes(v460, v461, v462);
      ++v449;
      v448 += 64;
    }

    while (v449 < v658);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    v429 = kdebug_trace();
  }

  v463 = v614;
  LODWORD(keys[0]) = 0;
  LODWORD(values) = 0;
  v464 = OUTLINED_FUNCTION_84_1(v429, HIDWORD(v614), v431, v432, v433, v434, v435, v436, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
  v467 = _cmphotoDNGWriterIFDGetTagDataOffset(v464, v465, v466);
  if (!v467)
  {
    v467 = _cmphotoDNGWriterIFDGetTagDataOffset(v615, v463, &values);
    if (!v467)
    {
      if (v538)
      {
        v467 = CMPhotoDNGWriteCompressedRaw(&__src, v538, v617[1], keys[0], values, v618);
      }

      else if (v612)
      {
        v467 = CMPhotoDNGCompressLinearDNG(&__src, a5, v617[1], LODWORD(keys[0]), values, v618);
      }

      else
      {
        v467 = CMPhotoDNGCompressRaw(&__src, a5, v617[1], keys[0], values, v618, v629, v630);
      }
    }
  }

  v15 = v467;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_42();
    kdebug_trace();
  }

  if (!v15)
  {
    *v569 = CFRetain(v617[1]);
    v15 = 0;
    if (v553)
    {
      *v553 = v219;
    }
  }

LABEL_13:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v652)
  {
    CFRelease(v652);
  }

  if (v658 >= 1)
  {
    v20 = 0;
    for (i = 0; i < v658; ++i)
    {
      v22 = v659;
      v23 = *(v659 + v20 + 16);
      if (v23)
      {
        CFRelease(v23);
        v22 = v659;
      }

      v24 = *&v22[v20];
      if (v24)
      {
        CFRelease(v24);
        v22 = v659;
      }

      v25 = *&v22[v20 + 8];
      if (v25)
      {
        CFRelease(v25);
      }

      v20 += 64;
    }
  }

  free(v659);
  _cmphotoDNGWriterReleaseTagStorage(v615);
  if (v617[1])
  {
    CFRelease(v617[1]);
    v617[1] = 0;
  }

  v26 = v616[1];
  if (v616[1])
  {
    v616[1] = 0;
    free(v26);
  }

  free(v660);
  free(*&__n[1]);
  return v15;
}

uint64_t CMPhotoDNGCreateDNGFromRAWPixelBufferAndAuxiliaryImage(uint64_t a1, __CVBuffer *a2, uint64_t a3, const void *a4, const void *a5, const void *a6, const void *a7)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v12 = OUTLINED_FUNCTION_96();
    Mutable = CFDictionaryCreateMutable(v12, v13, v14, v15);
    if (!Mutable)
    {
      return 4294950745;
    }

    v17 = Mutable;
    DNGInternal = 4294950746;
    if (a5 && a6)
    {
      CFDictionarySetValue(Mutable, @"AuxPixelBuffer", a4);
      CFDictionarySetValue(v17, @"AuxMetadata", a5);
      CFDictionarySetValue(v17, @"AuxImageType", a6);
      if (a7)
      {
        CFDictionarySetValue(v17, @"AuxOptions", a7);
      }

      v29[0] = v17;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v19 = OUTLINED_FUNCTION_87_1();
      DNGInternal = _createDNGInternal(v19, v20, v21, 0, a2, v22, 0, 0, v28);
    }

    CFRelease(v17);
    return DNGInternal;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_87_1();
    return _createDNGInternal(v24, v25, v26, v27, a2, 0, 0, 0, v28);
  }
}

uint64_t CMPhotoDNGCreateCompressedDataFromRAWPixelBuffer(__CVBuffer *a1, uint64_t a2, __CFData **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  bzero(v21, 0x878uLL);
  FigKTraceInit();
  if (!a3)
  {
    return 4294950746;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 4294950745;
  }

  v6 = Mutable;
  FigCFDictionaryGetBooleanIfPresent();
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v21[25] = Width;
  v21[26] = Height;
  v23 = 2;
  v22 = 0x3FFF00000840;
  _tileDescriptionInitialize(v21);
  *bytes = 0x163726177;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v16 = Width;
  v17 = Height;
  v18 = v24;
  v9 = v25;
  v19 = v25;
  v20 = 1;
  CFDataAppendBytes(v6, bytes, 36);
  Length = CFDataGetLength(v6);
  v9 *= 4;
  CFDataIncreaseLength(v6, v9);
  v11 = CFDataGetLength(v6);
  CFDataIncreaseLength(v6, v9);
  v12 = CMPhotoDNGCompressRaw(v21, a1, v6, Length, v11, v20, v22, WORD2(v22));
  if (v12)
  {
    CFRelease(v6);
  }

  else
  {
    *a3 = v6;
  }

  return v12;
}

uint64_t _createCVPixelBufferFromDNGData(CFDataRef theData, size_t a2, size_t a3, unint64_t a4, unint64_t a5, size_t a6, uint64_t a7, int a8, int a9, CVPixelBufferRef *a10)
{
  v70[4] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if (!theData)
  {
    return 4294950739;
  }

  v17 = a3;
  v18 = a2;
  if (a5 | a4)
  {
    v19 = 4294950741;
    if (!a4 || !a5)
    {
      goto LABEL_38;
    }

    v18 = CMPhotoAlignValue(a2, a4);
    v17 = CMPhotoAlignValue(a3, a5);
  }

  if (!a6)
  {
    a6 = CMPhotoGetBytesPerPixelForPixelFormat(a7) * v18;
    if (!a6)
    {
      v19 = 4294950741;
      goto LABEL_38;
    }
  }

  if (a7 == 1751527984 || a7 == 875704422)
  {
    v19 = 4294950739;
    if (!v18)
    {
      goto LABEL_38;
    }

    if (!v17)
    {
      goto LABEL_38;
    }

    v21 = (CFDataGetLength(theData) * 0.666666667);
    if (a6 * v17 != v21)
    {
      goto LABEL_38;
    }

    v22 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
    v23 = *MEMORY[0x1E69660D8];
    v70[0] = MEMORY[0x1E695E0F8];
    v24 = *MEMORY[0x1E6966130];
    v69[0] = v23;
    v69[1] = v24;
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a7];
    v26 = *MEMORY[0x1E6965F30];
    v27 = *MEMORY[0x1E6965F60];
    v70[1] = v25;
    v70[2] = v27;
    v28 = *MEMORY[0x1E6965CE8];
    v69[2] = v26;
    v69[3] = v28;
    v70[3] = v22;
    pixelBufferAttributes = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:4];
    v68[0] = a2;
    v68[1] = a2 >> 1;
    v67[0] = a3;
    v67[1] = a3 >> 1;
    v66[0] = a6;
    v66[1] = a6;
    planeBaseAddress[0] = CFDataGetBytePtr(theData);
    planeBaseAddress[1] = &CFDataGetBytePtr(theData)[v21];
    CFRetain(theData);
    v19 = CVPixelBufferCreateWithPlanarBytes(*MEMORY[0x1E695E480], a2, a3, a7, 0, 0, 2uLL, planeBaseAddress, v68, v67, v66, _pixelBufferPlanarReleaseCallback, theData, pixelBufferAttributes, &pixelBufferOut);
    if (v22)
    {
      CFRelease(v22);
    }

    if (v19)
    {
      goto LABEL_38;
    }
  }

  else if (a7)
  {
    v19 = 4294950739;
    if (!v18 || !v17)
    {
      goto LABEL_38;
    }

    if (CFDataGetLength(theData) != a6 * v17)
    {
      v19 = 4294950743;
      goto LABEL_38;
    }

    v51 = MEMORY[0x1E695E480];
    if (a7 != 1815491698)
    {
      goto LABEL_55;
    }

    v52 = objc_autoreleasePoolPush();
    v63[0] = *MEMORY[0x1E696CEB8];
    v64[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFDataGetBytePtr(theData)];
    v63[1] = *MEMORY[0x1E696CE30];
    v64[1] = [MEMORY[0x1E696AD98] numberWithLong:CFDataGetLength(theData)];
    v63[2] = *MEMORY[0x1E696CE58];
    v64[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a6];
    v63[3] = *MEMORY[0x1E696D130];
    v64[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
    v63[4] = *MEMORY[0x1E696CF58];
    v64[4] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
    v63[5] = *MEMORY[0x1E696CFC0];
    v53 = [MEMORY[0x1E696AD98] numberWithInt:1815491698];
    v63[6] = *MEMORY[0x1E696CE50];
    v64[5] = v53;
    v64[6] = &unk_1F194A2B8;
    v54 = IOSurfaceCreate([MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:7]);
    objc_setAssociatedObject(v54, _createCVPixelBufferFromDNGData, theData, 1);
    v19 = CVPixelBufferCreateWithIOSurface(*v51, v54, 0, &pixelBufferOut);
    objc_autoreleasePoolPop(v52);
    if (v19)
    {
      goto LABEL_38;
    }

    if (!pixelBufferOut)
    {
LABEL_55:
      CFRetain(theData);
      v56 = *v51;
      BytePtr = CFDataGetBytePtr(theData);
      v58 = CVPixelBufferCreateWithBytes(v56, a2, a3, a7, BytePtr, a6, _pixelBufferReleaseCallback, theData, 0, &pixelBufferOut);
      if (v58 || a8 && (v58 = CMPhotoPixelBufferSetVersatileBayerPattern(pixelBufferOut, a8), v58))
      {
        v19 = v58;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = [(objc_class *)off_1ED6FA2C0() imageWithData:theData];
    if (!v39)
    {
      v19 = 2;
      goto LABEL_31;
    }

    v40 = v39;
    v41 = *MEMORY[0x1E695E480];
    [v39 extent];
    v43 = v42;
    [v40 extent];
    v45 = CVPixelBufferCreate(v41, v43, v44, 0x6C363472u, 0, &pixelBufferOut);
    if (v45)
    {
      v19 = v45;
      goto LABEL_31;
    }

    v46 = objc_alloc(off_1ED6FA2B0[0]());
    v47 = [v46 initWithPixelBuffer:pixelBufferOut];
    [v47 setAlphaMode:2];
    [v47 setColorSpace:{objc_msgSend(v40, "colorSpace")}];
    v68[0] = 0;
    v48 = [(objc_class *)off_1ED6FA2B8() context];
    if (!v48)
    {
      v19 = 4294950745;
      goto LABEL_31;
    }

    v49 = [v48 startTaskToRender:v40 toDestination:v47 error:v68];
    v50 = v68[0];
    if (!v49 || v68[0] || ([v49 waitUntilCompletedAndReturnError:v68], (v50 = v68[0]) != 0))
    {
      NSLog(&stru_1F191A040.isa, v50);
      v19 = 4294950739;
LABEL_31:
      objc_autoreleasePoolPop(v38);
      goto LABEL_38;
    }

    objc_autoreleasePoolPop(v38);
  }

  if (!a9 || a9 == a7)
  {
    v19 = 0;
    *a10 = pixelBufferOut;
    return v19;
  }

  v68[0] = 0;
  OUTLINED_FUNCTION_82_0();
  v19 = CMPhotoScaleAndRotateSessionTransformForSize(0, v30, 1, 1, v31, 0, 0, 1, v32, v33, v34, v35, v36, v37, planeWidth, v60, planeBytesPerRow);
  if (!v19)
  {
    *a10 = v68[0];
  }

LABEL_38:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v19;
}

uint64_t CMPhotoDNGCompressorCreate(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  result = 4294950746;
  if (a2 <= 1 && a4)
  {
    pthread_once(&CMPhotoDNGCompressorGetTypeID_onceToken, RegisterCMPhotoDNGCompressor);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      *(Instance + 16) = a2;
      *(Instance + 96) = 0;
      v9 = OUTLINED_FUNCTION_17();
      Mutable = CFArrayCreateMutable(v9, v10, v11);
      v8[9] = Mutable;
      if (Mutable)
      {
        v13 = OUTLINED_FUNCTION_17();
        v16 = CFArrayCreateMutable(v13, v14, v15);
        v8[10] = v16;
        if (v16)
        {
          result = 0;
          v8[8] = 0;
          v8[11] = 0;
          *a4 = v8;
          return result;
        }
      }

      CFRelease(v8);
    }

    return 4294950745;
  }

  return result;
}

uint64_t CMPhotoDNGCompressorSetMainImage(void *a1, const void *a2, CFTypeRef cf, const void *a4)
{
  result = 4294950746;
  if (a2 && a1 && cf)
  {
    v9 = a1[3];
    if (v9)
    {
      CFRelease(v9);
      a1[3] = 0;
    }

    v10 = a1[4];
    if (v10)
    {
      CFRelease(v10);
      a1[4] = 0;
    }

    v11 = a1[6];
    if (v11)
    {
      CFRelease(v11);
      a1[6] = 0;
    }

    a1[3] = CFRetain(cf);
    a1[4] = CFRetain(a2);
    if (a4)
    {
      v12 = CFRetain(a4);
    }

    else
    {
      v12 = 0;
    }

    result = 0;
    a1[6] = v12;
  }

  return result;
}

uint64_t CMPhotoDNGCompressorSetCompressedPreviewImage(uint64_t a1, void *cf, CFDictionaryRef theDict)
{
  v12 = 0;
  if (!a1)
  {
    return 4294950746;
  }

  if (theDict)
  {
    if (CFDictionaryGetValue(theDict, @"SourceCropRect") || CFDictionaryGetValue(theDict, @"PreviewImageMaxPixelSize"))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    FigCFDictionaryGetIntIfPresent();
    CMPhotoCFDictionaryGetSizeIfPresent(theDict, @"CompressedSurfaceSize", &v12);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 96) = 0;
  }

  if (!cf)
  {
    return 0;
  }

  v8 = CFGetTypeID(cf);
  if (v8 == CFDataGetTypeID())
  {
    *(a1 + 56) = CFRetain(cf);
    return 0;
  }

  v9 = CFGetTypeID(cf);
  if (v9 == IOSurfaceGetTypeID())
  {
    DataWrappingIOSurface = CMPhotoCreateDataWrappingIOSurface(*MEMORY[0x1E695E480], cf, 0, v12);
    *(a1 + 56) = DataWrappingIOSurface;
    if (DataWrappingIOSurface)
    {
      return 0;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t CMPhotoDNGCompressorSetPreviewImage(uint64_t a1, CVPixelBufferRef pixelBuffer, const __CFDictionary *a3)
{
  cf = 0;
  v3 = 4294950746;
  if (!a1 || !pixelBuffer)
  {
    return v3;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v8 = PixelFormatType;
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(PixelFormatType);
  if (UncompressedPixelFormatFromCompressedPixelFormat == 875704422 || UncompressedPixelFormatFromCompressedPixelFormat == 1111970369)
  {
    v11 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F30], 0);
    if (FigCFEqual())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_5_0();
      v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, cf, v19);
      v12 = 0;
      goto LABEL_24;
    }

    if (v8 == 875704422)
    {
      v12 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F98], 0);
      if (!FigCFEqual())
      {
LABEL_17:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_5_0();
        v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_24:
        if (v11)
        {
          CFRelease(v11);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        return v3;
      }
    }

    else
    {
      v12 = 0;
    }

    if (!CMPhotoCFDictionaryGetIntIfPresent())
    {
      JPEGFromPixelBuffer = _createJPEGFromPixelBuffer(pixelBuffer, a3, 0);
      v3 = JPEGFromPixelBuffer;
      if (!JPEGFromPixelBuffer)
      {
        v14 = *(a1 + 56);
        if (v14)
        {
          CFRelease(v14);
          *(a1 + 56) = 0;
        }

        v15 = *(a1 + 96);
        if (v15)
        {
          CFRelease(v15);
          *(a1 + 96) = 0;
        }

        v3 = 0;
        *(a1 + 56) = cf;
        cf = 0;
      }

      goto LABEL_24;
    }

    goto LABEL_17;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_5_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _createJPEGFromPixelBuffer(__CVBuffer *a1, const __CFDictionary *a2, int a3)
{
  v7 = OUTLINED_FUNCTION_9_0();
  v10 = CMPhotoCompressionSessionCreate(v7, v8, v9);
  if (v10)
  {
    return v10;
  }

  v11 = OUTLINED_FUNCTION_9_0();
  Mutable = CFDictionaryCreateMutable(v11, v12, v13, v14);
  if (!Mutable)
  {
    return 4294950745;
  }

  v16 = Mutable;
  v17 = FigCFDictionarySetInt();
  if (v17 || (v17 = FigCFDictionarySetInt(), v17) || (v17 = CMPhotoCompressionSessionOpenEmptyContainer(0, v16), v17))
  {
    v29 = v17;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_9_0();
    v22 = CFDictionaryCreateMutable(v18, v19, v20, v21);
    if (v22)
    {
      v23 = v22;
      v24 = FigCFDictionarySetInt();
      if (!v24)
      {
        if (a3)
        {
          goto LABEL_13;
        }

        CVPixelBufferGetPixelFormatType(a1);
        OUTLINED_FUNCTION_53_1();
        if (v25)
        {
          CFDictionarySetValue(v23, @"PreferSoftwareCodec", *MEMORY[0x1E695E4D0]);
        }

        v24 = FigCFDictionarySetInt();
        if (!v24)
        {
LABEL_13:
          v24 = FigCFDictionarySetInt();
          if (!v24)
          {
            if (a2)
            {
              Value = CFDictionaryGetValue(a2, @"SourceCropRect");
              if (Value)
              {
                CFDictionarySetValue(v23, @"SourceCropRect", Value);
              }

              v27 = CFDictionaryGetValue(a2, @"PreviewImageMaxPixelSize");
              if (v27)
              {
                CFDictionarySetValue(v23, @"MaxPixelSize", v27);
              }
            }

            v24 = CMPhotoCompressionSessionAddImage(0);
            if (!v24)
            {
              v24 = CMPhotoCompressionSessionCloseContainerAndCopyBacking(0);
              if (!v24)
              {
                emitter = fig_log_get_emitter();
                v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950739, "<<< CMPhotoDNG >>>", 1513, v3);
              }
            }
          }
        }
      }

      v29 = v24;
      CFRelease(v23);
    }

    else
    {
      v29 = 4294950745;
    }
  }

  CFRelease(v16);
  return v29;
}

uint64_t _createJPEGXLFromPixelBuffer(__CVBuffer *a1, uint64_t a2, CFDataRef *a3)
{
  CMPhotoGetPixelBufferSize(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v8 = OUTLINED_FUNCTION_96();
  Mutable = CFDataCreateMutable(v8, v9);
  v29 = 2;
  v30 = 2;
  v28 = 1.0;
  cf = 0;
  if (a2)
  {
    FigCFDictionaryGetFloatIfPresent();
    v11 = v28 < 0.0 || v28 > 1.0;
    if (v11 || (FigCFDictionaryGetIntIfPresent(), (v30 - 10) <= 0xFFFFFFF6))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7();
      v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_20:
      v22 = v12;
      goto LABEL_14;
    }

    FigCFDictionaryGetIntIfPresent();
  }

  v12 = CMPhotoCreateColorSpaceFromPixelBuffer(a1, &cf, 1, 1);
  if (v12)
  {
    goto LABEL_20;
  }

  v13 = OUTLINED_FUNCTION_17();
  v12 = CVPixelBufferLockBaseAddress(v13, v14);
  if (v12)
  {
    goto LABEL_20;
  }

  CVPixelBufferGetBaseAddress(a1);
  v26 = cf;
  v15 = OUTLINED_FUNCTION_78_1();
  v21 = CMPhotoDNGJPEGXLCompressData(v15, v16, PixelFormatType, v17, BytesPerRow, v18, v19, 0, v20, v26, Mutable);
  v22 = v21;
  if (a3 && !v21)
  {
    *a3 = CFDataCreateCopy(*MEMORY[0x1E695E480], Mutable);
  }

  v23 = OUTLINED_FUNCTION_17();
  CVPixelBufferUnlockBaseAddress(v23, v24);
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v22;
}

uint64_t CMPhotoDNGCompressorSetPreviewImageFromRAW(uint64_t a1, uint64_t a2, __CVBuffer *a3, const __CFDictionary *a4)
{
  v4 = 0;
  v42 = 0;
  v5 = 4294950746;
  if (!a1 || !a2)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v8 = 0;
  if (!a3)
  {
    goto LABEL_23;
  }

  PixelBufferCLAPAsRect = CMPhotoGetPixelBufferCLAPAsRect(a3);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType != 1751527984 && PixelFormatType != 1815491698)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
    v4 = 0;
LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  v4 = CVBufferCopyAttachment(a3, *MEMORY[0x1E6965F30], 0);
  if (!FigCFEqual())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
    goto LABEL_22;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = [(objc_class *)off_1ED6FA2A8() filterWithCVPixelBuffer:a3 properties:a2 options:0];
  if (!v21)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
    goto LABEL_34;
  }

  v22 = [v21 outputImage];
  if (!v22)
  {
    v8 = 0;
LABEL_36:
    v5 = 4294950745;
    goto LABEL_21;
  }

  v23 = v22;
  if (CMPhotoPixelBufferHasCLAP(a3))
  {
    CGAffineTransformMakeScale(&v40, 1.0, -1.0);
    [v23 extent];
    CGAffineTransformTranslate(&v41, &v40, 0.0, -v24);
    v43.origin.x = PixelBufferCLAPAsRect;
    v43.origin.y = v13;
    v43.size.width = v15;
    v43.size.height = v17;
    v44 = CGRectApplyAffineTransform(v43, &v41);
    v25 = [v23 imageByCroppingToRect:{v44.origin.x, v44.origin.y, v44.size.width, v44.size.height}];
    [v25 extent];
    v27 = -v26;
    [v25 extent];
    CGAffineTransformMakeTranslation(&v41, v27, -v28);
    v23 = [v25 imageByApplyingTransform:&v41];
  }

  v29 = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", 875704422, v15, v17, 1, 0, 0, 0, 0, 0, &v42);
  if (v29)
  {
LABEL_34:
    v5 = v29;
    v8 = 0;
LABEL_21:
    objc_autoreleasePoolPop(v20);
    goto LABEL_23;
  }

  CMPhotoAddDefault601709MatrixToBufferIfAllowed(v42, 1, 0);
  v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!v8)
  {
    goto LABEL_36;
  }

  v30 = objc_alloc(off_1ED6FA2B0[0]());
  v31 = [v30 initWithPixelBuffer:v42];
  if (!v31)
  {
    goto LABEL_36;
  }

  v32 = v31;
  [v31 setAlphaMode:2];
  [v32 setColorSpace:v8];
  v33 = [(objc_class *)off_1ED6FA2B8() context];
  if (!v33)
  {
    goto LABEL_36;
  }

  v39 = 0;
  v34 = [v33 startTaskToRender:v23 toDestination:v32 error:&v39];
  v5 = 4294950739;
  if (!v34)
  {
    goto LABEL_21;
  }

  if (v39)
  {
    goto LABEL_21;
  }

  [v34 waitUntilCompletedAndReturnError:&v39];
  if (v39)
  {
    goto LABEL_21;
  }

  objc_autoreleasePoolPop(v20);
  v5 = CMPhotoDNGCompressorSetPreviewImage(a1, v42, a4);
LABEL_23:
  if (v42)
  {
    CFRelease(v42);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t CMPhotoDNGCompressorAddAuxiliaryImage(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  result = 4294950746;
  if (a1 && a2 && a3 && a4)
  {
    v11 = OUTLINED_FUNCTION_96();
    Mutable = CFDictionaryCreateMutable(v11, v12, v13, v14);
    if (Mutable)
    {
      v16 = Mutable;
      CFDictionarySetValue(Mutable, @"AuxPixelBuffer", a2);
      CFDictionarySetValue(v16, @"AuxMetadata", a3);
      CFDictionarySetValue(v16, @"AuxImageType", a4);
      if (a5)
      {
        CFDictionarySetValue(v16, @"AuxOptions", a5);
        FigCFDictionaryGetBooleanIfPresent();
      }

      CFArrayAppendValue(*(a1 + 72), v16);
      CFRelease(v16);
      return 0;
    }

    else
    {
      return 4294950745;
    }
  }

  return result;
}

uint64_t CMPhotoDNGCompressorFinalizeAndCreateData(uint64_t a1, CFTypeRef *a2)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v37 = 0;
  v3 = 4294950746;
  if (!a1)
  {
    return v3;
  }

  v4 = a2;
  if (!a2)
  {
    return v3;
  }

  v5 = a1;
  if (!*(a1 + 24))
  {
    emitter = fig_log_get_emitter();
    v29 = v2;
    v30 = emitter;
    v31 = 5105;
LABEL_62:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 4294950741, "<<< CMPhotoDNG >>>", v31, v29);
  }

  v6 = *(a1 + 80);
  if ((!v6 || CFArrayGetCount(v6) <= 0) && !*(v5 + 96))
  {
    v23 = *(v5 + 56);
    if (!v23)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  v7 = *(v5 + 56);
  if (!v7)
  {
    v32 = fig_log_get_emitter();
    v29 = v2;
    v30 = v32;
    v31 = 5108;
    goto LABEL_62;
  }

  v8 = *(v5 + 96);
  v9 = *(v5 + 80);
  cf = 0;
  theData = 0;
  v42 = @"BackingType";
  v43[0] = &unk_1F194A2D0;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  if (v9)
  {
    Count = CFArrayGetCount(v9);
    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    Count = 0;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  if (!Count)
  {
    v13 = 0;
    v3 = 0;
    goto LABEL_56;
  }

LABEL_13:
  v11 = CFGetAllocator(v7);
  v12 = CMPhotoCompressionSessionCreate(v11, 0, &cf);
  if (v12)
  {
    goto LABEL_35;
  }

  if (v8)
  {
    value[1] = MEMORY[0x1E69E9820];
    value[2] = 3221225472;
    value[3] = ___addAuxiliaryImagesToJPEGData_block_invoke;
    value[4] = &__block_descriptor_40_e25_i16__0____CFDictionary__8l;
    value[5] = v8;
    v12 = CMPhotoCompressionSessionOpenExistingContainerForModification(cf, v10, v7);
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_35:
    v3 = v12;
    v13 = 0;
    goto LABEL_56;
  }

  v12 = CMPhotoCompressionSessionOpenExistingContainer();
  if (v12)
  {
    goto LABEL_35;
  }

LABEL_16:
  v34 = v5;
  v35 = v4;
  if (!Count)
  {
    v13 = 0;
LABEL_37:
    v3 = CMPhotoCompressionSessionCloseContainerAndCopyBacking(cf);
    if (v3)
    {
      goto LABEL_55;
    }

    v23 = theData;
    theData = 0;
    v5 = v34;
    v4 = v35;
    if (!v13)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v13 = 0;
  v14 = 0;
  v15 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    if (v13)
    {
      CFRelease(v13);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v9, v14);
    CFDictionaryGetValue(ValueAtIndex, @"AuxPixelBuffer");
    v17 = OUTLINED_FUNCTION_34_2();
    CFDictionaryGetValue(v17, @"AuxMetadata");
    v18 = CFDictionaryGetValue(ValueAtIndex, @"AuxImageType");
    v19 = CFDictionaryGetValue(ValueAtIndex, @"AuxOptions");
    if (v19)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, v19);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v13 = MutableCopy;
    if (!MutableCopy)
    {
      v3 = 4294950745;
      goto LABEL_55;
    }

    CFDictionarySetValue(MutableCopy, @"PreferSoftwareCodec", v15);
    value[0] = 0;
    v38 = 0;
    v45.length = CFStringGetLength(@"kCGImageAuxiliaryDataType");
    v45.location = 0;
    if (CFStringCompareWithOptions(v18, @"kCGImageAuxiliaryDataType", v45, 0) == kCFCompareEqualTo)
    {
      break;
    }

    CMPhotoAuxiliaryImageTypeAndFinalURNFromURN = CMPhotoGetCMPhotoAuxiliaryImageTypeAndFinalURNFromURN(v18, value);
    v38 = CMPhotoAuxiliaryImageTypeAndFinalURNFromURN;
    if (!CMPhotoAuxiliaryImageTypeAndFinalURNFromURN)
    {
      goto LABEL_53;
    }

LABEL_28:
    if (CMPhotoAuxiliaryImageTypeAndFinalURNFromURN == 4 && value[0])
    {
      CFDictionarySetValue(v13, @"AuxiliaryImageCustomTypeURN", value[0]);
    }

    CMPhotoCompressionSessionAddAuxiliaryImage(cf);
    if (v22)
    {
      goto LABEL_54;
    }

    if (Count == ++v14)
    {
      goto LABEL_37;
    }
  }

  CMPhotoGetCMPhotoAuxiliaryImageTypeFromCGImageAuxiliaryDataType(v18, value, &v38);
  CMPhotoAuxiliaryImageTypeAndFinalURNFromURN = v38;
  if (v38)
  {
    goto LABEL_28;
  }

LABEL_53:
  fig_log_get_emitter();
  v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v2, v34);
LABEL_54:
  v3 = v22;
LABEL_55:
  v5 = v34;
  v4 = v35;
LABEL_56:
  if (theData)
  {
    CFRelease(theData);
  }

  v23 = 0;
  if (v13)
  {
LABEL_39:
    CFRelease(v13);
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    v26 = v37;
  }

  else
  {
    v24 = *(v5 + 56);
    if (v24)
    {
      CFRelease(v24);
    }

    *(v5 + 56) = v23;
    if (!v23)
    {
LABEL_46:
      v25 = 0;
      goto LABEL_49;
    }

LABEL_48:
    *(v5 + 64) = CFDataGetLength(v23);
    v25 = *(v5 + 56);
LABEL_49:
    v3 = _createDNGInternal(*(v5 + 32), v25, *(v5 + 48), 0, *(v5 + 24), *(v5 + 72), *(v5 + 16) == 1, v5 + 88, &v37);
    v26 = v37;
    if (!v3)
    {
      *v4 = v37;
      return v3;
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v3;
}

uint64_t CMPhotoDNGCompressorFinalizeAndCreateSurface(uint64_t a1, uint64_t a2, uint64_t a3, IOSurfaceRef *a4, CFIndex *a5)
{
  buffer = 0;
  theData = 0;
  v5 = 4294950746;
  if (a1 && a4 && a5)
  {
    Data = CMPhotoDNGCompressorFinalizeAndCreateData(a1, &theData);
    if (Data || (Length = CFDataGetLength(theData), Data = CMPhotoSurfacePoolCreateMemorySurface(a2, Length, 1, &buffer, v11, v12), Data) || (Data = IOSurfaceLock(buffer, 0, 0), Data))
    {
      v5 = Data;
    }

    else
    {
      BaseAddress = IOSurfaceGetBaseAddress(buffer);
      BytePtr = CFDataGetBytePtr(theData);
      memcpy(BaseAddress, BytePtr, Length);
      IOSurfaceUnlock(buffer, 0, 0);
      v5 = 0;
      *a4 = buffer;
      buffer = 0;
      *a5 = Length;
    }
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (buffer)
  {
    CFRelease(buffer);
  }

  return v5;
}

uint64_t CMPhotoDNGCompressorGetFinalizedSize(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = 4294950746;
  if (a1 && a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *(a1 + 64);
      *a4 = *(a1 + 88);
    }
  }

  return result;
}

uint64_t _dngUnpackInternal(int a1, int a2, const __CFData **a3, uint64_t a4, _DWORD *a5, uint64_t a6, CVPixelBufferRef *a7, uint64_t a8, __CFArray **a9)
{
  v457 = a6;
  v460 = a8;
  v484 = a7;
  v451 = a5;
  v478 = a4;
  v466 = a3;
  OUTLINED_FUNCTION_65_1();
  v571 = *MEMORY[0x1E69E9840];
  v555 = 0;
  v556 = 0;
  bzero(v565, 0x400uLL);
  v554 = 0u;
  v552 = 0u;
  v553 = 0u;
  v551 = 0u;
  *v549 = 0;
  *v550 = 0;
  *v548 = 0;
  v547 = 17;
  v546 = 0;
  v544 = 0;
  v545 = 0;
  v543 = 0;
  HIDWORD(v542) = 0;
  v541 = 0;
  HIBYTE(v540) = 0;
  LODWORD(v540) = 0;
  HIWORD(v539) = 0;
  FigKTraceInit();
  if (!v9)
  {
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_21_9();
    MutableCopy = 0;
    v464 = 0;
    v465 = 0;
    v463 = 0;
    CVPixelBufferFromDNGData = 4294950746;
    goto LABEL_615;
  }

  OUTLINED_FUNCTION_9_1();
  if (v60)
  {
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (v10)
  {
    FigCFDictionaryGetInt32IfPresent();
    CMPhotoCFDictionaryGetSizeIfPresent(v10, @"CompressedSurfaceSize", &v541);
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v14 = v541;
  }

  else
  {
    v14 = 0;
  }

  allocator = *MEMORY[0x1E695E480];
  v15 = CMPhotoDataCreateFromSource(*MEMORY[0x1E695E480], v9, 0, v14, &v555, 0);
  if (v15 || (v15 = _cmphotoDNGReaderInit(&v553, v555), v15))
  {
    CVPixelBufferFromDNGData = v15;
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_21_9();
    MutableCopy = 0;
    v464 = 0;
    v465 = 0;
    v463 = 0;
    goto LABEL_615;
  }

  v16 = MEMORY[0x1E696DF28];
  keys[0] = *MEMORY[0x1E696E118];
  keys[1] = @"kCGImageSourceShouldUseRawDataForFullSize";
  v17 = *MEMORY[0x1E695E4D0];
  *&values = @"com.adobe.raw-image";
  *(&values + 1) = v17;
  v18 = CFDictionaryCreate(allocator, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v465 = v18;
  if (!v18)
  {
    MutableCopy = 0;
    v463 = 0;
    v464 = 0;
    CVPixelBufferFromDNGData = 0;
    goto LABEL_696;
  }

  v19 = v18;
  v20 = CGImageSourceCreateWithData(v555, v18);
  if (!v20)
  {
    MutableCopy = 0;
    v463 = 0;
    v464 = 0;
    CVPixelBufferFromDNGData = 4294950743;
    goto LABEL_696;
  }

  v463 = v20;
  v21 = CGImageSourceCopyPropertiesAtIndex(v20, 0, v19);
  v11 = allocator;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v464 = v21;
  if (!MutableCopy || (CFDictionaryGetValue(v21, *v16), (v23 = FigCFDictionaryCreateMutableCopy()) == 0))
  {
    CVPixelBufferFromDNGData = 4294950745;
LABEL_696:
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_21_9();
    goto LABEL_615;
  }

  v24 = v23;
  v25 = OUTLINED_FUNCTION_9_0();
  Mutable = CFDictionaryCreateMutable(v25, v26, v27, v28);
  v469 = v24;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_3_31();
    v11 = 0;
LABEL_687:
    cf = 0;
    goto LABEL_692;
  }

  v29 = OUTLINED_FUNCTION_9_0();
  v11 = CFDictionaryCreateMutable(v29, v30, v31, v32);
  if (!v11)
  {
    OUTLINED_FUNCTION_3_31();
    goto LABEL_687;
  }

  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696D808], Mutable);
  CFDictionarySetValue(MutableCopy, *v16, v24);
  keys[0] = 0;
  v33 = _copyStringTag(&v553, 270);
  v487 = MutableCopy;
  cf = v11;
  if (v33)
  {
    CFDictionarySetValue(v24, *MEMORY[0x1E696DF40], v33);
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    v34 = 2;
    if (CStringPtrAndBufferToFree)
    {
      if (!strcmp(CStringPtrAndBufferToFree, "Internal"))
      {
        v34 = 4;
      }

      else
      {
        v34 = 2;
      }
    }
  }

  else
  {
    v34 = 2;
  }

  _copyStringTagToDict(&v553, 271, *MEMORY[0x1E696DF48], v24);
  _copyStringTagToDict(&v553, 272, *MEMORY[0x1E696DF50], v24);
  _copyIntegerTagToDict(&v553, 274, *MEMORY[0x1E696DF58], v24);
  _copyStringTagToDict(&v553, 305, *MEMORY[0x1E696DF68], v24);
  _copyStringTagToDict(&v553, 306, *MEMORY[0x1E696DF20], v24);
  _copyStringTagToDict(&v553, 315, *MEMORY[0x1E696DF08], v24);
  _copyStringTagToDict(&v553, 33432, *MEMORY[0x1E696DF18], v24);
  _copyVersionToDictAsString(&v553);
  _copyVersionToDictAsString(&v553);
  _copyStringTagToDict(&v553, 50708, *MEMORY[0x1E696D858], Mutable);
  FloatArrayFromRationals = _createFloatArrayFromRationals(&v553, 50721, 9);
  v37 = _createFloatArrayFromRationals(&v553, 50722, 9);
  v38 = _createFloatArrayFromRationals(&v553, 50723, 9);
  v39 = _createFloatArrayFromRationals(&v553, 50724, 9);
  if (FloatArrayFromRationals)
  {
    v46 = OUTLINED_FUNCTION_76_0();
    CFDictionarySetValue(v46, v47, v48);
    if (!v37)
    {
LABEL_24:
      if (!v38)
      {
        goto LABEL_25;
      }

      goto LABEL_39;
    }
  }

  else if (!v37)
  {
    goto LABEL_24;
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E696D7E8], v37);
  if (!v38)
  {
LABEL_25:
    if (!v39)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  CFDictionarySetValue(Mutable, *MEMORY[0x1E696D7C8], v38);
  if (!v39)
  {
LABEL_26:
    if (!v38)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  CFDictionarySetValue(Mutable, *MEMORY[0x1E696D7D0], v39);
  if (!v38)
  {
LABEL_27:
    if (!v39)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  CFRelease(v38);
  if (!v39)
  {
LABEL_28:
    if (!FloatArrayFromRationals)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

LABEL_42:
  CFRelease(v39);
  if (!FloatArrayFromRationals)
  {
LABEL_29:
    if (!v37)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_43:
  CFRelease(FloatArrayFromRationals);
  if (v37)
  {
LABEL_30:
    CFRelease(v37);
  }

LABEL_31:
  if (WORD4(v554))
  {
    v40 = 0;
    v41 = v554;
    while (1)
    {
      v42 = CMPhotoDNGRead16(v41, BYTE10(v554));
      if (v42 == 50778)
      {
        break;
      }

      v41 += 6;
      if (++v40 >= WORD4(v554))
      {
        v43 = 0;
        v44 = 0;
        v45 = 1;
        if (!WORD4(v554))
        {
          goto LABEL_64;
        }

        goto LABEL_46;
      }
    }

    Tag = _readTag(v41, BYTE10(v554));
    v44 = v50;
    v43 = WORD1(Tag);
    v45 = HIDWORD(Tag) != 1;
    if (!WORD4(v554))
    {
      goto LABEL_64;
    }

LABEL_46:
    v51 = 0;
    v52 = v554;
    while (1)
    {
      v53 = OUTLINED_FUNCTION_62_1();
      if (CMPhotoDNGRead16(v53, v54) == 50779)
      {
        break;
      }

      v52 += 12;
      if (++v51 >= WORD4(v554))
      {
        goto LABEL_64;
      }
    }

    v55 = OUTLINED_FUNCTION_62_1();
    v57 = _readTag(v55, v56);
    if (v42 == 50778)
    {
      v59 = HIDWORD(v57) != 1 || v45;
      if (!v59 && v43 <= 0xD)
      {
        v60 = v43 == 8 || v43 == 3;
        if (v60 && WORD1(v57) <= 0xDu && (WORD1(v57) == 8 || WORD1(v57) == 3))
        {
          LOWORD(values) = v44;
          LOWORD(valuePtr) = v58;
          v297 = CFNumberCreate(allocator, kCFNumberShortType, &values);
          v298 = CFNumberCreate(allocator, kCFNumberShortType, &valuePtr);
          v299 = OUTLINED_FUNCTION_76_0();
          CFDictionarySetValue(v299, v300, v301);
          CFDictionarySetValue(Mutable, *MEMORY[0x1E696D7C0], v298);
          if (v297)
          {
            CFRelease(v297);
          }

          if (v298)
          {
            CFRelease(v298);
          }
        }
      }
    }
  }

LABEL_64:
  v62 = _createFloatArrayFromRationals(&v553, 50728, 3);
  if (v62)
  {
    v65 = v62;
    v64 = &v553;
  }

  else
  {
    v63 = _createFloatArrayFromRationals(&v553, 50729, 2);
    v64 = &v553;
    if (!v63)
    {
      goto LABEL_69;
    }

    v65 = v63;
  }

  v66 = OUTLINED_FUNCTION_76_0();
  CFDictionarySetValue(v66, v67, v68);
  CFRelease(v65);
LABEL_69:
  _copyRationalTagToDict(&v553, 50730);
  _copyRationalTagToDict(&v553, 50731);
  _copyRationalTagToDict(&v553, 50732);
  _copyDNGDataTagToDict(&v553);
  _copyStringTagToDict(&v553, 50931, *MEMORY[0x1E696D7D8], Mutable);
  _copyStringTagToDict(&v553, 50932, *MEMORY[0x1E696D838], Mutable);
  if (WORD4(v554))
  {
    v69 = 0;
    v70 = *MEMORY[0x1E696D850];
    v71 = v554;
    while (1)
    {
      v72 = OUTLINED_FUNCTION_62_1();
      if (CMPhotoDNGRead16(v72, v73) == 50940)
      {
        break;
      }

      v71 += 12;
      if (++v69 >= WORD4(v554))
      {
        goto LABEL_84;
      }
    }

    v74 = OUTLINED_FUNCTION_62_1();
    v76 = _readTag(v74, v75);
    v78 = HIDWORD(v76);
    if (HIDWORD(v76) * tiffDataTypeToSize[WORD1(v76)] <= 4)
    {
      v79 = v71 + 8;
    }

    else
    {
      v79 = v553 + v77;
    }

    if ((v76 & 0xFFFF0000) == 0xB0000)
    {
      v80 = CFArrayCreateMutable(allocator, v78, MEMORY[0x1E695E9C0]);
      if (v80)
      {
        v81 = v80;
        if (v78)
        {
          while (1)
          {
            v82 = OUTLINED_FUNCTION_62_1();
            v84 = CMPhotoDNGReadFloat(v82, v83);
            if (CMPhotoCFArrayAppendFloat(v81, v84))
            {
              break;
            }

            v79 += 4;
            LODWORD(v78) = v78 - 1;
            if (!v78)
            {
              goto LABEL_82;
            }
          }
        }

        else
        {
LABEL_82:
          CFDictionarySetValue(Mutable, v70, v81);
        }

        CFRelease(v81);
      }
    }
  }

LABEL_84:
  _copyIntegerTagToDict(&v553, 51110, *MEMORY[0x1E696D7F0], Mutable);
  _copyStringTagToDict(&v553, 50936, *MEMORY[0x1E696D848], Mutable);
  _copyRationalTagToDict(&v553, 50935);
  _copyDoublesToDictAsArray(&v553);
  if (v33)
  {
    CFRelease(v33);
  }

  free(keys[0]);
  MutableCopy = v487;
  v488 = Mutable;
  v12 = cf;
  if (!WORD4(v554))
  {
    HIDWORD(v454) = 0;
    v498 = 0;
    goto LABEL_324;
  }

  while (1)
  {
    v85 = OUTLINED_FUNCTION_50_0();
    if (CMPhotoDNGRead16(v85, v86) == 254)
    {
      break;
    }

    OUTLINED_FUNCTION_29_5();
    if (!WORD4(v554))
    {
      goto LABEL_99;
    }
  }

  v87 = OUTLINED_FUNCTION_50_0();
  _readTag(v87, v88);
  if (v89 == 1)
  {
    PreviewTags = _readPreviewTags(&v553, &v556);
    v90 = 0;
    if (!PreviewTags)
    {
      v91 = 1;
      goto LABEL_96;
    }

    CVPixelBufferFromDNGData = PreviewTags;
    LODWORD(v498) = 0;
    OUTLINED_FUNCTION_5_27();
LABEL_709:
    theArray = 0;
    v11 = 0;
    goto LABEL_615;
  }

  if (v89)
  {
    v90 = 0;
    v91 = 0;
    goto LABEL_96;
  }

  v401 = CMPhotoPixelFormatContainsAlpha(SHIDWORD(v542));
  v402 = _readRawImageTags(&v553, cf, v34, v401, &v550[1], v550, &v549[1], v549, &v548[1], v548, &v547, &v546, &v545 + 1, &v545, &v544, &v543);
  if (v402)
  {
    CVPixelBufferFromDNGData = v402;
    OUTLINED_FUNCTION_5_27();
    LODWORD(v498) = 0;
    goto LABEL_709;
  }

  v91 = 0;
  v551 = v553;
  v552 = v554;
  v90 = 1;
LABEL_96:
  v92 = v90;
  if (!WORD4(v554))
  {
LABEL_99:
    HIDWORD(v454) = 0;
    v498 = 0;
    goto LABEL_324;
  }

  while (1)
  {
    v93 = OUTLINED_FUNCTION_50_0();
    if (CMPhotoDNGRead16(v93, v94) == 330)
    {
      break;
    }

    OUTLINED_FUNCTION_29_5();
    if (!WORD4(v554))
    {
      goto LABEL_99;
    }
  }

  v95 = OUTLINED_FUNCTION_50_0();
  v97 = _readTag(v95, v96);
  v99 = HIDWORD(v97);
  if (SHIDWORD(v97) < 1)
  {
    HIDWORD(v454) = 0;
    v498 = 0;
    Mutable = v488;
LABEL_324:
    v473 = a9;
    v249 = [v12 allKeys];
    if (v249)
    {
      v11 = CFRetain(v249);
    }

    else
    {
      v11 = 0;
    }

    v256 = 0;
    if (v11)
    {
      goto LABEL_330;
    }

LABEL_331:
    for (i = 0; v256 < i; i = CFArrayGetCount(v11))
    {
      OUTLINED_FUNCTION_48_1();
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      OUTLINED_FUNCTION_48_1();
      FigCFArrayGetValueAtIndex();
      v258 = FigCFDictionaryGetValue();
      CFDictionaryAddValue(Mutable, ValueAtIndex, v258);
      ++v256;
      if (!v11)
      {
        goto LABEL_331;
      }

LABEL_330:
      ;
    }

    v523 = v544;
    cf = v12;
    if (!v544 || (v522 = v543) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_11();
      CVPixelBufferFromDNGData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v477 = 0;
      goto LABEL_689;
    }

    v517 = v11;
    if (!v484)
    {
      v477 = 0;
      goto LABEL_457;
    }

    OUTLINED_FUNCTION_9_1();
    if (v60)
    {
      OUTLINED_FUNCTION_30_5();
      OUTLINED_FUNCTION_6();
      kdebug_trace();
      v522 = v543;
      v523 = v544;
    }

    LODWORD(v448) = v546;
    v260 = v550[1];
    v261 = v550[0];
    v537 = v549[0];
    value = v549[1];
    v262 = v548[1];
    keys[0] = &v551;
    HIDWORD(v511) = v545;
    HIDWORD(v448) = v547;
    HIDWORD(v505) = HIDWORD(v545);
    if (v545 == 32803)
    {
      if (HIDWORD(v545) != 1 && HIDWORD(v545) != 52546 && HIDWORD(v545) != 7)
      {
LABEL_436:
        v477 = 0;
        CVPixelBufferFromDNGData = 4294950744;
        goto LABEL_453;
      }

      if (v547 - 17 <= 0x33 && ((1 << (v547 - 17)) & 0x8000000020001) != 0)
      {
        if (v548[1])
        {
          goto LABEL_367;
        }

        goto LABEL_693;
      }
    }

    else
    {
      if (HIDWORD(v545) != 1 && HIDWORD(v545) != 7 && HIDWORD(v545) != 52546 && HIDWORD(v545) != 34892)
      {
        goto LABEL_436;
      }

      if (v547 == 17)
      {
        if (v548[1])
        {
          CMPhotoPixelFormatContainsAlpha(v548[1]);
LABEL_367:
          LODWORD(v505) = v262;
          v443 = CMPhotoAlignValue(v260, value);
          v268 = CMPhotoGetBytesPerPixelForPixelFormat(v262) * v443;
          v269 = CMPhotoAlignValue(v261, v537);
          v270 = v269 * v268;
          v278 = OUTLINED_FUNCTION_79_1(v269, v271, v272, v273, v274, v275, v276, v277, v404, v408, v412, v416, v420, v424, v428, v432, v436, v443, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, a9, v474, v477, v478, v481, v484, v487, v488, v12, v268, v495, v498, v499, v502, v505, v508, v511, v11, v522, v523, allocator);
          v280 = CFDataCreateMutable(v278, v279);
          v502 = v270;
          CFDataSetLength(v280, v270);
          v477 = v280;
          MutableBytePtr = CFDataGetMutableBytePtr(v280);
          v281 = HIDWORD(v448);
          MutableCopy = v487;
          if (v261 >= 1)
          {
            v531 = 0;
            theArraya = v260;
            v282 = 0;
            HIDWORD(v499) = HIDWORD(v505) == 52546;
            v474 = 2 * v260;
            v436 = v261;
            while (v260 < 1)
            {
LABEL_429:
              v531 += v537;
              if (v531 >= v261)
              {
                goto LABEL_430;
              }
            }

            v283 = 0;
            v495 = v531 * v440;
            v481 = v531 * v260;
            v284 = v282;
            if (v282 <= v448)
            {
              v282 = v448;
            }

            v508 = v282;
            v12 = HIDWORD(v505);
            while (1)
            {
              v285 = CMPhotoDNGRead32(&v523[v284], *(keys[0] + 26));
              v286 = CMPhotoDNGRead32((v522 + 4 * v284), *(keys[0] + 26));
              if (v284 == v508 || (v287 = v286, v286 + v285 > *(keys[0] + 2)))
              {
                CVPixelBufferFromDNGData = 4294950743;
                goto LABEL_450;
              }

              if (HIDWORD(v511) != 32803)
              {
                break;
              }

              if (v12 == 1)
              {
                OUTLINED_FUNCTION_9_1();
                if (v60)
                {
                  OUTLINED_FUNCTION_6();
                  kdebug_trace();
                }

                if (v537 >= 1)
                {
                  OUTLINED_FUNCTION_77_1();
                  do
                  {
                    if (value)
                    {
                      OUTLINED_FUNCTION_33_4();
                      do
                      {
                        *v64 = CMPhotoDNGRead16(v287, *(keys[0] + 26)) << v34;
                        v64 = (v64 + 2);
                        ++v287;
                        Mutable = (Mutable - 1);
                      }

                      while (Mutable);
                    }

                    ++v12;
                  }

                  while (v12 != v537);
                }

LABEL_426:
                OUTLINED_FUNCTION_9_1();
                v64 = &v553;
                Mutable = v488;
                v260 = theArraya;
                v12 = HIDWORD(v505);
                if (v60)
                {
                  OUTLINED_FUNCTION_30_5();
                  OUTLINED_FUNCTION_6();
                  kdebug_trace();
                }

                goto LABEL_404;
              }

              if (v12 == 52546 || v12 == 7)
              {
                v289 = *keys[0];
                OUTLINED_FUNCTION_9_1();
                if (v60)
                {
                  OUTLINED_FUNCTION_30_5();
                  OUTLINED_FUNCTION_6();
                  kdebug_trace();
                }

                CVPixelBufferFromDNGData = CMPhotoDNGDecompressRawTile(v289 + v285, v287, value, v537, &MutableBytePtr[2 * v283 + 2 * v481], v502 - 2 * (v283 + v481), v474, v34, SBYTE4(v499));
                OUTLINED_FUNCTION_9_1();
                if (v60)
                {
                  OUTLINED_FUNCTION_30_5();
                  OUTLINED_FUNCTION_42();
                  kdebug_trace();
                }

                goto LABEL_403;
              }

LABEL_404:
              v283 += value;
              ++v284;
              if (v283 >= v260)
              {
                v282 = v284;
                MutableCopy = v487;
                v11 = v517;
                v261 = v436;
                v281 = HIDWORD(v448);
                goto LABEL_429;
              }
            }

            if (v12 == 52546 || v12 == 7 || v12 == 34892)
            {
              BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v505);
              v293 = *keys[0];
              OUTLINED_FUNCTION_9_1();
              if (v60)
              {
                OUTLINED_FUNCTION_30_5();
                OUTLINED_FUNCTION_6();
                kdebug_trace();
              }

              CVPixelBufferFromDNGData = CMPhotoDNGDecompressLinearRawTile(v293 + v285, v287, &MutableBytePtr[BytesPerPixelForPixelFormat * (v283 + v495)], v502 - BytesPerPixelForPixelFormat * (v283 + v495), v492, v505, value, v537, SBYTE4(v499));
              OUTLINED_FUNCTION_9_1();
              if (v60)
              {
                OUTLINED_FUNCTION_30_5();
                OUTLINED_FUNCTION_42();
                kdebug_trace();
              }

              v260 = theArraya;
LABEL_403:
              v12 = HIDWORD(v505);
              if (CVPixelBufferFromDNGData)
              {
                goto LABEL_450;
              }

              goto LABEL_404;
            }

            if (v12 != 1)
            {
              CVPixelBufferFromDNGData = 4294950744;
              goto LABEL_450;
            }

            OUTLINED_FUNCTION_9_1();
            if (v60)
            {
              OUTLINED_FUNCTION_6();
              kdebug_trace();
            }

            if (v537 >= 1)
            {
              OUTLINED_FUNCTION_77_1();
              do
              {
                if (value)
                {
                  OUTLINED_FUNCTION_33_4();
                  do
                  {
                    *v64 = CMPhotoDNGRead16(v287, *(keys[0] + 26));
                    v64 = (v64 + 2);
                    ++v287;
                    Mutable = (Mutable - 1);
                  }

                  while (Mutable);
                }

                ++v12;
              }

              while (v12 != v537);
            }

            goto LABEL_426;
          }

LABEL_430:
          if (v281 == 68 || v281 == 34)
          {
            *&values = 0;
            v294 = CMPhotoGetBytesPerPixelForPixelFormat(v505);
            v295 = CMPhotoInterleaveCFAData(v260, v261, v294, v492, v281, v477, &values);
            if (v295)
            {
              CVPixelBufferFromDNGData = v295;
LABEL_450:
              if (v477)
              {
                CFRelease(v477);
              }

              v477 = 0;
              MutableCopy = v487;
              v11 = v517;
            }

            else
            {
              if (v477)
              {
                CFRelease(v477);
              }

              CVPixelBufferFromDNGData = 0;
              v477 = values;
            }
          }

          else
          {
            CVPixelBufferFromDNGData = 0;
          }

LABEL_453:
          OUTLINED_FUNCTION_9_1();
          if (v60)
          {
            OUTLINED_FUNCTION_30_5();
            OUTLINED_FUNCTION_42();
            i = kdebug_trace();
          }

          if (!CVPixelBufferFromDNGData)
          {
LABEL_457:
            if (WORD4(v554))
            {
              v12 = 50727;
              while (1)
              {
                v302 = OUTLINED_FUNCTION_50_0();
                if (CMPhotoDNGRead16(v302, v303) == 50727)
                {
                  break;
                }

                OUTLINED_FUNCTION_29_5();
                if (!WORD4(v554))
                {
                  goto LABEL_475;
                }
              }

              v304 = OUTLINED_FUNCTION_50_0();
              v306 = _readTag(v304, v305);
              v308 = HIDWORD(v306);
              if ((v306 & 0xFFFF0000) != 0x50000 || v308 != 3)
              {
                goto LABEL_656;
              }

              v310 = v553 + v307;
              *keys = *v310;
              *&v568 = *(v310 + 16);
              if (BYTE10(v552) == 1)
              {
                for (j = 0; j != 3; ++j)
                {
                  keys[j] = vrev32_s8(keys[j]);
                }
              }

              v312 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
              v313 = 0;
              do
              {
                v314 = keys[v313];
                v315 = 0.0;
                if (HIDWORD(v314))
                {
                  v315 = OUTLINED_FUNCTION_56_1(v314);
                }

                [v312 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v315)}];
                ++v313;
              }

              while (v308 != v313);
              i = [(__CFDictionary *)Mutable setValue:v312 forKey:*MEMORY[0x1E696D770]];
              MutableCopy = v487;
            }

LABEL_475:
            if (!WORD4(v552))
            {
LABEL_479:
              v12 = 0;
              goto LABEL_509;
            }

            v316 = 0;
            v317 = v552;
            v12 = 50712;
            while (1)
            {
              i = CMPhotoDNGRead16(v317, BYTE10(v552));
              if (i == 50712)
              {
                break;
              }

              v317 += 6;
              if (++v316 >= WORD4(v552))
              {
                goto LABEL_479;
              }
            }

            v318 = _readTag(v317, BYTE10(v552));
            v320 = HIDWORD(v318);
            if (HIDWORD(v318) * tiffDataTypeToSize[WORD1(v318)] <= 4)
            {
              v321 = v317 + 4;
            }

            else
            {
              v321 = (v551 + v319);
            }

            v322 = v548[1] == 1647589490 || v548[1] == 1815491698;
            if (!v322 || (v318 & 0xFFFF0000) != 0x30000)
            {
LABEL_656:
              OUTLINED_FUNCTION_10_23();
              theArray = 0;
              CVPixelBufferFromDNGData = 4294950739;
LABEL_657:
              v11 = v517;
              goto LABEL_615;
            }

            v12 = 2 * v320;
            v323 = malloc_type_malloc(2 * v320, 0x1000040BDFB0063uLL);
            if (v323)
            {
              v523 = v323;
              memmove(v323, v321, 2 * v320);
              if (v320 && (BYTE10(v552) & 1) != 0)
              {
                v324 = v523;
                v325 = v320;
                do
                {
                  *v324 = bswap32(*v324) >> 16;
                  v324 = (v324 + 2);
                  --v325;
                }

                while (v325);
              }

              if (HIBYTE(v540))
              {
                v326 = [MEMORY[0x1E695DF70] arrayWithCapacity:v320];
                if (v320)
                {
                  v327 = v320;
                  v328 = v523;
                  do
                  {
                    v329 = *v328;
                    v328 = (v328 + 2);
                    [v326 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", v329)}];
                    --v327;
                  }

                  while (v327);
                }

                [OUTLINED_FUNCTION_76_0() setValue:? forKey:?];
                MutableCopy = v487;
              }

              v12 = v523;
              if (v484)
              {
                CFDataGetMutableBytePtr(v477);
                if (v549[0] * v549[1] * v546)
                {
                  do
                  {
                    OUTLINED_FUNCTION_55_1();
                    *(v330 - 4) = v331;
                    OUTLINED_FUNCTION_55_1();
                    *(v332 - 2) = v333;
                    OUTLINED_FUNCTION_55_1();
                    *v334 = v335;
                  }

                  while (v336 != 1);
                }
              }

              v337 = CFArrayCreateMutable(allocator, 3, MEMORY[0x1E695E9C0]);
              if (v337)
              {
                v338 = v337;
                v339 = 3;
                do
                {
                  appended = FigCFArrayAppendInt32();
                  if (appended)
                  {
                    CVPixelBufferFromDNGData = appended;
                    OUTLINED_FUNCTION_23_6();
                    theArray = 0;
                    goto LABEL_657;
                  }

                  --v339;
                }

                while (v339);
                v341 = CFDictionaryGetValue(Mutable, @"BitsPerSample");
                if (v341)
                {
                  CFDictionarySetValue(Mutable, @"OriginalBitsPerSample", v341);
                }

                CFDictionaryRemoveValue(Mutable, @"BitsPerSample");
                CFDictionarySetValue(Mutable, @"BitsPerSample", v338);
                CFRelease(v338);
LABEL_509:
                v11 = v517;
                v523 = v12;
                if (!v473 || !v498)
                {
                  v12 = 0;
                  if (v478)
                  {
                    value = 0;
                    v346 = 0;
                    theArray = 0;
                    if (v498 >= 1)
                    {
                      v346 = 0;
                      v387 = v498;
                      v388 = v565;
                      do
                      {
                        if (*v388)
                        {
                          v346 += CFDataGetLength(*v388);
                        }

                        v388 += 8;
                        --v387;
                      }

                      while (v387);
                      OUTLINED_FUNCTION_23_6();
                      theArray = 0;
                    }
                  }

                  else
                  {
                    value = 0;
                    v346 = 0;
                    theArray = 0;
                  }

                  goto LABEL_596;
                }

                v342 = OUTLINED_FUNCTION_79_1(i, v250, MEMORY[0x1E695E9C0], v251, v252, v253, v254, v255, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, v473, v474, v477, v478, v481, v484, v487, v488, cf, v492, v495, v498, v499, v502, v505, v508, v511, v517, v522, v12, allocator);
                v345 = CFArrayCreateMutable(v342, v343, v344);
                if (v345)
                {
                  theArray = v345;
                  if (v498 >= 1)
                  {
                    v346 = 0;
                    value = 0;
                    v12 = 0;
                    v347 = v565;
                    v348 = v498;
                    v349 = *MEMORY[0x1E695F050];
                    v350 = *(MEMORY[0x1E695F050] + 8);
                    v351 = *(MEMORY[0x1E695F050] + 16);
                    v352 = *(MEMORY[0x1E695F050] + 24);
                    v353 = *MEMORY[0x1E695F060];
                    v354 = *(MEMORY[0x1E695F060] + 8);
                    v355 = v565;
                    while (1)
                    {
                      if (*v355)
                      {
                        v346 += CFDataGetLength(*v355);
                      }

                      OUTLINED_FUNCTION_9_1();
                      if (v60)
                      {
                        OUTLINED_FUNCTION_30_5();
                        OUTLINED_FUNCTION_6();
                        kdebug_trace();
                      }

                      v560 = 0;
                      v561 = 0;
                      v558 = 0;
                      v559 = 0;
                      v557 = 0;
                      v356 = *(v355 + 1);
                      if (v356)
                      {
                        v357 = CMPhotoAuxiliaryImageMetadataCreateFromXMPData(allocatorc, v356, &v557, &v560, 0, &v559);
                        if (v357)
                        {
                          v367 = v357;
                          v368 = 0;
                          v11 = v518;
                          goto LABEL_553;
                        }
                      }

                      v358 = *v355;
                      keys[0] = 0;
                      valuePtr = 0;
                      *&values = 0;
                      v359 = CMPhotoDecompressionSessionCreate(allocatorc, 0, &values);
                      if (v359)
                      {
                        v367 = v359;
                        v368 = 0;
                        v361 = 0;
                        v11 = v518;
                      }

                      else
                      {
                        v360 = CFDictionaryCreateMutable(allocatorc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        v361 = v360;
                        v11 = v518;
                        if (v360)
                        {
                          Container = CMPhotoCFDictionarySetInt(v360, @"OutputPixelFormat", 1278226488);
                          if (Container || (Container = CMPhotoCFDictionarySetInt(v361, @"AccelerationMode", 1), Container) || (Container = CMPhotoDecompressionSessionCreateContainer(values, 0, v358, 0, &valuePtr), Container))
                          {
                            v367 = Container;
LABEL_578:
                            v368 = 0;
                            goto LABEL_528;
                          }

                          CMPhotoDecompressionContainerCreateImageForIndex(valuePtr, 0, v361, 2, keys, v363, v364, v365, v407, v411, v415, v419, v423, v427, v431, v435, v439, v444);
                          v367 = v366;
                          v368 = keys[0];
                          if (!v366)
                          {
                            keys[0] = 0;
                            goto LABEL_528;
                          }

                          if (keys[0])
                          {
                            CFRelease(keys[0]);
                            goto LABEL_578;
                          }
                        }

                        else
                        {
                          v368 = 0;
                          v367 = 4294950745;
                        }
                      }

LABEL_528:
                      if (values)
                      {
                        CFRelease(values);
                      }

                      if (valuePtr)
                      {
                        CFRelease(valuePtr);
                      }

                      if (v361)
                      {
                        CFRelease(v361);
                      }

                      if (!v367)
                      {
                        if (v559)
                        {
                          LODWORD(keys[0]) = 0;
                          LODWORD(values) = 0;
                          if (!FigCFDictionaryGetFloatIfPresent() || !FigCFDictionaryGetFloatIfPresent())
                          {
                            goto LABEL_585;
                          }

                          v369 = *(v355 + 44);
                          v370 = 0.0;
                          if (HIDWORD(v369))
                          {
                            v370 = OUTLINED_FUNCTION_56_1(v369);
                          }

                          if (vabdd_f64(v370, *&values) >= 0.00000999999975)
                          {
                            goto LABEL_585;
                          }

                          v371 = *(v355 + 52);
                          v372 = 0.0;
                          if (HIDWORD(v371))
                          {
                            v372 = OUTLINED_FUNCTION_56_1(v371);
                          }

                          if (vabdd_f64(v372, *keys) < 0.00000999999975 && (LODWORD(valuePtr) = 0, FigCFDictionaryGetIntIfPresent()))
                          {
                            v373 = OUTLINED_FUNCTION_17();
                            FractionalPixelBuffer = CMPhotoCreateFractionalPixelBuffer(v373, v374, v375, 0, v376, v377);
                            if (!FractionalPixelBuffer)
                            {
                              v12 = v561;
LABEL_552:
                              v367 = 0;
                              value = v560;
                              v560 = 0;
                              v561 = 0;
                              goto LABEL_553;
                            }
                          }

                          else
                          {
LABEL_585:
                            fig_log_get_emitter();
                            OUTLINED_FUNCTION_11();
                            FractionalPixelBuffer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                          }
                        }

                        else
                        {
                          CVPixelBufferGetPixelFormatType(v368);
                          OUTLINED_FUNCTION_53_1();
                          if (v60)
                          {
                            v12 = v368;
                            v368 = 0;
                            goto LABEL_552;
                          }

                          OUTLINED_FUNCTION_82_0();
                          FractionalPixelBuffer = CMPhotoScaleAndRotateSessionTransformForSize(0, v368, 1, 1, 1278226488, 0, 0, 1, v349, v350, v351, v352, v353, v354, v407, v411, v415);
                          if (!FractionalPixelBuffer)
                          {
                            v12 = v558;
                            v558 = 0;
                            goto LABEL_552;
                          }
                        }

                        v367 = FractionalPixelBuffer;
                      }

LABEL_553:
                      if (v559)
                      {
                        CFRelease(v559);
                      }

                      if (v561)
                      {
                        CFRelease(v561);
                      }

                      if (v560)
                      {
                        CFRelease(v560);
                      }

                      if (v368)
                      {
                        CFRelease(v368);
                      }

                      if (v558)
                      {
                        CFRelease(v558);
                      }

                      OUTLINED_FUNCTION_9_1();
                      if (v60)
                      {
                        OUTLINED_FUNCTION_30_5();
                        OUTLINED_FUNCTION_42();
                        kdebug_trace();
                      }

                      if (v367)
                      {
                        CVPixelBufferFromDNGData = v367;
                        goto LABEL_682;
                      }

                      CGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType = CMPhotoGetCGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType(*(v355 + 7), *(v355 + 2));
                      if (CGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType)
                      {
                        v380 = CGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType;
                        v381 = OUTLINED_FUNCTION_96();
                        v383 = CFDictionaryCreateMutable(v381, v382, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (!v383)
                        {
                          CVPixelBufferFromDNGData = 4294950745;
                          goto LABEL_682;
                        }

                        v384 = v383;
                        CFDictionarySetValue(v383, @"AuxPixelBuffer", v12);
                        if (v12)
                        {
                          CFRelease(v12);
                        }

                        v12 = value;
                        CFDictionarySetValue(v384, @"AuxMetadata", value);
                        if (value)
                        {
                          CFRelease(value);
                        }

                        CFDictionarySetValue(v384, @"AuxImageType", v380);
                        CFArrayAppendValue(theArray, v384);
                        CFRelease(v384);
                        OUTLINED_FUNCTION_23_6();
                      }

                      else
                      {
                        v385 = *(v355 + 2);
                        SystemEncoding = CFStringGetSystemEncoding();
                        CFStringGetCStringPtr(v385, SystemEncoding);
                      }

                      v355 += 64;
                      v347 += 64;
                      if (!--v348)
                      {
                        MutableCopy = v487;
                        Mutable = v488;
                        goto LABEL_596;
                      }
                    }
                  }

                  OUTLINED_FUNCTION_23_6();
                  v346 = 0;
LABEL_596:
                  FigCFDictionarySetInt();
                  FigCFDictionarySetInt();
                  FigCFDictionarySetInt();
                  if (v546 > 1)
                  {
                    FigCFDictionarySetInt();
                    FigCFDictionarySetInt();
                  }

                  if (v451)
                  {
                    *v451 = v545 == 34892;
                  }

                  v389 = v478;
                  v391 = v457;
                  v390 = v460;
                  if (v484 && (OUTLINED_FUNCTION_91_1(), (v392 & 1) != 0))
                  {
                    OUTLINED_FUNCTION_9_1();
                    if (v60)
                    {
                      OUTLINED_FUNCTION_30_5();
                      OUTLINED_FUNCTION_6();
                      kdebug_trace();
                    }

                    CVPixelBufferFromDNGData = _createCVPixelBufferFromDNGData(v477, v550[1], v550[0], v549[1], v549[0], 0, v548[1], v548[0], SHIDWORD(v542), v484);
                    OUTLINED_FUNCTION_9_1();
                    if (v60)
                    {
                      OUTLINED_FUNCTION_30_5();
                      OUTLINED_FUNCTION_42();
                      kdebug_trace();
                    }

                    if (CVPixelBufferFromDNGData)
                    {
                      goto LABEL_615;
                    }

                    CVBufferSetAttachment(*v484, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
                    keys[0] = 0;
                    CMPhotoCFDictionaryGetCFValueIfPresent();
                    if (keys[0])
                    {
                      LODWORD(values) = 0;
                      LODWORD(valuePtr) = 0;
                      LODWORD(v561) = v550[0];
                      LODWORD(v560) = v550[1];
                      if (!FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex() || v561 <= values || !FigCFArrayGetInt32AtIndex() || v560 <= valuePtr)
                      {
                        CVPixelBufferFromDNGData = 4294950740;
                        goto LABEL_615;
                      }

                      CMPhotoSetPixelBufferCLAP(*v484, valuePtr, values, v560 - valuePtr, v561 - values, 1, 1);
                    }

                    v389 = v478;
                    v390 = v460;
                    if (v457)
                    {
                      goto LABEL_603;
                    }
                  }

                  else if (v391)
                  {
LABEL_603:
                    OUTLINED_FUNCTION_91_1();
                    if (v394)
                    {
                      *v393 = MutableCopy;
                      MutableCopy = 0;
                    }
                  }

                  if (v390)
                  {
                    *v390 = v556;
                    v556 = 0;
                  }

                  if (v473)
                  {
                    *v473 = theArray;
                    theArray = 0;
                  }

                  if (v466)
                  {
                    Length = v556;
                    if (v556)
                    {
                      Length = CFDataGetLength(v556);
                    }

                    *v466 = Length;
                    v389 = v478;
                  }

                  CVPixelBufferFromDNGData = 0;
                  if (v389)
                  {
                    *v389 = v346;
                  }

                  goto LABEL_615;
                }

                OUTLINED_FUNCTION_23_6();
                theArray = 0;
LABEL_692:
                CVPixelBufferFromDNGData = 4294950745;
                goto LABEL_615;
              }

              OUTLINED_FUNCTION_23_6();
            }

            else
            {
              OUTLINED_FUNCTION_10_23();
            }

            theArray = 0;
            CVPixelBufferFromDNGData = 4294950745;
            goto LABEL_657;
          }

LABEL_689:
          OUTLINED_FUNCTION_10_23();
          theArray = 0;
          goto LABEL_615;
        }

LABEL_693:
        v477 = 0;
        CVPixelBufferFromDNGData = 4294950746;
        goto LABEL_453;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
    CVPixelBufferFromDNGData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v477 = 0;
    goto LABEL_453;
  }

  v100 = v98;
  v101 = 0;
  v102 = 0;
  LODWORD(value) = 0;
  v103 = v98;
  while (1)
  {
    v498 = v102;
    v12 = v100;
    if (v99 != 1)
    {
      v12 = CMPhotoDNGRead32((v553 + v103 + 4 * v101), BYTE10(v554));
    }

    values = 0u;
    v564 = 0u;
    v104 = _cmphotoDNGReaderInit(&values, v555);
    if (v104)
    {
      goto LABEL_706;
    }

    v104 = _cmphotoDNGReaderOpenIFD(&values, v12);
    if (v104)
    {
      goto LABEL_706;
    }

    if (!WORD4(v564))
    {
      goto LABEL_146;
    }

    OUTLINED_FUNCTION_25_7();
    while (1)
    {
      v105 = OUTLINED_FUNCTION_17_13();
      if (CMPhotoDNGRead16(v105, v106) == 254)
      {
        break;
      }

      OUTLINED_FUNCTION_1_31();
      if (v107)
      {
        goto LABEL_146;
      }
    }

    v108 = OUTLINED_FUNCTION_17_13();
    _readTag(v108, v109);
    if (!v110)
    {
      break;
    }

    v102 = v498;
    switch(v110)
    {
      case 0x10004:
        if (v498 >= 16)
        {
          goto LABEL_705;
        }

        if (!WORD4(v564))
        {
          goto LABEL_226;
        }

        v12 = 0;
        OUTLINED_FUNCTION_72_1();
        while (1)
        {
          v117 = OUTLINED_FUNCTION_17_13();
          if (CMPhotoDNGRead16(v117, v118) == 254)
          {
            break;
          }

          OUTLINED_FUNCTION_1_31();
          if (v107)
          {
            goto LABEL_226;
          }
        }

        v144 = OUTLINED_FUNCTION_17_13();
        _readTag(v144, v145);
        if (v146 != 65540 || !WORD4(v564))
        {
          goto LABEL_226;
        }

        OUTLINED_FUNCTION_25_7();
        while (1)
        {
          v147 = OUTLINED_FUNCTION_17_13();
          if (CMPhotoDNGRead16(v147, v148) == 259)
          {
            break;
          }

          OUTLINED_FUNCTION_1_31();
          if (v107)
          {
            goto LABEL_187;
          }
        }

        v168 = OUTLINED_FUNCTION_17_13();
        _readTag(v168, v169);
        if (v170 != 7)
        {
          v149 = WORD4(v564);
LABEL_187:
          if (!v149)
          {
            goto LABEL_226;
          }

          OUTLINED_FUNCTION_25_7();
          while (1)
          {
            v171 = OUTLINED_FUNCTION_17_13();
            if (CMPhotoDNGRead16(v171, v172) == 259)
            {
              break;
            }

            OUTLINED_FUNCTION_1_31();
            if (v107)
            {
              goto LABEL_197;
            }
          }

          v174 = OUTLINED_FUNCTION_17_13();
          _readTag(v174, v175);
          if (v176 != 34892)
          {
            v173 = WORD4(v564);
LABEL_197:
            if (!v173)
            {
              goto LABEL_226;
            }

            OUTLINED_FUNCTION_25_7();
            while (1)
            {
              v177 = OUTLINED_FUNCTION_17_13();
              if (CMPhotoDNGRead16(v177, v178) == 259)
              {
                break;
              }

              OUTLINED_FUNCTION_1_31();
              if (v107)
              {
                goto LABEL_226;
              }
            }

            v185 = OUTLINED_FUNCTION_17_13();
            _readTag(v185, v186);
            if (v187 != 52546)
            {
              goto LABEL_226;
            }
          }
        }

        if (!WORD4(v564))
        {
          goto LABEL_226;
        }

        OUTLINED_FUNCTION_25_7();
        while (1)
        {
          v188 = OUTLINED_FUNCTION_17_13();
          if (CMPhotoDNGRead16(v188, v189) == 277)
          {
            break;
          }

          OUTLINED_FUNCTION_1_31();
          if (v107)
          {
            goto LABEL_226;
          }
        }

        v190 = OUTLINED_FUNCTION_17_13();
        _readTag(v190, v191);
        if (v192 != 1 || !WORD4(v564))
        {
          goto LABEL_226;
        }

        OUTLINED_FUNCTION_25_7();
        while (1)
        {
          v193 = OUTLINED_FUNCTION_17_13();
          if (CMPhotoDNGRead16(v193, v194) == 258)
          {
            break;
          }

          OUTLINED_FUNCTION_1_31();
          if (v107)
          {
            goto LABEL_226;
          }
        }

        v202 = OUTLINED_FUNCTION_17_13();
        _readTag(v202, v203);
        if (v204 != 8)
        {
          goto LABEL_226;
        }

        if (!WORD4(v564))
        {
LABEL_242:
          v12 = 0;
          goto LABEL_254;
        }

        OUTLINED_FUNCTION_25_7();
        while (1)
        {
          v205 = OUTLINED_FUNCTION_17_13();
          if (CMPhotoDNGRead16(v205, v206) == 700)
          {
            break;
          }

          OUTLINED_FUNCTION_1_31();
          if (v107)
          {
            goto LABEL_242;
          }
        }

        v213 = OUTLINED_FUNCTION_17_13();
        v215 = _readTag(v213, v214);
        if ((v215 & 0xFFFF0000) != 0x10000)
        {
LABEL_226:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_11();
          CVPixelBufferFromDNGData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_227;
        }

        v12 = OUTLINED_FUNCTION_68_1(v216, HIDWORD(v215), values, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, v470, v474, v477, v478, v481, v484, v487, v488, cf, v492, v495, v498, v499, v502, v505, v508, v511, v514, v519, v523, allocator);
        if (!v12)
        {
          goto LABEL_704;
        }

LABEL_254:
        v217 = _copyStringTag(&values, 52526);
        if (!v217)
        {
          v217 = _copyStringTag(&values, 51182);
        }

        v534 = v217;
        if (WORD4(v564))
        {
          theArray = v12;
          OUTLINED_FUNCTION_25_7();
          while (1)
          {
            v218 = OUTLINED_FUNCTION_17_13();
            if (CMPhotoDNGRead16(v218, v219) == 273)
            {
              break;
            }

            OUTLINED_FUNCTION_1_31();
            if (v107)
            {
              goto LABEL_273;
            }
          }

          v220 = OUTLINED_FUNCTION_17_13();
          v223 = _readTag(v220, v221) >> 32 != 1 || v222 == 0;
          if (!v223 && WORD4(v564))
          {
            v224 = v222;
            while (1)
            {
              v225 = OUTLINED_FUNCTION_17_13();
              if (CMPhotoDNGRead16(v225, v226) == 279)
              {
                break;
              }

              OUTLINED_FUNCTION_1_31();
              if (v107)
              {
                goto LABEL_272;
              }
            }

            v233 = OUTLINED_FUNCTION_17_13();
            _readTag(v233, v234);
            if (v235 >= 5 && v235 + v224 <= DWORD2(values))
            {
              v236 = CFDataCreate(allocator, (values + v224), v235);
              if (v236)
              {
                *v536 = v236;
                *(v536 + 8) = v12;
                *(v536 + 16) = v534;
                *(v536 + 24) = 0x400000000;
                *(v536 + 32) = 0u;
                *(v536 + 48) = 0u;
                v64 = &v553;
                goto LABEL_291;
              }

              CVPixelBufferFromDNGData = 4294950745;
              v64 = &v553;
              if (!v12)
              {
LABEL_275:
                if (v534)
                {
                  CFRelease(v534);
                }

LABEL_227:
                v196 = v498;
                if (CVPixelBufferFromDNGData)
                {
                  goto LABEL_707;
                }

                goto LABEL_292;
              }

LABEL_274:
              CFRelease(v12);
              goto LABEL_275;
            }
          }

LABEL_272:
          v64 = &v553;
        }

LABEL_273:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_11();
        CVPixelBufferFromDNGData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v404, v408, v412);
        if (!v12)
        {
          goto LABEL_275;
        }

        goto LABEL_274;
      case 8:
        if (v498 >= 16)
        {
          goto LABEL_705;
        }

        v570 = 0u;
        v569 = 0u;
        v568 = 0u;
        *keys = 0u;
        if (WORD4(v564))
        {
          OUTLINED_FUNCTION_72_1();
          while (1)
          {
            v119 = OUTLINED_FUNCTION_17_13();
            if (CMPhotoDNGRead16(v119, v120) == 254)
            {
              break;
            }

            OUTLINED_FUNCTION_1_31();
            if (v107)
            {
              v12 = 0;
              goto LABEL_157;
            }
          }

          v150 = OUTLINED_FUNCTION_17_13();
          _readTag(v150, v151);
          v121 = WORD4(v564);
          v12 = v152 == 8;
LABEL_157:
          if (v121)
          {
            v153 = 0;
            v154 = v564;
            while (1)
            {
              v155 = OUTLINED_FUNCTION_17_13();
              if (CMPhotoDNGRead16(v155, v156) == 259)
              {
                break;
              }

              v154 += 12;
              if (++v153 >= WORD4(v564))
              {
                v157 = 0;
                goto LABEL_164;
              }
            }

            v158 = OUTLINED_FUNCTION_17_13();
            _readTag(v158, v159);
LABEL_164:
            v64 = &v553;
          }

          else
          {
            v157 = 0;
          }

          if (v12)
          {
            v160 = v157 == 7 || v157 == 52546;
            if (v160 && WORD4(v564))
            {
              OUTLINED_FUNCTION_25_7();
              while (1)
              {
                v161 = OUTLINED_FUNCTION_17_13();
                if (CMPhotoDNGRead16(v161, v162) == 277)
                {
                  break;
                }

                OUTLINED_FUNCTION_1_31();
                if (v107)
                {
                  goto LABEL_285;
                }
              }

              v163 = OUTLINED_FUNCTION_17_13();
              _readTag(v163, v164);
              if (v165 == 1)
              {
                if (WORD4(v564))
                {
                  OUTLINED_FUNCTION_25_7();
                  while (1)
                  {
                    v166 = OUTLINED_FUNCTION_17_13();
                    if (CMPhotoDNGRead16(v166, v167) == 51177)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_1_31();
                    if (v107)
                    {
                      goto LABEL_285;
                    }
                  }

                  v179 = OUTLINED_FUNCTION_17_13();
                  _readTag(v179, v180);
                  if ((v181 - 3) > 0xFFFFFFFD)
                  {
                    v182 = v181 == 1 ? 2 : 1;
                    HIDWORD(v568) = v182;
                    if (WORD4(v564))
                    {
                      OUTLINED_FUNCTION_25_7();
                      while (1)
                      {
                        v183 = OUTLINED_FUNCTION_17_13();
                        if (CMPhotoDNGRead16(v183, v184) == 51180)
                        {
                          break;
                        }

                        OUTLINED_FUNCTION_1_31();
                        if (v107)
                        {
                          goto LABEL_285;
                        }
                      }

                      v197 = OUTLINED_FUNCTION_17_13();
                      _readTag(v197, v198);
                      if (v199 == 1)
                      {
                        if (WORD4(v564))
                        {
                          OUTLINED_FUNCTION_25_7();
                          while (1)
                          {
                            v200 = OUTLINED_FUNCTION_17_13();
                            if (CMPhotoDNGRead16(v200, v201) == 51181)
                            {
                              break;
                            }

                            OUTLINED_FUNCTION_1_31();
                            if (v107)
                            {
                              goto LABEL_285;
                            }
                          }

                          v207 = OUTLINED_FUNCTION_17_13();
                          _readTag(v207, v208);
                          if (v209 == 1)
                          {
                            if (!_getTagRational(&values, 51178, (&v569 + 12)) || !_getTagRational(&values, 51179, (&v570 + 4)))
                            {
                              goto LABEL_306;
                            }

                            v64 = &v553;
                            if (WORD4(v564))
                            {
                              OUTLINED_FUNCTION_25_7();
                              while (1)
                              {
                                v210 = OUTLINED_FUNCTION_17_13();
                                if (CMPhotoDNGRead16(v210, v211) == 700)
                                {
                                  break;
                                }

                                OUTLINED_FUNCTION_1_31();
                                if (v107)
                                {
                                  goto LABEL_280;
                                }
                              }

                              v227 = OUTLINED_FUNCTION_17_13();
                              v229 = _readTag(v227, v228);
                              if ((v229 & 0xFFFF0000) != 0x10000)
                              {
                                goto LABEL_306;
                              }

                              v12 = &v553;
                              keys[1] = OUTLINED_FUNCTION_68_1(v230, HIDWORD(v229), values, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, v470, v474, v477, v478, v481, v484, v487, v488, cf, v492, v495, v498, v499, v502, v505, v508, v511, v514, v519, v523, allocator);
                              if (!keys[1])
                              {
                                CVPixelBufferFromDNGData = 4294950745;
                                v64 = &v553;
                                goto LABEL_288;
                              }

                              v212 = WORD4(v564);
LABEL_280:
                              v64 = &v553;
                              if (v212)
                              {
                                OUTLINED_FUNCTION_25_7();
                                while (1)
                                {
                                  v231 = OUTLINED_FUNCTION_17_13();
                                  if (CMPhotoDNGRead16(v231, v232) == 273)
                                  {
                                    break;
                                  }

                                  OUTLINED_FUNCTION_1_31();
                                  if (v107)
                                  {
                                    goto LABEL_285;
                                  }
                                }

                                v237 = OUTLINED_FUNCTION_17_13();
                                v239 = _readTag(v237, v238);
                                v534 = v240;
                                if (HIDWORD(v239) == 1 && v240 != 0)
                                {
                                  if (WORD4(v564))
                                  {
                                    OUTLINED_FUNCTION_25_7();
                                    while (1)
                                    {
                                      v242 = OUTLINED_FUNCTION_17_13();
                                      if (CMPhotoDNGRead16(v242, v243) == 279)
                                      {
                                        break;
                                      }

                                      OUTLINED_FUNCTION_1_31();
                                      if (v107)
                                      {
                                        goto LABEL_306;
                                      }
                                    }

                                    v244 = OUTLINED_FUNCTION_17_13();
                                    _readTag(v244, v245);
                                    if (v246 > 4 && v246 + v534 <= DWORD2(values))
                                    {
                                      keys[0] = CFDataCreate(allocator, (values + v534), v246);
                                      if (keys[0])
                                      {
                                        CVPixelBufferFromDNGData = 0;
                                        v64 = &v553;
                                        v247 = v568;
                                        *v536 = *keys;
                                        *(v536 + 16) = v247;
                                        v248 = v570;
                                        *(v536 + 32) = v569;
                                        *(v536 + 48) = v248;
                                        keys[1] = 0;
                                        keys[0] = 0;
                                        goto LABEL_286;
                                      }

                                      CVPixelBufferFromDNGData = 4294950745;
LABEL_307:
                                      v64 = &v553;
LABEL_286:
                                      if (keys[1])
                                      {
                                        CFRelease(keys[1]);
                                      }

LABEL_288:
                                      if (keys[0])
                                      {
                                        CFRelease(keys[0]);
                                      }

                                      if (CVPixelBufferFromDNGData)
                                      {
                                        goto LABEL_707;
                                      }

LABEL_291:
                                      v196 = v498;
LABEL_292:
                                      v102 = (v196 + 1);
                                      goto LABEL_147;
                                    }
                                  }

LABEL_306:
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_11();
                                  CVPixelBufferFromDNGData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                                  goto LABEL_307;
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
          }
        }

LABEL_285:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_11();
        CVPixelBufferFromDNGData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_286;
      case 1:
        if (v91 == v540)
        {
          v104 = _readPreviewTags(&values, &v556);
          v102 = v498;
          if (v104)
          {
            goto LABEL_706;
          }
        }

        ++v91;
        goto LABEL_147;
    }

    if (v110 == 16 && BYTE6(v539))
    {
      v133 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      v134 = OUTLINED_FUNCTION_79_1(v133, v110, v111, v112, v113, v114, v115, v116, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, v470, v474, v477, v478, v481, v484, v487, v488, cf, v492, v495, v498, v499, v502, v505, v508, v511, v514, v519, v523, allocator);
      if (!CFDictionaryCreateMutable(v134, v135, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
      {
        goto LABEL_703;
      }

      v136 = CMPhotoPixelFormatContainsAlpha(SHIDWORD(v542));
      v104 = OUTLINED_FUNCTION_22_7(v136, v137, v138, v139, v140, v141, v142, v143, v406, v410, v414, v418, v422, v426, v430, v434, v438, v442, v447, v450, v453, v456, v459, v462, v463, v464, v465, v468, v469, v472, v476, v477, v480, v483, v486, v487, v488, cfb, v494, v497, v498, v501, v504, v507, v510, v513, v516, v521, v523, allocatorb, v528, v529, v530, theArray, v534, v536, value, v539, v540, v541, v542, v543, v544);
      if (v104)
      {
        goto LABEL_706;
      }

      v551 = values;
      v552 = v564;
      LODWORD(value) = 1;
LABEL_145:
      v92 = 1;
LABEL_146:
      v102 = v498;
    }

LABEL_147:
    if (++v101 == v99)
    {
      v498 = v102;
      HIDWORD(v454) = value != 0;
      MutableCopy = v487;
      Mutable = v488;
      v12 = cf;
      goto LABEL_324;
    }
  }

  if (!v92)
  {
    v122 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    v123 = OUTLINED_FUNCTION_79_1(v122, v110, v111, v112, v113, v114, v115, v116, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, v470, v474, v477, v478, v481, v484, v487, v488, cf, v492, v495, v498, v499, v502, v505, v508, v511, v514, v519, v523, allocator);
    if (!CFDictionaryCreateMutable(v123, v124, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
    {
LABEL_703:
      cf = 0;
LABEL_704:
      CVPixelBufferFromDNGData = 4294950745;
      goto LABEL_707;
    }

    v125 = CMPhotoPixelFormatContainsAlpha(SHIDWORD(v542));
    v104 = OUTLINED_FUNCTION_22_7(v125, v126, v127, v128, v129, v130, v131, v132, v405, v409, v413, v417, v421, v425, v429, v433, v437, v441, v446, v449, v452, v455, v458, v461, v463, v464, v465, v467, v469, v471, v475, v477, v479, v482, v485, v487, v488, cfa, v493, v496, v498, v500, v503, v506, v509, v512, v515, v520, v523, allocatora, v528, v529, v530, theArray, v534, v536, value, v539, v540, v541, v542, v543, v544);
    if (v104)
    {
      goto LABEL_706;
    }

    v551 = values;
    v552 = v564;
    goto LABEL_145;
  }

LABEL_705:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_11();
  v104 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_706:
  CVPixelBufferFromDNGData = v104;
LABEL_707:
  OUTLINED_FUNCTION_5_27();
  theArray = 0;
  v11 = 0;
LABEL_682:
  MutableCopy = v487;
  Mutable = v488;
LABEL_615:
  OUTLINED_FUNCTION_9_1();
  if (v60)
  {
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  free(v523);
  if (v555)
  {
    CFRelease(v555);
  }

  if (v477)
  {
    CFRelease(v477);
  }

  if (v556)
  {
    CFRelease(v556);
  }

  if (v463)
  {
    CFRelease(v463);
  }

  if (v465)
  {
    CFRelease(v465);
  }

  if (v464)
  {
    CFRelease(v464);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v469)
  {
    CFRelease(v469);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v498 >= 1)
  {
    v396 = v498;
    v397 = &v566;
    do
    {
      v398 = *(v397 - 2);
      if (v398)
      {
        CFRelease(v398);
      }

      v399 = *(v397 - 1);
      if (v399)
      {
        CFRelease(v399);
      }

      if (*v397)
      {
        CFRelease(*v397);
      }

      v397 += 8;
      --v396;
    }

    while (v396);
  }

  return CVPixelBufferFromDNGData;
}

uint64_t CMPhotoDNGCompressorReplaceMainImageOptions(uint64_t a1)
{
  if (!a1)
  {
    return 4294950746;
  }

  OUTLINED_FUNCTION_65_1();
  v4 = *(v3 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 48) = 0;
  }

  if (v2)
  {
    v5 = CFRetain(v2);
  }

  else
  {
    v5 = 0;
  }

  result = 0;
  *(v1 + 48) = v5;
  return result;
}

uint64_t CMPhotoDNGCompressorReplaceMainImageProperties(CFTypeRef cf, const __CFDictionary *a2)
{
  result = 4294950746;
  if (cf && a2)
  {
    v5 = *(cf + 4);
    if (v5)
    {
      CFRelease(v5);
      *(cf + 4) = 0;
    }

    if (*(cf + 5))
    {
      v6 = CFGetAllocator(cf);
      MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
      if (!MutableCopy)
      {
        return 4294950745;
      }

      v8 = MutableCopy;
      CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696D808], *(cf + 5));
    }

    else
    {
      v8 = CFRetain(a2);
    }

    result = 0;
    *(cf + 4) = v8;
  }

  return result;
}

uint64_t CMPhotoDNGCompressorRemoveAuxiliaryImages(CFMutableArrayRef *cf)
{
  if (!cf)
  {
    return 4294950746;
  }

  if (!cf[7])
  {
LABEL_6:
    CFArrayRemoveAllValues(cf[10]);
    CFArrayRemoveAllValues(cf[9]);
    return 0;
  }

  v2 = cf[12];
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
    goto LABEL_6;
  }

  v3 = CFGetAllocator(cf);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  cf[12] = Mutable;
  if (Mutable)
  {
    goto LABEL_6;
  }

  return 4294950745;
}

CFMutableStringRef CMPhotoDNGCompressorClass_CopyDebugDesc(uint64_t *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (Mutable)
  {
    v4 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v4, v5, v6, a1);
    v28 = a1[3];
    v7 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v7, v8, v9, v28);
    v29 = a1[6];
    v10 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v10, v11, v12, v29);
    v13 = a1[7];
    if (v13)
    {
      Length = CFDataGetLength(a1[7]);
    }

    else
    {
      Length = 0;
    }

    v32 = Length;
    v15 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v15, v16, v17, v13, v32);
    v30 = a1[9];
    v18 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v18, v19, v20, v30);
    v31 = a1[10];
    v21 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v21, v22, v23, v31);
    v24 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v24, v25, v26);
  }

  return Mutable;
}

uint64_t _dngInfoInit(_DWORD *a1, const __CFData *a2, __CVBuffer *a3, const __CFDictionary *a4, const __CFArray *a5, int a6, const __CFDictionary *a7, uint64_t a8)
{
  v437 = 0;
  v438 = 0;
  v436 = 0.0;
  v435 = 0;
  v434 = 0;
  *(a1 + 8) = a6;
  v432 = 1.0;
  v433 = 0;
  v430 = 2;
  v431 = 2;
  v429 = 0;
  v428 = a6;
  v427 = a6;
  v425.f64[0] = CMPhotoGetPixelBufferCLAPAsRect(a3);
  v425.f64[1] = v16;
  v426.f64[0] = v17;
  v426.f64[1] = v18;
  if (CMPhotoGetCPUCount() > 7)
  {
    CPUCount = 8;
  }

  else
  {
    CPUCount = CMPhotoGetCPUCount();
  }

  a1[8] = CPUCount;
  v20 = MEMORY[0x1E695F058];
  if (a7)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    if (v432 < 0.0 || v432 > 1.0)
    {
      goto LABEL_20;
    }

    FigCFDictionaryGetIntIfPresent();
    if ((v431 - 10) <= 0xFFFFFFF6)
    {
      goto LABEL_20;
    }

    FigCFDictionaryGetIntIfPresent();
    if (v430 < 0)
    {
      goto LABEL_20;
    }

    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetFloatIfPresent();
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    v23 = v434 != 1786276963 || IntIfPresent == 0;
    v24 = v23 ? 7 : 52546;
    v419 = v24;
    FigCFDictionaryGetIntIfPresent();
    if (a1[8] >= 0x100u)
    {
      goto LABEL_20;
    }

    Value = CFDictionaryGetValue(a7, @"SourceCropRect");
    if (Value)
    {
      if (a2)
      {
LABEL_20:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_1();
        v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_38:
        HIDWORD(v438) = v26;
        return HIDWORD(v438);
      }

      v29 = *(v20 + 16);
      rect.origin = *v20;
      rect.size = v29;
      if (CGRectMakeWithDictionaryRepresentation(Value, &rect))
      {
        v30.f64[0] = rect.origin.x;
        HIDWORD(v438) = CMPhotoApplyCropRectToRect(&v425, v30, rect.origin.y, rect.size.width, rect.size.height);
        if (HIDWORD(v438))
        {
          return HIDWORD(v438);
        }
      }
    }

    v31 = CFDictionaryGetValue(a7, @"Tiling");
    v416 = a8;
    if (v31)
    {
      v32 = v31;
      v33 = CFGetTypeID(v31);
      if (v33 != CFDictionaryGetTypeID())
      {
        goto LABEL_37;
      }

      rect.origin.x = 0.0;
      rect.origin.y = 0.0;
      v27 = 0;
      v28 = 0;
      if (CGSizeMakeWithDictionaryRepresentation(v32, &rect))
      {
        v27 = vcvtad_u64_f64(rect.origin.x);
        v34 = 7;
        if (!*(a1 + 8))
        {
          v34 = 15;
        }

        if ((v34 & v27) != 0)
        {
          goto LABEL_37;
        }

        v35 = 7;
        if (!*(a1 + 8))
        {
          v35 = 3;
        }

        v28 = vcvtad_u64_f64(rect.origin.y);
        if ((v35 & v28) != 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    v416 = a8;
    v27 = 0;
    v28 = 0;
    v419 = 7;
  }

  v36 = v433;
  a1[3] = v433;
  switch(v36)
  {
    case 0:
      a1[3] = 3;
      break;
    case 1:
    case 3:
    case 5:
      break;
    case 2:
      if (!*(a1 + 8))
      {
        goto LABEL_37;
      }

      break;
    default:
      goto LABEL_37;
  }

  *(a1 + 4) = v432;
  v37 = v430;
  a1[5] = v431;
  a1[6] = v37;
  *(a1 + 28) = v428;
  *(a1 + 29) = v427;
  *(a1 + 30) = v435;
  a1[9] = HIDWORD(v434);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  VersatileBayerPattern = CMPhotoPixelBufferGetVersatileBayerPattern(a3);
  if (a2)
  {
    BytePtr = CFDataGetBytePtr(a2);
    *(a1 + 25) = *(BytePtr + 12);
    PixelFormatType = *(BytePtr + 2);
  }

  else
  {
    *(a1 + 25) = vmovn_s64(vcvtq_s64_f64(v426));
    if (CMPhotoPixelFormatIsRAWVersatile(PixelFormatType) && (VersatileBayerPattern > 8 || ((1 << VersatileBayerPattern) & 0x12F) == 0))
    {
LABEL_37:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
      v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_38;
    }
  }

  if (a6)
  {
    v41 = 0;
  }

  else
  {
    v41 = VersatileBayerPattern == 5 || VersatileBayerPattern == 8;
  }

  key = PixelFormatType;
  if (*(a1 + 8) || a1[3] != 5)
  {
    v43 = 17;
  }

  else if (v41)
  {
    v43 = 68;
  }

  else
  {
    v43 = 34;
  }

  *(a1 + 1712) = v43;
  v44 = *MEMORY[0x1E696D808];
  TypeID = CFDictionaryGetTypeID();
  v46 = CFDictionaryGetValue(a4, v44);
  if (!v46)
  {
    goto LABEL_321;
  }

  v47 = v46;
  if (CFGetTypeID(v46) != TypeID)
  {
    goto LABEL_321;
  }

  v411 = VersatileBayerPattern;
  v48 = *MEMORY[0x1E696DF28];
  v49 = CFDictionaryGetTypeID();
  v50 = CFDictionaryGetValue(a4, v48);
  if (!v50)
  {
    goto LABEL_321;
  }

  v51 = v50;
  if (CFGetTypeID(v50) != v49)
  {
    goto LABEL_321;
  }

  *(&v409 + 1) = v27;
  v410 = v51;
  v408 = a3;
  *&v409 = v28;
  v407 = v8;
  v52 = FigCFDictionaryGetValue();
  v53 = 0;
  v54 = 0;
  v55 = 0;
  theString2 = *MEMORY[0x1E696D260];
  v413 = *MEMORY[0x1E696D258];
  if (a5)
  {
    goto LABEL_70;
  }

LABEL_71:
  for (i = 0; v55 < i; i = CFArrayGetCount(a5))
  {
    if (CFArrayGetValueAtIndex(a5, v55))
    {
      v56 = FigCFDictionaryGetValue();
      if (v56)
      {
        v57 = v56;
        if (CFStringCompare(v56, theString2, 0))
        {
          v58 = CFStringCompare(v57, v413, 0);
          v53 |= v58 == kCFCompareEqualTo;
          v54 |= v58 != kCFCompareEqualTo;
        }

        else
        {
          v53 = 1;
        }
      }
    }

    ++v55;
    if (!a5)
    {
      goto LABEL_71;
    }

LABEL_70:
    ;
  }

  v423 = 0;
  theString = 0;
  HIDWORD(v438) = _getDNGVersionInternal(a4, v433, a6 == 0, v53 & 1, v54 & 1, *(a1 + 1712), &theString, &v423);
  if (!HIDWORD(v438))
  {
    v60 = theString;
    if (v52)
    {
      if (CFStringCompare(v52, theString, 0x40uLL) == kCFCompareLessThan)
      {
        v60 = theString;
      }

      else
      {
        v60 = v52;
      }
    }

    HIDWORD(v438) = _setVersionArrayFromVersionString(v60, a1);
    if (!HIDWORD(v438))
    {
      HIDWORD(v438) = _setVersionArrayFromVersionString(v423, (a1 + 1));
      if (!HIDWORD(v438))
      {
        v61 = *MEMORY[0x1E696DF48];
        v62 = CFStringGetTypeID();
        v63 = OUTLINED_FUNCTION_48_1();
        v65 = CFDictionaryGetValue(v63, v64);
        if (!v65 || (v61 = v65, CFGetTypeID(v65) != v62))
        {
          OUTLINED_FUNCTION_36_4();
        }

        *(a1 + 5) = v61;
        v66 = *MEMORY[0x1E696DF50];
        v67 = CFStringGetTypeID();
        v68 = OUTLINED_FUNCTION_48_1();
        v70 = CFDictionaryGetValue(v68, v69);
        if (!v70 || (v66 = v70, CFGetTypeID(v70) != v67))
        {
          OUTLINED_FUNCTION_36_4();
        }

        *(a1 + 6) = v66;
        v71 = *MEMORY[0x1E696DF68];
        v72 = CFStringGetTypeID();
        v73 = OUTLINED_FUNCTION_48_1();
        v75 = CFDictionaryGetValue(v73, v74);
        if (!v75 || (v71 = v75, CFGetTypeID(v75) != v72))
        {
          OUTLINED_FUNCTION_36_4();
        }

        *(a1 + 7) = v71;
        v76 = CFDictionaryGetValue(v410, *MEMORY[0x1E696DF20]);
        if (!v76)
        {
          goto LABEL_321;
        }

        v77 = v76;
        if (!FigCFDictionaryGetIntIfPresent() && !FigCFDictionaryGetIntIfPresent())
        {
          a1[24] = 1;
        }

        v78 = *MEMORY[0x1E696D858];
        CFStringGetTypeID();
        v79 = OUTLINED_FUNCTION_34_2();
        v80 = CFDictionaryGetValue(v79, v78);
        if (!v80 || (v78 = v80, CFGetTypeID(v80) != v72))
        {
          OUTLINED_FUNCTION_36_4();
        }

        *(a1 + 11) = v78;
        v81 = CFDictionaryGetValue(v47, *MEMORY[0x1E696D7B0]);
        if (!v81)
        {
          goto LABEL_321;
        }

        v82 = v81;
        v83 = CFGetTypeID(v81);
        if (v83 == CFArrayGetTypeID())
        {
          OUTLINED_FUNCTION_5();
          FigCFArrayGetInt32AtIndex();
        }

        else
        {
          v84 = CFGetTypeID(v82);
          if (v84 != CFNumberGetTypeID())
          {
            goto LABEL_321;
          }

          CFNumberGetValue(v82, kCFNumberIntType, a1 + 32);
        }

        if (*(a1 + 8))
        {
          v85 = CFDictionaryGetValue(v47, *MEMORY[0x1E696D7F0]);
          if (v85)
          {
            v86 = v85;
            v87 = CFGetTypeID(v85);
            if (v87 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v86, kCFNumberIntType, a1 + 36);
            }
          }
        }

        v88 = CFDictionaryGetValue(v47, *MEMORY[0x1E696D878]);
        if (!v88)
        {
          goto LABEL_321;
        }

        v89 = v88;
        v90 = CFGetTypeID(v88);
        if (v90 == CFArrayGetTypeID())
        {
          OUTLINED_FUNCTION_5();
          FigCFArrayGetInt32AtIndex();
        }

        else
        {
          v91 = CFGetTypeID(v89);
          if (v91 != CFNumberGetTypeID())
          {
            goto LABEL_321;
          }

          CFNumberGetValue(v89, kCFNumberIntType, a1 + 33);
        }

        if (v411 == 5 || v411 == 8)
        {
          HIDWORD(v396) = 0;
          v397 = 0;
          v384 = &unk_1F194A468;
        }

        else
        {
          CFArrayGetTypeID();
          v258 = OUTLINED_FUNCTION_27_6();
          if (v258 && (v384 = v258, CFGetTypeID(v258) == v89))
          {
            HIDWORD(v396) = 0;
            v397 = 0;
          }

          else
          {
            CFArrayGetTypeID();
            v285 = OUTLINED_FUNCTION_27_6();
            if (v285 && (v286 = v285, CFGetTypeID(v285) == v89))
            {
              v397 = v286;
              v384 = 0;
              HIDWORD(v396) = 1;
            }

            else
            {
              v384 = 0;
              v397 = 0;
              HIDWORD(v396) = 1;
              HIDWORD(v438) = 1;
            }
          }
        }

        CFArrayGetTypeID();
        v93 = OUTLINED_FUNCTION_27_6();
        if (!v93 || (v94 = v93, CFGetTypeID(v93) != v89))
        {
          v94 = 0;
        }

        CFNumberGetTypeID();
        v95 = OUTLINED_FUNCTION_27_6();
        if (!v95 || (v96 = v95, CFGetTypeID(v95) != v89))
        {
          v96 = 0;
          HIDWORD(v438) = 1;
        }

        CFNumberGetTypeID();
        v97 = OUTLINED_FUNCTION_27_6();
        if (!v97 || (v98 = v97, CFGetTypeID(v97) != v89))
        {
          v98 = 0;
        }

        v99 = CFArrayGetTypeID();
        v100 = CFDictionaryGetValue(v47, @"IlluminantData1");
        if (!v100 || (v101 = v100, CFGetTypeID(v100) != v99))
        {
          v101 = 0;
        }

        v388 = v101;
        v102 = CFArrayGetTypeID();
        v103 = CFDictionaryGetValue(v47, @"IlluminantData2");
        if (!v103 || (v104 = v103, CFGetTypeID(v103) != v102))
        {
          v104 = 0;
        }

        CFArrayGetTypeID();
        v105 = OUTLINED_FUNCTION_27_6();
        if (!v105 || (v106 = v105, CFGetTypeID(v105) != v102))
        {
          v106 = 0;
          HIDWORD(v438) = 1;
        }

        v395 = v106;
        CFArrayGetTypeID();
        v107 = OUTLINED_FUNCTION_27_6();
        if (!v107 || (v108 = v107, CFGetTypeID(v107) != v102))
        {
          v108 = 0;
        }

        v394 = v108;
        if (!HIDWORD(v438))
        {
          CFArrayGetTypeID();
          v109 = OUTLINED_FUNCTION_27_6();
          if (!v109 || (v110 = v109, CFGetTypeID(v109) != v102))
          {
            v110 = 0;
          }

          v393 = v110;
          v386 = v104;
          CFArrayGetTypeID();
          v111 = OUTLINED_FUNCTION_27_6();
          if (!v111 || (v112 = v111, CFGetTypeID(v111) != v102))
          {
            v112 = 0;
          }

          v113 = *MEMORY[0x1E696D7D8];
          CFStringGetTypeID();
          v114 = OUTLINED_FUNCTION_34_2();
          v115 = CFDictionaryGetValue(v114, v113);
          if (!v115 || (v116 = v115, CFGetTypeID(v115) != v104))
          {
            v116 = 0;
          }

          *(a1 + 92) = v116;
          v117 = *MEMORY[0x1E696D838];
          CFStringGetTypeID();
          v118 = OUTLINED_FUNCTION_34_2();
          v119 = CFDictionaryGetValue(v118, v117);
          if (!v119 || (v120 = v119, CFGetTypeID(v119) != v104))
          {
            v120 = 0;
          }

          *(a1 + 93) = v120;
          v121 = *MEMORY[0x1E696D848];
          CFStringGetTypeID();
          v122 = OUTLINED_FUNCTION_34_2();
          v123 = CFDictionaryGetValue(v122, v121);
          if (!v123 || (v124 = v123, CFGetTypeID(v123) != v104))
          {
            v124 = 0;
          }

          *(a1 + 95) = v124;
          v125 = *MEMORY[0x1E696D780];
          CFStringGetTypeID();
          v126 = OUTLINED_FUNCTION_34_2();
          v127 = CFDictionaryGetValue(v126, v125);
          if (!v127 || (v128 = v127, CFGetTypeID(v127) != v104))
          {
            v128 = 0;
          }

          *(a1 + 94) = v128;
          v129 = *MEMORY[0x1E696D840];
          CFNumberGetTypeID();
          v130 = OUTLINED_FUNCTION_34_2();
          v131 = CFDictionaryGetValue(v130, v129);
          if (v131 && (v132 = v131, CFGetTypeID(v131) == v104))
          {
            CFNumberGetValue(v132, kCFNumberShortType, a1 + 538);
          }

          else
          {
            a1[538] = -1;
          }

          v392 = v112;
          v133 = *MEMORY[0x1E696D830];
          CFDataGetTypeID();
          v134 = OUTLINED_FUNCTION_34_2();
          v135 = CFDictionaryGetValue(v134, v133);
          if (!v135 || (v136 = v135, CFGetTypeID(v135) != v104))
          {
            v136 = 0;
          }

          *(a1 + 26) = v136;
          CFArrayGetTypeID();
          v137 = OUTLINED_FUNCTION_27_6();
          if (!v137 || (v138 = v137, CFGetTypeID(v137) != v136))
          {
            v138 = 0;
          }

          v403 = v138;
          v139 = CFArrayGetTypeID();
          v140 = CFDictionaryGetValue(v47, @"WarpRectilinear2");
          if (!v140 || (v141 = v140, CFGetTypeID(v140) != v139))
          {
            v141 = 0;
          }

          v142 = *MEMORY[0x1E696D868];
          CFArrayGetTypeID();
          v143 = OUTLINED_FUNCTION_34_2();
          v144 = CFDictionaryGetValue(v143, v142);
          if (!v144 || (v145 = v144, CFGetTypeID(v144) != v139))
          {
            v145 = 0;
          }

          v405 = v145;
          v146 = *MEMORY[0x1E696D810];
          CFArrayGetTypeID();
          v147 = OUTLINED_FUNCTION_34_2();
          v148 = CFDictionaryGetValue(v147, v146);
          if (!v148 || (v149 = v148, CFGetTypeID(v148) != v139))
          {
            v149 = 0;
          }

          v399 = v149;
          v401 = v94;
          v150 = *MEMORY[0x1E696D820];
          CFArrayGetTypeID();
          v151 = OUTLINED_FUNCTION_34_2();
          v152 = CFDictionaryGetValue(v151, v150);
          if (!v152 || (v153 = v152, CFGetTypeID(v152) != v139))
          {
            v153 = 0;
          }

          v398 = v153;
          v387 = v98;
          v154 = CFArrayGetTypeID();
          v155 = OUTLINED_FUNCTION_46_1();
          if (!v155 || (v156 = v155, CFGetTypeID(v155) != v154))
          {
            v156 = 0;
          }

          FigCFDictionaryGetFloatIfPresent();
          FigCFDictionaryGetFloatIfPresent();
          FigCFDictionaryGetFloatIfPresent();
          v436 = INFINITY;
          FigCFDictionaryGetFloatIfPresent();
          if (fabsf(v436) != INFINITY && (v436 < 0.0 || v436 > 1.0))
          {
            goto LABEL_320;
          }

          v158 = CFArrayGetTypeID();
          v159 = OUTLINED_FUNCTION_46_1();
          if (!v159 || (v160 = v159, CFGetTypeID(v159) != v158))
          {
            v160 = 0;
          }

          v390 = v160;
          v161 = CFArrayGetTypeID();
          v162 = OUTLINED_FUNCTION_46_1();
          if (!v162 || (v163 = v162, CFGetTypeID(v162) != v161))
          {
            v163 = 0;
          }

          v389 = v163;
          number = v96;
          v391 = v77;
          v164 = CFArrayGetTypeID();
          v165 = OUTLINED_FUNCTION_46_1();
          if (!v165 || (v166 = v165, CFGetTypeID(v165) != v164))
          {
            v166 = 0;
          }

          v167 = CFStringGetTypeID();
          v168 = OUTLINED_FUNCTION_78_1();
          v170 = CFDictionaryGetValue(v168, v169);
          if (!v170 || (v171 = v170, CFGetTypeID(v170) != v167))
          {
            v171 = 0;
          }

          v383 = v166;
          *(a1 + 8) = v171;
          v172 = CFStringGetTypeID();
          v173 = OUTLINED_FUNCTION_78_1();
          v175 = CFDictionaryGetValue(v173, v174);
          if (!v175 || (v176 = v175, CFGetTypeID(v175) != v172))
          {
            v176 = 0;
          }

          *(a1 + 9) = v176;
          v177 = CFStringGetTypeID();
          v178 = OUTLINED_FUNCTION_78_1();
          v180 = CFDictionaryGetValue(v178, v179);
          if (!v180 || (v181 = v180, CFGetTypeID(v180) != v177))
          {
            v181 = 0;
          }

          *(a1 + 27) = v181;
          v182 = v405;
          if (v403)
          {
            HIDWORD(v438) = _unpackArrayOfDoubles(v403, 0x14u, a1 + 824, a1 + 246);
            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            v287 = a1[246];
            v288 = v287 == 8 || v287 == 20;
            v182 = v405;
            if (!v288)
            {
              goto LABEL_334;
            }
          }

          if (v141)
          {
            Count = CFArrayGetCount(v141);
            if (Count != 60 && Count != 22)
            {
              goto LABEL_334;
            }

            v185 = 0;
            v186 = (Count - 1);
            v187 = a1 + 248;
            do
            {
              if (!FigCFArrayGetDoubleAtIndex())
              {
                goto LABEL_334;
              }

              ++v185;
              v187 += 2;
            }

            while (v186 != v185);
            a1[368] = v186;
            if (!FigCFArrayGetInt32AtIndex())
            {
              goto LABEL_334;
            }
          }

          if (v156)
          {
            a1[535] = CFArrayGetCount(v156);
            OUTLINED_FUNCTION_83_1();
            v190 = malloc_type_malloc(v188, v189);
            *(a1 + 268) = v190;
            v191 = a1[535];
            v192 = CFGetTypeID(v156);
            if (v192 != CFArrayGetTypeID() || CFArrayGetCount(v156) != v191)
            {
              goto LABEL_334;
            }

            if (v191 >= 1)
            {
              for (j = 0; j != v191; ++j)
              {
                FigCFArrayGetFloatAtIndex();
                v190 += 4;
              }
            }

            HIDWORD(v438) = 0;
          }

          if (v182)
          {
            HIDWORD(v438) = _unpackArrayOfDoubles(v182, 0xEu, a1 + 1480, a1 + 398);
            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            if ((a1[398] & 0xFFFFFFF7) != 6)
            {
              goto LABEL_334;
            }
          }

          if (v399)
          {
            HIDWORD(v438) = _unpackArrayOfDoubles(v399, 7u, a1 + 1600, a1 + 414);
            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            if (a1[414] != 7)
            {
              goto LABEL_334;
            }
          }

          if (v398)
          {
            HIDWORD(v438) = _unpackArrayOfDoubles(v398, 6u, a1 + 768, a1 + 204);
            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            if ((a1[204] & 0xFFFFFFFB) != 2)
            {
              goto LABEL_334;
            }
          }

          v194 = CFDictionaryGetTypeID();
          v195 = CFDictionaryGetValue(v47, @"ProfileGainTableMap");
          if (v195 && (v196 = v195, CFGetTypeID(v195) == v194))
          {
            v197 = CFNumberGetTypeID();
            v198 = CFDictionaryGetValue(v196, @"MapPointsV");
            if (!v198)
            {
              goto LABEL_324;
            }

            v199 = v198;
            if (CFGetTypeID(v198) != v197)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            CFNumberGetValue(v199, kCFNumberIntType, a1 + 490);
            v200 = CFNumberGetTypeID();
            v201 = CFDictionaryGetValue(v196, @"MapPointsH");
            if (!v201)
            {
              goto LABEL_324;
            }

            v202 = v201;
            if (CFGetTypeID(v201) != v200)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            CFNumberGetValue(v202, kCFNumberIntType, a1 + 491);
            v203 = CFNumberGetTypeID();
            v204 = CFDictionaryGetValue(v196, @"MapSpacingV");
            if (!v204)
            {
              goto LABEL_324;
            }

            v205 = CFGetTypeID(v204);
            if (v205 != v203)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            OUTLINED_FUNCTION_70_1(v205, v206, a1 + 492);
            v207 = CFNumberGetTypeID();
            v208 = CFDictionaryGetValue(v196, @"MapSpacingH");
            if (!v208)
            {
              goto LABEL_324;
            }

            v209 = CFGetTypeID(v208);
            if (v209 != v207)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            OUTLINED_FUNCTION_70_1(v209, v210, a1 + 494);
            v211 = CFNumberGetTypeID();
            v212 = CFDictionaryGetValue(v196, @"MapOriginV");
            if (!v212)
            {
              goto LABEL_324;
            }

            v213 = CFGetTypeID(v212);
            if (v213 != v211)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            OUTLINED_FUNCTION_70_1(v213, v214, a1 + 496);
            v215 = CFNumberGetTypeID();
            v216 = CFDictionaryGetValue(v196, @"MapOriginH");
            if (!v216)
            {
              goto LABEL_324;
            }

            v217 = CFGetTypeID(v216);
            if (v217 != v215)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            OUTLINED_FUNCTION_70_1(v217, v218, a1 + 498);
            v219 = CFNumberGetTypeID();
            v220 = CFDictionaryGetValue(v196, @"MapPointsN");
            if (!v220)
            {
              goto LABEL_324;
            }

            v221 = v220;
            if (CFGetTypeID(v220) != v219)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            CFNumberGetValue(v221, kCFNumberIntType, a1 + 500);
            v222 = CFArrayGetTypeID();
            v223 = CFDictionaryGetValue(v196, @"MapInputWeights");
            if (!v223 || (v224 = v223, CFGetTypeID(v223) != v222))
            {
LABEL_324:
              v283 = 1;
              goto LABEL_322;
            }

            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            if (CFArrayGetCount(v224) >= 1)
            {
              v225 = 0;
              v226 = a1 + 501;
              while (FigCFArrayGetFloatAtIndex())
              {
                ++v225;
                ++v226;
                if (CFArrayGetCount(v224) <= v225)
                {
                  goto LABEL_257;
                }
              }

              return HIDWORD(v438);
            }

LABEL_257:
            v227 = CFDataGetTypeID();
            *(a1 + 254) = OUTLINED_FUNCTION_47_1(v227, @"GainValues", v227);
            *(a1 + 2024) = 0;
            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }
          }

          else
          {
            LODWORD(rect.origin.x) = 0;
            v228 = CFDataGetTypeID();
            *(a1 + 254) = _readDictType(v47, @"ProfileGainTableMapPacked", v228, &rect);
            *(a1 + 2024) = LODWORD(rect.origin.x) == 0;
          }

          v229 = CFDictionaryGetTypeID();
          v230 = CFDictionaryGetValue(v47, @"GainMap");
          if (v230)
          {
            if (CFGetTypeID(v230) == v229)
            {
              v231 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v231, @"top", v231);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[510] = FigCFNumberGetSInt32();
              v232 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v232, @"bottom", v232);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[512] = FigCFNumberGetSInt32();
              v233 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v233, @"left", v233);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[511] = FigCFNumberGetSInt32();
              v234 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v234, @"right", v234);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[513] = FigCFNumberGetSInt32();
              v235 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v235, @"plane", v235);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[514] = FigCFNumberGetSInt32();
              v236 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v236, @"planes", v236);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[515] = FigCFNumberGetSInt32();
              v237 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v237, @"rowPitch", v237);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[516] = FigCFNumberGetSInt32();
              v238 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v238, @"colPitch", v238);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[517] = FigCFNumberGetSInt32();
              v239 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v239, @"mapsPointsV", v239);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[518] = FigCFNumberGetSInt32();
              v240 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v240, @"mapsPointsH", v240);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[519] = FigCFNumberGetSInt32();
              v241 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v241, @"mapsSpacingV", v241);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              FigCFNumberGetFloat64();
              *(a1 + 260) = v242;
              v243 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v243, @"mapsSpacingH", v243);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              FigCFNumberGetFloat64();
              *(a1 + 261) = v244;
              v245 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v245, @"mapOriginV", v245);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              FigCFNumberGetFloat64();
              *(a1 + 262) = v246;
              v247 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v247, @"mapOriginH", v247);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              FigCFNumberGetFloat64();
              *(a1 + 263) = v248;
              v249 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v249, @"mapPlanes", v249);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              a1[528] = FigCFNumberGetSInt32();
              v250 = CFDataGetTypeID();
              *(a1 + 265) = OUTLINED_FUNCTION_47_1(v250, @"gainData", v250);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }
            }
          }

          if (fabsf(v436) == INFINITY)
          {
            *(a1 + 181) = 0;
          }

          else
          {
            OUTLINED_FUNCTION_15_14();
            do
            {
              OUTLINED_FUNCTION_88_1();
              if (!v23 & v256)
              {
                v257 = 0;
              }

              else
              {
                v257 = v255 < v253;
              }
            }

            while (v257);
            a1[181] = llroundf(v252 * v254);
            a1[182] = v251;
          }

          OUTLINED_FUNCTION_15_14();
          do
          {
            OUTLINED_FUNCTION_86_1();
            if (!v23 & v256)
            {
              v264 = 0;
            }

            else
            {
              v264 = v263 < v261;
            }
          }

          while (v264);
          a1[105] = llroundf(v260 * v262);
          a1[106] = v259;
          OUTLINED_FUNCTION_15_14();
          do
          {
            OUTLINED_FUNCTION_86_1();
            if (!v23 & v256)
            {
              v270 = 0;
            }

            else
            {
              v270 = v269 < v267;
            }
          }

          while (v270);
          a1[107] = llroundf(v266 * v268);
          a1[108] = v265;
          OUTLINED_FUNCTION_15_14();
          do
          {
            OUTLINED_FUNCTION_88_1();
            if (!v23 & v256)
            {
              v277 = 0;
            }

            else
            {
              v277 = v276 < v274;
            }
          }

          while (v277);
          a1[109] = llroundf(v273 * v275);
          a1[110] = v272;
          if ((v396 & 0x100000000) == 0)
          {
            HIDWORD(v438) = _floatArrayToRational(v384, (a1 + 111), 3);
            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            LODWORD(rect.origin.x) = 0;
            HIDWORD(v438) = _unpackArrayOfDoubles(v384, 3u, a1 + 472, &rect);
            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            if (LODWORD(rect.origin.x) != 3)
            {
              goto LABEL_320;
            }

            *(a1 + 512) = 1;
LABEL_307:
            if (v401)
            {
              HIDWORD(v438) = _floatArrayToRational(v401, (a1 + 129), 3);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              LODWORD(rect.origin.x) = 0;
              HIDWORD(v438) = _unpackArrayOfDoubles(v401, 3u, a1 + 544, &rect);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              if (LODWORD(rect.origin.x) != 3)
              {
                goto LABEL_320;
              }

              *(a1 + 568) = 1;
            }

            HIDWORD(v438) = _floatArrayToRational(v395, (a1 + 68), 9);
            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            if (v394)
            {
              HIDWORD(v438) = _floatArrayToRational(v394, (a1 + 86), 9);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              *(a1 + 416) = 1;
            }

            if (v393)
            {
              HIDWORD(v438) = _floatArrayToRational(v393, (a1 + 143), 9);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              *(a1 + 644) = 1;
              if (!*(a1 + 92))
              {
                *(a1 + 92) = *(a1 + 5);
              }

              if (!*(a1 + 93))
              {
                *(a1 + 93) = *(a1 + 5);
              }

              if (v392)
              {
                HIDWORD(v438) = _floatArrayToRational(v392, (a1 + 162), 9);
                if (HIDWORD(v438))
                {
                  return HIDWORD(v438);
                }

                *(a1 + 720) = 1;
              }
            }

            else if (v392)
            {
LABEL_320:
              v283 = -16550;
LABEL_322:
              HIDWORD(v438) = v283;
              return HIDWORD(v438);
            }

            CFNumberGetValue(number, kCFNumberShortType, a1 + 56);
            if (v387)
            {
              CFNumberGetValue(v387, kCFNumberShortType, a1 + 226);
              *(a1 + 228) = 1;
            }

            v278 = v416;
            v279 = v411;
            v280 = v390;
            v281 = v391;
            v282 = v389;
            if (v388)
            {
              HIDWORD(v438) = _floatArrayToRational(v388, (a1 + 58), 2);
              if (HIDWORD(v438))
              {
                return HIDWORD(v438);
              }

              *(a1 + 248) = 1;
              v279 = v411;
              v280 = v390;
              v281 = v391;
              v282 = v389;
              if (v386)
              {
                HIDWORD(v438) = _floatArrayToRational(v386, (a1 + 63), 2);
                if (HIDWORD(v438))
                {
                  return HIDWORD(v438);
                }

                *(a1 + 268) = 1;
                v278 = v416;
                v279 = v411;
                v280 = v390;
                v281 = v391;
                v282 = v389;
                if (!v390)
                {
LABEL_365:
                  if (!v282)
                  {
                    goto LABEL_366;
                  }

                  goto LABEL_542;
                }

LABEL_540:
                HIDWORD(v438) = _readInt32Array(v280, 4, (a1 + 41));
                if (HIDWORD(v438))
                {
                  goto LABEL_546;
                }

                *(a1 + 180) = 1;
                if (!v282)
                {
LABEL_366:
                  if (!v383)
                  {
                    goto LABEL_367;
                  }

                  HIDWORD(v438) = _readInt32Array(v383, 2, (a1 + 49));
                  if (!HIDWORD(v438))
                  {
                    *(a1 + 204) = 1;
LABEL_367:
                    v289 = CFGetTypeID(v281);
                    v290 = CFDateGetTypeID();
                    v291 = MEMORY[0x1E695E480];
                    if (v289 == v290)
                    {
                      v292 = *MEMORY[0x1E695E480];
                      v293 = CFDateFormatterCreate(*MEMORY[0x1E695E480], 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
                      CFDateFormatterSetFormat(v293, @"yyyy:MM:dd HH:mm:ss");
                      *(a1 + 10) = CFDateFormatterCreateStringWithDate(v292, v293, v281);
                      if (v293)
                      {
                        CFRelease(v293);
                      }
                    }

                    else
                    {
                      v294 = CFGetTypeID(v281);
                      if (v294 != CFStringGetTypeID())
                      {
                        goto LABEL_334;
                      }

                      *(a1 + 10) = CFRetain(v281);
                    }

                    v295 = *(a1 + 26);
                    if (v295)
                    {
                      v296 = CFDataGetBytePtr(v295);
                      Length = CFDataGetLength(*(a1 + 26));
                      if (!memchr(v296, 0, Length))
                      {
                        goto LABEL_334;
                      }
                    }

                    if (v278)
                    {
                      *(a1 + 215) = v278;
                      a1[434] = v419;
                      HIDWORD(v438) = _parseOutWidthAndHeightFromJpeg(a1);
                      if (HIDWORD(v438))
                      {
                        goto LABEL_334;
                      }
                    }

                    *(a1 + 7) = vcvtq_u64_f64(v425);
                    if (*(a1 + 8))
                    {
                      UsedBitDepthForPixelFormat = CMPhotoGetUsedBitDepthForPixelFormat(key);
                      a1[34] = UsedBitDepthForPixelFormat;
                      if (!UsedBitDepthForPixelFormat)
                      {
                        goto LABEL_544;
                      }

                      v299 = a1[3];
                      if (v299 != 2)
                      {
                        v302 = a1[33];
                        if (key == 1751527984 && (34 - __clz(v302)) < UsedBitDepthForPixelFormat)
                        {
                          v302 = ~(-1 << UsedBitDepthForPixelFormat);
                          a1[33] = v302;
                        }

                        v303 = a1[32];
                        a1[37] = v302;
                        a1[38] = v303;
                        a1[39] = UsedBitDepthForPixelFormat;
                        if (v299 == 5 || v299 == 3)
                        {
                          LODWORD(rect.origin.x) = 16;
                          v305 = CFArrayGetTypeID();
                          if (_readDictType(v47, @"BitsPerSample", v305, 0))
                          {
                            FigCFArrayGetInt32AtIndex();
                          }

                          if (SLODWORD(rect.origin.x) >= a1[34])
                          {
                            x_low = a1[34];
                          }

                          else
                          {
                            x_low = LODWORD(rect.origin.x);
                          }

                          a1[34] = x_low;
                          if (x_low >= CMPhotoDNGDefaultBitDepth())
                          {
                            v307 = CMPhotoDNGDefaultBitDepth();
                          }

                          else
                          {
                            v307 = a1[34];
                          }

                          a1[39] = v307;
                          v308 = v429;
                          if (v429)
                          {
                            a1[39] = v429;
                            if (!*(a1 + 28))
                            {
                              a1[37] = ~(-1 << v308);
                            }
                          }

                          if (!a1[34])
                          {
                            goto LABEL_544;
                          }
                        }

LABEL_404:
                        if ((a1[25] & 1) == 0 && (a1[26] & 1) == 0)
                        {
                          v309 = a1 + 420;
                          if (*(a1 + 8))
                          {
                            *v309 = 0;
                            *(a1 + 211) = 0;
                            a1[424] = 0;
                            v310 = HIDWORD(v438);
                          }

                          else
                          {
                            v310 = _cfaPatternFromPixelFormat(key, v279, v309, a1 + 424);
                            HIDWORD(v438) = v310;
                          }

                          if (v310)
                          {
                            return HIDWORD(v438);
                          }

                          v311 = _copyFilteredImageProperties(a4);
                          *(a1 + 208) = v311;
                          if (v311)
                          {
                            v312 = (a1 + 416);
                            HIDWORD(v438) = CMPhotoUpdateImageProperties(a1 + 208, 0, 0, v426.f64[0], v426.f64[1]);
                            if (HIDWORD(v438))
                            {
                              return HIDWORD(v438);
                            }

                            if (*v312)
                            {
                              *(a1 + 1672) = CFDictionaryContainsKey(*v312, *MEMORY[0x1E696DBF0]);
                              if (CFDictionaryContainsKey(*(a1 + 208), *MEMORY[0x1E696D9B0]))
                              {
                                v313 = 1;
                              }

                              else
                              {
                                v313 = CFDictionaryContainsKey(*v312, *MEMORY[0x1E696DE30]) != 0;
                              }

                              *(a1 + 1673) = v313;
                            }
                          }

                          a1[435] = 0;
                          *(a1 + 218) = 0;
                          if (a5)
                          {
                            if (CFArrayGetCount(a5) >= 1)
                            {
                              v314 = CFArrayGetCount(a5);
                              a1[435] = v314;
                              v315 = malloc_type_calloc(v314, 0x40uLL, 0x1060040C5BCF64AuLL);
                              *(a1 + 218) = v315;
                              if (!v315)
                              {
                                goto LABEL_544;
                              }
                            }

                            if (a1[435] >= 1)
                            {
                              v316 = 0;
                              v406 = @"urn:com:apple:photo:internal:disparityInternal";
                              theDicta = @"FloatMinValue";
                              keya = @"FloatMaxValue";
                              v412 = *v291;
                              v402 = @"urn:mpeg:mpegB:cicp:systems:auxiliary:depth";
                              v404 = @"urn:mpeg:hevc:2015:auxid:2";
                              v400 = @"urn:com:apple:photo:internal:disparityMIAFInternal";
                              v317 = *MEMORY[0x1E695FF58];
                              while (1)
                              {
                                if (v317 == 1)
                                {
                                  OUTLINED_FUNCTION_6();
                                  kdebug_trace();
                                }

                                v441 = 0;
                                v442 = 0;
                                ValueAtIndex = CFArrayGetValueAtIndex(a5, v316);
                                v319 = CFDictionaryGetValue(ValueAtIndex, @"AuxPixelBuffer");
                                v420 = v316;
                                if (!v319)
                                {
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_2_35();
                                  v340 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v383, v384, number);
LABEL_508:
                                  XMPData = v340;
LABEL_511:
                                  v374 = MEMORY[0x1E695FF58];
                                  goto LABEL_481;
                                }

                                v320 = CFDictionaryGetValue(ValueAtIndex, @"AuxImageType");
                                if (!v320)
                                {
                                  goto LABEL_509;
                                }

                                v321 = v320;
                                v322 = CFDictionaryGetValue(ValueAtIndex, @"AuxMetadata");
                                if (!v322)
                                {
                                  goto LABEL_509;
                                }

                                v323 = v322;
                                v324 = CFDictionaryGetValue(ValueAtIndex, @"AuxOptions");
                                v325 = *(a1 + 218) + (v316 << 6);
                                *(v325 + 60) = 0xFFFF;
                                *(v325 + 40) = 8;
                                *(v325 + 24) = a1[3];
                                v417 = v325 + 24;
                                v326 = OUTLINED_FUNCTION_5();
                                CompressionCompatiblePixelBuffer = CMPhotoCreateCompressionCompatiblePixelBuffer(v326, v327, 8u, 0, 0, v328, v329);
                                if (CompressionCompatiblePixelBuffer)
                                {
                                  goto LABEL_510;
                                }

                                v331 = FigCFEqual();
                                if (v331 || (v331 = FigCFEqual(), v331))
                                {
                                  if (!OUTLINED_FUNCTION_69_1(v331, v332, v333, v334, v335, v336, v337, v338, v383, v384, number, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v400, v402, v404, v406, v407, v408, v409, *(&v409 + 1), v410, v412, v413, keya, v417, theString2, v316, theDicta) || !CMPhotoCFDictionaryGetFloatIfPresent())
                                  {
LABEL_502:
                                    v319 = 0;
                                    XMPData = -16557;
                                    goto LABEL_511;
                                  }

                                  if (*&rect.origin.x < 0.0)
                                  {
                                    v410 = v324;
                                    *&v439.origin.x = *&v439.origin.x - *&rect.origin.x;
                                    LODWORD(rect.origin.x) = 0;
                                    MutableCopy = FigCFDictionaryCreateMutableCopy();
                                    v319 = MutableCopy;
                                    if (!MutableCopy)
                                    {
                                      XMPData = -16551;
                                      goto LABEL_511;
                                    }

                                    CFDictionaryRemoveValue(MutableCopy, theDicta);
                                    CFDictionaryRemoveValue(v319, keya);
                                    v340 = FigCFDictionarySetFloat();
                                    if (v340)
                                    {
                                      goto LABEL_508;
                                    }

                                    v340 = FigCFDictionarySetFloat();
                                    if (v340)
                                    {
                                      goto LABEL_508;
                                    }

                                    if (v442)
                                    {
                                      CFRelease(v442);
                                    }

                                    v442 = v319;
                                  }
                                }

                                *(v325 + 32) = CVPixelBufferGetWidth(v441);
                                *(v325 + 36) = CVPixelBufferGetHeight(v441);
                                CVPixelBufferGetPixelFormatType(v441);
                                OUTLINED_FUNCTION_53_1();
                                if (!v23)
                                {
                                  goto LABEL_509;
                                }

                                v341 = FigCFEqual();
                                if (v341)
                                {
                                  break;
                                }

                                v341 = FigCFEqual();
                                if (v341)
                                {
                                  v349 = 1;
                                  goto LABEL_445;
                                }

                                if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
                                {
                                  v443.length = CFStringGetLength(@"kCGImageAuxiliaryDataType");
                                  v443.location = 0;
                                  if (CFStringCompareWithOptions(v321, @"kCGImageAuxiliaryDataType", v443, 0))
                                  {
                                    rect.origin.x = 0.0;
                                    CMPhotoAuxiliaryImageTypeAndFinalURNFromURN = CMPhotoGetCMPhotoAuxiliaryImageTypeAndFinalURNFromURN(v321, &rect);
                                    *(v325 + 28) = CMPhotoAuxiliaryImageTypeAndFinalURNFromURN;
                                    if (!CMPhotoAuxiliaryImageTypeAndFinalURNFromURN)
                                    {
                                      goto LABEL_509;
                                    }

                                    x = rect.origin.x;
                                    if (!*&rect.origin.x)
                                    {
LABEL_505:
                                      v360 = 0;
                                      *(v325 + 16) = x;
                                      if (v324)
                                      {
                                        goto LABEL_459;
                                      }

                                      goto LABEL_506;
                                    }
                                  }

                                  else
                                  {
                                    rect.origin.x = 0.0;
                                    CMPhotoGetCMPhotoAuxiliaryImageTypeFromCGImageAuxiliaryDataType(v321, &rect, (v325 + 28));
                                    x = rect.origin.x;
                                    if (!*&rect.origin.x)
                                    {
                                      goto LABEL_509;
                                    }
                                  }

                                  x = COERCE_DOUBLE(CFRetain(*&x));
                                  goto LABEL_505;
                                }

                                v341 = CMPhotoGetCMPhotoAuxiliaryImageTypeAndFinalURNFromURN(v321, 0);
                                *(v325 + 28) = v341;
                                if (!v341)
                                {
                                  goto LABEL_509;
                                }

LABEL_446:
                                if (!OUTLINED_FUNCTION_69_1(v341, v342, v343, v344, v345, v346, v347, v348, v383, v384, number, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v400, v402, v404, v406, v407, v408, v409, *(&v409 + 1), v410, v412, v413, keya, v417, theString2, v420, theDicta) || !CMPhotoCFDictionaryGetFloatIfPresent())
                                {
                                  goto LABEL_502;
                                }

                                OUTLINED_FUNCTION_15_14();
                                do
                                {
                                  OUTLINED_FUNCTION_57_1();
                                  if (!v23 & v256)
                                  {
                                    v354 = 0;
                                  }

                                  else
                                  {
                                    v354 = v353 < 1073700000.0;
                                  }
                                }

                                while (v354);
                                *(v325 + 44) = llroundf(v351 * v352);
                                *(v325 + 48) = v350;
                                OUTLINED_FUNCTION_15_14();
                                do
                                {
                                  OUTLINED_FUNCTION_57_1();
                                  if (!v23 & v256)
                                  {
                                    v359 = 0;
                                  }

                                  else
                                  {
                                    v359 = v358 < 1073700000.0;
                                  }
                                }

                                while (v359);
                                *(v325 + 52) = llroundf(v356 * v357);
                                *(v325 + 56) = v355;
                                v360 = 1;
                                if (v324)
                                {
LABEL_459:
                                  v361 = CFDictionaryGetValue(v324, @"SourceCropRect");
                                  if (v361)
                                  {
                                    v362 = v361;
                                    rect.origin.x = CMPhotoGetPixelBufferCLAPAsRect(v441);
                                    rect.origin.y = v363;
                                    rect.size.width = v364;
                                    rect.size.height = v365;
                                    v366 = *(MEMORY[0x1E695F058] + 16);
                                    v439.origin = *MEMORY[0x1E695F058];
                                    v439.size = v366;
                                    if (CGRectMakeWithDictionaryRepresentation(v362, &v439))
                                    {
                                      v367.f64[0] = v439.origin.x;
                                      CompressionCompatiblePixelBuffer = CMPhotoApplyCropRectToRect(&rect, v367, v439.origin.y, v439.size.width, v439.size.height);
                                      if (CompressionCompatiblePixelBuffer)
                                      {
                                        goto LABEL_510;
                                      }

                                      *(v325 + 32) = vmovn_s64(vcvtq_u64_f64(vrndaq_f64(rect.size)));
                                    }
                                  }

                                  v368 = v417;
                                  CMPhotoCFDictionaryGetIntIfPresent();
                                  LODWORD(rect.origin.x) = 0;
                                  if (FigCFDictionaryGetFloatIfPresent())
                                  {
                                    if (*&rect.origin.x < 0.0 || *&rect.origin.x > 1.0)
                                    {
LABEL_509:
                                      fig_log_get_emitter();
                                      OUTLINED_FUNCTION_2_35();
                                      CompressionCompatiblePixelBuffer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_510:
                                      XMPData = CompressionCompatiblePixelBuffer;
                                      v319 = 0;
                                      goto LABEL_511;
                                    }

                                    v360 = *&rect.origin.x == 1.0;
                                  }

                                  goto LABEL_469;
                                }

LABEL_506:
                                v368 = v417;
LABEL_469:
                                v370 = *v368;
                                if ((*v368 - 2) < 2)
                                {
                                  goto LABEL_472;
                                }

                                if (v370 == 5)
                                {
                                  JPEGXLFromPixelBuffer = _createJPEGXLFromPixelBuffer(v441, v324, v325);
                                  goto LABEL_478;
                                }

                                if (!v370)
                                {
LABEL_472:
                                  if (v360)
                                  {
                                    v371 = 3;
                                  }

                                  else
                                  {
                                    v371 = 2;
                                  }

                                  *v368 = v371;
                                }

                                JPEGXLFromPixelBuffer = _createJPEGFromPixelBuffer(v441, v324, v360);
LABEL_478:
                                XMPData = JPEGXLFromPixelBuffer;
                                v374 = MEMORY[0x1E695FF58];
                                if (!JPEGXLFromPixelBuffer)
                                {
                                  XMPData = CMPhotoAuxiliaryImageMetadataCreateXMPData(v412, v323, v442, *(v325 + 28), *(v325 + 16), (v325 + 8));
                                }

                                v319 = 0;
LABEL_481:
                                if (v441)
                                {
                                  CFRelease(v441);
                                }

                                if (v442)
                                {
                                  CFRelease(v442);
                                }

                                if (v319)
                                {
                                  CFRelease(v319);
                                }

                                HIDWORD(v438) = XMPData;
                                v317 = *v374;
                                if (*v374 == 1)
                                {
                                  OUTLINED_FUNCTION_42();
                                  kdebug_trace();
                                  XMPData = HIDWORD(v438);
                                  v317 = *v374;
                                }

                                if (XMPData)
                                {
                                  return HIDWORD(v438);
                                }

                                v316 = v420 + 1;
                                if (v420 + 1 >= a1[435])
                                {
                                  goto LABEL_515;
                                }
                              }

                              v349 = 2;
LABEL_445:
                              *(v325 + 28) = v349;
                              goto LABEL_446;
                            }
                          }

LABEL_515:
                          v377 = v409;
                          if (v409 == 0)
                          {
                            _tileDescriptionInitialize(a1);
                            v381 = a1[427];
                            v377 = a1[426];
                            v380 = a1[425];
                            v378 = a1[25];
                            v379 = a1[26];
                          }

                          else
                          {
                            v378 = a1[25];
                            v379 = a1[26];
                            if (v378 >= SDWORD2(v409))
                            {
                              v380 = DWORD2(v409);
                            }

                            else
                            {
                              v380 = a1[25];
                            }

                            a1[425] = v380;
                            if (v379 < v409)
                            {
                              v377 = v379;
                            }

                            a1[426] = v377;
                            v381 = (v379 + v377 - 1) / v377 * ((v378 + v380 - 1) / v380);
                            a1[427] = v381;
                          }

                          if (v377 * v381 * v380 >= v378 * v379)
                          {
                            HIDWORD(v438) = _prepareAnalogBalance(a1);
                            if (!HIDWORD(v438) && *(a1 + 8) && *(a1 + 28))
                            {
                              v382 = MEMORY[0x1E695FF58];
                              if (*MEMORY[0x1E695FF58] == 1)
                              {
                                OUTLINED_FUNCTION_6();
                                kdebug_trace();
                              }

                              HIDWORD(v438) = _applyLossyJPEGPerceptualCurve(a1, v408);
                              if (*v382 == 1)
                              {
                                OUTLINED_FUNCTION_42();
                                kdebug_trace();
                              }
                            }

                            return HIDWORD(v438);
                          }

LABEL_544:
                          fig_log_get_emitter();
                          OUTLINED_FUNCTION_2_35();
                          v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                          goto LABEL_38;
                        }

LABEL_334:
                        v283 = -16556;
                        goto LABEL_322;
                      }

                      a1[39] = 8;
                      v300 = 255;
                    }

                    else
                    {
                      a1[34] = 16;
                      a1[39] = 16;
                      if (HIBYTE(v435))
                      {
                        v301 = 4;
                      }

                      else
                      {
                        v301 = 2;
                      }

                      a1[419] = v301;
                      v300 = vrev64_s32(vshl_s32(*(a1 + 32), vneg_s32(vdup_n_s32(v301))));
                    }

                    *(a1 + 37) = v300;
                    goto LABEL_404;
                  }

LABEL_546:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                  return HIDWORD(v438);
                }

LABEL_542:
                HIDWORD(v438) = _readInt32Array(v282, 2, (a1 + 46));
                if (HIDWORD(v438))
                {
                  goto LABEL_546;
                }

                *(a1 + 192) = 1;
                goto LABEL_366;
              }
            }

            else if (v386)
            {
              goto LABEL_320;
            }

            if (!v280)
            {
              goto LABEL_365;
            }

            goto LABEL_540;
          }

          if (v271)
          {
            HIDWORD(v438) = _floatArrayToRational(v271, (a1 + 124), 2);
            if (HIDWORD(v438))
            {
              return HIDWORD(v438);
            }

            goto LABEL_307;
          }
        }

LABEL_321:
        v283 = -16555;
        goto LABEL_322;
      }
    }
  }

  return HIDWORD(v438);
}

void _addRawImageTags(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_65_1();
  v146 = *MEMORY[0x1E69E9840];
  cf = 0;
  v139 = 0;
  v140 = 0;
  *bytes = 0;
  OUTLINED_FUNCTION_42_3(v8, 254, v9, v10, bytes);
  v11 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_42_3(v11, 256, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_42_3(v15, 257, v16, v17, v18);
  if (*(v5 + 8))
  {
    *bytes = *(v5 + 156);
    *&bytes[2] = *bytes;
    *&bytes[4] = *bytes;
    OUTLINED_FUNCTION_94_1(v4, 258, v19, v20, bytes);
    OUTLINED_FUNCTION_75_1();
    if (!v84 & v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = dword_1A5ABCB58[v24];
    }

    LODWORD(v137) = v26;
    OUTLINED_FUNCTION_40_3(v4, v21, v22, v23, &v137);
    LODWORD(v137) = 34892;
    OUTLINED_FUNCTION_39_2(v4, v27, v28, v29, &v137);
    LODWORD(v137) = 3;
    v42 = &v137;
  }

  else
  {
    *bytes = 16;
    OUTLINED_FUNCTION_41_3(v4, 258, v19, v20, bytes);
    OUTLINED_FUNCTION_75_1();
    v30 = OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_40_3(v30, v31, v32, v33, v34);
    v35 = OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_39_2(v35, v36, v37, v38, v39);
    *bytes = 1;
    v42 = bytes;
  }

  OUTLINED_FUNCTION_41_3(v4, 277, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_41_3(v43, 284, v44, v45, v46);
  v47 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_42_3(v47, 322, v48, v49, v50);
  v51 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_42_3(v51, 323, v52, v53, v54);
  if (*(v5 + 1712) && *(v5 + 1712) != 17)
  {
    v55 = OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_41_3(v55, 50975, v56, v57, v58);
    v59 = OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_41_3(v59, 52547, v60, v61, v62);
  }

  *a3 = _ifdAddTag4(v4, 324, 4, *(v5 + 1708), 0);
  *a4 = _ifdAddTag4(v4, 325, 4, *(v5 + 1708), 0);
  if (*(v5 + 8))
  {
    *bytes = *(v5 + 152);
    *&bytes[2] = *bytes;
    *&bytes[4] = *bytes;
    LOWORD(v137) = *(v5 + 148);
    WORD1(v137) = v137;
    WORD2(v137) = v137;
    OUTLINED_FUNCTION_94_1(v4, 50714, v63, v64, bytes);
    OUTLINED_FUNCTION_94_1(v4, 50717, v65, v66, &v137);
    if (*(v5 + 144) != 1)
    {
      goto LABEL_15;
    }

    HIDWORD(v141) = 1;
    v67 = &v141 + 2;
    v68 = v4;
    v69 = -14426;
    v70 = 4;
  }

  else
  {
    _ifdAddTag4(v4, 50713, 3, 2uLL, _addRawImageTags_blackLevelRepeatDim);
    v71 = OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_41_3(v71, 50714, v72, v73, v74);
    v68 = OUTLINED_FUNCTION_13_19();
    v69 = -14819;
    v70 = 3;
  }

  _ifdAddTag4(v68, v69, v70, 1uLL, v67);
LABEL_15:
  if (!*(v5 + 8))
  {
    if (*(v5 + 1696) == 4)
    {
      v75 = &_addRawImageTags_CFARepeatPatternDim;
    }

    else
    {
      v75 = &_addRawImageTags_CFARepeatPatternDimQuadra;
    }

    _ifdAddTag4(v4, 33421, 3, 2uLL, v75);
    _ifdAddTag4(v4, 33422, 1, *(v5 + 1696), (v5 + 1680));
    _ifdAddTag4(v4, 50710, 1, 3uLL, _addRawImageTags_CFAPlaneColor);
    if (*(v5 + 180))
    {
      _ifdAddTag4(v4, 50829, 4, 4uLL, (v5 + 164));
    }

    if (*(v5 + 192))
    {
      _ifdAddTag4(v4, 50719, 4, 2uLL, (v5 + 184));
    }

    if (*(v5 + 204))
    {
      _ifdAddTag4(v4, 50720, 4, 2uLL, (v5 + 196));
    }
  }

  v76 = *(v5 + 2128);
  if (v76)
  {
    _ifdAddTag4(v4, 50712, 3, *(v5 + 2136), v76);
  }

  if (*(v5 + 12) == 2)
  {
    if (_cmphotoDNGOPCodeWriterOpen(&cf))
    {
      goto LABEL_64;
    }

    if (*(v5 + 1956) >= 1)
    {
      v115 = 0;
      v116 = 1752;
      while (!_cmphotoDNGOPCodeWriterStartOPCode(&cf, 8u, 0))
      {
        if (_cmphotoDNGOPCodeWriterWrite32(&cf, 0))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, 0))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 104)))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 100)))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, v115))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, 1u))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, 1u))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, 1u))
        {
          break;
        }

        v117 = v5 + 4 * v115;
        if (_cmphotoDNGOPCodeWriterWrite32(&cf, *(v117 + 1944) - 1))
        {
          break;
        }

        v144 = 0u;
        v145 = 0u;
        *bytes = 0u;
        v143 = 0u;
        v118 = *(v117 + 1944);
        if (v118 >= 1)
        {
          memcpy(bytes, (v5 + v116), 8 * v118);
        }

        if (_cmphotoDNGOPCodeWriterWriteDoubles(&cf, bytes, v118) || _cmphotoDNGOPCodeWriterEndOPCode(&cf))
        {
          break;
        }

        ++v115;
        v116 += 64;
        if (v115 >= *(v5 + 1956))
        {
          goto LABEL_123;
        }
      }

      goto LABEL_64;
    }

LABEL_123:
    *bytes = 0;
    _cmphotoDNGOPCodeWriterCloseAndCopyData(&cf, bytes);
    if (*bytes)
    {
      Length = CFDataGetLength(*bytes);
      CFDataGetBytePtr(*bytes);
      v120 = OUTLINED_FUNCTION_73_1();
      _ifdAddTag4(v120, 51009, 7, Length, v121);
      if (*bytes)
      {
        CFRelease(*bytes);
      }
    }
  }

  v77 = *(v5 + 984);
  if (v77 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = v77 == 8;
  }

  v79 = *(v5 + 1472);
  v80 = v77 == 8 || v77 == 20;
  if (v79 == 59)
  {
    v81 = 3;
  }

  else
  {
    v81 = v79 == 21;
  }

  v82 = *(v5 + 1592);
  if (v82 == 14)
  {
    v83 = 3;
  }

  else
  {
    v83 = v82 == 6;
  }

  if ((v80 & 1) != 0 || (v79 != 59 ? (v84 = v79 == 21) : (v84 = 1), !v84 ? (v85 = v82 == 14) : (v85 = 1), !v85 ? (v86 = v82 == 6) : (v86 = 1), v86 || *(v5 + 1656) || *(v5 + 2120)))
  {
    if (_cmphotoDNGOPCodeWriterOpen(&cf))
    {
      goto LABEL_64;
    }

    v101 = v79 == 59 || v79 == 21;
    if (v101 && _cmphotoDNGOPCodeWriterWriteStandardOPCode(&cf, 0xEu, v81, v5 + 992, *(v5 + 1472), v80, *(v5 + 1476)))
    {
      goto LABEL_64;
    }

    v102 = v77 == 20 || v77 == 8;
    if (v102 && _cmphotoDNGOPCodeWriterWriteStandardOPCode(&cf, 1u, v78, v5 + 824, *(v5 + 984), 0, 0))
    {
      goto LABEL_64;
    }

    if ((v82 | 8) == 0xE && _cmphotoDNGOPCodeWriterWriteStandardOPCode(&cf, 2u, v83, v5 + 1480, *(v5 + 1592), 0, 0))
    {
      goto LABEL_64;
    }

    v103 = *(v5 + 1656);
    if (v103)
    {
      if (_cmphotoDNGOPCodeWriterWriteStandardOPCode(&cf, 3u, 0, v5 + 1600, v103, 0, 0))
      {
        goto LABEL_64;
      }
    }

    v104 = *(v5 + 2120);
    if (v104)
    {
      v105 = *(v5 + 2072);
      v106 = *(v5 + 2076);
      v107 = *(v5 + 2112);
      v108 = CFGetTypeID(v104);
      if (v108 != CFDataGetTypeID())
      {
        goto LABEL_64;
      }

      v109 = (v106 * v105 * v107);
      if (CFDataGetLength(*(v5 + 2120)) != 4 * v109 || _cmphotoDNGOPCodeWriterStartOPCode(&cf, 9u, 0) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2040)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2044)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2048)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2052)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2056)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2060)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2064)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2068)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2072)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2076)) || _cmphotoDNGOPCodeWriterWriteDoubles(&cf, v5 + 2080, 1u) || _cmphotoDNGOPCodeWriterWriteDoubles(&cf, v5 + 2088, 1u) || _cmphotoDNGOPCodeWriterWriteDoubles(&cf, v5 + 2096, 1u) || _cmphotoDNGOPCodeWriterWriteDoubles(&cf, v5 + 2104, 1u) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2112)))
      {
        goto LABEL_64;
      }

      BytePtr = CFDataGetBytePtr(*(v5 + 2120));
      if (v109)
      {
        v111 = BytePtr;
        v112 = cf;
        v114 = HIDWORD(v139);
        v113 = v140;
        do
        {
          if (v114)
          {
            *bytes = bswap32(*v111);
            CFDataAppendBytes(v112, bytes, 4);
            v113 += 4;
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_1();
            if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v125, v137, cf))
            {
              goto LABEL_64;
            }
          }

          ++v111;
          --v109;
        }

        while (v109);
        LODWORD(v140) = v113;
      }

      if (_cmphotoDNGOPCodeWriterEndOPCode(&cf))
      {
        goto LABEL_64;
      }
    }

    *bytes = 0;
    _cmphotoDNGOPCodeWriterCloseAndCopyData(&cf, bytes);
    if (*bytes)
    {
      v122 = CFDataGetLength(*bytes);
      CFDataGetBytePtr(*bytes);
      v123 = OUTLINED_FUNCTION_73_1();
      _ifdAddTag4(v123, 51022, 7, v122, v124);
      if (*bytes)
      {
        CFRelease(*bytes);
      }
    }
  }

  v87 = *(v5 + 2032);
  if (v87)
  {
    if (*(v5 + 2024))
    {
      v88 = CFDataGetLength(v87);
      CFDataGetBytePtr(*(v5 + 2032));
      v89 = OUTLINED_FUNCTION_73_1();
      _ifdAddTag4(v89, 52525, 7, v88, v90);
    }

    else
    {
      v91 = (*(v5 + 1964) * *(v5 + 1960) * *(v5 + 2000));
      v92 = (4 * v91);
      if (CFDataGetLength(v87) != v92)
      {
        goto LABEL_64;
      }

      Mutable = CFDataCreateMutable(0, (v92 + 64));
      *bytes = bswap32(*(v5 + 1960));
      CFDataAppendBytes(Mutable, bytes, 4);
      OUTLINED_FUNCTION_14_18(*(v5 + 1964), v125, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_24_3(*(v5 + 1968), v126, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_24_3(*(v5 + 1976), v127, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_24_3(*(v5 + 1984), v128, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_24_3(*(v5 + 1992), v129, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2000), v130, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2004), v131, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2008), v132, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2012), v133, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2016), v134, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2020), v135, v137, cf, v139, v140, v141, *bytes);
      v94 = CFDataGetBytePtr(*(v5 + 2032));
      if (v91)
      {
        v95 = v94;
        do
        {
          v96 = *v95++;
          OUTLINED_FUNCTION_14_18(v96, v136, v137, cf, v139, v140, v141, *bytes);
          --v91;
        }

        while (v91);
      }

      v97 = CFDataGetLength(Mutable);
      CFDataGetBytePtr(Mutable);
      v98 = OUTLINED_FUNCTION_73_1();
      _ifdAddTag4(v98, 52525, 7, v97, v99);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  v100 = *(v5 + 816);
  if (v100 >= 1)
  {
    _ifdAddTag4(v4, 51041, 12, v100, (v5 + 768));
  }

LABEL_64:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t _setVersionArrayFromVersionString(CFStringRef theString, uint64_t a2)
{
  if (!theString)
  {
    return 4294950741;
  }

  if (!a2)
  {
    return 4294950746;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @".");
  v4 = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings)
  {
    CFAutorelease(ArrayBySeparatingStrings);
  }

  if (CFArrayGetCount(v4) == 4)
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
      IntValue = CFStringGetIntValue(ValueAtIndex);
      if (IntValue > 9)
      {
        break;
      }

      *(a2 + v5++) = IntValue;
      if (v5 == 4)
      {
        return 0;
      }
    }
  }

  return 4294950741;
}

uint64_t _unpackArrayOfDoubles(const __CFArray *a1, unsigned int a2, char *a3, _DWORD *a4)
{
  Count = CFArrayGetCount(a1);
  if (Count <= a2)
  {
    v9 = Count;
    if (!Count)
    {
LABEL_8:
      result = 0;
      *a4 = v9;
      return result;
    }

    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      v12 = CFGetTypeID(ValueAtIndex);
      if (v12 != CFNumberGetTypeID() || !CFNumberIsFloatType(ValueAtIndex) || !CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, a3))
      {
        break;
      }

      ++v10;
      a3 += 8;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  return 4294950740;
}

uint64_t _floatArrayToRational(const __CFArray *a1, uint64_t a2, int a3)
{
  v21 = 0;
  if (!a1)
  {
    return 4294950740;
  }

  Count = CFArrayGetCount(a1);
  if (Count != a3)
  {
    return 4294950740;
  }

  if (a3 >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      IsFloatType = CFNumberIsFloatType(ValueAtIndex);
      if (!IsFloatType || !OUTLINED_FUNCTION_70_1(IsFloatType, v11, &v21))
      {
        break;
      }

      OUTLINED_FUNCTION_15_14();
      do
      {
        OUTLINED_FUNCTION_57_1();
        if (!v17 & v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = v15 < 1073700000.0;
        }
      }

      while (v18);
      v19 = (a2 + 8 * v8);
      *v19 = llroundf(v13 * v14);
      v19[1] = v12;
      if (++v8 == v7)
      {
        return 0;
      }
    }

    return 4294950740;
  }

  return 0;
}

uint64_t _readInt32Array(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 != CFArrayGetTypeID())
  {
    return 4294950740;
  }

  v7 = a1 ? CFArrayGetCount(a1) : 0;
  if (v7 != a2)
  {
    return 4294950740;
  }

  if (a2 >= 1)
  {
    v8 = 0;
    do
    {
      FigCFArrayGetInt32AtIndex();
      ++v8;
      a3 += 4;
    }

    while (a2 != v8);
  }

  return 0;
}

uint64_t _parseOutWidthAndHeightFromJpeg(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v2 = CGImageSourceCreateWithData(*(a1 + 1720), 0);
  if (!v2)
  {
    return 4294950745;
  }

  v3 = v2;
  v4 = *MEMORY[0x1E696E0A8];
  values = *MEMORY[0x1E695E4C0];
  keys[0] = v4;
  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v5)
  {
    v10 = 4294950745;
    v9 = v3;
LABEL_6:
    CFRelease(v9);
    return v10;
  }

  v6 = v5;
  v7 = OUTLINED_FUNCTION_5();
  v9 = CGImageSourceCopyPropertiesAtIndex(v7, v8, v6);
  if (v9)
  {
    *(a1 + 1728) = 0;
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    v10 = 0;
  }

  else
  {
    v10 = 4294950745;
  }

  CFRelease(v3);
  CFRelease(v6);
  if (v9)
  {
    goto LABEL_6;
  }

  return v10;
}

CFTypeRef _copyFilteredImageProperties(const __CFDictionary *a1)
{
  v35[3] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E696D9B0];
  v2 = *MEMORY[0x1E696DBF0];
  v35[0] = *MEMORY[0x1E696D9B0];
  v35[1] = v2;
  v35[2] = *MEMORY[0x1E696DE30];
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = *MEMORY[0x1E695E480];
  v5 = OUTLINED_FUNCTION_53();
  Mutable = CFDictionaryCreateMutable(v5, v6, v7, v8);
  if (!Mutable)
  {
    return 0;
  }

  theDict = Mutable;
  v10 = 0;
  key = *MEMORY[0x1E696DB48];
  v32 = v1;
  v29 = v3;
  do
  {
    v11 = v35[v10];
    Value = CFDictionaryGetValue(v3, v11);
    if (Value)
    {
      v13 = Value;
      v14 = CFGetTypeID(Value);
      if (v14 == CFDictionaryGetTypeID() && CFDictionaryGetCount(v13) >= 1)
      {
        if (CFStringCompare(v11, v1, 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = CFDictionaryContainsKey(v13, key) == 0;
        }

        v16 = FigCFEqual();
        v17 = v16;
        if (v16)
        {
          v18 = &sExifTagBlackList;
        }

        else
        {
          v18 = 0;
        }

        if (v16 || v15)
        {
          v20 = OUTLINED_FUNCTION_53();
          MutableCopy = CFDictionaryCreateMutableCopy(v20, v21, v13);
          if (v15)
          {
            v34 = 1;
            v33 = 131074;
            v23 = CFArrayCreateMutable(v4, 3, MEMORY[0x1E695E9C0]);
            for (i = 0; i != 6; i += 2)
            {
              v25 = CFNumberCreate(v4, kCFNumberShortType, &v33 + i);
              CFArrayAppendValue(v23, v25);
              if (v25)
              {
                CFRelease(v25);
              }
            }

            CFDictionaryAddValue(MutableCopy, key, v23);
            if (v23)
            {
              CFRelease(v23);
            }

            v3 = v29;
          }

          if (v17)
          {
            for (j = 0; j != 32; j += 8)
            {
              CFDictionaryRemoveValue(MutableCopy, **&v18[j]);
            }
          }

          v19 = CFRetain(MutableCopy);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }
        }

        else
        {
          v19 = CFRetain(v13);
        }

        v1 = v32;
        if (v19)
        {
          if (CFDictionaryGetCount(v19) >= 1)
          {
            CFDictionaryAddValue(theDict, v11, v19);
          }

          CFRelease(v19);
        }
      }
    }

    ++v10;
  }

  while (v10 != 3);
  if (CFDictionaryGetCount(theDict) < 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = CFRetain(theDict);
  }

  CFRelease(theDict);
  return v27;
}

uint64_t _prepareAnalogBalance(uint64_t a1)
{
  v18[3] = *MEMORY[0x1E69E9840];
  *(a1 + 2156) = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 2160) = _D0;
  if (!*(a1 + 512))
  {
    return 0;
  }

  v7 = (a1 + 472);
  v8 = (a1 + 2156);
  if (!*(a1 + 29) || *(a1 + 568))
  {
    if (*(a1 + 30))
    {
      result = 0;
      *v8 = vcvt_f32_f64(*v7);
      v10 = *(a1 + 488);
      *(a1 + 2164) = v10;
      return result;
    }

    return 0;
  }

  __asm { FMOV            V1.2D, #1.0 }

  v12 = vdivq_f64(_Q1, *v7);
  v13 = 1.0 / *(a1 + 488);
  if (!*(a1 + 30))
  {
    *v8 = vcvt_f32_f64(v12);
    v14 = v13;
    *(a1 + 2164) = v14;
  }

  v16 = v12.f64[1];
  v18[0] = [MEMORY[0x1E696AD98] numberWithDouble:*&v12.f64[0]];
  v18[1] = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v18[2] = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  result = _floatArrayToRational(v15, a1 + 516, 3);
  if (!result)
  {
    v17 = 0;
    result = _unpackArrayOfDoubles(v15, 3u, (a1 + 544), &v17);
    if (!result)
    {
      if (v17 == 3)
      {
        *(a1 + 568) = 1;
        result = _floatArrayToRational(&unk_1F194A480, a1 + 444, 3);
        if (!result)
        {
          result = _unpackArrayOfDoubles(&unk_1F194A480, 3u, v7, &v17);
          if (!result)
          {
            if (v17 == 3)
            {
              return 0;
            }

            else
            {
              return 4294950746;
            }
          }
        }
      }

      else
      {
        return 4294950746;
      }
    }
  }

  return result;
}

uint64_t _cmphotoDNGOPCodeWriterOpen(__CFData **a1)
{
  a1[1] = 0;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  *a1 = Mutable;
  if (!Mutable)
  {
    return 4294950745;
  }

  CFDataSetLength(Mutable, 4);
  return 0;
}

uint64_t _cmphotoDNGOPCodeWriterWriteDoubles(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 12))
  {
    if (a3)
    {
      OUTLINED_FUNCTION_65_1();
      Length = CFDataGetLength(*v6);
      v8 = 8 * a3;
      v9 = a3;
      CFDataIncreaseLength(*v3, 8 * a3);
      v10 = &CFDataGetMutableBytePtr(*v3)[Length];
      do
      {
        v11 = *v4++;
        CMPhotoDNGWriteDouble(v10++, 1, v11);
        --v9;
      }

      while (v9);
      *(v3 + 16) += v8;
    }

    return 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

uint64_t _cmphotoDNGOPCodeWriterWriteStandardOPCode(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  result = _cmphotoDNGOPCodeWriterStartOPCode(a1, a2, a6);
  if (!result)
  {
    if (!a3 || (result = _cmphotoDNGOPCodeWriterWrite32(a1, a3), !result))
    {
      result = _cmphotoDNGOPCodeWriterWriteDoubles(a1, a4, a5);
      if (!result)
      {
        if (a2 != 14 || (result = _cmphotoDNGOPCodeWriterWrite32(a1, a7), !result))
        {

          return _cmphotoDNGOPCodeWriterEndOPCode(a1);
        }
      }
    }
  }

  return result;
}

uint64_t _cmphotoDNGWriterIFDInsert(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 4294950745;
  }

  theData = Mutable;
  CFDataAppendBytes(*(a1 + 40), zero, 2);
  v9 = &CFDataGetMutableBytePtr(*(a1 + 40))[a4];
  Length = CFDataGetLength(*(a1 + 40));
  CMPhotoDNGWrite32(v9, Length, *(a1 + 48));
  v33 = a2;
  v11 = (a2 + a3);
  v12 = CMPhotoDNGRead16(v11, *(a1 + 48));
  v13 = CFDataGetLength(*(a1 + 40));
  *bytes = v12;
  if (*(a1 + 48) == 1)
  {
    *bytes = __rev16(v12);
  }

  CFDataAppendBytes(*(a1 + 40), bytes, 2);
  if (v12)
  {
    v14 = (v11 + 1);
    v32 = 12 * v12 + v13 + 6;
    v35 = a1;
    do
    {
      Tag = _readTag(v14, *(a1 + 48));
      v17 = Tag;
      v18 = v16;
      v19 = HIDWORD(Tag);
      v20 = WORD1(Tag);
      v21 = HIDWORD(Tag) * tiffDataTypeToSize[WORD1(Tag)];
      if (v21 >= 5)
      {
        v22 = v16;
        v18 = v32 + CFDataGetLength(theData);
        CFDataAppendBytes(theData, (v33 + v22), v21);
        if (v21)
        {
          bytes[0] = 0;
          CFDataAppendBytes(theData, bytes, 1);
        }
      }

      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v37 = v18;
      v39 = 0;
      *v38 = 0;
      CMPhotoDNGWrite16(v38, v17, v24);
      CMPhotoDNGWrite16(&v38[2], v20, v24);
      CMPhotoDNGWrite32(&v38[4], v19, v24);
      if (v21 <= 4 && ((0x2A10uLL >> v20) & 1) == 0)
      {
        if ((0xC6uLL >> v20))
        {
          __memcpy_chk();
        }

        else if (HIWORD(v17) == 8 || HIWORD(v17) == 3)
        {
          CMPhotoDNGWrite16(&v39, v18, v24);
          if (v19 == 2)
          {
            CMPhotoDNGWrite16(&v39 + 1, SHIWORD(v18), v24);
          }
        }
      }

      else
      {
        CMPhotoDNGWrite32(&v39, v18, v24);
      }

      CFDataAppendBytes(v23, v38, 12);
      v14 += 12;
      --v12;
      a1 = v35;
    }

    while (v12);
  }

  *bytes = 0;
  CFDataAppendBytes(*(a1 + 40), bytes, 4);
  v27 = CFDataGetLength(theData);
  if (v27)
  {
    v28 = v27;
    v29 = *(a1 + 40);
    BytePtr = CFDataGetBytePtr(theData);
    CFDataAppendBytes(v29, BytePtr, v28);
    CFDataAppendBytes(*(a1 + 40), zero, -v28 & 3);
  }

  CFRelease(theData);
  return 0;
}

uint64_t ___addAuxiliaryImagesToJPEGData_block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294950739;
  }

  v3 = [a2 objectForKeyedSubscript:@"ImageList"];
  if (v3)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"Auxiliary"];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 count];
        if (v7 < 1)
        {
          return 0;
        }

        v8 = (v7 & 0x7FFFFFFF) + 1;
        while (1)
        {
          v9 = [objc_msgSend(v6 objectAtIndexedSubscript:{v8 - 2), "objectForKeyedSubscript:", @"ImageHandle"}];
          if (!v9)
          {
            break;
          }

          if (([*(a1 + 32) containsObject:v9] & 1) == 0)
          {
            [v6 removeObjectAtIndex:v8 - 2];
          }

          if (--v8 <= 1)
          {
            return 0;
          }
        }
      }
    }
  }

  return 4294950739;
}

uint64_t _cmphotoDNGReaderInit(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294950746;
  }

  OUTLINED_FUNCTION_65_1();
  *v4 = 0u;
  v4[1] = 0u;
  *v2 = CFDataGetBytePtr(v5);
  Length = CFDataGetLength(v3);
  *(v2 + 8) = Length;
  if (Length < 9)
  {
    return 4294950743;
  }

  v7 = *v2;
  if (**v2 == _MergedGlobals_2)
  {
    v9 = 0;
  }

  else
  {
    if (*v7 != dword_1ED6FA2A4)
    {
      return 4294950743;
    }

    v9 = 1;
  }

  *(v2 + 26) = v9;
  v10 = CMPhotoDNGRead32(v7 + 1, v9);

  return _cmphotoDNGReaderOpenIFD(v2, v10);
}

uint64_t _readPreviewTags(uint64_t a1, CFDataRef *a2)
{
  if (*(a1 + 24))
  {
    while (1)
    {
      v4 = OUTLINED_FUNCTION_37_4();
      if (CMPhotoDNGRead16(v4, v5) == 277)
      {
        break;
      }

      OUTLINED_FUNCTION_20_10();
      if (v7)
      {
        v8 = 0;
        if (v6)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }
    }

    v9 = OUTLINED_FUNCTION_37_4();
    _readTag(v9, v10);
    v8 = v11 == 3;
    if (!*(a1 + 24))
    {
      goto LABEL_18;
    }

LABEL_8:
    while (1)
    {
      v12 = OUTLINED_FUNCTION_37_4();
      if (CMPhotoDNGRead16(v12, v13) == 254)
      {
        break;
      }

      OUTLINED_FUNCTION_20_10();
      if (v7)
      {
        v15 = 0;
        if (v14)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    v16 = OUTLINED_FUNCTION_37_4();
    _readTag(v16, v17);
    v15 = v18 == 1;
    if (!*(a1 + 24))
    {
      goto LABEL_18;
    }

LABEL_14:
    while (1)
    {
      v19 = OUTLINED_FUNCTION_37_4();
      if (CMPhotoDNGRead16(v19, v20) == 273)
      {
        break;
      }

      OUTLINED_FUNCTION_20_10();
      if (v7)
      {
        v22 = 0;
        LODWORD(v23) = 0;
        if (v21)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    v27 = OUTLINED_FUNCTION_37_4();
    v23 = _readTag(v27, v28) >> 32;
    v22 = v29;
    if (!*(a1 + 24))
    {
      goto LABEL_18;
    }

LABEL_22:
    while (1)
    {
      v30 = OUTLINED_FUNCTION_37_4();
      if (CMPhotoDNGRead16(v30, v31) == 279)
      {
        break;
      }

      OUTLINED_FUNCTION_20_10();
      if (v7)
      {
        v33 = 0;
        LODWORD(v34) = 0;
        if (!v32)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

    v35 = OUTLINED_FUNCTION_37_4();
    v34 = _readTag(v35, v36) >> 32;
    v33 = v37;
    if (!*(a1 + 24))
    {
      goto LABEL_33;
    }

LABEL_28:
    v38 = 0;
    v39 = *(a1 + 16);
    while (CMPhotoDNGRead16(v39, *(a1 + 26)) != 259)
    {
      v39 += 6;
      if (++v38 >= *(a1 + 24))
      {
        goto LABEL_33;
      }
    }

    _readTag(v39, *(a1 + 26));
LABEL_33:
    v24 = 0;
    if (v23 && v34)
    {
      v41 = v23 == 1 && v34 == 1;
      if (!v41 || !v15 || !v8)
      {
        return 4294950743;
      }

      v24 = CFDataCreate(*MEMORY[0x1E695E480], (*a1 + v22), v33);
      if (v24)
      {
        goto LABEL_19;
      }

      return 4294950745;
    }
  }

  else
  {
LABEL_18:
    v24 = 0;
  }

LABEL_19:
  v25 = 0;
  *a2 = v24;
  return v25;
}

uint64_t _readRawImageTags(unint64_t a1, __CFDictionary *a2, char a3, int a4, int *a5, int *a6, int *a7, int *a8, _DWORD *a9, _DWORD *a10, _BYTE *a11, int *a12, _DWORD *a13, _DWORD *a14, void *a15, uint64_t *a16)
{
  if (!a1)
  {
    return 4294950746;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_12;
  }

  LODWORD(v17) = a4;
  while (1)
  {
    v19 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v19, v20) == 254)
    {
      break;
    }

    OUTLINED_FUNCTION_54_1();
    if (!v21)
    {
      goto LABEL_12;
    }
  }

  v22 = OUTLINED_FUNCTION_16_8();
  _readTag(v22, v23);
  if ((v24 | 0x10) != 0x10)
  {
    return 4294950738;
  }

  v25 = v24 != 16;
  if (!*(a1 + 24))
  {
LABEL_12:
    *a14 = 0;
    return 4294950738;
  }

  v26 = *(a1 + 16);
  while (1)
  {
    v27 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v27, v28) == 262)
    {
      break;
    }

    OUTLINED_FUNCTION_54_1();
    if (!v29)
    {
      goto LABEL_12;
    }
  }

  v31 = OUTLINED_FUNCTION_16_8();
  _readTag(v31, v32);
  *a14 = v33;
  v34 = v33 == 34892 || v33 == 32803;
  if (!v34)
  {
    return 4294950738;
  }

  v35 = MEMORY[0x1E696D7B0];
  v36 = MEMORY[0x1E696D878];
  if (v33 == 34892)
  {
    if (!*(a1 + 24))
    {
      return 4294950743;
    }

    v253 = a15;
    v39 = 0;
    v40 = *(a1 + 16);
    while (1)
    {
      v41 = OUTLINED_FUNCTION_16_8();
      if (CMPhotoDNGRead16(v41, v42) == 258)
      {
        break;
      }

      v40 += 12;
      ++v39;
      result = 4294950743;
      if (v39 >= *(a1 + 24))
      {
        return result;
      }
    }

    v48 = OUTLINED_FUNCTION_16_8();
    _readTag(v48, v49);
    OUTLINED_FUNCTION_74_1();
    if (v52 * tiffDataTypeToSize[v51] < 5)
    {
      v53 = (v40 + 8);
    }

    else
    {
      v53 = (*a1 + v50);
    }

    v54 = CMPhotoDNGRead16(v53, *(a1 + 26));
    if (v17)
    {
      v55 = 1815491698;
    }

    else
    {
      v55 = 1647589490;
    }

    if (v54 == 8)
    {
      v26 = 1111970369;
    }

    else
    {
      v26 = v55;
    }

    if (!_copyShortsToDictAsArray(a1, 258, @"BitsPerSample", a2))
    {
      return 4294950743;
    }

    if (!_copyShortsOrLongOrRationalToDictAsArray(a1, *v35, a2) && v25)
    {
      return 4294950743;
    }

    if (!_copyShortsToDictAsArray(a1, 50717, *v36, a2) && v25)
    {
      return 4294950743;
    }

    HIDWORD(v251) = v26;
    v252 = a16;
    _copyIntegerTagToDict(a1, 51110, *MEMORY[0x1E696D7F0], a2);
    _copyStringTagToDict(a1, 50936, *MEMORY[0x1E696D848], a2);
    _copyRationalTagToDict(a1, 50935);
    LODWORD(v251) = 0;
    goto LABEL_59;
  }

  if (v33 != 32803)
  {
    v252 = a16;
    v253 = a15;
    v251 = 0;
    goto LABEL_59;
  }

  if (!*(a1 + 24))
  {
    return 4294950743;
  }

  v253 = a15;
  OUTLINED_FUNCTION_63_1();
  while (1)
  {
    v37 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v37, v38) == 258)
    {
      break;
    }

    result = OUTLINED_FUNCTION_9_23();
    if (v179)
    {
      return result;
    }
  }

  v43 = OUTLINED_FUNCTION_16_8();
  _readTag(v43, v44);
  if (v45 != 16 || !*(a1 + 24))
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_63_1();
  while (1)
  {
    v46 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v46, v47) == 277)
    {
      break;
    }

    result = OUTLINED_FUNCTION_9_23();
    if (v179)
    {
      return result;
    }
  }

  v60 = OUTLINED_FUNCTION_16_8();
  _readTag(v60, v61);
  if (v62 != 1 || !*(a1 + 24))
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_63_1();
  while (1)
  {
    v63 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v63, v64) == 284)
    {
      break;
    }

    result = OUTLINED_FUNCTION_9_23();
    if (v179)
    {
      return result;
    }
  }

  v116 = OUTLINED_FUNCTION_16_8();
  _readTag(v116, v117);
  if (v118 != 1 || !*(a1 + 24))
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_63_1();
  while (1)
  {
    v119 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v119, v120) == 33422)
    {
      break;
    }

    result = OUTLINED_FUNCTION_9_23();
    if (v179)
    {
      return result;
    }
  }

  v136 = OUTLINED_FUNCTION_16_8();
  _readTag(v136, v137);
  OUTLINED_FUNCTION_74_1();
  if (v140 * tiffDataTypeToSize[v141] < 5)
  {
    v142 = (v26 + 8);
  }

  else
  {
    v142 = (*a1 + v139);
  }

  v154 = v140 == 16 || v140 == 4;
  if (!v154 || (v138 & 0xFFFF0000) != 0x10000)
  {
    return 4294950743;
  }

  v155 = v140 == 16 || v140 == 4;
  result = 4294950743;
  if (!v155 || !v142)
  {
    return result;
  }

  if (v140 == 4)
  {
    if (*v142 == 65794)
    {
      v233 = 1650943796;
    }

    else if (*v142 == 33620224)
    {
      v233 = 1919379252;
    }

    else
    {
      HIDWORD(v251) = 1734505012;
      if (*v142 != 16908289)
      {
        if (*v142 != 16777729)
        {
          return result;
        }

        LODWORD(v251) = 0;
        goto LABEL_317;
      }

      v233 = 1735549492;
    }

    LODWORD(v251) = 0;
    HIDWORD(v251) = v233;
  }

  else
  {
    if (v140 != 16)
    {
      return result;
    }

    HIDWORD(v251) = 1651519798;
    if (!memcmp(v142, &kCFAPatternQuadBGGR, 0x10uLL))
    {
      v156 = 5;
    }

    else if (!memcmp(v142, &kCFAPatternQuadRGGB, 0x10uLL))
    {
      v156 = 8;
    }

    else
    {
      if (memcmp(v142, &kCFAPatternQuadGRBG, 0x10uLL))
      {
        return 4294950743;
      }

      v156 = 6;
    }

    LODWORD(v251) = v156;
  }

LABEL_317:
  if (!*(a1 + 24))
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_63_1();
  LODWORD(v17) = 50714;
  while (1)
  {
    v234 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v234, v235) == 50714)
    {
      break;
    }

    result = OUTLINED_FUNCTION_9_23();
    if (v179)
    {
      return result;
    }
  }

  v252 = a16;
  v236 = OUTLINED_FUNCTION_16_8();
  Tag = _readTag(v236, v237);
  if (WORD1(Tag) == 5)
  {
    if (!_copyShortsOrLongOrRationalToDictAsArray(a1, *v35, a2))
    {
      return 4294950743;
    }
  }

  else
  {
    if (WORD1(Tag) - 5 < 0xFFFFFFFE || (Tag & 0xFFFFFFFF00000000) != 0x100000000)
    {
      return 4294950743;
    }

    FigCFDictionarySetInt();
  }

  if (!*(a1 + 24))
  {
    return 4294950743;
  }

  v26 = *(a1 + 16);
  while (1)
  {
    v240 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v240, v241) == 50717)
    {
      break;
    }

    OUTLINED_FUNCTION_54_1();
    result = 4294950743;
    if (!v242)
    {
      return result;
    }
  }

  v243 = OUTLINED_FUNCTION_16_8();
  v245 = _readTag(v243, v244);
  if (HIDWORD(v245) != 1 || WORD1(v245) - 5 < 0xFFFFFFFE)
  {
    return 4294950743;
  }

  FigCFDictionarySetInt();
LABEL_59:
  if (*(a1 + 24))
  {
    OUTLINED_FUNCTION_32_2();
    while (1)
    {
      v58 = OUTLINED_FUNCTION_16_8();
      if (CMPhotoDNGRead16(v58, v59) == 51022)
      {
        break;
      }

      OUTLINED_FUNCTION_4_26();
      if (v179)
      {
        goto LABEL_77;
      }
    }

    v65 = OUTLINED_FUNCTION_16_8();
    _readTag(v65, v66);
    OUTLINED_FUNCTION_74_1();
    if (v69 * tiffDataTypeToSize[v68] < 5)
    {
      v70 = (v26 + 8);
    }

    else
    {
      v70 = (*a1 + v67);
    }

    v71 = CMPhotoDNGRead32(v70, 1);
    if (v71)
    {
      v94 = v71;
      v95 = 0;
      v96 = v70 + 1;
      v259 = *MEMORY[0x1E696D810];
      v256 = *MEMORY[0x1E696D868];
      v254 = *MEMORY[0x1E696D870];
      v97 = *MEMORY[0x1E695E480];
      while (2)
      {
        LODWORD(v36) = CMPhotoDNGRead32(v96, 1);
        v98 = CMPhotoDNGRead32(v96 + 3, 1);
        v99 = v98;
        v17 = v96 + 4;
        switch(v36)
        {
          case 1:
            v100 = OUTLINED_FUNCTION_52_1();
            v102 = 6 * CMPhotoDNGRead32(v100, v101) + 2;
            OUTLINED_FUNCTION_90_1();
            if (v34)
            {
              v17 = v96 + 5;
              v103 = v254;
              goto LABEL_111;
            }

            break;
          case 2:
            v106 = OUTLINED_FUNCTION_52_1();
            v102 = (4 * CMPhotoDNGRead32(v106, v107)) | 2;
            OUTLINED_FUNCTION_90_1();
            if (v34)
            {
              v17 = v96 + 5;
              v103 = v256;
              goto LABEL_111;
            }

            break;
          case 3:
            if (v98 == 56)
            {
              v102 = 7;
              v103 = v259;
              goto LABEL_111;
            }

            break;
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
            break;
          case 9:
            v164 = OUTLINED_FUNCTION_52_1();
            v247 = CMPhotoDNGRead32(v164, v165);
            v248 = CMPhotoDNGRead32(v96 + 5, 1);
            v249 = CMPhotoDNGRead32(v96 + 6, 1);
            v250 = CMPhotoDNGRead32(v96 + 7, 1);
            v255 = CMPhotoDNGRead32(v96 + 8, 1);
            v258 = CMPhotoDNGRead32(v96 + 9, 1);
            v261 = CMPhotoDNGRead32(v96 + 10, 1);
            v263 = CMPhotoDNGRead32(v96 + 11, 1);
            v166 = CMPhotoDNGRead32(v96 + 12, 1);
            LODWORD(v17) = CMPhotoDNGRead32(v96 + 13, 1);
            v167 = CMPhotoDNGReadDouble(v96 + 7, 1);
            v168 = CMPhotoDNGReadDouble(v96 + 8, 1);
            v169 = CMPhotoDNGReadDouble(v96 + 9, 1);
            v170 = CMPhotoDNGReadDouble(v96 + 10, 1);
            v171 = CMPhotoDNGRead32(v96 + 22, 1);
            LODWORD(v36) = v17 * v166 * v171;
            v172 = 4 * v36;
            if (v172 + 76 == v99)
            {
              v173 = v171;
              Mutable = CFDataCreateMutable(0, v172);
              if (Mutable)
              {
                v175 = Mutable;
                if (v36)
                {
                  v176 = v96 + 23;
                  do
                  {
                    *bytes = CMPhotoDNGReadFloat(v176++, 1);
                    CFDataAppendBytes(v175, bytes, 4);
                    LODWORD(v36) = v36 - 1;
                  }

                  while (v36);
                }

                v177 = CFDictionaryCreateMutable(v97, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                CMPhotoCFDictionarySetInt32(v177, @"top", v247);
                CMPhotoCFDictionarySetInt32(v177, @"left", v248);
                CMPhotoCFDictionarySetInt32(v177, @"bottom", v249);
                CMPhotoCFDictionarySetInt32(v177, @"right", v250);
                CMPhotoCFDictionarySetInt32(v177, @"plane", v255);
                CMPhotoCFDictionarySetInt32(v177, @"planes", v258);
                CMPhotoCFDictionarySetInt32(v177, @"rowPitch", v261);
                CMPhotoCFDictionarySetInt32(v177, @"colPitch", v263);
                CMPhotoCFDictionarySetInt32(v177, @"mapsPointsV", v166);
                CMPhotoCFDictionarySetInt32(v177, @"mapsPointsH", v17);
                CMPhotoCFDictionarySetDouble(v177, @"mapsSpacingV", v167);
                CMPhotoCFDictionarySetDouble(v177, @"mapsSpacingH", v168);
                CMPhotoCFDictionarySetDouble(v177, @"mapOriginV", v169);
                CMPhotoCFDictionarySetDouble(v177, @"mapOriginH", v170);
                CMPhotoCFDictionarySetInt32(v177, @"mapPlanes", v173);
                CFDictionarySetValue(v177, @"gainData", v175);
                CFDictionarySetValue(a2, @"GainMap", v177);
                CFRelease(v175);
                if (v177)
                {
                  CFRelease(v177);
                }
              }
            }

            break;
          default:
            if (v36 == 14)
            {
              v104 = OUTLINED_FUNCTION_52_1();
              v102 = 19 * CMPhotoDNGRead32(v104, v105) + 2;
              if (8 * v102 + 8 == v99)
              {
                v17 = v96 + 5;
                v103 = @"WarpRectilinear2";
LABEL_111:
                if (v102 && v103)
                {
                  v108 = v36 == 14 ? v102 + 1 : v102;
                  v109 = CFArrayCreateMutable(v97, v108, MEMORY[0x1E695E9C0]);
                  if (v109)
                  {
                    do
                    {
                      v110 = OUTLINED_FUNCTION_52_1();
                      v112 = CMPhotoDNGReadDouble(v110, v111);
                      v17 += 2;
                      CMPhotoCFArrayAppendDouble(v109, v112);
                      --v102;
                    }

                    while (v102);
                    if (v36 == 14)
                    {
                      v113 = OUTLINED_FUNCTION_52_1();
                      v115 = CMPhotoDNGRead32(v113, v114);
                      ++v17;
                      CMPhotoCFArrayAppendInt32(v109, v115);
                    }

                    CFDictionarySetValue(a2, v103, v109);
                    CFRelease(v109);
                    ++v95;
                    v96 = v17;
                    if (v95 != v94)
                    {
                      continue;
                    }
                  }
                }
              }
            }

            break;
        }

        break;
      }
    }
  }

LABEL_77:
  _copyDoublesToDictAsArray(a1);
  _copyLongsToDictAsArray(a1, 50829, *MEMORY[0x1E696D768], a2);
  _copyLongsToDictAsArray(a1, 50720, *MEMORY[0x1E696D800], a2);
  _copyLongsToDictAsArray(a1, 50719, *MEMORY[0x1E696D7F8], a2);
  if (!*(a1 + 24))
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_32_2();
  while (1)
  {
    v72 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v72, v73) == 256)
    {
      break;
    }

    OUTLINED_FUNCTION_4_26();
    if (v179)
    {
      v75 = 0;
      goto LABEL_84;
    }
  }

  v76 = OUTLINED_FUNCTION_16_8();
  _readTag(v76, v77);
  v75 = v78;
  v74 = *(a1 + 24);
LABEL_84:
  if (!v74)
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_32_2();
  while (1)
  {
    v79 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v79, v80) == 257)
    {
      break;
    }

    OUTLINED_FUNCTION_29_5();
    result = 4294950743;
    if (v36 >= *(a1 + 24))
    {
      return result;
    }
  }

  v81 = OUTLINED_FUNCTION_16_8();
  _readTag(v81, v82);
  v84 = v83;
  v85 = v75 < 1 || v83 < 1;
  if (v85 || !*(a1 + 24))
  {
    return 4294950743;
  }

  v86 = 0;
  v87 = *(a1 + 16);
  while (1)
  {
    v88 = OUTLINED_FUNCTION_49_0();
    v90 = CMPhotoDNGRead16(v88, v89);
    if (v90 == 324)
    {
      break;
    }

    v87 += 12;
    ++v86;
    v91 = *(a1 + 24);
    if (v86 >= v91)
    {
      v92 = 0;
      LODWORD(v17) = 0;
      v93 = 0;
      goto LABEL_133;
    }
  }

  v121 = OUTLINED_FUNCTION_49_0();
  v92 = _readTag(v121, v122) >> 16;
  OUTLINED_FUNCTION_80_1();
  if (v179)
  {
    v93 = *a1 + v123;
  }

  else
  {
    v93 = v87 + 8;
  }

  v91 = *(a1 + 24);
LABEL_133:
  if (!v91)
  {
    return 4294950743;
  }

  v260 = v93;
  v262 = v84;
  v124 = 0;
  v125 = *(a1 + 16);
  while (1)
  {
    v126 = OUTLINED_FUNCTION_49_0();
    if (CMPhotoDNGRead16(v126, v127) == 325)
    {
      break;
    }

    v125 += 12;
    ++v124;
    v128 = *(a1 + 24);
    if (v124 >= v128)
    {
      v129 = 0;
      LODWORD(v130) = 0;
      v131 = 0;
LABEL_156:
      if (!v128)
      {
        return 4294950743;
      }

      v257 = v129;
      OUTLINED_FUNCTION_32_2();
      while (1)
      {
        v147 = OUTLINED_FUNCTION_16_8();
        v149 = CMPhotoDNGRead16(v147, v148);
        if (v149 == 273)
        {
          break;
        }

        OUTLINED_FUNCTION_4_26();
        if (v179)
        {
          goto LABEL_185;
        }
      }

      v151 = OUTLINED_FUNCTION_16_8();
      v92 = _readTag(v151, v152) >> 16;
      OUTLINED_FUNCTION_80_1();
      v157 = v179 ? *a1 + v153 : v90 + 8;
      v260 = v157;
      v150 = *(a1 + 24);
LABEL_185:
      if (v150)
      {
        OUTLINED_FUNCTION_32_2();
        while (1)
        {
          v158 = OUTLINED_FUNCTION_16_8();
          if (CMPhotoDNGRead16(v158, v159) == 279)
          {
            break;
          }

          OUTLINED_FUNCTION_4_26();
          if (v179)
          {
            v150 = 0;
            goto LABEL_202;
          }
        }

        v160 = OUTLINED_FUNCTION_16_8();
        v162 = _readTag(v160, v161);
        v131 = WORD1(v162);
        v130 = HIDWORD(v162);
        OUTLINED_FUNCTION_85_1();
        if (v179)
        {
          v178 = *a1 + v163;
        }

        else
        {
          v178 = v90 + 8;
        }

        v257 = v178;
        v150 = 1;
      }

LABEL_202:
      v179 = v149 == 273 && v92 - 5 >= 0xFFFFFFFE;
      if (!v179)
      {
        return 4294950743;
      }

      if ((v131 - 3) >= 2)
      {
        v150 = 0;
      }

      result = 4294950743;
      if (v17 == v130)
      {
        v146 = v252;
        if (v150)
        {
          if (v17 == 1)
          {
            if (*(a1 + 24))
            {
              OUTLINED_FUNCTION_32_2();
              while (1)
              {
                v180 = OUTLINED_FUNCTION_16_8();
                if (CMPhotoDNGRead16(v180, v181) == 278)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_26();
                if (v179)
                {
                  goto LABEL_217;
                }
              }

              v183 = OUTLINED_FUNCTION_16_8();
              _readTag(v183, v184);
            }

            else
            {
LABEL_217:
              v182 = 0;
            }

            if (v182 == v262)
            {
              v143 = 1;
              goto LABEL_221;
            }
          }

          return 4294950738;
        }
      }

      return result;
    }
  }

  v132 = OUTLINED_FUNCTION_49_0();
  v134 = _readTag(v132, v133);
  v131 = WORD1(v134);
  v130 = HIDWORD(v134);
  OUTLINED_FUNCTION_85_1();
  if (v179)
  {
    v129 = *a1 + v135;
  }

  else
  {
    v129 = v125 + 8;
  }

  v143 = v17;
  if (v90 != 324)
  {
    v128 = *(a1 + 24);
    goto LABEL_156;
  }

  if (v17 != v130 || v92 != 4 || (v131 - 3) > 1)
  {
    return 4294950743;
  }

  result = 4294950743;
  v146 = v252;
  if (v260)
  {
    v257 = v129;
    if (v129)
    {
LABEL_221:
      _copyDNGDataTagToDict(a1);
      v185 = *(a1 + 24);
      if (*(a1 + 24))
      {
        OUTLINED_FUNCTION_32_2();
        v186 = a13;
        while (1)
        {
          v187 = OUTLINED_FUNCTION_16_8();
          if (CMPhotoDNGRead16(v187, v188) == 50975)
          {
            break;
          }

          OUTLINED_FUNCTION_4_26();
          if (v179)
          {
            goto LABEL_236;
          }
        }

        v191 = OUTLINED_FUNCTION_16_8();
        _readTag(v191, v192);
        v185 = *(a1 + 24);
        if ((v193 & 0xFFFFFFFE) != 0)
        {
          if (*(a1 + 24))
          {
            OUTLINED_FUNCTION_32_2();
            while (1)
            {
              v194 = OUTLINED_FUNCTION_16_8();
              if (CMPhotoDNGRead16(v194, v195) == 50975)
              {
                break;
              }

              OUTLINED_FUNCTION_4_26();
              if (v179)
              {
                v190 = 0;
                if (v185)
                {
                  goto LABEL_237;
                }

                goto LABEL_256;
              }
            }

            v203 = OUTLINED_FUNCTION_16_8();
            _readTag(v203, v204);
            v190 = 16 * v205;
            v185 = *(a1 + 24);
            if (*(a1 + 24))
            {
              goto LABEL_237;
            }
          }

          else
          {
            v190 = 0;
          }

          goto LABEL_256;
        }

LABEL_236:
        v190 = 16;
        if (v185)
        {
LABEL_237:
          OUTLINED_FUNCTION_32_2();
          while (1)
          {
            v196 = OUTLINED_FUNCTION_16_8();
            if (CMPhotoDNGRead16(v196, v197) == 52547)
            {
              break;
            }

            OUTLINED_FUNCTION_4_26();
            if (v179)
            {
              goto LABEL_256;
            }
          }

          v198 = OUTLINED_FUNCTION_16_8();
          _readTag(v198, v199);
          v185 = *(a1 + 24);
          if ((v200 & 0xFFFFFFFE) != 0)
          {
            if (*(a1 + 24))
            {
              OUTLINED_FUNCTION_32_2();
              while (1)
              {
                v201 = OUTLINED_FUNCTION_16_8();
                if (CMPhotoDNGRead16(v201, v202) == 52547)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_26();
                if (v179)
                {
                  goto LABEL_248;
                }
              }

              v230 = OUTLINED_FUNCTION_16_8();
              _readTag(v230, v231);
              v189 = v232;
              v185 = *(a1 + 24);
            }

            else
            {
LABEL_248:
              v189 = 0;
            }

LABEL_257:
            if (v143 < 2)
            {
              v209 = v75;
              v210 = v262;
              if (!v185)
              {
LABEL_286:
                v218 = 0;
LABEL_287:
                if (a5)
                {
                  *a5 = v75;
                }

                if (a6)
                {
                  *a6 = v262;
                }

                if (a7)
                {
                  *a7 = v209;
                }

                if (a8)
                {
                  *a8 = v210;
                }

                if (a9)
                {
                  *a9 = HIDWORD(v251);
                }

                if (a10)
                {
                  *a10 = v251;
                }

                if (a11)
                {
                  *a11 = v189 | v190;
                }

                if (a12)
                {
                  *a12 = v143;
                }

                if (v186)
                {
                  *v186 = v218;
                }

                if (v253)
                {
                  *v253 = v260;
                }

                result = 0;
                if (v146)
                {
                  *v146 = v257;
                }

                return result;
              }
            }

            else
            {
              if (!v185)
              {
                return 4294950741;
              }

              OUTLINED_FUNCTION_32_2();
              while (1)
              {
                v206 = OUTLINED_FUNCTION_16_8();
                if (CMPhotoDNGRead16(v206, v207) == 322)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_26();
                if (v179)
                {
                  v209 = 0;
                  goto LABEL_272;
                }
              }

              v219 = OUTLINED_FUNCTION_16_8();
              _readTag(v219, v220);
              v209 = v221;
              v208 = *(a1 + 24);
LABEL_272:
              if (!v208)
              {
                return 4294950741;
              }

              v222 = 0;
              v223 = *(a1 + 16);
              while (1)
              {
                v224 = OUTLINED_FUNCTION_49_0();
                if (CMPhotoDNGRead16(v224, v225) == 323)
                {
                  break;
                }

                v223 += 12;
                ++v222;
                result = 4294950741;
                if (v222 >= *(a1 + 24))
                {
                  return result;
                }
              }

              v226 = OUTLINED_FUNCTION_49_0();
              _readTag(v226, v227);
              result = 4294950741;
              if (!v209)
              {
                return result;
              }

              v210 = v228;
              if (!v228)
              {
                return result;
              }

              if (v209 > v75 || v228 > v262)
              {
                return 4294950743;
              }

              if (!*(a1 + 24))
              {
                goto LABEL_286;
              }
            }

            v264 = v210;
            v211 = v209;
            v212 = v146;
            v213 = v190;
            v214 = v143;
            v215 = v186;
            v216 = 0;
            v217 = *(a1 + 16);
            while (CMPhotoDNGRead16(v217, *(a1 + 26)) != 259)
            {
              v217 += 6;
              if (++v216 >= *(a1 + 24))
              {
                v218 = 0;
                goto LABEL_270;
              }
            }

            _readTag(v217, *(a1 + 26));
LABEL_270:
            v186 = v215;
            v143 = v214;
            v190 = v213;
            v146 = v212;
            v209 = v211;
            v210 = v264;
            goto LABEL_287;
          }
        }

LABEL_256:
        v189 = 1;
        goto LABEL_257;
      }

      v189 = 1;
      v190 = 16;
      v186 = a13;
      goto LABEL_257;
    }
  }

  return result;
}

uint64_t _cmphotoDNGReaderOpenIFD(uint64_t a1, unsigned int a2)
{
  if (a2 < 8)
  {
    return 4294950743;
  }

  v4 = *(a1 + 8);
  v5 = v4 - a2;
  if (v4 <= a2)
  {
    return 4294950743;
  }

  if (v5 < 6)
  {
    return 4294950743;
  }

  v6 = CMPhotoDNGRead16((*a1 + a2), *(a1 + 26));
  if (v5 < 12 * v6 + 6)
  {
    return 4294950743;
  }

  v7 = v6;
  result = 0;
  *(a1 + 24) = v7;
  *(a1 + 16) = *a1 + a2 + 2;
  return result;
}

void _copyVersionToDictAsString(uint64_t a1)
{
  if (*(a1 + 24))
  {
    OUTLINED_FUNCTION_51_1();
    while (1)
    {
      v4 = OUTLINED_FUNCTION_81_1();
      if (CMPhotoDNGRead16(v4, v5) == v3)
      {
        break;
      }

      v2 += 12;
      OUTLINED_FUNCTION_58_1();
      if (v6)
      {
        return;
      }
    }

    v7 = OUTLINED_FUNCTION_81_1();
    _readTag(v7, v8);
    OUTLINED_FUNCTION_74_1();
    if (v11 * tiffDataTypeToSize[v12] < 5)
    {
      v13 = (v2 + 8);
    }

    else
    {
      v13 = (*v1 + v10);
    }

    if ((v9 & 0xFFFF0000) == 0x10000 && v11 == 4)
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (Mutable)
      {
        v16 = Mutable;
        v33 = CMPhotoDNGRead8(v13);
        v17 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v17, v18, @"%d", v33);
        v19 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v19, v20, @".", 0);
        v34 = CMPhotoDNGRead8(v13 + 1);
        v21 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v21, v22, @"%d", v34);
        v23 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v23, v24, @".", 0);
        v35 = CMPhotoDNGRead8(v13 + 2);
        v25 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v25, v26, @"%d", v35);
        v27 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v27, v28, @".", 0);
        v36 = CMPhotoDNGRead8(v13 + 3);
        v29 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v29, v30, @"%d", v36);
        v31 = OUTLINED_FUNCTION_10_1();
        CFDictionarySetValue(v31, v32, v16);

        CFRelease(v16);
      }
    }
  }
}

uint64_t _copyRationalTagToDict(uint64_t a1, int a2)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  for (i = *(a1 + 16); ; i += 12)
  {
    v5 = OUTLINED_FUNCTION_43_0();
    if (CMPhotoDNGRead16(v5, v6) == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_58_1();
    if (v7)
    {
      return 0;
    }
  }

  v8 = OUTLINED_FUNCTION_43_0();
  Tag = _readTag(v8, v9);
  v11 = WORD1(Tag);
  v12 = HIDWORD(Tag);
  OUTLINED_FUNCTION_85_1();
  v14 = v7 ? *a1 + v13 : i + 8;
  v15 = v11 == 10 || v11 == 5;
  if (!v15 || !v12)
  {
    return 0;
  }

  if (v12 == 1)
  {
    v16 = OUTLINED_FUNCTION_43_0();
    CMPhotoDNGReadRational(v16, v17);
    OUTLINED_FUNCTION_10_1();
    FigCFDictionarySetDouble();
    return 1;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v12, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v19 = Mutable;
  if (v12)
  {
    while (1)
    {
      v20 = OUTLINED_FUNCTION_43_0();
      CMPhotoDNGReadRational(v20, v21);
      if (FigCFArrayAppendDouble())
      {
        break;
      }

      v14 += 8;
      LODWORD(v12) = v12 - 1;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v25 = 0;
  }

  else
  {
LABEL_22:
    v22 = OUTLINED_FUNCTION_10_1();
    CFDictionarySetValue(v22, v23, v19);
    v25 = 1;
  }

  CFRelease(v19);
  return v25;
}

void _copyDNGDataTagToDict(uint64_t a1)
{
  if (*(a1 + 24))
  {
    OUTLINED_FUNCTION_51_1();
    while (1)
    {
      v4 = OUTLINED_FUNCTION_81_1();
      if (CMPhotoDNGRead16(v4, v5) == v3)
      {
        break;
      }

      v2 += 12;
      OUTLINED_FUNCTION_58_1();
      if (v6)
      {
        return;
      }
    }

    v7 = OUTLINED_FUNCTION_81_1();
    Tag = _readTag(v7, v8);
    v11 = HIDWORD(Tag);
    if (HIDWORD(Tag) * tiffDataTypeToSize[WORD1(Tag)] < 5)
    {
      v12 = (v2 + 8);
    }

    else
    {
      v12 = (*v1 + v10);
    }

    if (v11)
    {
      v13 = CFDataCreate(*MEMORY[0x1E695E480], v12, v11);
      if (v13)
      {
        v14 = v13;
        v15 = OUTLINED_FUNCTION_10_1();
        CFDictionarySetValue(v15, v16, v14);

        CFRelease(v14);
      }
    }
  }
}

void _copyDoublesToDictAsArray(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = 0;
    for (i = *(a1 + 16); ; i += 12)
    {
      v4 = OUTLINED_FUNCTION_43_0();
      if (CMPhotoDNGRead16(v4, v5) == 51041)
      {
        break;
      }

      if (++v2 >= *(a1 + 24))
      {
        return;
      }
    }

    v6 = OUTLINED_FUNCTION_43_0();
    v8 = _readTag(v6, v7) >> 32;
    OUTLINED_FUNCTION_85_1();
    if (v11)
    {
      v12 = *a1 + v10;
    }

    else
    {
      v12 = i + 8;
    }

    if ((v9 & 0xFFFF0000) == 0xC0000)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v8, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v14 = Mutable;
        if (v8)
        {
          while (1)
          {
            v15 = OUTLINED_FUNCTION_43_0();
            v17 = CMPhotoDNGReadDouble(v15, v16);
            if (CMPhotoCFArrayAppendDouble(v14, v17))
            {
              break;
            }

            v12 += 8;
            LODWORD(v8) = v8 - 1;
            if (!v8)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          v18 = OUTLINED_FUNCTION_10_1();
          CFDictionarySetValue(v18, v19, v14);
        }

        CFRelease(v14);
      }
    }
  }
}

uint64_t CMPhotoDNGCompressorCreateFromSourceDNGWithModificationHandler_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = result;
  return result;
}

uint64_t _cmphotoDNGWriterIFDEnd_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _cmphotoDNGWriterIFDGetTagDataOffset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _applyLossyJPEGPerceptualCurve_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _applyLossyJPEGPerceptualCurve_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _cmphotoDNGOPCodeWriterStartOPCode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _cmphotoDNGOPCodeWriterWrite32_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _cmphotoDNGOPCodeWriterEndOPCode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DicomEstimateImagePropertiesSize(objc_object *a1, objc_object **a2)
{
  if (a1)
  {
    a1 = _estimateObjectSize(a1);
  }

  if (a2)
  {
    *a2 = a1;
  }

  return 0;
}

void DicomMergeImageComponents_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v5 = *(a3 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t CreateThreadContext(int a1, uint64_t a2, _DWORD *a3)
{
  if (a1 <= 8)
  {
    *a3 = a1;
    a3[1] = 4 * a2 * HIDWORD(a2) / a1;
    operator new[]();
  }

  return 4294951896;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CMVideoFormatDescriptionGetCleanAperture(CMVideoFormatDescriptionRef videoDesc, Boolean originIsAtTopLeft)
{
  MEMORY[0x1EEDBBE38](videoDesc, originIsAtTopLeft);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E10]();
}

{
  return MEMORY[0x1EEE63E18]();
}

{
  return MEMORY[0x1EEE63E20]();
}

{
  return MEMORY[0x1EEE63E28]();
}

{
  return MEMORY[0x1EEE63E38]();
}

{
  return MEMORY[0x1EEE63E40]();
}

{
  return MEMORY[0x1EEE63E48]();
}

{
  return MEMORY[0x1EEE63E50]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA8]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE0]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63EF8]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x1EEE644C8](retstr, __val);
}

{
  return MEMORY[0x1EEE644D8](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}