uint64_t Copy_444_yuvz_arm(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t *a5, int8x16_t **a6)
{
  v6 = *a3;
  v7 = a3[1];
  v9 = *a4;
  v10 = a4[1];
  v12 = *a5;
  v13 = *a6;
  do
  {
    v14 = v9;
    v15 = v10;
    v16 = v13;
    v17 = result & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v18.i64[0] = *v14;
      v19 = v14[1];
      v20.i64[0] = *v15;
      v21 = v15[1];
      v14 += 2;
      v15 += 2;
      v18.i64[1] = v19;
      v20.i64[1] = v21;
      *v16 = vzip1q_s8(v18, v20);
      v16[1] = vzip2q_s8(v18, v20);
      v16 += 2;
      v17 -= 16;
    }

    while (v17);
    v22 = result & 0xF;
    if ((result & 0xF) != 0)
    {
      do
      {
        v24 = *v14;
        v14 = (v14 + 1);
        v25 = *v15;
        v15 = (v15 + 1);
        v16->i8[0] = v24;
        v16->i8[1] = v25;
        v16 = (v16 + 2);
        --v22;
      }

      while (v22);
      v23 = result & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v23 = result & 0xFFFFFFFFFFFFFFF0;
    }

    do
    {
      v26.i64[0] = *v15;
      v27 = v15[1];
      v15 += 2;
      v26.i64[1] = v27;
      *v16 = vzip1q_s8(0, v26);
      v16[1] = vzip2q_s8(0, v26);
      v16 += 2;
      v23 -= 16;
    }

    while (v23);
    v28 = result & 0xF;
    if ((result & 0xF) != 0)
    {
      do
      {
        v29 = *v15;
        v15 = (v15 + 1);
        v16->i8[0] = 0;
        v16->i8[1] = v29;
        v16 = (v16 + 2);
        --v28;
      }

      while (v28);
    }

    v9 = (v9 + v6);
    v10 = (v10 + v7);
    v13 = (v13 + v12);
    --a2;
  }

  while (a2);
  return result;
}

uint64_t Copy_yuvz_444_arm(uint64_t result, uint64_t a2, uint64_t *a3, int8x16_t **a4, uint64_t *a5, int8x16_t **a6)
{
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = a5[1];
  v11 = *a6;
  v12 = a6[1];
  do
  {
    v14 = v7;
    v15 = v11;
    v16 = v12;
    v17 = result & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v18 = *v14;
      v19 = v14[1];
      v14 += 2;
      *v15 = vuzp1q_s8(v18, v19);
      *v16 = vuzp2q_s8(v18, v19);
      ++v15;
      ++v16;
      v17 -= 16;
    }

    while (v17);
    v20 = result & 0xF;
    if ((result & 0xF) != 0)
    {
      do
      {
        v22 = v14->i8[0];
        v23 = v14->i8[1];
        v14 = (v14 + 2);
        v15->i8[0] = v22;
        v15 = (v15 + 1);
        v16->i8[0] = v23;
        v16 = (v16 + 1);
        --v20;
      }

      while (v20);
      v21 = result & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v21 = result & 0xFFFFFFFFFFFFFFF0;
    }

    do
    {
      v24 = *v14;
      v25 = v14[1];
      v14 += 2;
      *v16++ = vuzp2q_s8(v24, v25);
      v21 -= 16;
    }

    while (v21);
    v26 = result & 0xF;
    if ((result & 0xF) != 0)
    {
      do
      {
        v27 = v14->i8[1];
        v14 = (v14 + 2);
        v16->i8[0] = v27;
        v16 = (v16 + 1);
        --v26;
      }

      while (v26);
    }

    v7 = (v7 + v6);
    v11 = (v11 + v8);
    v12 = (v12 + v9);
    --a2;
  }

  while (a2);
  return result;
}

void JPEGH1Register()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  VTRegisterVideoDecoderWithInfo();
  VTRegisterVideoDecoderWithInfo();
  VTRegisterVideoDecoderWithInfo();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t H1JPEGVideoDecoder_CreateInstance(int a1, uint64_t a2, void *a3)
{
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0, v9);
  v5 = cf;
  if (v4 && cf)
  {
    CFRelease(cf);
    v5 = 0;
  }

  *a3 = v5;
  return v4;
}

uint64_t H1JPEGVideoDecoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 24) == 1936355431)
    {
      while (*(v1 + 184))
      {
        MEMORY[0x277CB06B0](2000);
      }

      v2 = *(v1 + 176);
      if (v2)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __H1JPEGVideoDecoder_Invalidate_block_invoke;
        block[3] = &__block_descriptor_tmp;
        block[4] = v1;
        dispatch_sync(v2, block);
        IONotificationPortDestroy(*(v1 + 168));
        *(v1 + 168) = 0;
        v3 = *(v1 + 176);
        if (v3)
        {
          dispatch_release(v3);
          *(v1 + 176) = 0;
        }
      }

      v4 = 0;
      v5 = v1 + 192;
      do
      {
        v6 = *(v5 + v4);
        if (v6)
        {
          CFRelease(v6);
          *(v5 + v4) = 0;
        }

        v4 += 8;
      }

      while (v4 != 24);
      FigSemaphoreDestroy();
      *(v1 + 224) = 0;
      v7 = *(v1 + 216);
      if (v7)
      {
        CFRelease(v7);
        *(v1 + 216) = 0;
      }
    }

    v8 = 0;
    v9 = v1 + 80;
    do
    {
      v10 = (v9 + v8);
      v11 = *(v9 + v8);
      if (v11)
      {
        CFRelease(v11);
        *v10 = 0;
        v10[1] = 0;
      }

      v8 += 24;
    }

    while (v8 != 72);
    FigSimpleMutexDestroy();
  }

  return 0;
}

void H1JPEGVideoDecoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 32) = 0;
  *(DerivedStorage + 40) = 0;
  FigFormatDescriptionRelease();
  *(DerivedStorage + 16) = 0;
  v1 = *(DerivedStorage + 160);
  if (v1)
  {
    JPEGDeviceInterface_closeDriverConnection(v1);
    *(DerivedStorage + 160) = 0;
  }

  v2 = *(DerivedStorage + 64);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 64) = 0;
  }

  v3 = *(DerivedStorage + 232);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 232) = 0;
  }
}

__CFString *H1JPEGVideoDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<H1JPEGVideoDecoder %p>", a1);
  return Mutable;
}

uint64_t H1JPEGVideoDecoder_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, *MEMORY[0x277CE26C0]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE26E0]))
    {
      pthread_once(&sCreateSuggestedQualityOfServiceTiersOnce, jpeg_createSuggestedQualityOfServiceTiers);
      v13 = sH1JPEGVideoDecoderSuggestedQualityOfServiceTiers;
      if (!sH1JPEGVideoDecoderSuggestedQualityOfServiceTiers)
      {
        emitter = fig_log_get_emitter();
        v10 = v4;
        v11 = 4294954392;
        v12 = 702;
        goto LABEL_12;
      }
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CE2648]))
      {
        emitter = fig_log_get_emitter();
        v10 = v4;
        v11 = 4294954396;
        v12 = 711;
        goto LABEL_12;
      }

      v13 = *MEMORY[0x277CBED10];
    }

    *a4 = CFRetain(v13);
    return 0;
  }

  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, (DerivedStorage + 48));
  *a4 = v8;
  if (v8)
  {
    return 0;
  }

  emitter = fig_log_get_emitter();
  v10 = v4;
  v11 = 4294954392;
  v12 = 693;
LABEL_12:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v11, "<-<<< JPEGVTDecoder >>>->", v12, v10);
}

uint64_t H1JPEGVideoDecoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 232);
  if (v7)
  {
    VTSessionSetProperty(v7, a2, a3);
  }

  if (CFEqual(a2, *MEMORY[0x277CE26C0]))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        valuePtr = 1.0;
        CFNumberGetValue(a3, kCFNumberDoubleType, &valuePtr);
        if (valuePtr < 0.0 || valuePtr > 1.0)
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, LODWORD(valuePtr), v17);
        }

        else
        {
          result = 0;
          if (*(DerivedStorage + 24) != 1936355431)
          {
            *(DerivedStorage + 48) = valuePtr;
          }
        }

        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 4294954394;
    v13 = 606;
  }

  else
  {
    v14 = CFEqual(a2, *MEMORY[0x277CE26E0]);
    emitter = fig_log_get_emitter();
    v11 = v3;
    if (v14)
    {
      v12 = 4294954395;
      v13 = 610;
    }

    else
    {
      v12 = 4294954396;
      v13 = 613;
    }
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "<-<<< JPEGVTDecoder >>>->", v13, v11);
}

void jpeg_createSuggestedQualityOfServiceTiers()
{
  v9 = *MEMORY[0x277D85DE8];
  values = jpeg_createQualityOfServiceTier(1.0);
  QualityOfServiceTier = jpeg_createQualityOfServiceTier(0.75);
  v5 = jpeg_createQualityOfServiceTier(0.5);
  v6 = jpeg_createQualityOfServiceTier(0.333333333);
  v7 = jpeg_createQualityOfServiceTier(0.2);
  v8 = jpeg_createQualityOfServiceTier(0.1);
  sH1JPEGVideoDecoderSuggestedQualityOfServiceTiers = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 6, MEMORY[0x277CBF128]);
  if (!sH1JPEGVideoDecoderSuggestedQualityOfServiceTiers)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, values, QualityOfServiceTier);
  }

  for (i = 0; i != 48; i += 8)
  {
    v1 = *(&values + i);
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

CFDictionaryRef jpeg_createQualityOfServiceTier(double a1)
{
  valuePtr = a1;
  keys = *MEMORY[0x277CE26C0];
  v1 = *MEMORY[0x277CBECE8];
  values = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  if (!values || (v2 = CFDictionaryCreate(v1, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, values, keys);
    v2 = 0;
  }

  if (values)
  {
    CFRelease(values);
  }

  return v2;
}

uint64_t H1JPEGVideoDecoder_StartSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 875704422;
  *(DerivedStorage + 8) = a2;
  FigFormatDescriptionRelease();
  v6 = FigFormatDescriptionRetain();
  *(DerivedStorage + 16) = v6;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v6);
  v8 = Dimensions;
  if (Dimensions <= 32)
  {
    H1JPEGVideoDecoder_StartSession_cold_6(&theDict);
    return theDict;
  }

  v9 = HIDWORD(Dimensions);
  if (SHIDWORD(Dimensions) <= 16)
  {
    H1JPEGVideoDecoder_StartSession_cold_5(&theDict);
    return theDict;
  }

  v10 = *(DerivedStorage + 72) == 0;
  if (*(DerivedStorage + 24) == 1936355431)
  {
    if (!*(DerivedStorage + 72))
    {
      valuePtr = 875836518;
      v10 = 1;
      goto LABEL_6;
    }

    H1JPEGVideoDecoder_StartSession_cold_1(&theDict);
    return theDict;
  }

LABEL_6:
  v53 = DerivedStorage;
  theDict = 0;
  v58 = 0;
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    MutableCopy = 0;
    v13 = 0;
    v19 = 4294954392;
    goto LABEL_24;
  }

  v12 = Mutable;
  v13 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  CFArrayAppendValue(v13, v14);
  CFRelease(v15);
  CFDictionaryAddValue(v12, *MEMORY[0x277CC4E30], v13);
  CFRelease(v13);
  setNumberInDictionary(v12, *MEMORY[0x277CC4EC8], v8.width);
  setNumberInDictionary(v12, *MEMORY[0x277CC4DD8], v8.height);
  if (v10)
  {
    v16 = 16;
    setNumberInDictionary(v12, *MEMORY[0x277CC4E38], 16);
    v17 = MEMORY[0x277CC4D60];
    goto LABEL_19;
  }

  v20 = -v9 & 0xF;
  v21 = -v8.width & 0xF;
  if (v21)
  {
    setNumberInDictionary(v12, *MEMORY[0x277CC4DB8], v21);
  }

  if (v20)
  {
    setNumberInDictionary(v12, *MEMORY[0x277CC4DA0], v20);
  }

  v13 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v13 || (v58 = v21 + v8.width, (v22 = CFNumberCreate(0, kCFNumberSInt32Type, &v58)) == 0))
  {
LABEL_22:
    v19 = 4294954392;
LABEL_23:
    CFRelease(v12);
    MutableCopy = 0;
    goto LABEL_24;
  }

  v23 = v22;
  CFArrayAppendValue(v13, v22);
  CFArrayAppendValue(v13, v23);
  CFRelease(v23);
  CFDictionaryAddValue(v12, *MEMORY[0x277CC4D98], v13);
  CFRelease(v13);
  setNumberInDictionary(v12, @"ExactHeight", v20 + v9);
  v16 = 32;
  v17 = MEMORY[0x277CC4E38];
LABEL_19:
  setNumberInDictionary(v12, *v17, v16);
  PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
  if (PixelBufferAttributesWithIOSurfaceSupport)
  {
    v19 = PixelBufferAttributesWithIOSurfaceSupport;
    v13 = 0;
    goto LABEL_23;
  }

  CFRelease(v12);
  MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, theDict);
  if (MutableCopy)
  {
    v13 = 0;
    v19 = 0;
  }

  else
  {
    H1JPEGVideoDecoder_StartSession_cold_2(&v60);
    v13 = 0;
    v19 = v60;
  }

LABEL_24:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v19)
  {
    goto LABEL_64;
  }

  VTDecoderSessionSetPixelBufferAttributes();
  if (*(v53 + 72) && ((v8.width & 0xFu) - 1 < 8 || (v9 & 0xF) - 1 <= 7))
  {
    *(v53 + 64) = MutableCopy;
    CFRetain(MutableCopy);
  }

  v52 = MutableCopy;
  Extension = CMFormatDescriptionGetExtension(a3, *MEMORY[0x277CC03B0]);
  if (Extension)
  {
    v26 = Extension;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v26))
    {
      Value = CFDictionaryGetValue(v26, @"mjqt");
      if (Value)
      {
        v29 = Value;
        v30 = a3;
        v31 = CFDataGetTypeID();
        v32 = v31 == CFGetTypeID(v29);
        a3 = v30;
        if (v32)
        {
          if (CFDataGetLength(v29))
          {
            *(v53 + 32) = v29;
          }
        }
      }

      v33 = CFDictionaryGetValue(v26, *MEMORY[0x277CC1A78]);
      if (v33)
      {
        v34 = v33;
        v35 = CFDataGetTypeID();
        if (v35 == CFGetTypeID(v34))
        {
          if (CFDataGetLength(v34))
          {
            *(v53 + 40) = v34;
          }
        }
      }
    }
  }

  v36 = JPEGDeviceInterface_openDriverConnection();
  *(v53 + 160) = v36;
  if (v36)
  {
    *(v53 + 152) = FigSimpleMutexCreate();
    v37 = allocator;
    if (*(v53 + 24) != 1936355431)
    {
      goto LABEL_53;
    }

    VTVideoDecoderGetCMBaseObject();
    v38 = CMBaseObjectGetDerivedStorage();
    *(v38 + 176) = FigDispatchQueueCreateWithPriority();
    v39 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(v38 + 168) = v39;
    IONotificationPortSetDispatchQueue(v39, *(v38 + 176));
    v40 = *(v38 + 160);
    MachPort = IONotificationPortGetMachPort(*(v38 + 168));
    MEMORY[0x277CB06D0](v40, 0, MachPort, 0);
    CMVideoFormatDescriptionGetDimensions(*(v38 + 16));
    v42 = CMSimpleQueueCreate(allocator, 3, (v38 + 216));
    if (v42)
    {
      v19 = v42;
      goto LABEL_63;
    }

    v43 = 0;
    *(v38 + 224) = FigSemaphoreCreate();
    v55 = *MEMORY[0x277CD2A40];
    v54 = *MEMORY[0x277CBED28];
    v44 = v38 + 192;
    while (1)
    {
      v45 = CFDictionaryCreateMutable(v37, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v45)
      {
        break;
      }

      v46 = v45;
      CFDictionarySetValue(v45, v55, v54);
      if ((runningOnCortexA9_checked & 1) == 0)
      {
        runningOnCortexA9_checked = 1;
      }

      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      v47 = IOSurfaceCreate(v46);
      CFRelease(v46);
      *(v44 + v43) = v47;
      if (!v47)
      {
        goto LABEL_68;
      }

      CMSimpleQueueEnqueue(*(v38 + 216), v47);
      v43 += 8;
      v37 = allocator;
      if (v43 == 24)
      {
        goto LABEL_53;
      }
    }

    *(v44 + v43) = 0;
LABEL_68:
    v37 = allocator;
    if (H1JPEGVideoDecoder_StartSession_cold_3(&theDict))
    {
LABEL_53:
      v48 = CFDictionaryCreateMutable(v37, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v48, *MEMORY[0x277CE2B60], *MEMORY[0x277CBED10]);
      DestinationPixelBufferAttributes = VTDecoderSessionGetDestinationPixelBufferAttributes();
      if (DestinationPixelBufferAttributes)
      {
        v50 = CFDictionaryCreateMutableCopy(v37, 0, DestinationPixelBufferAttributes);
      }

      else
      {
        v50 = 0;
      }

      if (VTDecompressionSessionCreate(v37, a3, v48, v50, 0, (v53 + 232)))
      {
        *(v53 + 232) = 0;
      }

      if (v50)
      {
        CFRelease(v50);
      }

      if (v48)
      {
        CFRelease(v48);
      }

      v19 = 0;
      goto LABEL_63;
    }
  }

  else
  {
    H1JPEGVideoDecoder_StartSession_cold_4(&theDict);
  }

  v19 = theDict;
LABEL_63:
  MutableCopy = v52;
LABEL_64:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v19;
}

uint64_t H1JPEGVideoDecoder_CopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  pthread_once(&sCreateSupportedPropertyDictionaryOnce, jpeg_createSupportedPropertyDictionary);
  if (a2 && sH1JPEGVideoDecoderSupportedPropertyDictionary)
  {
    *a2 = CFRetain(sH1JPEGVideoDecoderSupportedPropertyDictionary);
    return 0;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954392, "<-<<< JPEGVTDecoder >>>->", 572, v2);
  }
}

void setNumberInDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t jpeg_ShouldDeliverThisFrame(uint64_t a1, CMSampleBufferRef sbuf)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC0650]);
      if (Value)
      {
        v6 = Value;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v6))
        {
          if (CFBooleanGetValue(v6))
          {
            return 0;
          }
        }
      }
    }
  }

  v8 = *(a1 + 48) + *(a1 + 56);
  *(a1 + 56) = v8;
  if (v8 < 1.0)
  {
    return 0;
  }

  v10 = v8 + -1.0;
  if (v10 >= 1.0)
  {
    v10 = 1.0;
  }

  *(a1 + 56) = v10;
  return 1;
}

uint64_t jpeg_checkAndMaybeUpdateOutputPixelBufferAttributes(uint64_t a1, CMBlockBufferRef theBuffer, unint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((!*(a1 + 64) || !*(a1 + 72)) && *(a1 + 76) != -1)
  {
    return 0;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!DataLength)
  {
    return 4294954386;
  }

  v8 = DataLength;
  v9 = 0;
  v10 = 0;
  v34 = HIDWORD(a3);
  v35 = a3;
LABEL_7:
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, v10, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (!result)
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 - 1;
    v14 = lengthAtOffsetOut;
    v15 = lengthAtOffsetOut;
    v16 = lengthAtOffsetOut;
    while (1)
    {
      while (1)
      {
        if (v12 >= v16)
        {
          v10 += v16;
          if (v10 < v8)
          {
            goto LABEL_7;
          }

          return 4294954386;
        }

        v17 = dataPointerOut;
        if (!v9)
        {
          v18 = dataPointerOut[v11];
          v15 = v14;
          goto LABEL_20;
        }

        v18 = dataPointerOut[v12];
        if ((v18 & 0xF0) == 0xE0)
        {
          break;
        }

LABEL_17:
        if (v18 == 192)
        {
          if (v12 + 12 > v16)
          {
            v17 = valuePtr;
            CMBlockBufferCopyDataBytes(theBuffer, v12 + v13, 0xCuLL, valuePtr);
            dataPointerOut = valuePtr;
          }

          if (v17[v12 + 8] == 1)
          {
            v20 = 1;
            v21 = 4;
            goto LABEL_28;
          }

          v25 = v17[v12 + 10];
          result = 4294954386;
          if (v25 > 0x21)
          {
            if (v25 == 34)
            {
              v21 = 0;
              v20 = 0;
              v23 = 0;
              v22 = 16;
              v24 = 16;
            }

            else
            {
              if (v25 != 65)
              {
                return result;
              }

              v20 = 1;
              v21 = 3;
              v24 = 8;
              v22 = 32;
LABEL_36:
              v23 = 1;
            }
          }

          else
          {
            if (v25 != 17)
            {
              if (v25 != 33)
              {
                return result;
              }

              v20 = 0;
              v21 = 1;
              v24 = 8;
              v22 = 16;
              goto LABEL_36;
            }

            v20 = 1;
            v21 = 2;
LABEL_28:
            v22 = 8;
            v23 = 1;
            v24 = 8;
          }

          *(a1 + 76) = v21;
          result = *(a1 + 64);
          if (!result)
          {
            return result;
          }

          if (*(a1 + 72))
          {
            if ((v20 | v23) != 1)
            {
              goto LABEL_49;
            }

            v26 = v22 - ((v22 - 1) & v35);
            v27 = (v24 - ((v24 - 1) & v34)) & (v24 - 1);
            v28 = *MEMORY[0x277CC4DB8];
            v29 = v26 & (v22 - 1);
            if ((v26 & (v22 - 1)) != 0)
            {
              setNumberInDictionary(result, v28, v26 & (v22 - 1));
            }

            else
            {
              CFDictionaryRemoveValue(result, v28);
            }

            v30 = *(a1 + 64);
            v31 = *MEMORY[0x277CC4DA0];
            if (v27)
            {
              setNumberInDictionary(v30, v31, v27);
            }

            else
            {
              CFDictionaryRemoveValue(v30, v31);
            }

            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            valuePtr[0] = v29 + v35;
            v33 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
            CFArrayAppendValue(Mutable, v33);
            CFArrayAppendValue(Mutable, v33);
            CFRelease(v33);
            CFDictionarySetValue(*(a1 + 64), *MEMORY[0x277CC4D98], Mutable);
            CFRelease(Mutable);
            setNumberInDictionary(*(a1 + 64), @"ExactHeight", v27 + v34);
            VTDecoderSessionSetPixelBufferAttributes();
            result = *(a1 + 64);
            if (result)
            {
LABEL_49:
              CFRelease(result);
              result = 0;
              *(a1 + 64) = 0;
            }

            return result;
          }

          return 0;
        }

        v14 = v15;
        v11 = v12;
LABEL_20:
        v9 = v18 == 255;
        ++v11;
        v16 = v14;
        v12 = v11;
      }

      if (v12 + 4 <= v16)
      {
        v19 = v12 - 1;
      }

      else
      {
        v17 = destination;
        CMBlockBufferCopyDataBytes(theBuffer, v12 + v13, 4uLL, destination);
        v19 = 0;
        v15 = lengthAtOffsetOut;
        v16 = lengthAtOffsetOut;
      }

      v12 += __rev16(*&v17[v19 + 2]) + 1;
      if (v12 < v16)
      {
        v17 = dataPointerOut;
        v18 = dataPointerOut[v12];
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t jpeg_createSurfaceFromBBuf(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3, __IOSurface **a4)
{
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v9 = *(a1 + 24);
  v10 = DataLength;
  if (v9 == 1684890161)
  {
    v11 = *(a1 + 32);
    v10 = DataLength;
    if (v11)
    {
      v10 = DataLength + CFDataGetLength(v11) + 2;
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v10 += CFDataGetLength(v12) + 2;
    }

    v9 = *(a1 + 24);
  }

  if (v9 == 1936355431)
  {
    v13 = 2 * a3 * HIDWORD(a3) / 3;
    if (v10 <= v13)
    {
      v10 = v13;
    }
  }

  FigSimpleMutexLock();
  v14 = 3;
  v15 = a1 + 80;
  while (*(v15 + 16))
  {
    v15 += 24;
    if (!--v14)
    {
      FigSimpleMutexUnlock();
      goto LABEL_14;
    }
  }

  if (*v15 && *(v15 + 8) < v10)
  {
    CFRelease(*v15);
    *v15 = 0;
    *(v15 + 8) = 0;
  }

  *(v15 + 16) = 1;
  FigSimpleMutexUnlock();
  v18 = *v15;
  if (!*v15)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
LABEL_14:
      v16 = 0;
LABEL_15:
      v17 = 4294954392;
      goto LABEL_47;
    }

    v20 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A40], *MEMORY[0x277CBED28]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    *v15 = IOSurfaceCreate(v20);
    *(v15 + 8) = (v10 * 1.1);
    CFRelease(v20);
    v18 = *v15;
  }

  v21 = CFRetain(v18);
  v16 = v21;
  if (!v21)
  {
    goto LABEL_15;
  }

  IOSurfaceLock(v21, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v16);
  if (*(a1 + 24) != 1684890161)
  {
    v42 = theBuffer;
    v43 = 0;
    v41 = DataLength;
    goto LABEL_42;
  }

  v45 = a4;
  v23 = CMBlockBufferGetDataLength(theBuffer);
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = 0;
    while (1)
    {
      dataPointerOut = 0;
      lengthAtOffsetOut = 0;
      DataPointer = CMBlockBufferGetDataPointer(theBuffer, v26, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (DataPointer)
      {
        v17 = DataPointer;
        goto LABEL_45;
      }

      if (lengthAtOffsetOut)
      {
        break;
      }

LABEL_33:
      v26 += lengthAtOffsetOut;
      if (v26 >= v24)
      {
        v30 = 0;
        goto LABEL_35;
      }
    }

    v28 = dataPointerOut;
    v29 = v25;
    v30 = v26 - 1;
    v31 = lengthAtOffsetOut;
    while (1)
    {
      v33 = *v28++;
      v32 = v33;
      if (v29 && v32 == 218)
      {
        break;
      }

      v29 = v32 == 255;
      ++v30;
      if (!--v31)
      {
        v25 = v32 == 255;
        goto LABEL_33;
      }
    }

LABEL_35:
    v34 = CMBlockBufferCopyDataBytes(theBuffer, 0, v30, BaseAddress);
    a4 = v45;
    if (!v34)
    {
      BaseAddress += v30;
      if (*(a1 + 32))
      {
        *BaseAddress = -9217;
        v35 = BaseAddress + 2;
        BytePtr = CFDataGetBytePtr(*(a1 + 32));
        Length = CFDataGetLength(*(a1 + 32));
        memcpy(v35, BytePtr, Length);
        BaseAddress = &v35[CFDataGetLength(*(a1 + 32))];
      }

      if (*(a1 + 40))
      {
        *BaseAddress = -15105;
        v38 = BaseAddress + 2;
        v39 = CFDataGetBytePtr(*(a1 + 40));
        v40 = CFDataGetLength(*(a1 + 40));
        memcpy(v38, v39, v40);
        BaseAddress = &v38[CFDataGetLength(*(a1 + 40))];
      }

      v41 = DataLength - v30;
      v42 = theBuffer;
      v43 = v30;
LABEL_42:
      v17 = CMBlockBufferCopyDataBytes(v42, v43, v41, BaseAddress);
      IOSurfaceUnlock(v16, 0, 0);
      if (!v17)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v17 = v34;
  }

  else
  {
    v17 = 4294954394;
LABEL_45:
    a4 = v45;
  }

  IOSurfaceUnlock(v16, 0, 0);
LABEL_47:
  releaseJPEGInputSurface(a1 + 80, v16);
LABEL_48:
  *a4 = v16;
  return v17;
}

uint64_t releaseJPEGInputSurface(uint64_t result, const void *a2)
{
  if (a2)
  {
    v3 = result;
    FigSimpleMutexLock();
    v4 = (v3 + 16);
    v5 = 3;
    while (!*v4 || *(v4 - 2) != a2)
    {
      v4 += 3;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    CFRelease(a2);
    *v4 = 0;
LABEL_9:

    return FigSimpleMutexUnlock();
  }

  return result;
}

void jpeg_createSupportedPropertyDictionary()
{
  v28 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v22 = 0;
  v17 = 1;
  v0 = *MEMORY[0x277CE2A00];
  v1 = *MEMORY[0x277CE2A18];
  v2 = *MEMORY[0x277CE29C8];
  keys = *MEMORY[0x277CE2A00];
  v24 = v2;
  v3 = *MEMORY[0x277CE29D8];
  values = v1;
  v19 = v3;
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &v17 + 4);
  if (!v5)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, values, v19);
    return;
  }

  v6 = v5;
  v25 = *MEMORY[0x277CE29F8];
  v20 = v5;
  v7 = CFNumberCreate(v4, kCFNumberIntType, &v17);
  if (!v7)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, values, v19);
    v16 = v6;
LABEL_19:
    CFRelease(v16);
    return;
  }

  v8 = v7;
  v26 = *MEMORY[0x277CE29F0];
  v21 = v7;
  v9 = CFDictionaryCreate(v4, &keys, &values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v9)
  {
    v14 = 0;
    v10 = 0;
LABEL_12:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, values, v19);
    goto LABEL_13;
  }

  v10 = CFDictionaryCreate(v4, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v10)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v11 = *MEMORY[0x277CE2A08];
  keys = v0;
  v24 = v2;
  v12 = *MEMORY[0x277CE29D0];
  values = v11;
  v19 = v12;
  v13 = CFDictionaryCreate(v4, &keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = v13;
  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = *MEMORY[0x277CE26E0];
  keys = *MEMORY[0x277CE26C0];
  v24 = v15;
  values = v9;
  v19 = v10;
  v25 = *MEMORY[0x277CE2648];
  v20 = v13;
  sH1JPEGVideoDecoderSupportedPropertyDictionary = CFDictionaryCreate(v4, &keys, &values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!sH1JPEGVideoDecoderSupportedPropertyDictionary)
  {
    goto LABEL_12;
  }

LABEL_13:
  CFRelease(v6);
  CFRelease(v8);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v14)
  {
    v16 = v14;
    goto LABEL_19;
  }
}

uint64_t _initalizeService()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD2898];
  v1 = IOServiceMatching("AppleJPEGDriver");
  result = IOServiceGetMatchingService(v0, v1);
  _jpegService = result;
  if (result)
  {
    v5 = 4;
    LODWORD(v6.__sig) = 0;
    if (MEMORY[0x277CB0720](result, "AppleJPEGNumCores", &v6, &v5))
    {
      v3 = 0;
    }

    else
    {
      v3 = v5 == 4;
    }

    if (v3)
    {
      sig = v6.__sig;
      _numberOfJPEGCores = v6.__sig;
    }

    else
    {
      sig = _numberOfJPEGCores;
    }

    if (sig < 2)
    {
      v6.__sig = 0;
      *v6.__opaque = 0;
      pthread_mutexattr_init(&v6);
      pthread_mutexattr_settype(&v6, 2);
      pthread_mutex_init(&_jpegLock, &v6);
      return pthread_mutexattr_destroy(&v6);
    }

    else
    {
      result = FigSemaphoreCreate();
      _jpegSema = result;
    }
  }

  return result;
}

uint64_t _openDriverConnection()
{
  connect = 0;
  LODWORD(result) = _jpegService;
  if (_jpegService || (pthread_once(&jpegService_once, _initalizeService), result = _jpegService, _jpegService))
  {
    if (IOServiceOpen(result, *MEMORY[0x277D85F48], 0, &connect))
    {
      return 0;
    }

    else
    {
      return connect;
    }
  }

  return result;
}

uint64_t JPEGDeviceInterface_closeDriverConnection(uint64_t connect)
{
  if (connect)
  {
    return IOServiceClose(connect);
  }

  return connect;
}

uint64_t JPEGDeviceInterface_decodeJPEG(mach_port_t a1, void *inputStruct, void *outputStruct)
{
  outputStructCnt = 3488;
  if (a1)
  {
    return IOConnectCallStructMethod(a1, 7u, inputStruct, 0xDA0uLL, outputStruct, &outputStructCnt);
  }

  v6 = _openService();
  if (!v6)
  {
    return 3758097101;
  }

  v7 = v6;
  v5 = IOConnectCallStructMethod(v6, 7u, inputStruct, 0xDA0uLL, outputStruct, &outputStructCnt);
  _closeService(v7);
  return v5;
}

uint64_t _openService()
{
  if (_jpegSema)
  {
    FigSemaphoreWaitRelative();
  }

  else
  {
    pthread_mutex_lock(&_jpegLock);
  }

  v0 = _openDriverConnection();
  if (!v0)
  {
    if (_jpegSema)
    {
      FigSemaphoreSignal();
    }

    else
    {
      pthread_mutex_unlock(&_jpegLock);
    }
  }

  return v0;
}

uint64_t _closeService(io_connect_t a1)
{
  if (a1)
  {
    IOServiceClose(a1);
    v1 = vars8;
  }

  if (_jpegSema)
  {

    return FigSemaphoreSignal();
  }

  else
  {

    return pthread_mutex_unlock(&_jpegLock);
  }
}

uint64_t H1JPEGVideoDecoder_DecodeFrame()
{
  MEMORY[0x28223BE20]();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v9 = DerivedStorage;
  v10 = *(DerivedStorage + 24);
  if ((v3 & 1) != 0 || v10 != 1936355431)
  {
    if ((v3 & 1) != 0 && v10 == 1936355431)
    {
      CMSampleBufferGetDataBuffer(v5);
      v48 = 0;
      pixelBufferOut = 0;
      bzero(&inputStruct, 0xDA0uLL);
      bzero(outputStruct, 0xDA0uLL);
      if (!jpeg_ShouldDeliverThisFrame(v9, v5))
      {
        v25 = 0;
        v31 = 0;
        v19 = 0;
        *v1 |= 2u;
        goto LABEL_37;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(*(v9 + 16));
      v13 = OUTLINED_FUNCTION_3();
      v15 = jpeg_checkAndMaybeUpdateOutputPixelBufferAttributes(v13, v14, *&Dimensions);
      if (!v15)
      {
        if (*(v9 + 24) == 1936355431)
        {
          while (1)
          {
            IOSurface = CMSimpleQueueDequeue(*(v9 + 216));
            if (IOSurface)
            {
              break;
            }

            FigSemaphoreWaitRelative();
          }

LABEL_16:
          v19 = IOSurface;
          OUTLINED_FUNCTION_1();
          VTDecoderSessionTrace();
          v20 = OUTLINED_FUNCTION_3();
          SurfaceFromBBuf = jpeg_createSurfaceFromBBuf(v20, v21, *&Dimensions, v22);
          if (SurfaceFromBBuf)
          {
            v31 = SurfaceFromBBuf;
            v25 = v48;
          }

          else
          {
            v24 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200402DB58FAAuLL);
            *v24 = v7;
            v25 = v48;
            v26 = pixelBufferOut;
            v24[1] = v48;
            v24[2] = v26;
            v24[3] = v19;
            *(v24 + 8) = *v1 | 1;
            v24[5] = MEMORY[0x277CB0600]();
            inputStruct = IOSurfaceGetID(v25);
            ID = IOSurfaceGetID(v19);
            Width = IOSurfaceGetWidth(v19);
            Height = IOSurfaceGetHeight(v19);
            AllocSize = IOSurfaceGetAllocSize(v25);
            v59 = IOSurfaceGetAllocSize(v19);
            v62 = 0;
            v29 = (v3 & 4) == 0 || *(v9 + 24) == 1936355431 || Dimensions.height * Dimensions.width > 345600;
            v30 = *(v9 + 76);
            v63 = v29;
            v64 = v30;
            v68 = IOSurfaceGetWidth(v19);
            v69 = IOSurfaceGetHeight(v19);
            v65 = jpeg_asyncDecodeComplete;
            v66 = v9;
            v67 = v24;
            v31 = JPEGDeviceInterface_decodeJPEG(*(v9 + 160), &inputStruct, outputStruct);
            if (!v31)
            {
              OUTLINED_FUNCTION_1();
              VTDecoderSessionTrace();
              *v1 |= 1u;
              FigAtomicAdd32();
              v25 = 0;
              v19 = 0;
              v48 = 0;
              pixelBufferOut = 0;
              if ((*v1 & 2) == 0)
              {
                goto LABEL_38;
              }
            }
          }

LABEL_37:
          VTDecoderSessionEmitDecodedFrame();
LABEL_38:
          releaseJPEGInputSurface(v9 + 80, v25);
          if (pixelBufferOut)
          {
            CFRelease(pixelBufferOut);
          }

          if (v19 && *(v9 + 24) == 1936355431)
          {
            CMSimpleQueueEnqueue(*(v9 + 216), v19);
            FigSemaphoreSignal();
          }

          return v31;
        }

        v16 = *MEMORY[0x277CBECE8];
        PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
        v15 = CVPixelBufferPoolCreatePixelBuffer(v16, PixelBufferPool, &pixelBufferOut);
        if (!v15)
        {
          IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
          goto LABEL_16;
        }
      }

      v31 = v15;
      v25 = 0;
      v19 = 0;
      goto LABEL_37;
    }

    CMSampleBufferGetDataBuffer(v5);
    v70 = 0;
    pixelBufferOut = 0;
    bzero(&inputStruct, 0xDA0uLL);
    bzero(outputStruct, 0xDA0uLL);
    if (!jpeg_ShouldDeliverThisFrame(v9, v5))
    {
      v32 = 0;
      v31 = 0;
      *v1 |= 2u;
LABEL_48:
      VTDecoderSessionEmitDecodedFrame();
      goto LABEL_49;
    }

    if (*(v9 + 240))
    {
      v32 = 0;
      goto LABEL_32;
    }

    v34 = CMVideoFormatDescriptionGetDimensions(*(v9 + 16));
    v35 = OUTLINED_FUNCTION_3();
    v37 = jpeg_checkAndMaybeUpdateOutputPixelBufferAttributes(v35, v36, *&v34);
    if (v37)
    {
      v31 = v37;
    }

    else
    {
      PixelBuffer = VTDecoderSessionCreatePixelBuffer();
      if (!PixelBuffer)
      {
        OUTLINED_FUNCTION_1();
        VTDecoderSessionTrace();
        v39 = OUTLINED_FUNCTION_3();
        v42 = jpeg_createSurfaceFromBBuf(v39, v40, *&v34, v41);
        if (v42)
        {
          v31 = v42;
          v32 = pixelBufferOut;
          goto LABEL_47;
        }

        v43 = CVPixelBufferGetIOSurface(v70);
        v32 = pixelBufferOut;
        inputStruct = IOSurfaceGetID(pixelBufferOut);
        ID = IOSurfaceGetID(v43);
        Width = IOSurfaceGetWidth(v43);
        Height = IOSurfaceGetHeight(v43);
        AllocSize = IOSurfaceGetAllocSize(v32);
        v59 = IOSurfaceGetAllocSize(v43);
        v62 = 0;
        v44 = (v3 & 4) != 0 && v34.height * v34.width <= 345600;
        v45 = *(v9 + 76);
        v46 = !v44;
        v63 = v46;
        v64 = v45;
        v68 = IOSurfaceGetWidth(v43);
        v69 = IOSurfaceGetHeight(v43);
        v47 = JPEGDeviceInterface_decodeJPEG(*(v9 + 160), &inputStruct, outputStruct);
        if (v47)
        {
          v31 = v47;
          infoFlagsOut = 0;
          v33 = *(v9 + 232);
          if (v33)
          {
LABEL_33:
            v48 = MEMORY[0x277D85DD0];
            v49 = 0x40000000;
            v50 = __jpeg_DecodeFrameSynchronously_block_invoke;
            v51 = &__block_descriptor_tmp_14;
            v52 = v9;
            v53 = v7;
            v31 = VTDecompressionSessionDecodeFrameWithOutputHandler(v33, v5, 0, &infoFlagsOut, &v48);
            if (!v31)
            {
              OUTLINED_FUNCTION_1();
              VTDecoderSessionTrace();
LABEL_49:
              releaseJPEGInputSurface(v9 + 80, v32);
              if (v70)
              {
                CFRelease(v70);
              }

              VTDecoderSessionCleanUpAfterDecode();
              return v31;
            }
          }

LABEL_47:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v49, v50);
          goto LABEL_48;
        }

        if (!*(v9 + 240))
        {
          OUTLINED_FUNCTION_1();
          VTDecoderSessionTrace();
          v31 = 0;
          goto LABEL_48;
        }

LABEL_32:
        infoFlagsOut = 0;
        v33 = *(v9 + 232);
        if (v33)
        {
          goto LABEL_33;
        }

        v31 = 3758097084;
        goto LABEL_47;
      }

      v31 = PixelBuffer;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v49, v50);
    }

    v32 = 0;
    goto LABEL_47;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void jpeg_asyncDecodeComplete(uint64_t a1, int a2, unsigned int *a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  MEMORY[0x277CB0600]();
  v6 = *(a3 + 2);
  pixelBuffer = v6;
  if (a2)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixelBuffer, BaseAddressOfPlane, v15);
  }

  else if ((a3[8] & 2) == 0 && *(a1 + 24) == 1936355431 && !v6)
  {
    v7 = *MEMORY[0x277CBECE8];
    PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
    if (!CVPixelBufferPoolCreatePixelBuffer(v7, PixelBufferPool, &pixelBuffer))
    {
      v18[1] = 0;
      v17[1] = 0;
      IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
      Width = IOSurfaceGetWidth(IOSurface);
      Height = IOSurfaceGetHeight(IOSurface);
      v18[0] = IOSurfaceGetBytesPerRow(*(a3 + 3));
      v17[0] = IOSurfaceGetBaseAddress(*(a3 + 3));
      v16[0] = IOSurfaceGetBytesPerRowOfPlane(IOSurface, 0);
      v16[1] = IOSurfaceGetBytesPerRowOfPlane(IOSurface, 1uLL);
      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(IOSurface, 0);
      v15 = IOSurfaceGetBaseAddressOfPlane(IOSurface, 1uLL);
      IOSurfaceLock(*(a3 + 3), 1u, 0);
      IOSurfaceLock(IOSurface, 0, 0);
      Copy_yuvz_444_arm(Width, Height, v18, v17, v16, &BaseAddressOfPlane);
      IOSurfaceUnlock(*(a3 + 3), 1u, 0);
      IOSurfaceUnlock(IOSurface, 0, 0);
    }
  }

  FigAtomicAdd32();
  VTDecoderSessionEmitDecodedFrame();
  releaseJPEGInputSurface(a1 + 80, *(a3 + 1));
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  VTDecoderSessionCleanUpAfterDecode();
  v12 = *(a3 + 3);
  if (v12 && *(a1 + 24) == 1936355431)
  {
    CMSimpleQueueEnqueue(*(a1 + 216), v12);
    FigSemaphoreSignal();
  }

  free(a3);
}

uint64_t H1JPEGVideoDecoder_StartSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t H1JPEGVideoDecoder_StartSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL H1JPEGVideoDecoder_StartSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t H1JPEGVideoDecoder_StartSession_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t H1JPEGVideoDecoder_StartSession_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t H1JPEGVideoDecoder_StartSession_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}