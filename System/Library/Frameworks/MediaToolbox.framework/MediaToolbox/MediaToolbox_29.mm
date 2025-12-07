void fcrSessionNotificationInputSetCaptionSampleDo(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v5 = v2 + 7;
  isa = v2[7].isa;
  if (!isa)
  {
    v6 = FigCaptionRendererNotificationInputCreate(onCaptionInput, onRegionInput, onTextHighlightArray, v2, *MEMORY[0x1E695E480], v5);
    if (v6)
    {
      v7 = v6;
      fcrSessionNotificationInputSetCaptionSampleDo_cold_1();
      goto LABEL_6;
    }

    isa = v5->isa;
  }

  v7 = FigCaptionRendererNotificationInputAddSample(isa, v3);
  if (v7)
  {
    fcrSessionNotificationInputSetCaptionSampleDo_cold_2();
  }

LABEL_6:
  v8 = *(a1 + 16);
  if (v8)
  {
    *v8 = v7;
  }
}

void fcrSessionStartDo(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 48);
  if (v3 && (v4 = FigCaptionRendererTriggerStart(v3)) != 0)
  {
    LODWORD(v5) = v4;
    fcrSessionStartDo_cold_1();
  }

  else
  {
    *(v2 + 40) = 1;
    v5 = *(v2 + 56);
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      LODWORD(v5) = v6(v5);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LODWORD(v5) = -12782;
    }

    fcrSessionStartDo_cold_2();
  }

LABEL_6:
  if (*a1)
  {
    **a1 = v5;
  }
}

void fcrSessionStopDo(void *a1)
{
  v2 = a1[1];
  if (v2 && ((v3 = *(*(CMBaseObjectGetVTable() + 16) + 16)) == 0 || v3(v2)))
  {
    fcrSessionStopDo_cold_1();
  }

  else
  {
    *(*a1 + 40) = 0;
    v4 = a1[2];
    if (v4 && FigCaptionRendererTriggerStop(v4))
    {
      fcrSessionStopDo_cold_2();
    }
  }

  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    CFRelease(v6);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t fcrSessionSetTimeDo(__int128 *a1)
{
  v2 = *(a1 + 4);
  v5 = *a1;
  result = FigCaptionRendererTriggerSetCurrentTime(*(v2 + 48), &v5);
  v4 = *(a1 + 3);
  if (v4)
  {
    *v4 = result;
  }

  return result;
}

uint64_t fcrSessionSetCaptionCacheRangeDo(uint64_t result)
{
  *(*(result + 24) + 88) = *result;
  v1 = *(result + 16);
  if (v1)
  {
    *v1 = 0;
  }

  return result;
}

uint64_t fcrSessionSetRateDo(uint64_t a1)
{
  result = FigCaptionRendererTriggerSetRate(*(*(a1 + 16) + 48), *a1);
  v3 = *(a1 + 8);
  if (v3)
  {
    *v3 = result;
  }

  return result;
}

void fcrSessionGetRateDo(double *a1)
{
  v2 = *(*(a1 + 1) + 48);
  if (v2)
  {
    Rate = FigCaptionRendererTriggerGetRate(v2);
  }

  else
  {
    Rate = 0.0;
  }

  *a1 = Rate;
}

uint64_t SetViewportDo(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1 + 2;
  if (CGRectEqualToRect(*(*a1 + 632), *(a1 + 2)))
  {
    result = 0;
  }

  else
  {
    v6 = *(*&v2 + 648);
    v7 = *(*&v2 + 656);
    v8 = *(v3 + 1);
    *(*&v2 + 632) = *v3;
    *(*&v2 + 648) = v8;
    v9 = *(*&v2 + 584);
    if (v9)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      Value = CFDictionaryGetValue(v9, *(*&v2 + 248));
      getOutputNodeLayout(Value, v15);
      v11 = v16;
      if (v16)
      {
        if (vabdd_f64(v6, *(a1 + 4)) > v6 * 0.1 || vabdd_f64(v7, *(a1 + 5)) > v7 * 0.1)
        {
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          ProtocolVTable = CMBaseObjectGetProtocolVTable();
          if (ProtocolVTable)
          {
            v13 = *(ProtocolVTable + 16);
            if (v13)
            {
              v14 = *(v13 + 120);
              if (v14)
              {
                v14(v11, 0);
              }
            }
          }
        }
      }
    }

    result = UpdateLayoutContext(*&v2);
  }

  v5 = a1[21];
  if (v5)
  {
    *v5 = result;
  }

  return result;
}

uint64_t SetVideoSizeDo(double *a1)
{
  v2 = (a1 + 6);
  v3 = a1[6];
  v4 = *a1;
  if (*(*&v4 + 664) == v3 && *(*&v4 + 672) == a1[7])
  {
    result = 0;
  }

  else
  {
    *(*&v4 + 664) = *v2;
    result = UpdateLayoutContext(*&v4);
  }

  v6 = *(a1 + 21);
  if (v6)
  {
    *v6 = result;
  }

  return result;
}

uint64_t SetGravityDo(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 160);
  if (*(result + 272) != v3)
  {
    *(result + 272) = v3;
    return UpdateLayoutContext(result);
  }

  return result;
}

uint64_t SetOverscanDo(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 161);
  if (*(*a1 + 273) == v3)
  {
    result = 0;
  }

  else
  {
    *(v2 + 273) = v3;
    result = *(v2 + 64);
    if (v3)
    {
      v5 = result == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      *(v2 + 280) = FigCaptionRendererCALayerOutputGetOverscan(result);
      result = *(v2 + 64);
    }

    if (result)
    {
      result = UpdateLayoutContext(v2);
    }
  }

  v6 = a1[21];
  if (v6)
  {
    *v6 = result;
  }

  return result;
}

uint64_t SetVideoRelativeToViewportDo(CGRect *a1)
{
  v2 = *&a1->origin.x;
  v3 = a1 + 2;
  if (CGRectEqualToRect(*(*&a1->origin.x + 680), a1[2]))
  {
    result = 0;
  }

  else
  {
    size = v3->size;
    *(v2 + 680) = v3->origin;
    *(v2 + 696) = size;
    result = UpdateLayoutContext(v2);
  }

  y = a1[5].origin.y;
  if (y != 0.0)
  {
    **&y = result;
  }

  return result;
}

void SetCaptionsAvoidanceMarginsDo(uint64_t *a1)
{
  v2 = *a1;
  v3 = (*a1 + 712);
  if (FigGeometryMarginsEqualToMargins())
  {
    updated = 0;
  }

  else
  {
    v6 = *(a1 + 6);
    v7 = *(a1 + 7);
    v8 = *(a1 + 9);
    v3[2] = *(a1 + 8);
    v3[3] = v8;
    *v3 = v6;
    v3[1] = v7;
    updated = UpdateLayoutContext(v2);
    drawInContext(0, v2);
  }

  v5 = a1[21];
  if (v5)
  {
    *v5 = updated;
  }
}

void fcrSessionUpdateOutputDo(uint64_t result)
{
  v2 = *(*(result + 8) + 64);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v3)
  {
    LODWORD(v2) = v3(v2, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    LODWORD(v2) = -12782;
  }

  fcrSessionUpdateOutputDo_cold_1();
LABEL_4:
  if (*result)
  {
    **result = v2;
  }
}

uint64_t FigCaptionRendererSessionGetCALayerNodeLayoutForAnimation(uint64_t a1, _OWORD *a2)
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  v9 = *MEMORY[0x1E695F058];
  v10 = v4;
  v11 = 0;
  Value = CFDictionaryGetValue(*(a1 + 584), *(a1 + 248));
  getOutputNodeLayout(Value, &v9);
  *(a1 + 1416) = 0;
  v6 = v11;
  if (!v11)
  {
    return 4294950092;
  }

  result = 0;
  v8 = v10;
  *a2 = v9;
  a2[1] = v8;
  *(a1 + 1416) = v6;
  return result;
}

double getOutputNodeLayout(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return getOutputNodeLayout_cold_5();
  }

  v23 = 0;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return getOutputNodeLayout_cold_4();
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return getOutputNodeLayout_cold_4();
  }

  v6 = *(v5 + 112);
  if (!v6 || v6(a1, &v23))
  {
    return getOutputNodeLayout_cold_4();
  }

  if (v23)
  {
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v7 = CMBaseObjectGetProtocolVTable();
    if (!v7)
    {
      return getOutputNodeLayout_cold_2();
    }

    v8 = *(v7 + 16);
    if (!v8)
    {
      return getOutputNodeLayout_cold_2();
    }

    v9 = *(v8 + 64);
    if (!v9 || v9(a1, a2))
    {
      return getOutputNodeLayout_cold_2();
    }

    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v10 = CMBaseObjectGetProtocolVTable();
    if (!v10)
    {
      return getOutputNodeLayout_cold_1();
    }

    v11 = *(v10 + 16);
    if (!v11)
    {
      return getOutputNodeLayout_cold_1();
    }

    v12 = *(v11 + 80);
    if (!v12 || v12(a1, a2 + 16))
    {
      return getOutputNodeLayout_cold_1();
    }

    __asm { FMOV            V0.2D, #-0.5 }

    *a2 = vaddq_f64(*a2, vmulq_f64(*(a2 + 16), _Q0));
    *(a2 + 32) = a1;
  }

  v22 = 0;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  v18 = CMBaseObjectGetProtocolVTable();
  if (!v18)
  {
    return getOutputNodeLayout_cold_3();
  }

  v19 = *(v18 + 16);
  if (!v19)
  {
    return getOutputNodeLayout_cold_3();
  }

  v20 = *(v19 + 40);
  if (!v20 || v20(a1, &v22))
  {
    return getOutputNodeLayout_cold_3();
  }

  FigCFArrayApplyFunction();
  return result;
}

uint64_t FigCaptionRendererSessionAddAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1416);
  if (v3)
  {
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v7 = *(ProtocolVTable + 16);
      if (v7)
      {
        v8 = *(v7 + 176);
        if (v8)
        {
          v8(v3, a2, a3);
        }
      }
    }
  }

  return 0;
}

void setOptionsDo(void *a1)
{
  v2 = *a1;
  Mutable = *(*a1 + 1032);
  if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v2 + 1032) = Mutable) != 0))
  {
    v4 = a1[1];
    v5 = a1[2];
    if (v5)
    {

      CFDictionarySetValue(Mutable, v4, v5);
    }

    else
    {

      CFDictionaryRemoveValue(Mutable, v4);
    }
  }

  else
  {
    setOptionsDo_cold_1();
  }
}

uint64_t *setSeparatedDo(uint64_t *result)
{
  v1 = *result;
  *(v1 + 1040) = *(result + 8);
  *(v1 + 1041) = 1;
  return result;
}

uint64_t FigCaptionRendererSessionUpdateMediaAccessibility(int64x2_t *a1, int a2, uint64_t a3)
{
  v4 = vdupq_n_s64(1uLL);
  a1[18] = v4;
  a1[19] = v4;
  a1[20] = v4;
  a1[21] = v4;
  a1[26].i64[0] = 1;
  a1[29].i64[1] = 0;
  a1[30].i64[1] = 0x3FF0000000000000;
  result = 4294950096;
  if (a2 > 4)
  {
    if (a2 > 18)
    {
      if (a2 == 19)
      {
        result = 0;
        a1[20].i64[1] = 1;
      }

      else if (a2 == 20)
      {
        result = 0;
        a1[29].i64[1] = 0x3FD0000000000000;
        a1[20].i64[1] = 0;
      }
    }

    else
    {
      if (a2 == 5)
      {
        v12 = a1[28].i64[0];
        if (v12)
        {
          CFRelease(v12);
          a1[28].i64[0] = 0;
        }

        CGColorSRGB = FigCreateCGColorSRGB();
        result = 0;
        a1[28].i64[0] = CGColorSRGB;
        a1[19].i64[0] = 1;
      }

      else
      {
        if (a2 != 6)
        {
          return result;
        }

        v7 = a1[28].i64[0];
        if (v7)
        {
          CFRelease(v7);
          a1[28].i64[0] = 0;
        }

        v8 = FigCreateCGColorSRGB();
        result = 0;
        a1[28].i64[0] = v8;
        a1[19].i64[0] = 0;
      }

      a1[29].i64[1] = 0x3FF0000000000000;
    }
  }

  else if (a2 > 2)
  {
    if (a2 == 3)
    {
      v14 = a1[27].i64[0];
      if (v14)
      {
        CFRelease(v14);
        a1[27].i64[0] = 0;
      }

      v15 = FigCreateCGColorSRGB();
      result = 0;
      a1[27].i64[0] = v15;
      a1[18].i64[0] = 1;
    }

    else
    {
      v9 = a1[27].i64[0];
      if (v9)
      {
        CFRelease(v9);
        a1[27].i64[0] = 0;
      }

      v10 = FigCreateCGColorSRGB();
      result = 0;
      a1[27].i64[0] = v10;
      a1[18].i64[0] = 0;
    }
  }

  else
  {
    if (a2 == 1)
    {
      a1[30].i64[1] = 0x4010000000000000;
      a1[21].i64[1] = 1;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      a1[30].i64[1] = 0x4000000000000000;
      a1[21].i64[1] = 0;
    }

    v11 = a1[36].i64[0];
    if (v11)
    {
      CFRelease(v11);
    }

    result = 0;
    a1[36].i64[0] = a3;
  }

  return result;
}

uint64_t FigCaptionRendererSessionSynchronizeDefaults(dispatch_queue_t *a1)
{
  if (!a1)
  {
    FigCaptionRendererSessionSynchronizeDefaults_cold_2(&v6);
    return v6;
  }

  if (a1[21])
  {
    v2 = malloc_type_calloc(1uLL, 0x140uLL, 0x1060040D22D00F8uLL);
    if (!v2)
    {
      FigCaptionRendererSessionSynchronizeDefaults_cold_1(&v5);
      return v5;
    }

    v3 = v2;
    *v2 = CFRetain(a1);
    *(v3 + 152) = 256;
    *(v3 + 306) = 0;
    v3[39] = 0;
    dispatch_async_f(a1[21], v3, updateMASettingsDoAsync);
  }

  return 0;
}

uint64_t FigCaptionRendererSessionSetDefaultTextStyle(dispatch_queue_t *a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCaptionRendererSessionSetDefaultTextStyle_cold_3(&v10);
    return v10;
  }

  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDictionaryGetTypeID())
    {
      FigCaptionRendererSessionSetDefaultTextStyle_cold_1(&v8);
      return v8;
    }
  }

  if (a1[21])
  {
    v5 = malloc_type_calloc(1uLL, 0x140uLL, 0x1060040D22D00F8uLL);
    if (!v5)
    {
      FigCaptionRendererSessionSetDefaultTextStyle_cold_2(&v9);
      return v9;
    }

    v6 = v5;
    *v5 = CFRetain(a1);
    *(v6 + 152) = 0;
    *(v6 + 306) = 1;
    v6[39] = cf;
    dispatch_async_f(a1[21], v6, updateMASettingsDoAsync);
  }

  return 0;
}

uint64_t FigCaptionRendererSessionCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v8 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionRendererSessionLocalGetTypeID_sRegisterFigCaptionRendererSessionOnce, RegisterFigCaptionRendererSessionClass);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 24) = a1;
  *(Instance + 32) = a2;
  *(Instance + 16) = a3;
  *(Instance + 1400) = 0;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 1362) = 0;
  *(Instance + 268) = 3;
  *(Instance + 960) = 1;
  *(Instance + 976) = 0;
  *(Instance + 968) = 0xBFF0000000000000;
  *(Instance + 1056) = 0;
  *(Instance + 1360) = 0;
  fcrReleaseAndClearMediaAccessibilityParams(Instance + 1064);
  *(Instance + 1376) = 0u;
  *(Instance + 1368) = 250;
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(Instance + 584) = Mutable;
  if (!Mutable)
  {
    FigCaptionRendererSessionCreate_cold_8(__str);
    v34 = *__str;
    goto LABEL_26;
  }

  *(Instance + 624) = 0x100000001;
  v11 = MEMORY[0x1E695F058];
  *(Instance + 608) = 0u;
  v12 = *v11;
  v13 = v11[1];
  *(Instance + 632) = *v11;
  *(Instance + 648) = v13;
  v14 = *MEMORY[0x1E695F060];
  *(Instance + 664) = *MEMORY[0x1E695F060];
  *(Instance + 680) = v12;
  *(Instance + 696) = v13;
  v15 = MEMORY[0x1E6962818];
  v16 = *(MEMORY[0x1E6962818] + 16);
  *(Instance + 712) = *MEMORY[0x1E6962818];
  *(Instance + 728) = v16;
  v17 = *(v15 + 48);
  *(Instance + 744) = *(v15 + 32);
  *(Instance + 760) = v17;
  *(Instance + 776) = v12;
  *(Instance + 792) = v13;
  *(Instance + 808) = v14;
  *(Instance + 824) = v12;
  *(Instance + 840) = v13;
  *(Instance + 1044) = 1;
  *(Instance + 1032) = 0;
  *(Instance + 1040) = 0;
  *(Instance + 128) = v12;
  *(Instance + 144) = v13;
  *(Instance + 272) = 0;
  *(Instance + 280) = 0x3FF0000000000000;
  *(Instance + 120) = 0xFFFFFFFFLL;
  *(Instance + 1392) = FigSimpleMutexCreate();
  *(Instance + 1046) = 257;
  v18 = FigCaptionRendererParentIntervalCreate((Instance + 240));
  if (v18)
  {
    v34 = v18;
    FigCaptionRendererSessionCreate_cold_1();
    goto LABEL_26;
  }

  v19 = *(Instance + 240);
  FigBytePumpGetFigBaseObject();
  v21 = v20;
  v23 = v22;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v25 = *(ProtocolVTable + 16)) == 0)
  {
    v34 = 4294954508;
LABEL_25:
    FigCaptionRendererSessionCreate_cold_7();
    goto LABEL_26;
  }

  v26 = *(v25 + 16);
  if (!v26)
  {
    v34 = 4294954514;
    goto LABEL_25;
  }

  v27 = v26(v19, v21, v23);
  if (v27)
  {
    v34 = v27;
    goto LABEL_25;
  }

  *(Instance + 88) = xmmword_196E76470;
  *(Instance + 104) = xmmword_196E76480;
  *(Instance + 40) = 0;
  snprintf(__str, 0x100uLL, "com.apple.coremedia.figfcrsession.messagequeue<%p>", Instance);
  v28 = dispatch_queue_create(__str, 0);
  *(Instance + 168) = v28;
  if (!v28 || (snprintf(__str, 0x100uLL, "com.apple.coremedia.figfcrsession.workqueue<%p>", Instance), v29 = dispatch_queue_create(__str, 0), (*(Instance + 176) = v29) == 0))
  {
    v34 = 0;
LABEL_26:
    CFRelease(Instance);
    return v34;
  }

  v30 = FigCaptionRendererTimerCreate(33, onAnimationTimerTimeout, Instance, (Instance + 184));
  if (v30)
  {
    v34 = v30;
    FigCaptionRendererSessionCreate_cold_2();
    goto LABEL_26;
  }

  cf = 0;
  v31 = FigCaptionRendererAVFLayoutRegionCreate(onDisplayUpdateEvent, Instance, &cf);
  if (v31)
  {
    v34 = v31;
    FigCaptionRendererSessionCreate_cold_3();
    goto LABEL_26;
  }

  if (cf)
  {
    v32 = CFRetain(cf);
    v33 = cf;
    *(Instance + 248) = v32;
    if (v33)
    {
      CFRelease(v33);
    }
  }

  else
  {
    *(Instance + 248) = 0;
  }

  if (*(Instance + 584))
  {
    *__str = 0;
    FigCaptionRendererCALayerOutputNodeCreate(__str);
    if (v35)
    {
      v34 = v35;
      FigCaptionRendererSessionCreate_cold_4();
      goto LABEL_26;
    }

    CFDictionarySetValue(*(Instance + 584), *(Instance + 248), *__str);
    if (*__str)
    {
      CFRelease(*__str);
    }
  }

  v36 = FigCaptionRendererMACacheCreate(onMAChanged, Instance, (Instance + 232));
  if (v36)
  {
    v34 = v36;
    FigCaptionRendererSessionCreate_cold_5();
    goto LABEL_26;
  }

  v34 = FigCaptionRendererMACacheLoad(*(Instance + 232), 0);
  if (v34)
  {
    FigCaptionRendererSessionCreate_cold_6();
    goto LABEL_26;
  }

  *(Instance + 192) = 0;
  v37 = *(MEMORY[0x1E695F050] + 16);
  *(Instance + 200) = *MEMORY[0x1E695F050];
  *(Instance + 216) = v37;
  *(Instance + 1408) = 0;
  *a4 = Instance;
  return v34;
}

void onAnimationTimerTimeout(uint64_t a1)
{
  v2 = *(a1 + 192);
  *(a1 + 192) = v2 - 33;
  Rate = FigCaptionRendererTriggerGetRate(*(a1 + 48));
  if (v2 > 33)
  {
    if (Rate == 0.0)
    {
      memset(&v10, 0, sizeof(v10));
      FigCaptionRendererTriggerGetCurrentTime(*(a1 + 48), &v10);
      memset(&v9, 0, sizeof(v9));
      CMTimeMake(&rhs, 33, 1000);
      v7 = v10;
      CMTimeAdd(&v9, &v7, &rhs);
      v6 = *(a1 + 48);
      rhs = v9;
      FigCaptionRendererTriggerSetCurrentTime(v6, &rhs);
    }

    updateDisplayPort(a1, *(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  }

  else
  {
    if (Rate == 0.0)
    {
      memset(&v10, 0, sizeof(v10));
      FigCaptionRendererTriggerGetCurrentTime(*(a1 + 48), &v10);
      memset(&v9, 0, sizeof(v9));
      CMTimeMake(&rhs, *(a1 + 192) + 33, 1000);
      v7 = v10;
      CMTimeAdd(&v9, &v7, &rhs);
      v4 = *(a1 + 48);
      rhs = v9;
      FigCaptionRendererTriggerSetCurrentTime(v4, &rhs);
      updateDisplayPort(a1, *(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
    }

    if (FigCaptionRendererTimerStop(*(a1 + 184)))
    {
      onAnimationTimerTimeout_cold_1();
    }

    else
    {
      *(a1 + 192) = 0;
      v5 = *(MEMORY[0x1E695F050] + 16);
      *(a1 + 200) = *MEMORY[0x1E695F050];
      *(a1 + 216) = v5;
    }
  }
}

double onDisplayUpdateEvent(uint64_t a1, uint64_t a2)
{
  Rate = FigCaptionRendererTriggerGetRate(*(a2 + 48));
  v5 = *(a1 + 4) + *a1;
  v6 = v5 + 33;
  if (v5 < 165)
  {
    v6 = 198;
  }

  if (Rate != 0.0)
  {
    v5 = v6;
  }

  *(a2 + 192) = v5;
  *(a2 + 200) = CGRectUnion(*(a2 + 200), *(a1 + 8));
  if (!FigCaptionRendererTimerIsOn(*(a2 + 184)))
  {
    if (FigCaptionRendererTimerStart(*(a2 + 184)))
    {
      return onDisplayUpdateEvent_cold_1();
    }
  }

  return result;
}

void onMAChanged(void *a1, uint64_t a2)
{
  if (a1[21])
  {
    v4 = malloc_type_calloc(1uLL, 0x140uLL, 0x1060040D22D00F8uLL);
    if (v4)
    {
      v5 = v4;
      fcrCopyMediaAccessibilityParams(a2, (v4 + 4));
      *v5 = CFRetain(a1);
      v5[152] = 1;
      *(v5 + 306) = 0;
      *(v5 + 39) = 0;
      v6 = a1[21];

      dispatch_async_f(v6, v5, updateMASettingsDoAsync);
    }
  }
}

uint64_t RegisterFigCaptionRendererSessionClass()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRendererSessionID = result;
  return result;
}

void FigCaptionRendererSession_Finalize(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 184) = 0;
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 176) = 0;
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 168) = 0;
  }

  if (*(a1 + 80))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
    }
  }

  if (*(a1 + 72))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v6 = *(a1 + 72);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 72) = 0;
    }
  }

  v7 = *(a1 + 584);
  if (v7)
  {
    Value = CFDictionaryGetValue(v7, *(a1 + 248));
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v10 = *(ProtocolVTable + 16);
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          v11(Value, 0);
        }
      }
    }

    CFDictionaryRemoveValue(*(a1 + 584), *(a1 + 248));
    v12 = *(a1 + 584);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 584) = 0;
    }
  }

  FigSimpleMutexDestroy();
  *(a1 + 1392) = 0;
  v13 = *(a1 + 248);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 248) = 0;
  }

  v14 = *(a1 + 240);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 240) = 0;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 56) = 0;
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 64) = 0;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 48) = 0;
  }

  v18 = *(a1 + 232);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 232) = 0;
  }

  v19 = *(a1 + 160);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 160) = 0;
  }

  fcrReleaseAndClearMediaAccessibilityParams(a1 + 288);
  fcrReleaseAndClearMediaAccessibilityParams(a1 + 1064);
  v20 = *(a1 + 1056);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 1056) = 0;
  }

  v21 = *(a1 + 936);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 936) = 0;
  }

  v22 = *(a1 + 920);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 920) = 0;
  }

  v23 = *(a1 + 928);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 928) = 0;
  }

  v24 = *(a1 + 1024);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 1024) = 0;
  }

  v25 = *(a1 + 992);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 992) = 0;
  }

  v26 = *(a1 + 984);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 984) = 0;
  }

  v27 = *(a1 + 1000);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 1000) = 0;
  }

  v28 = *(a1 + 1032);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 1032) = 0;
  }

  v29 = *(a1 + 1384);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 1384) = 0;
  }

  v30 = *(a1 + 1400);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 1400) = 0;
  }
}

__CFString *FigCaptionRendererSessionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererSession %p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererOutputNodeSetParentNode(uint64_t a1)
{
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v4 = *(result + 16);
    result += 16;
    v3 = v4;
    if (v4)
    {
      v5 = *(v3 + 16);
      if (v5)
      {

        return v5(a1, 0);
      }
    }
  }

  return result;
}

void timebaseChangedCallbackDo(void *a1)
{
  cf = 0;
  v2 = *a1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_13;
  }

  FigPlaybackItemGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(v5, @"Timebase", *MEMORY[0x1E695E480], &cf);
    v8 = cf;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = cf == 0;
    }

    if (v9)
    {
      goto LABEL_10;
    }

    v10 = v2[6];
    if (v10)
    {
      FigCaptionRendererTriggerSetTimebase(v10, cf);
    }

    else
    {
      timebaseChangedCallbackDo_cold_1();
    }
  }

  v8 = cf;
LABEL_10:
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v3);
LABEL_13:
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void onTriggerTimeUpdate(CMTime *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    time = *a1;
    Seconds = CMTimeGetSeconds(&time);
    v4 = Seconds % 3600;
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d:%02d:%02d", (Seconds / 3600), ((((34953 * v4) >> 16) >> 5) + (((v4 + ((-30583 * v4) >> 16)) & 0x8000) >> 15)), (v4 - 60 * ((((34953 * v4) >> 16) >> 5) + (((v4 + ((-30583 * v4) >> 16)) & 0x8000) >> 15))));
    (*(a2 + 32))(v5, *(a2 + 16));
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void onTriggerEventDo(uint64_t a1)
{
  v2 = *a1;
  *&v11.value = *(a1 + 16);
  v11.epoch = *(a1 + 32);
  *&time1.value = *&v11.value;
  time1.epoch = *(a1 + 32);
  purgeOutOfRangeCaptionCache(v2, &time1);
  v15 = 0.0;
  v16 = 0.0;
  v3 = v2[30];
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0 || (v6 = *(v5 + 8)) == 0 || v6(v3, &v15))
  {
    onTriggerEventDo_cold_1();
    goto LABEL_15;
  }

  time1 = v11;
  time2 = **&MEMORY[0x1E6960C70];
  if (!CMTimeCompare(&time1, &time2))
  {
    time1.value = 0;
    copyCaptionsByRange(v2[30], 0, &time1, 0, v15, v16, v15, v16);
    purgeCaptionBitmapCaches(v2, time1.value);
    value = time1.value;
    if (!time1.value)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  time1 = v11;
  CMTimeGetSeconds(&time1);
  FigBytePumpGetFigBaseObject();
  time1.value = 0;
  theArray = 0;
  time2.value = 0;
  copyCaptionsByRange(v2[30], &time2, &time1, &theArray, v15, v16, v7, v8);
  purgeCaptionBitmapCaches(v2, time2.value);
  purgeCaptionBitmapCaches(v2, theArray);
  if (time2.value)
  {
    CFRelease(time2.value);
  }

  if (time1.value)
  {
    CFRelease(time1.value);
  }

  value = theArray;
  if (theArray)
  {
LABEL_13:
    CFRelease(value);
  }

LABEL_15:
  updateDisplayPort(v2, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    CFRelease(v10);
  }

  free(a1);
}

void purgeOutOfRangeCaptionCache(uint64_t a1, CMTime *a2)
{
  v14 = 0.0;
  v15 = 0.0;
  v4 = *(a1 + 240);
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v6 = *(ProtocolVTable + 16)) == 0 || (v7 = *(v6 + 8)) == 0 || v7(v4, &v14))
  {
    purgeOutOfRangeCaptionCache_cold_1();
    return;
  }

  time1 = *a2;
  time2 = **&MEMORY[0x1E6960C70];
  if (!CMTimeCompare(&time1, &time2))
  {
    time1.value = 0;
    copyCaptionsByRange(*(a1 + 240), 0, &time1, 0, v14, v15, v14, v15);
    purgeCaptionCachesFromCaptionsTimeline(a1, time1.value);
    value = time1.value;
    if (!time1.value)
    {
      return;
    }

    goto LABEL_13;
  }

  time1 = *a2;
  CMTimeGetSeconds(&time1);
  FigBytePumpGetFigBaseObject();
  time1.value = 0;
  theArray = 0;
  time2.value = 0;
  copyCaptionsByRange(*(a1 + 240), &time2, &time1, &theArray, v14, v15, v8, v9);
  purgeCaptionCachesFromCaptionsTimeline(a1, time2.value);
  purgeCaptionCachesFromCaptionsTimeline(a1, theArray);
  if (time2.value)
  {
    CFRelease(time2.value);
  }

  if (time1.value)
  {
    CFRelease(time1.value);
  }

  value = theArray;
  if (theArray)
  {
LABEL_13:
    CFRelease(value);
  }
}

uint64_t FigCaptionRendererIntervalGetRange(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererIntervalProtocolGetProtocolID();
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

void copyCaptionsByRange(uint64_t a1, CFArrayRef *a2, CFTypeRef *a3, CFArrayRef *a4, double a5, double a6, double a7, double a8)
{
  theArray = 0;
  cf = 0;
  Copy = 0;
  FigCaptionRendererParentIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v15 = *(ProtocolVTable + 16);
    if (v15)
    {
      v16 = *(v15 + 32);
      if (v16)
      {
        v16(a1, &cf, a7, a8);
      }
    }
  }

  FigBytePumpGetFigBaseObject();
  v18 = v17;
  v20 = v19;
  FigCaptionRendererParentIntervalProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (v21)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v22 + 32);
      if (v23)
      {
        v23(a1, &theArray, v18, v20);
      }
    }
  }

  FigBytePumpGetFigBaseObject();
  v25 = v24;
  v27 = v26;
  FigCaptionRendererParentIntervalProtocolGetProtocolID();
  v28 = CMBaseObjectGetProtocolVTable();
  if (v28)
  {
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v29 + 32);
      if (v30)
      {
        v30(a1, &Copy, v25, v27);
      }
    }
  }

  v31 = *MEMORY[0x1E695E480];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  if (theArray)
  {
    CFRelease(theArray);
  }

  subtractCFArrayFromCFArray(MutableCopy, cf);
  theArray = CFArrayCreateCopy(v31, MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v33 = CFArrayCreateMutableCopy(v31, 0, Copy);
  if (Copy)
  {
    CFRelease(Copy);
  }

  subtractCFArrayFromCFArray(v33, cf);
  Copy = CFArrayCreateCopy(v31, v33);
  if (v33)
  {
    CFRelease(v33);
  }

  if (a2)
  {
    *a2 = theArray;
  }

  else if (theArray)
  {
    CFRelease(theArray);
  }

  if (a3)
  {
    *a3 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    *a4 = Copy;
  }

  else if (Copy)
  {
    CFRelease(Copy);
  }
}

CFIndex purgeCaptionCachesFromCaptionsTimeline(uint64_t a1, CFArrayRef theArray)
{
  v4 = *(a1 + 240);
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      FigCaptionRendererParentIntervalProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v9 = *(ProtocolVTable + 16);
        if (v9)
        {
          v10 = *(v9 + 16);
          if (v10)
          {
            v10(v4, ValueAtIndex);
          }
        }
      }

      v11 = *(a1 + 584);
      if (v11)
      {
        Value = CFDictionaryGetValue(v11, ValueAtIndex);
        if (Value)
        {
          v13 = Value;
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v14 = CMBaseObjectGetProtocolVTable();
          if (v14)
          {
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = *(v15 + 16);
              if (v16)
              {
                v16(v13, 0);
              }
            }
          }

          CFDictionaryRemoveValue(*(a1 + 584), ValueAtIndex);
        }
      }

      result = CFArrayGetCount(theArray);
    }
  }

  return result;
}

CFIndex subtractCFArrayFromCFArray(CFIndex result, CFArrayRef theArray)
{
  if (result)
  {
    if (theArray)
    {
      v3 = result;
      result = CFArrayGetCount(theArray);
      if (result >= 1)
      {
        for (i = 0; i < result; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v7.length = CFArrayGetCount(v3);
          v7.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v7, ValueAtIndex);
          if (FirstIndexOfValue != -1)
          {
            CFArrayRemoveValueAtIndex(v3, FirstIndexOfValue);
          }

          result = CFArrayGetCount(theArray);
        }
      }
    }
  }

  return result;
}

CFIndex purgeCaptionBitmapCaches(uint64_t a1, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v18 = 0;
      FigCaptionRendererCaptionProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 32);
          if (v9)
          {
            v9(ValueAtIndex, &v18);
          }
        }
      }

      image = 0;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v10 = CMBaseObjectGetProtocolVTable();
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(v11 + 176);
          if (v12)
          {
            v12(ValueAtIndex, &image);
          }
        }
      }

      if (image)
      {
        BytesPerRow = CGImageGetBytesPerRow(image);
        *(a1 + 124) += CGImageGetHeight(image) * BytesPerRow;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v14 = CMBaseObjectGetProtocolVTable();
        if (v14)
        {
          v15 = *(v14 + 16);
          if (v15)
          {
            v16 = *(v15 + 160);
            if (v16)
            {
              v16(ValueAtIndex);
            }
          }
        }
      }

      result = CFArrayGetCount(theArray);
    }
  }

  return result;
}

void drawInContext(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1365))
  {
    if (*(a2 + 168))
    {
      v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
      if (v4)
      {
        v5 = v4;
        *v4 = CFRetain(a2);
        v5[1] = a1;
        v6 = *(a2 + 168);
        if (a1)
        {

          dispatch_sync_f(v6, v5, composeSceneDo);
        }

        else
        {

          dispatch_async_f(v6, v5, composeSceneDo);
        }
      }
    }
  }
}

void onUserEventDo(int *a1)
{
  v2 = *(a1 + 3);
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v22 = 0;
  if (v3 == 3)
  {
    v10 = *(v2 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable || (v12 = *(ProtocolVTable + 16)) == 0 || (v13 = *(v12 + 360)) == 0 || v13(v10, &v22, v5, v4))
    {
      onUserEventDo_cold_1();
      goto LABEL_29;
    }
  }

  else if (v3 == 1)
  {
    v6 = *(v2 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v7 = CMBaseObjectGetProtocolVTable();
    if (!v7 || (v8 = *(v7 + 16)) == 0 || (v9 = *(v8 + 352)) == 0 || v9(v6, &v22, v5, v4))
    {
      onUserEventDo_cold_2();
      goto LABEL_29;
    }
  }

  v14 = *(v2 + 248);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v15 = CMBaseObjectGetProtocolVTable();
  if (v15 && (v16 = *(v15 + 16)) != 0 && (v17 = *(v16 + 272)) != 0 && !v17(v14))
  {
    *(v2 + 608) = 0u;
    v18 = *(v2 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v19 = CMBaseObjectGetProtocolVTable();
    if (v19 && (v20 = *(v19 + 16)) != 0 && (v21 = *(v20 + 304)) != 0 && !v21(v18, v2 + 288))
    {
      updateDisplayPort(v2, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    }

    else
    {
      onUserEventDo_cold_3();
    }
  }

  else
  {
    onUserEventDo_cold_4();
  }

LABEL_29:
  free(a1);
}

void onViewportChangedDo(double *a1)
{
  v2 = *(a1 + 4);
  v3 = a1[2];
  if (v3 <= 0.0 || (v4 = a1[3], v4 <= 0.0))
  {
    if (!v2)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    if (*(v2 + 584))
    {
      *(v2 + 624) = FigCaptionRendererCALayerOutputGetOrientation(*(v2 + 64));
      *(v2 + 628) = FigCaptionRendererCALayerOutputGetDisplayScale(*(v2 + 64));
    }

    v7 = *(v2 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0 && (v10 = *(v9 + 96)) != 0 && !v10(v7, v5, v6, v3, v4))
    {
      v11 = *(v2 + 248);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v12 = CMBaseObjectGetProtocolVTable();
      if (v12 && (v13 = *(v12 + 16)) != 0 && (v14 = *(v13 + 272)) != 0 && !v14(v11))
      {
        v15 = *(v2 + 992);
        if (v15)
        {
          CFRelease(v15);
          *(v2 + 992) = 0;
        }

        v16 = *(v2 + 984);
        if (v16)
        {
          CFRelease(v16);
          *(v2 + 984) = 0;
        }

        v17 = *(v2 + 1000);
        if (v17)
        {
          CFRelease(v17);
          *(v2 + 1000) = 0;
        }

        if (FigGeometryMappingCreateCEA608Mappings())
        {
          onViewportChangedDo_cold_1();
        }

        else
        {
          *(v2 + 1008) = FCRGetCEA608CellSize(*(v2 + 992));
          *(v2 + 1016) = v18;
          v19 = *(v2 + 248);
          FigCaptionRendererNodeProtocolGetProtocolID();
          v20 = CMBaseObjectGetProtocolVTable();
          if (v20 && (v21 = *(v20 + 16)) != 0 && (v22 = *(v21 + 96)) != 0 && !v22(v19, v5, v6, v3, v4))
          {
            v23 = *(v2 + 248);
            FigCaptionRendererNodeProtocolGetProtocolID();
            v24 = CMBaseObjectGetProtocolVTable();
            if (!v24 || (v25 = *(v24 + 16)) == 0 || (v26 = *(v25 + 272)) == 0 || v26(v23))
            {
              onViewportChangedDo_cold_2();
            }
          }

          else
          {
            onViewportChangedDo_cold_3();
          }
        }
      }

      else
      {
        onViewportChangedDo_cold_4();
      }
    }

    else
    {
      onViewportChangedDo_cold_5();
    }
  }

  CFRelease(v2);
LABEL_40:
  free(a1);
}

CFTypeRef copyCurrentActiveCaptions(uint64_t a1, CMTime *a2)
{
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  cf = 0;
  v4 = *(a1 + 240);
  FigBytePumpGetFigBaseObject();
  v6 = v5;
  v8 = v7;
  FigCaptionRendererParentIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v10 = *(ProtocolVTable + 16);
    if (v10)
    {
      v11 = *(v10 + 32);
      if (v11)
      {
        v11(v4, &cf, v6, v8);
      }
    }
  }

  v12 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (MutableCopy)
  {
    v14 = MutableCopy;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (CFArrayGetCount(v14) >= 1)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
        time.value = 0;
        *&time.timescale = 0;
        FigBytePumpGetFigBaseObject();
        time.value = v18;
        *&time.timescale = v19;
        FigCaptionRendererIntervalProtocolGetProtocolID();
        v20 = CMBaseObjectGetProtocolVTable();
        if (v20)
        {
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = *(v21 + 8);
            if (v22)
            {
              v22(ValueAtIndex, &time);
            }
          }
        }

        if (*&time.value + *&time.timescale == Seconds)
        {
          CFArrayRemoveValueAtIndex(v14, v15);
          --v16;
        }

        v15 = ++v16;
      }

      while (CFArrayGetCount(v14) > v16);
    }

    cf = CFArrayCreateCopy(v12, v14);
    CFRelease(v14);
  }

  return cf;
}

void updateNodeTree(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  if (theArray)
  {
    v6 = *(a1 + 248);
    v7 = *MEMORY[0x1E695E480];
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
    v235[0] = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v10 = *(ProtocolVTable + 16)) != 0 && (v11 = *(v10 + 24)) != 0 && (v219 = theArray, v220 = v6, !v11(v6, v235)))
    {
      if ((*(a1 + 268) & 0xFFFFFFFE) == 2 && CFArrayGetCount(v235[0]) >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = *MEMORY[0x1E6960968];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v235[0], v12);
          v234 = 0;
          FigCaptionRendererBaseProtocolGetProtocolID();
          v16 = CMBaseObjectGetProtocolVTable();
          if (!v16)
          {
            break;
          }

          v17 = *(v16 + 16);
          if (!v17)
          {
            break;
          }

          v18 = *(v17 + 8);
          if (!v18 || v18(ValueAtIndex, &v234))
          {
            break;
          }

          v19 = v234;
          if (v234)
          {
            if (!strcmp(v234, "FigCaptionRendererStackLayoutRegion") || !strcmp(v19, "FigCaptionRendererTTMLRegion") || !strcmp(v19, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v19, "FigCaptionRendereriTTRegion") || !strcmp(v19, "FigCaptionRendererSRTRegion") || !strcmp(v19, "FigCaptionRendererFreeLayoutRegion"))
            {
              v233 = 0;
              FigCaptionRendererRegionProtocolGetProtocolID();
              v28 = CMBaseObjectGetProtocolVTable();
              if (v28)
              {
                v29 = *(v28 + 16);
                if (v29)
                {
                  v30 = *(v29 + 16);
                  if (v30)
                  {
                    v30(ValueAtIndex, &v233);
                  }
                }
              }

              theArraya = 0;
              FigCaptionRendererNodeProtocolGetProtocolID();
              v31 = CMBaseObjectGetProtocolVTable();
              if (!v31 || (v32 = *(v31 + 16)) == 0 || (v33 = *(v32 + 24)) == 0 || (v221 = v13, v33(ValueAtIndex, &theArraya)))
              {
                updateNodeTree_cold_3();
                goto LABEL_305;
              }

              if (CFArrayGetCount(theArraya) < 1)
              {
LABEL_111:
                v13 = v221;
                goto LABEL_112;
              }

              v34 = 0;
              v35 = 0;
              while (2)
              {
                v36 = CFArrayGetValueAtIndex(theArraya, v34);
                aStr = 0;
                FigCaptionRendererCaptionProtocolGetProtocolID();
                v37 = CMBaseObjectGetProtocolVTable();
                if (v37)
                {
                  v38 = *(v37 + 16);
                  if (v38)
                  {
                    v39 = *(v38 + 32);
                    if (v39)
                    {
                      v39(v36, &aStr);
                    }
                  }
                }

                effectiveRange.location = 0;
                effectiveRange.length = 0;
                Attribute = CFAttributedStringGetAttribute(aStr, 0, v14, &effectiveRange);
                if (Attribute)
                {
                  Mutable = searchNodesCopyByID(MutableCopy, Attribute);
                  goto LABEL_51;
                }

                Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
                idx[0] = 0;
                if (CFArrayGetCount(MutableCopy) < 1)
                {
                  goto LABEL_60;
                }

                v43 = -1;
                do
                {
                  if (CFArrayGetValueAtIndex(MutableCopy, idx[0]) == v36)
                  {
                    v43 = idx[0];
                    v44 = CFNumberCreate(v7, kCFNumberCFIndexType, idx);
                    CFArrayAppendValue(Mutable, v44);
                    if (v44)
                    {
                      CFRelease(v44);
                    }
                  }

                  v45 = ++idx[0];
                }

                while (v45 < CFArrayGetCount(MutableCopy));
                if (v43 == -1)
                {
LABEL_60:
                  if (Mutable)
                  {
                    CFRelease(Mutable);
                  }

LABEL_62:
                  v229 = 0;
                  FigCaptionRendererCaptionProtocolGetProtocolID();
                  v46 = CMBaseObjectGetProtocolVTable();
                  if (v46)
                  {
                    v47 = *(v46 + 16);
                    if (v47)
                    {
                      v48 = *(v47 + 48);
                      if (v48)
                      {
                        v48(v36, &v229);
                      }
                    }
                  }

                  __s1 = 0;
                  FigCaptionRendererBaseProtocolGetProtocolID();
                  v49 = CMBaseObjectGetProtocolVTable();
                  if (v49)
                  {
                    v50 = *(v49 + 16);
                    if (v50)
                    {
                      v51 = *(v50 + 8);
                      if (v51)
                      {
                        v51(v36, &__s1);
                      }
                    }
                  }

                  if (v229 != 1)
                  {
                    goto LABEL_103;
                  }

                  if (strcmp(v234, "FigCaptionRendererCellStackLayoutRegion"))
                  {
                    goto LABEL_103;
                  }

                  v52 = __s1;
                  if (!__s1 || strcmp(__s1, "FigCaptionRendererCaption") && strcmp(v52, "FigCaptionRendererPaintOnCaption"))
                  {
                    goto LABEL_103;
                  }

                  idx[0] = 0;
                  idx[1] = 0;
                  FigBytePumpGetFigBaseObject();
                  idx[0] = v53;
                  idx[1] = v54;
                  FigCaptionRendererIntervalProtocolGetProtocolID();
                  v55 = CMBaseObjectGetProtocolVTable();
                  if (v55)
                  {
                    v56 = *(v55 + 16);
                    if (v56)
                    {
                      v57 = *(v56 + 8);
                      if (v57)
                      {
                        v57(v36, idx);
                      }
                    }
                  }

                  *&BOOLean = 0.0;
                  v227 = 0.0;
                  FigBytePumpGetFigBaseObject();
                  BOOLean = v58;
                  v227 = v59;
                  if (CFArrayGetCount(MutableCopy) >= 1)
                  {
                    v60 = CFArrayGetValueAtIndex(MutableCopy, 0);
                    theDict = 0;
                    FigCaptionRendererCaptionProtocolGetProtocolID();
                    v61 = CMBaseObjectGetProtocolVTable();
                    if (!v61 || (v62 = *(v61 + 16)) == 0 || (v63 = *(v62 + 16)) == 0 || v63(v60, &theDict))
                    {
                      updateNodeTree_cold_2();
                      goto LABEL_305;
                    }

                    Value = CFDictionaryGetValue(theDict, @"region");
                    if (Value)
                    {
                      if (Value == v233)
                      {
                        FigCaptionRendererIntervalProtocolGetProtocolID();
                        v65 = CMBaseObjectGetProtocolVTable();
                        if (v65)
                        {
                          v66 = *(v65 + 16);
                          if (v66)
                          {
                            v67 = *(v66 + 8);
                            if (v67)
                            {
                              v67(v60, &BOOLean);
                            }
                          }
                        }
                      }
                    }
                  }

                  if (*&BOOLean - (*idx + *&idx[1]) == 0.0)
                  {
                    v68 = *(a1 + 240);
                    FigCaptionRendererParentIntervalProtocolGetProtocolID();
                    v69 = CMBaseObjectGetProtocolVTable();
                    if (!v69 || (v70 = *(v69 + 16)) == 0 || (v71 = *(v70 + 16)) == 0 || v71(v68, v36))
                    {
                      updateNodeTree_cold_1();
                      goto LABEL_305;
                    }

                    v72 = *idx;
                    v73 = v227 + *&idx[1];
                    *&idx[1] = v227 + *&idx[1];
                    FigCaptionRendererIntervalProtocolGetProtocolID();
                    v74 = CMBaseObjectGetProtocolVTable();
                    if (v74)
                    {
                      v75 = *(v74 + 16);
                      if (v75)
                      {
                        v76 = *(v75 + 16);
                        if (v76)
                        {
                          v76(v36, v72, v73);
                        }
                      }
                    }

                    v77 = *(a1 + 240);
                    FigCaptionRendererParentIntervalProtocolGetProtocolID();
                    v78 = CMBaseObjectGetProtocolVTable();
                    if (v78)
                    {
                      v79 = *(v78 + 16);
                      if (v79)
                      {
                        v80 = *(v79 + 8);
                        if (v80)
                        {
                          v80(v77, v36);
                        }
                      }
                    }
                  }

                  else
                  {
LABEL_103:
                    v81 = *(a1 + 584);
                    if (v81)
                    {
                      v82 = CFDictionaryGetValue(v81, v36);
                      if (v82)
                      {
                        v83 = v82;
                        FigCaptionRendererOutputNodeProtocolGetProtocolID();
                        v84 = CMBaseObjectGetProtocolVTable();
                        if (v84)
                        {
                          v85 = *(v84 + 16);
                          if (v85)
                          {
                            v86 = *(v85 + 16);
                            if (v86)
                            {
                              v86(v83, 0);
                            }
                          }
                        }
                      }
                    }

                    CFArrayRemoveValueAtIndex(theArraya, v34);
                    --v35;
                  }
                }

                else
                {
LABEL_51:
                  if (!Mutable)
                  {
                    goto LABEL_62;
                  }

                  removeNodesByIndexes(MutableCopy, Mutable);
                  CFRelease(Mutable);
                  v42 = *(a1 + 72) != 0;
                  *idx = *a3;
                  v224[0] = *(a3 + 16);
                  updateTimedNode(v36, idx, v42);
                }

                v34 = ++v35;
                if (CFArrayGetCount(theArraya) <= v35)
                {
                  goto LABEL_111;
                }

                continue;
              }
            }

            if (strcmp(v19, "FigCaptionRendererCaption") && strcmp(v19, "FigCaptionRendererPaintOnCaption"))
            {
              goto LABEL_112;
            }

            *&BOOLean = 0.0;
            FigCaptionRendererCaptionProtocolGetProtocolID();
            v20 = CMBaseObjectGetProtocolVTable();
            if (v20)
            {
              v21 = *(v20 + 16);
              if (v21)
              {
                v22 = *(v21 + 32);
                if (v22)
                {
                  v22(ValueAtIndex, &BOOLean);
                }
              }
            }

            LODWORD(__s1) = 0;
            FigCaptionRendererCaptionProtocolGetProtocolID();
            v23 = CMBaseObjectGetProtocolVTable();
            if (v23)
            {
              v24 = *(v23 + 16);
              if (v24)
              {
                v25 = *(v24 + 48);
                if (v25)
                {
                  v25(ValueAtIndex, &__s1);
                }
              }
            }

            if (__s1 > 4 || __s1 == 2)
            {
              effectiveRange.location = 0;
              effectiveRange.length = 0;
              v96 = CFAttributedStringGetAttribute(BOOLean, 0, v14, &effectiveRange);
              if (!v96)
              {
                goto LABEL_112;
              }

              v97 = searchNodesCopyByID(MutableCopy, v96);
              if (!v97)
              {
                v114 = *(a1 + 584);
                if (v114)
                {
                  v115 = CFDictionaryGetValue(v114, ValueAtIndex);
                  if (v115)
                  {
                    FigCaptionRendererOutputNodeSetParentNode(v115);
                  }
                }

LABEL_147:
                v116 = v235[0];
                v237.length = CFArrayGetCount(v235[0]);
                v237.location = 0;
                FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v116, v237, ValueAtIndex);
                CFArrayRemoveValueAtIndex(v116, FirstIndexOfValue);
                --v13;
                goto LABEL_112;
              }

              v98 = v97;
              removeNodesByIndexes(MutableCopy, v97);
              CFRelease(v98);
            }

            else
            {
              v236.length = CFArrayGetCount(MutableCopy);
              v236.location = 0;
              v26 = CFArrayGetFirstIndexOfValue(MutableCopy, v236, ValueAtIndex);
              if (v26 == -1)
              {
                v233 = 0;
                FigCaptionRendererBaseProtocolGetProtocolID();
                v87 = CMBaseObjectGetProtocolVTable();
                if (v87)
                {
                  v88 = *(v87 + 16);
                  if (v88)
                  {
                    v89 = *(v88 + 8);
                    if (v89)
                    {
                      v89(ValueAtIndex, &v233);
                    }
                  }
                }

                if (v233 && !strcmp(v233, "FigCaptionRendererPaintOnCaption"))
                {
                  idx[0] = 0;
                  idx[1] = 0;
                  FigBytePumpGetFigBaseObject();
                  idx[0] = v99;
                  idx[1] = v100;
                  FigCaptionRendererIntervalProtocolGetProtocolID();
                  v101 = CMBaseObjectGetProtocolVTable();
                  if (v101)
                  {
                    v102 = *(v101 + 16);
                    if (v102)
                    {
                      v103 = *(v102 + 8);
                      if (v103)
                      {
                        v103(ValueAtIndex, idx);
                      }
                    }
                  }

                  effectiveRange.location = 0;
                  effectiveRange.length = 0;
                  FigBytePumpGetFigBaseObject();
                  effectiveRange.location = v104;
                  effectiveRange.length = v105;
                  if (CFArrayGetCount(MutableCopy) >= 1)
                  {
                    v106 = CFArrayGetValueAtIndex(MutableCopy, 0);
                    theArraya = 0;
                    FigCaptionRendererBaseProtocolGetProtocolID();
                    v107 = CMBaseObjectGetProtocolVTable();
                    if (v107)
                    {
                      v108 = *(v107 + 16);
                      if (v108)
                      {
                        v109 = *(v108 + 8);
                        if (v109)
                        {
                          v109(v106, &theArraya);
                        }
                      }
                    }

                    aStr = 0;
                    FigCaptionRendererCaptionProtocolGetProtocolID();
                    v110 = CMBaseObjectGetProtocolVTable();
                    if (v110)
                    {
                      v111 = *(v110 + 16);
                      if (v111)
                      {
                        v112 = *(v111 + 16);
                        if (v112)
                        {
                          v112(v106, &aStr);
                        }
                      }
                    }

                    if (aStr)
                    {
                      v113 = CFDictionaryGetValue(aStr, @"region") == 0;
                    }

                    else
                    {
                      v113 = 1;
                    }

                    if (theArraya && strcmp(theArraya, "FigCaptionRendererPaintOnCaption") == 0 && v113)
                    {
                      FigCaptionRendererIntervalGetRange(v106, &effectiveRange);
                    }
                  }

                  if (*&effectiveRange.location - (*idx + *&idx[1]) == 0.0)
                  {
                    v118 = *(a1 + 240);
                    FigCaptionRendererParentIntervalProtocolGetProtocolID();
                    v119 = CMBaseObjectGetProtocolVTable();
                    if (!v119 || (v120 = *(v119 + 16)) == 0 || (v121 = *(v120 + 16)) == 0 || v121(v118, ValueAtIndex))
                    {
                      fig_log_get_emitter();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v218, v3, v219);
                      goto LABEL_305;
                    }

                    v122 = *idx;
                    v123 = *&effectiveRange.length + *&idx[1];
                    *&idx[1] = *&effectiveRange.length + *&idx[1];
                    FigCaptionRendererIntervalProtocolGetProtocolID();
                    v124 = CMBaseObjectGetProtocolVTable();
                    if (v124)
                    {
                      v125 = *(v124 + 16);
                      if (v125)
                      {
                        v126 = *(v125 + 16);
                        if (v126)
                        {
                          v126(ValueAtIndex, v122, v123);
                        }
                      }
                    }

                    v127 = *(a1 + 240);
                    FigCaptionRendererParentIntervalProtocolGetProtocolID();
                    v128 = CMBaseObjectGetProtocolVTable();
                    if (v128)
                    {
                      v129 = *(v128 + 16);
                      if (v129)
                      {
                        v130 = *(v129 + 8);
                        if (v130)
                        {
                          v130(v127, ValueAtIndex);
                        }
                      }
                    }

                    goto LABEL_112;
                  }
                }

                v90 = *(a1 + 584);
                if (v90)
                {
                  v91 = CFDictionaryGetValue(v90, ValueAtIndex);
                  if (v91)
                  {
                    v92 = v91;
                    FigCaptionRendererOutputNodeProtocolGetProtocolID();
                    v93 = CMBaseObjectGetProtocolVTable();
                    if (v93)
                    {
                      v94 = *(v93 + 16);
                      if (v94)
                      {
                        v95 = *(v94 + 16);
                        if (v95)
                        {
                          v95(v92, 0);
                        }
                      }
                    }
                  }
                }

                goto LABEL_147;
              }

              CFArrayRemoveValueAtIndex(MutableCopy, v26);
            }

            v27 = *(a1 + 72) != 0;
            *idx = *a3;
            v224[0] = *(a3 + 16);
            updateTimedNode(ValueAtIndex, idx, v27);
          }

LABEL_112:
          v12 = ++v13;
          if (CFArrayGetCount(v235[0]) <= v13)
          {
            goto LABEL_165;
          }
        }

        updateNodeTree_cold_16();
        goto LABEL_305;
      }

LABEL_165:
      if (CFArrayGetCount(MutableCopy) >= 1)
      {
        v131 = 0;
        while (1)
        {
          v132 = CFArrayGetValueAtIndex(MutableCopy, v131);
          v133 = *(a1 + 72) != 0;
          *idx = *a3;
          v224[0] = *(a3 + 16);
          updateTimedNode(v132, idx, v133);
          effectiveRange.location = 0;
          FigCaptionRendererCaptionProtocolGetProtocolID();
          v134 = CMBaseObjectGetProtocolVTable();
          if (!v134)
          {
            break;
          }

          v135 = *(v134 + 16);
          if (!v135)
          {
            break;
          }

          v136 = *(v135 + 16);
          if (!v136 || v136(v132, &effectiveRange))
          {
            break;
          }

          v137 = CFDictionaryGetValue(effectiveRange.location, @"region");
          if (v137)
          {
            v138 = v137;
            if (CFArrayGetCount(v235[0]) >= 1)
            {
              for (i = 0; CFArrayGetCount(v235[0]) > i; ++i)
              {
                v140 = CFArrayGetValueAtIndex(v235[0], i);
                *&BOOLean = 0.0;
                FigCaptionRendererBaseProtocolGetProtocolID();
                v141 = CMBaseObjectGetProtocolVTable();
                if (!v141 || (v142 = *(v141 + 16)) == 0 || (v143 = *(v142 + 8)) == 0 || v143(v140, &BOOLean))
                {
                  updateNodeTree_cold_8();
                  goto LABEL_305;
                }

                v144 = BOOLean;
                if (*&BOOLean != 0.0 && (!strcmp(BOOLean, "FigCaptionRendererStackLayoutRegion") || !strcmp(v144, "FigCaptionRendererTTMLRegion") || !strcmp(v144, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v144, "FigCaptionRendereriTTRegion") || !strcmp(v144, "FigCaptionRendererSRTRegion") || !strcmp(v144, "FigCaptionRendererFreeLayoutRegion")))
                {
                  v234 = 0;
                  FigCaptionRendererRegionProtocolGetProtocolID();
                  v145 = CMBaseObjectGetProtocolVTable();
                  if (!v145 || (v146 = *(v145 + 16)) == 0 || (v147 = *(v146 + 16)) == 0 || v147(v140, &v234))
                  {
                    updateNodeTree_cold_7();
                    goto LABEL_305;
                  }

                  if (CFStringCompare(v138, v234, 1uLL) == kCFCompareEqualTo)
                  {
                    FigCaptionRendererNodeProtocolGetProtocolID();
                    v148 = CMBaseObjectGetProtocolVTable();
                    if (!v148 || (v149 = *(v148 + 16)) == 0 || (v150 = *(v149 + 40)) == 0 || v150(v140, v132))
                    {
                      updateNodeTree_cold_6();
                      goto LABEL_305;
                    }

                    v151 = *(a1 + 584);
                    if (v151)
                    {
                      v152 = CFDictionaryGetValue(v151, v132);
                      v153 = CFDictionaryGetValue(*(a1 + 584), v140);
                      if (v152)
                      {
                        v154 = v153;
                        if (v153)
                        {
                          FigCaptionRendererOutputNodeProtocolGetProtocolID();
                          v155 = CMBaseObjectGetProtocolVTable();
                          if (!v155 || (v156 = *(v155 + 16)) == 0 || (v157 = *(v156 + 24)) == 0 || v157(v154, v152))
                          {
                            updateNodeTree_cold_4();
                            goto LABEL_305;
                          }
                        }
                      }
                    }

                    v158 = *(MEMORY[0x1E695F050] + 16);
                    *idx = *MEMORY[0x1E695F050];
                    *v224 = v158;
                    FigCaptionRendererNodeProtocolGetProtocolID();
                    v159 = CMBaseObjectGetProtocolVTable();
                    if (v159)
                    {
                      v160 = *(v159 + 16);
                      if (v160)
                      {
                        v161 = *(v160 + 152);
                        if (v161)
                        {
                          v161(v140, idx);
                        }
                      }
                    }

                    v162 = *idx;
                    v163 = *&idx[1];
                    v164 = *v224;
                    FigCaptionRendererNodeProtocolGetProtocolID();
                    v165 = CMBaseObjectGetProtocolVTable();
                    if (!v165 || (v166 = *(v165 + 16)) == 0 || (v167 = *(v166 + 64)) == 0 || v167(v132, v162, v163, *&v164, *(&v164 + 1)))
                    {
                      updateNodeTree_cold_5();
                      goto LABEL_305;
                    }
                  }
                }
              }
            }
          }

          else
          {
            FigCaptionRendererNodeProtocolGetProtocolID();
            v168 = CMBaseObjectGetProtocolVTable();
            if (!v168 || (v169 = *(v168 + 16)) == 0 || (v170 = *(v169 + 40)) == 0 || v170(v220, v132))
            {
              updateNodeTree_cold_14();
              goto LABEL_305;
            }

            v171 = *(a1 + 584);
            if (v171)
            {
              v172 = CFDictionaryGetValue(v171, v132);
              v173 = CFDictionaryGetValue(*(a1 + 584), v220);
              if (v172)
              {
                v174 = v173;
                if (v173)
                {
                  FigCaptionRendererOutputNodeProtocolGetProtocolID();
                  v175 = CMBaseObjectGetProtocolVTable();
                  if (!v175 || (v176 = *(v175 + 16)) == 0 || (v177 = *(v176 + 24)) == 0 || v177(v174, v172))
                  {
                    updateNodeTree_cold_9();
                    goto LABEL_305;
                  }
                }
              }
            }

            *&BOOLean = 0.0;
            v178 = *(a1 + 248);
            FigCaptionRendererBaseProtocolGetProtocolID();
            v179 = CMBaseObjectGetProtocolVTable();
            if (!v179 || (v180 = *(v179 + 16)) == 0 || (v181 = *(v180 + 8)) == 0 || v181(v178, &BOOLean))
            {
              updateNodeTree_cold_13();
              goto LABEL_305;
            }

            v182 = *(MEMORY[0x1E695F050] + 16);
            *idx = *MEMORY[0x1E695F050];
            *v224 = v182;
            if (!strcmp(BOOLean, "FigCaptionRendererAVFLayoutRegion"))
            {
              LODWORD(v234) = 0;
              FigCaptionRendererCaptionProtocolGetProtocolID();
              v186 = CMBaseObjectGetProtocolVTable();
              if (v186)
              {
                v187 = *(v186 + 16);
                if (v187)
                {
                  v188 = *(v187 + 48);
                  if (v188)
                  {
                    v188(v132, &v234);
                  }
                }
              }

              if (v234 == 3)
              {
                FigCaptionRendererNodeProtocolGetProtocolID();
                v189 = CMBaseObjectGetProtocolVTable();
                if (v189)
                {
                  v190 = *(v189 + 16);
                  if (v190)
                  {
                    v191 = *(v190 + 104);
                    if (v191)
                    {
                      v191(v220, idx);
                    }
                  }
                }
              }

              if (v224[0] == 0.0 || v224[1] == 0.0)
              {
                idx[0] = FCRGetVideoPresentationBounds(*(a1 + 664), *(a1 + 672), *(a1 + 632), *(a1 + 640), *(a1 + 648), *(a1 + 656));
                idx[1] = v192;
                v224[0] = v193;
                v224[1] = v194;
              }
            }

            else
            {
              FigCaptionRendererNodeProtocolGetProtocolID();
              v183 = CMBaseObjectGetProtocolVTable();
              if (v183)
              {
                v184 = *(v183 + 16);
                if (v184)
                {
                  v185 = *(v184 + 152);
                  if (v185)
                  {
                    v185(v220, idx);
                  }
                }
              }
            }

            v195 = *idx;
            v196 = *&idx[1];
            v197 = *v224;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v198 = CMBaseObjectGetProtocolVTable();
            if (!v198 || (v199 = *(v198 + 16)) == 0 || (v200 = *(v199 + 64)) == 0 || v200(v132, v195, v196, *&v197, *(&v197 + 1)))
            {
              updateNodeTree_cold_12();
              goto LABEL_305;
            }
          }

          if (CFArrayGetCount(MutableCopy) <= ++v131)
          {
            goto LABEL_248;
          }
        }

        updateNodeTree_cold_15();
        goto LABEL_305;
      }

LABEL_248:
      if (CFArrayGetCount(v219) && CFArrayGetCount(v235[0]) >= 1)
      {
        v201 = 0;
        v202 = *MEMORY[0x1E695E4C0];
        v203 = *MEMORY[0x1E695E4D0];
        do
        {
          v204 = CFArrayGetValueAtIndex(v235[0], v201);
          idx[0] = 0;
          FigCaptionRendererBaseProtocolGetProtocolID();
          v205 = CMBaseObjectGetProtocolVTable();
          if (!v205 || (v206 = *(v205 + 16)) == 0 || (v207 = *(v206 + 8)) == 0 || v207(v204, idx))
          {
            updateNodeTree_cold_11();
            goto LABEL_305;
          }

          if (idx[0] && !strcmp(idx[0], "FigCaptionRendererTTMLRegion"))
          {
            effectiveRange.location = 0;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v208 = CMBaseObjectGetProtocolVTable();
            if (!v208 || (v209 = *(v208 + 16)) == 0 || (v210 = *(v209 + 24)) == 0 || v210(v204, &effectiveRange))
            {
              updateNodeTree_cold_10();
              goto LABEL_305;
            }

            if (!CFArrayGetCount(effectiveRange.location))
            {
              v211 = v204;
              v212 = v203;
              goto LABEL_265;
            }

            BOOLean = v202;
            FigCaptionRendererTTMLRegionGetInvisible(v204, &BOOLean);
            if (CFBooleanGetValue(BOOLean))
            {
              v211 = v204;
              v212 = v202;
LABEL_265:
              FigCaptionRendererTTMLRegionSetInvisible(v211, v212);
            }
          }

          ++v201;
        }

        while (CFArrayGetCount(v235[0]) > v201);
      }

      if (!*(a1 + 72))
      {
        *idx = *a3;
        v224[0] = *(a3 + 16);
        v213 = copyCurrentActiveCaptions(a1, idx);
        if (CFArrayGetCount(v213) >= 1)
        {
          v214 = 0;
          do
          {
            v215 = CFArrayGetValueAtIndex(v213, v214);
            v216 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
            if (!v216)
            {
              break;
            }

            v217 = v216;
            *v216 = CFRetain(a1);
            v217[1] = CFRetain(v215);
            renderCaptionDo(v217);
            ++v214;
          }

          while (CFArrayGetCount(v213) > v214);
        }

        if (v213)
        {
          CFRelease(v213);
        }
      }
    }

    else
    {
      updateNodeTree_cold_17();
    }

LABEL_305:
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

double ensureCaptionsAreRendered(uint64_t a1, uint64_t a2)
{
  theArray = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return ensureCaptionsAreRendered_cold_4();
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return ensureCaptionsAreRendered_cold_4();
  }

  v6 = *(v5 + 24);
  if (!v6 || v6(a2, &theArray))
  {
    return ensureCaptionsAreRendered_cold_4();
  }

  v8 = 0;
  v9 = MEMORY[0x1E695F050];
  while (1)
  {
    Count = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    if (v8 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    __s1 = 0;
    FigCaptionRendererBaseProtocolGetProtocolID();
    v12 = CMBaseObjectGetProtocolVTable();
    if (!v12)
    {
      return ensureCaptionsAreRendered_cold_3();
    }

    v13 = *(v12 + 16);
    if (!v13)
    {
      return ensureCaptionsAreRendered_cold_3();
    }

    v14 = *(v13 + 8);
    if (!v14 || v14(ValueAtIndex, &__s1))
    {
      return ensureCaptionsAreRendered_cold_3();
    }

    v15 = __s1;
    if (__s1)
    {
      if (!strcmp(__s1, "FigCaptionRendererCaption"))
      {
        v16 = v9[1];
        v27 = *v9;
        v28 = v16;
        v26 = 0;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v17 = CMBaseObjectGetProtocolVTable();
        if (!v17)
        {
          return ensureCaptionsAreRendered_cold_2();
        }

        v18 = *(v17 + 16);
        if (!v18)
        {
          return ensureCaptionsAreRendered_cold_2();
        }

        v19 = *(v18 + 104);
        if (!v19 || v19(ValueAtIndex, &v27))
        {
          return ensureCaptionsAreRendered_cold_2();
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v20 = CMBaseObjectGetProtocolVTable();
        if (!v20)
        {
          return ensureCaptionsAreRendered_cold_1();
        }

        v21 = *(v20 + 16);
        if (!v21)
        {
          return ensureCaptionsAreRendered_cold_1();
        }

        v22 = *(v21 + 224);
        if (!v22 || v22(ValueAtIndex, &v26))
        {
          return ensureCaptionsAreRendered_cold_1();
        }

        if (*&v28 == 0.0 || (result = *(&v28 + 1), *(&v28 + 1) == 0.0) || v26)
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v23 = CMBaseObjectGetProtocolVTable();
          if (v23)
          {
            v24 = *(v23 + 16);
            if (v24)
            {
              v25 = *(v24 + 280);
              if (v25)
              {
                v25(ValueAtIndex, a1 + 288);
              }
            }
          }
        }
      }

      else if (!strcmp(v15, "FigCaptionRendererTTMLRegion"))
      {
        ensureCaptionsAreRendered(a1, ValueAtIndex);
      }
    }

    ++v8;
  }

  return result;
}

void copyOutputNodeContentIntoCGContext(uint64_t a1, CGContext *a2)
{
  if (!a1 || !a2)
  {
    copyOutputNodeContentIntoCGContext_cold_5();
    return;
  }

  v20 = 0;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0 || (v6 = *(v5 + 112)) == 0 || v6(a1, &v20))
  {
    copyOutputNodeContentIntoCGContext_cold_4();
    return;
  }

  if (v20)
  {
    *v19 = *MEMORY[0x1E695EFF8];
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v7 = CMBaseObjectGetProtocolVTable();
    if (!v7 || (v8 = *(v7 + 16)) == 0 || (v9 = *(v8 + 64)) == 0 || v9(a1, v19))
    {
      copyOutputNodeContentIntoCGContext_cold_2();
      return;
    }

    v18 = *MEMORY[0x1E695F060];
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v10 = CMBaseObjectGetProtocolVTable();
    if (!v10 || (v11 = *(v10 + 16)) == 0 || (v12 = *(v11 + 80)) == 0 || v12(a1, &v18))
    {
      copyOutputNodeContentIntoCGContext_cold_1();
      return;
    }

    v22.size = v18;
    v22.origin.x = v19[0] - v18.width * 0.5;
    v22.origin.y = v19[1] - v18.height * 0.5;
    v23 = CGRectIntegral(v22);
    CGContextDrawImage(a2, v23, v20);
  }

  theArray = 0;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  v13 = CMBaseObjectGetProtocolVTable();
  if (v13 && (v14 = *(v13 + 16)) != 0 && (v15 = *(v14 + 40)) != 0 && !v15(a1, &theArray))
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v21.length = Count;
        v21.location = 0;
        CFArrayApplyFunction(theArray, v21, copyOutputNodeContentIntoCGContext, a2);
      }
    }
  }

  else
  {
    copyOutputNodeContentIntoCGContext_cold_3();
  }
}

__CFArray *searchNodesCopyByID(const __CFArray *a1, const __CFString *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  idx = 0;
  if (CFArrayGetCount(a1) <= 0)
  {
    goto LABEL_26;
  }

  theString2 = a2;
  v6 = -1;
  attrName = *MEMORY[0x1E6960968];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, idx);
    __s1 = 0;
    FigCaptionRendererBaseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable)
    {
      break;
    }

    v9 = *(ProtocolVTable + 16);
    if (!v9)
    {
      break;
    }

    v10 = *(v9 + 8);
    if (!v10 || v10(ValueAtIndex, &__s1))
    {
      break;
    }

    v11 = __s1;
    if (__s1 && strcmp(__s1, "FigCaptionRendererStackLayoutRegion") && strcmp(v11, "FigCaptionRendererTTMLRegion") && strcmp(v11, "FigCaptionRendererCellStackLayoutRegion") && strcmp(v11, "FigCaptionRendereriTTRegion") && strcmp(v11, "FigCaptionRendererSRTRegion") && strcmp(v11, "FigCaptionRendererFreeLayoutRegion") && !strcmp(v11, "FigCaptionRendererCaption"))
    {
      aStr = 0;
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v12 = CMBaseObjectGetProtocolVTable();
      if (v12)
      {
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = *(v13 + 32);
          if (v14)
          {
            v14(ValueAtIndex, &aStr);
          }
        }
      }

      effectiveRange.location = 0;
      effectiveRange.length = 0;
      Attribute = CFAttributedStringGetAttribute(aStr, 0, attrName, &effectiveRange);
      if (CFStringCompare(Attribute, theString2, 1uLL) == kCFCompareEqualTo)
      {
        v6 = idx;
        v16 = CFNumberCreate(v4, kCFNumberCFIndexType, &idx);
        CFArrayAppendValue(Mutable, v16);
        if (v16)
        {
          CFRelease(v16);
        }
      }
    }

    v17 = ++idx;
    if (v17 >= CFArrayGetCount(a1))
    {
      goto LABEL_25;
    }
  }

  searchNodesCopyByID_cold_1();
LABEL_25:
  if (v6 == -1)
  {
LABEL_26:
    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

CFIndex removeNodesByIndexes(__CFArray *a1, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v5 = 0;
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      valuePtr = -1;
      CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr);
      valuePtr += v5;
      CFArrayRemoveValueAtIndex(a1, valuePtr);
      result = CFArrayGetCount(theArray);
      --v5;
    }
  }

  return result;
}

double updateTimedNode(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a3;
  __s1 = 0;
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return updateTimedNode_cold_1();
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return updateTimedNode_cold_1();
  }

  v8 = *(v7 + 8);
  if (!v8 || v8(a1, &__s1))
  {
    return updateTimedNode_cold_1();
  }

  if (__s1)
  {
    if (!strcmp(__s1, "FigCaptionRendererPaintOnCaption"))
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      FigCaptionRendererPaintOnCaptionSetCurrentTime(a1, &v10, v3);
    }
  }

  return result;
}

void renderCaptionDo(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (((*(*a1 + 120) & 0x80000000) != 0 || *(v3 + 124) > 0 || *(v3 + 268) == 1) && *(v3 + 1365))
  {
    *(v3 + 608) = 0u;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v5 = *(ProtocolVTable + 16);
      if (v5)
      {
        v6 = *(v5 + 280);
        if (v6)
        {
          v6(v2, v3 + 288);
        }
      }
    }

    v7 = *(*a1 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v8 = CMBaseObjectGetProtocolVTable();
    if (v8 && (v9 = *(v8 + 16)) != 0 && (v10 = *(v9 + 104)) != 0 && !v10(v7, v3 + 128))
    {
      v11 = *(v3 + 160);
      *(v3 + 160) = v2;
      if (v2)
      {
        CFRetain(v2);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (*(v3 + 268) != 1)
      {
        image = 0;
        v12 = *(v3 + 248);
        FigCaptionRendererNodeProtocolGetProtocolID();
        v13 = CMBaseObjectGetProtocolVTable();
        if (v13 && (v14 = *(v13 + 16)) != 0 && (v15 = *(v14 + 176)) != 0 && !v15(v12, &image))
        {
          BytesPerRow = CGImageGetBytesPerRow(image);
          *(v3 + 124) -= CGImageGetHeight(image) * BytesPerRow;
          if (*(v3 + 268) != 2)
          {
            FigBytePumpGetFigBaseObject();
            v25 = v17;
            v26 = v18;
            FigCaptionRendererIntervalProtocolGetProtocolID();
            v19 = CMBaseObjectGetProtocolVTable();
            if (v19 && (v20 = *(v19 + 16)) != 0 && (v21 = *(v20 + 8)) != 0 && !v21(v2, &v25))
            {
              FigCaptionRendererTriggerManualTrigger(*(v3 + 48));
              v22 = *(v3 + 48);
              CMTimeMake(&v24, ((v25 + v26) * 1000.0), 1000);
              if (FigCaptionRendererTriggerScheduleEvent(v22, v2, &v24.value))
              {
                renderCaptionDo_cold_1();
              }
            }

            else
            {
              renderCaptionDo_cold_2();
            }
          }
        }

        else
        {
          renderCaptionDo_cold_3();
        }
      }
    }

    else
    {
      renderCaptionDo_cold_4();
    }
  }

  v23 = a1[1];
  if (v23)
  {
    CFRelease(v23);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void layoutInContext(const void *a1, void *a2)
{
  if (a2[21])
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = CFRetain(a2);
      if (a1)
      {
        v6 = CFRetain(a1);
      }

      else
      {
        v6 = 0;
      }

      v5[1] = v6;
      v7 = a2[21];

      dispatch_sync_f(v7, v5, layoutSceneDo);
    }
  }
}

void layoutSceneDo(uint64_t a1)
{
  v2 = *a1;
  v2[38] = 0u;
  *(v2 + 75) = *(a1 + 8);
  v3 = *(v2 + 31);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0 || (v6 = *(v5 + 304)) == 0 || v6(v3, v2 + 18))
  {
    layoutSceneDo_cold_1();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  free(a1);
}

void onCaptionInputDo(uint64_t a1)
{
  FigBytePumpGetFigBaseObject();
  v144 = v2;
  v145 = v3;
  v5 = *a1;
  v4 = *(a1 + 8);
  values = *a1;
  FigSimpleMutexLock();
  if (*(v4 + 1363))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    onCaptionInputDo_cold_1(v4, (v4 + 1363), (v4 + 1392));
  }

  if (*(v4 + 268) == 1 || *(v4 + 40))
  {
    v6 = *(v4 + 1400);
    if (v6)
    {
      FigCaptionRendererCaptionProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 72);
          if (v9)
          {
            v9(v5, v6);
          }
        }
      }
    }

    if (*(v4 + 1408))
    {
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v10 = CMBaseObjectGetProtocolVTable();
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(v11 + 120);
          if (v12)
          {
            v12(v5, *MEMORY[0x1E695E4D0]);
          }
        }
      }
    }

    Seconds = 0.0;
    if (*(v4 + 268) != 1)
    {
      v14 = *(v4 + 48);
      if (!v14)
      {
        onCaptionInputDo_cold_2();
        goto LABEL_205;
      }

      value[0] = 0;
      value[1] = 0;
      *&v136 = 0;
      FigCaptionRendererTriggerGetCurrentTime(v14, value);
      *&time.value = *value;
      time.epoch = v136;
      Seconds = CMTimeGetSeconds(&time);
    }

    v142 = 0;
    FigCaptionRendererCaptionProtocolGetProtocolID();
    v15 = CMBaseObjectGetProtocolVTable();
    if (!v15 || (v16 = *(v15 + 16)) == 0 || (v17 = *(v16 + 48)) == 0 || v17(v5, &v142))
    {
      onCaptionInputDo_cold_24();
      goto LABEL_205;
    }

    if (v142 == 5 && *(v4 + 268) == 3)
    {
      value[0] = 0;
      value[1] = 0;
      v18 = *(v4 + 240);
      FigCaptionRendererIntervalProtocolGetProtocolID();
      v19 = CMBaseObjectGetProtocolVTable();
      if (v19 && (v20 = *(v19 + 16)) != 0 && (v21 = *(v20 + 8)) != 0 && !v21(v18, value))
      {
        time.value = 0;
        copyCaptionsByRange(*(v4 + 240), 0, &time, 0, *value, *&value[1], *value, *&value[1]);
        purgeCaptionCachesFromCaptionsTimeline(v4, time.value);
        if (time.value)
        {
          CFRelease(time.value);
        }
      }

      else
      {
        onCaptionInputDo_cold_23();
      }
    }

    else
    {
      if (*(v4 + 584))
      {
        value[0] = 0;
        FigCaptionRendererCALayerOutputNodeCreate(value);
        if (v22)
        {
          onCaptionInputDo_cold_3();
          goto LABEL_205;
        }

        CFDictionarySetValue(*(v4 + 584), v5, value[0]);
        if (value[0])
        {
          CFRelease(value[0]);
        }
      }

      if ((*(v4 + 268) & 0xFFFFFFFE) != 2)
      {
        goto LABEL_41;
      }

      FigCaptionRendererIntervalProtocolGetProtocolID();
      v23 = CMBaseObjectGetProtocolVTable();
      if (!v23 || (v24 = *(v23 + 16)) == 0 || (v25 = *(v24 + 8)) == 0 || v25(v5, &v144))
      {
        onCaptionInputDo_cold_22();
        goto LABEL_205;
      }

      v26 = Seconds + *(v4 + 88);
      if (v144 + v145 >= v26 && v144 <= v26 + *(v4 + 96))
      {
LABEL_41:
        __s1 = 0;
        v27 = *(v4 + 248);
        FigCaptionRendererBaseProtocolGetProtocolID();
        v28 = CMBaseObjectGetProtocolVTable();
        if (!v28 || (v29 = *(v28 + 16)) == 0 || (v30 = *(v29 + 8)) == 0 || v30(v27, &__s1))
        {
          onCaptionInputDo_cold_21();
          goto LABEL_205;
        }

        v132 = *(MEMORY[0x1E695F050] + 16);
        v133 = *MEMORY[0x1E695F050];
        v139 = *MEMORY[0x1E695F050];
        *v140 = v132;
        if (!strcmp(__s1, "FigCaptionRendererAVFLayoutRegion"))
        {
          if (v142 == 3)
          {
            v35 = *(v4 + 248);
            FigCaptionRendererNodeProtocolGetProtocolID();
            v36 = CMBaseObjectGetProtocolVTable();
            if (!v36 || (v37 = *(v36 + 16)) == 0 || (v38 = *(v37 + 104)) == 0 || v38(v35, &v139))
            {
              onCaptionInputDo_cold_20();
              goto LABEL_205;
            }
          }

          if (v140[0] == 0.0 || v140[1] == 0.0)
          {
            *&v139 = FCRGetVideoPresentationBounds(*(v4 + 664), *(v4 + 672), *(v4 + 632), *(v4 + 640), *(v4 + 648), *(v4 + 656));
            *(&v139 + 1) = v39;
            v140[0] = v40;
            v140[1] = v41;
            if (*(v4 + 1046))
            {
              v42 = *(v4 + 712);
              v43 = *(v4 + 728);
              if (v42 > 0.0 || v43 > 0.0)
              {
                v140[0] = v40 - (v42 + v43);
              }
            }

            if (*(v4 + 1048))
            {
              v44 = *(v4 + 744);
              v45 = *(v4 + 760);
              if (v44 > 0.0 || v45 > 0.0)
              {
                v140[1] = v41 - (v44 + v45);
              }
            }
          }
        }

        else
        {
          v31 = *(v4 + 248);
          FigCaptionRendererNodeProtocolGetProtocolID();
          v32 = CMBaseObjectGetProtocolVTable();
          if (!v32 || (v33 = *(v32 + 16)) == 0 || (v34 = *(v33 + 152)) == 0 || v34(v31, &v139))
          {
            onCaptionInputDo_cold_4();
            goto LABEL_205;
          }
        }

        theDict = 0;
        FigCaptionRendererCaptionProtocolGetProtocolID();
        v46 = CMBaseObjectGetProtocolVTable();
        if (!v46 || (v47 = *(v46 + 16)) == 0 || (v48 = *(v47 + 16)) == 0 || v48(v5, &theDict))
        {
          onCaptionInputDo_cold_19();
          goto LABEL_205;
        }

        v49 = CFDictionaryGetValue(theDict, @"region");
        if (v49)
        {
          v50 = v49;
          time.value = 0;
          v51 = *(v4 + 248);
          FigCaptionRendererNodeProtocolGetProtocolID();
          v52 = CMBaseObjectGetProtocolVTable();
          if (!v52 || (v53 = *(v52 + 16)) == 0 || (v54 = *(v53 + 24)) == 0 || v54(v51, &time))
          {
            onCaptionInputDo_cold_11();
            goto LABEL_205;
          }

          if (CFArrayGetCount(time.value) >= 1)
          {
            v55 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(time.value, v55);
              v147[0] = 0;
              FigCaptionRendererBaseProtocolGetProtocolID();
              v57 = CMBaseObjectGetProtocolVTable();
              if (!v57 || (v58 = *(v57 + 16)) == 0 || (v59 = *(v58 + 8)) == 0 || v59(ValueAtIndex, v147))
              {
                onCaptionInputDo_cold_10();
                goto LABEL_205;
              }

              v60 = v147[0];
              if (!strcmp(v147[0], "FigCaptionRendererStackLayoutRegion") || !strcmp(v60, "FigCaptionRendererTTMLRegion") || !strcmp(v60, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v60, "FigCaptionRendereriTTRegion") || !strcmp(v60, "FigCaptionRendererSRTRegion") || !strcmp(v60, "FigCaptionRendererFreeLayoutRegion"))
              {
                theString2 = 0;
                FigCaptionRendererRegionProtocolGetProtocolID();
                v61 = CMBaseObjectGetProtocolVTable();
                if (!v61 || (v62 = *(v61 + 16)) == 0 || (v63 = *(v62 + 16)) == 0 || v63(ValueAtIndex, &theString2))
                {
                  onCaptionInputDo_cold_9();
                  goto LABEL_205;
                }

                if (CFStringCompare(v50, theString2, 1uLL) == kCFCompareEqualTo)
                {
                  break;
                }
              }

              if (CFArrayGetCount(time.value) <= ++v55)
              {
                goto LABEL_94;
              }
            }

            *value = v133;
            v136 = v132;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v100 = CMBaseObjectGetProtocolVTable();
            if (!v100 || (v101 = *(v100 + 16)) == 0 || (v102 = *(v101 + 152)) == 0 || v102(ValueAtIndex, value))
            {
              onCaptionInputDo_cold_8();
              goto LABEL_205;
            }

            v103 = value[0];
            v104 = value[1];
            v105 = v136;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v106 = CMBaseObjectGetProtocolVTable();
            if (!v106 || (v107 = *(v106 + 16)) == 0 || (v108 = *(v107 + 64)) == 0 || v108(v5, *&v103, *&v104, *&v105, *(&v105 + 1)))
            {
              onCaptionInputDo_cold_7();
              goto LABEL_205;
            }

            FigCaptionRendererNodeProtocolGetProtocolID();
            v109 = CMBaseObjectGetProtocolVTable();
            if (!v109 || (v110 = *(v109 + 16)) == 0 || (v111 = *(v110 + 8)) == 0 || v111(v5, ValueAtIndex))
            {
              onCaptionInputDo_cold_6();
              goto LABEL_205;
            }

            if (!strcmp(v147[0], "FigCaptionRendererTTMLRegion"))
            {
              v134 = 0;
              FigCaptionRendererTTMLRegionGetWritingMode(ValueAtIndex, &v134);
              v128 = v134;
              FigCaptionRendererCaptionProtocolGetProtocolID();
              v129 = CMBaseObjectGetProtocolVTable();
              if (v129)
              {
                v130 = *(v129 + 16);
                if (v130)
                {
                  v131 = *(v130 + 112);
                  if (v131)
                  {
                    v131(v5, v128);
                  }
                }
              }
            }

            v112 = *(v4 + 584);
            if (v112)
            {
              v113 = CFDictionaryGetValue(v112, ValueAtIndex);
              v114 = CFDictionaryGetValue(*(v4 + 584), v5);
              if (v113)
              {
                v115 = v114;
                if (v114)
                {
                  FigCaptionRendererOutputNodeProtocolGetProtocolID();
                  v116 = CMBaseObjectGetProtocolVTable();
                  if (!v116 || (v117 = *(v116 + 16)) == 0 || (v118 = *(v117 + 24)) == 0 || v118(v113, v115))
                  {
                    onCaptionInputDo_cold_5();
                    goto LABEL_205;
                  }

                  v134 = 0;
                  v119 = *(v4 + 1032);
                  if (v119)
                  {
                    if (CFDictionaryGetValueIfPresent(v119, @"separatedOptions", &v134))
                    {
                      v120 = v134;
                      FigCaptionRendererOutputNodeProtocolGetProtocolID();
                      v121 = CMBaseObjectGetProtocolVTable();
                      if (v121)
                      {
                        v122 = *(v121 + 16);
                        if (v122)
                        {
                          v123 = *(v122 + 184);
                          if (v123)
                          {
                            v123(v113, 0x1F0B1E858, v120);
                          }
                        }
                      }
                    }
                  }

                  if (*(v4 + 1041))
                  {
                    v124 = *(v4 + 1040);
                    FigCaptionRendererOutputNodeProtocolGetProtocolID();
                    v125 = CMBaseObjectGetProtocolVTable();
                    if (v125)
                    {
                      v126 = *(v125 + 16);
                      if (v126)
                      {
                        v127 = *(v126 + 192);
                        if (v127)
                        {
                          v127(v113, v124);
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
          v68 = v139;
          v69 = v140[0];
          v70 = v140[1];
          FigCaptionRendererNodeProtocolGetProtocolID();
          v71 = CMBaseObjectGetProtocolVTable();
          if (!v71 || (v72 = *(v71 + 16)) == 0 || (v73 = *(v72 + 64)) == 0 || v73(v5, *&v68, *(&v68 + 1), v69, v70))
          {
            onCaptionInputDo_cold_18();
            goto LABEL_205;
          }

          v74 = *(v4 + 248);
          FigCaptionRendererNodeProtocolGetProtocolID();
          v75 = CMBaseObjectGetProtocolVTable();
          if (!v75 || (v76 = *(v75 + 16)) == 0 || (v77 = *(v76 + 8)) == 0 || v77(v5, v74))
          {
            onCaptionInputDo_cold_17();
            goto LABEL_205;
          }

          v78 = *(v4 + 584);
          if (v78)
          {
            v79 = CFDictionaryGetValue(v78, *(v4 + 248));
            v80 = CFDictionaryGetValue(*(v4 + 584), v5);
            if (v79)
            {
              v81 = v80;
              if (v80)
              {
                FigCaptionRendererOutputNodeProtocolGetProtocolID();
                v82 = CMBaseObjectGetProtocolVTable();
                if (!v82 || (v83 = *(v82 + 16)) == 0 || (v84 = *(v83 + 24)) == 0 || v84(v79, v81))
                {
                  onCaptionInputDo_cold_12();
                  goto LABEL_205;
                }

                value[0] = 0;
                v85 = *(v4 + 1032);
                if (v85 && CFDictionaryGetValueIfPresent(v85, @"separatedOptions", value))
                {
                  FigCaptionRendererOutputNodeSetOptions(v81, 0x1F0B1E858, value[0]);
                }

                if (*(v4 + 1041))
                {
                  FigCaptionRendererOutputNodeSetSeparated(v81, *(v4 + 1040));
                }
              }
            }
          }
        }

LABEL_94:
        if (*(v4 + 268) == 1)
        {
          v64 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
          if (v64)
          {
            v65 = v64;
            updateNodeTree(v4, v64, MEMORY[0x1E6960C70]);
            CFRelease(v65);
            v66 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
            if (v66)
            {
              v67 = v66;
              *v66 = CFRetain(v4);
              v67[1] = CFRetain(values);
              renderCaptionDo(v67);
            }
          }

          else
          {
            onCaptionInputDo_cold_16();
          }
        }

        else
        {
          v86 = *(v4 + 240);
          FigCaptionRendererParentIntervalProtocolGetProtocolID();
          v87 = CMBaseObjectGetProtocolVTable();
          if (v87 && (v88 = *(v87 + 16)) != 0 && (v89 = *(v88 + 8)) != 0 && !v89(v86, v5))
          {
            if (*(v4 + 72))
            {
              v90 = *(v4 + 48);
              if (v90)
              {
                value[0] = 0;
                value[1] = 0;
                *&v136 = 0;
                FigCaptionRendererTriggerGetCurrentTime(v90, value);
                v147[0] = 0;
                v147[1] = 0;
                FigCaptionRendererIntervalProtocolGetProtocolID();
                v91 = CMBaseObjectGetProtocolVTable();
                if (v91 && (v92 = *(v91 + 16)) != 0 && (v93 = *(v92 + 8)) != 0 && !v93(v5, v147))
                {
                  *&time.value = *value;
                  time.epoch = v136;
                  v94 = CMTimeGetSeconds(&time);
                  v95 = *(v4 + 268);
                  if (v95 == 2 || v95 == 3 && (v96 = *v147 - v94, v97 = *(v4 + 104), v96 >= v97) && v96 <= (*(v4 + 112) + v97))
                  {
                    if (*(v4 + 168))
                    {
                      v98 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
                      if (v98)
                      {
                        v99 = v98;
                        *v98 = CFRetain(v4);
                        v99[1] = CFRetain(v5);
                        dispatch_async_f(*(v4 + 168), v99, renderCaptionDo);
                      }
                    }
                  }
                }

                else
                {
                  onCaptionInputDo_cold_13();
                }
              }

              else
              {
                onCaptionInputDo_cold_14();
              }
            }
          }

          else
          {
            onCaptionInputDo_cold_15();
          }
        }
      }
    }
  }

LABEL_205:
  if (values)
  {
    CFRelease(values);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t FigCaptionRendererOutputNodeSetOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v8 = *(result + 16);
    result += 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 184);
      if (v9)
      {

        return v9(a1, a2, a3);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererOutputNodeSetSeparated(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 192);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

void onRegionInputDo(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (*(v2 + 73))
  {
    value = 0;
    FigCaptionRendererCALayerOutputNodeCreate(&value);
    if (v4)
    {
      onRegionInputDo_cold_1();
      goto LABEL_47;
    }

    CFDictionarySetValue(*(v2 + 73), v3, value);
    if (value)
    {
      CFRelease(value);
    }
  }

  __s1 = 0;
  v5 = *(v2 + 31);
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v7 = *(ProtocolVTable + 16)) != 0 && (v8 = *(v7 + 8)) != 0 && !v8(v5, &__s1))
  {
    v9 = *(MEMORY[0x1E695F050] + 16);
    v46.origin = *MEMORY[0x1E695F050];
    v46.size = v9;
    if (!strcmp(__s1, "FigCaptionRendererAVFLayoutRegion"))
    {
      v46.origin.x = FCRGetVideoPresentationBounds(*(v2 + 83), *(v2 + 84), *(v2 + 79), *(v2 + 80), *(v2 + 81), *(v2 + 82));
      v46.origin.y = v15;
      v46.size.width = v16;
      v46.size.height = v17;
    }

    else
    {
      v10 = *(v2 + 31);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v11 = CMBaseObjectGetProtocolVTable();
      if (v11)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = *(v12 + 152);
          if (v13)
          {
            v13(v10, &v46);
          }
        }
      }

      if (*(v2 + 67) == 2 && CGRectEqualToRect(v46, *MEMORY[0x1E695F058]))
      {
        v14 = *(v2 + 792);
        v46.origin = *(v2 + 776);
        v46.size = v14;
      }
    }

    v45 = 0;
    v18 = *(v2 + 31);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v19 = CMBaseObjectGetProtocolVTable();
    if (v19)
    {
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v20 + 32);
        if (v21)
        {
          v21(v18, v3, &v45);
        }
      }
    }

    if (!v45)
    {
      origin = v46.origin;
      size = v46.size;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v24 = CMBaseObjectGetProtocolVTable();
      if (v24)
      {
        v25 = *(v24 + 16);
        if (v25)
        {
          v26 = *(v25 + 64);
          if (v26)
          {
            v26(v3, origin.x, origin.y, size.width, size.height);
          }
        }
      }

      v27 = *(v2 + 31);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v28 = CMBaseObjectGetProtocolVTable();
      if (v28)
      {
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = *(v29 + 40);
          if (v30)
          {
            v30(v27, v3);
          }
        }
      }

      v31 = *(v2 + 31);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v32 = CMBaseObjectGetProtocolVTable();
      if (v32)
      {
        v33 = *(v32 + 16);
        if (v33)
        {
          v34 = *(v33 + 8);
          if (v34)
          {
            v34(v3, v31);
          }
        }
      }

      v35 = *(v2 + 73);
      if (v35 && (v36 = CFDictionaryGetValue(v35, *(v2 + 31)), v37 = CFDictionaryGetValue(*(v2 + 73), v3), v36) && (v38 = v37) != 0 && ((FigCaptionRendererOutputNodeProtocolGetProtocolID(), (v39 = CMBaseObjectGetProtocolVTable()) == 0) || (v40 = *(v39 + 16)) == 0 || (v41 = *(v40 + 24)) == 0 || v41(v36, v38)))
      {
        onRegionInputDo_cold_2();
      }

      else
      {
        *(v2 + 38) = 0u;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v42 = CMBaseObjectGetProtocolVTable();
        if (v42)
        {
          v43 = *(v42 + 16);
          if (v43)
          {
            v44 = *(v43 + 288);
            if (v44)
            {
              v44(v3, v2 + 288);
            }
          }
        }
      }
    }
  }

  else
  {
    onRegionInputDo_cold_3();
  }

LABEL_47:
  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(v2);
  free(a1);
}

void onTextHighlightArrayDo(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3[175];
  v3[175] = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  theArray = 0;
  v6 = v3[31];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v8 = *(ProtocolVTable + 16)) == 0)
  {
    v24 = -12788;
LABEL_36:
    v28 = v24;
LABEL_37:
    onTextHighlightArrayDo_cold_2();
LABEL_41:
    CFRelease(v3);
    goto LABEL_42;
  }

  v9 = *(v8 + 24);
  if (!v9)
  {
    v24 = -12782;
    goto LABEL_36;
  }

  v28 = v9(v6, &theArray);
  if (v28)
  {
    goto LABEL_37;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    Count = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    if (v10 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
    __s1[0] = 0;
    FigCaptionRendererBaseProtocolGetProtocolID();
    v14 = CMBaseObjectGetProtocolVTable();
    if (!v14 || (v15 = *(v14 + 16)) == 0)
    {
      v25 = -12788;
LABEL_39:
      v28 = v25;
LABEL_40:
      onTextHighlightArrayDo_cold_1();
      if (!v3)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v16 = *(v15 + 8);
    if (!v16)
    {
      v25 = -12782;
      goto LABEL_39;
    }

    v28 = v16(ValueAtIndex, __s1);
    if (v28)
    {
      goto LABEL_40;
    }

    if (__s1[0] && !strcmp(__s1[0], "FigCaptionRendererCaption"))
    {
      v17 = v3[175];
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v18 = CMBaseObjectGetProtocolVTable();
      if (v18)
      {
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = *(v19 + 72);
          if (v20)
          {
            v20(ValueAtIndex, v17);
          }
        }
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v21 = CMBaseObjectGetProtocolVTable();
      if (v21 && (v22 = *(v21 + 16)) != 0 && (v23 = *(v22 + 216)) != 0)
      {
        v11 = 1;
        v23(ValueAtIndex, 1);
      }

      else
      {
        v11 = 1;
      }
    }

    ++v10;
  }

  if (v11)
  {
    __s1[0] = &v28;
    __s1[1] = v3;
    fcrSessionUpdateOutputDo(__s1);
  }

  if (v3)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void updateDisplayPortDoAsync(CFTypeRef *a1)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v3)
    {
      v3(v2);
    }

    v4 = *(*a1 + 8);
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = a1[4];
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v9(v4, *&v5, *&v6, *&v7, *&v8);
    }

    v10 = *(*a1 + 8);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v11)
    {
      v11(v10);
    }

    v12 = *(*a1 + 8);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v13)
    {
      v13(v12);
    }

    v14 = *(*a1 + 8);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v15)
    {
      v15(v14);
    }

    v16 = *(*a1 + 8);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v17(v16);
    }
  }

  CFRelease(*a1);

  free(a1);
}

CGColorRef overridesCreateCGColorFromCFArray(const __CFDictionary *a1, void *key, void *a3)
{
  v3 = 0;
  components[4] = *MEMORY[0x1E69E9840];
  if (!a1 || !key)
  {
    return v3;
  }

  if (!CFDictionaryContainsKey(a1, key))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, key);
  v8 = CFGetTypeID(Value);
  if (v8 != CGColorGetTypeID())
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFArrayGetTypeID())
    {
      for (i = 0; i != 4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
        v16 = 0.0;
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 != CFNumberGetTypeID())
        {
          break;
        }

        CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &v16);
        components[(i - 1) & 3] = v16;
      }
    }

    goto LABEL_12;
  }

  v3 = CGColorRetain(Value);
  if (!v3)
  {
LABEL_12:
    v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (!v13)
    {
      v3 = 0;
      if (!a3)
      {
        return v3;
      }

      goto LABEL_15;
    }

    v14 = v13;
    v3 = CGColorCreate(v13, components);
    CGColorSpaceRelease(v14);
  }

  if (a3)
  {
LABEL_15:
    *a3 = 0x3FF0000000000000;
  }

  return v3;
}

void *OUTLINED_FUNCTION_2_47()
{

  return malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
}

void OUTLINED_FUNCTION_13_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  bzero(va, 0xA0uLL);
}

void *OUTLINED_FUNCTION_18_6(uint64_t a1)
{
  v3 = 8 * a1;

  return malloc_type_malloc(v3, v1);
}

void OUTLINED_FUNCTION_20_6()
{
  v4 = *(v2 + 584);

  CFDictionaryGetKeysAndValues(v4, v0, v1);
}

void *OUTLINED_FUNCTION_21_7()
{

  return malloc_type_calloc(1uLL, 0x10uLL, 0xC0040D1025EB5uLL);
}

void *OUTLINED_FUNCTION_26_10()
{

  return malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEDBD220](v2, a2, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_28_8(uint64_t a1)
{

  return CMBaseObjectGetProtocolVTable();
}

uint64_t OUTLINED_FUNCTION_38_5(uint64_t a1)
{

  return CMBaseObjectGetProtocolVTable();
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t a1)
{

  return CMBaseObjectGetProtocolVTable();
}

uint64_t OUTLINED_FUNCTION_40_4(double a1)
{

  return FigGeometryDimensionMake();
}

CFTypeRef OUTLINED_FUNCTION_41_4()
{

  return CFRetain(v0);
}

uint64_t OUTLINED_FUNCTION_42_6(double a1)
{

  return FigGeometryDimensionMake();
}

uint64_t OUTLINED_FUNCTION_43_6(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t FigCreateSubtitleRenderPipeline(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, __int128 *a9, uint64_t a10, CFTypeRef *a11)
{
  v45 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *__str = 0u;
  v38 = 0u;
  if (a3)
  {
    v11 = a2 != 0;
  }

  else
  {
    v11 = 0;
  }

  if ((a2 != 0) != (a3 != 0))
  {
    FigCreateSubtitleRenderPipeline_cold_7(&v34);
LABEL_40:
    v27 = v34;
    goto LABEL_26;
  }

  if (a5)
  {
    v13 = a4 != 0;
  }

  else
  {
    v13 = 0;
  }

  if ((a4 != 0) != (a5 != 0))
  {
    FigCreateSubtitleRenderPipeline_cold_6(&v34);
    goto LABEL_40;
  }

  if (a7)
  {
    v15 = a6 != 0;
  }

  else
  {
    v15 = 0;
  }

  if ((a6 != 0) != (a7 != 0))
  {
    FigCreateSubtitleRenderPipeline_cold_5(&v34);
    goto LABEL_40;
  }

  v17 = *MEMORY[0x1E695E480];
  FigRenderPipelineGetClassID();
  v18 = CMDerivedObjectCreate();
  if (v18)
  {
LABEL_25:
    v27 = v18;
    goto LABEL_26;
  }

  v19 = v17;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = FigSimpleMutexCreate();
  snprintf(__str, 0x80uLL, "com.apple.coremedia.figsubtitlerenderpipeline(%p).callbackqueue", v36);
  v21 = dispatch_queue_create(__str, 0);
  *(DerivedStorage + 8) = v21;
  if (!v21)
  {
    FigCreateSubtitleRenderPipeline_cold_4(&v34);
    goto LABEL_40;
  }

  if (v11)
  {
    *(DerivedStorage + 144) = a2;
    v22 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(DerivedStorage + 152) = v22;
    if (!v22)
    {
      FigCreateSubtitleRenderPipeline_cold_3(&v34);
      goto LABEL_40;
    }
  }

  if (v13)
  {
    *(DerivedStorage + 160) = a4;
    v23 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(DerivedStorage + 168) = v23;
    if (!v23)
    {
      FigCreateSubtitleRenderPipeline_cold_2(&v34);
      goto LABEL_40;
    }
  }

  if (v15)
  {
    *(DerivedStorage + 192) = a6;
    v24 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(DerivedStorage + 200) = v24;
    if (!v24)
    {
      FigCreateSubtitleRenderPipeline_cold_1(&v34);
      goto LABEL_40;
    }
  }

  v25 = a8;
  if (a8)
  {
    v25 = CFRetain(a8);
  }

  v26 = v19;
  *(DerivedStorage + 176) = v25;
  *(DerivedStorage + 184) = 0;
  v18 = FigTextSampleBufferSetUpState(DerivedStorage + 40, v19, a1);
  if (v18)
  {
    goto LABEL_25;
  }

  v34 = *a9;
  v35 = *(a9 + 2);
  FigSimpleRenderPipelineCreateWithCallback(v19, subrp_sendSubtitleSampleForSampleBuffer, 0, v36, &v34, 0, (DerivedStorage + 24));
  if (v18)
  {
    goto LABEL_25;
  }

  FigRenderPipelineGetFigBaseObject();
  v30 = v29;
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v31)
  {
    v27 = v31(v30, @"SourceSampleBufferQueue", v26, DerivedStorage + 32);
    if (!v27)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      *a11 = v36;
      return v27;
    }
  }

  else
  {
    v27 = 4294954514;
  }

LABEL_26:
  if (v36)
  {
    CFRelease(v36);
  }

  return v27;
}

uint64_t subrp_sendSubtitleSampleForSampleBuffer(const void *a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v41, v42);
    return FigSimpleMutexUnlock();
  }

  if (!a2)
  {
    return FigSimpleMutexUnlock();
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v8 = CMGetAttachment(a2, *MEMORY[0x1E69604B0], 0);
  memset(&v48, 0, sizeof(v48));
  CMSampleBufferGetOutputPresentationTimeStamp(&v48, a2);
  memset(&v47, 0, sizeof(v47));
  CMSampleBufferGetOutputDuration(&v47, a2);
  v40 = *MEMORY[0x1E695F050];
  v43 = *(MEMORY[0x1E695F050] + 16);
  v45 = *MEMORY[0x1E695F050];
  v46 = v43;
  if (MediaSubType)
  {
    *(DerivedStorage + 184) = MediaSubType;
  }

  else
  {
    MediaSubType = *(DerivedStorage + 184);
  }

  if (!WebVTTIsFormatDescriptionForWebVTT(FormatDescription))
  {
    if (v8)
    {
      v10 = 0;
      v9 = 0;
      v45 = v40;
      v46 = v43;
      v11 = 1;
      LOBYTE(v12) = 1;
    }

    else
    {
      v19 = *(DerivedStorage + 136);
      v52[0] = 0;
      *numValues = v40;
      v51 = v43;
      aStr = 0;
      v20 = *MEMORY[0x1E695E480];
      if (FigTextSampleBufferCopyAttributedString(DerivedStorage + 40, *MEMORY[0x1E695E480], a2, &aStr, v52 + 1, v52, numValues))
      {
        goto LABEL_88;
      }

      if (aStr)
      {
        String = CFAttributedStringGetString(aStr);
        if (!CFStringGetLength(String))
        {
          CFRelease(aStr);
          aStr = 0;
        }
      }

      Mutable = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
LABEL_88:
        v9 = 0;
        v12 = 0;
        v10 = 0;
        v11 = 0;
        v24 = 0;
        v44 = 0;
      }

      else
      {
        v23 = Mutable;
        if (aStr)
        {
          CFArrayAppendValue(Mutable, aStr);
        }

        v24 = CFDictionaryCreateMutable(v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v24 || FigCFDictionarySetInt32())
        {
          v9 = 0;
          v12 = 0;
          v10 = 0;
          v11 = 0;
          v44 = 0;
        }

        else
        {
          if (v19)
          {
            CFDictionarySetValue(v24, @"SubtitleExtendedLanguageTag", v19);
          }

          if (subrp_isSubtitleOverHDRVideo(a1))
          {
            CFDictionarySetValue(v24, @"SubtitleOverHDRVideo", *MEMORY[0x1E695E4D0]);
          }

          CFDictionarySetValue(v24, @"SubtitleContent", v23);
          v11 = aStr == 0;
          v9 = CFRetain(v24);
          v12 = HIBYTE(v52[0]);
          v10 = v52[0];
          v45 = *numValues;
          v46 = v51;
          v44 = 1;
        }

        CFRelease(v23);
      }

      if (aStr)
      {
        CFRelease(aStr);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (!v44)
      {
        goto LABEL_83;
      }

      if (!v12)
      {
        if (*(DerivedStorage + 106))
        {
          if (v11)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            *numValues = *&v48.value;
            *&v51 = v48.epoch;
            subrp_sendEmptySubtitleSample(a1, MediaSubType, numValues, 1);
            LOBYTE(v12) = 0;
          }

          *(DerivedStorage + 106) = 0;
        }

        else
        {
          LOBYTE(v12) = 0;
        }

        goto LABEL_58;
      }
    }

    *(DerivedStorage + 106) = !v11;
    goto LABEL_58;
  }

  if (v8)
  {
    goto LABEL_10;
  }

  v13 = *(DerivedStorage + 112);
  if (!v13)
  {
    if (WebVTTSampleBufferParserCreate((DerivedStorage + 112)))
    {
      return FigSimpleMutexUnlock();
    }

    v13 = *(DerivedStorage + 112);
  }

  v14 = *(DerivedStorage + 120);
  v15 = *(DerivedStorage + 136);
  v16 = *(DerivedStorage + 88);
  numValues[0] = 0;
  if (!subrp_SampleBufferShouldBeDisplayed(a2))
  {
LABEL_10:
    v9 = 0;
  }

  else
  {
    if (WebVTTCreateAttributedStringArrayFromSampleBuffer(v13, a2, v14, numValues))
    {
      v9 = 0;
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v25 = *MEMORY[0x1E695E480];
      v18 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v18 || FigCFDictionarySetInt32())
      {
        v9 = 0;
        v17 = 0;
      }

      else
      {
        if (v15)
        {
          CFDictionarySetValue(v18, @"SubtitleExtendedLanguageTag", v15);
        }

        if (subrp_isSubtitleOverHDRVideo(a1))
        {
          CFDictionarySetValue(v18, @"SubtitleOverHDRVideo", *MEMORY[0x1E695E4D0]);
        }

        v26 = numValues[0];
        if (!numValues[0])
        {
          v26 = CFArrayCreate(v25, 0, 0, MEMORY[0x1E695E9C0]);
          numValues[0] = v26;
        }

        CFDictionarySetValue(v18, @"SubtitleContent", v26);
        if (v16)
        {
          CFDictionarySetValue(v18, @"SubtitleContentMetadata", v16);
        }

        v9 = CFRetain(v18);
        v17 = 1;
      }
    }

    if (numValues[0])
    {
      CFRelease(numValues[0]);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (!v17)
    {
      goto LABEL_83;
    }
  }

  v10 = 0;
  v45 = v40;
  v46 = v43;
  LOBYTE(v12) = 1;
LABEL_58:
  if (!subrp_SampleBufferShouldBeDisplayed(a2))
  {
    goto LABEL_83;
  }

  if (subrp_isSubTypeFourCCToBeRepresentedNatively(*(DerivedStorage + 176), MediaSubType))
  {
    if (*(DerivedStorage + 160))
    {
      v27 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v27)
      {
        v28 = v27;
        v29 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00400775FAF6uLL);
        if (v29)
        {
          v30 = v29;
          if (a1)
          {
            v31 = CFRetain(a1);
          }

          else
          {
            v31 = 0;
          }

          *v30 = v31;
          *(v30 + 1) = *(DerivedStorage + 160);
          *(v30 + 2) = CFRetain(v28);
          *(v30 + 3) = CFRetain(a2);
          *(v30 + 32) = v48;
          v30[56] = v12;
          dispatch_async_f(*(DerivedStorage + 8), v30, subrpNativeCallback);
        }

        else
        {
          subrp_sendSubtitleSampleForSampleBuffer_cold_1();
        }

        v37 = v28;
LABEL_82:
        CFRelease(v37);
      }
    }
  }

  else if (*(DerivedStorage + 144))
  {
    v32 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v32)
    {
      v33 = v32;
      v34 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040556ECBE3uLL);
      if (v34)
      {
        v35 = v34;
        if (a1)
        {
          v36 = CFRetain(a1);
        }

        else
        {
          v36 = 0;
        }

        *v35 = v36;
        *(v35 + 1) = *(DerivedStorage + 144);
        *(v35 + 2) = CFRetain(v33);
        if (v9)
        {
          v38 = CFRetain(v9);
        }

        else
        {
          v38 = 0;
        }

        *(v35 + 3) = v38;
        *(v35 + 32) = v48;
        v35[80] = v12;
        v35[81] = v10;
        *(v35 + 88) = v45;
        *(v35 + 104) = v46;
        dispatch_async_f(*(DerivedStorage + 8), v35, subrpCommonCallback);
      }

      else
      {
        subrp_sendSubtitleSampleForSampleBuffer_cold_2();
      }

      v37 = v33;
      goto LABEL_82;
    }
  }

LABEL_83:
  if (v9)
  {
    CFRelease(v9);
  }

  return FigSimpleMutexUnlock();
}

uint64_t subrp_resetOutput(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, LODWORD(v13.value), v13.timescale);
  }

  else if (*(DerivedStorage + 192))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      v6 = malloc_type_calloc(1uLL, 0x18uLL, 0xE004023458D36uLL);
      if (v6)
      {
        v7 = v6;
        if (a2)
        {
          v8 = CFRetain(a2);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(DerivedStorage + 192);
        *v7 = v8;
        v7[1] = v9;
        v7[2] = CFRetain(v5);
        dispatch_async_f(*(DerivedStorage + 8), v7, subrpFlushCallback);
      }

      else
      {
        subrp_resetOutput_cold_1();
      }

      CFRelease(v5);
    }
  }

  else
  {
    v11 = *(DerivedStorage + 184);
    figSubtitleRenderPipelineGetCurrentTimeFromTimebase(DerivedStorage, &v13);
    subrp_sendEmptySubtitleSample(a2, v11, &v13, *(DerivedStorage + 106));
    *(DerivedStorage + 106) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t figSubtitleRenderPipelineFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figSubtitleRenderPipelineInvalidate_Internal(a1, 0);
  FigTextSampleBufferTearDownState(DerivedStorage + 40);
  v3 = *(DerivedStorage + 152);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 152) = 0;
  }

  v4 = *(DerivedStorage + 168);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 168) = 0;
  }

  v5 = *(DerivedStorage + 200);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 200) = 0;
  }

  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 8) = 0;
  }

  v7 = *(DerivedStorage + 120);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 120) = 0;
  }

  v8 = *(DerivedStorage + 128);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 128) = 0;
  }

  v9 = *(DerivedStorage + 136);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 136) = 0;
  }

  v10 = *(DerivedStorage + 208);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 208) = 0;
  }

  v11 = *(DerivedStorage + 176);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 176) = 0;
  }

  WebVTTSampleBufferParserDestroy(*(DerivedStorage + 112));
  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 16) = 0;
  return result;
}

__CFString *figSubtitleRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSubtitleRenderPipeline %p>", a1);
  return Mutable;
}

void figSubtitleRenderPipelineCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v9 = DerivedStorage, *DerivedStorage))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< STRP >>>>", 971, v4);
    return;
  }

  if (CFEqual(a2, @"SRPP_TextMarkupArray"))
  {
    v11 = v9[15];
    if (!v11)
    {
      return;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"SRPP_TextHighlightArray"))
  {
    v11 = v9[16];
    if (!v11)
    {
      return;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"SRPP_ExtendedLanguageTagString"))
  {
    v11 = v9[17];
    if (v11)
    {
LABEL_14:
      v12 = CFRetain(v11);
LABEL_15:
      *a4 = v12;
      return;
    }

LABEL_18:
    v12 = 0;
    goto LABEL_15;
  }

  if (CFEqual(@"HDRCrossTalker", a2))
  {
    v11 = v9[26];
    if (v11)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  FigRenderPipelineGetFigBaseObject();

  CMBaseObjectCopyProperty(v13, a2, a3, a4);
}

void figSubtitleRenderPipelineSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v7 = DerivedStorage, *DerivedStorage))
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 928;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< STRP >>>>", v10, v9);
    return;
  }

  if (!CFEqual(a2, @"SRPP_TextMarkupArray"))
  {
    if (CFEqual(a2, @"SRPP_TextHighlightArray"))
    {
      if (!a3)
      {
        v14 = v7[16];
        v7[16] = 0;
        goto LABEL_35;
      }

      TypeID = CFArrayGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        emitter = fig_log_get_emitter();
        v9 = v3;
        v10 = 941;
        goto LABEL_4;
      }

      v14 = v7[16];
      v7[16] = a3;
      goto LABEL_28;
    }

    if (CFEqual(a2, @"SRPP_ExtendedLanguageTagString"))
    {
      if (a3)
      {
        v15 = CFStringGetTypeID();
        if (v15 != CFGetTypeID(a3))
        {
          emitter = fig_log_get_emitter();
          v9 = v3;
          v10 = 947;
          goto LABEL_4;
        }

        v14 = v7[17];
        v7[17] = a3;
        goto LABEL_28;
      }

      v14 = v7[17];
      v7[17] = 0;
    }

    else
    {
      if (!CFEqual(a2, @"HDRCrossTalker"))
      {
        v17 = v7[3];

        FigRenderPipelineSetProperty(v17, a2, a3);
        return;
      }

      if (a3)
      {
        v16 = FigCrossTalkerGetTypeID();
        if (v16 != CFGetTypeID(a3))
        {
          emitter = fig_log_get_emitter();
          v9 = v3;
          v10 = 955;
          goto LABEL_4;
        }

        v14 = v7[26];
        v7[26] = a3;
LABEL_28:
        CFRetain(a3);
        goto LABEL_35;
      }

      v14 = v7[26];
      v7[26] = 0;
    }

LABEL_35:
    if (v14)
    {
      CFRelease(v14);
    }

    return;
  }

  v11 = v7[15];
  if (v11)
  {
    CFRelease(v11);
    v7[15] = 0;
  }

  if (a3)
  {
    v12 = CFArrayGetTypeID();
    if (v12 == CFGetTypeID(a3))
    {
      v7[15] = CFRetain(a3);
      return;
    }

    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 935;
    goto LABEL_4;
  }
}

void figSubtitleRenderPipelineInvalidate_Internal(const void *a1, int a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*DerivedStorage)
    {

      FigSimpleMutexUnlock();
    }

    else
    {
      if (a2)
      {
        if (*(DerivedStorage + 192))
        {
          v5 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v5)
          {
            v6 = v5;
            (*(DerivedStorage + 192))(a1, v5);
            CFRelease(v6);
          }
        }

        else
        {
          memset(&v10, 0, sizeof(v10));
          figSubtitleRenderPipelineGetCurrentTimeFromTimebase(DerivedStorage, &v10);
          subrp_sendEmptySubtitleSample(a1, *(DerivedStorage + 184), &v10, *(DerivedStorage + 106));
          *(DerivedStorage + 106) = 0;
        }
      }

      *DerivedStorage = 1;
      FigSimpleMutexUnlock();
      if (*(DerivedStorage + 32))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        CFRelease(*(DerivedStorage + 32));
        *(DerivedStorage + 32) = 0;
      }

      if (*(DerivedStorage + 24))
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

        CFRelease(*(DerivedStorage + 24));
        *(DerivedStorage + 24) = 0;
      }
    }
  }
}

void subrp_sendEmptySubtitleSample(const void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (subrp_isSubTypeFourCCToBeRepresentedNatively(*(DerivedStorage + 176), v6))
  {
    if (!*(DerivedStorage + 160))
    {
      return;
    }

    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v11 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00400775FAF6uLL);
    if (!v11)
    {
      subrp_sendEmptySubtitleSample_cold_1();
      goto LABEL_18;
    }

    v12 = v11;
    if (a1)
    {
      v13 = CFRetain(a1);
    }

    else
    {
      v13 = 0;
    }

    v17 = *(DerivedStorage + 160);
    *v12 = v13;
    *(v12 + 1) = v17;
    *(v12 + 2) = CFRetain(v10);
    *(v12 + 3) = 0;
    v18 = *(a3 + 16);
    *(v12 + 2) = *a3;
    *(v12 + 6) = v18;
    v12[56] = a4;
    v19 = *(DerivedStorage + 8);
    v20 = subrpNativeCallback;
  }

  else
  {
    if (!*(DerivedStorage + 144))
    {
      return;
    }

    v14 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v14)
    {
      return;
    }

    v10 = v14;
    v15 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040556ECBE3uLL);
    if (!v15)
    {
      subrp_sendEmptySubtitleSample_cold_2();
      goto LABEL_18;
    }

    v12 = v15;
    if (a1)
    {
      v16 = CFRetain(a1);
    }

    else
    {
      v16 = 0;
    }

    v21 = *(DerivedStorage + 144);
    *v12 = v16;
    *(v12 + 1) = v21;
    *(v12 + 2) = CFRetain(v10);
    *(v12 + 3) = 0;
    v22 = *(a3 + 16);
    *(v12 + 2) = *a3;
    v23 = *(MEMORY[0x1E695F050] + 16);
    *(v12 + 88) = *MEMORY[0x1E695F050];
    *(v12 + 6) = v22;
    v12[80] = a4;
    v12[81] = 0;
    *(v12 + 104) = v23;
    v19 = *(DerivedStorage + 8);
    v20 = subrpCommonCallback;
  }

  dispatch_async_f(v19, v12, v20);
LABEL_18:

  CFRelease(v10);
}

const __CFArray *subrp_isSubTypeFourCCToBeRepresentedNatively(const __CFArray *a1, int a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v6.length = CFArrayGetCount(v2);
    v6.location = 0;
    v2 = CFArrayContainsValue(v2, v6, v3);
    CFRelease(v3);
  }

  return v2;
}

void subrpNativeCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 56);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v3(v2, v6, &v10, v5, v7);
  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    CFRelease(v9);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void subrpCommonCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 80);
  v6 = *(a1 + 81);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v3(v2, v7, &v11, v5, v6, v8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  v9 = *(a1 + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    CFRelease(v10);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigRenderPipelineSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigRenderPipelineGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

BOOL subrp_SampleBufferShouldBeDisplayed(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  result = 1;
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      if (*MEMORY[0x1E695E4D0] == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410]))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t subrp_isSubtitleOverHDRVideo(uint64_t a1)
{
  cf = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 208))
  {
    return 0;
  }

  FigBytePumpGetFigBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  if (v3(v2, 0x1F0B4C778, *MEMORY[0x1E695E480], &cf))
  {
    v4 = 0;
  }

  else
  {
    v4 = *MEMORY[0x1E695E4D0] == cf;
  }

  v5 = v4;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void subrpFlushCallback(CFTypeRef *a1)
{
  (a1[1])(*a1, a1[2]);
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

CFStringRef fpSupport_AcquireVideoDisplayAssertion(unsigned int a1, const void *a2)
{
  MEMORY[0x19A8D3660](&sCreatedisplayAssertionDictMutexOnce, fpSupport_createDisplayAssertionMutexAndDict);
  v4 = &sAssertionParameters[4 * a1];
  FigSimpleMutexLock();
  if (a2)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%p", a2);
    if (v6)
    {
      Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      valuePtr = 1;
      v8 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
      if (Mutable)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        fpSupport_AcquireVideoDisplayAssertion_cold_1(v8);
      }

      else
      {
        v10 = v8;
        CFDictionarySetValue(Mutable, @"Assertion", v6);
        CFDictionarySetValue(Mutable, @"OwnerCount", v10);
        CFRelease(v10);
      }

      CFDictionarySetValue(v4[1], a2, Mutable);
      CFRelease(Mutable);
    }
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FPSupport_ReleaseVideoDisplayAssertion(unsigned int a1, const void *a2, const void *a3)
{
  MEMORY[0x19A8D3660](&sCreatedisplayAssertionDictMutexOnce, fpSupport_createDisplayAssertionMutexAndDict);
  v6 = &sAssertionParameters[4 * a1];
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(v6[1], a2);
  if (Value)
  {
    v8 = Value;
    CFDictionaryGetValue(Value, @"OwnerCount");
    valuePtr = FigCFNumberGetSInt32() - 1;
    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v8, @"OwnerCount", v9);
    CFRelease(v9);
    CFDictionaryGetValue(v8, @"OwnerCount");
    if (!FigCFNumberGetSInt32())
    {
      CFDictionaryRemoveValue(v6[1], a2);
      if (a2)
      {
        CFRetain(a2);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDeferNotificationToDispatchQueue();
    }

    if (a3)
    {
      CFRelease(a3);
    }
  }

  return FigSimpleMutexUnlock();
}

void fpSupport_SetupRuntimeMediaValidatorPlist()
{
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  Mutable = CFDictionaryCreateMutable(AllocatorForPermanentAllocations, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    if (fpSupport_SetupRuntimeMediaValidatorPlist_cold_7())
    {
      goto LABEL_43;
    }

LABEL_49:
    Mutable = 0;
    goto LABEL_50;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v4)
  {
    if (fpSupport_SetupRuntimeMediaValidatorPlist_cold_6(Mutable))
    {
      goto LABEL_43;
    }

    goto LABEL_48;
  }

  v5 = v4;
  v6 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (v6)
  {
    v14 = v6;
    v22 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    if (!v22)
    {
      fpSupport_SetupRuntimeMediaValidatorPlist_cold_4(0, v15, v16, v17, v18, v19, v20, v21, v56, v58, SHIDWORD(v58), v59);
      goto LABEL_40;
    }

    v23 = VTCopyVP9DecoderCapabilitiesDictionary();
    if (!v23)
    {
LABEL_32:
      if (FigCFDictionaryGetCount() >= 1)
      {
        CFDictionarySetValue(Mutable, @"VideoCodecProfiles", v5);
        if (!FigCFArrayContainsValue())
        {
          CFArrayAppendValue(v22, @"vide");
        }
      }

      if (CFArrayGetCount(v14) >= 1)
      {
        CFDictionarySetValue(Mutable, @"vide", v14);
        if (!FigCFArrayContainsValue())
        {
          CFArrayAppendValue(v22, @"vide");
        }
      }

      if (CFArrayGetCount(v22) >= 1)
      {
        CFDictionarySetValue(Mutable, @"TrackTypes", v22);
      }

LABEL_40:
      CFRelease(v5);
      CFRelease(v14);
      v5 = v22;
      if (!v22)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v24 = v23;
    Value = CFDictionaryGetValue(v23, *MEMORY[0x1E6983CD0]);
    if (Value)
    {
      v26 = Value;
      theDict = CFDictionaryGetValue(v24, *MEMORY[0x1E6983CC8]);
      theArray = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
      if (theArray)
      {
        v34 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v34)
        {
          v67 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v67)
          {
            v60 = v24;
            v64 = Mutable;
            v65 = v34;
            v62 = v14;
            v63 = v5;
            if (CFArrayGetCount(v26) >= 1)
            {
              v35 = 0;
              v36 = *MEMORY[0x1E695E4C0];
              v37 = *MEMORY[0x1E6983CE0];
              while (1)
              {
                valuePtr = 0;
                ValueAtIndex = CFArrayGetValueAtIndex(v26, v35);
                CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr + 4);
                v39 = CFStringCreateWithFormat(v3, 0, @"0%d", HIDWORD(valuePtr));
                CFArrayAppendValue(theArray, v39);
                CFRelease(v39);
                v40 = CFStringCreateWithFormat(v3, 0, @"%d", HIDWORD(valuePtr));
                v41 = CFDictionaryGetValue(theDict, v40);
                v42 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v42 || (v43 = v42, CFDictionarySetValue(v67, v40, v42), CFRelease(v40), FigCFDictionaryGetBooleanIfPresent(), CFDictionarySetValue(v43, @"VideoIsHardwareAccelerated", v36), v44 = CFDictionaryGetValue(v41, v37), CFNumberGetValue(v44, kCFNumberIntType, &valuePtr), CFDictionarySetValue(v43, @"MaxLevel", v44), (v45 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0])) == 0))
                {
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, v0, v24);
                  v52 = v54;
                  v5 = v63;
                  Mutable = v64;
                  v14 = v62;
                  v53 = v61;
                  v34 = v65;
                  goto LABEL_25;
                }

                v46 = v45;
                if (!HIDWORD(valuePtr))
                {
                  break;
                }

                if (HIDWORD(valuePtr) == 2)
                {
                  CFArrayAppendValue(v45, @"10");
                  v47 = @"12";
LABEL_18:
                  CFArrayAppendValue(v46, v47);
                  CFDictionarySetValue(v43, @"ColorDepth", v46);
                }

                CFRelease(v46);
                CFRelease(v43);
                if (++v35 >= CFArrayGetCount(v26))
                {
                  goto LABEL_20;
                }
              }

              v47 = @"08";
              goto LABEL_18;
            }

LABEL_20:
            v34 = v65;
            CFDictionarySetValue(v65, @"SupportedProfiles", theArray);
            CFDictionarySetValue(v65, @"PerProfileConstraints", v67);
            v48 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
            if (v48)
            {
              v49 = v48;
              for (i = 0; i != 14; ++i)
              {
                v51 = CFStringCreateWithFormat(v3, 0, @"%d", dword_196E76598[i]);
                CFArrayAppendValue(v49, v51);
                CFRelease(v51);
              }

              CFDictionarySetValue(v65, @"SupportedLevels", v49);
              CFRelease(v49);
              v52 = 0;
              v5 = v63;
              Mutable = v64;
              v14 = v62;
            }

            else
            {
              fpSupport_SetupRuntimeMediaValidatorPlist_cold_1(&valuePtr + 1);
              v52 = HIDWORD(valuePtr);
              v5 = v63;
              Mutable = v64;
              v14 = v62;
            }

            v53 = v60;
LABEL_25:
            CFRelease(v67);
            CFRelease(v53);
            goto LABEL_26;
          }

          v55 = 2166;
        }

        else
        {
          v55 = 2163;
        }

        fpSupport_SetupRuntimeMediaValidatorPlist_cold_2(v55, v24, &valuePtr + 1);
        v52 = HIDWORD(valuePtr);
LABEL_26:
        CFRelease(theArray);
        if (!v34 || !v52)
        {
          if (!v34)
          {
            goto LABEL_32;
          }

          CFDictionarySetValue(v5, @"vp09", v34);
          CFArrayAppendValue(v14, @"vp09");
        }

        v24 = v34;
        goto LABEL_31;
      }

      fpSupport_SetupRuntimeMediaValidatorPlist_cold_3(0, v27, v28, v29, v30, v31, v32, v33, v56, v58, SHIDWORD(v58), v59);
    }

LABEL_31:
    CFRelease(v24);
    goto LABEL_32;
  }

  fpSupport_SetupRuntimeMediaValidatorPlist_cold_5(0, v7, v8, v9, v10, v11, v12, v13, v56, v58, SHIDWORD(v58), v59);
LABEL_41:
  CFRelease(v5);
LABEL_42:
  if (FigCFDictionaryGetCount() <= 0)
  {
LABEL_48:
    CFRelease(Mutable);
    goto LABEL_49;
  }

LABEL_43:
  CFDictionarySetValue(Mutable, @"ValidationType", @"IgnoreUnrecognized");
LABEL_50:
  sFigRuntimeMediaValidatorPList = Mutable;
}

uint64_t FPSupport_CreateCASlot(uint64_t a1, unsigned int *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FPSupport_CreateCASlot_cold_2(v15);
    return v15[0];
  }

  if (!a2)
  {
    FPSupport_CreateCASlot_cold_1(v15);
    return v15[0];
  }

  v4 = objc_autoreleasePoolPush();
  Context = fpSupport_getContext();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  if (*a2)
  {
    goto LABEL_7;
  }

  v6 = [Context createSlot];
  *a2 = v6;
  if (v6)
  {
    goto LABEL_7;
  }

  if ([Context valid])
  {
    if (!*a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Context = fpSupport_getContext();
    v10 = [Context createSlot];
    *a2 = v10;
    if (!v10)
    {
LABEL_16:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
      v7 = v11;
      goto LABEL_8;
    }
  }

LABEL_7:
  v7 = 0;
LABEL_8:
  if (dword_1ED4CBD70)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [Context setObject:a1 forSlot:*a2];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] synchronize];
  objc_autoreleasePoolPop(v4);
  return v7;
}

void FPSupport_DeleteCASlotsInArray(const __CFArray *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    Count = CFArrayGetCount(a1);
  }

  else
  {
    Count = 0;
  }

  Context = fpSupport_getContext();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr)
      {
        [Context deleteSlot:?];
      }
    }
  }

  [MEMORY[0x1E6979518] commit];
  objc_autoreleasePoolPop(v2);
}

const void *FPSupport_CopyCAContext()
{
  v0 = objc_autoreleasePoolPush();
  Context = fpSupport_getContext();
  v2 = Context;
  if (Context)
  {
    CFRetain(Context);
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t FPSupport_CreateLayerSynchronizerConfiguration(const __CFAllocator *a1, int a2, CFArrayRef theArray, const __CFArray *a4, const __CFArray *a5, CFTypeRef *a6)
{
  cf = 0;
  if (theArray)
  {
    v12 = CFArrayGetCount(theArray) > 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
LABEL_3:
      Count = CFArrayGetCount(a4);
      if (a5)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  Count = 0;
  if (a5)
  {
LABEL_4:
    v14 = CFArrayGetCount(a5) > 0;
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_25:
    FPSupport_CreateLayerSynchronizerConfiguration_cold_1(&v25);
    v22 = v25;
    goto LABEL_20;
  }

LABEL_24:
  v14 = 0;
  if (!a6)
  {
    goto LABEL_25;
  }

LABEL_5:
  v15 = Count > 0 || v12;
  if (((v15 | v14) & 1) == 0)
  {
    v22 = 0;
    *a6 = 0;
    goto LABEL_20;
  }

  v16 = FigLayerSynchronizerConfigurationCreate(a1, &cf);
  if (v16)
  {
    goto LABEL_32;
  }

  if (!a2)
  {
    goto LABEL_28;
  }

  if (FigUseVideoReceiverForCALayer())
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
        v19 = cf;
        v20 = *(CMBaseObjectGetVTable() + 24);
        if (v20)
        {
          v21 = *(v20 + 8);
          if (v21)
          {
            v21(ValueAtIndex, v19);
          }
        }
      }
    }

LABEL_28:
    if (!v14 || (v16 = FigLayerSynchronizerConfigurationAddLayersNotSubjectToImageQueueTiming(cf, a5), !v16))
    {
      v22 = 0;
      *a6 = cf;
      return v22;
    }

    goto LABEL_32;
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v16 = FigLayerSynchronizerConfigurationAddLayersSubjectToImageQueueTiming(cf, theArray);
  if (!v16)
  {
    goto LABEL_28;
  }

LABEL_32:
  v22 = v16;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

uint64_t FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport(CFDictionaryRef theDict, int a2, CFDictionaryRef *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = 0;
  valuePtr = 0;
  *a3 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
    if (MutableCopy)
    {
      v7 = MutableCopy;
      FigGetAlignmentForIOSurfaceOutput();
      Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6966020]);
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
        }
      }

      v11 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6966140]);
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v12, kCFNumberIntType, &v34);
        }
      }

      if (valuePtr >= 1)
      {
        if (valuePtr >= 0)
        {
          v14 = HIDWORD(valuePtr);
        }

        else
        {
          v14 = -HIDWORD(valuePtr);
        }

        if (v14 <= valuePtr)
        {
          v15 = valuePtr;
        }

        else
        {
          v15 = v14;
        }

        if (v14 < 1)
        {
          v17 = v15;
        }

        else
        {
          if (v14 >= valuePtr)
          {
            v16 = valuePtr;
          }

          else
          {
            v16 = v14;
          }

          do
          {
            v17 = v16;
            v16 = v15 % v16;
            v15 = v17;
          }

          while (v16);
        }

        HIDWORD(valuePtr) = (SHIDWORD(valuePtr) * valuePtr) / v17;
      }

      if (v34 >= 1)
      {
        if (v34 >= 0)
        {
          v24 = HIDWORD(v34);
        }

        else
        {
          v24 = -HIDWORD(v34);
        }

        if (v24 <= v34)
        {
          v25 = v34;
        }

        else
        {
          v25 = v24;
        }

        if (v24 < 1)
        {
          v27 = v25;
        }

        else
        {
          if (v24 >= v34)
          {
            v26 = v34;
          }

          else
          {
            v26 = v24;
          }

          do
          {
            v27 = v26;
            v26 = v25 % v26;
            v25 = v27;
          }

          while (v26);
        }

        HIDWORD(v34) = (SHIDWORD(v34) * v34) / v27;
      }

      PixelBufferAttributesWithIOSurfaceSupport = FigCFDictionarySetInt32();
      if (!PixelBufferAttributesWithIOSurfaceSupport)
      {
        PixelBufferAttributesWithIOSurfaceSupport = FigCFDictionarySetInt32();
        if (!PixelBufferAttributesWithIOSurfaceSupport)
        {
          CFDictionarySetValue(v7, *MEMORY[0x1E69660F0], *MEMORY[0x1E695E4D0]);
          PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
        }
      }

      DestinationPixelBufferAttributes = PixelBufferAttributesWithIOSurfaceSupport;
      CFRelease(v7);
    }

    else
    {
      FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport_cold_1(v37);
      return *v37;
    }
  }

  else
  {
    *v37 = *"ARGB";
    v36 = 0;
    FigGetAlignmentForIOSurfaceOutput();
    v18 = getenv("figvideooutputformat");
    if (v18 && (v19 = v18, strlen(v18) == 4))
    {
      *v37 = bswap32(*v19);
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    DestinationPixelBufferAttributes = FPSupport_CreateDestinationPixelBufferAttributes(0, 0, v37, v20, 0, 1, SHIDWORD(v36), v36, a2 != 0, a3);
    v22 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *a3);
    if (v22)
    {
      v23 = v22;
      CFDictionarySetValue(v22, *MEMORY[0x1E69660D0], *MEMORY[0x1E695E4D0]);
      if (*a3)
      {
        CFRelease(*a3);
      }

      *a3 = v23;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
      return v30;
    }
  }

  return DestinationPixelBufferAttributes;
}

uint64_t FPSupport_GetFirstEnabledTrackIDForMediaType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v13 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v6)
  {
    v7 = 0;
    while (!v6(a1, v7, a2, &cf, &v13))
    {
      isTrackEnabled = fpSupport_isTrackEnabled(cf);
      v9 = cf;
      if (isTrackEnabled)
      {
        if (!cf)
        {
          return 4294954453;
        }

        CFRetain(cf);
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v12)
        {
          v12(v9, a3, 0);
        }

        CFRelease(v9);
        v10 = 0;
        goto LABEL_9;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ++v7;
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v6)
      {
        break;
      }
    }
  }

  v10 = 4294954453;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void fpSupport_pickPreferredVideoTrack(const void *a1, const void **a2, int *a3, _BYTE *a4, char a5)
{
  desc = 0;
  fpSupport_copyFormatDescription(a1, &desc);
  v10 = desc;
  if (desc)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
    v12 = MediaSubType;
    if (fpSupport_isVideoCodecTypeSupported(MediaSubType, a5) || CVPixelFormatDescriptionGetDescriptionWithPixelFormatType())
    {
      v13 = *a2;
      if (v12 == 1635148593 && (Extension = CMFormatDescriptionGetExtension(v10, *MEMORY[0x1E69600A0])) != 0 && (v15 = Extension, TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v15)) && (Value = CFDictionaryGetValue(v15, @"avcC")) != 0 && ((ValueAtIndex = Value, v19 = CFArrayGetTypeID(), v19 != CFGetTypeID(ValueAtIndex)) || (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0) && (v20 = CFDataGetTypeID(), v20 == CFGetTypeID(ValueAtIndex)) && (BytePtr = CFDataGetBytePtr(ValueAtIndex), CFDataGetLength(ValueAtIndex) >= 7) && *BytePtr == 1)
      {
        v22 = BytePtr[1];
      }

      else
      {
        v22 = 0;
      }

      v23 = *a3;
      v26 = (v12 == 1785750887 || v23 != 1785750887) && v13 != 0;
      if (v12 == 1635148593 && v23 == 1635148593)
      {
        v28 = *a4 != 77 || v22 == 77;
        v26 &= v28;
      }

      if ((v26 & 1) == 0)
      {
        v29 = *a2;
        *a2 = a1;
        if (a1)
        {
          CFRetain(a1);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        *a3 = v12;
        *a4 = v22;
      }
    }

    CFRelease(v10);
  }
}

uint64_t FPSupport_GetClosestCommonRefreshIntervalForRate(uint64_t a1, double a2)
{
  v2 = MEMORY[0x1E6960C70];
  v3 = *MEMORY[0x1E6960C70];
  *a1 = *MEMORY[0x1E6960C70];
  v4 = *(v2 + 16);
  *(a1 + 16) = v4;
  if (a2 == 0.0)
  {
    FPSupport_GetClosestCommonRefreshIntervalForRate_cold_1(&time1);
    return LODWORD(time1.value);
  }

  else
  {
    v9 = v3;
    memset(&v17, 0, sizeof(v17));
    CMTimeMake(&v17, vcvtad_u64_f64(1000000000.0 / a2), 1000000000);
    v6 = 0;
    *&v16.value = v9;
    v16.epoch = v4;
    v15 = **&MEMORY[0x1E6960C88];
    do
    {
      memset(&time1, 0, sizeof(time1));
      v7 = FPSupport_GetClosestCommonRefreshIntervalForRate_commonFrequencies[v6];
      CMTimeMake(&time1, 1, v7);
      memset(&time2, 0, sizeof(time2));
      lhs = v17;
      rhs = time1;
      CMTimeSubtract(&time, &lhs, &rhs);
      CMTimeAbsoluteValue(&time2, &time);
      time = time2;
      lhs = v15;
      if (CMTimeCompare(&time, &lhs) < 0)
      {
        v16 = time1;
        v15 = time2;
      }

      CMTimeMake(&time, 1001, 1000 * v7);
      time1 = time;
      time = v17;
      rhs = time1;
      CMTimeSubtract(&lhs, &time, &rhs);
      CMTimeAbsoluteValue(&time, &lhs);
      time2 = time;
      lhs = v15;
      if (CMTimeCompare(&time, &lhs) < 0)
      {
        v16 = time1;
        v15 = time2;
      }

      v6 += 2;
    }

    while (v6 != 22);
    time2 = v15;
    CMTimeMultiply(&time1, &time2, 100);
    time2 = v16;
    if (CMTimeCompare(&time1, &time2) > 0)
    {
      *&v16.value = v9;
      v16.epoch = v4;
    }

    result = 0;
    *a1 = v16;
  }

  return result;
}

double fpSupport_addTrackInfoToArray(uint64_t a1, int a2, int a3, __CFArray *a4)
{
  valuePtr = a2;
  cf = 0;
  value = 0;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = Mutable;
    v11 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(v10, @"TrackID", v11);
      CFRelease(v12);
    }

    FigTrackReaderGetFigBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(v14, @"TrackLanguageCode", v8, &value);
      if (value)
      {
        CFDictionarySetValue(v10, @"Language", value);
        CFRelease(value);
        value = 0;
      }
    }

    FigTrackReaderGetFigBaseObject();
    v17 = v16;
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18)
    {
      v18(v17, @"ExtendedLanguageTagString", v8, &value);
    }

    if (value)
    {
      CFDictionarySetValue(v10, @"ExtendedLanguage", value);
      CFRelease(value);
      value = 0;
    }

    if (a3 == 1936684398)
    {
      desc = 0;
      fpSupport_copyFormatDescription(a1, &desc);
      v19 = desc;
      if (desc)
      {
        *bytes = bswap32(CMFormatDescriptionGetMediaSubType(desc));
        v20 = CFStringCreateWithBytes(v8, bytes, 4, 0, 0);
        CFDictionarySetValue(v10, @"AudioFormat", v20);
        if (v20)
        {
          CFRelease(v20);
        }

        CFRelease(v19);
      }
    }

    FigTrackReaderGetFigBaseObject();
    v22 = v21;
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v23(v22, @"TrackExcludeFromAutoSelection", v8, &cf);
      if (cf)
      {
        CFDictionarySetValue(v10, @"ExcludeFromAutoSelection", cf);
        CFRelease(cf);
      }
    }

    CFArrayAppendValue(a4, v10);
    CFRelease(v10);
  }

  else
  {
    v25 = qword_1ED4CBD68;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 4294967188, "<<<< Alt >>>>", 4422, v4);
  }

  return result;
}

uint64_t FPSupport_resetClosedCaptionLayer(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 8);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:1];
      for (i = 0; i != v4; ++i)
      {
        [CFArrayGetValueAtIndex(*(a1 + 8) i)];
      }

      [MEMORY[0x1E6979518] commit];
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t FPSupport_updateClosedCaptionLayerBounds(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, CFIndex a7, _OWORD *a8, __int128 *a9)
{
  rect.origin.x = a2;
  rect.origin.y = a3;
  rect.size.width = a4;
  rect.size.height = a5;
  if (a7 < 0)
  {
    FPSupport_updateClosedCaptionLayerBounds_cold_3(cf);
    return LODWORD(cf[0]);
  }

  v17 = *MEMORY[0x1E695F050];
  v18 = *(MEMORY[0x1E695F050] + 8);
  v19 = *(MEMORY[0x1E695F050] + 16);
  v20 = *(MEMORY[0x1E695F050] + 24);
  v48.origin.x = *MEMORY[0x1E695F050];
  v48.origin.y = v18;
  v48.size.width = v19;
  v48.size.height = v20;
  if (CGRectEqualToRect(*&a2, v48) || (v21 = 0, a4 > 0.0) && a5 > 0.0)
  {
    if (a8)
    {
      v22 = a8[1];
      *(a1 + 64) = *a8;
      *(a1 + 80) = v22;
    }

    if (a9)
    {
      v23 = *a9;
      v24 = a9[1];
      v25 = a9[3];
      *(a1 + 128) = a9[2];
      *(a1 + 144) = v25;
      *(a1 + 96) = v23;
      *(a1 + 112) = v24;
    }

    FigSimpleMutexLock();
    if (*(a1 + 8))
    {
      v47.origin.x = a2;
      v47.origin.y = a3;
      v47.size.width = a4;
      v47.size.height = a5;
      v49.origin.x = v17;
      v49.origin.y = v18;
      v49.size.width = v19;
      v49.size.height = v20;
      if (CGRectEqualToRect(v47, v49))
      {
        cf[0] = 0;
        if (*(a1 + 40))
        {
          SInt32 = FigCFNumberCreateSInt32();
          if (SInt32)
          {
            v34 = SInt32;
            if (CFDictionaryGetValueIfPresent(*(a1 + 40), SInt32, cf))
            {
              TypeID = CFDictionaryGetTypeID();
              if (TypeID == CFGetTypeID(cf[0]) && !CGRectMakeWithDictionaryRepresentation(cf[0], &rect))
              {
                FPSupport_updateClosedCaptionLayerBounds_cold_1();
              }
            }

            CFRelease(v34);
          }

          else
          {
            FPSupport_updateClosedCaptionLayerBounds_cold_2(0, v27, v28, v29, v30, v31, v32, v33, cf[0], cf[1], SHIDWORD(cf[1]), v43);
          }
        }
      }

      else
      {
        storeClosedCaptionLayerBoundsInCacheForLayerIndex(a1, a7, a2, a3, a4, a5);
      }

      Count = *(a1 + 8);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count <= a7)
      {
        v21 = 4294954436;
        goto LABEL_28;
      }

      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:{1, cf[0]}];
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), a7);
      MidX = CGRectGetMidX(rect);
      [ValueAtIndex setPosition:{MidX, CGRectGetMidY(rect)}];
      [ValueAtIndex setBounds:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
      [ValueAtIndex setVideoRelativeToViewport:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
      v39 = *(a1 + 112);
      *cf = *(a1 + 96);
      v43 = v39;
      v40 = *(a1 + 144);
      v44 = *(a1 + 128);
      v45 = v40;
      [ValueAtIndex setCaptionsAvoidanceMargins:cf];
      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      storeClosedCaptionLayerBoundsInCacheForLayerIndex(a1, a7, a2, a3, a4, a5);
    }

    v21 = 0;
LABEL_28:
    FigSimpleMutexUnlock();
  }

  return v21;
}

void storeClosedCaptionLayerBoundsInCacheForLayerIndex(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (*(a1 + 40) || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 40) = Mutable) != 0))
  {
    SInt32 = FigCFNumberCreateSInt32();
    if (SInt32)
    {
      v27 = SInt32;
      v34.origin.x = a3;
      v34.origin.y = a4;
      v34.size.width = a5;
      v34.size.height = a6;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v34);
      if (DictionaryRepresentation)
      {
        v29 = DictionaryRepresentation;
        CFDictionarySetValue(*(a1 + 40), v27, DictionaryRepresentation);
        CFRelease(v27);

        CFRelease(v29);
      }

      else
      {
        storeClosedCaptionLayerBoundsInCacheForLayerIndex_cold_1(v27);
      }
    }

    else
    {
      storeClosedCaptionLayerBoundsInCacheForLayerIndex_cold_2(0, v20, v21, v22, v23, v24, v25, v26, v30, v31, SHIDWORD(v31), v32);
    }
  }

  else
  {
    storeClosedCaptionLayerBoundsInCacheForLayerIndex_cold_3(0, v12, v13, v14, v15, v16, v17, v18, v30, v31, SHIDWORD(v31), v32);
  }
}

uint64_t FPSupport_setClosedCaptionLayerOptions(uint64_t a1, uint64_t a2, CFIndex a3, const void *a4, const void *a5)
{
  if (a3 < 0)
  {
    FPSupport_setClosedCaptionLayerOptions_cold_2(&v14);
    return v14;
  }

  FigSimpleMutexLock();
  v9 = *(a1 + 8);
  if (!v9)
  {
    *(a1 + 56) = 1;
LABEL_8:
    Mutable = *(a1 + 48);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 48) = Mutable) != 0))
    {
      CFDictionarySetValue(Mutable, a4, a5);
      v11 = 0;
    }

    else
    {
      FPSupport_setClosedCaptionLayerOptions_cold_1(&v13);
      v11 = v13;
    }

    goto LABEL_12;
  }

  if (CFArrayGetCount(v9) > a3)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    [CFArrayGetValueAtIndex(*(a1 + 8) a3)];
    [MEMORY[0x1E6979518] commit];
    goto LABEL_8;
  }

  v11 = 4294954436;
LABEL_12:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t FPSupport_setClosedCaptionLayerSeparated(uint64_t a1, uint64_t a2, CFIndex a3, int a4)
{
  if (a3 < 0)
  {
    FPSupport_setClosedCaptionLayerSeparated_cold_2(&v13);
    return v13;
  }

  FigSimpleMutexLock();
  v7 = *(a1 + 8);
  if (!v7)
  {
    *(a1 + 56) = 1;
LABEL_8:
    Mutable = *(a1 + 48);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 48) = Mutable) != 0))
    {
      v9 = MEMORY[0x1E695E4D0];
      if (!a4)
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"setSeparated", *v9);
      v10 = 0;
    }

    else
    {
      FPSupport_setClosedCaptionLayerSeparated_cold_1(&v12);
      v10 = v12;
    }

    goto LABEL_14;
  }

  if (CFArrayGetCount(v7) > a3)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    [CFArrayGetValueAtIndex(*(a1 + 8) a3)];
    [MEMORY[0x1E6979518] commit];
    goto LABEL_8;
  }

  v10 = 4294954436;
LABEL_14:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FPSupport_updateClosedCaptionLayer(uint64_t a1, const __CFArray *a2)
{
  v4 = objc_autoreleasePoolPush();
  FigSimpleMutexLock();
  if (!*(a1 + 2) || (!a2 ? (Count = 0) : (Count = CFArrayGetCount(a2)), *(a1 + 24) <= 0 ? (v6 = Count) : (v6 = *(a1 + 24)), v6 < 1))
  {
    cleanupClosedCaptionLayer(a1);
LABEL_63:
    v23 = 0;
    goto LABEL_64;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v7 = CFArrayGetCount(v7);
  }

  if (v7 == v6)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), i);
      [ValueAtIndex resetCaptions];
      [ValueAtIndex removeFromSuperlayer];
    }

    [MEMORY[0x1E6979518] commit];
LABEL_24:
    v12 = *(a1 + 24);
    if (v12 < 1)
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:1];
      if (v6 >= 1)
      {
        v15 = 0;
        v16 = *MEMORY[0x1E695F050];
        v17 = *(MEMORY[0x1E695F050] + 8);
        v18 = *(MEMORY[0x1E695F050] + 16);
        v19 = *(MEMORY[0x1E695F050] + 24);
        do
        {
          v20 = CFArrayGetValueAtIndex(*(a1 + 8), v15);
          [CFArrayGetValueAtIndex(a2 v15)];
          FPSupport_updateClosedCaptionLayerBounds(a1, v16, v17, v18, v19, v21, v15++, 0, 0);
        }

        while (v6 != v15);
      }

      [MEMORY[0x1E6979518] commit];
      FPSupport_cleanupClosedCaptionHostLayerArraySupport(a1);
    }

    else
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = CFArrayGetCount(v13);
        v12 = *(a1 + 24);
      }

      if (v13 <= v12)
      {
        v24 = *(a1 + 32);
        if (v24)
        {
          v24 = CFArrayGetCount(v24);
          v25 = *(a1 + 24);
        }

        else
        {
          v25 = v12;
        }

        if (v24 < v25)
        {
          Mutable = *(a1 + 32);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v25, MEMORY[0x1E695E9C0]);
            *(a1 + 32) = Mutable;
          }

          v27 = *MEMORY[0x1E69796A0];
          v28 = *MEMORY[0x1E695E4D0];
          v29 = *MEMORY[0x1E69796C0];
          if (Mutable)
          {
LABEL_52:
            Mutable = CFArrayGetCount(Mutable);
          }

          while (Mutable < *(a1 + 24))
          {
            v30 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"FigPlayer_CC_CAContext", v27, v28, v29, 0}];
            v31 = [MEMORY[0x1E6979550] contextWithOptions:v30];
            if (!v31)
            {
              goto LABEL_42;
            }

            CFArrayAppendValue(*(a1 + 32), v31);
            Mutable = *(a1 + 32);
            if (Mutable)
            {
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        [MEMORY[0x1E6979518] setDisableActions:1];
        while (1)
        {
          v14 = *(a1 + 32);
          if (v14)
          {
            v14 = CFArrayGetCount(v14);
          }

          if (v14 <= *(a1 + 24))
          {
            break;
          }

          CFArrayRemoveValueAtIndex(*(a1 + 32), 0);
        }

        [MEMORY[0x1E6979518] commit];
      }

      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:1];
      if (*(a1 + 24) >= 1)
      {
        v32 = 0;
        v33 = *MEMORY[0x1E695F050];
        v34 = *(MEMORY[0x1E695F050] + 8);
        v35 = *(MEMORY[0x1E695F050] + 16);
        v36 = *(MEMORY[0x1E695F050] + 24);
        do
        {
          v37 = CFArrayGetValueAtIndex(*(a1 + 8), v32);
          [CFArrayGetValueAtIndex(*(a1 + 32) v32)];
          FPSupport_updateClosedCaptionLayerBounds(a1, v33, v34, v35, v36, v38, v32++, 0, 0);
        }

        while (v32 < *(a1 + 24));
      }

      [MEMORY[0x1E6979518] commit];
    }

    goto LABEL_63;
  }

  cleanupClosedCaptionLayer(a1);
  *(a1 + 8) = CFArrayCreateMutable(*MEMORY[0x1E695E480], v6, MEMORY[0x1E695E9C0]);
  while (1)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    v10 = +[FigCaptionLayer layer];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    CFArrayAppendValue(*(a1 + 8), v10);
    [v11 setFontName:"Courier New"];
    [MEMORY[0x1E6979518] commit];
    if (!--v6)
    {
      v6 = CFArrayGetCount(*(a1 + 8));
      goto LABEL_24;
    }
  }

  [MEMORY[0x1E6979518] commit];
LABEL_42:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, v42);
  v23 = v22;
  if (v22)
  {
    cleanupClosedCaptionLayer(a1);
  }

LABEL_64:
  FigSimpleMutexUnlock();
  objc_autoreleasePoolPop(v4);
  return v23;
}

uint64_t cleanupClosedCaptionLayer(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 8);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      [CFArrayGetValueAtIndex(*(a1 + 8) i)];
    }
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 8) = 0;
  }

  [MEMORY[0x1E6979518] commit];
  FPSupport_cleanupClosedCaptionHostLayerArraySupport(a1);
  v6 = *(a1 + 40);
  if (v6)
  {
    CFDictionaryRemoveAllValues(v6);
  }

  return FigSimpleMutexUnlock();
}

void FPSupport_cleanupClosedCaptionHostLayerArraySupport(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  [MEMORY[0x1E6979518] commit];

  objc_autoreleasePoolPop(v2);
}

uint64_t FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers(const void *a1, const __CFArray *a2, CFArrayRef theArray, const __CFArray *a4, uint64_t a5)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a4)
    {
LABEL_3:
      v10 = CFArrayGetCount(a4);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  if (v10 == Count)
  {
    if (a2)
    {
      v11 = CFArrayGetCount(a2);
    }

    else
    {
      v11 = 0;
    }

    if (v11 == Count)
    {
      v12 = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
      if (v12)
      {
        v13 = v12;
        *v12 = FigCFArrayCreateCopy();
        *(v13 + 8) = FigCFArrayCreateCopy();
        *(v13 + 16) = FigCFArrayCreateCopy();

        return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a5, v13, fps_disposeCallUpdateHostLayersInLayers, fps_copyDescriptionForCallUpdateHostLayersInLayers, fps_callUpdateHostLayersInLayers);
      }

      else
      {
        FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers_cold_3(&v17);
        return v17;
      }
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers_cold_1(&v15);
    return v15;
  }
}

void fps_disposeCallUpdateHostLayersInLayers(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForCallUpdateHostLayersInLayers(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = FigCFCopyCompactDescription();
  v3 = FigCFCopyCompactDescription();
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Update Host Layer Array %@ with ContextID Array %@ and insert in Client Layer Array %@", v3, v2, v4);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t fps_callUpdateHostLayersInLayers(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 8);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        FigCFArrayGetInt32AtIndex();
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), i);
        [ValueAtIndex setContextId:0];
        [CFArrayGetValueAtIndex(*(a1 + 16) i)];
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForRemovingEachLayerInArrayFromItsSuperlayer(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
  if (v5)
  {
    v6 = v5;
    *v5 = FigCFArrayCreateCopy();

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a3, v6, fps_disposeCallRemoveEachLayerInArrayFromItsSuperLayer, fps_copyDescriptionForCallRemoveEachLayerInArrayFromItsSuperLayer, fps_callRemoveEachLayerInArrayFromItsSuperLayer);
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForRemovingEachLayerInArrayFromItsSuperlayer_cold_1(&v8);
    return v8;
  }
}

void fps_disposeCallRemoveEachLayerInArrayFromItsSuperLayer(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForCallRemoveEachLayerInArrayFromItsSuperLayer(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Remove Layers From Their Superlayers: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

uint64_t fps_callRemoveEachLayerInArrayFromItsSuperLayer(CFArrayRef *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*a1)
  {
    Count = CFArrayGetCount(*a1);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        [CFArrayGetValueAtIndex(*a1 i)];
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  return 0;
}

double FPSupport_createRenderPipelineOptions(const __CFAllocator *a1, const void *a2, uint64_t a3, __int128 *a4, __int128 *a5, const void *a6, int a7, int a8, char a9, char a10, const void *a11, char a12, char a13, char a14, void *value, int a16, char a17, void *a18, char a19, uint64_t a20, char a21, void *a22, __CFDictionary **a23)
{
  v28 = a3;
  Mutable = CFDictionaryCreateMutable(a1, 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = Mutable;
  v32 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    goto LABEL_15;
  }

  CFDictionarySetValue(Mutable, @"FormatDescription", a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a2);
  if (MediaSubType <= 1634743415)
  {
    if (MediaSubType != 1634742376 && MediaSubType != 1634742888)
    {
      v34 = 13416;
LABEL_10:
      if (MediaSubType != (v34 | 0x61700000))
      {
        goto LABEL_15;
      }
    }
  }

  else if (((MediaSubType - 1634755432) > 0xB || ((1 << (MediaSubType - 104)) & 0x8C1) == 0) && ((MediaSubType - 1634759272) > 6 || ((1 << (MediaSubType - 104)) & 0x51) == 0))
  {
    v34 = 13432;
    goto LABEL_10;
  }

  if (FigVideoFormatDescriptionContainsAlphaChannel())
  {
    CFDictionarySetValue(v31, @"InhibitCompressedBufferUse", *v32);
  }

LABEL_15:
  if ((*(a4 + 3) & 0x1D) == 1)
  {
    v41 = *a4;
    v42 = *(a4 + 2);
    FigCFDictionarySetCMTime();
  }

  if ((*(a5 + 3) & 0x1D) == 1)
  {
    v41 = *a5;
    v42 = *(a5 + 2);
    FigCFDictionarySetCMTime();
  }

  if (v28)
  {
    FigCFDictionarySetInt32();
  }

  if (a7)
  {
    CFDictionarySetValue(v31, @"AllowAudibleContent", *v32);
  }

  if (a8)
  {
    CFDictionarySetValue(v31, @"AllowAMRDecode", *v32);
  }

  if (value)
  {
    CFDictionarySetValue(v31, @"AudioRenderingPreferences", value);
  }

  v35 = *v32;
  if (a12)
  {
    CFDictionarySetValue(v31, @"AllowAtmosDecode", *v32);
  }

  if (a13)
  {
    CFDictionarySetValue(v31, @"EnableSpatialization", v35);
  }

  if (a14)
  {
    CFDictionarySetValue(v31, @"AudioOnly", v35);
  }

  v36 = *MEMORY[0x1E695E4C0];
  if (a9)
  {
    v37 = v35;
  }

  else
  {
    v37 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v31, @"HardwarePassthrough", v37);
  if (a10)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  CFDictionarySetValue(v31, @"DisallowMultiplePlayResources", v38);
  if (a17)
  {
    v39 = v35;
  }

  else
  {
    v39 = v36;
  }

  CFDictionarySetValue(v31, @"AutomaticallyRestartsAfterConfigurationChange", v39);
  if (a6)
  {
    CFDictionarySetValue(v31, @"AudioDeviceUID", a6);
  }

  if (a11)
  {
    CFDictionarySetValue(v31, @"SharePixelBufferPool", a11);
  }

  if (a18)
  {
    CFDictionarySetValue(v31, @"AudioSession", a18);
  }

  if (a22)
  {
    CFDictionarySetValue(v31, @"LoggingID", a22);
  }

  if (a16)
  {
    FigCFDictionarySetInt32();
  }

  if (a19)
  {
    FigCFDictionarySetBoolean();
  }

  if (a20)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetBoolean();
  }

  *a23 = v31;
  if (!v31)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, DWORD2(v41), v42);
  }

  return result;
}

double FPSupport_getVideoDecodeWaterLevels(CMTime *a1, CMTime *a2, int a3)
{
  v9 = **&MEMORY[0x1E6960C70];
  v8 = v9;
  if (a3)
  {
    CMTimeMake(&v8, 3, 30);
    v5 = 5;
    v6 = 30;
  }

  else
  {
    CMTimeMake(&v8, 5, 300);
    v5 = 25;
    v6 = 300;
  }

  CMTimeMake(&v9, v5, v6);
  CelestialCustomizePlaybackImageQueueLevels();
  *a1 = v8;
  result = *&v9.value;
  *a2 = v9;
  return result;
}

double FPSupport_getDataQueueWaterLevels(CMTime *a1, CMTime *a2)
{
  memset(&v6, 0, sizeof(v6));
  CMTimeMake(&v6, 100, 1000);
  memset(&v5, 0, sizeof(v5));
  CMTimeMake(&v5, 200, 1000);
  if (a1)
  {
    result = *&v6.value;
    *a1 = v6;
  }

  if (a2)
  {
    result = *&v5.value;
    *a2 = v5;
  }

  return result;
}

uint64_t FPSupport_initializeClosedCaptions(uint64_t a1)
{
  result = FigReentrantMutexCreate();
  *(a1 + 16) = result;
  return result;
}

void FPSupport_releaseClosedCaptions(void *a1)
{
  cleanupClosedCaptionLayer(a1);
  if (a1[2])
  {
    FigSimpleMutexDestroy();
    a1[2] = 0;
  }

  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }
}

id FPSupport_CopyDictionaryDescriptionAsCFString(id result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_autoreleasePoolPush();
    v3 = [v1 description];
    objc_autoreleasePoolPop(v2);
    return v3;
  }

  return result;
}

uint64_t FPSupport_GetMaxDisplaySizeFromImageQueues(const __CFArray *a1, double *a2)
{
  v3 = MEMORY[0x1E695F060];
  width = *MEMORY[0x1E695F060];
  height = *(MEMORY[0x1E695F060] + 8);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    dict = 0;
    if (a2)
    {
      v8 = Count;
      if (Count >= 1)
      {
        v9 = 0;
        v10 = *MEMORY[0x1E695E480];
        v18 = *v3;
        while (1)
        {
          size = v18;
          CFArrayGetValueAtIndex(a1, v9);
          FigImageQueueGetFigBaseObject();
          v12 = v11;
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v14 = v13(v12, @"FigImageQueueProperty_DisplaySize", v10, &dict);
            v15 = dict;
            if (v14)
            {
              v16 = 1;
            }

            else
            {
              v16 = dict == 0;
            }

            if (v16)
            {
              goto LABEL_14;
            }

            if (CGSizeMakeWithDictionaryRepresentation(dict, &size) && size.width * size.height > height * width)
            {
              height = size.height;
              width = size.width;
            }
          }

          v15 = dict;
LABEL_14:
          if (v15)
          {
            CFRelease(v15);
            dict = 0;
          }

          if (v8 == ++v9)
          {
            goto LABEL_19;
          }
        }
      }

      goto LABEL_19;
    }
  }

  else if (a2)
  {
LABEL_19:
    result = 0;
    *a2 = width;
    a2[1] = height;
    return result;
  }

  FPSupport_GetMaxDisplaySizeFromImageQueues_cold_1(&size);
  return LODWORD(size.width);
}

uint64_t FPSupport_CreateSetRateOptions(const __CFAllocator *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (a3)
  {
    if (Mutable)
    {
      FigCFDictionarySetInt32();
      v6 = 0;
      *a3 = v5;
    }

    else
    {
      FPSupport_CreateSetRateOptions_cold_1(v11);
      return v11[0];
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11[1]);
    v6 = v8;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v6;
}

uint64_t FPSupport_ConfigSnapRateForLQZL(float *a1, float *a2, float a3)
{
  v3 = 0;
  v4 = fabsf(a3);
  v5 = 1.0;
  if (a3 != 0.0)
  {
    v5 = v4;
    v6 = v4;
    if (v4 <= 2.1)
    {
      v5 = 2.0;
      if (v4 <= 1.75)
      {
        v5 = 1.5;
        if (v4 <= 1.375)
        {
          v5 = 1.25;
          if (v4 <= 1.125)
          {
            v5 = 1.0;
            if (v6 <= 0.9)
            {
              if (v6 <= 0.733)
              {
                v5 = 0.66667;
                if (v6 <= 0.583)
                {
                  v5 = 0.5;
                }
              }

              else
              {
                v5 = 0.8;
              }
            }
          }
        }
      }

      if (a3 < 0.0)
      {
        a3 = -v5;
      }

      else
      {
        a3 = v5;
      }

      v3 = 1;
    }
  }

  if (a1)
  {
    *a1 = v5;
  }

  if (a2)
  {
    *a2 = a3;
  }

  return v3;
}

const char *FPSupport_GetModeString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E7482630[a1 - 1];
  }
}

void FPSupport_GetCurrentDisplayModeVideoRangeAndSizeAndFrameRate(const __CFArray *a1, _DWORD *a2, double *a3, double *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a1)
  {
    v6 = CFArrayGetCount(a1) > 0;
  }

  else
  {
    v6 = 0;
  }

  context = objc_autoreleasePoolPush();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [MEMORY[0x1E6979328] displays];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v31;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if (v6)
        {
          Count = CFArrayGetCount(a1);
          v18 = [v16 name];
          v36.location = 0;
          v36.length = Count;
          if (!CFArrayContainsValue(a1, v36, v18))
          {
            continue;
          }
        }

        v19 = fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(v16);
        VideoRangeForMode = FPSupport_GetVideoRangeForMode([v16 currentMode], v19);
        if (VideoRangeForMode <= v10)
        {
          if (VideoRangeForMode == v10)
          {
            v23 = [objc_msgSend(v16 "currentMode")];
            v24 = [objc_msgSend(v16 "currentMode")];
            [objc_msgSend(v16 "currentMode")];
            if (v14 >= v23)
            {
              if (v12 < v25 && v14 == v23)
              {
                v12 = v25;
              }
            }

            else
            {
              v13 = v24;
              v12 = v25;
              v14 = v23;
            }
          }
        }

        else
        {
          v21 = VideoRangeForMode;
          v14 = [objc_msgSend(v16 "currentMode")];
          v13 = [objc_msgSend(v16 "currentMode")];
          [objc_msgSend(v16 "currentMode")];
          v12 = v22;
          v10 = v21;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  objc_autoreleasePoolPop(context);
  if (a2)
  {
    *a2 = v10;
  }

  if (a3)
  {
    *a3 = v14;
    a3[1] = v13;
  }

  if (a4)
  {
    *a4 = v12;
  }
}

const __CFArray *FPSupport_CreateAllVideoRangesSupportedByDisplays()
{
  v32 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (Mutable)
  {
    context = objc_autoreleasePoolPush();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [MEMORY[0x1E6979328] displays];
    v2 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v2)
    {
      v3 = v2;
      v20 = *v27;
      do
      {
        v4 = 0;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v26 + 1) + 8 * v4);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v6 = [v5 availableModes];
          v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v23;
            do
            {
              v10 = 0;
              do
              {
                if (*v23 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v22 + 1) + 8 * v10);
                v12 = fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(v5);
                valuePtr = FPSupport_GetVideoRangeForMode(v11, v12);
                v13 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
                if (v13)
                {
                  v14 = v13;
                  v33.length = CFArrayGetCount(Mutable);
                  v33.location = 0;
                  if (!CFArrayContainsValue(Mutable, v33, v14))
                  {
                    CFArrayAppendValue(Mutable, v14);
                  }

                  CFRelease(v14);
                }

                ++v10;
              }

              while (v8 != v10);
              v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v8);
          }

          ++v4;
        }

        while (v4 != v3);
        v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v3);
    }

    objc_autoreleasePoolPop(context);
    if (!CFArrayGetCount(Mutable))
    {
      valuePtr = 1;
      v15 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
      if (v15)
      {
        v16 = v15;
        v34.length = CFArrayGetCount(Mutable);
        v34.location = 0;
        if (!CFArrayContainsValue(Mutable, v34, v16))
        {
          CFArrayAppendValue(Mutable, v16);
        }

        CFRelease(v16);
      }
    }
  }

  return Mutable;
}

uint64_t fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(void *a1)
{
  v2 = FPSupport_CopyMainDisplayCAName();
  [a1 name];
  v3 = FigCFEqual();
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t FPSupport_GetVideoRangeForMode(void *a1, int a2)
{
  v4 = [a1 hdrMode];
  if ([v4 isEqualToString:*MEMORY[0x1E6979730]])
  {
    if (a2)
    {
      v5 = [a1 colorGamut];
      if ([v5 isEqual:*MEMORY[0x1E6979718]])
      {
        v6 = 1;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6979710]])
  {
    v6 = 4;
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6979720]])
  {
    v6 = 3;
  }

  else
  {
    result = [v4 isEqualToString:*MEMORY[0x1E6979728]];
    if (!result)
    {
      return result;
    }

    v6 = 2;
  }

  if (FigIsHDRAllowedOnDevice())
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

void FPSupport_GetDisplayInfoForCADisplay(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    if (a1)
    {
      v3 = objc_autoreleasePoolPush();
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v4 = [MEMORY[0x1E6979328] displays];
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v14 + 1) + 8 * i);
            [v9 name];
            if (FigCFEqual())
            {
              v10 = fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(v9);
              *a2 = FPSupport_GetVideoRangeForMode([v9 currentMode], v10);
              v11 = [objc_msgSend(v9 "currentMode")];
              v12 = [objc_msgSend(v9 "currentMode")];
              *(a2 + 8) = v11;
              *(a2 + 16) = v12;
              [objc_msgSend(v9 "currentMode")];
              *(a2 + 24) = v13;
              goto LABEL_13;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
      objc_autoreleasePoolPop(v3);
    }
  }
}

void FPSupport_GetBestDisplayInfoForDisplay(const void *a1, uint64_t a2, float a3)
{
  v86 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a2)
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    if (a1)
    {
      v6 = CFGetTypeID(a1);
      if (v6 == CFStringGetTypeID())
      {
        v7 = objc_autoreleasePoolPush();
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v8 = [MEMORY[0x1E6979328] displays];
        v9 = [v8 countByEnumeratingWithState:&v66 objects:v82 count:16];
        if (!v9)
        {
          goto LABEL_72;
        }

        v10 = v9;
        v11 = *v67;
        while (1)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v67 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v66 + 1) + 8 * i);
            [v13 name];
            if (FigCFEqual())
            {
              if (a3 <= 60.0)
              {
                v14 = a3 > 30.0;
              }

              else
              {
                v14 = 2;
              }

              if (![v13 allowedHDRModes])
              {
                goto LABEL_70;
              }

              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              obj = [v13 allowedHDRModes];
              v15 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
              if (!v15)
              {
                goto LABEL_70;
              }

              v16 = v15;
              v54 = v7;
              v55 = a2;
              v17 = 0;
              v18 = *v79;
              v64 = *MEMORY[0x1E6979730];
              v59 = *MEMORY[0x1E6979710];
              v57 = *MEMORY[0x1E6979720];
              v56 = *MEMORY[0x1E6979728];
              v19 = 0.0;
              v20 = 0.0;
              v21 = 0.0;
              v62 = v13;
              v58 = *v79;
              do
              {
                v22 = 0;
                v60 = v16;
                do
                {
                  if (*v79 != v18)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v65 = v22;
                  v23 = *(*(&v78 + 1) + 8 * v22);
                  if ([v23 isEqualToString:{v64, v54}])
                  {
                    v24 = 1;
                  }

                  else if ([v23 isEqualToString:v59])
                  {
                    v24 = 4;
                  }

                  else if ([v23 isEqualToString:v57])
                  {
                    v24 = 3;
                  }

                  else if ([v23 isEqualToString:v56])
                  {
                    v24 = 2;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  if (v24 > v17)
                  {
                    v63 = v24;
                    v76 = 0u;
                    v77 = 0u;
                    v74 = 0u;
                    v75 = 0u;
                    v25 = [v13 availableModes];
                    v26 = [v25 countByEnumeratingWithState:&v74 objects:v84 count:16];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = *v75;
                      while (2)
                      {
                        for (j = 0; j != v27; ++j)
                        {
                          if (*v75 != v28)
                          {
                            objc_enumerationMutation(v25);
                          }

                          v30 = *(*(&v74 + 1) + 8 * j);
                          [v30 refreshRate];
                          v32 = v31;
                          v33 = [v23 isEqual:{objc_msgSend(v30, "hdrMode")}];
                          v34 = v14 == v32 > 30.0;
                          if (v32 > 60.0)
                          {
                            v34 = a3 > 60.0;
                          }

                          if (v33 && v34)
                          {
                            v35 = 0;
                            goto LABEL_45;
                          }
                        }

                        v27 = [v25 countByEnumeratingWithState:&v74 objects:v84 count:16];
                        if (v27)
                        {
                          continue;
                        }

                        break;
                      }

                      v35 = 1;
LABEL_45:
                      v13 = v62;
                    }

                    else
                    {
                      v35 = 1;
                    }

                    v72 = 0u;
                    v73 = 0u;
                    v70 = 0u;
                    v71 = 0u;
                    v36 = [v13 availableModes];
                    v37 = [v36 countByEnumeratingWithState:&v70 objects:v83 count:16];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = *v71;
                      v20 = 0.0;
                      v19 = 0.0;
                      v21 = 0.0;
                      while (1)
                      {
                        for (k = 0; k != v38; ++k)
                        {
                          if (*v71 != v39)
                          {
                            objc_enumerationMutation(v36);
                          }

                          v41 = *(*(&v70 + 1) + 8 * k);
                          [v41 refreshRate];
                          v43 = v42;
                          if ([v23 isEqual:{objc_msgSend(v41, "hdrMode")}])
                          {
                            v44 = a3 > 60.0;
                            v45 = v43;
                            if (v45 <= 60.0)
                            {
                              v44 = v14 == v45 > 30.0;
                            }

                            if (v35 | v44)
                            {
                              [v41 refreshRate];
                              if (v46 >= v21)
                              {
                                [v41 refreshRate];
                                if (v47 <= v21)
                                {
                                  v49 = [v41 width];
                                  if (v20 * v19 >= ([v41 height] * v49))
                                  {
                                    continue;
                                  }
                                }

                                else
                                {
                                  [v41 refreshRate];
                                  v21 = v48;
                                }

                                v20 = [v41 width];
                                v19 = [v41 height];
                              }
                            }
                          }
                        }

                        v38 = [v36 countByEnumeratingWithState:&v70 objects:v83 count:16];
                        if (!v38)
                        {
                          v17 = v63;
                          v13 = v62;
                          goto LABEL_65;
                        }
                      }
                    }

                    v19 = 0.0;
                    v20 = 0.0;
                    v21 = 0.0;
                    v17 = v63;
LABEL_65:
                    v18 = v58;
                    v16 = v60;
                  }

                  v22 = v65 + 1;
                }

                while (v65 + 1 != v16);
                v16 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
              }

              while (v16);
              v7 = v54;
              a2 = v55;
              if (v17)
              {
                *v55 = v17;
                *(v55 + 4) = 0;
                *(v55 + 8) = v20;
                *(v55 + 16) = v19;
              }

              else
              {
LABEL_70:
                v50 = fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(v13);
                *a2 = FPSupport_GetVideoRangeForMode([v13 currentMode], v50);
                v51 = [objc_msgSend(v13 "currentMode")];
                v52 = [objc_msgSend(v13 "currentMode")];
                *(a2 + 8) = v51;
                *(a2 + 16) = v52;
                [objc_msgSend(v13 "currentMode")];
                v21 = v53;
              }

              *(a2 + 24) = v21;
              goto LABEL_72;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v66 objects:v82 count:16];
          if (!v10)
          {
LABEL_72:
            objc_autoreleasePoolPop(v7);
            return;
          }
        }
      }
    }
  }
}

uint64_t FPSupport_IsExternalDisplay(const void *a1)
{
  v1 = CFGetTypeID(a1);
  if (v1 != CFStringGetTypeID())
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x1E6979328] "TVOutDisplay")];
  v3 = FigCFEqual();
  objc_autoreleasePoolPop(v2);
  return v3;
}

CFStringRef FPSupport_CopyMainDisplayCAName()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E6979328] mainDisplay];
  if (v1 && (v2 = [v1 name]) != 0)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    Copy = 0;
  }

  objc_autoreleasePoolPop(v0);
  return Copy;
}

void FPSupport_GetMainDisplayVideoRangeAndSizeAndFrameRate(_DWORD *a1, double *a2, void *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a1)
  {
    *a1 = 0;
  }

  if (a2)
  {
    *a2 = 0.0;
    a2[1] = 0.0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x1E6979328] mainDisplay];
  v8 = v7;
  if (a1)
  {
    v9 = fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(v7);
    *a1 = FPSupport_GetVideoRangeForMode([v8 currentMode], v9);
  }

  if (a2)
  {
    v10 = [objc_msgSend(v8 "currentMode")];
    v11 = [objc_msgSend(v8 "currentMode")];
    *a2 = v10;
    a2[1] = v11;
  }

  if (a3)
  {
    [objc_msgSend(v8 "currentMode")];
    *a3 = v12;
  }

  objc_autoreleasePoolPop(v6);
}

void fps_disposeClearVideoLayerContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForClearVideoLayerContext(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigCFCopyCompactDescription();
  v4 = v3;
  if (*(a1 + 8))
  {
    v5 = " and remove them from their superlayer";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"Clear video layers %@%s", v3, v5);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t fps_clearFigVideoLayers(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        v7 = [ValueAtIndex superlayer];
        [ValueAtIndex setContents:0];
        if (*(a1 + 8))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ValueAtIndex == [v7 videoLayer])
          {
            [v7 setVideoLayer:0];
          }

          [ValueAtIndex removeFromSuperlayer];
        }

        [ValueAtIndex setFilters:0];
      }
    }
  }

  return 0;
}

void fps_disposeAttachFigVideoLayerContext(CFTypeRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForAttachFigVideoLayerContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Attach fig video layers: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\nto client layers: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t fps_attachFigVideoLayersToClientLayers(CFArrayRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v4 = CFArrayGetCount(v4);
  }

  if (Count == v4)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1[1], i);
        v7 = CFArrayGetValueAtIndex(*a1, i);
        [v7 addSublayer:ValueAtIndex];
        [v7 setVideoLayer:ValueAtIndex];
      }
    }

    return 0;
  }

  else
  {
    fps_attachFigVideoLayersToClientLayers_cold_1(&v9);
    return v9;
  }
}

void fps_disposeSetCAImageQueuesOnVideoLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetCAImageQueuesOnVideoLayersContext(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Set CA image queues: %@", v4);
  if (v4)
  {
    CFRelease(v4);
  }

  time = *(a1 + 16);
  v5 = CMTimeCopyDescription(v2, &time);
  CFStringAppendFormat(Mutable, 0, @"\nand new duration: %@", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non video layers: %@", v6);
  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

uint64_t fps_setCAImageQueuesOnVideoLayers(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v4 = CFArrayGetCount(v4);
  }

  if (Count >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = Count;
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *MEMORY[0x1E69797E0];
    v8 = MEMORY[0x1E6960CC0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), v6);
      v10 = CFArrayGetValueAtIndex(*a1, v6);
      [v10 setContents:ValueAtIndex];
      [v10 setFillMode:v7];
      if ((*(a1 + 28) & 0x11) == 1)
      {
        time1 = *(a1 + 16);
        v14 = *v8;
        if (CMTimeCompare(&time1, &v14) >= 1)
        {
          time1 = *(a1 + 16);
          Seconds = CMTimeGetSeconds(&time1);
          [v10 setDuration:?];
          [v10 timeOffset];
          if (v12 >= Seconds)
          {
            [v10 setTimeOffset:Seconds + -0.000001];
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  if (a3)
  {
    v8 = malloc_type_malloc(0x10uLL, 0x600405C6656D0uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      *(v9 + 8) = a3;
      CFRetain(a3);

      return FigDeferredTransactionAppendChangeWithCallback(a1, 0, a4, v9, fps_disposeSetFigImageQueuesOnCompositionContext, fps_copyDescriptionForSetFigImageQueuesOnCompositionContext, fps_setFigImageQueuesOnComposition);
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition_cold_2(&v12);
    return v12;
  }
}

void fps_disposeSetFigImageQueuesOnCompositionContext(CFTypeRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetFigImageQueuesOnCompositionContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Update fig image queues: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  CFStringAppendFormat(Mutable, 0, @"\non composition processor: %@", a1[1]);
  return Mutable;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  if (a3)
  {
    v8 = malloc_type_malloc(0x10uLL, 0x600405C6656D0uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      *(v9 + 8) = a3;
      CFRetain(a3);

      return FigDeferredTransactionAppendChangeWithCallback(a1, 0, a4, v9, fps_disposeSetFigImageQueuesOnRenderPipelineContext, fps_copyDescriptionForSetFigImageQueuesOnRenderPipelineContext, fps_setFigImageQueuesOnRenderPipeline);
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline_cold_2(&v12);
    return v12;
  }
}

void fps_disposeSetFigImageQueuesOnRenderPipelineContext(CFTypeRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetFigImageQueuesOnRenderPipelineContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Set fig image queues: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  CFStringAppendFormat(Mutable, 0, @"\non render pipeline: %@", a1[1]);
  return Mutable;
}

uint64_t fps_setFigImageQueuesOnRenderPipeline(uint64_t *a1)
{
  v1 = *a1;
  FigRenderPipelineGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, @"FigImageQueueArray", v1);
}

void fps_disposeSetDurationOnLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetDurationOnLayersContext(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  time = *(a1 + 8);
  v4 = CMTimeCopyDescription(v2, &time);
  CFStringAppendFormat(Mutable, 0, @"Set duration %@", v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non layers: %@", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

uint64_t fps_setDurationOnLayers(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      v6 = *MEMORY[0x1E69797E0];
      v7 = MEMORY[0x1E6960CC0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, v5);
        if ((*(a1 + 20) & 0x11) == 1)
        {
          time1 = *(a1 + 8);
          v12 = *v7;
          if (CMTimeCompare(&time1, &v12) >= 1)
          {
            time1 = *(a1 + 8);
            Seconds = CMTimeGetSeconds(&time1);
            [ValueAtIndex setDuration:?];
            [ValueAtIndex timeOffset];
            if (v10 >= Seconds)
            {
              [ValueAtIndex setTimeOffset:Seconds + -0.000001];
            }
          }
        }

        [ValueAtIndex setFillMode:v6];
        ++v5;
      }

      while (v4 != v5);
    }
  }

  return 0;
}

void fps_disposeSetBoundsOnLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetBoundsOnLayersContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Set bounds: [%G, %G, %G, %G]", a1[1], a1[2], a1[3], a1[4]);
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non layers: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t fps_setBoundsOnLayers(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        [CFArrayGetValueAtIndex(*a1 i)];
      }
    }
  }

  return 0;
}

void fps_disposeSetTransformOnLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetTransformOnLayersContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Set position: [%G, %G], transform: [%G, %G, %G, %G, %G, %G]", a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non layers: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t fps_setTransformOnLayers(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        v7 = ValueAtIndex;
        if (*(a1 + 8))
        {
          [ValueAtIndex setPosition:{*(a1 + 16), *(a1 + 24)}];
        }

        v8 = *(a1 + 48);
        v10[0] = *(a1 + 32);
        v10[1] = v8;
        v10[2] = *(a1 + 64);
        [v7 setAffineTransform:v10];
      }
    }
  }

  return 0;
}

void fps_disposeSetAntialiasingMaskOnLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetAntialiasingMaskOnLayersContext(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Set edge antialiasing mask %d", *(a1 + 8));
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non layers: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t fps_setAntialiasingMaskOnLayers(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        [CFArrayGetValueAtIndex(*a1 i)];
      }
    }
  }

  return 0;
}