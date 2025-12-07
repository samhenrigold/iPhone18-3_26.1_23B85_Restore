BOOL H1JPEGEncoder_CheckExistence()
{
  *existing = 0;
  if (MEMORY[0x29C24F160](0, &existing[1]) || (v2 = IOServiceNameMatching("AppleJPEGDriver")) == 0)
  {
    v0 = 0;
  }

  else
  {
    v0 = IOServiceGetMatchingServices(existing[1], v2, existing) == 0;
    if (existing[0])
    {
      IOObjectRelease(existing[0]);
    }
  }

  if (existing[1])
  {
    FigMachPortReleaseSendRight_();
  }

  return v0;
}

uint64_t H1JPEGEncoder_CreateInstance(int a1, uint64_t a2, void *a3)
{
  VTVideoEncoderGetClassID();
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

void H1JPEGEncoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 24) == 1936355431)
  {
    v2 = *(DerivedStorage + 136);
    if (v2)
    {
      dispatch_barrier_sync(v2, &__block_literal_global);
    }

    FigSimpleMutexDestroy();
    v3 = *(v1 + 144);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 144) = 0;
    }

    FigSemaphoreDestroy();
    v4 = *(v1 + 112);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 112) = 0;
    }

    v5 = *(v1 + 104);
    if (v5)
    {
      CFRelease(v5);
      *(v1 + 104) = 0;
    }

    v6 = *(v1 + 136);
    if (v6)
    {
      dispatch_release(v6);
      *(v1 + 136) = 0;
    }

    v7 = *(v1 + 120);
    if (v7)
    {
      dispatch_release(v7);
      *(v1 + 120) = 0;
    }

    v8 = *(v1 + 128);
    if (v8)
    {
      dispatch_release(v8);
      *(v1 + 128) = 0;
    }
  }

  *v1 = 0;
  if (*(v1 + 8))
  {
    FigFormatDescriptionRelease();
    *(v1 + 8) = 0;
  }

  v9 = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = (v1 + 48 + 16 * v9);
    if (*v12)
    {
      CFRelease(*v12);
      *v12 = 0;
    }

    v10 = 0;
    v9 = 1;
  }

  while ((v11 & 1) != 0);
  v14 = *(v1 + 28);
  v13 = *(v1 + 32);
  if (v13)
  {
    IOServiceClose(v13);
  }

  if (v14)
  {
    IOObjectRelease(v14);
  }

  v15 = *(v1 + 88);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(v1 + 96);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(v1 + 168);

  JPEGRCDestroy(v17);
}

__CFString *H1JPEGEncoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  CFStringAppendFormat(Mutable, 0, @"<H1JPEGEncoder %p>", a1);
  return Mutable;
}

uint64_t H1JPEGEncoder_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x29EDBCDC0]))
  {
    *a4 = CFNumberCreate(0, kCFNumberFloatType, (DerivedStorage + 36));
    return 0;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954396, "<-<<< JPEGVTEncoder >>>->", 501, v4);
  }
}

uint64_t H1JPEGEncoder_SetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x29EDBCDC0]))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        valuePtr[0] = 0.0;
        CFNumberGetValue(a3, kCFNumberFloatType, valuePtr);
        if (valuePtr[0] < 0.0 || valuePtr[0] > 1.0)
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, LODWORD(valuePtr[1]));
        }

        else
        {
          result = 0;
          *(DerivedStorage + 36) = valuePtr[0];
          *(DerivedStorage + 40) = 1;
        }

        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v10 = v3;
    v11 = 4294954394;
    v12 = 478;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v10 = v3;
    v11 = 4294954396;
    v12 = 482;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v11, "<-<<< JPEGVTEncoder >>>->", v12, v10);
}

uint64_t H1JPEGEncoder_StartSession(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v44 = *MEMORY[0x29EDCA608];
  v5 = HIDWORD(a3);
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v43 = 0;
  valuePtr = 0;
  if (*(DerivedStorage + 24) == 1936355431)
  {
    if (!*(DerivedStorage + 80))
    {
      LODWORD(valuePtr) = 875836518;
      v8 = 1;
      v9 = 1;
      goto LABEL_8;
    }
  }

  else if (!*(DerivedStorage + 80))
  {
    LODWORD(valuePtr) = 875704422;
    v8 = 1;
    v10 = 1;
    goto LABEL_7;
  }

  v8 = 0;
  v10 = 0;
LABEL_7:
  *(&valuePtr | (4 * v10)) = 2037741158;
  v9 = v10 + 1;
LABEL_8:
  *DerivedStorage = a2;
  *(DerivedStorage + 16) = a3;
  *(DerivedStorage + 20) = v5;
  cf = 0;
  v11 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    return 4294954392;
  }

  v13 = Mutable;
  v40 = 0;
  v14 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (v14)
  {
    v38 = v5;
    p_valuePtr = &valuePtr;
    do
    {
      v16 = CFNumberCreate(0, kCFNumberSInt32Type, p_valuePtr);
      if (!v16)
      {
        goto LABEL_26;
      }

      v17 = v16;
      CFArrayAppendValue(v14, v16);
      CFRelease(v17);
      p_valuePtr = (p_valuePtr + 4);
      --v9;
    }

    while (v9);
    CFDictionaryAddValue(v13, *MEMORY[0x29EDB96E0], v14);
    CFRelease(v14);
    addNumberToDictionary(v13, *MEMORY[0x29EDB9750], a3);
    addNumberToDictionary(v13, *MEMORY[0x29EDB96C8], v38);
    if (v8)
    {
      addNumberToDictionary(v13, *MEMORY[0x29EDB96E8], 16);
      v18 = MEMORY[0x29EDB9698];
    }

    else
    {
      v21 = -v38 & 7;
      v22 = -a3 & 0xF;
      if (v22)
      {
        addNumberToDictionary(v13, *MEMORY[0x29EDB96C0], v22);
      }

      if (v21)
      {
        addNumberToDictionary(v13, *MEMORY[0x29EDB96B0], v21);
      }

      v14 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      if (!v14 || (v40 = v22 + a3, (v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v40)) == 0))
      {
LABEL_26:
        v20 = 0;
        PixelBufferAttributesWithIOSurfaceSupport = 4294954392;
        goto LABEL_27;
      }

      v24 = v23;
      CFArrayAppendValue(v14, v23);
      CFArrayAppendValue(v14, v24);
      CFRelease(v24);
      CFDictionaryAddValue(v13, *MEMORY[0x29EDB96A8], v14);
      CFRelease(v14);
      v18 = MEMORY[0x29EDB96E8];
    }

    addNumberToDictionary(v13, *v18, 32);
    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    if (PixelBufferAttributesWithIOSurfaceSupport)
    {
      v20 = 0;
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v20 = cf;
      cf = 0;
    }
  }

  else
  {
    v20 = 0;
    PixelBufferAttributesWithIOSurfaceSupport = 4294954392;
  }

LABEL_27:
  CFRelease(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (!PixelBufferAttributesWithIOSurfaceSupport)
  {
    VTEncoderSessionSetPixelBufferAttributes();
    *(v7 + 36) = 1062836634;
    v25 = CMMemoryPoolCreate(0);
    *(v7 + 88) = v25;
    if (!v25)
    {
      goto LABEL_59;
    }

    Allocator = CMMemoryPoolGetAllocator(v25);
    *(v7 + 96) = Allocator;
    if (!Allocator)
    {
      goto LABEL_59;
    }

    CFRetain(Allocator);
    if (*(v7 + 24) != 1936355431)
    {
LABEL_55:
      PixelBufferAttributesWithIOSurfaceSupport = 0;
      goto LABEL_56;
    }

    v27 = FigDispatchQueueCreateWithPriority();
    *(v7 + 136) = v27;
    if (v27)
    {
      v39 = v20;
      *(v7 + 120) = dispatch_semaphore_create(2);
      *(v7 + 128) = dispatch_semaphore_create(1);
      cf = 0;
      v28 = MEMORY[0x29EDB9010];
      v29 = MEMORY[0x29EDB9020];
      v30 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      FigCFDictionarySetInt32();
      v31 = 2 * a3;
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      PixelBufferCacheModeArray = FigCreatePixelBufferCacheModeArray();
      CFDictionaryAddValue(v30, *MEMORY[0x29EDB96A0], PixelBufferCacheModeArray);
      IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
      CFDictionaryAddValue(v30, *MEMORY[0x29EDB96D0], IOSurfacePropertiesDictionary);
      v34 = CFDictionaryCreateMutable(0, 0, v28, v29);
      FigCFDictionarySetInt32();
      PixelBufferAttributesWithIOSurfaceSupport = CVPixelBufferPoolCreate(v11, v34, v30, &cf);
      if (!PixelBufferAttributesWithIOSurfaceSupport)
      {
        *(v7 + 104) = cf;
        cf = 0;
      }

      if (PixelBufferCacheModeArray)
      {
        CFRelease(PixelBufferCacheModeArray);
      }

      if (IOSurfacePropertiesDictionary)
      {
        CFRelease(IOSurfacePropertiesDictionary);
      }

      v20 = v39;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      if (PixelBufferAttributesWithIOSurfaceSupport)
      {
        goto LABEL_56;
      }

      v35 = CMSimpleQueueCreate(v11, 2, (v7 + 112));
      if (!v35)
      {
        v36 = a3 >> 32;
        *(v7 + 48) = createJPEGOutputSurface(v31, v36, *(v7 + 24), 7u);
        *(v7 + 56) = 7;
        CMSimpleQueueEnqueue(*(v7 + 112), (v7 + 48));
        *(v7 + 64) = createJPEGOutputSurface(v31, v36, *(v7 + 24), 7u);
        *(v7 + 72) = 7;
        CMSimpleQueueEnqueue(*(v7 + 112), (v7 + 64));
        v35 = CMSimpleQueueCreate(v11, 10, (v7 + 144));
        if (!v35)
        {
          *(v7 + 152) = FigSimpleMutexCreate();
          *(v7 + 160) = FigSemaphoreCreate();
          if (H1JPEGEncoder_StartSession_sCheckRateControllerOnce != -1)
          {
            H1JPEGEncoder_StartSession_cold_1();
          }

          if (H1JPEGEncoder_StartSession_sRateControllerEnabled)
          {
            PixelBufferAttributesWithIOSurfaceSupport = 0;
            *(v7 + 168) = JPEGRCMake(1000000 * H1JPEGEncoder_StartSession_sRateControllerMBitCap, H1JPEGEncoder_StartSession_sRateControllerWindowSizeFrames);
            goto LABEL_56;
          }

          goto LABEL_55;
        }
      }

      PixelBufferAttributesWithIOSurfaceSupport = v35;
    }

    else
    {
LABEL_59:
      PixelBufferAttributesWithIOSurfaceSupport = 4294954392;
    }
  }

LABEL_56:
  if (v20)
  {
    CFRelease(v20);
  }

  return PixelBufferAttributesWithIOSurfaceSupport;
}

uint64_t H1JPEGEncoder_EncodeFrame(uint64_t a1, uint64_t a2, __CVBuffer *a3, __int128 *a4, __int128 *a5, const void *a6, _DWORD *a7)
{
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (!IOSurface)
  {
    return 4294954394;
  }

  IOSurfaceGetPixelFormat(IOSurface);
  if (*(DerivedStorage + 24) != 1936355431)
  {
    return jpeg_encodeFrameSync();
  }

  v21 = *a4;
  v22 = *(a4 + 2);
  v19 = *a5;
  v20 = *(a5 + 2);
  VTVideoEncoderGetCMBaseObject();
  v16 = CMBaseObjectGetDerivedStorage();
  *a7 |= 1u;
  dispatch_semaphore_wait(*(v16 + 120), 0xFFFFFFFFFFFFFFFFLL);
  CMSimpleQueueEnqueue(*(v16 + 144), a3);
  if (a3)
  {
    CFRetain(a3);
  }

  if (a6)
  {
    CFRetain(a6);
  }

  v17 = *(v16 + 136);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __jpeg_encodeFrameAsync_block_invoke;
  block[3] = &__block_descriptor_tmp_23;
  block[4] = a1;
  block[5] = a2;
  v24 = v21;
  v25 = v22;
  v26 = v19;
  v27 = v20;
  block[6] = a3;
  block[7] = a6;
  block[8] = a7;
  block[9] = v16;
  dispatch_async(v17, block);
  return 0;
}

uint64_t H1JPEGEncoder_CompleteFrames(uint64_t a1)
{
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24) == 1936355431)
  {
    v2 = *(DerivedStorage + 136);
    if (v2)
    {
      dispatch_barrier_sync(v2, &__block_literal_global_26);
    }
  }

  return 0;
}

uint64_t H1JPEGEncoder_CopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  MEMORY[0x29C24F130](&sCreateSupportedPropertyDictionaryOnce, jpegEncoder_createSupportedPropertyDictionary);
  if (a2 && sJPEGVideoEncoderSupportedPropertyDictionary)
  {
    *a2 = CFRetain(sJPEGVideoEncoderSupportedPropertyDictionary);
    return 0;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954392, "<-<<< JPEGVTEncoder >>>->", 452, v2);
  }
}

void addNumberToDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t jpeg_encodeFrameSync()
{
  MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v48 = 0;
  v49 = 0;
  bzero(inputStruct, 0xDA0uLL);
  bzero(outputStruct, 0xDA0uLL);
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  v43 = 0;
  extraRowsOnBottom = 0uLL;
  IOSurface = CVPixelBufferGetIOSurface(v11);
  if (!IOSurface)
  {
    return 4294954394;
  }

  v16 = IOSurface;
  Width = IOSurfaceGetWidth(IOSurface);
  Height = IOSurfaceGetHeight(v16);
  v38 = v7;
  if (!*(DerivedStorage + 40))
  {
    goto LABEL_16;
  }

  v17 = *(DerivedStorage + 36);
  v18 = 1.0;
  if (v17 <= 1.0)
  {
    v18 = *(DerivedStorage + 36);
    if (v17 < 0.0)
    {
      v18 = 0.0;
    }
  }

  v19 = ((((200.0 / (((v18 * (v18 * 32.0)) * v18) + 1.0)) * 72.0) / 100.0) + 0.5);
  if (v19 == 144)
  {
    v20 = 0;
    goto LABEL_17;
  }

  if (v19 > 90)
  {
    v20 = 1;
    goto LABEL_17;
  }

  if (v19 > 72)
  {
    v20 = 2;
    goto LABEL_17;
  }

  if (v19 > 18)
  {
    v20 = 3;
    goto LABEL_17;
  }

  if (v19 <= 7)
  {
    if (v19 >= 5)
    {
      v20 = 5;
    }

    else
    {
      v20 = 6;
    }
  }

  else
  {
LABEL_16:
    v20 = 4;
  }

LABEL_17:
  v22 = *(DerivedStorage + 24);
  if (v22 == 1936355431)
  {
    v23 = *(DerivedStorage + 168);
    if (!v23)
    {
      v20 = 7;
      v24 = 1936355431;
      goto LABEL_24;
    }

    v20 = JPEGRCGetEncodingQuality(v23);
    v22 = *(DerivedStorage + 24);
    v24 = 1936355431;
    if (v22 == 1936355431)
    {
      goto LABEL_24;
    }
  }

  if (*(v3 + 8) <= 5u && v20 == 6)
  {
    if (*v3)
    {
      CFRelease(*v3);
      *v3 = 0;
      v22 = *(DerivedStorage + 24);
    }

    v20 = 6;
    goto LABEL_51;
  }

  v24 = v22;
LABEL_24:
  v22 = v24;
  if (*v3)
  {
    goto LABEL_25;
  }

LABEL_51:
  JPEGOutputSurface = createJPEGOutputSurface(Width, Height, v22, v20);
  *v3 = JPEGOutputSurface;
  if (JPEGOutputSurface)
  {
    *(v3 + 8) = v20;
    v24 = *(DerivedStorage + 24);
LABEL_25:
    if (v24 != 1936355431)
    {
      CVPixelBufferGetExtendedPixels(v11, 0, 0, &extraRowsOnBottom + 1, &extraRowsOnBottom);
      if (extraRowsOnBottom != 0)
      {
        CVPixelBufferFillExtendedPixels(v11);
      }
    }

    while (1)
    {
      v25 = v20;
      inputStruct[0] = IOSurfaceGetID(v16);
      inputStruct[2] = IOSurfaceGetID(*v3);
      inputStruct[5] = Width;
      inputStruct[6] = Height;
      inputStruct[7] = v20;
      inputStruct[1] = IOSurfaceGetAllocSize(v16);
      inputStruct[3] = IOSurfaceGetAllocSize(*v3);
      inputStruct[8] = 1;
      if (*(DerivedStorage + 24) == 1936355431)
      {
        inputStruct[11] = 1;
      }

      v26 = *(DerivedStorage + 32);
      outputStructCnt.value = 3488;
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = IOConnectCallStructMethod(v26, 6u, inputStruct, 0xDA0uLL, outputStruct, &outputStructCnt);
      if (v27 != -536870168)
      {
        break;
      }

      v28 = dataLength;
      if (IOSurfaceGetAllocSize(*v3) >= v28)
      {
        v20 = v25 - 1;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_47;
    }

    if (v27)
    {
LABEL_47:
      fig_log_get_emitter();
      v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v36, sampleSizeArray);
      v32 = 0;
      goto LABEL_42;
    }

    *&sampleTimingArray.duration.value = *v38;
    sampleTimingArray.duration.epoch = *(v38 + 16);
    sampleTimingArray.presentationTimeStamp = *v9;
    sampleTimingArray.decodeTimeStamp = **&MEMORY[0x29EDB9398];
    if (!*(DerivedStorage + 8))
    {
      VTEncoderSessionCreateVideoFormatDescription();
    }

    v29 = *MEMORY[0x29EDB8ED8];
    CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x29EDB8ED8], 0, dataLength, *(DerivedStorage + 96), 0, 0, dataLength, 1u, &v48);
    IOSurfaceLock(*v3, 1u, 0);
    BaseAddress = IOSurfaceGetBaseAddress(*v3);
    v21 = CMBlockBufferReplaceDataBytes(BaseAddress, v48, 0, dataLength);
    IOSurfaceUnlock(*v3, 1u, 0);
    if (v21)
    {
      v32 = 0;
    }

    else
    {
      v43 = dataLength;
      v31 = *(DerivedStorage + 168);
      if (v31)
      {
        outputStructCnt = sampleTimingArray.presentationTimeStamp;
        JPEGRCUpdate(v31, dataLength, &outputStructCnt.value);
      }

      v21 = CMSampleBufferCreate(v29, v48, 1u, 0, 0, *(DerivedStorage + 8), 1, 1, &sampleTimingArray, 1, &v43, &v49);
      v32 = v49;
    }

    goto LABEL_42;
  }

  v32 = 0;
  v21 = 4294954392;
LABEL_42:
  jpeg_emitEncodedFrame(DerivedStorage, v13, v5, v21, *v1, v32);
  if (v48)
  {
    CFRelease(v48);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v21;
}

intptr_t __jpeg_encodeFrameAsync_block_invoke(uint64_t a1)
{
  v28[2] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = **(a1 + 64);
  v19 = *(a1 + 80);
  v20 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a1 + 120);
  v22 = **(a1 + 64);
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  pixelBufferOut = 0;
  v6 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x29EDB8ED8], *(DerivedStorage + 104), &pixelBufferOut);
  if (v6)
  {
    v16 = v6;
LABEL_16:
    jpeg_emitEncodedFrame(DerivedStorage, v2, v3, v16, v4, 0);
    goto LABEL_17;
  }

  dispatch_semaphore_wait(*(DerivedStorage + 128), 0xFFFFFFFFFFFFFFFFLL);
  IOSurface = CVPixelBufferGetIOSurface(v3);
  v8 = CVPixelBufferGetIOSurface(pixelBufferOut);
  Width = IOSurfaceGetWidth(IOSurface);
  Height = IOSurfaceGetHeight(IOSurface);
  v27[1] = 0;
  *&v25 = IOSurfaceGetBytesPerRowOfPlane(IOSurface, 0);
  *(&v25 + 1) = IOSurfaceGetBytesPerRowOfPlane(IOSurface, 1uLL);
  *&v23 = IOSurfaceGetBaseAddressOfPlane(IOSurface, 0);
  *(&v23 + 1) = IOSurfaceGetBaseAddressOfPlane(IOSurface, 1uLL);
  v28[0] = IOSurfaceGetBytesPerRow(v8);
  v27[0] = IOSurfaceGetBaseAddress(v8);
  IOSurfaceLock(IOSurface, 1u, 0);
  IOSurfaceLock(v8, 0, 0);
  Copy_444_yuvz_arm(Width, Height, &v25, &v23, v28, v27);
  IOSurfaceUnlock(IOSurface, 1u, 0);
  IOSurfaceUnlock(v8, 0, 0);
  dispatch_semaphore_signal(*(DerivedStorage + 128));
  v11 = CMSimpleQueueDequeue(*(DerivedStorage + 112));
  if (v11)
  {
    v12 = v11;
    v25 = v19;
    v26 = v20;
    v23 = v17;
    v24 = v18;
    jpeg_encodeFrameSync();
    goto LABEL_4;
  }

  if (!__jpeg_encodeFrameAsync_block_invoke_cold_1(&v25))
  {
    v16 = v25;
    goto LABEL_16;
  }

LABEL_17:
  v12 = 0;
LABEL_4:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v12)
  {
    CMSimpleQueueEnqueue(*(DerivedStorage + 112), v12);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    CFRelease(v14);
  }

  return dispatch_semaphore_signal(*(*(a1 + 72) + 120));
}

uint64_t jpeg_emitEncodedFrame(uint64_t *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 6) == 1936355431)
  {
    while (1)
    {
      FigSimpleMutexLock();
      if (CMSimpleQueueGetHead(a1[18]) == a3)
      {
        break;
      }

      FigSimpleMutexUnlock();
      FigSemaphoreWaitRelative();
    }

    CMSimpleQueueDequeue(a1[18]);
    VTEncoderSessionEmitEncodedFrame();
    FigSimpleMutexUnlock();
    v9 = a1[20];

    return MEMORY[0x2A1C59E18](v9);
  }

  else
  {

    return VTEncoderSessionEmitEncodedFrame();
  }
}

void jpegEncoder_createSupportedPropertyDictionary()
{
  v17 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v0 = *MEMORY[0x29EDBD140];
  v1 = *MEMORY[0x29EDBD108];
  keys = *MEMORY[0x29EDBD128];
  v13 = v1;
  v2 = *MEMORY[0x29EDBD118];
  values = v0;
  v8 = v2;
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], &keys, &values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v4)
  {
    v5 = v4;
    keys = *MEMORY[0x29EDBCDC0];
    v13 = @"AllowVideoRange";
    values = v4;
    v8 = v4;
    sJPEGVideoEncoderSupportedPropertyDictionary = CFDictionaryCreate(v3, &keys, &values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!sJPEGVideoEncoderSupportedPropertyDictionary)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, values, v8);
    }

    CFRelease(v5);
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, values, v8);
  }
}

_DWORD *JPEGRCMake(int a1, unsigned int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x102004038A5B824uLL);
  *v4 = a2;
  v4[1] = a1;
  v4[2] = 60;
  *(v4 + 2) = 0x900000000;
  *(v4 + 4) = malloc_type_calloc(1uLL, 24 * a2, 0x1000040504FFAC1uLL);
  return v4;
}

void JPEGRCDestroy(void **a1)
{
  if (a1)
  {
    free(a1[4]);

    free(a1);
  }
}

uint64_t JPEGRCGetEncodingQuality(_DWORD *a1)
{
  v1 = (a1[1] + (a1[2] >> 1)) / a1[2];
  a1[3] = v1;
  v2 = a1[4];
  v3 = a1[6];
  if (v2 > v1)
  {
    v4 = (10 * (v2 - v1) + (v1 >> 1)) / v1;
    if (v4 >= 2)
    {
      v4 = 2;
    }

    v3 -= v4;
  }

  if (v2 < v1)
  {
    v5 = (10 * (v1 - v2) + (v1 >> 1)) / v1;
    if (v5 >= 1)
    {
      v5 = 1;
    }

    v3 += v5;
  }

  if (v3 >= 21)
  {
    v3 = 21;
  }

  if (v3 <= 1)
  {
    v3 = 1;
  }

  a1[5] = v3;
  a1[6] = v3;
  return (v3 << 16) | 7u;
}

void *JPEGRCUpdate(unsigned int *a1, int a2, uint64_t *a3)
{
  v4 = *(a1 + 4);
  v5 = *a3;
  v6 = *(a3 + 2);
  v13 = *(a3 + 12);
  v14 = *(a3 + 5);
  a1[4] = 8 * a2;
  a1[2] = 60;
  v7 = *(v4 + 8);
  if (v7)
  {
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = *a1;
    if (v5 != *v4)
    {
      v10 = v9 * v6 / (v5 - *v4);
      if (v10 <= 1)
      {
        LODWORD(v10) = 1;
      }

      a1[2] = v10;
    }
  }

  else
  {
    LODWORD(v9) = *a1;
  }

  result = memmove(v4, (v4 + 24), 24 * (v9 - 1));
  v12 = v4 + 24 * (*a1 - 1);
  *v12 = v5;
  *(v12 + 8) = v6;
  *(v12 + 20) = v14;
  *(v12 + 12) = v13;
  return result;
}

void JPEGH1EncoderRegister()
{
  if (H1JPEGEncoder_CheckExistence())
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    VTRegisterVideoEncoderWithInfo();
    VTRegisterVideoEncoderWithInfo();
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

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

__CFDictionary *createJPEGOutputSurface(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  result = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (result)
  {
    v5 = result;
    CFDictionarySetValue(result, *MEMORY[0x29EDBB158], *MEMORY[0x29EDB8F00]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v6 = IOSurfaceCreate(v5);
    CFRelease(v5);
    return v6;
  }

  return result;
}

BOOL __jpeg_encodeFrameAsync_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}