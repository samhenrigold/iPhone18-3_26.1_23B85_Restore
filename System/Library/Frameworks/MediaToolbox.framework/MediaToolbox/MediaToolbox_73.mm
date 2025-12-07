void *webVTTCleanStyleMatchQueue(void *result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      result = *v1;
      if (!*v1)
      {
        break;
      }

      v2 = *result;
      v3 = result[1];
      if (*result)
      {
        v4 = *result;
      }

      else
      {
        v4 = v1;
      }

      v4[1] = v3;
      *v3 = v2;
      free(result);
    }
  }

  return result;
}

uint64_t webVTTProcessHeaderLineForMetadata(uint64_t a1, CFDictionaryRef *a2, char *__big, unint64_t a4, unint64_t a5)
{
  v5 = a4 - a5;
  if (a4 <= a5)
  {
    return 0;
  }

  v8 = a1;
  if (strnstr(__big, "-->", a4 - a5))
  {
    return 0;
  }

  v11 = memchr(__big, 58, v5);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v9 = 0;
  if (v11 == __big)
  {
    return v9;
  }

  v13 = (&__big[v5] - v11);
  if (v13 < 2)
  {
    return v9;
  }

  if (!matchStringInBufferWithSpace("Region:", __big, v11 - __big + 1, 1, 0))
  {
    return 0;
  }

  alloc = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    webVTTProcessHeaderLineForMetadata_cold_6(&valuePtr);
    return valuePtr;
  }

  v15 = Mutable;
  v16 = (v13 - 1);
  v17 = (v12 + 1);
  v53 = 0;
  v54 = 0;
  if (!webVTTFindNextCueSetting((v12 + 1), (v13 - 1), 0, &v53, &v54))
  {
LABEL_50:
    v9 = 0;
    goto LABEL_51;
  }

  v18 = v15;
  v9 = 0;
  v49 = 0;
  key = *MEMORY[0x1E6960AF8];
  v47 = *MEMORY[0x1E6960B20];
  v46 = *MEMORY[0x1E6960B00];
  v45 = *MEMORY[0x1E6960B08];
  v44 = *MEMORY[0x1E6960B18];
  v42 = *MEMORY[0x1E6960B28];
  v43 = *MEMORY[0x1E6960B10];
  do
  {
    v52 = 0;
    v19 = v53;
    v20 = v54;
    v21 = v54 - 3;
    if (v54 < 3)
    {
      goto LABEL_30;
    }

    v22 = v17 + v53;
    if (matchStringInBufferWithSpace("id=", (v17 + v53), v54, 0, 0))
    {
      v23 = CFStringCreateWithBytes(alloc, (v22 + 3), v21, 0x8000100u, 0);
      if (v23)
      {
        v24 = v23;
        CFDictionaryAddValue(v18, key, v23);
        CFRelease(v24);
        v49 = 1;
        goto LABEL_30;
      }

      webVTTProcessHeaderLineForMetadata_cold_1(&valuePtr);
      goto LABEL_53;
    }

    if (matchStringInBufferWithSpace("width=", (v17 + v19), v20, 0, 0))
    {
      valuePtr = 0;
      webVTTReadFloatingPointNumberOrPercent((v22 + 6), v20 - 6, &v52, &valuePtr);
      v9 = v25;
      if (v25)
      {
        v26 = 1;
      }

      else
      {
        v26 = v52 == 0;
      }

      if (!v26)
      {
        v27 = CFNumberCreate(alloc, kCFNumberDoubleType, &valuePtr);
        if (!v27)
        {
          webVTTProcessHeaderLineForMetadata_cold_2(&valuePtr, &v55);
          v9 = v55;
LABEL_54:
          v15 = v18;
          if (!v9)
          {
            goto LABEL_44;
          }

          goto LABEL_51;
        }

        v28 = v27;
        v29 = v18;
        v30 = v47;
        goto LABEL_28;
      }
    }

    else if (matchStringInBufferWithSpace("lines=", (v17 + v19), v20, 0, 0))
    {
      v55 = 0;
      webVTTReadNumberOrPercent((v22 + 6), v20 - 6, &v52, &v55);
      v9 = v31;
      if (!v31 && !v52)
      {
        v32 = CFNumberCreate(alloc, kCFNumberIntType, &v55);
        if (!v32)
        {
          webVTTProcessHeaderLineForMetadata_cold_3(&v55, &valuePtr);
LABEL_53:
          v9 = valuePtr;
          goto LABEL_54;
        }

        v28 = v32;
        v29 = v18;
        v30 = v46;
LABEL_28:
        CFDictionaryAddValue(v29, v30, v28);
        v33 = v28;
LABEL_29:
        CFRelease(v33);
      }
    }

    else if (matchStringInBufferWithSpace("regionanchor=", (v17 + v19), v20, 0, 0))
    {
      valuePtr = 0;
      v9 = webVTTReadPercentageXandY((v22 + 13), v20 - 13, &valuePtr);
      if (!v9)
      {
        v34 = valuePtr;
        v35 = v18;
        v36 = v45;
LABEL_38:
        CFDictionaryAddValue(v35, v36, v34);
        v33 = valuePtr;
        goto LABEL_29;
      }
    }

    else if (matchStringInBufferWithSpace("viewportanchor=", (v17 + v19), v20, 0, 0))
    {
      valuePtr = 0;
      v9 = webVTTReadPercentageXandY((v22 + 15), v20 - 15, &valuePtr);
      if (!v9)
      {
        v34 = valuePtr;
        v35 = v18;
        v36 = v44;
        goto LABEL_38;
      }
    }

    else if (matchStringInBufferWithSpace("scroll=", (v17 + v19), v20, 0, 0) && matchStringInBufferWithSpace("up", (v22 + 7), v20 - 7, 0, 0))
    {
      CFDictionaryAddValue(v18, v43, v42);
    }

LABEL_30:
    v53 = v20 + v19;
  }

  while (webVTTFindNextCueSetting(v17, v16, v20 + v19, &v53, &v54));
  v15 = v18;
  if (v49 && !v9)
  {
LABEL_44:
    Value = CFDictionaryGetValue(v15, key);
    if (!Value)
    {
      goto LABEL_50;
    }

    v38 = Value;
    v9 = webVTTInitMetadataDictionaryIfNecessary(v8, a2);
    if (*a2)
    {
      v39 = *MEMORY[0x1E6960A90];
      v40 = CFDictionaryGetValue(*a2, *MEMORY[0x1E6960A90]);
      if (v40)
      {
LABEL_49:
        CFDictionaryAddValue(v40, v38, v15);
        goto LABEL_51;
      }

      v41 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v41)
      {
        v40 = v41;
        CFDictionaryAddValue(*a2, v39, v41);
        goto LABEL_49;
      }

      webVTTProcessHeaderLineForMetadata_cold_4(&v54);
    }

    else
    {
      webVTTProcessHeaderLineForMetadata_cold_5(&v54);
    }

    v9 = v54;
  }

LABEL_51:
  CFRelease(v15);
  return v9;
}

uint64_t webVTTInitMetadataDictionaryIfNecessary(int a1, CFMutableDictionaryRef *a2)
{
  if (*a2)
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v7 = *MEMORY[0x1E695E480];
  *a2 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1)
  {
    v8 = CFUUIDCreate(v7);
    if (!v8)
    {
      webVTTInitMetadataDictionaryIfNecessary_cold_2(&v13);
      return v13;
    }

    v9 = v8;
    v10 = CFUUIDCreateString(v7, v8);
    if (!v10)
    {
      webVTTInitMetadataDictionaryIfNecessary_cold_1();
      return v12;
    }

    v11 = v10;
    CFDictionaryAddValue(*a2, *MEMORY[0x1E6960A98], v10);
    CFRelease(v9);
    CFRelease(v11);
  }

  return 0;
}

double webVTTReadNumberOrPercent(unsigned __int8 *a1, uint64_t a2, char *a3, int *a4)
{
  v5 = *a1;
  v6 = v5 == 45;
  v7 = a2 - v6;
  if (a2 == v6)
  {
    v8 = 0;
LABEL_9:
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v8 = 0;
    if (v5 == 45)
    {
      v9 = a1 + 1;
    }

    else
    {
      v9 = a1;
    }

    while (1)
    {
      v10 = *v9;
      if ((v10 - 48) > 9)
      {
        break;
      }

      v8 = v10 - 48 + 10 * v8;
      ++v9;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    if (*v9 != 37)
    {
      goto LABEL_20;
    }

    v11 = v7 != 1;
    LODWORD(v7) = 1;
    v12 = 1;
  }

  if (v5 != 45)
  {
    LODWORD(v7) = 0;
  }

  if (!v11 && !v7)
  {
    if (v5 == 45)
    {
      v13 = -v8;
    }

    else
    {
      v13 = v8;
    }

    *a4 = v13;
    *a3 = v12;
    return result;
  }

LABEL_20:
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951286, "<WebVTTSamples>", 3426, v4);
}

uint64_t webVTTReadPercentageXandY(char *a1, size_t __n, CFDictionaryRef *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  keys = 0;
  v24 = 0;
  values = 0;
  cf = 0;
  v6 = memchr(a1, 44, __n);
  if (!v6)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v18);
    goto LABEL_11;
  }

  v7 = v6;
  v18 = 0;
  valuePtr = 0.0;
  v17 = 0;
  webVTTReadFloatingPointNumberOrPercent(a1, v6 - a1, &v17, &valuePtr);
  if (v8)
  {
    goto LABEL_11;
  }

  if (!v17)
  {
    goto LABEL_18;
  }

  v9 = (&a1[__n] - v7);
  if (v9 < 2)
  {
    goto LABEL_18;
  }

  webVTTReadFloatingPointNumberOrPercent(v7 + 1, (v9 - 1), &v17, &v18);
  if (v8)
  {
LABEL_11:
    v13 = v8;
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (!v17)
  {
LABEL_18:
    webVTTReadPercentageXandY_cold_1();
    v13 = v20;
    goto LABEL_12;
  }

  v10 = *MEMORY[0x1E6960AE8];
  keys = *MEMORY[0x1E6960AE0];
  v24 = v10;
  v11 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  cf = CFNumberCreate(v11, kCFNumberDoubleType, &v18);
  v12 = CFDictionaryCreate(v11, &keys, &values, 2, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if (values)
  {
    CFRelease(values);
  }

  v13 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a3)
  {
    *a3 = v12;
  }

  return v13;
}

BOOL OUTLINED_FUNCTION_3_149(const char *a1)
{

  return matchStringInBufferWithSpace(a1, v1, v2, 0, 0);
}

BOOL OUTLINED_FUNCTION_12_69(const char *a1, const char *a2, size_t a3)
{

  return matchStringInBufferWithSpace(a1, a2, a3, 0, 0);
}

BOOL OUTLINED_FUNCTION_13_55(const char *a1, const char *a2, size_t a3)
{

  return matchStringInBufferWithSpace(a1, a2, a3, 0, 1);
}

CFNumberRef OUTLINED_FUNCTION_16_53(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CFAllocatorRef allocator, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);

  return CFNumberCreate(allocator, kCFNumberDoubleType, va);
}

uint64_t octtextrp_CreateRenderPipelineCommon(int a1, const opaqueCMFormatDescription *a2, const __CFDictionary *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  if (a4)
  {
    FigRenderPipelineGetClassID();
    v10 = CMDerivedObjectCreate();
    if (v10)
    {
      v13 = v10;
      goto LABEL_18;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 120) = CFRetain(a4);
    *(DerivedStorage + 27) = 0;
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    *(DerivedStorage + 27) = CFPreferenceNumberWithDefault;
    *(DerivedStorage + 4) = a1;
    if (a1 == 1668047728)
    {
      v22 = *MEMORY[0x1E6960CC0];
      v23 = *(MEMORY[0x1E6960CC0] + 16);
      v13 = FigCreateClosedCaptionRenderPipeline(a2, octtextrp_closedCaptionsRenderCallback, cf, 0, 0, &v22, a3, (DerivedStorage + 8));
    }

    else
    {
      v22 = *MEMORY[0x1E6960CC0];
      v23 = *(MEMORY[0x1E6960CC0] + 16);
      if (CFPreferenceNumberWithDefault)
      {
        v14 = FigCreateSubtitleRenderPipeline(a2, octtextrp_subtitleRenderCallback, cf, 0, 0, 0, 0, 0, &v22, a3, (DerivedStorage + 8));
      }

      else
      {
        v14 = FigCreateCaptionRenderPipeline(a2, octtextrp_captionRenderCallback, cf, 0, 0, 0, 0, 0, &v22, a3, (DerivedStorage + 8));
      }

      v13 = v14;
      FigRenderPipelineGetFigBaseObject();
      v16 = v15;
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v17)
      {
        v17(v16, @"DisplayNonForcedSubtitles", *MEMORY[0x1E695E4D0]);
      }
    }

    if (v13)
    {
      goto LABEL_18;
    }

    v18 = dispatch_queue_create("com.apple.coremedia.octtextrp_serialize", 0);
    *(DerivedStorage + 16) = v18;
    if (v18)
    {
      v13 = 0;
      v19 = *MEMORY[0x1E695F060];
      *(DerivedStorage + 40) = *MEMORY[0x1E695F060];
      *(DerivedStorage + 56) = v19;
      v20 = *(MEMORY[0x1E695F050] + 16);
      *(DerivedStorage + 72) = *MEMORY[0x1E695F050];
      *(DerivedStorage + 88) = v20;
      *a5 = cf;
      return v13;
    }

    octtextrp_CreateRenderPipelineCommon_cold_1(&v22);
  }

  else
  {
    octtextrp_CreateRenderPipelineCommon_cold_2(&v22);
  }

  v13 = v22;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void octtextrp_closedCaptionsRenderCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    octtextrp_closedCaptionsRenderCallback_cold_1();
  }

  else
  {
    v9 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __octtextrp_closedCaptionsRenderCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_18_2;
    v11 = a2;
    block[4] = a5;
    block[5] = a3;
    dispatch_sync(v9, block);
  }
}

void octtextrp_subtitleRenderCallback(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v19 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __octtextrp_subtitleRenderCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_19_5;
    block[4] = a10;
    block[5] = a6;
    v21 = a8;
    v22 = a9;
    *&block[6] = a1;
    *&block[7] = a2;
    *&block[8] = a3;
    *&block[9] = a4;
    dispatch_sync(v19, block);
  }
}

void octtextrp_captionRenderCallback(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v19 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __octtextrp_captionRenderCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_20_3;
    block[4] = a10;
    block[5] = a6;
    v21 = a8;
    v22 = a9;
    *&block[6] = a1;
    *&block[7] = a2;
    *&block[8] = a3;
    *&block[9] = a4;
    dispatch_sync(v19, block);
  }
}

uint64_t figOctaviaTextRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      if (*(DerivedStorage + 8))
      {
        FigRenderPipelineGetFigBaseObject();
        if (v4)
        {
          v5 = v4;
          v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v6)
          {
            v6(v5);
          }
        }

        v7 = *(v2 + 8);
        if (v7)
        {
          CFRelease(v7);
          *(v2 + 8) = 0;
        }
      }

      v8 = *(v2 + 16);
      if (v8)
      {
        dispatch_sync(v8, &__block_literal_global_121);
        dispatch_release(*(v2 + 16));
        *(v2 + 16) = 0;
      }

      octtextrp_clearOutTextImage(*(v2 + 120), *(v2 + 4) == 1668047728);
      v9 = *(v2 + 32);
      if (v9)
      {
        CFRelease(v9);
        *(v2 + 32) = 0;
      }

      free(*(v2 + 104));
      *(v2 + 104) = 0;
      *(v2 + 112) = 0;
      v10 = *(v2 + 120);
      if (v10)
      {
        CFRelease(v10);
        *(v2 + 120) = 0;
      }
    }
  }

  return 0;
}

__CFString *figOctaviaTextRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigOctaviaTextRenderPipeline %p>", a1);
  return Mutable;
}

void figOctaviaTextRenderPipelineCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v9 = DerivedStorage, *DerivedStorage))
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 744;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< OctaviaTextRP >>>>", v12, v11);
    return;
  }

  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 747;
    goto LABEL_4;
  }

  if (CFEqual(a2, @"DisplayClosedCaptions"))
  {
    if (*(v9 + 1) != 1668047728)
    {
      return;
    }

    v13 = MEMORY[0x1E695E4D0];
    v14 = v9[24];
LABEL_15:
    if (!v14)
    {
      v13 = MEMORY[0x1E695E4C0];
    }

    *a4 = CFRetain(*v13);
    return;
  }

  if (CFEqual(a2, @"DisplayNonForcedSubtitles"))
  {
    if (*(v9 + 1) != 1935832172)
    {
      return;
    }

    v13 = MEMORY[0x1E695E4D0];
    v14 = v9[25];
    goto LABEL_15;
  }

  FigRenderPipelineGetFigBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17)
  {

    v17(v16, a2, a3, a4);
  }
}

uint64_t figOctaviaTextRenderPipelineSetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v7 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (CFEqual(a2, @"DisplayClosedCaptions"))
      {
        if (*(v7 + 1) == 1668047728)
        {
          if (a3)
          {
            TypeID = CFBooleanGetTypeID();
            if (TypeID == CFGetTypeID(a3))
            {
              Value = CFBooleanGetValue(a3);
              if (v7[24] != Value)
              {
                v12 = *(v7 + 2);
                v38[0] = MEMORY[0x1E69E9820];
                v38[1] = 0x40000000;
                v38[2] = __figOctaviaTextRenderPipelineSetProperty_block_invoke;
                v38[3] = &__block_descriptor_tmp_13_5;
                v39 = Value;
                v38[4] = v7;
                v38[5] = a1;
                v13 = v38;
LABEL_16:
                v16 = v12;
LABEL_17:
                dispatch_sync(v16, v13);
                goto LABEL_40;
              }

              goto LABEL_40;
            }
          }

          goto LABEL_38;
        }
      }

      else
      {
        if (!CFEqual(a2, @"DisplayNonForcedSubtitles"))
        {
          if (CFEqual(a2, @"ScreenSize"))
          {
            if (a3)
            {
              v19 = CFDictionaryGetTypeID();
              if (v19 == CFGetTypeID(a3))
              {
                size.origin.x = 0.0;
                size.origin.y = 0.0;
                if (CGSizeMakeWithDictionaryRepresentation(a3, &size) && (size.origin.x != *(v7 + 5) || size.origin.y != *(v7 + 6)))
                {
                  v16 = *(v7 + 2);
                  v34[0] = MEMORY[0x1E69E9820];
                  v34[1] = 0x40000000;
                  v34[2] = __figOctaviaTextRenderPipelineSetProperty_block_invoke_3;
                  v34[3] = &unk_1E74961F8;
                  origin = size.origin;
                  v34[4] = &v40;
                  v34[5] = v7;
                  v13 = v34;
                  goto LABEL_17;
                }
              }
            }
          }

          else if (CFEqual(a2, @"OriginalVideoSize"))
          {
            if (a3)
            {
              v20 = CFDictionaryGetTypeID();
              if (v20 == CFGetTypeID(a3))
              {
                size.origin.x = 0.0;
                size.origin.y = 0.0;
                if (CGSizeMakeWithDictionaryRepresentation(a3, &size) && (size.origin.x != *(v7 + 7) || size.origin.y != *(v7 + 8)))
                {
                  v16 = *(v7 + 2);
                  v32[0] = MEMORY[0x1E69E9820];
                  v32[1] = 0x40000000;
                  v32[2] = __figOctaviaTextRenderPipelineSetProperty_block_invoke_4;
                  v32[3] = &unk_1E7496220;
                  v33 = size.origin;
                  v32[4] = &v40;
                  v32[5] = v7;
                  v13 = v32;
                  goto LABEL_17;
                }
              }
            }
          }

          else
          {
            if (!CFEqual(a2, @"VideoDisplayRect"))
            {
              v23 = FigRenderPipelineSetProperty(*(v7 + 1), a2, a3);
              *(v41 + 6) = v23;
              goto LABEL_40;
            }

            if (a3)
            {
              v21 = CFDictionaryGetTypeID();
              if (v21 == CFGetTypeID(a3))
              {
                memset(&size, 0, sizeof(size));
                if (CGRectMakeWithDictionaryRepresentation(a3, &size) && !CGRectEqualToRect(size, *(v7 + 72)))
                {
                  v16 = *(v7 + 2);
                  v24 = MEMORY[0x1E69E9820];
                  v25 = 0x40000000;
                  v26 = __figOctaviaTextRenderPipelineSetProperty_block_invoke_5;
                  v27 = &unk_1E7496248;
                  v30 = size;
                  v28 = &v40;
                  v29 = v7;
                  v13 = &v24;
                  goto LABEL_17;
                }
              }
            }
          }

LABEL_38:
          v17 = v41;
          v18 = -12852;
          goto LABEL_39;
        }

        if (*(v7 + 1) == 1935832172)
        {
          if (a3)
          {
            v14 = CFBooleanGetTypeID();
            if (v14 == CFGetTypeID(a3))
            {
              v15 = CFBooleanGetValue(a3);
              if (v7[25] != v15)
              {
                v12 = *(v7 + 2);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 0x40000000;
                block[2] = __figOctaviaTextRenderPipelineSetProperty_block_invoke_2;
                block[3] = &__block_descriptor_tmp_14_8;
                v37 = v15;
                block[4] = v7;
                block[5] = a1;
                v13 = block;
                goto LABEL_16;
              }

LABEL_40:
              v9 = *(v41 + 6);
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }
      }

      v17 = v41;
      v18 = -12850;
LABEL_39:
      *(v17 + 6) = v18;
      goto LABEL_40;
    }
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
  v9 = v8;
LABEL_41:
  _Block_object_dispose(&v40, 8);
  return v9;
}

void __figOctaviaTextRenderPipelineSetProperty_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  *(v2 + 24) = v1;
  if (v1 == 1)
  {
    octtextrp_sendTextImage(*(a1 + 40), 1, 0);
  }

  else
  {
    octtextrp_clearOutTextImage(*(v2 + 120), 1);
  }
}

void __figOctaviaTextRenderPipelineSetProperty_block_invoke_2(uint64_t result, uint64_t a2)
{
  v3 = *(result + 48);
  v4 = *(result + 32);
  *(v4 + 25) = v3;
  if (v3 == 1)
  {
    __figOctaviaTextRenderPipelineSetProperty_block_invoke_2_cold_1(result);
  }

  else if (!*(v4 + 26))
  {
    v5 = *(v4 + 120);

    octtextrp_clearOutTextImage(v5, 0);
  }
}

uint64_t __figOctaviaTextRenderPipelineSetProperty_block_invoke_3(uint64_t result)
{
  *(*(result + 40) + 40) = *(result + 48);
  v1 = *(result + 40);
  v2 = *(v1 + 4);
  if (v2)
  {
    v3 = result;
    v4 = v1[5];
    v5 = v1[6];
    VTable = CMBaseObjectGetVTable();
    result = (*(*(VTable + 16) + 8))(v2, v4, v5);
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t __figOctaviaTextRenderPipelineSetProperty_block_invoke_4(uint64_t result)
{
  *(*(result + 40) + 56) = *(result + 48);
  v1 = *(result + 40);
  v2 = *(v1 + 4);
  if (v2)
  {
    v3 = result;
    v4 = v1[7];
    v5 = v1[8];
    v6 = v1[9];
    v7 = v1[10];
    v8 = v1[11];
    v9 = v1[12];
    VTable = CMBaseObjectGetVTable();
    result = (*(*(VTable + 16) + 16))(v2, v4, v5, v6, v7, v8, v9);
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t __figOctaviaTextRenderPipelineSetProperty_block_invoke_5(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  *(v1 + 88) = *(result + 64);
  *(v1 + 72) = v2;
  v3 = *(result + 40);
  v4 = *(v3 + 4);
  if (v4)
  {
    v5 = result;
    v6 = v3[7];
    v7 = v3[8];
    v8 = v3[9];
    v9 = v3[10];
    v10 = v3[11];
    v11 = v3[12];
    VTable = CMBaseObjectGetVTable();
    result = (*(*(VTable + 16) + 16))(v4, v6, v7, v8, v9, v10, v11);
    *(*(*(v5 + 32) + 8) + 24) = result;
  }

  return result;
}

void __octtextrp_closedCaptionsRenderCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = (DerivedStorage + 32);
  v5 = *(DerivedStorage + 32);
  if (!v5)
  {
    if (FigClosedCaptionsTextRasterizerCreate(*MEMORY[0x1E695E480], v6) || (v7 = *v6) == 0)
    {
      __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_5();
      return;
    }

    v8 = *(DerivedStorage + 40);
    v9 = *(DerivedStorage + 48);
    VTable = CMBaseObjectGetVTable();
    if ((*(*(VTable + 16) + 8))(v7, v8, v9))
    {
      __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_1();
      return;
    }

    v11 = *(DerivedStorage + 32);
    v12 = *(DerivedStorage + 56);
    v13 = *(DerivedStorage + 64);
    v14 = *(DerivedStorage + 72);
    v15 = *(DerivedStorage + 80);
    v16 = *(DerivedStorage + 88);
    v17 = *(DerivedStorage + 96);
    v18 = CMBaseObjectGetVTable();
    if ((*(*(v18 + 16) + 16))(v11, v12, v13, v14, v15, v16, v17))
    {
      __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_2();
      return;
    }

    v5 = *v6;
  }

  if (FigClosedCaptionsTextRasterizerSetCommand(v5, v1, v3))
  {
    __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_3();
  }

  else if (*(DerivedStorage + 24))
  {
    __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_4(v2);
  }
}

void octtextrp_rasterizeAndDisplaySubtitle(uint64_t a1, const __CFDictionary *a2, uint64_t a3, int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = (DerivedStorage + 32);
  if (!*(DerivedStorage + 32))
  {
    FigSubtitleTextRasterizerCreate(*MEMORY[0x1E695E480], v17);
    if (v18 || (v19 = *v17) == 0)
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_8();
      return;
    }

    v20 = *(DerivedStorage + 40);
    v21 = *(DerivedStorage + 48);
    VTable = CMBaseObjectGetVTable();
    if ((*(*(VTable + 16) + 8))(v19, v20, v21))
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_1();
      return;
    }

    v23 = *(DerivedStorage + 32);
    v24 = *(DerivedStorage + 56);
    v25 = *(DerivedStorage + 64);
    v26 = *(DerivedStorage + 72);
    v27 = *(DerivedStorage + 80);
    v40 = a5;
    v41 = a6;
    v28 = a8;
    v29 = a7;
    v30 = *(DerivedStorage + 88);
    v31 = *(DerivedStorage + 96);
    v32 = CMBaseObjectGetVTable();
    v33 = v30;
    a8 = v28;
    v34 = v31;
    a7 = v29;
    a5 = v40;
    a6 = v41;
    if ((*(*(v32 + 16) + 16))(v23, v24, v25, v26, v27, v33, v34))
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_2();
      return;
    }
  }

  if (a2)
  {
    *(DerivedStorage + 26) = a3;
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    if (!MutableCopy)
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_5();
      return;
    }

    v36 = MutableCopy;
    if (FigSubtitleSampleInsertInfoForRenderer(MutableCopy, a5, a6, a7, a8, 0.0, 0.0, *(DerivedStorage + 40), *(DerivedStorage + 48) * 0.15, a3, a4))
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_3();
      goto LABEL_19;
    }

    if (FigSubtitleTextRasterizerSetSubtitleSample(*v17, v36))
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_4();
      goto LABEL_19;
    }

    if (a3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*(DerivedStorage + 26))
    {
      *(DerivedStorage + 26) = 0;
      v37 = 1;
    }

    else
    {
      v37 = 0;
    }

    v38 = *v17;
    v39 = CMBaseObjectGetVTable();
    if ((*(*(v39 + 16) + 32))(v38))
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_6();
      return;
    }

    v36 = 0;
    if (v37)
    {
LABEL_22:
      octtextrp_rasterizeAndDisplaySubtitle_cold_7(a1);
      if (!v36)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  if (*(DerivedStorage + 25))
  {
    goto LABEL_22;
  }

  if (!v36)
  {
    return;
  }

LABEL_19:

  CFRelease(v36);
}

uint64_t CreateServedMutableMovieState(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (v2)
  {
    result = 0;
  }

  else
  {
    CreateServedMutableMovieState_cold_1(&v4);
    result = v4;
  }

  *a1 = v2;
  return result;
}

void DisposeServedMutableMovieState(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
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
      os_release(v4);
    }

    free(a1);
  }
}

uint64_t FigMutableMovieServerStart(uint64_t a1)
{
  if (!FigServer_IsMediaparserd())
  {
    FigServer_IsMediaplaybackd();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v2 = Mutable;
    FigCFDictionarySetInt32();
    v3 = FigXPCServerStart();
    CFRelease(v2);
  }

  else
  {
    FigMutableMovieServerStart_cold_1(&v5);
    return v5;
  }

  return v3;
}

uint64_t HandleMutableMovieDeleteTrackMessage(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, int64);
}

uint64_t HandleMutableMovieInsertMediaIntoTrackMessage(uint64_t a1, void *a2)
{
  FigXPCMessageGetCMTimeRange();
  FigXPCMessageGetCMTimeRange();
  int64 = xpc_dictionary_get_int64(a2, "TrackID");
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v5)
  {
    return 4294954514;
  }

  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  return v5(a1, int64, v8, v7);
}

uint64_t HandleMutableMovieInsertEmptySegmentMessage(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E6960CA8];
  v6 = *(MEMORY[0x1E6960CA8] + 16);
  v7 = *(MEMORY[0x1E6960CA8] + 32);
  FigXPCMessageGetCMTimeRange();
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v3)
  {
    return 4294954514;
  }

  v8[0] = v5;
  v8[1] = v6;
  v8[2] = v7;
  return v3(a1, v8);
}

uint64_t HandleMutableMovieInsertEmptyTrackSegmentMessage(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E6960CA8];
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v9 = *(MEMORY[0x1E6960CA8] + 32);
  FigXPCMessageGetCMTimeRange();
  int64 = xpc_dictionary_get_int64(a2, "TrackID");
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v5)
  {
    return 4294954514;
  }

  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  return v5(a1, int64, v10);
}

uint64_t HandleMutableMovieDeleteSegmentMessage(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E6960CA8];
  v6 = *(MEMORY[0x1E6960CA8] + 16);
  v7 = *(MEMORY[0x1E6960CA8] + 32);
  FigXPCMessageGetCMTimeRange();
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v3)
  {
    return 4294954514;
  }

  v8[0] = v5;
  v8[1] = v6;
  v8[2] = v7;
  return v3(a1, v8);
}

uint64_t HandleMutableMovieDeleteTrackSegmentMessage(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E6960CA8];
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v9 = *(MEMORY[0x1E6960CA8] + 32);
  FigXPCMessageGetCMTimeRange();
  int64 = xpc_dictionary_get_int64(a2, "TrackID");
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v5)
  {
    return 4294954514;
  }

  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  return v5(a1, int64, v10);
}

uint64_t HandleMutableMovieScaleSegmentMessage(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E6960CA8];
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v9 = *(MEMORY[0x1E6960CA8] + 32);
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  FigXPCMessageGetCMTimeRange();
  FigXPCMessageGetCMTime();
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v3)
  {
    return 4294954514;
  }

  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v10 = v5;
  v11 = v6;
  return v3(a1, v12, &v10);
}

uint64_t HandleMutableMovieScaleTrackSegmentMessage(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E6960CA8];
  v10 = *(MEMORY[0x1E6960CA8] + 16);
  v11 = *(MEMORY[0x1E6960CA8] + 32);
  v7 = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  FigXPCMessageGetCMTimeRange();
  FigXPCMessageGetCMTime();
  int64 = xpc_dictionary_get_int64(a2, "TrackID");
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v5)
  {
    return 4294954514;
  }

  v14[0] = v9;
  v14[1] = v10;
  v14[2] = v11;
  v12 = v7;
  v13 = v8;
  return v5(a1, int64, v14, &v12);
}

uint64_t HandleMutableMovieAddTrackReferenceToTrackMessage(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "FromTrackID");
  v5 = xpc_dictionary_get_int64(xdict, "ToTrackID");
  v6 = xpc_dictionary_get_int64(xdict, "TrackReferenceType");
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 184);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(a1, v6, int64, v5);
}

uint64_t HandleMutableMovieDeleteTrackReferenceToTrackMessage(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "FromTrackID");
  v5 = xpc_dictionary_get_int64(xdict, "ToTrackID");
  v6 = xpc_dictionary_get_int64(xdict, "TrackReferenceType");
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 192);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(a1, v6, int64, v5);
}

uint64_t mutableMovieServer_CreateByteStreamFromMessageAndAddForMediaDataStorageURL(_xpc_connection_s *a1, uint64_t a2, void *a3)
{
  pid = xpc_connection_get_pid(a1);
  uint64 = xpc_dictionary_get_uint64(a3, "ByteStream");
  if (uint64)
  {
    v7 = pid == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  return mutableMovieServer_CreateByteStreamFromObjectIDAndAddForMediaDataStorageURL(a2, uint64, pid);
}

uint64_t OUTLINED_FUNCTION_4_146()
{

  return CMBaseObjectGetVTable();
}

void NeroTextImageCodec_Compress32BPPImage(char *__src, uint64_t a2, int a3, uint64_t a4, _WORD *a5, unint64_t *a6)
{
  if (__src)
  {
    v6 = __src;
    if ((__src & 7) != 0)
    {
      NeroTextImageCodec_Compress32BPPImage_cold_1(&v18);
    }

    else if ((a4 & 7) != 0)
    {
      NeroTextImageCodec_Compress32BPPImage_cold_2(&v18);
    }

    else
    {
      v8 = a5;
      if (a5)
      {
        if (a6)
        {
          v10 = *a6;
          if (*a6)
          {
            if (a3)
            {
              v11 = 0;
              v12 = a3 + 1;
              v13 = a2;
              while (1)
              {
                v18 = 0;
                ntic_compressLine32BPP_Vec(v6, v13, v8, v10, &v18);
                if (v14)
                {
                  break;
                }

                v15 = v18;
                if (v10 == v18)
                {
                  NeroTextImageCodec_Compress32BPPImage_cold_4(&v19);
                  return;
                }

                v16 = v18 + v11;
                v17 = &v8[v18];
                *v17 = -1;
                v8 = v17 + 1;
                v6 += a4;
                v11 += v15 + 1;
                v10 += ~v15;
                if (--v12 <= 1)
                {
                  if (v10 <= 1)
                  {
                    NeroTextImageCodec_Compress32BPPImage_cold_3(&v18);
                  }

                  else
                  {
                    *v8 = 0;
                    *a6 = v16 + 3;
                  }

                  return;
                }
              }
            }

            else
            {
              NeroTextImageCodec_Compress32BPPImage_cold_5(&v18);
            }
          }

          else
          {
            NeroTextImageCodec_Compress32BPPImage_cold_6(&v18);
          }
        }

        else
        {
          NeroTextImageCodec_Compress32BPPImage_cold_7(&v18);
        }
      }

      else
      {
        NeroTextImageCodec_Compress32BPPImage_cold_8(&v18);
      }
    }
  }

  else
  {
    NeroTextImageCodec_Compress32BPPImage_cold_9(&v18);
  }
}

double ntic_compressLine32BPP_Vec(char *__src, int a2, _BYTE *a3, uint64_t a4, void *a5)
{
  if (a4 <= 0)
  {
    emitter = fig_log_get_emitter();
    v32 = v5;
    v33 = 170;
LABEL_58:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951293, "(Fig)", v33, v32);
  }

  *a3 = 1;
  v6 = a3 + 1;
  v7 = a2 >> 1;
  if (a2 >> 1 >= 1)
  {
    v9 = 0;
    v10 = &a3[a4];
    while (1)
    {
      v11 = v6 + 1;
      v12 = v7 >= 0x7Fu ? 127 : v7;
      if (v7 < 2u)
      {
        break;
      }

      v13 = 0;
      v15 = __src + 16;
      v14 = *__src;
      while (1)
      {
        v9 = v14;
        v16 = v15;
        v14 = *(v15 - 1);
        if (v14 == v9)
        {
          break;
        }

        v15 += 8;
        if (v12 - 1 == ++v13)
        {
          v13 = v12;
          break;
        }
      }

      if (v13 == v7)
      {
LABEL_50:
        *v6 = v7;
        v28 = 8 * v7;
        if (v28 >= v10 - v11)
        {
          v29 = v10 - v11;
        }

        else
        {
          v29 = 8 * v7;
        }

        memcpy(v6 + 1, __src, v29);
        v30 = &v11[v29];
        if (v28 > v10 - v11 && &v30[8 * v7] > v10)
        {
          emitter = fig_log_get_emitter();
          v32 = v5;
          v33 = 204;
          goto LABEL_58;
        }

        v26 = a5;
        if (!a5)
        {
          return result;
        }

        v27 = v30 - a3;
LABEL_48:
        *v26 = v27;
        return result;
      }

      if (v13 != 127)
      {
        if (v13 < 1)
        {
LABEL_24:
          if (v7 >= 128)
          {
            v20 = 128;
          }

          else
          {
            v20 = v7;
          }

          if (v7 < 3)
          {
            v23 = -2;
          }

          else
          {
            v21 = -v20;
            if (-v20 >= -3)
            {
              v22 = -3;
            }

            else
            {
              v22 = -v20;
            }

            v23 = -2;
            while (*v16 == v9)
            {
              v16 += 8;
              if (--v23 <= v21)
              {
                v23 = v22;
                break;
              }
            }
          }

          *v6 = v23;
          *v11 = v9;
          v24 = v11 + 8;
          v7 += v23;
          goto LABEL_37;
        }

LABEL_18:
        *v6 = v13;
        v17 = 8 * v13;
        if (v17 >= v10 - v11)
        {
          v18 = v10 - v11;
        }

        else
        {
          v18 = 8 * v13;
        }

        memcpy(v11, __src, v18);
        if (v17 > v10 - v11 && &v11[8 * v13] > v10)
        {
          emitter = fig_log_get_emitter();
          v32 = v5;
          v33 = 232;
          goto LABEL_58;
        }

        v6 = &v11[v18];
        v7 -= v13;
        v11 += v18 + 1;
        goto LABEL_24;
      }

      *v6 = 127;
      if ((v10 - v11) >= 0x3F8)
      {
        v25 = 1016;
      }

      else
      {
        v25 = v10 - v11;
      }

      memcpy(v6 + 1, __src, v25);
      if ((v10 - v11) <= 0x3F7 && v6 + 1017 > v10)
      {
        emitter = fig_log_get_emitter();
        v32 = v5;
        v33 = 218;
        goto LABEL_58;
      }

      v24 = &v11[v25];
      v7 -= 127;
LABEL_37:
      __src = v16;
      v6 = v24;
      if (v7 <= 0)
      {
        goto LABEL_46;
      }
    }

    if (v7 == 1)
    {
      goto LABEL_50;
    }

    v16 = __src + 8;
    v13 = 1;
    goto LABEL_18;
  }

  v24 = a3 + 1;
LABEL_46:
  v26 = a5;
  if (a5)
  {
    v27 = v24 - a3;
    goto LABEL_48;
  }

  return result;
}

uint64_t NeroTextImageCodec_Decompress32BPPImage(char *__src, uint64_t a2, uint64_t a3, int a4, char *a5, uint64_t a6, uint64_t a7)
{
  if (__src)
  {
    v7 = a5;
    if (a5)
    {
      if ((a5 & 7) != 0)
      {
        NeroTextImageCodec_Decompress32BPPImage_cold_1(&__pattern8);
      }

      else if ((a6 & 7) != 0)
      {
        NeroTextImageCodec_Decompress32BPPImage_cold_2(&__pattern8);
      }

      else if ((a7 & 7) != 0)
      {
        NeroTextImageCodec_Decompress32BPPImage_cold_3(&__pattern8);
      }

      else
      {
        v9 = __src;
        v10 = &__src[a2];
        v11 = &a5[a7];
        while (1)
        {
          if (!*v9)
          {
            return 0;
          }

          v12 = &v7[a6];
LABEL_9:
          if (v9 >= v10)
          {
            NeroTextImageCodec_Decompress32BPPImage_cold_11(&__pattern8);
            return __pattern8;
          }

          v13 = v9 + 1;
          if (*v9)
          {
            break;
          }

          v9 = (v9 + 1);
LABEL_41:
          v7 = v12;
          if (!--a4)
          {
            return 0;
          }
        }

        if (v13 < v10)
        {
          v7 = &v7[8 * *v9 - 8];
          do
          {
            v9 = (v13 + 1);
            v14 = *v13;
            if (!*v13)
            {
              goto LABEL_9;
            }

            if (v14 < 1)
            {
              __pattern8 = 0;
              if (v14 == 255)
              {
                goto LABEL_41;
              }

              if (v13 + 8 >= v10)
              {
                NeroTextImageCodec_Decompress32BPPImage_cold_4(&v25);
                return v25;
              }

              __pattern8 = *v9;
              v18 = 8 * (v14 ^ 0xFF) + 8;
              v19 = v11 - v7;
              if (v18 < v11 - v7)
              {
                v19 = 8 * (v14 ^ 0xFF) + 8;
              }

              if (v19 >= v12 - v7)
              {
                v20 = v12 - v7;
              }

              else
              {
                v20 = v19;
              }

              memset_pattern8(v7, &__pattern8, v20);
              v7 += v20;
              if (v20 != v18)
              {
                v21 = &v7[8 * v18];
                if (v21 > v11)
                {
                  NeroTextImageCodec_Decompress32BPPImage_cold_6(&v25);
                  return v25;
                }

                if (v21 > v12)
                {
                  NeroTextImageCodec_Decompress32BPPImage_cold_5(&v25);
                  return v25;
                }
              }

              v13 += 9;
            }

            else
            {
              v15 = v10 - v9;
              if (8 * v14 < (v10 - v9))
              {
                v15 = 8 * v14;
              }

              if (v15 >= v11 - v7)
              {
                v15 = v11 - v7;
              }

              if (v15 >= v12 - v7)
              {
                v16 = v12 - v7;
              }

              else
              {
                v16 = v15;
              }

              memcpy(v7, v13 + 1, v16);
              v13 = v9 + v16;
              v7 += v16;
              if (v16 != 8 * v14)
              {
                if (&v13[8 * v14] > v10)
                {
                  NeroTextImageCodec_Decompress32BPPImage_cold_9(&__pattern8);
                  return __pattern8;
                }

                v17 = &v7[64 * v14];
                if (v17 > v11)
                {
                  NeroTextImageCodec_Decompress32BPPImage_cold_8(&__pattern8);
                  return __pattern8;
                }

                if (v17 > v12)
                {
                  NeroTextImageCodec_Decompress32BPPImage_cold_7(&__pattern8);
                  return __pattern8;
                }
              }
            }
          }

          while (v13 < v10);
        }

        NeroTextImageCodec_Decompress32BPPImage_cold_10(&__pattern8);
      }
    }

    else
    {
      NeroTextImageCodec_Decompress32BPPImage_cold_12(&__pattern8);
    }
  }

  else
  {
    NeroTextImageCodec_Decompress32BPPImage_cold_13(&__pattern8);
  }

  return __pattern8;
}

void NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages(char *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = 0;
  if (a1)
  {
    if (a3)
    {
      if (a7)
      {
        if ((a7 & 7) != 0)
        {
          NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_1(&v23);
        }

        else if ((a8 & 7) != 0)
        {
          NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_2(&v23);
        }

        else if ((a9 & 7) != 0)
        {
          NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_3(&v23);
        }

        else
        {
          v12 = a6 - 1;
          v13 = a7;
          v14 = a3;
          v15 = a1;
          do
          {
            v16 = v12;
            v23 = 0;
            ntic_decodeLineRLEto32BGRA(v15, &a1[a2], v13, a7 + a9, v13 + a8, 0, &v23, &v24 + 1);
            if (v17)
            {
              break;
            }

            v18 = v23;
            v23 = 0;
            ntic_decodeLineRLEto32BGRA(v14, &a3[a4], v13, a7 + a9, v13 + a8, 1, &v23, &v24);
            if (v19)
            {
              break;
            }

            if (HIBYTE(v24) != 0 && v24 != 0)
            {
              break;
            }

            v13 += a8;
            v15 += v18;
            v14 += v23;
            v12 = v16 - 1;
          }

          while (v16);
        }
      }

      else
      {
        NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_4(&v23);
      }
    }

    else
    {
      NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_5(&v23);
    }
  }

  else
  {
    NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_6(&v23);
  }
}

void ntic_decodeLineRLEto32BGRA(char *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, void *a7, _BYTE *a8)
{
  v9 = a7;
  v10 = a1;
  if (*a1)
  {
    if (a1 < a2)
    {
      v33 = a1;
      v34 = a7;
      v12 = a1 + 1;
      if ((a1 + 1) < a2)
      {
        v15 = a4;
        v16 = (a3 + 8 * *a1 - 8);
        do
        {
          v18 = (v12 + 1);
          v17 = *v12;
          if (!*v12)
          {
            goto LABEL_45;
          }

          if (v17 >= 1)
          {
            v19 = 8 * v17;
            v20 = a2 - v18;
            if (v19 < a2 - v18)
            {
              v20 = v19;
            }

            if (v20 >= v15 - v16)
            {
              v20 = v15 - v16;
            }

            if (v20 >= a5 - v16)
            {
              v21 = a5 - v16;
            }

            else
            {
              v21 = v20;
            }

            if (a6 == 1)
            {
              if (v21)
              {
                for (i = 0; i < v21; i += 4)
                {
                  *&v16[i] = ntic_blendTwoBGRAPixels(*&v16[i], *(v18 + i));
                }
              }
            }

            else
            {
              memcpy(v16, v12 + 1, v21);
            }

            v12 = v18 + v21;
            v16 += v21;
            if (v21 != v19)
            {
              if (&v12[v19] > a2)
              {
                ntic_decodeLineRLEto32BGRA_cold_7(&__pattern8);
                goto LABEL_58;
              }

              v30 = &v16[8 * v19];
              if (v30 > v15)
              {
                ntic_decodeLineRLEto32BGRA_cold_6(&__pattern8);
                goto LABEL_58;
              }

              if (v30 > a5)
              {
                ntic_decodeLineRLEto32BGRA_cold_5(&__pattern8);
                goto LABEL_58;
              }
            }

            continue;
          }

          __pattern8 = 0;
          if (v17 == 255)
          {
            goto LABEL_45;
          }

          if ((v12 + 8) >= a2)
          {
            ntic_decodeLineRLEto32BGRA_cold_2(&v37);
            goto LABEL_45;
          }

          v23 = *v18;
          __pattern8 = *v18;
          v24 = 8 * (v17 ^ 0xFF) + 8;
          v25 = v15 - v16;
          if (v24 < v15 - v16)
          {
            v25 = v24;
          }

          v26 = a5;
          if (v25 >= a5 - v16)
          {
            v27 = a5 - v16;
          }

          else
          {
            v27 = v25;
          }

          v28 = a6;
          if (!a6)
          {
            goto LABEL_29;
          }

          if ((v23 & 0xFF000000FF000000) == 0)
          {
            goto LABEL_30;
          }

          if ((v23 & 0xFF000000FF000000) != 0xFF000000FF000000)
          {
            if (v27)
            {
              v31 = 0;
              for (j = 0; j < v27; j += 4)
              {
                *&v16[j] = ntic_blendTwoBGRAPixels(*&v16[j], v23 >> (~v31 & 0x20));
                v31 += 32;
              }
            }
          }

          else
          {
LABEL_29:
            memset_pattern8(v16, &__pattern8, v27);
          }

LABEL_30:
          v12 += 9;
          v16 += v27;
          if (v27 != v24)
          {
            v29 = &v16[8 * v24];
            if (v29 > a4)
            {
              ntic_decodeLineRLEto32BGRA_cold_4(&v37);
              goto LABEL_58;
            }

            if (v29 > v26)
            {
              ntic_decodeLineRLEto32BGRA_cold_3(&v37);
              goto LABEL_58;
            }
          }

          a6 = v28;
          a5 = v26;
          v15 = a4;
        }

        while (v12 < a2);
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v33, v34);
LABEL_58:
      v18 = v12;
LABEL_45:
      v10 = v33;
      v9 = v34;
      if (v34)
      {
        goto LABEL_46;
      }

      return;
    }

    ntic_decodeLineRLEto32BGRA_cold_1(&__pattern8);
  }

  else
  {
    *a8 = 1;
  }

  v18 = v10;
  if (v9)
  {
LABEL_46:
    *v9 = v18 - v10;
  }
}

uint64_t ntic_blendTwoBGRAPixels(uint64_t a1, uint64_t a2)
{
  if (BYTE3(a1))
  {
    v2 = BYTE3(a2);
    if (BYTE3(a2) != 255)
    {
      if (v2)
      {
        return (((((v2 ^ 0xFF) * (a1 & 0xFF00FF)) >> 8) & 0xFF00FF) + (a2 & 0xFF00FF)) | ((((v2 ^ 0xFF) * ((a1 >> 8) & 0xFF00FF)) & 0xFF00FF00) + (a2 & 0xFF00FF00));
      }

      else
      {
        return a1;
      }
    }
  }

  return a2;
}

uint64_t FigClosedCaptionsTextRasterizerCreate(uint64_t a1, CFTypeRef *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    FigClosedCaptionsTextRasterizerCreate_cold_3(__str);
    return *__str;
  }

  FigTextRasterizerGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    v9 = v4;
LABEL_7:
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    return v9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  *(DerivedStorage + 8) = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F050] + 16);
  *(DerivedStorage + 32) = *MEMORY[0x1E695F050];
  *(DerivedStorage + 48) = v6;
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 400) = 1;
  *(DerivedStorage + 72) = 0;
  v7 = FigCFCaptionRendererCreate(a1);
  *(DerivedStorage + 64) = v7;
  if (v7)
  {
    snprintf(__str, 0x100uLL, "com.apple.coremedia.FigClosedCaptionsTextRasterizer.messagequeue<%p>", *a2);
    v8 = dispatch_queue_create(__str, 0);
    *(DerivedStorage + 408) = v8;
    if (v8)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v9 = FigNotificationCenterAddWeakListener();
    }

    else
    {
      FigClosedCaptionsTextRasterizerCreate_cold_1(&v11);
      v9 = v11;
    }
  }

  else
  {
    FigClosedCaptionsTextRasterizerCreate_cold_2(__str);
    v9 = *__str;
  }

  if (v9)
  {
    goto LABEL_7;
  }

  return v9;
}

void captionRendererDidChangeCaptionsNotification_0(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = *(DerivedStorage + 408);
    if (v4)
    {
      context = a2;
      dispatch_sync_f(v4, &context, captionRendererDidChangeCaptionsNotificationDo);
    }
  }

  else
  {
    captionRendererDidChangeCaptionsNotification_cold_1();
  }
}

uint64_t FigClosedCaptionsTextRasterizerSetCommand(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v4 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (*(DerivedStorage + 24))
    {
      FigCFCaptionRendererProcessCaptionCommandData(*(DerivedStorage + 64), v4, a3);
      return 0;
    }

    else
    {
      FigClosedCaptionsTextRasterizerSetCommand_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigClosedCaptionsTextRasterizerSetCommand_cold_2(&v8);
    return v8;
  }
}

void ccRasterizerFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(DerivedStorage + 64);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 64) = 0;
    }
  }

  v3 = *(DerivedStorage + 408);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 408) = 0;
  }

  CGContextRelease(*(DerivedStorage + 24));
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *ccRasterizerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigClosedCaptionsTextRasterizer %p>", a1);
  return Mutable;
}

uint64_t ccRasterizerSetRenderSize(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2 < 1.0 || a3 < 1.0)
    {
      ccRasterizerSetRenderSize_cold_2(&v18);
      return v18;
    }

    else
    {
      v8 = DerivedStorage;
      if (*(DerivedStorage + 8) == a2 && *(DerivedStorage + 16) == a3)
      {
        return 0;
      }

      else
      {
        *(DerivedStorage + 8) = a2;
        *(DerivedStorage + 16) = a3;
        v10 = CMBaseObjectGetDerivedStorage();
        v11 = *(v10 + 24);
        if (v11)
        {
          CFRelease(v11);
          *(v10 + 24) = 0;
        }

        v12 = *(v10 + 8);
        if (v12 == *MEMORY[0x1E695F060] && *(v10 + 16) == *(MEMORY[0x1E695F060] + 8))
        {
          v15 = 0;
        }

        else
        {
          v14 = vcvtd_n_u64_f64(v12, 2uLL);
          v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          v16 = CGBitmapContextCreate(0, *(v10 + 8), *(v10 + 16), 8uLL, v14, v15, 0x2002u);
          *(v10 + 24) = v16;
          if (!v16)
          {
            ccRasterizerSetRenderSize_cold_1();
          }
        }

        CGColorSpaceRelease(v15);
        ccras_setupElementRects(a1);
        result = 0;
        *(v8 + 400) = 1;
      }
    }
  }

  else
  {
    ccRasterizerSetRenderSize_cold_3(&v19);
    return v19;
  }

  return result;
}

uint64_t ccRasterizerSetVideoSizeAndDisplayRect(uint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v13 = DerivedStorage;
    v17.origin.x = a4;
    v17.origin.y = a5;
    v17.size.width = a6;
    v17.size.height = a7;
    if (CGRectIsEmpty(v17))
    {
      ccRasterizerSetVideoSizeAndDisplayRect_cold_1(&v15);
      return v15;
    }

    else
    {
      v18.origin.x = a4;
      v18.origin.y = a5;
      v18.size.width = a6;
      v18.size.height = a7;
      if (!CGRectEqualToRect(v13[1], v18))
      {
        v13[1].origin.x = a4;
        v13[1].origin.y = a5;
        v13[1].size.width = a6;
        v13[1].size.height = a7;
        ccras_setupElementRects(a1);
        ccras_clearBitmapContext(a1);
      }

      return 0;
    }
  }

  else
  {
    ccRasterizerSetVideoSizeAndDisplayRect_cold_2(&v16);
    return v16;
  }
}

uint64_t ccRasterizerSetFontName(uint64_t a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2)
    {
      v4 = DerivedStorage;
      v5 = *DerivedStorage;
      *DerivedStorage = a2;
      CFRetain(a2);
      if (v5)
      {
        CFRelease(v5);
      }

      FigCFCaptionRendererSetFontName(v4[8], a2);
      return 0;
    }

    else
    {
      ccRasterizerSetFontName_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    ccRasterizerSetFontName_cold_2(&v8);
    return v8;
  }
}

uint64_t ccRasterizerReset(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    FigCFCaptionRendererResetCaptions(*(DerivedStorage + 64));
    *(v3 + 72) = 0;
    ccras_clearBitmapContext(a1);
    return 0;
  }

  else
  {
    ccRasterizerReset_cold_1(&v5);
    return v5;
  }
}

uint64_t ccRasterizerImageHasChangedSinceLastCopy(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 400);
  }

  return 0;
}

__n128 ccras_setupElementRects(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v2 = (DerivedStorage + 48);
  v3 = (DerivedStorage + 56);
  if (CGRectIsNull(*(DerivedStorage + 32)))
  {
    v2 = (DerivedStorage + 8);
    v3 = (DerivedStorage + 16);
    v4 = 0.0;
    v5 = 0.0;
  }

  else
  {
    v5 = *(DerivedStorage + 32);
    v4 = *(DerivedStorage + 40);
  }

  v6 = *v2;
  v7 = *v3;
  v8 = *(DerivedStorage + 64);
  v9 = *(MEMORY[0x1E6962818] + 16);
  v18[0] = *MEMORY[0x1E6962818];
  v18[1] = v9;
  v10 = *(MEMORY[0x1E6962818] + 48);
  v18[2] = *(MEMORY[0x1E6962818] + 32);
  v18[3] = v10;
  FigCFCaptionRendererGetCaptionElementRect(v8, v18, 0, 10, &v19, v20, v5, v4, v6, v7, v5, v4, v6, v7);
  v12 = v19;
  if (v19 >= 10)
  {
    v13 = 10;
  }

  else
  {
    v13 = v19;
  }

  *(DerivedStorage + 72) = v13;
  if (v12 >= 1)
  {
    v14 = 0;
    v15 = DerivedStorage + 80;
    v16 = v20;
    do
    {
      result = v16->origin;
      size = v16->size;
      ++v16;
      *v15 = result;
      *(v15 + 16) = size;
      v15 += 32;
      ++v14;
    }

    while (v14 < v13);
  }

  return result;
}

void ccras_clearBitmapContext(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2.origin.x = *MEMORY[0x1E695EFF8];
  v2.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v2.size.width = *(DerivedStorage + 8);
  v2.size.height = *(DerivedStorage + 16);
  CGContextClearRect(*(DerivedStorage + 24), v2);
  *(DerivedStorage + 400) = 1;
}

void captionRendererDidChangeCaptionsNotificationDo(uint64_t *a1)
{
  v1 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    ccras_setupElementRects(v1);
    ccras_clearBitmapContext(v1);
    if (*(v3 + 72) >= 1)
    {
      v4 = 0;
      v5 = (v3 + 104);
      do
      {
        FigCFCaptionRendererDrawCaptionElementInContextForRectOrientation(*(v3 + 64), v4++, *(v3 + 24), 0, &v6, *(v5 - 3), *(v5 - 2), *(v5 - 1), *v5);
        v5 += 4;
      }

      while (v4 < *(v3 + 72));
    }
  }

  else
  {
    captionRendererDidChangeCaptionsNotificationDo_cold_1();
  }
}

void __ffpap_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    FigCFDictionarySetValue();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12786;
  }
}

void subtitleRasterizerFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  if (*(DerivedStorage + 129))
  {
    v3 = *(DerivedStorage + 120);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(CMBaseObjectGetDerivedStorage() + 136);
  if (v3)
  {
LABEL_3:
    CFRelease(v3);
  }

LABEL_4:
  CGContextRelease(*(v2 + 72));
  if (*v2)
  {
    CFRelease(*v2);
  }

  v4 = *(v2 + 144);
  if (v4)
  {

    CFRelease(v4);
  }
}

__CFString *subtitleRasterizerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSubtitleTextRasterizer %p>", a1);
  return Mutable;
}

uint64_t subtitleRasterizerSetRenderSize(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2 < 1.0 || a3 < 1.0)
    {
      subtitleRasterizerSetRenderSize_cold_3(&v16);
      return v16;
    }

    else
    {
      v7 = DerivedStorage;
      if (*(DerivedStorage + 8) == a2 && *(DerivedStorage + 16) == a3)
      {
        return 0;
      }

      else
      {
        *(DerivedStorage + 8) = a2;
        *(DerivedStorage + 16) = a3;
        v9 = CMBaseObjectGetDerivedStorage();
        v10 = *(v9 + 72);
        if (v10)
        {
          CFRelease(v10);
          *(v9 + 72) = 0;
        }

        v11 = *(v9 + 8);
        if (v11 == *MEMORY[0x1E695F060] && *(v9 + 16) == *(MEMORY[0x1E695F060] + 8))
        {
          v13 = 0;
        }

        else
        {
          v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          if (v13)
          {
            v14 = CGBitmapContextCreate(0, *(v9 + 8), *(v9 + 16), 8uLL, vcvtd_n_u64_f64(v11, 2uLL), v13, 0x2002u);
            *(v9 + 72) = v14;
            if (v14)
            {
              *(v9 + 80) = 0;
              *(v9 + 88) = 0;
              *(v9 + 96) = *(v9 + 8);
              *(v9 + 112) = 0;
            }

            else
            {
              subtitleRasterizerSetRenderSize_cold_1();
            }
          }

          else
          {
            subtitleRasterizerSetRenderSize_cold_2();
          }
        }

        CGColorSpaceRelease(v13);
        result = 0;
        *(v7 + 128) = 1;
      }
    }
  }

  else
  {
    subtitleRasterizerSetRenderSize_cold_4(&v17);
    return v17;
  }

  return result;
}

uint64_t subtitleRasterizerSetVideoSizeAndDisplayRect(uint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2 < 1.0 || a3 < 1.0)
    {
      subtitleRasterizerSetVideoSizeAndDisplayRect_cold_2(&v18);
      return v18;
    }

    else
    {
      v15 = DerivedStorage;
      v20.origin.x = a4;
      v20.origin.y = a5;
      v20.size.width = a6;
      v20.size.height = a7;
      result = CGRectIsEmpty(v20);
      if (result)
      {
        subtitleRasterizerSetVideoSizeAndDisplayRect_cold_1(&v17);
        return v17;
      }

      else
      {
        v15[3] = a2;
        v15[4] = a3;
        v15[5] = a4;
        v15[6] = a5;
        v15[7] = a6;
        v15[8] = a7;
      }
    }
  }

  else
  {
    subtitleRasterizerSetVideoSizeAndDisplayRect_cold_3(&v19);
    return v19;
  }

  return result;
}

uint64_t subtitleRasterizerSetFontName(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2)
    {
      v4 = *DerivedStorage;
      *DerivedStorage = a2;
      CFRetain(a2);
      if (v4)
      {
        CFRelease(v4);
      }

      return 0;
    }

    else
    {
      subtitleRasterizerSetFontName_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    subtitleRasterizerSetFontName_cold_2(&v7);
    return v7;
  }
}

uint64_t subtitleRasterizerReset(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    v5.origin.x = *MEMORY[0x1E695EFF8];
    v5.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v5.size.width = *(DerivedStorage + 8);
    v5.size.height = *(DerivedStorage + 16);
    CGContextClearRect(*(DerivedStorage + 72), v5);
    result = 0;
    *(v2 + 112) = 0;
    *(v2 + 128) = 1;
  }

  else
  {
    subtitleRasterizerReset_cold_1(&v4);
    return v4;
  }

  return result;
}

uint64_t subtitleRasterizerImageHasChangedSinceLastCopy(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 128);
  }

  return 0;
}

uint64_t EMSGInformationCreate(uint64_t a1, uint64_t *a2)
{
  if (sRegisterEMSGInformationTypeOnce != -1)
  {
    EMSGInformationCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a2 = v4;
  }

  else
  {
    EMSGInformationCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t RegisterEMSGInformationType()
{
  result = _CFRuntimeRegisterClass();
  sEMSGInformationID = result;
  return result;
}

void emsgInformationFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
    a1[5] = 0;
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
}

__CFString *emsgInformationCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<EMSGInformationRef %p> timescale: %d presentationTime: %lld eventDuration: %lld identifier: %d schemeIDURI: %@ value: %@", a1, *(a1 + 16), *(a1 + 20), *(a1 + 28), *(a1 + 36), *(a1 + 40), *(a1 + 48));
  return Mutable;
}

uint64_t FigTextRasterizerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTextRasterizerGetClassID_sRegisterFigTextRasterizerOnce, RegisterFigTextRasterizerClass);

  return CMBaseClassGetCFTypeID();
}

double FigTextRasterizerCreatePixelBufferFromBitmapContext(CGContext *a1, OSType a2, uint64_t a3, CVPixelBufferRef *a4)
{
  if (a1)
  {
    Width = CGBitmapContextGetWidth(a1);
    Height = CGBitmapContextGetHeight(a1);
    BytesPerRow = CGBitmapContextGetBytesPerRow(a1);
    v11 = *MEMORY[0x1E695E480];
    Data = CGBitmapContextGetData(a1);
    v13 = CVPixelBufferCreateWithBytes(v11, Width, Height, a2, Data, BytesPerRow, 0, 0, 0, a4);
    if (v13)
    {

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v13, "(Fig)", 102, v4);
    }
  }

  else
  {
    figTTMLBody_GetNodeType_cold_1(&v15);
  }

  return result;
}

uint64_t FigOctaviaVideoRenderPipelineCreate(uint64_t a1, const __CFDictionary *a2, const void *a3, CFTypeRef *a4)
{
  if (!a4)
  {
    FigOctaviaVideoRenderPipelineCreate_cold_2(&v15);
    return v15;
  }

  if (!a3)
  {
    FigOctaviaVideoRenderPipelineCreate_cold_1(&v15);
    return v15;
  }

  FigRenderPipelineGetClassID();
  BBufFromPointer = CMDerivedObjectCreate();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 4) = 1986618469;
  v8 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 16) = v8;
  if (!v8)
  {
    return 4294954443;
  }

  *(DerivedStorage + 176) = CFRetain(a3);
  BBufFromPointer = NeroTransportRegisterObject();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  v9 = dispatch_queue_create("octavia.videoRP.notifications", 0);
  *(DerivedStorage + 24) = v9;
  if (!v9)
  {
    return 4294954443;
  }

  BBufFromPointer = FigTransportCreateBBufFromPointer();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  FigCFDictionaryGetBooleanIfPresent();
  BBufFromPointer = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  DataLength = CMBlockBufferGetDataLength(0);
  BBufFromPointer = CMBlockBufferAppendBufferReference(0, 0, 0, DataLength, 0);
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  FigTransportGetRemoteRootObject();
  BBufFromPointer = NeroTransportSendSyncMessageCreatingReply();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  *(DerivedStorage + 64) = 8;
  *(DerivedStorage + 96) = 0;
  v11 = CMMemoryPoolCreate(0);
  *(DerivedStorage + 136) = v11;
  if (!v11)
  {
    return 4294954443;
  }

  Allocator = CMMemoryPoolGetAllocator(v11);
  *(DerivedStorage + 144) = Allocator;
  if (Allocator)
  {
    CFRetain(Allocator);
  }

  BBufFromPointer = CMBlockBufferCopyDataBytes(0, 0, 8uLL, (DerivedStorage + 8));
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  BBufFromPointer = octrp_createSourceQueueAndInstallTriggers(0);
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  BBufFromPointer = CMNotificationCenterAddListener();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v13 = CMNotificationCenterAddListener();
  if (!v13)
  {
    *(DerivedStorage + 184) = FigGetCFPreferenceNumberWithDefault() != 0;
    *a4 = 0;
  }

  return v13;
}

void __FigOctaviaVideoRenderPipelineCreate_block_invoke(uint64_t a1, int a2, OpaqueCMBlockBuffer *a3)
{
  v5 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  if (a2 <= 1852138851)
  {
    switch(a2)
    {
      case 828797549:
        v6 = kFigRenderPipelineNotification_FirstVideoFrameEnqueued;
        break;
      case 945976678:
        v6 = MEMORY[0x1E69605B0];
        break;
      case 1684370034:
        v6 = kFigRenderPipelineNotification_DecodeError;
        break;
      default:
        return;
    }

    goto LABEL_15;
  }

  switch(a2)
  {
    case 1936093805:
      v6 = kFigRenderPipelineNotification_SynchronousFrameEnqueued;
LABEL_15:
      v7 = *v6;

      octrp_reflectNeroNotification(v5, v7, a3);
      return;
    case 1918989413:
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      destination = 0.0;
      v13 = **&MEMORY[0x1E6960C70];
      v12 = v13;
      if (CMBlockBufferGetDataLength(a3) == 56 && !CMBlockBufferCopyDataBytes(a3, 0, 8uLL, &destination) && !CMBlockBufferCopyDataBytes(a3, 8uLL, 0x18uLL, &v13) && !CMBlockBufferCopyDataBytes(a3, 0x20uLL, 0x18uLL, &v12))
      {
        v9 = *(DerivedStorage + 120);
        timebaseTime = v13;
        v10 = v12;
        CMTimebaseSetRateAndAnchorTime(v9, destination, &timebaseTime, &v10);
      }

      break;
    case 1852138852:
      FigAtomicIncrement32();

      octrp_sendSampleBuffersToNeroIfNeeded(v5);
      break;
  }
}

uint64_t octrp_createSourceQueueAndInstallTriggers(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  result = CMBufferQueueCreate(v3, 0, CallbacksForUnsortedSampleBuffers, DerivedStorage + 4);
  if (!result)
  {
    v6 = DerivedStorage[4];
    v9 = *MEMORY[0x1E6960C70];
    *&time.value = *MEMORY[0x1E6960C70];
    v7 = *(MEMORY[0x1E6960C70] + 16);
    time.epoch = v7;
    result = CMBufferQueueInstallTrigger(v6, octrp_sourceQueueDataBecameReady, a1, 7, &time, DerivedStorage + 5);
    if (!result)
    {
      result = CMBufferQueueInstallTriggerWithIntegerThreshold(DerivedStorage[4], octrp_sourceQueueBuffersBecameAvailable, a1, 11, 0, DerivedStorage + 6);
      if (!result)
      {
        v8 = DerivedStorage[4];
        *&time.value = v9;
        time.epoch = v7;
        return CMBufferQueueInstallTrigger(v8, octrp_sourceQueueWasReset, a1, 9, &time, DerivedStorage + 7);
      }
    }
  }

  return result;
}

void octrp_inhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  if (!a5)
  {
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960580]);
  if (Value)
  {
    v8 = Value;
    CFRetain(Value);
    v9 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __octrp_inhibitOutputUntil_block_invoke;
    block[3] = &__block_descriptor_tmp_26_2;
    block[4] = DerivedStorage;
    block[5] = v8;
    dispatch_sync(v9, block);
  }

  if (!FigRemote_CreateSerializedAtomDataBlockBufferForCFType())
  {
LABEL_5:
    NeroTransportSendAsyncMessage();
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t octrp_resetOutputQueue(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();

  return NeroTransportSendAsyncMessage();
}

uint64_t FigOctaviaVideoRenderPipelineCreateWithFigImageQueueArray(const __CFAllocator *a1, const __CFDictionary *a2, CFArrayRef theArray, const __CFArray *a4, const void *a5, const void *a6, const void *a7, int a8, const __CFArray *a9, CFTypeRef *a10)
{
  cf = 0;
  if (!a10)
  {
    v25 = 1404;
LABEL_19:
    FigOctaviaVideoRenderPipelineCreateWithFigImageQueueArray_cold_1(v25, &v27);
    v20 = v27;
    goto LABEL_8;
  }

  if (!theArray)
  {
    v25 = 1405;
    goto LABEL_19;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    v25 = 1406;
    goto LABEL_19;
  }

  if (!a9)
  {
    v25 = 1407;
    goto LABEL_19;
  }

  v18 = FigOctaviaVideoRenderPipelineCreate(a1, a2, a9, &cf);
  if (v18 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), FigVideoRenderPipelineCreateWithFigImageQueueArray(a1, a5, a6, a7, a8, theArray, a4, a2, (DerivedStorage + 152)), v18))
  {
    v20 = v18;
  }

  else
  {
    FigRenderPipelineGetFigBaseObject();
    v23 = v22;
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v20 = v24(v23, @"SourceSampleBufferQueue", a1, DerivedStorage + 160);
      if (!v20)
      {
        *a10 = cf;
        return v20;
      }
    }

    else
    {
      v20 = 4294954514;
    }
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

__CFString *octvrp_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigOctaviaVideoRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t octrp_setTimebase(uint64_t a1, OpaqueCMTimebase *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 120);
  if (v7 == a2)
  {
    return 0;
  }

  v8 = DerivedStorage;
  if (a2)
  {
    v9 = CMTimebaseCopySourceClock(a2);
    v10 = v9;
    if (*(v8 + 113) && v9 != *(v8 + 104))
    {
      octrp_setTimebase_cold_1(&v17);
      v12 = v17;
      goto LABEL_30;
    }

    if (v9)
    {
      v11 = FigClockIsOctaviaClock(v9) == 0;
    }

    else
    {
      v11 = 1;
    }

    BBufFromPointer = FigTransportCreateBBufFromPointer();
    if (BBufFromPointer)
    {
LABEL_29:
      v12 = BBufFromPointer;
      goto LABEL_30;
    }

    v7 = *(v8 + 120);
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  if (v7)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    if (*(v8 + 113))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMTimebaseNotificationBarrier(*(v8 + 120));
    }

    v14 = *(v8 + 128);
    if (v14)
    {
      FigSyncMomentSourceSetTimebase(v14, 0);
    }

    v15 = *(v8 + 120);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  *(v8 + 120) = a2;
  if (a2)
  {
    CFRetain(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    if (*(v8 + 113))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    if (v11)
    {
      BBufFromPointer = octrp_ensurePreferredClock(a1);
      if (BBufFromPointer)
      {
        goto LABEL_29;
      }
    }
  }

  if (a3)
  {
    BBufFromPointer = NeroTransportSendAsyncMessage();
    if (BBufFromPointer)
    {
      goto LABEL_29;
    }
  }

  if (*(v8 + 120))
  {
    BBufFromPointer = octrp_handleTimebaseTimeJumped(a1);
    if (!BBufFromPointer)
    {
      octrp_updateSyncMomentSourceOnTimebase(a1);
    }

    goto LABEL_29;
  }

  v12 = 0;
LABEL_30:
  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

void octrp_timebaseRateChanged(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = *(CMBaseObjectGetDerivedStorage() + 120);
  if (v3)
  {
    Rate = CMTimebaseGetRate(v3);
    v5 = MEMORY[0x1E6962DA0];
    if (Rate != 0.0)
    {
      v5 = MEMORY[0x1E6962DA8];
    }

    v6 = *v5;
    FigCFDictionarySetFloat32();
    if (v6)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6962D80], v6);
    }
  }

  FigCFDictionarySetInt32();
  FigLogPowerEvent();

  CFRelease(Mutable);
}

void octrp_timebaseMasterDidChange(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!NeroTransportSendAsyncMessage())
  {

    octrp_updateSyncMomentSourceOnTimebase(a2);
  }
}

uint64_t octrp_ensurePreferredClock(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  theSourceBuffer = 0;
  if (*(DerivedStorage + 104))
  {
    ConsumingNeroClock = 0;
  }

  else
  {
    v3 = NeroTransportSendSyncMessageCreatingReply();
    if (v3 || (v3 = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, &v5), v3))
    {
      ConsumingNeroClock = v3;
    }

    else
    {
      ConsumingNeroClock = FigOctaviaClockCreateConsumingNeroClock(*MEMORY[0x1E695E480], v5, *(DerivedStorage + 176), (DerivedStorage + 104));
      if (!ConsumingNeroClock)
      {
        v5 = 0;
      }
    }
  }

  if (theSourceBuffer)
  {
    CFRelease(theSourceBuffer);
  }

  if (v5)
  {
    NeroTransportSendAsyncMessage();
  }

  return ConsumingNeroClock;
}

uint64_t octrp_handleTimebaseTimeJumped(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  outRelativeRate = 0.0;
  blockBufferOut = 0;
  memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
  memset(&outRelativeToClockOrTimebaseAnchorTime, 0, sizeof(outRelativeToClockOrTimebaseAnchorTime));
  v2 = CMTimebaseCopySource(*(DerivedStorage + 120));
  RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(*(DerivedStorage + 120), v2, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
  if (!RelativeRateAndAnchorTime)
  {
    v4 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x38uLL, *MEMORY[0x1E695E480], 0, 0, 0x38uLL, 1u, &blockBufferOut);
    v5 = blockBufferOut;
    if (v4 || (v4 = CMBlockBufferReplaceDataBytes(&outRelativeRate, blockBufferOut, 0, 8uLL), v5 = blockBufferOut, v4) || (v4 = CMBlockBufferReplaceDataBytes(&outOfClockOrTimebaseAnchorTime, blockBufferOut, 8uLL, 0x18uLL), v5 = blockBufferOut, v4) || (v4 = CMBlockBufferReplaceDataBytes(&outRelativeToClockOrTimebaseAnchorTime, blockBufferOut, 0x20uLL, 0x18uLL), v5 = blockBufferOut, v4))
    {
      RelativeRateAndAnchorTime = v4;
      if (!v5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    RelativeRateAndAnchorTime = NeroTransportSendAsyncMessage();
    v5 = blockBufferOut;
    if (blockBufferOut)
    {
LABEL_7:
      CFRelease(v5);
    }
  }

LABEL_8:
  if (v2)
  {
    CFRelease(v2);
  }

  return RelativeRateAndAnchorTime;
}

void octrp_updateSyncMomentSourceOnTimebase(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 120);
  if (v3)
  {
    v4 = CMTimebaseCopySourceClock(v3);
    if (v4)
    {
      v5 = v4;
      IsOctaviaClock = FigClockIsOctaviaClock(v4);
      CFRelease(v5);
      v7 = IsOctaviaClock != 0;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(DerivedStorage + 128);
    if (*(DerivedStorage + 113) || v7)
    {
      if (v8)
      {
        FigSyncMomentSourceSetTimebase(v8, 0);
      }
    }

    else
    {
      v9 = *(DerivedStorage + 120);
      if (v8)
      {
        v10 = *(DerivedStorage + 120);

        FigSyncMomentSourceSetTimebase(v8, v10);
      }

      else
      {
        v11 = *(DerivedStorage + 24);

        FigSyncMomentSourceCreateWithDispatchQueue(octrp_timebaseSyncUpdateCallback, a1, v9, v11, (DerivedStorage + 128));
      }
    }
  }
}

void octrp_timebaseSyncUpdateCallback(uint64_t a1, const void *a2)
{
  destinationBuffer = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2 && !*DerivedStorage)
  {
    if (!CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x48uLL, *MEMORY[0x1E695E480], 0, 0, 0x48uLL, 1u, &destinationBuffer) && !CMBlockBufferReplaceDataBytes(a2, destinationBuffer, 0, 0x48uLL))
    {
      NeroTransportSendAsyncMessage();
    }

    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }
  }
}

uint64_t octrp_copyNeroProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  result = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
  if (!result)
  {
    result = NeroTransportSendSyncMessageCreatingReply();
    if (!result)
    {
      return FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
    }
  }

  return result;
}

uint64_t octrp_setNeroProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  SerializedAtomDataBlockBufferForKeyValuePair = FigRemote_CreateSerializedAtomDataBlockBufferForKeyValuePair();
  if (!SerializedAtomDataBlockBufferForKeyValuePair)
  {
    return NeroTransportSendAsyncMessage();
  }

  return SerializedAtomDataBlockBufferForKeyValuePair;
}

uint64_t octrp_SetRateAndAnchorTime(uint64_t a1, void *a2, __int128 *a3, float a4, float a5)
{
  v17 = a5;
  sourceBytes = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  blockBufferOut = 0;
  v8 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x20uLL, *MEMORY[0x1E695E480], 0, 0, 0x20uLL, 1u, &blockBufferOut);
  if (v8 || (v8 = CMBlockBufferReplaceDataBytes(&sourceBytes, blockBufferOut, 0, 4uLL), v8) || (v8 = CMBlockBufferReplaceDataBytes(&v17, blockBufferOut, 4uLL, 4uLL), v8) || (v8 = CMBlockBufferReplaceDataBytes(a2, blockBufferOut, 8uLL, 0x18uLL), v8) || (v8 = NeroTransportSendAsyncMessage(), v8))
  {
    v9 = v8;
  }

  else
  {
    v11 = *(DerivedStorage + 152);
    if (v11)
    {
      v14 = *a2;
      v15 = a2[2];
      v12 = *a3;
      v13 = *(a3 + 2);
      FigRenderPipelineSetRateAndAnchorTime(v11, &v14, &v12, sourceBytes, v17);
    }

    v9 = 0;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v9;
}

uint64_t octvrp_PretendOutputIsLow(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = NeroTransportSendAsyncMessage();
  if (!v2)
  {
    v4 = *(DerivedStorage + 152);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v5)
      {
        v5(v4);
      }
    }
  }

  return v2;
}

uint64_t FigRenderPipelineSetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, float a4, float a5)
{
  VTable = CMBaseObjectGetVTable();
  v12 = *(VTable + 16);
  result = VTable + 16;
  v13 = *(v12 + 8);
  if (v13)
  {
    v16 = *a2;
    v17 = *(a2 + 2);
    v14 = *a3;
    v15 = *(a3 + 2);
    return v13(a1, &v16, &v14, a4, a5);
  }

  return result;
}

void octrp_sendSampleBuffersToNeroIfNeeded(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theBuffer = 0;
  v2 = (DerivedStorage + 64);
  if (*(DerivedStorage + 64) >= 1)
  {
    v3 = DerivedStorage;
    v4 = *MEMORY[0x1E6960518];
    v5 = *MEMORY[0x1E6960478];
    while (1)
    {
      v6 = CMBufferQueueDequeueIfDataReadyAndRetain(*(v3 + 32));
      if (!v6)
      {
LABEL_25:
        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        return;
      }

      v7 = v6;
      if (*(v3 + 72))
      {
        CMGetAttachment(v6, v4, 0);
        if (!FigCFEqual())
        {
          CFRelease(v7);
          goto LABEL_22;
        }

        v8 = *(v3 + 72);
        if (v8)
        {
          CFRelease(v8);
          *(v3 + 72) = 0;
        }
      }

      if (*(v3 + 184))
      {
        v9 = CMGetAttachment(v7, v5, 0);
        if (v9)
        {
          if (CFDictionaryGetValue(v9, @"timestamps"))
          {
            memset(&v16, 0, sizeof(v16));
            HostTimeClock = CMClockGetHostTimeClock();
            CMClockGetTime(&v16, HostTimeClock);
            memset(&v15, 0, sizeof(v15));
            v11 = CMClockGetHostTimeClock();
            v12 = *(v3 + 104);
            v14 = v16;
            CMSyncConvertTime(&v15, &v14, v11, v12);
            v14 = v15;
            CMClockConvertHostTimeToSystemUnits(&v14);
            FigHostTimeToNanoseconds();
            FigCFArrayAppendInt64();
          }
        }
      }

      if (!FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForSampleBuffer() || (CMRemoveAttachment(v7, @"PostNotificationWhenConsumed"), !FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForSampleBuffer()))
      {
        if (CMBlockBufferGetDataLength(theBuffer) > *(v3 + 96))
        {
          *(v3 + 96) = CMBlockBufferGetDataLength(theBuffer);
        }

        if (NeroTransportSendAsyncMessage())
        {
          CFRelease(v7);
          goto LABEL_25;
        }

        FigAtomicDecrement32();
        v13 = *(v3 + 160);
        if (v13)
        {
          CMBufferQueueEnqueue(v13, v7);
        }
      }

      CFRelease(v7);
      if (theBuffer)
      {
        CFRelease(theBuffer);
        theBuffer = 0;
      }

LABEL_22:
      if (*v2 <= 0)
      {
        goto LABEL_25;
      }
    }
  }
}

void octrp_reflectNeroNotification(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (!a3 || !FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer())
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v7 = *(DerivedStorage + 24);
    if (v7)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __octrp_reflectNeroNotification_block_invoke;
      block[3] = &__block_descriptor_tmp_23_3;
      block[4] = DerivedStorage;
      block[5] = a2;
      block[6] = a1;
      block[7] = v9;
      dispatch_async(v7, block);
    }

    else if (a2)
    {
      CFRelease(a2);
    }
  }
}

void __octrp_reflectNeroNotification_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void octrp_sourceQueueDataBecameReady(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __octrp_sourceQueueDataBecameReady_block_invoke;
  block[3] = &__block_descriptor_tmp_24_3;
  block[4] = a1;
  dispatch_async(v2, block);
}

void octrp_sourceQueueBuffersBecameAvailable(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __octrp_sourceQueueBuffersBecameAvailable_block_invoke;
  block[3] = &__block_descriptor_tmp_25_3;
  block[4] = a1;
  dispatch_async(v2, block);
}

opaqueCMBufferQueue *octrp_sourceQueueWasReset(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  NeroTransportSendAsyncMessage();
  *(DerivedStorage + 64) = 8;
  result = *(DerivedStorage + 160);
  if (result)
  {

    return CMBufferQueueReset(result);
  }

  return result;
}

void __octrp_inhibitOutputUntil_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);

  CFRelease(v5);
}

uint64_t IFFrat32FromCGFloat(double a1)
{
  v1 = ceil(a1);
  v2 = floor(a1);
  if (a1 >= 0.0)
  {
    v1 = v2;
  }

  v3 = v1;
  if (v1 == a1)
  {
    v6 = 0x100000000;
  }

  else
  {
    v4 = v3 ^ (v3 >> 31);
    if (v4 >= 0x100)
    {
      if (v4 >= 0x10000)
      {
        if (HIBYTE(v4))
        {
          v5 = 1;
        }

        else
        {
          v5 = 128;
        }
      }

      else
      {
        v5 = 0x8000;
      }
    }

    else
    {
      v5 = 0x800000;
    }

    v7 = v5 * a1;
    v8 = ceil(v7);
    v9 = floor(v7);
    if (v7 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    v3 = v10;
    v6 = v5 << 32;
  }

  return v6 | v3;
}

uint64_t IFFItemPropertyGetUnrotatedCLAP(int a1, int8x16_t *a2, int8x16_t *a3)
{
  if (a1 != 270)
  {
    if (a1 == 180)
    {
      v6 = a2[1].i32[2];
      if (v6 == 0x80000000)
      {
        IFFItemPropertyGetUnrotatedCLAP_cold_2(&v9);
        return v9;
      }

      v4 = a2 + 1;
      LODWORD(v3) = a2[1].i32[0];
      if (v3 == 0x80000000)
      {
        IFFItemPropertyGetUnrotatedCLAP_cold_1(&v9);
        return v9;
      }

      a2[1].i32[2] = -v6;
      goto LABEL_11;
    }

    if (a1 != 90)
    {
LABEL_12:
      result = 0;
      v8 = a2[1];
      *a3 = *a2;
      a3[1] = v8;
      return result;
    }
  }

  *a2 = vextq_s8(*a2, *a2, 8uLL);
  v3 = a2[1].i64[1];
  v4 = a2 + 1;
  v5 = a2[1].i64[0];
  a2[1].i64[1] = v5;
  a2[1].i64[0] = v3;
  if (a1 != 90)
  {
    LODWORD(v3) = v5;
    v4 = (a2 + 24);
    if (v5 == 0x80000000)
    {
      IFFItemPropertyGetUnrotatedCLAP_cold_3(&v9);
      return v9;
    }

    goto LABEL_11;
  }

  if (v3 != 0x80000000)
  {
LABEL_11:
    v4->i32[0] = -v3;
    goto LABEL_12;
  }

  IFFItemPropertyGetUnrotatedCLAP_cold_4(&v9);
  return v9;
}

uint64_t IFFItemPropertyGetUnmirroredCLAP(int a1, uint64_t a2, _OWORD *a3)
{
  if (!a1)
  {
    v3 = (a2 + 24);
    v4 = *(a2 + 24);
    if (v4 == 0x80000000)
    {
      IFFItemPropertyGetUnmirroredCLAP_cold_1(&v7);
      return v7;
    }

    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v3 = (a2 + 16);
    v4 = *(a2 + 16);
    if (v4 == 0x80000000)
    {
      IFFItemPropertyGetUnmirroredCLAP_cold_2(&v8);
      return v8;
    }

LABEL_6:
    *v3 = -v4;
  }

  result = 0;
  v6 = *(a2 + 16);
  *a3 = *a2;
  a3[1] = v6;
  return result;
}

uint64_t IFFItemPropertyApplyPropertiesToDimensions(uint64_t a1, void *a2, int a3, int *a4)
{
  v4 = HIDWORD(*a2);
  v5 = *a2 / v4;
  if (*a2 % v4)
  {
    IFFItemPropertyApplyPropertiesToDimensions_cold_1(&v10);
    return v10;
  }

  v6 = a2[1];
  v7 = v6 / SHIDWORD(v6);
  if (v6 % SHIDWORD(v6))
  {
    IFFItemPropertyApplyPropertiesToDimensions_cold_2(&v10);
    return v10;
  }

  if (v5 < 1 || v7 <= 0)
  {
    IFFItemPropertyApplyPropertiesToDimensions_cold_4(&v10);
    return v10;
  }

  if (v5 > a1 || v7 > HIDWORD(a1))
  {
    IFFItemPropertyApplyPropertiesToDimensions_cold_3(&v10);
    return v10;
  }

  HIDWORD(v8) = -1527099483 * a3 + 47721856;
  LODWORD(v8) = HIDWORD(v8);
  result = 0;
  if ((v8 >> 2) <= 0x16C16C0)
  {
    *a4 = v5;
    a4[1] = v7;
  }

  else
  {
    *a4 = v7;
    a4[1] = v5;
  }

  return result;
}

double sumOfIFFRat32(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if ((a2 ^ a1) >> 32)
  {
    v6 = a1 * SHIDWORD(a2) + a2 * SHIDWORD(a1);
    v7 = SHIDWORD(a2) * SHIDWORD(a1);
    if (v6 >= 0)
    {
      v8 = a1 * SHIDWORD(a2) + a2 * SHIDWORD(a1);
    }

    else
    {
      v8 = -v6;
    }

    if (v7)
    {
      if (v7 >= 0)
      {
        v9 = SHIDWORD(a2) * SHIDWORD(a1);
      }

      else
      {
        v9 = -v7;
      }

      do
      {
        v10 = v9;
        v9 = v8 % v9;
        v8 = v10;
      }

      while (v9);
    }

    else
    {
      v10 = v8;
    }

    v5 = v6 / v10;
    v4 = v7 / v10;
  }

  else
  {
    v4 = a1 >> 32;
    v5 = a1 + a2;
  }

  if (v4 == v4 && (v5 - 0x80000000) > 0xFFFFFFFEFFFFFFFFLL)
  {
    *a3 = v5;
    a3[1] = v4;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954448, "<<< IFF_Parsing >>>", 429, v3);
  }

  return result;
}

uint64_t IFFInformationSetTracksDetected(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 168);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 168) = 0;
  }

  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 168) = v5;
  return 0;
}

uint64_t IFFInformationCopyTracksDetected(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 168);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *a2 = v3;
  }

  return 0;
}

uint64_t IFFInformationSetBrands(void *a1, CFTypeRef cf, const void *a3, const void *a4)
{
  if (a1[18])
  {
    IFFInformationSetBrands_cold_1(&v11);
    return v11;
  }

  else if (a1[19])
  {
    IFFInformationSetBrands_cold_2(&v12);
    return v12;
  }

  else if (a1[20])
  {
    IFFInformationSetBrands_cold_3(&v13);
    return v13;
  }

  else
  {
    if (cf)
    {
      v7 = CFRetain(cf);
    }

    else
    {
      v7 = 0;
    }

    a1[18] = v7;
    if (a3)
    {
      v8 = CFRetain(a3);
    }

    else
    {
      v8 = 0;
    }

    a1[19] = v8;
    if (a4)
    {
      v9 = CFRetain(a4);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    a1[20] = v9;
  }

  return result;
}

uint64_t IFFInformationCopyMajorBrand(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *a2 = v3;
  }

  return 0;
}

uint64_t IFFInformationCopyMajorBrandsMinorVersion(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 152);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *a2 = v3;
  }

  return 0;
}

uint64_t IFFInformationCopyCompatibleBrands(uint64_t a1, CFArrayRef *a2)
{
  Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(a1 + 160));
  if (Copy)
  {
    v4 = Copy;
    if (a2)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      CFRelease(Copy);
      return 0;
    }
  }

  else
  {
    IFFInformationCopyCompatibleBrands_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t IFFInformationSetItemHandler(uint64_t a1, int a2)
{
  *(a1 + 176) &= a2 == 1885954932;
  *(a1 + 28) = a2;
  return 0;
}

uint64_t IFFInformationGetItemHandler(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 28);
  }

  return 0;
}

uint64_t IFFInformationSetPrimaryItemID(uint64_t a1, int a2)
{
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 68) = a2;
  *(a1 + 72) = -1;
  return 0;
}

_DWORD *IFFItemGetWithID(const __CFArray *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x228uLL);
  v7[10] = a2;
  Count = CFArrayGetCount(a1);
  v9.location = 0;
  v9.length = Count;
  v5 = CFArrayBSearchValues(a1, v9, v7, IFFItemComparator, 0);
  result = 0;
  if (v5 < Count)
  {
    result = CFArrayGetValueAtIndex(a1, v5);
    if (result[10] != a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t IFFItemGetOrCreateWithID(uint64_t a1, int a2, int a3, void *a4)
{
  cf = 0;
  v8 = *(a1 + 96);
  Count = CFArrayGetCount(v8);
  v10 = Count;
  if (!a3)
  {
    Count = IFFItemGetWithID(v8, a2);
    v12 = Count;
    cf = Count;
    if (Count)
    {
      goto LABEL_7;
    }
  }

  v11 = IFFItemCreate(Count, &cf);
  v12 = cf;
  if (v11)
  {
    v17 = v11;
    if (!cf)
    {
      return v17;
    }

    goto LABEL_12;
  }

  v13 = *MEMORY[0x1E695E480];
  *(cf + 10) = a2;
  v12[3] = a1;
  Mutable = CFArrayCreateMutable(v13, 0, 0);
  v12[7] = Mutable;
  if (!Mutable || (v15 = CFArrayCreateMutable(v13, 0, 0), (v12[65] = v15) == 0))
  {
    IFFItemGetOrCreateWithID_cold_1();
    v17 = v20;
LABEL_12:
    CFRelease(v12);
    return v17;
  }

  v21.location = 0;
  v21.length = v10;
  v16 = CFArrayBSearchValues(v8, v21, v12, IFFItemComparator, 0);
  CFArrayInsertValueAtIndex(v8, v16, v12);
  CFRelease(v12);
LABEL_7:
  v17 = 0;
  *a4 = v12;
  return v17;
}

const __CFArray *IFFInformationGetItemCount(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t IFFInformationGetItemAtIndex(uint64_t a1, CFIndex idx, void *a3, _DWORD *a4, _BYTE *a5)
{
  if (idx < 0)
  {
    goto LABEL_15;
  }

  Count = *(a1 + 96);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
LABEL_15:
    IFFInformationGetItemAtIndex_cold_1(&v14);
    return v14;
  }

  else if (a3 || a4 || a5)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), idx);
    v12 = ValueAtIndex;
    if (a3)
    {
      *a3 = ValueAtIndex;
    }

    if (a5)
    {
      *a5 = ValueAtIndex[16];
    }

    result = 0;
    if (a4)
    {
      *a4 = *(v12 + 10);
    }
  }

  else
  {
    IFFInformationGetItemAtIndex_cold_2(&v15);
    return v15;
  }

  return result;
}

uint64_t IFFInformationGetItemName(uint64_t a1, const char **a2)
{
  if (a2)
  {
    v2 = *(a1 + 504);
    if (!v2)
    {
      v2 = "";
    }

    *a2 = v2;
  }

  return 0;
}

const __CFArray *IFFInformationGetItemReferenceCount(uint64_t a1)
{
  result = *(a1 + 520);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t IFFInformationGetItemReferencesAtIndex(uint64_t a1, CFIndex idx, _DWORD *a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 520);
  if (v12)
  {
    CFArrayGetCount(v12);
    v12 = *(a1 + 520);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v12, idx);
  if (a3)
  {
    *a3 = *ValueAtIndex;
  }

  if (a4)
  {
    *a4 = ValueAtIndex[1];
  }

  if (a5)
  {
    *a5 = ValueAtIndex[2];
  }

  if (a6)
  {
    *a6 = ValueAtIndex[3];
  }

  return 0;
}

uint64_t IFFInformationGetItemReferencesOfType(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v6 = *(a1 + 520);
  if (!v6)
  {
    return 4294954512;
  }

  Count = CFArrayGetCount(v6);
  if (!Count)
  {
    return 4294954512;
  }

  v12 = Count;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 520), v13);
    if (*ValueAtIndex == a2)
    {
      break;
    }

    if (v12 == ++v13)
    {
      return 4294954512;
    }
  }

  if (a3)
  {
    *a3 = ValueAtIndex[1];
  }

  if (a4)
  {
    *a4 = ValueAtIndex[2];
  }

  v15 = 0;
  if (a5)
  {
    *a5 = ValueAtIndex[3];
  }

  return v15;
}

void IFFItemReferenceFree(void **a1)
{
  if (a1)
  {
    free(a1[2]);
    free(a1[3]);

    free(a1);
  }
}

const __CFArray *IFFInformationGetSharedItemPropertyCount(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t IFFInformationReserveSharedItemProperty(CFArrayRef *cf, int a2, CFArrayRef ***a3, CFIndex *a4)
{
  if (cf[13] || (v8 = CFGetAllocator(cf), Mutable = CFArrayCreateMutable(v8, 0, 0), (cf[13] = Mutable) != 0))
  {
    v10 = malloc_type_calloc(1uLL, 0x50uLL, 0x10B2040490ED450uLL);
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(cf[13]);
      CFArrayAppendValue(cf[13], v11);
      *v11 = cf;
      *(v11 + 2) = a2;
      v11[2] = Count;
      if (a3)
      {
        *a3 = v11;
      }

      result = 0;
      if (a4)
      {
        *a4 = Count;
      }
    }

    else
    {
      IFFInformationReserveSharedItemProperty_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    IFFInformationReserveSharedItemProperty_cold_2(&v15);
    return v15;
  }

  return result;
}

uint64_t IFFInformationSetItemPropertySpatialExtents(uint64_t a1, int a2, int a3)
{
  *(a1 + 40) = a2;
  *(a1 + 44) = a3;
  return 0;
}

uint64_t IFFInformationSetItemPropertyCleanAperture(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[5] = a2;
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  return 0;
}

uint64_t IFFInformationSetItemPropertyPixelInformation(uint64_t a1, size_t count, const void *a3)
{
  *(a1 + 40) = count;
  v5 = count;
  v6 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    free(*(a1 + 24));
    *(a1 + 24) = v7;
    *(a1 + 48) = v7;
    memcpy(v7, a3, v5);
    return 0;
  }

  else
  {
    IFFInformationSetItemPropertyPixelInformation_cold_1(&v9);
    return v9;
  }
}

uint64_t IFFInformationSetItemPropertyAVIFLayerSizes(_DWORD *a1, int a2, int a3, int a4)
{
  a1[10] = a2;
  a1[11] = a3;
  a1[12] = a4;
  return 0;
}

uint64_t IFFInformationSetItemPropertyExtrinsics(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, char a8, int a9, char a10, char a11)
{
  *(a1 + 40) = a2;
  *(a1 + 44) = a3;
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  *(a1 + 56) = a6;
  *(a1 + 60) = a7;
  *(a1 + 64) = a8;
  *(a1 + 68) = a9;
  *(a1 + 72) = a10;
  *(a1 + 73) = a11;
  return 0;
}

uint64_t IFFInformationSetItemPropertyIntrinsics(uint64_t a1, char a2, char a3, char a4, int a5, int a6, int a7, int a8, int a9, char a10)
{
  *(a1 + 60) = a2;
  *(a1 + 61) = a3;
  *(a1 + 62) = a4;
  *(a1 + 40) = a5;
  *(a1 + 44) = a6;
  *(a1 + 48) = a7;
  *(a1 + 52) = a8;
  *(a1 + 56) = a9;
  *(a1 + 63) = a10;
  return 0;
}

uint64_t IFFInformationGetItemPropertyByIndex(uint64_t a1, CFIndex a2, void *a3, _BYTE *a4, void *a5)
{
  if (a2 < 0 || CFArrayGetCount(*(a1 + 56)) <= a2)
  {
    IFFInformationGetItemPropertyByIndex_cold_1(&v13);
    return v13;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), a2);
    if (a3)
    {
      *a3 = *ValueAtIndex;
    }

    if (a4)
    {
      *a4 = ValueAtIndex[8];
    }

    v11 = 0;
    if (a5)
    {
      *a5 = *(*ValueAtIndex + 16);
    }
  }

  return v11;
}

uint64_t IFFInformationGetItemPropertyByType(uint64_t a1, int a2, void *a3, _BYTE *a4, void *a5)
{
  Count = CFArrayGetCount(*(a1 + 56));
  if (Count < 1)
  {
    return 4294954512;
  }

  v11 = Count;
  v12 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v12);
    if (*(*ValueAtIndex + 8) == a2)
    {
      break;
    }

    if (v11 == ++v12)
    {
      return 4294954512;
    }
  }

  if (a3)
  {
    *a3 = *ValueAtIndex;
  }

  if (a4)
  {
    *a4 = ValueAtIndex[8];
  }

  v14 = 0;
  if (a5)
  {
    *a5 = *(*ValueAtIndex + 16);
  }

  return v14;
}

uint64_t IFFInformationGetItemPropertyTypeForUUID(void *a1)
{
  v1 = &dword_1E74964F0;
  v2 = 6;
  while (1)
  {
    v3 = *(v1 - 1);
    v5 = *v3;
    v4 = v3[1];
    if (v5 == *a1 && v4 == a1[1])
    {
      break;
    }

    v1 += 4;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t IFFInformationGetCFUUIDBytesForItemPropertyType(int a1, _OWORD *a2)
{
  v2 = 6;
  for (i = &dword_1E74964F0; *i != a1; i += 4)
  {
    if (!--v2)
    {
      return 4294949526;
    }
  }

  v4 = *(i - 1);
  if (v4)
  {
    result = 0;
    *a2 = *v4;
    return result;
  }

  return 4294949526;
}

uint64_t IFFInformationGetSharedItemPropertyAtIndex(uint64_t a1, CFIndex idx, _DWORD *a3, void *a4)
{
  if (idx < 0)
  {
    goto LABEL_11;
  }

  Count = *(a1 + 104);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
LABEL_11:
    IFFInformationGetSharedItemPropertyAtIndex_cold_1(&v12);
    return v12;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 104), idx);
    if (ValueAtIndex)
    {
      v10 = ValueAtIndex;
      if (a3)
      {
        *a3 = ValueAtIndex[2];
      }

      result = 0;
      if (a4)
      {
        *a4 = v10;
      }
    }

    else
    {
      IFFInformationGetSharedItemPropertyAtIndex_cold_2(&v13);
      return v13;
    }
  }

  return result;
}

uint64_t IFFInformationSetItemPropertyIndexedColor(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, char a5)
{
  *(a1 + 40) = a2;
  *(a1 + 42) = a3;
  *(a1 + 44) = a4;
  *(a1 + 46) = a5;
  return 0;
}

uint64_t IFFInformationGetItemPropertySpatialExtents(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  if (a3)
  {
    *a3 = *(a1 + 44);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyRotationDegreesCCW(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyCleanAperture(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a2)
  {
    *a2 = a1[5];
  }

  if (a3)
  {
    *a3 = a1[6];
  }

  if (a4)
  {
    *a4 = a1[7];
  }

  if (a5)
  {
    *a5 = a1[8];
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyPixelInformation(uint64_t a1, _BYTE *a2, void *a3)
{
  if (a3)
  {
    *a3 = *(a1 + 48);
  }

  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyCodecConfiguration(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  if (a3)
  {
    *a3 = *(a1 + 48);
  }

  if (a4)
  {
    *a4 = *(a1 + 56);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyICCProfileData(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  if (a3)
  {
    *a3 = *(a1 + 48);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyIndexedColor(uint64_t a1, _WORD *a2, _WORD *a3, _WORD *a4, _BYTE *a5)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  if (a3)
  {
    *a3 = *(a1 + 42);
  }

  if (a4)
  {
    *a4 = *(a1 + 44);
  }

  if (a5)
  {
    *a5 = *(a1 + 46);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyAuxiliaryType(void *a1, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = a1[5];
  }

  if (a3)
  {
    *a3 = a1[6];
  }

  if (a4)
  {
    *a4 = a1[7];
  }

  return 0;
}

uint64_t IFFInformationSetItemBodyImageDerivationGrid(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  if (a3 >= 0x101)
  {
    IFFInformationSetItemBodyImageDerivationGrid_cold_2(&v8);
    return v8;
  }

  else if (a2 >= 0x101)
  {
    IFFInformationSetItemBodyImageDerivationGrid_cold_1(&v7);
    return v7;
  }

  else
  {
    result = 0;
    *(a1 + 288) = a3;
    *(a1 + 290) = a2;
    *(a1 + 292) = a4;
    *(a1 + 296) = a5;
    *(a1 + 272) = 1;
  }

  return result;
}

uint64_t IFFInformationSetItemBodyImageDerivationTonemap(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      IFFInformationSetItemBodyImageDerivationTonemap_cold_1(&v14);
    }

    else if (*(a2 + 12))
    {
      if (*(a2 + 20))
      {
        v2 = 0;
        v3 = (a2 + 60);
        while (1)
        {
          if (!*(v3 - 8))
          {
            IFFInformationSetItemBodyImageDerivationTonemap_cold_6(&v14);
            return v14;
          }

          if (!*(v3 - 6))
          {
            IFFInformationSetItemBodyImageDerivationTonemap_cold_5(&v14);
            return v14;
          }

          if (!*(v3 - 4))
          {
            IFFInformationSetItemBodyImageDerivationTonemap_cold_4(&v14);
            return v14;
          }

          if (!*(v3 - 2))
          {
            IFFInformationSetItemBodyImageDerivationTonemap_cold_3(&v14);
            return v14;
          }

          if (!*v3)
          {
            break;
          }

          if (*(a2 + 4))
          {
            v3 += 10;
            if (v2++ <= 1)
            {
              continue;
            }
          }

          v5 = 0;
          *(a1 + 288) = *a2;
          v6 = *(a2 + 16);
          v7 = *(a2 + 32);
          v8 = *(a2 + 64);
          *(a1 + 336) = *(a2 + 48);
          *(a1 + 352) = v8;
          *(a1 + 304) = v6;
          *(a1 + 320) = v7;
          v9 = *(a2 + 80);
          v10 = *(a2 + 96);
          v11 = *(a2 + 112);
          v12 = *(a2 + 128);
          *(a1 + 272) = 1;
          *(a1 + 400) = v11;
          *(a1 + 416) = v12;
          *(a1 + 368) = v9;
          *(a1 + 384) = v10;
          return v5;
        }

        IFFInformationSetItemBodyImageDerivationTonemap_cold_2(&v14);
      }

      else
      {
        IFFInformationSetItemBodyImageDerivationTonemap_cold_7(&v14);
      }
    }

    else
    {
      IFFInformationSetItemBodyImageDerivationTonemap_cold_8(&v14);
    }
  }

  else
  {
    IFFInformationSetItemBodyImageDerivationTonemap_cold_9(&v14);
  }

  return v14;
}

uint64_t IFFInformationSetItemBodyImageDerivationOverlay(uint64_t a1, void *a2, int a3, int a4, const void *a5, uint64_t a6)
{
  v11 = 8 * a6;
  v12 = malloc_type_malloc(8 * a6 + 8, 0x1000040BDFB0063uLL);
  if (v12)
  {
    v13 = v12;
    free(*(a1 + 280));
    *(a1 + 280) = v13;
    *(a1 + 288) = v13;
    *(a1 + 296) = v13 + 1;
    *v13 = *a2;
    memcpy(*(a1 + 296), a5, v11);
    result = 0;
    *(a1 + 304) = a3;
    *(a1 + 308) = a4;
    *(a1 + 272) = 1;
  }

  else
  {
    IFFInformationSetItemBodyImageDerivationOverlay_cold_1(&v15);
    return v15;
  }

  return result;
}

uint64_t IFFInformationSetItemBodyImageExifPayload(uint64_t a1, int a2)
{
  *(a1 + 288) = a2;
  *(a1 + 272) = 1;
  return 0;
}

uint64_t IFFInformationGetItemBodyImageDerivationGrid(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a3)
  {
    *a3 = *(a1 + 288);
  }

  if (a2)
  {
    *a2 = *(a1 + 290);
  }

  if (a4)
  {
    *a4 = *(a1 + 292);
  }

  if (a5)
  {
    *a5 = *(a1 + 296);
  }

  return 0;
}

uint64_t IFFInformationGetItemBodyImageDerivationOverlay(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  if (a2)
  {
    *a2 = *(a1 + 288);
  }

  if (a3)
  {
    *a3 = *(a1 + 304);
  }

  if (a4)
  {
    *a4 = *(a1 + 308);
  }

  if (a5)
  {
    *a5 = *(a1 + 296);
  }

  return 0;
}

uint64_t IFFInformationGetItemBodyImageDerivationTonemap(_OWORD *a1, _OWORD *a2)
{
  if (a2)
  {
    *a2 = a1[18];
    v2 = a1[19];
    v3 = a1[20];
    v4 = a1[22];
    a2[3] = a1[21];
    a2[4] = v4;
    a2[1] = v2;
    a2[2] = v3;
    v5 = a1[23];
    v6 = a1[24];
    v7 = a1[26];
    a2[7] = a1[25];
    a2[8] = v7;
    a2[5] = v5;
    a2[6] = v6;
  }

  return 0;
}

uint64_t IFFInformationGetItemExtents(uint64_t a1, _DWORD *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = *(a1 + 24);
  if (a2)
  {
    *a2 = *(a1 + 432);
  }

  if (a3)
  {
    *a3 = *(a1 + 440);
  }

  if (a4)
  {
    if (*(v6 + 48) && *(a1 + 432) == 1)
    {
      v7 = *(v6 + 56);
    }

    else
    {
      v7 = 0;
    }

    *a4 = v7;
  }

  if (a5)
  {
    *a5 = *(a1 + 448);
  }

  if (a6)
  {
    *a6 = *(a1 + 456);
  }

  return 0;
}

uint64_t IFFInformationSetItemDataOffset(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v7 = v2;
    v8 = v3;
    IFFInformationSetItemDataOffset_cold_1(&v6);
    return v6;
  }

  else
  {
    result = 0;
    *(a1 + 56) = a2;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t IFFItemGroupCreate(uint64_t a1, uint64_t *a2)
{
  if (sRegisterIFFItemGroupTypeOnce != -1)
  {
    IFFItemGroupCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a2 = v4;
  }

  else
  {
    IFFItemGroupCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t IFFInformationReservePictureFromItemIfNeeded(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  if (!v7)
  {
    v8 = *(a1 + 24);
    if (!*(v8 + 136))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      *(v8 + 136) = Mutable;
      if (!Mutable)
      {
        IFFInformationReservePictureFromItemIfNeeded_cold_2(&v19);
        v16 = v19;
        goto LABEL_22;
      }
    }

    v10 = malloc_type_calloc(1uLL, 0x50uLL, 0x10200409C0C7C1EuLL);
    if (!v10)
    {
      IFFInformationReservePictureFromItemIfNeeded_cold_1(&v18);
      v16 = v18;
      goto LABEL_22;
    }

    v7 = v10;
    *v10 = v8;
    v10[1] = a1;
    *(a1 + 32) = v10;
    if (*(a1 + 48) && !*(a1 + 64))
    {
      CFArrayInsertValueAtIndex(*(v8 + 136), *(v8 + 128), v10);
      ++*(v8 + 128);
    }

    else
    {
      CFArrayAppendValue(*(v8 + 136), v10);
    }
  }

  v11 = 0;
  v12 = *(v7[1] + 44);
  if (v12 > 1768912491)
  {
    v13 = v12 == 1953325424;
    v14 = 1768912492;
  }

  else
  {
    v13 = v12 == 1735551332;
    v14 = 1768187246;
  }

  if (v13 || v12 == v14)
  {
    v11 = *(a1 + 512);
  }

  v7[2] = v11;
  if (a2)
  {
    *a2 = v6;
  }

  v16 = 0;
  if (a3)
  {
    *a3 = v7;
  }

LABEL_22:
  IFFPictureRecordFree(0);
  return v16;
}

void IFFPictureRecordFree(void *a1)
{
  if (a1)
  {
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

    v6 = a1[7];
    if (v6)
    {
      CFRelease(v6);
      a1[7] = 0;
    }

    v7 = a1[8];
    if (v7)
    {
      CFRelease(v7);
      a1[8] = 0;
    }

    v8 = a1[9];
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

uint64_t IFFInformationGetPictureItem(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 8);
  }

  return 0;
}

uint64_t IFFInformationGetGroupByID(uint64_t a1, int a2, void *a3)
{
  v5 = 0;
  v6 = *(a1 + 112);
  while (1)
  {
    v7 = v6 ? CFArrayGetCount(v6) : 0;
    if (v5 >= v7)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v6, v5++);
    if (ValueAtIndex[4] == a2)
    {
      v9 = ValueAtIndex;
      result = 0;
      *a3 = v9;
      return result;
    }
  }

  return 4294949526;
}

uint64_t getParentOfIdentityPicture(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    getParentOfIdentityPicture_cold_1(&v11);
    return v11;
  }

  else
  {
    v3 = *(*(a1 + 8) + 520);
    if (v3 && (Count = CFArrayGetCount(v3), Count >= 1))
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 8) + 520), v7);
        if (*ValueAtIndex == 1684630887)
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 4294954513;
        }
      }

      if (ValueAtIndex[1] == 1)
      {
        v10 = *(*ValueAtIndex[3] + 32);
        if (v10)
        {
          result = 0;
          *a2 = v10;
        }

        else
        {
          getParentOfIdentityPicture_cold_3(&v13);
          return v13;
        }
      }

      else
      {
        getParentOfIdentityPicture_cold_2(&v12);
        return v12;
      }
    }

    else
    {
      return 4294954513;
    }
  }

  return result;
}

uint64_t IFFPictureCopyDerivation(uint64_t a1, __CFString **a2, CFTypeRef *a3, __CFDictionary **a4)
{
  v76 = *MEMORY[0x1E69E9840];
  value = 0;
  cf = 0;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0;
  v67 = 0;
  values = 0;
  v4 = *(*(a1 + 8) + 44);
  if (v4 == 1768187246 || v4 == 1953325424 || v4 == 1768912492)
  {
    if (*(a1 + 16))
    {
      IFFPictureCopyDerivation_cold_1(components);
      v16 = 0;
      v17 = 0;
      Mutable = 0;
LABEL_102:
      v19 = LODWORD(components[0]);
      goto LABEL_24;
    }

    v11 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      IFFPictureCopyDerivation_cold_13(components);
      goto LABEL_101;
    }

    v12 = *(*(a1 + 8) + 44);
    if (v12 != 1953325424)
    {
      if (v12 != 1768912492)
      {
        if (v12 != 1768187246)
        {
          v16 = 0;
          v17 = 0;
          v19 = 4294954513;
          goto LABEL_76;
        }

        ParentOfIdentityPicture = getParentOfIdentityPicture(a1, &values);
        if (!ParentOfIdentityPicture)
        {
          v14 = values;
          IFFItemPropertyGetOrderedTransformPropertiesForItem(*(values + 1), &v67, &v68, &v66 + 1, &v66);
          if (!ParentOfIdentityPicture)
          {
            if (*(v14[1] + 44) == 1768187246)
            {
              IFFPictureCopyDerivation_cold_12(components);
            }

            else
            {
              cf = CFArrayCreate(v11, &values, 1, 0);
              if (cf)
              {
                IFFPictureCopyPictureDimensionsDictionary(values);
                if (!ParentOfIdentityPicture)
                {
                  CFDictionarySetValue(Mutable, @"PictureDimensions", value);
                  *components = v68;
                  v75 = v69;
                  ParentOfIdentityPicture = createCleanApertureExtensionDictFromProperty(v11, components, &v70);
                  if (!ParentOfIdentityPicture)
                  {
                    CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D70], v70);
                    ParentOfIdentityPicture = FigCFDictionarySetInt();
                    if (!ParentOfIdentityPicture)
                    {
                      if (v66 == -1 || (ParentOfIdentityPicture = FigCFDictionarySetInt(), !ParentOfIdentityPicture))
                      {
                        v15 = kFigPictureProperty_DerivationType_Identity;
LABEL_71:
                        v36 = *v15;
                        if (*v15)
                        {
                          v36 = CFRetain(v36);
                        }

                        v16 = 0;
                        v17 = 0;
LABEL_74:
                        v19 = 0;
                        *a2 = v36;
LABEL_76:
                        *a3 = cf;
                        *a4 = Mutable;
                        cf = 0;
                        goto LABEL_77;
                      }
                    }
                  }
                }

                goto LABEL_88;
              }

              IFFPictureCopyDerivation_cold_11(components);
            }

            goto LABEL_101;
          }
        }

LABEL_88:
        v19 = ParentOfIdentityPicture;
        goto LABEL_89;
      }

      ParentOfIdentityPicture = _copyDerivationParentPicturesArray(a1, &cf);
      if (ParentOfIdentityPicture)
      {
        goto LABEL_88;
      }

      IFFPictureCopyPictureDimensionsDictionary(a1);
      if (ParentOfIdentityPicture)
      {
        goto LABEL_88;
      }

      v20 = *(a1 + 8);
      v21 = *(v20 + 80);
      if (v21[1] == *(v20 + 308) && *v21 == *(v20 + 304))
      {
        CFDictionarySetValue(Mutable, @"PictureDimensions", value);
        v22 = *(*(a1 + 8) + 520);
        if (v22 && (Count = CFArrayGetCount(v22), Count >= 1))
        {
          v24 = Count;
          v25 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 8) + 520), v25);
            if (*ValueAtIndex == 1684630887)
            {
              break;
            }

            if (v24 == ++v25)
            {
              goto LABEL_37;
            }
          }

          v27 = 2 * ValueAtIndex[1];
        }

        else
        {
LABEL_37:
          v27 = 0;
        }

        v16 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
        if (v16)
        {
          if (v27 >= 1)
          {
            v28 = 0;
            while (1)
            {
              appended = FigCFArrayAppendInt32();
              if (appended)
              {
                break;
              }

              if (v27 == ++v28)
              {
                goto LABEL_43;
              }
            }

            v19 = appended;
            CFRelease(v16);
            goto LABEL_89;
          }

LABEL_43:
          CFDictionarySetValue(Mutable, @"OverlayLayerOffsets", v16);
          v30 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          if (v30)
          {
            v31 = v30;
            v32 = vmovl_u16(**(*(a1 + 8) + 288));
            v33.i64[0] = v32.u32[2];
            v33.i64[1] = v32.u32[3];
            v34 = vcvtq_f64_u64(v33);
            v33.i64[0] = v32.u32[0];
            v33.i64[1] = v32.u32[1];
            v35 = vdupq_n_s64(0x40EFFFE000000000uLL);
            *components = vdivq_f64(vcvtq_f64_u64(v33), v35);
            v75 = vdivq_f64(v34, v35);
            v17 = CGColorCreate(v30, components);
            if (v17)
            {
              v19 = 0;
            }

            else
            {
              IFFPictureCopyDerivation_cold_9(&v73);
              v19 = v73;
            }

            CFRelease(v31);
            if (v19)
            {
              goto LABEL_24;
            }
          }

          else
          {
            IFFPictureCopyDerivation_cold_10(components);
            v17 = 0;
            v19 = LODWORD(components[0]);
            if (LODWORD(components[0]))
            {
              goto LABEL_24;
            }
          }

          CFDictionarySetValue(Mutable, @"OverlayCanvasFillColor", v17);
          v36 = @"OverlayDerivation";
          if (@"OverlayDerivation")
          {
            v36 = CFRetain(@"OverlayDerivation");
          }

          goto LABEL_74;
        }

        if (IFFPictureCopyDerivation_cold_8(components))
        {
          goto LABEL_43;
        }
      }

      else
      {
        IFFPictureCopyDerivation_cold_7(components);
      }

LABEL_101:
      v16 = 0;
      v17 = 0;
      goto LABEL_102;
    }

    ParentOfIdentityPicture = _copyDerivationParentPicturesArray(a1, &cf);
    if (ParentOfIdentityPicture)
    {
      goto LABEL_88;
    }

    IFFPictureCopyPictureDimensionsDictionary(a1);
    if (ParentOfIdentityPicture)
    {
      goto LABEL_88;
    }

    CFDictionarySetValue(Mutable, @"PictureDimensions", value);
    ParentOfIdentityPicture = FigCFDictionarySetInt();
    if (ParentOfIdentityPicture)
    {
      goto LABEL_88;
    }

    ParentOfIdentityPicture = FigCFDictionarySetInt();
    if (ParentOfIdentityPicture)
    {
      goto LABEL_88;
    }

    v37 = *MEMORY[0x1E695E4D0];
    if (*(*(a1 + 8) + 293))
    {
      v38 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v38 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"TonemapBaseColorIsWorkingColor", v38);
    CFDictionarySetValue(Mutable, @"TonemapForwardDirection", v37);
    ArrayFromRational32 = createArrayFromRational32(v11, (*(a1 + 8) + 296));
    if (ArrayFromRational32)
    {
      v40 = ArrayFromRational32;
      CFDictionarySetValue(Mutable, @"TonemapBaseHDRHeadroom", ArrayFromRational32);
      CFRelease(v40);
      v41 = createArrayFromRational32(v11, (*(a1 + 8) + 304));
      if (v41)
      {
        v42 = v41;
        CFDictionarySetValue(Mutable, @"TonemapAlternateHDRHeadroom", v41);
        CFRelease(v42);
        v43 = CFArrayCreateMutable(v11, 3, MEMORY[0x1E695E9C0]);
        if (v43)
        {
          v44 = v43;
          v61 = a2;
          v62 = a3;
          v63 = a4;
          v45 = 0;
          v64 = *(*(a1 + 8) + 292);
          v46 = 344;
          while (1)
          {
            v47 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!v47)
            {
              IFFPictureCopyDerivation_cold_3();
              goto LABEL_94;
            }

            v48 = v47;
            v49 = createArrayFromRational32(v11, (*(a1 + 8) + v46 - 32));
            if (!v49)
            {
              break;
            }

            v50 = v49;
            CFDictionarySetValue(v48, @"GainMapMin", v49);
            CFRelease(v50);
            v51 = createArrayFromRational32(v11, (*(a1 + 8) + v46 - 24));
            if (!v51)
            {
              break;
            }

            v52 = v51;
            CFDictionarySetValue(v48, @"GainMapMax", v51);
            CFRelease(v52);
            v53 = createArrayFromRational32(v11, (*(a1 + 8) + v46 - 16));
            if (!v53)
            {
              break;
            }

            v54 = v53;
            CFDictionarySetValue(v48, @"Gamma", v53);
            CFRelease(v54);
            v55 = createArrayFromRational32(v11, (*(a1 + 8) + v46 - 8));
            if (!v55)
            {
              break;
            }

            v56 = v55;
            CFDictionarySetValue(v48, @"BaseOffset", v55);
            CFRelease(v56);
            v57 = createArrayFromRational32(v11, (*(a1 + 8) + v46));
            if (!v57)
            {
              break;
            }

            v58 = v57;
            CFDictionarySetValue(v48, @"AlternateOffset", v57);
            CFRelease(v58);
            CFArrayAppendValue(v44, v48);
            CFRelease(v48);
            if (v64)
            {
              v46 += 40;
              if (v45++ < 2)
              {
                continue;
              }
            }

            CFDictionarySetValue(Mutable, @"TonemapChannelMetadata", v44);
            CFRelease(v44);
            a3 = v62;
            a4 = v63;
            a2 = v61;
            goto LABEL_70;
          }

          IFFPictureCopyDerivation_cold_2();
LABEL_94:
          v19 = LODWORD(components[0]);
          a3 = v62;
          a4 = v63;
          a2 = v61;
LABEL_95:
          if (!v19)
          {
LABEL_70:
            v15 = kFigPictureProperty_DerivationType_Tonemap;
            goto LABEL_71;
          }

LABEL_89:
          v16 = 0;
          v17 = 0;
          goto LABEL_24;
        }

        IFFPictureCopyDerivation_cold_4(components);
      }

      else
      {
        IFFPictureCopyDerivation_cold_5(components);
      }
    }

    else
    {
      IFFPictureCopyDerivation_cold_6(components);
    }

    v19 = LODWORD(components[0]);
    goto LABEL_95;
  }

  v16 = 0;
  v17 = 0;
  Mutable = 0;
  v19 = 4294954513;
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_77:
  if (value)
  {
    CFRelease(value);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v19;
}

uint64_t createCleanApertureExtensionDictFromProperty(const __CFAllocator *a1, char *valuePtr, CFDictionaryRef *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(*valuePtr);
  v7 = *valuePtr / v6;
  if (*valuePtr % v6 || (v8 = *(valuePtr + 1), v8 % SHIDWORD(v8)) || (v9 = *(valuePtr + 2), v9 % SHIDWORD(v9)) || (v10 = *(valuePtr + 3), v10 % SHIDWORD(v10)))
  {
    v22 = *MEMORY[0x1E69600F8];
    keys = *MEMORY[0x1E6960110];
    v36 = v22;
    v23 = *MEMORY[0x1E6960108];
    v37 = *MEMORY[0x1E6960100];
    v38 = v23;
    ArrayFromRational32 = createArrayFromRational32(a1, valuePtr);
    v15 = createArrayFromRational32(a1, valuePtr + 8);
    v16 = createArrayFromRational32(a1, valuePtr + 16);
    v24 = createArrayFromRational32(a1, valuePtr + 24);
    v18 = v24;
    if (ArrayFromRational32 && v15 && v16 && v24)
    {
      values[0] = ArrayFromRational32;
      values[1] = v15;
      values[2] = v16;
      values[3] = v24;
      v19 = MEMORY[0x1E695E9D8];
      v20 = MEMORY[0x1E695E9E8];
      v21 = values;
      goto LABEL_15;
    }

    createCleanApertureExtensionDictFromProperty_cold_1(&v32);
  }

  else
  {
    v11 = *MEMORY[0x1E6965D60];
    keys = *MEMORY[0x1E6965D80];
    v36 = v11;
    v12 = *MEMORY[0x1E6965D78];
    v37 = *MEMORY[0x1E6965D68];
    v38 = v12;
    v30 = v8 / SHIDWORD(v8);
    valuePtra = v7;
    v28 = v10 / SHIDWORD(v10);
    v29 = v9 / SHIDWORD(v9);
    v13 = *MEMORY[0x1E695E480];
    ArrayFromRational32 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtra);
    v15 = CFNumberCreate(v13, kCFNumberSInt32Type, &v30);
    v16 = CFNumberCreate(v13, kCFNumberSInt32Type, &v29);
    v17 = CFNumberCreate(v13, kCFNumberSInt32Type, &v28);
    v18 = v17;
    if (ArrayFromRational32 && v15 && v16 && v17)
    {
      v33[0] = ArrayFromRational32;
      v33[1] = v15;
      v33[2] = v16;
      v33[3] = v17;
      v19 = MEMORY[0x1E695E9D8];
      v20 = MEMORY[0x1E695E9E8];
      v21 = v33;
LABEL_15:
      v25 = CFDictionaryCreate(a1, &keys, v21, 4, v19, v20);
      v26 = 0;
      *a3 = v25;
LABEL_16:
      CFRelease(ArrayFromRational32);
      goto LABEL_17;
    }

    createCleanApertureExtensionDictFromProperty_cold_2(&v32);
  }

  v26 = v32;
  if (ArrayFromRational32)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v26;
}

const __CFArray *_copyDerivationParentPicturesArray(uint64_t a1, __CFArray **a2)
{
  if (*(a1 + 16))
  {
    _copyDerivationParentPicturesArray_cold_1(v14);
    return v14[0];
  }

  else
  {
    result = *(*(a1 + 8) + 520);
    if (result)
    {
      Count = CFArrayGetCount(result);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v6 = Count;
        v7 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 8) + 520), v7);
          if (*ValueAtIndex == 1684630887)
          {
            break;
          }

          if (v6 == ++v7)
          {
            return 0;
          }
        }

        v9 = ValueAtIndex;
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
        if (Mutable)
        {
          v11 = Mutable;
          if (*(v9 + 1) < 1)
          {
LABEL_13:
            result = 0;
            *a2 = v11;
          }

          else
          {
            v12 = 0;
            while (1)
            {
              v13 = *(*(*(v9 + 3) + 8 * v12) + 32);
              if (!v13)
              {
                break;
              }

              CFArrayAppendValue(v11, v13);
              if (++v12 >= *(v9 + 1))
              {
                goto LABEL_13;
              }
            }

            _copyDerivationParentPicturesArray_cold_2();
            return v14[1];
          }
        }

        else
        {
          _copyDerivationParentPicturesArray_cold_3(&v15);
          return v15;
        }
      }
    }
  }

  return result;
}

uint64_t IFFPictureCopyTileDimensionsDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  theArray = 0;
  if (!IFFItemIsPicture(*(a1 + 8)))
  {
    IFFPictureCopyTileDimensionsDictionary_cold_3(&v15);
    return v15;
  }

  v4 = IFFItemOutboundReferencesOfType(*(a1 + 8), &theArray);
  v5 = theArray;
  if (v4)
  {
    goto LABEL_13;
  }

  v13 = 0;
  if (CFArrayGetCount(theArray) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    getOutputDimensionsForItem(ValueAtIndex, &v13);
    if (!v4)
    {
      v7 = v13;
      v8 = HIDWORD(v13);
LABEL_8:
      v16.width = v7;
      v16.height = v8;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v16);
      if (DictionaryRepresentation)
      {
        v11 = 0;
        *a2 = DictionaryRepresentation;
        goto LABEL_10;
      }

      IFFPictureCopyTileDimensionsDictionary_cold_2(&v15);
      goto LABEL_17;
    }

LABEL_13:
    v11 = v4;
    goto LABEL_10;
  }

  v9 = *(*(a1 + 8) + 80);
  if (v9)
  {
    v7 = *v9;
    v8 = v9[1];
    goto LABEL_8;
  }

  IFFPictureCopyTileDimensionsDictionary_cold_1(&v15);
LABEL_17:
  v11 = v15;
LABEL_10:
  if (v5)
  {
    CFRelease(v5);
  }

  return v11;
}

uint64_t IFFItemIsPicture(uint64_t result)
{
  v4 = result;
  v5 = *(result + 44);
  LOBYTE(result) = 1;
  if (v5 <= 1635135536)
  {
    if (v5 <= 1634743415)
    {
      if (v5 != 1634742376 && v5 != 1634742888 && v5 != 1634743400)
      {
        goto LABEL_34;
      }

      return result;
    }

    v6 = (v5 - 1634755432) > 0xB || ((1 << (v5 - 104)) & 0x8C1) == 0;
    if (!v6 || (v5 - 1634759272) <= 6 && ((1 << (v5 - 104)) & 0x51) != 0)
    {
      return result;
    }

    v7 = 1634743416;
    goto LABEL_33;
  }

  if (v5 <= 1768187245)
  {
    if (v5 > 1735551331)
    {
      if (v5 == 1735551332)
      {
        return result;
      }

      v7 = 1752589105;
    }

    else
    {
      if (v5 == 1635135537)
      {
        return result;
      }

      v7 = 1635148593;
    }

    goto LABEL_33;
  }

  if (v5 <= 1785750886)
  {
    if (v5 == 1768187246)
    {
      return result;
    }

    v7 = 1768912492;
LABEL_33:
    if (v5 != v7)
    {
      goto LABEL_34;
    }

    return result;
  }

  if (v5 != 1785750887 && v5 != 1936484717)
  {
    if (v5 != 1953325424)
    {
LABEL_34:
      LOBYTE(result) = 0;
      return result;
    }

    if (!*(v4 + 80))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, v3);
    }
  }

  return result;
}

uint64_t IFFItemOutboundReferencesOfType(uint64_t a1, __CFArray **a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (Mutable)
  {
    v6 = Mutable;
    Count = CFArrayGetCount(*(a1 + 520));
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; v8 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 520), i);
        if (*ValueAtIndex == 1684630887)
        {
          v11 = ValueAtIndex;
          v12 = CFArrayCreate(v4, *(ValueAtIndex + 3), *(ValueAtIndex + 1), 0);
          if (!v12)
          {
            IFFItemOutboundReferencesOfType_cold_1();
            return v15;
          }

          v13 = v12;
          v17.length = v11[1];
          v17.location = 0;
          CFArrayAppendArray(v6, v12, v17);
          CFRelease(v13);
        }
      }
    }

    result = 0;
    *a2 = v6;
  }

  else
  {
    IFFItemOutboundReferencesOfType_cold_2(&v16);
    return v16;
  }

  return result;
}

void getOutputDimensionsForItem(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 256))
  {
    v4 = *(a1 + 260);
LABEL_3:
    *a2 = v4;
    return;
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0;
  IFFItemPropertyGetOrderedTransformPropertiesForItem(a1, &v10, &v8, &v7 + 1, &v7);
  if (!v5)
  {
    v6[0] = v8;
    v6[1] = v9;
    if (!IFFItemPropertyApplyPropertiesToDimensions(v10, v6, SHIDWORD(v7), &v10))
    {
      v4 = v10;
      *(a1 + 260) = v10;
      *(a1 + 256) = 1;
      goto LABEL_3;
    }
  }
}

uint64_t IFFPictureCopyTileGridDimensionsDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  if (!IFFItemIsPicture(*(a1 + 8)))
  {
    IFFPictureCopyTileGridDimensionsDictionary_cold_3(&v12);
    return v12;
  }

  v4 = *(a1 + 8);
  v5 = 1.0;
  v6 = 1.0;
  if (*(v4 + 44) == 1735551332)
  {
    if (!*(v4 + 272))
    {
      IFFPictureCopyTileGridDimensionsDictionary_cold_2(&v11);
      return v11;
    }

    LOWORD(v6) = *(v4 + 290);
    v6 = *&v6;
    LOWORD(v5) = *(v4 + 288);
    v5 = *&v5;
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&v6);
  if (DictionaryRepresentation)
  {
    v8 = DictionaryRepresentation;
    result = 0;
    *a2 = v8;
  }

  else
  {
    IFFPictureCopyTileGridDimensionsDictionary_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t createPixelAspectRatioExtensionDictFromIFFItemProperty(const __CFAllocator *a1, char *valuePtr, CFDictionaryRef *a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (!v7)
  {
    createPixelAspectRatioExtensionDictFromIFFItemProperty_cold_2(&v13);
    return v13;
  }

  v8 = v7;
  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, valuePtr + 4);
  if (!v9)
  {
    createPixelAspectRatioExtensionDictFromIFFItemProperty_cold_1();
    return v13;
  }

  v10 = v9;
  v11 = *MEMORY[0x1E6965F00];
  keys[0] = *MEMORY[0x1E6965EF0];
  keys[1] = v11;
  values[0] = v8;
  values[1] = v9;
  *a3 = CFDictionaryCreate(a1, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v8);
  CFRelease(v10);
  return 0;
}

uint64_t createFormatDescriptionForItem(const __CFAllocator *a1, uint64_t a2, CMVideoFormatDescriptionRef *a3)
{
  cf = 0;
  value = 0;
  theArray = 0;
  v37 = 0;
  if (!*(a2 + 80))
  {
    createFormatDescriptionForItem_cold_2(&v40);
LABEL_69:
    v12 = 0;
    v24 = 0;
    v22 = 0;
    v19 = 0;
    v9 = v40;
    goto LABEL_80;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    createFormatDescriptionForItem_cold_1(&v40);
    goto LABEL_69;
  }

  v7 = Mutable;
  createColorExtensionsDictFromItem(a1, a2, &v37);
  if (v8)
  {
    v9 = v8;
    if (v8 != -12845)
    {
      goto LABEL_78;
    }
  }

  if (v37)
  {
    FigCFDictionaryAddEntriesToDictionaryWithRecursion();
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v13 = *(a2 + 44);
  if (v13 != 1768187246 && v13 != 1735551332)
  {
    goto LABEL_7;
  }

  v14 = IFFItemOutboundReferencesOfType(a2, &theArray);
  if (v14)
  {
    v9 = v14;
LABEL_78:
    v12 = 0;
    v24 = 0;
    v22 = 0;
    v19 = 0;
    goto LABEL_79;
  }

  v10 = theArray;
  if (CFArrayGetCount(theArray) >= 1)
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v15);
      createColorExtensionsDictFromItem(a1, ValueAtIndex, &v37);
      if (v17)
      {
        break;
      }

      if (v37)
      {
        FigCFDictionaryAddEntriesToDictionaryWithRecursion();
        goto LABEL_8;
      }

      if (++v15 >= CFArrayGetCount(v10))
      {
        goto LABEL_8;
      }
    }

    v9 = v17;
    v19 = 0;
    v22 = 0;
    v24 = 0;
    v12 = 0;
    goto LABEL_59;
  }

LABEL_8:
  v11 = *(a2 + 120);
  if (v11)
  {
    v12 = CFDataCreate(a1, v11, 4);
    if (!v12)
    {
      v19 = 0;
      goto LABEL_72;
    }

    CFDictionaryAddValue(v7, *MEMORY[0x1E6960020], v12);
  }

  else
  {
    v12 = 0;
  }

  v18 = *(a2 + 128);
  if (!v18)
  {
    v19 = 0;
    goto LABEL_25;
  }

  v19 = CFDataCreate(a1, v18, 24);
  if (!v19)
  {
LABEL_72:
    v22 = 0;
    goto LABEL_73;
  }

  CFDictionaryAddValue(v7, *MEMORY[0x1E6960080], v19);
LABEL_25:
  v20 = *(a2 + 136);
  if (!v20)
  {
    v22 = 0;
    goto LABEL_30;
  }

  v21 = *v20;
  if ((v21 & 0x3C) != 0)
  {
    v22 = CFDataCreate(a1, v20, ((((v21 << 26) >> 31) & 0x18) + ((v21 >> 1) & 4) + ((v21 >> 2) & 4) + (v21 & 4)) | 1);
    if (v22)
    {
      CFDictionaryAddValue(v7, *MEMORY[0x1E6960018], v22);
LABEL_30:
      v23 = *(a2 + 144);
      if (!v23)
      {
        v24 = 0;
LABEL_34:
        v25 = *(a2 + 88);
        if (v25)
        {
          PixelAspectRatioExtensionDictFromIFFItemProperty = createPixelAspectRatioExtensionDictFromIFFItemProperty(a1, v25, &value);
          if (PixelAspectRatioExtensionDictFromIFFItemProperty)
          {
LABEL_70:
            v9 = PixelAspectRatioExtensionDictFromIFFItemProperty;
            goto LABEL_59;
          }

          CFDictionaryAddValue(v7, *MEMORY[0x1E6965EF8], value);
        }

        if (!*(a2 + 152))
        {
          goto LABEL_38;
        }

        createCleanApertureExtensionDictFromIFFItem(a1, a2, &cf);
        if (!PixelAspectRatioExtensionDictFromIFFItemProperty)
        {
          CFDictionaryAddValue(v7, *MEMORY[0x1E6965D70], cf);
LABEL_38:
          v34 = v19;
          v35 = v12;
          v27 = a3;
          if (*(a2 + 44) == 1785750887)
          {
            CFDictionaryAddValue(v7, *MEMORY[0x1E6965D00], *MEMORY[0x1E6965D20]);
          }

          v28 = *(a2 + 72);
          v29 = *(a2 + 80);
          if (v28)
          {
            goto LABEL_53;
          }

          v30 = *(a2 + 44);
          if (v30 != 1768187246 && v30 != 1735551332)
          {
LABEL_52:
            v28 = 0;
            goto LABEL_53;
          }

          LOBYTE(v40) = 0;
          if (v30 == 1735551332)
          {
            _tilesHaveSameBaseProperties();
            if (v31)
            {
              goto LABEL_58;
            }

            if (v40)
            {
LABEL_45:
              if (!v10)
              {
                v31 = IFFItemOutboundReferencesOfType(a2, &theArray);
                if (v31)
                {
LABEL_58:
                  v9 = v31;
                  v19 = v34;
                  v12 = v35;
                  goto LABEL_59;
                }

                v10 = theArray;
              }

              if (CFArrayGetCount(v10) >= 1)
              {
                v32 = 0;
                while (1)
                {
                  v28 = *(CFArrayGetValueAtIndex(v10, v32) + 9);
                  if (v28)
                  {
                    break;
                  }

                  if (++v32 >= CFArrayGetCount(v10))
                  {
                    goto LABEL_52;
                  }
                }

LABEL_53:
                if (CFDictionaryGetCount(v7))
                {
                  if (v28)
                  {
LABEL_55:
                    v31 = FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom();
                    goto LABEL_58;
                  }
                }

                else
                {
                  CFRelease(v7);
                  v7 = 0;
                  if (v28)
                  {
                    goto LABEL_55;
                  }
                }

                v31 = CMVideoFormatDescriptionCreate(a1, *(a2 + 44), *v29, v29[1], v7, v27);
                goto LABEL_58;
              }

              goto LABEL_52;
            }

            v30 = *(a2 + 44);
          }

          if (v30 != 1768187246)
          {
            goto LABEL_52;
          }

          goto LABEL_45;
        }

        goto LABEL_70;
      }

      v24 = CFDataCreate(a1, v23, 8);
      if (v24)
      {
        CFDictionaryAddValue(v7, *MEMORY[0x1E695FFF0], v24);
        goto LABEL_34;
      }

      goto LABEL_74;
    }

LABEL_73:
    v24 = 0;
LABEL_74:
    v9 = 4294954450;
    goto LABEL_59;
  }

  v22 = 0;
  v24 = 0;
  v9 = 4294954516;
LABEL_59:
  if (v7)
  {
LABEL_79:
    CFRelease(v7);
  }

LABEL_80:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v9;
}

const __CFArray *IFFPictureGetPictureThumbnailCount(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *IFFPictureGetPictureAuxiliaryImageCount(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *IFFPictureGetPictureExifCount(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *IFFPictureGetPictureXMPCount(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *IFFPictureGetPictureDebugMetadataCount(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *IFFPictureGetPictureCustomMetadataCount(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

double IFFPictureCopySampleLocation(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 44);
  if (v7 > 1768912491)
  {
    v8 = v7 == 1768912492;
    v9 = 1953325424;
  }

  else
  {
    v8 = v7 == 1735551332;
    v9 = 1768187246;
  }

  if (!v8 && v7 != v9)
  {
    return copyLocationFromItem(v6, 0, a2, a3, a4, a5, a6, 0);
  }

  return result;
}

BOOL __IFFInformationAddAndGetPictureItemFromPicture_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == *(a1 + 48) && (v2 = *(a2 + 56), v2 == *(a1 + 32)))
  {
    return memcmp(*(a2 + 48), *(a1 + 40), v2) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t IFFPictureTileAccessorCreate(uint64_t a1, void *a2)
{
  theArray = 0;
  if (!IFFItemIsPicture(*(a1 + 8)))
  {
    IFFPictureTileAccessorCreate_cold_11(&v39);
LABEL_52:
    v34 = v39;
    IFFPictureTileAccessorDispose(0);
    return v34;
  }

  if (*(a1 + 16))
  {
    IFFPictureTileAccessorCreate_cold_1(&v39);
    goto LABEL_52;
  }

  v4 = *(a1 + 8);
  if (!*(v4 + 80))
  {
    IFFPictureTileAccessorCreate_cold_10(&v39);
    goto LABEL_52;
  }

  v5 = IFFItemOutboundReferencesOfType(v4, &theArray);
  v6 = theArray;
  if (v5)
  {
    v34 = v5;
    goto LABEL_42;
  }

  Count = CFArrayGetCount(theArray);
  v8 = *(a1 + 8);
  v9 = *(v8 + 44);
  if (v9 == 1768912492)
  {
    v38 = 0;
    v10 = 1;
    v11 = 1;
    goto LABEL_22;
  }

  if (Count <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = Count;
  }

  if (v9 == 1953325424)
  {
    v38 = 0;
    v11 = 1;
    v10 = 1;
    goto LABEL_22;
  }

  if (Count >= 1)
  {
    if (v9 == 1735551332)
    {
      if (*(v8 + 272))
      {
        if (*(v8 + 288) && *(v8 + 290))
        {
          if (*(v8 + 290) * *(v8 + 288) == v11)
          {
            v12 = *(v8 + 80);
            if (*(v8 + 296) == v12[1] && *(v8 + 292) == *v12)
            {
              v10 = 0;
              v38 = (v8 + 288);
              goto LABEL_22;
            }

            IFFPictureTileAccessorCreate_cold_4(&v39);
          }

          else
          {
            IFFPictureTileAccessorCreate_cold_3(&v39);
          }
        }

        else
        {
          IFFPictureTileAccessorCreate_cold_5(&v39);
        }
      }

      else
      {
        IFFPictureTileAccessorCreate_cold_6(&v39);
      }
    }

    else
    {
      IFFPictureTileAccessorCreate_cold_2(&v39);
    }

    v13 = 0;
    goto LABEL_62;
  }

  v38 = 0;
  v10 = 1;
LABEL_22:
  v13 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040BEEDEA2AuLL);
  if (v13)
  {
    v13[8] = malloc_type_calloc(v11, 0x10uLL, 0x1000040451B5BE8uLL);
    v13[9] = malloc_type_calloc(v11, 8uLL, 0x2004093837F09uLL);
    v14 = *a1;
    if (*a1)
    {
      v14 = CFRetain(v14);
    }

    *v13 = v14;
    v13[1] = a1;
    v13[6] = v11;
    v13[7] = 0;
    if ((v10 & 1) == 0)
    {
      v36 = a2;
      v37 = v6;
      v39 = 0;
      v19 = *v38;
      if (*v38)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        LODWORD(v24) = v38[1];
        while (!v24)
        {
LABEL_39:
          v22 += v20;
          if (++v21 >= v19)
          {
            goto LABEL_40;
          }
        }

        v25 = 0;
        v26 = 0;
        v27 = 16 * v23;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v37, v23 + v25);
          getOutputDimensionsForItem(ValueAtIndex, &v39);
          if (v29)
          {
            break;
          }

          v30 = v39;
          v20 = HIDWORD(v39);
          if (v25 | v21)
          {
            if (*(v13 + 2) != __PAIR128__(HIDWORD(v39), v39))
            {
              IFFPictureTileAccessorCreate_cold_7(&v41);
              v34 = v41;
              goto LABEL_48;
            }
          }

          else
          {
            v13[4] = v39;
            v13[5] = v20;
          }

          v31 = (v13[8] + v27);
          *v31 = v26;
          v31[1] = v22;
          *(v13[9] + 8 * v23 + 8 * v25) = ValueAtIndex;
          v26 += v30;
          ++v25;
          v24 = v38[1];
          v27 += 16;
          if (v25 >= v24)
          {
            v19 = *v38;
            v23 += v25;
            goto LABEL_39;
          }
        }

        v34 = v29;
LABEL_48:
        v6 = v37;
        goto LABEL_43;
      }

LABEL_40:
      v6 = v37;
      v32 = *(v38 + 2);
      *&v33 = v32;
      *(&v33 + 1) = HIDWORD(v32);
      *(v13 + 1) = v33;
      a2 = v36;
      goto LABEL_41;
    }

    if (*(*(a1 + 8) + 80))
    {
      v15 = v13[8];
      *v15 = 0;
      v15[1] = 0;
      v16 = *(a1 + 8);
      *v13[9] = v16;
      v17 = *(v16 + 80);
      *&v18 = *v17;
      *(&v18 + 1) = HIDWORD(*v17);
      *(v13 + 1) = v18;
      *(v13 + 2) = v18;
LABEL_41:
      v34 = 0;
      *a2 = v13;
LABEL_42:
      v13 = 0;
      goto LABEL_43;
    }

    IFFPictureTileAccessorCreate_cold_8(&v39);
  }

  else
  {
    IFFPictureTileAccessorCreate_cold_9(&v39);
  }

LABEL_62:
  v34 = v39;
LABEL_43:
  IFFPictureTileAccessorDispose(v13);
  if (v6)
  {
    CFRelease(v6);
  }

  return v34;
}

void IFFPictureTileAccessorDispose(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[8];
    if (v3)
    {
      a1[8] = 0;
      free(v3);
    }

    v4 = a1[9];
    if (v4)
    {
      a1[9] = 0;
      free(v4);
    }

    free(a1);
  }
}

uint64_t IFFPictureTileAccessorCopySpatialRelationDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  keys[4] = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(*a1);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 72) + 8 * v5);
  v7 = *(v6 + 80);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v4;
  v9 = (*(a1 + 64) + 16 * v5);
  v35 = *v9;
  v10 = v9[1];
  v34 = v10;
  v11 = *(a1 + 24);
  *&v12 = *(a1 + 16);
  v13 = *&v12 - v35;
  LODWORD(v12) = *v7;
  v14 = v12;
  if (v13 >= v14)
  {
    v13 = v14;
  }

  valuePtr = v13;
  *&v15 = v11;
  v16 = *&v15 - v10;
  LODWORD(v15) = v7[1];
  v17 = v15;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v32 = v16;
  v18 = *(v6 + 152);
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = *v18 / v18[1];
  if (v19 > v14 || (v21 = v18 + 2, v20 = v18[2], v22 = v21[1], v23 = v20 / v22, v23 > v17))
  {
LABEL_25:
    IFFPictureTileAccessorCopySpatialRelationDictionary_cold_2();
    return v36;
  }

  if (v19 >= v13)
  {
    v24 = v13;
  }

  else
  {
    v24 = v19;
  }

  if (v23 >= v16)
  {
    v25 = v16;
  }

  else
  {
    v25 = v20 / v22;
  }

  v32 = v25;
  valuePtr = v24;
LABEL_16:
  keys[0] = @"Width";
  keys[1] = @"Height";
  keys[2] = @"HorizontalOffset";
  keys[3] = @"VerticalOffset";
  v26 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  values[1] = CFNumberCreate(v26, kCFNumberDoubleType, &v32);
  values[2] = CFNumberCreate(v26, kCFNumberDoubleType, &v35);
  values[3] = CFNumberCreate(v26, kCFNumberDoubleType, &v34);
  v27 = CFDictionaryCreate(v8, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v27)
  {
    v28 = 0;
    *a2 = v27;
  }

  else
  {
    IFFPictureTileAccessorCopySpatialRelationDictionary_cold_1(&v36);
    v28 = v36;
  }

  v29 = -1;
  v30 = values;
  do
  {
    if (*v30)
    {
      CFRelease(*v30);
      *v30 = 0;
    }

    ++v29;
    ++v30;
  }

  while (v29 < 3);
  return v28;
}

uint64_t IFFPictureTileAccessorCopyFormatDescription(uint64_t a1, CMVideoFormatDescriptionRef *a2)
{
  v3 = *(*(a1 + 72) + 8 * *(a1 + 56));
  v4 = CFGetAllocator(*a1);

  return createFormatDescriptionForItem(v4, v3, a2);
}

uint64_t IFFPictureTileAccessorStepCursor(uint64_t a1, int *a2)
{
  v2 = *(a1 + 56) + 1;
  if (v2 >= *(a1 + 48))
  {
    v3 = 0;
  }

  else
  {
    *(a1 + 56) = v2;
    v3 = 1;
  }

  *a2 = v3;
  return 0;
}

uint64_t IFFPictureTileAccessorGetTileLocation(uint64_t a1, void *a2, void *a3)
{
  v3 = (*(a1 + 64) + 16 * *(a1 + 56));
  *a2 = *v3;
  *a3 = v3[1];
  return 0;
}

void IFFPictureTileAccessorSeekCursorToLocation(void *a1, unint64_t a2, unint64_t a3)
{
  if (a1[2] <= a2)
  {
    IFFPictureTileAccessorSeekCursorToLocation_cold_1(&v15);
  }

  else if (a1[3] <= a3)
  {
    IFFPictureTileAccessorSeekCursorToLocation_cold_2(&v15);
  }

  else if (a1[6] >= 1)
  {
    v6 = 0;
    for (i = 0; i < a1[6]; ++i)
    {
      v8 = a1[8];
      v9 = *(a1[9] + 8 * i);
      v15 = 0;
      getOutputDimensionsForItem(v9, &v15);
      if (v10)
      {
        break;
      }

      v11 = *(v8 + v6);
      if (v11 <= a2)
      {
        v12 = *(v8 + v6 + 8);
        v13 = v11 + v15 <= a2 || v12 > a3;
        if (!v13 && v12 + HIDWORD(v15) > a3)
        {
          a1[7] = i;
          return;
        }
      }

      v6 += 16;
    }
  }
}

uint64_t IFFItemCreate(uint64_t a1, uint64_t *a2)
{
  if (sRegisterIFFItemTypeOnce != -1)
  {
    IFFItemCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a2 = v4;
  }

  else
  {
    IFFItemCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t IFFItemInformationCreate(uint64_t a1, uint64_t *a2)
{
  if (sRegisterIFFItemInformationTypeOnce != -1)
  {
    IFFItemInformationCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *(v4 + 176) = 1;
    *(v4 + 88) = 0;
    *a2 = v4;
  }

  else
  {
    IFFItemInformationCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t IFFItemComparator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  v4 = v2 >= v3;
  v5 = v2 == v3;
  v6 = -1;
  if (v4)
  {
    v6 = 1;
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t IFFItemInboundReferencesOfType(uint64_t a1, int a2, uint64_t (*a3)(_BYTE *), __CFArray **a4)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = *(a1 + 528);
    if (v10)
    {
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v12 = Count;
        for (i = 0; i != v12; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 528), i);
          v15 = CFArrayGetValueAtIndex(*(a1 + 536), i);
          v16 = ValueAtIndex[16];
          v17 = a3(ValueAtIndex);
          if (ValueAtIndex == a1)
          {
            v18 = 0;
          }

          else
          {
            v18 = v16;
          }

          v19 = v17 & v18 & 1;
          if (v15 == a2 && v19 != 0)
          {
            CFArrayAppendValue(v9, ValueAtIndex);
          }
        }
      }
    }

    result = 0;
    *a4 = v9;
  }

  else
  {
    IFFItemInboundReferencesOfType_cold_1(&v22);
    return v22;
  }

  return result;
}

BOOL IFFItemIsXMPPayload(uint64_t a1)
{
  result = 0;
  if (*(a1 + 44) == 1835625829)
  {
    if (*(a1 + 464))
    {
      v1 = *(a1 + 472);
      if (v1)
      {
        if (!strcmp(v1, "application/rdf+xml"))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL IFFItemIsDebugMetadataPayload(uint64_t a1)
{
  result = 0;
  if (*(a1 + 44) == 1970432288)
  {
    if (*(a1 + 488))
    {
      v1 = *(a1 + 496);
      if (v1)
      {
        if (!strcmp(v1, "urn:uuid:0AFF93BC-356D-4BF7-8B5F-73037F2F1E5D"))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL IFFItemIsCustomMetadataPayload(uint64_t a1)
{
  result = 0;
  if (*(a1 + 44) == 1970432288)
  {
    if (*(a1 + 488))
    {
      v1 = *(a1 + 496);
      if (v1)
      {
        if (strcmp(v1, "urn:uuid:0AFF93BC-356D-4BF7-8B5F-73037F2F1E5D"))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t _propertyIsEssential(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    Count = *(a1 + 56);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v4++);
    if (*ValueAtIndex + 40 == a2)
    {
      return ValueAtIndex[8];
    }
  }

  return 0;
}

BOOL ___setStereoMetadataSingleIntegerHelper_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 == 19)
  {
    v3 = *(a2 + 40);
    return *(a1 + 32) == v3;
  }

  if (v2 == 16 || v2 == 15)
  {
    v3 = *(a2 + 40);
    return *(a1 + 32) == v3;
  }

  return 0;
}

double _cfArrayGetSizeLimitedInt32IfPresent(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (FigCFArrayGetInt64AtIndex())
  {
    *a4 = 0;
  }

  else
  {
    emitter = fig_log_get_emitter();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294949526, "<<< IFF_Parsing >>>", 5894, v4);
  }

  return result;
}

double _cfDictionaryGetSizeLimitedInt32IfPresent(uint64_t a1, uint64_t a2, _DWORD *a3, _BYTE *a4)
{
  *a4 = FigCFDictionaryGetInt64IfPresent();
  *a3 = 0;
  return result;
}

BOOL ___setStereoMetadataIntrinsicsExtrinsicsHelper_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 18)
  {
    return a2[5] == *(a1 + 72) && a2[6] == *(a1 + 80) && a2[7] == *(a1 + 88);
  }

  return v2 == 17 && memcmp(a2 + 5, (a1 + 36), 0x24uLL) == 0;
}

uint64_t _assignSharedHDRMetadataPropertiesToItem(const __CFArray *a1, uint64_t a2)
{
  if (CFArrayGetCount(a1) < 1)
  {
    return 0;
  }

  _assignSharedHDRMetadataPropertiesToItem_cold_1(a2, a1, &v5);
  return v5;
}

BOOL __iffpcbAddPictureHelper_block_invoke_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = strlen(*(a1 + 32));
  }

  else
  {
    v5 = 0;
  }

  result = strlen(*(a2 + 40)) == v5 && (v6 = *(a2 + 56), v6 == *(a1 + 40)) && (!v5 || !strcmp(*(a2 + 40), v4)) && (!v6 || !memcmp(*(a2 + 48), *(a1 + 48), v6));
  return result;
}

void _getHDRMetadataProperty(uint64_t a1, CFDataRef theData, CFArrayRef *a3, CFArrayRef ***a4)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = Length;
  if (a1 > 7)
  {
    if (a1 == 9)
    {
      if (Length != 8)
      {
        return;
      }

      v11 = v18;
      _getHDRMetadataProperty_cold_2(v18, BytePtr);
    }

    else
    {
      if (_getHDRMetadataProperty_cold_5(BytePtr, Length, &v22))
      {
        return;
      }

      v11 = v19;
      _getHDRMetadataProperty_cold_1(v19, v10, BytePtr);
    }
  }

  else if (a1 == 6)
  {
    if (Length != 4)
    {
      return;
    }

    v11 = v21;
    _getHDRMetadataProperty_cold_4(v21, BytePtr);
  }

  else
  {
    if (Length != 24)
    {
      return;
    }

    v11 = v20;
    _getHDRMetadataProperty_cold_3(v20, BytePtr);
  }

  _getSharedPropertyOfTypeWithComparator(a3, a1, a4, v11, v12, v13, v14, v15, v17, v18[0], SHIDWORD(v18[0]), v18[1], v18[2], v18[3], v18[4], v18[5], v19[0], v19[1], v19[2], v19[3], v19[4]);
  if (v16)
  {
    if (!IFFInformationReserveSharedItemProperty(a3, a1, a4, 0))
    {
      IFFInformationSetItemPropertyHDRMetaData(*a4, BytePtr, v10);
    }
  }
}

uint64_t RegisterIFFItemType()
{
  result = _CFRuntimeRegisterClass();
  sIFFItemID = result;
  return result;
}

void FinalizeIFFItem(uint64_t a1)
{
  v2 = *(a1 + 520);
  if (v2)
  {
    if (CFArrayGetCount(v2) >= 1)
    {
      v3 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 520), v3);
        IFFItemReferenceFree(ValueAtIndex);
        ++v3;
      }

      while (v3 < CFArrayGetCount(*(a1 + 520)));
    }

    v5 = *(a1 + 520);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 520) = 0;
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    if (CFArrayGetCount(v6) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = CFArrayGetValueAtIndex(*(a1 + 56), v7);
        free(v8);
        ++v7;
      }

      while (v7 < CFArrayGetCount(*(a1 + 56)));
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 56) = 0;
    }
  }

  v10 = *(a1 + 224);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 224) = 0;
  }

  v11 = *(a1 + 528);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 528) = 0;
  }

  v12 = *(a1 + 536);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 536) = 0;
  }

  v13 = *(a1 + 456);
  if (v13)
  {
    *(a1 + 456) = 0;
    free(v13);
  }

  v14 = *(a1 + 280);
  if (v14)
  {
    *(a1 + 280) = 0;
    free(v14);
  }

  v15 = *(a1 + 472);
  if (v15)
  {
    *(a1 + 472) = 0;
    free(v15);
  }

  v16 = *(a1 + 480);
  if (v16)
  {
    *(a1 + 480) = 0;
    free(v16);
  }

  v17 = *(a1 + 496);
  if (v17)
  {
    *(a1 + 496) = 0;
    free(v17);
  }

  v18 = *(a1 + 504);
  if (v18)
  {
    *(a1 + 504) = 0;
    free(v18);
  }

  v19 = *(a1 + 544);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 544) = 0;
  }
}

uint64_t RegisterIFFItemGroupType()
{
  result = _CFRuntimeRegisterClass();
  sIFFItemGroupID = result;
  return result;
}

double InitIFFItemGroup(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FinalizeIFFItemGroup(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }
}

uint64_t RegisterIFFItemInformationType()
{
  result = _CFRuntimeRegisterClass();
  sIFFItemInformationID = result;
  return result;
}

double InitIFFItemInformation(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
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

void FinalizeIFFItemInformation(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    if (CFArrayGetCount(v2) >= 1)
    {
      v3 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 136), v3);
        IFFPictureRecordFree(ValueAtIndex);
        ++v3;
      }

      while (v3 < CFArrayGetCount(*(a1 + 136)));
    }

    v5 = *(a1 + 136);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 136) = 0;
    }
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    if (CFArrayGetCount(v6) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = CFArrayGetValueAtIndex(*(a1 + 104), v7);
        if (v8)
        {
          v9 = v8;
          free(*(v8 + 3));
          v10 = v9[4];
          if (v10)
          {
            CFRelease(v10);
          }

          free(v9);
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(*(a1 + 104)));
    }

    v11 = *(a1 + 104);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 104) = 0;
    }
  }

  v12 = *(a1 + 96);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 96) = 0;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 16) = 0;
  }

  v14 = *(a1 + 144);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 144) = 0;
  }

  v15 = *(a1 + 152);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 152) = 0;
  }

  v16 = *(a1 + 160);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 160) = 0;
  }

  v17 = *(a1 + 168);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 168) = 0;
  }

  v18 = *(a1 + 112);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 112) = 0;
  }
}

uint64_t OUTLINED_FUNCTION_19_45(uint64_t a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

double OUTLINED_FUNCTION_24_33@<D0>(uint64_t a1@<X8>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *v16;
  v19 = v16[2];
  v20 = *(a1 + 40);

  return IFFInformationAssignSharedItemPropertyByIndex(v18, v19, 1, 1, v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

double OUTLINED_FUNCTION_26_35@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(a3 + 40);

  return IFFInformationAssignSharedItemPropertyByIndex(a1, a2, 1, 1, v19, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

double OUTLINED_FUNCTION_27_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return IFFInformationReserveItemExtentTable(v20, a2, 1, 0, 1, 0, 0, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void OUTLINED_FUNCTION_37_28(__CFArray *a1)
{
  v4.location = 0;
  v4.length = v2;

  CFArrayAppendArray(a1, v1, v4);
}

double OUTLINED_FUNCTION_39_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 40);

  return IFFInformationAssignSharedItemPropertyByIndex(a1, a2, 1, 0, v22, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_44_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v20 = va_arg(va1, void);

  return IFFInformationGetItemReferencesOfType(v17, 1684630887, va, 0, va1);
}

void *OUTLINED_FUNCTION_45_19()
{

  return malloc_type_calloc(1uLL, 0x20uLL, 0x1090040157183C6uLL);
}

CFIndex OUTLINED_FUNCTION_50_16(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CFArrayRef theArray)
{

  return CFArrayGetCount(theArray);
}

uint64_t OUTLINED_FUNCTION_51_22@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

double OUTLINED_FUNCTION_55_20(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{

  return _cfDictionaryGetSizeLimitedInt32IfPresent(v25, a2, a3, &a25);
}

uint64_t OUTLINED_FUNCTION_65_14@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 + 64) = a1;

  return IFFInformationReservePictureFromItemIfNeeded(v10, 0, va);
}

uint64_t OUTLINED_FUNCTION_66_13(const __CFString *a1)
{

  return CFStringGetCString(a1, v2, v1, 0x8000100u);
}

CFNumberRef OUTLINED_FUNCTION_68_13(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberDoubleType, a3);
}

CFStringRef OUTLINED_FUNCTION_69_10(const __CFAllocator *a1, const char *a2)
{

  return CFStringCreateWithCString(a1, a2, 0x8000100u);
}

uint64_t OUTLINED_FUNCTION_70_12(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *), __CFArray **a4)
{

  return IFFItemInboundReferencesOfType(a1, 1667527523, a3, a4);
}

uint64_t FigPlayerInterstitialEventCreate(uint64_t a1, const void *a2, __int128 *a3, const void *a4, const __CFArray *a5, const void *a6, int a7, int a8, char a9, char a10, char a11, __int128 *a12, __int128 *a13, int a14, char a15, char a16, const __CFDictionary *a17, uint64_t *a18)
{
  if (a18)
  {
    v24 = *MEMORY[0x1E695E480];
    MEMORY[0x19A8D3660](&FigPlayerInterstitialEventGetTypeID_sFigPlayerInterstitialEventRegisterOnce, figPlayerInterstitialEvent_initOnce);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v26 = Instance;
      *(Instance + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (a2)
      {
        v27 = CFRetain(a2);
      }

      else
      {
        v27 = 0;
      }

      *(v26 + 24) = v27;
      v28 = *a3;
      *(v26 + 48) = *(a3 + 2);
      *(v26 + 32) = v28;
      if (a4)
      {
        v29 = CFRetain(a4);
      }

      else
      {
        v29 = 0;
      }

      *(v26 + 56) = v29;
      v30 = MEMORY[0x1E6960C70];
      *(v26 + 64) = *MEMORY[0x1E6960C70];
      *(v26 + 80) = *(v30 + 16);
      v42 = a2;
      if (a5)
      {
        Copy = CFArrayCreateCopy(v24, a5);
      }

      else
      {
        Copy = 0;
      }

      *(v26 + 88) = Copy;
      v32 = a6;
      if (a6)
      {
        v32 = CFRetain(a6);
      }

      *(v26 + 96) = v32;
      *(v26 + 104) = a7;
      *(v26 + 108) = a8;
      *(v26 + 112) = a9;
      *(v26 + 113) = a10;
      *(v26 + 114) = a11;
      v33 = *a12;
      *(v26 + 132) = *(a12 + 2);
      *(v26 + 116) = v33;
      v34 = *a13;
      *(v26 + 156) = *(a13 + 2);
      *(v26 + 140) = v34;
      v35 = MEMORY[0x1E6960CC0];
      *(v26 + 304) = *MEMORY[0x1E6960CC0];
      *(v26 + 320) = *(v35 + 16);
      *(v26 + 208) = FigSimpleMutexCreate();
      *(v26 + 440) = a14;
      *(v26 + 444) = a15;
      *(v26 + 445) = a16;
      *(v26 + 448) = -1;
      v36 = MEMORY[0x1E6960C98];
      v37 = *(MEMORY[0x1E6960C98] + 16);
      *(v26 + 328) = *MEMORY[0x1E6960C98];
      *(v26 + 344) = v37;
      *(v26 + 360) = *(v36 + 32);
      v38 = v24;
      if (a17)
      {
        v39 = CFDictionaryCreateCopy(v24, a17);
      }

      else
      {
        v39 = CFDictionaryCreate(v24, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      *(v26 + 192) = v39;
      if (!v42)
      {
        v40 = CFUUIDCreate(v24);
        *(v26 + 24) = CFUUIDCreateString(v38, v40);
        if (v40)
        {
          CFRelease(v40);
        }
      }

      result = 0;
      *a18 = v26;
    }

    else
    {
      FigPlayerInterstitialEventCreate_cold_1(&v44);
      return v44;
    }
  }

  else
  {
    FigPlayerInterstitialEventCreate_cold_2();
    return 0;
  }

  return result;
}

uint64_t FigPlayerInterstitialEventCreateFromDictionary(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  value = 0;
  if (!a2)
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_7();
    return 0;
  }

  if (!a3)
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_6();
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigPlayerInterstitialEventGetTypeID_sFigPlayerInterstitialEventRegisterOnce, figPlayerInterstitialEvent_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_5(&at);
    return LODWORD(at);
  }

  v7 = Instance;
  *(Instance + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v7 + 208) = FigSimpleMutexCreate();
  if (!CFDictionaryGetValueIfPresent(a2, @"identifier", (v7 + 24)))
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_4();
    return 0;
  }

  v8 = *(v7 + 24);
  if (v8)
  {
    CFRetain(v8);
  }

  at = 0.0;
  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
  if (!(CMTimeIfPresent | DoubleIfPresent))
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_3();
    return 0;
  }

  if (DoubleIfPresent)
  {
    *(v7 + 56) = CFDateCreate(v5, at);
  }

  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeRangeIfPresent();
  FigCFDictionaryGetValueIfPresent();
  v11 = *(v7 + 424);
  if (v11)
  {
    CFRetain(v11);
  }

  if (!FigCFDictionaryGetInt64IfPresent())
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_2();
    return 0;
  }

  *(v7 + 104) = 0;
  if (FigCFDictionaryGetInt64IfPresent())
  {
    *(v7 + 108) = 0;
  }

  if (FigCFDictionaryGetInt64IfPresent())
  {
    *(v7 + 440) = 0;
  }

  v12 = CFDictionaryGetValue(a2, @"PreRoll");
  v13 = *MEMORY[0x1E695E4D0];
  *(v7 + 112) = v12 == *MEMORY[0x1E695E4D0];
  *(v7 + 113) = CFDictionaryGetValue(a2, @"PostRoll") == v13;
  *(v7 + 114) = CFDictionaryGetValue(a2, @"CueOnce") == v13;
  *(v7 + 444) = CFDictionaryGetValue(a2, @"SupplementsPrimaryContent") == v13;
  *(v7 + 445) = CFDictionaryGetValue(a2, @"ContentMayVary") == v13;
  if (CFDictionaryGetValueIfPresent(a2, @"ExtraAttributes", (v7 + 192)))
  {
    v14 = *(v7 + 192);
    if (v14)
    {
      CFRetain(v14);
    }
  }

  else
  {
    *(v7 + 192) = CFDictionaryCreate(v5, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  CFDictionaryGetValueIfPresent(a2, @"assetListURL", &value);
  if (value)
  {
    *(v7 + 96) = CFURLCreateWithString(v5, value, 0);
  }

  v15 = CFDictionaryGetValue(a2, @"URLs");
  if (v15 && (v16 = v15, Count = CFArrayGetCount(v15), Count >= 1))
  {
    v18 = Count;
    v19 = 0;
    v20 = MEMORY[0x1E695E9C0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, v19);
      v22 = ValueAtIndex ? CFURLCreateWithString(v5, ValueAtIndex, 0) : 0;
      Mutable = *(v7 + 88);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v5, 0, v20);
        *(v7 + 88) = Mutable;
        if (!Mutable)
        {
          break;
        }
      }

      CFArrayAppendValue(Mutable, v22);
      if (v22)
      {
        CFRelease(v22);
      }

      if (v18 == ++v19)
      {
        goto LABEL_34;
      }
    }

    FigPlayerInterstitialEventCreateFromDictionary_cold_1(&v29);
    return v29;
  }

  else
  {
LABEL_34:
    FigCFDictionaryGetCFIndexIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetValueIfPresent();
    FigCFDictionaryGetValueIfPresent();
    v24 = *(v7 + 296);
    if (v24)
    {
      CFRetain(v24);
    }

    v25 = *(v7 + 200);
    if (v25)
    {
      CFRetain(v25);
    }

    result = 0;
    *a3 = v7;
  }

  return result;
}

__CFDictionary *FigPlayerInterstitialEventCopyAsDictionary(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigSimpleMutexLock();
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"identifier", *(a1 + 24));
    if (*(a1 + 44))
    {
      FigCFDictionarySetCMTime();
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      MEMORY[0x19A8CCD90](v8, v6, v7);
      FigCFDictionarySetDouble();
    }

    if (*(a1 + 128))
    {
      FigCFDictionarySetCMTime();
    }

    if (*(a1 + 76))
    {
      FigCFDictionarySetCMTime();
    }

    if (*(a1 + 152))
    {
      FigCFDictionarySetCMTime();
    }

    FigCFDictionarySetCMTime();
    FigCFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"ExtraAttributes", *(a1 + 192));
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    v9 = MEMORY[0x1E695E4D0];
    if (*(a1 + 112))
    {
      CFDictionarySetValue(Mutable, @"PreRoll", *MEMORY[0x1E695E4D0]);
    }

    if (*(a1 + 113))
    {
      CFDictionarySetValue(Mutable, @"PostRoll", *v9);
    }

    if (*(a1 + 114))
    {
      CFDictionarySetValue(Mutable, @"CueOnce", *v9);
    }

    v10 = *(a1 + 96);
    if (v10)
    {
      v11 = CFURLCopyAbsoluteURL(v10);
      if (v11)
      {
        v12 = v11;
        v13 = CFURLGetString(v11);
        CFDictionarySetValue(Mutable, @"assetListURL", v13);
        CFRelease(v12);
      }
    }

    if (*(a1 + 444))
    {
      CFDictionarySetValue(Mutable, @"SupplementsPrimaryContent", *v9);
    }

    if (*(a1 + 445))
    {
      CFDictionarySetValue(Mutable, @"ContentMayVary", *v9);
    }

    v14 = *(a1 + 88);
    if (v14)
    {
      Count = CFArrayGetCount(v14);
      if (Count >= 1)
      {
        v16 = Count;
        v17 = 0;
        v18 = 0;
        v19 = MEMORY[0x1E695E9C0];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v18);
          if (!ValueAtIndex)
          {
            break;
          }

          v21 = CFRetain(ValueAtIndex);
          if (!v17)
          {
            goto LABEL_30;
          }

LABEL_31:
          if (v21 && v17)
          {
            v22 = CFURLCopyAbsoluteURL(v21);
            if (v22)
            {
              v23 = v22;
              v24 = CFURLGetString(v22);
              CFArrayAppendValue(v17, v24);
              CFRelease(v23);
            }

LABEL_36:
            CFRelease(v21);
            goto LABEL_37;
          }

          if (v21)
          {
            goto LABEL_36;
          }

LABEL_37:
          if (v16 == ++v18)
          {
            if (v17)
            {
              CFDictionarySetValue(Mutable, @"URLs", v17);
              CFRelease(v17);
            }

            goto LABEL_43;
          }
        }

        v21 = 0;
        if (v17)
        {
          goto LABEL_31;
        }

LABEL_30:
        v17 = CFArrayCreateMutable(v4, v16, v19);
        goto LABEL_31;
      }
    }

LABEL_43:
    FigCFDictionarySetCFIndex();
    if (*(a1 + 236))
    {
      FigCFDictionarySetCMTime();
    }

    if (*(a1 + 284))
    {
      FigCFDictionarySetCMTime();
    }

    if (*(a1 + 260))
    {
      FigCFDictionarySetCMTime();
    }

    if (*(a1 + 296))
    {
      FigCFDictionarySetValue();
    }

    if (a2 && *(a1 + 200))
    {
      FigCFDictionarySetValue();
    }

    if ((*(a1 + 340) & 1) != 0 && (*(a1 + 364) & 1) != 0 && !*(a1 + 368) && (*(a1 + 352) & 0x8000000000000000) == 0)
    {
      FigCFDictionarySetCMTimeRange();
    }

    if (*(a1 + 424))
    {
      FigCFDictionarySetValue();
    }
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t FigPlayerInterstitialEventValidate(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v2 = *(a1 + 56);
  if (*(a1 + 44))
  {
    if (v2)
    {
LABEL_10:
      FigPlayerInterstitialEventValidate_cold_1();
      goto LABEL_9;
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  if ((*(a1 + 88) == 0) == (*(a1 + 96) == 0) || *(a1 + 112) && *(a1 + 113))
  {
    goto LABEL_10;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlayerInterstitialEventSetImmutable(uint64_t a1)
{
  FigSimpleMutexLock();
  *(a1 + 115) = 1;

  return FigSimpleMutexUnlock();
}

uint64_t FigPlayerInterstitialEventCopyPrimaryItem(uint64_t a1)
{
  FigSimpleMutexLock();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t FigPlayerInterstitialEventSetPrimaryItem(void *a1, uint64_t a2)
{
  FigSimpleMutexLock();
  ++a1[27];
  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  a1[2] = FigCFWeakReferenceHolderCreateWithReferencedObject();

  return FigSimpleMutexUnlock();
}

double FigPlayerInterstitialEventSetStartTime(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  return fpie_SetTimeProperty(a1, a1 + 32, &v3);
}

uint64_t FigPlayerInterstitialEventSetPlannedDuration(uint64_t a1, __int128 *a2)
{
  FigSimpleMutexLock();
  if ((*(a2 + 3) & 0x1D) == 1 && (*(a1 + 76) & 1) == 0)
  {
    ++*(a1 + 216);
    v4 = *a2;
    *(a1 + 80) = *(a2 + 2);
    *(a1 + 64) = v4;
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigPlayerInterstitialEventGetSeedValue(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 216);
  FigSimpleMutexUnlock();
  return v2;
}

double FigPlayerInterstitialEventSetSkipControlTimeRange(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return fpie_SetTimeRangeProperty(a1, (a1 + 328), v4);
}

uint64_t FigPlayerInterstitialEventReportItemFailure(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 448);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v4 < 0 == v3)
  {
    *(a1 + 448) = v4;
  }

  return FigSimpleMutexUnlock();
}

BOOL FigPlayerInterstitialEventDidAllItemsFail(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 448) == 0;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata(const __CFArray *a1, uint64_t a2, __CFArray **a3)
{
  v138 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    v3 = 0;
LABEL_114:
    value_low = 0;
    *a3 = v3;
    return value_low;
  }

  v3 = 0;
  v4 = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = *(MEMORY[0x1E6960C70] + 12);
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v92 = *(MEMORY[0x1E6960C88] + 12);
  v91 = *(MEMORY[0x1E6960C88] + 16);
  v118 = v6;
  alloc = *MEMORY[0x1E695E480];
  v121 = v7;
  while (1)
  {
    v128 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_Class");
    if (!FigCFEqual())
    {
      goto LABEL_111;
    }

    v126 = *MEMORY[0x1E6960C70];
    v127 = v7;
    v9 = *MEMORY[0x1E6960C70];
    v136 = v9;
    v10 = *(MEMORY[0x1E6960C70] + 8);
    v137 = v10;
    v134 = v9;
    timescale = v10;
    *&v125.value = v126;
    v125.epoch = v7;
    v132 = v9;
    v133 = v10;
    v130 = v9;
    v131 = v10;
    seconds = 0.0;
    Value = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_ID");
    if (!Value || (v12 = Value, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v12)))
    {
      FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_6(&values);
      goto LABEL_123;
    }

    theDict = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!theDict)
    {
      FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_5(&values);
      goto LABEL_123;
    }

    v111 = v12;
    FirstMetadataValueForKey = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-ASSET-URI");
    if (FirstMetadataValueForKey)
    {
      v15 = FirstMetadataValueForKey;
      v16 = CFStringGetTypeID();
      if (v16 == CFGetTypeID(v15))
      {
        break;
      }
    }

    v17 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_BaseURL");
    v18 = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-ASSET-LIST");
    if (!v18 || (v19 = v18, v20 = CFStringGetTypeID(), v21 = v20 == CFGetTypeID(v19), v6 = v118, !v21))
    {
      FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_4(&values);
LABEL_123:
      value_low = LODWORD(values.start.value);
LABEL_124:
      if (!v3)
      {
        return value_low;
      }

      goto LABEL_125;
    }

    if (v17)
    {
      v22 = CFURLCreateWithString(v5, v17, 0);
      v110 = CFURLCreateWithString(v5, v19, v22);
      if (v22)
      {
        CFRelease(v22);
      }
    }

    else
    {
      v110 = CFURLCreateWithString(v5, v19, 0);
    }

    v114 = 0;
LABEL_22:
    v23 = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-RESTRICT");
    v108 = fpie_MetadataStringListContainsString(v23, @"SKIP") != 0;
    v107 = fpie_MetadataStringListContainsString(v23, @"JUMP") != 0;
    v24 = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-SNAP");
    v25 = fpie_MetadataStringListContainsString(v24, @"OUT");
    v26 = fpie_MetadataStringListContainsString(v24, @"IN");
    if (v25)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = v25 != 0;
    }

    v29 = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-CUE");
    v109 = v28;
    if (v29)
    {
      v30 = v29;
LABEL_31:
      v31 = CFStringGetTypeID();
      if (v31 == CFGetTypeID(v30))
      {
        goto LABEL_32;
      }

      FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_3(&values);
      goto LABEL_123;
    }

    v30 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_Cue");
    if (v30)
    {
      goto LABEL_31;
    }

LABEL_32:
    v106 = FigCFStringFind();
    v105 = FigCFStringFind();
    v104 = FigCFStringFind();
    v116 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_StartDate");
    if (!v116)
    {
      v32 = CFDateGetTypeID();
      if (v32 == CFGetTypeID(0))
      {
        FigCFDictionaryGetCMTimeIfPresent();
      }
    }

    DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
    epoch = v121;
    flags = v6;
    if (DoubleIfPresent)
    {
      CMTimeMakeWithSeconds(&values.start, seconds, 1000000);
      v134 = values.start.value;
      flags = values.start.flags;
      timescale = values.start.timescale;
      epoch = values.start.epoch;
    }

    v115 = epoch;
    if ((flags & 1) == 0)
    {
      v36 = v3;
      v37 = flags;
      v38 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_EndDate");
      if (v38 && (v39 = v38, v119 = CFDateGetTypeID(), v40 = CFGetTypeID(v39), v116))
      {
        flags = v37;
        v3 = v36;
        if (v119 == v40)
        {
          v41 = MEMORY[0x19A8CCD90](v39);
          v42 = MEMORY[0x19A8CCD90](v116);
          CMTimeMakeWithSeconds(&values.start, v41 - v42, 1000000);
          v134 = values.start.value;
          flags = values.start.flags;
          timescale = values.start.timescale;
          v115 = values.start.epoch;
        }
      }

      else
      {
        flags = v37;
        v3 = v36;
      }
    }

    v113 = flags;
    if ((flags & 1) == 0 && FigCFDictionaryGetDoubleIfPresent())
    {
      CMTimeMakeWithSeconds(&values.start, seconds, 1000000);
      v134 = values.start.value;
      v113 = values.start.flags;
      timescale = values.start.timescale;
      v115 = values.start.epoch;
    }

    v43 = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-RESUME-OFFSET");
    v120 = v121;
    v44 = v6;
    if (!v43)
    {
      goto LABEL_54;
    }

    v45 = v43;
    v46 = CFNumberGetTypeID();
    if (v46 == CFGetTypeID(v45))
    {
      FigGetDoubleFromCFTypeWithDefault();
LABEL_49:
      CMTimeMakeWithSeconds(&values.start, v47, 1000000);
      v136 = values.start.value;
      v44 = values.start.flags;
      v137 = values.start.timescale;
      v120 = values.start.epoch;
      goto LABEL_54;
    }

    v48 = CFStringGetTypeID();
    v120 = v121;
    v21 = v48 == CFGetTypeID(v45);
    v44 = v6;
    if (v21)
    {
      FigGetDoubleFromCFTypeWithDefault();
      if (v47 != -100000.0)
      {
        goto LABEL_49;
      }

      v136 = v9;
      v137 = v10;
      v120 = v121;
      v44 = v6;
    }

LABEL_54:
    v49 = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-PLAYOUT-LIMIT");
    v117 = v44;
    if (v49)
    {
      v50 = v49;
      v51 = CFNumberGetTypeID();
      v21 = v51 == CFGetTypeID(v50);
      v44 = v117;
      if (v21)
      {
        FigGetDoubleFromCFTypeWithDefault();
        CMTimeMakeWithSeconds(&v125, v52, 1000000);
      }
    }

    if ((v44 & 0x1D) == 1)
    {
      values.start.value = v136;
      values.start.timescale = v137;
      values.start.flags = v44;
      values.start.epoch = v120;
      time2 = **&MEMORY[0x1E6960CC0];
      v53 = CMTimeCompare(&values.start, &time2) > 0;
    }

    else
    {
      v53 = 0;
    }

    fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-TIMELINE-STYLE");
    fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-TIMELINE-OCCUPIES");
    v103 = FigCFEqual();
    v100 = v4;
    if (FigCFEqual())
    {
      v102 = 0;
    }

    else
    {
      if (FigCFEqual())
      {
        v54 = 1;
      }

      else
      {
        v54 = v53;
      }

      v102 = v54;
    }

    fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-CONTENT-MAY-VARY");
    v101 = FigCFEqual() == 0;
    v55 = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-SKIP-CONTROL-OFFSET");
    v56 = v121;
    v57 = v118;
    if (v55)
    {
      v58 = v55;
      v59 = CFNumberGetTypeID();
      v60 = CFGetTypeID(v58);
      v56 = v121;
      v57 = v118;
      if (v59 == v60)
      {
        FigGetDoubleFromCFTypeWithDefault();
        CMTimeMakeWithSeconds(&values.start, v61, 1000000);
        v132 = values.start.value;
        v57 = values.start.flags;
        v133 = values.start.timescale;
        v56 = values.start.epoch;
      }
    }

    v95 = v56;
    v62 = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-SKIP-CONTROL-DURATION");
    v63 = v118;
    v64 = v121;
    if (v62)
    {
      v65 = v62;
      v66 = CFNumberGetTypeID();
      v67 = CFGetTypeID(v65);
      v63 = v118;
      v64 = v121;
      if (v66 == v67)
      {
        FigGetDoubleFromCFTypeWithDefault();
        CMTimeMakeWithSeconds(&values.start, v68, 1000000);
        v130 = values.start.value;
        v63 = values.start.flags;
        v131 = values.start.timescale;
        v64 = values.start.epoch;
      }
    }

    if ((v57 & 1) != 0 && (v63 & 1) == 0)
    {
      v130 = *MEMORY[0x1E6960C88];
      v131 = *(MEMORY[0x1E6960C88] + 8);
      v63 = v92;
      v64 = v91;
    }

    v94 = v64;
    v69 = v3;
    v70 = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-SKIP-CONTROL-LABEL-ID");
    if (v70)
    {
      Copy = CFStringCreateCopy(alloc, v70);
    }

    else
    {
      Copy = 0;
    }

    v71 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_MetadataArray");
    if (v71)
    {
      v72 = v71;
      v73 = CFArrayGetCount(v71);
      if (v73 >= 1)
      {
        v74 = v73;
        for (i = 0; i != v74; ++i)
        {
          v76 = CFArrayGetValueAtIndex(v72, i);
          v77 = CFDictionaryGetValue(v76, @"key");
          v78 = CFStringGetTypeID();
          if (v78 == CFGetTypeID(v77) && CFStringHasPrefix(v77, @"X-") && !CFEqual(v77, @"X-ASSET-URI") && !CFEqual(v77, @"X-ASSET-LIST") && !CFEqual(v77, @"X-RESTRICT") && !CFEqual(v77, @"X-SNAP") && !CFEqual(v77, @"X-CUE") && !CFEqual(v77, @"X-RESUME-OFFSET") && !CFEqual(v77, @"X-PLAYOUT-LIMIT") && !CFEqual(v77, @"X-TIMELINE-STYLE") && !CFEqual(v77, @"X-TIMELINE-OCCUPIES") && !CFEqual(v77, @"X-CONTENT-MAY-VARY") && !CFEqual(v77, @"X-SKIP-CONTROL-OFFSET") && !CFEqual(v77, @"X-SKIP-CONTROL-DURATION") && !CFEqual(v77, @"X-SKIP-CONTROL-LABEL-ID"))
          {
            v79 = CFDictionaryGetValue(v76, @"value");
            CFDictionarySetValue(theDict, v77, v79);
          }
        }
      }
    }

    *&values.start.value = v126;
    values.start.epoch = v127;
    time2.value = v136;
    time2.timescale = v137;
    time2.flags = v117;
    time2.epoch = v120;
    duration = v125;
    value_low = FigPlayerInterstitialEventCreate(a2, v111, &values.start.value, v116, v114, v110, v107 | (4 * v108), v109, v106, v105, v104, &time2.value, &duration.value, v102, v103, v101, theDict, &v128);
    if (v114)
    {
      CFRelease(v114);
    }

    CFRelease(theDict);
    v3 = v69;
    if (v110)
    {
      CFRelease(v110);
    }

    v6 = v118;
    v7 = v121;
    if (value_low)
    {
      goto LABEL_124;
    }

    v81 = v128;
    v128[8] = v134;
    *(v81 + 18) = timescale;
    *(v81 + 19) = v113;
    v81[10] = v115;
    if (v57)
    {
      v82 = v81 + 41;
      time2.value = v132;
      time2.timescale = v133;
      time2.flags = v57;
      time2.epoch = v95;
      duration.value = v130;
      duration.timescale = v131;
      duration.flags = v63;
      duration.epoch = v94;
      CMTimeRangeMake(&values, &time2, &duration);
      v83 = *&values.start.epoch;
      *v82 = *&values.start.value;
      v82[1] = v83;
      v82[2] = *&values.duration.timescale;
      v81 = v128;
    }

    v4 = v100;
    v81[53] = Copy;
    v5 = alloc;
    if (!v3)
    {
      Mutable = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
      v81 = v128;
      if (!Mutable)
      {
        if (v128)
        {
          CFRelease(v128);
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, v88, v89);
        return v86;
      }

      v3 = Mutable;
    }

    CFArrayAppendValue(v3, v81);
    if (v128)
    {
      CFRelease(v128);
    }

LABEL_111:
    if (++v4 == Count)
    {
      goto LABEL_114;
    }
  }

  values.start.value = CFURLCreateWithString(v5, v15, 0);
  if (!values.start.value)
  {
    FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_2(&time2);
    goto LABEL_128;
  }

  v114 = CFArrayCreate(v5, &values, 1, MEMORY[0x1E695E9C0]);
  if (values.start.value)
  {
    CFRelease(values.start.value);
  }

  if (v114)
  {
    v110 = 0;
    goto LABEL_22;
  }

  FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_1(&time2);
LABEL_128:
  value_low = LODWORD(time2.value);
  if (v3)
  {
LABEL_125:
    CFRelease(v3);
  }

  return value_low;
}

uint64_t fpie_MetadataStringListContainsString(const __CFString *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @",");
  if (!ArrayBySeparatingStrings)
  {
    return 0;
  }

  v6 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count < 1)
  {
    v11 = 0;
  }

  else
  {
    v8 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v8 - 1);
      v10 = CFEqual(ValueAtIndex, a2);
      v11 = v10;
      if (v8 < 2)
      {
        break;
      }

      --v8;
    }

    while (!v10);
  }

  CFRelease(v6);
  return v11;
}

CFMutableDictionaryRef FigDateTimeMomentCopyAsDictionary(uint64_t a1, CFAllocatorRef allocator, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32))
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      if (*(a1 + 33))
      {
        FigCFDictionarySetDouble();
      }

      if (*(a1 + 32))
      {
        v14 = *a1;
        v10 = CMTimeCopyAsDictionary(&v14, allocator);
        if (v10)
        {
          v11 = v10;
          FigCFDictionarySetValue();
          CFRelease(v11);
        }

        else
        {
          FigDateTimeMomentCopyAsDictionary_cold_1();
        }
      }
    }

    else
    {
      FigDateTimeMomentCopyAsDictionary_cold_2();
    }
  }

  else
  {
    FigDateTimeMomentCopyAsDictionary_cold_3(a1, allocator, a3, a4, a5, a6, a7, a8, v14.value, v14.timescale, v14.flags, v14.epoch);
    return 0;
  }

  return Mutable;
}

uint64_t figPlayerInterstitialEvent_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerInterstitialEventTypeID = result;
  return result;
}

double figPlayerInterstitialEvent_init(uint64_t a1)
{
  *(a1 + 448) = 0;
  result = 0.0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
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

uint64_t figPlayerInterstitialEvent_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[11];
  if (v5)
  {
    CFRelease(v5);
    a1[11] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    CFRelease(v6);
    a1[12] = 0;
  }

  v7 = a1[24];
  if (v7)
  {
    CFRelease(v7);
    a1[24] = 0;
  }

  v8 = a1[25];
  if (v8)
  {
    CFRelease(v8);
    a1[25] = 0;
  }

  v9 = a1[37];
  if (v9)
  {
    CFRelease(v9);
    a1[37] = 0;
  }

  v10 = a1[53];
  if (v10)
  {
    CFRelease(v10);
    a1[53] = 0;
  }

  v11 = a1[54];
  if (v11)
  {
    CFRelease(v11);
    a1[54] = 0;
  }

  return FigSimpleMutexDestroy();
}