uint64_t HEIFItemDecoderWaitForFinishAndReturnStatus(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a1 + 157))
  {
    os_unfair_lock_lock((a1 + 14576));
    *(a1 + 216) = 1;
    Count = CFSetGetCount(*(a1 + 14600));
    v9 = *(a1 + 14608);
    os_unfair_lock_unlock((a1 + 14576));
    if (*(a1 + 212) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(a1 + 224);
        v12 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v11, v12))
        {
          if (FigDebugIsInternalBuild())
          {
            _logHang(**(a1 + 8), 0, v9, Count, *(a1 + 14580), a2, a3, a4);
          }

          dispatch_semaphore_wait(*(a1 + 224), 0xFFFFFFFFFFFFFFFFLL);
        }

        ++v10;
        v13 = *(a1 + 212);
      }

      while (v10 < v13);
      if (v13 >= 1)
      {
        v14 = 0;
        do
        {
          dispatch_semaphore_signal(*(a1 + 224));
          ++v14;
        }

        while (v14 < *(a1 + 212));
      }
    }

    if (Count)
    {
      v15 = *(a1 + 232);
      v16 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(v15, v16))
      {
        if (FigDebugIsInternalBuild())
        {
          _logHang(**(a1 + 8), 1, v9, Count, *(a1 + 14580), a2, a3, a4);
        }

        dispatch_semaphore_wait(*(a1 + 232), 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  return *(a1 + 14580);
}

uint64_t CMPhotoCodecSessionPool_RecycleSession(uint64_t a1, int a2, const void *a3, int a4)
{
  if (a2)
  {
    v7 = 88;
  }

  else
  {
    v7 = 48;
  }

  v8 = 40;
  if (!a2)
  {
    v8 = 32;
  }

  v9 = *(a1 + v8);
  v10 = FigSimpleMutexLock();
  if (v10)
  {
    return v10;
  }

  v11 = (a1 + v7);
  v32 = 0;
  Value = CFDictionaryGetValue(v11[3], a3);
  if (!Value)
  {
    fig_log_get_emitter();
    IdleSessionSlots = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, context);
    goto LABEL_34;
  }

  v13 = Value;
  v14 = *(a1 + 152);
  Value[1] = 0;
  Value[2] = 0;
  *(Value + 48) = 1;
  Value[7] = dispatch_time(0, v14);
  if (a4 || *(v13 + 49))
  {
    CodecSessionPool_DestroyGatewayForSession(v11, a3);
    Count = CFArrayGetCount(v11[1]);
    v16 = OUTLINED_FUNCTION_19_3(Count);
    CFArrayRemoveValueAtIndex(v11[1], v16);
    goto LABEL_11;
  }

  IdleSessionSlots = CodecSessionPool_GetIdleSessionSlots(v11, v13[4], 1, &v32);
  if (IdleSessionSlots)
  {
LABEL_34:
    v27 = IdleSessionSlots;
    goto LABEL_28;
  }

  CFArrayAppendValue(v32, a3);
LABEL_11:
  v17 = CFArrayGetCount(v11[4]);
  v18 = CFArrayGetCount(v11[1]);
  if (v17 >= 1)
  {
    v19 = v18;
    for (i = 0; i != v17; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11[4], i);
      v22 = CFDictionaryGetValue(v11[2], *ValueAtIndex);
      if (v22)
      {
        v23 = v22;
        if (CFArrayGetCount(v22) > 0)
        {
          v28 = CFArrayGetValueAtIndex(v23, 0);
          CFDictionaryGetValue(v11[3], v28);
          goto LABEL_26;
        }
      }
    }

    if (v19 >= v9)
    {
      context = 0;
      theArray = 0;
      CFDictionaryApplyFunction(v11[2], CodecSessionPool_PurgeIdleSessionFromLargestGroupApplier, &context);
      if (theArray)
      {
        if (context >= 1)
        {
          v24 = CFArrayGetValueAtIndex(theArray, 0);
          CodecSessionPool_DestroyGatewayForSession(v11, v24);
          v25 = CFArrayGetCount(v11[1]);
          v26 = OUTLINED_FUNCTION_19_3(v25);
          CFArrayRemoveValueAtIndex(v11[1], v26);
        }
      }
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v11[4], 0);
LABEL_26:
    dispatch_semaphore_signal(*(ValueAtIndex + 1));
    CodecSessionPool_DequeueWaitingClient(v11, ValueAtIndex);
    goto LABEL_27;
  }

  *(a1 + 160) = OUTLINED_FUNCTION_12_5();
  if (*(a1 + 176))
  {
    [*(a1 + 176) takeAssertionUntilTime:OUTLINED_FUNCTION_14_4() forContext:a1];
    [*(a1 + 176) registerBackgroundNotificationHandlerForContext:a1 handler:*(a1 + 184)];
  }

  if (!*(a1 + 128))
  {
LABEL_27:
    v27 = 0;
    goto LABEL_28;
  }

  dispatch_resume(*(a1 + 136));
  v27 = 0;
  *(a1 + 128) = 0;
LABEL_28:
  FigSimpleMutexUnlock();
  return v27;
}

void _oneShotItemDecodeCallback(int a1, int a2, void *cf, uint64_t a4, __CVBuffer **a5)
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  *(a5 + 4) = a2;
  if (cf)
  {
    v10 = CFRetain(cf);
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  if (!*(a4 + 156))
  {
    CMPhotoRemoveColorInformationGuessedBy(cf);
    v10 = *a5;
  }

  CMPhotoAddColorInformationToPixelBufferAccordingToFormat(*(a4 + 48), *(a4 + 56), *(a4 + 64), *(a4 + 72), v10);
  CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(*(a4 + 80), *(a4 + 84), *a5);
  CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(*(a4 + 24), *a5);
  if (!*(a4 + 208))
  {
    dispatch_semaphore_signal(a5[1]);
  }

  if (*v9 == 1)
  {

    kdebug_trace();
  }
}

void VTTileDecompressionPluginClass_dispose(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = *(v2 + 4);
      if (v3)
      {
        dispatch_barrier_sync_f(v3, 0, _dispatch_empty_0);
        v4 = *(v2 + 4);
        if (v4)
        {
          dispatch_release(v4);
        }
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        if (!*(a1 + 80) && ((v6 = *(a1 + 72), v6 == 1635135537) || v6 == 1902212657))
        {
          VTTileDecompressionSessionInvalidate();
        }

        else
        {
          VTSessionSetProperty(v5, *MEMORY[0x1E6983948], *MEMORY[0x1E695E4D0]);
          CMPhotoCodecSessionPoolRecycleSession(*(a1 + 24), *(v2 + 1), *v2);
        }

        v7 = *(v2 + 1);
        if (v7)
        {
          CFRelease(v7);
          *(v2 + 1) = 0;
        }
      }

      v8 = *(v2 + 2);
      if (v8)
      {
        CFRelease(v8);
      }

      free(v2);
      *(a1 + 64) = 0;
    }
  }
}

uint64_t CMPhotoDecompressionPluginDecode(uint64_t a1)
{
  if (a1)
  {
    return (*(*(a1 + 40) + 32))();
  }

  else
  {
    return OUTLINED_FUNCTION_1_0();
  }
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5)
{

  return _ifdAddTag4(a1, 262, 3, 1uLL, a5);
}

uint64_t VTTileDecompressionPluginClass_decode(uint64_t a1, CFDictionaryRef theDict, CFTypeRef a3, uint64_t a4)
{
  v4 = *(a1 + 64);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CanvasPixelBuffer");
    v10 = CFDictionaryGetValue(theDict, @"TilePixelBuffer");
    v11 = CFDictionaryGetValue(theDict, @"CanvasOrigin");
    if (Value)
    {
      if (v11)
      {
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
      }

LABEL_6:
      v12 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      if (*(v4 + 25))
      {
        if (*v12 == 1)
        {
          kdebug_trace();
        }

        v13 = VTTileDecompressionSessionDecodeTile();
        if (*v12 == 1)
        {
LABEL_17:
          kdebug_trace();
        }

LABEL_18:
        if (v13)
        {
          goto LABEL_19;
        }

        return 0;
      }

      if (*(v4 + 24))
      {
        if (*v12 == 1)
        {
          kdebug_trace();
        }

        v13 = VTTileDecompressionSessionDecodeTile();
        if (*v12 == 1)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v15 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040518B8D9EuLL);
      if (!v15)
      {
        *v4 = 1;
        return 4294950305;
      }

      v16 = v15;
      v17 = *(v4 + 8);
      if (v17)
      {
        v18 = CFRetain(v17);
        if (!a3)
        {
LABEL_26:
          v19 = CFRetain(Value);
          *v16 = a1;
          v16[1] = v18;
          v16[2] = a3;
          v16[3] = v19;
          v16[4] = 0;
          v16[5] = -1;
          v16[6] = a4;
          dispatch_async_f(*(v4 + 32), v16, _dispatch_tileDecodeTileAsync);
          return 0;
        }
      }

      else
      {
        v18 = 0;
        if (!a3)
        {
          goto LABEL_26;
        }
      }

      a3 = CFRetain(a3);
      goto LABEL_26;
    }

    Value = v10;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  VTTileDecompressionPluginClass_decode_cold_1(&v20);
  v13 = v20;
  if (!v20)
  {
    return 0;
  }

LABEL_19:
  *v4 = 1;
  if ((v13 | 2) == 0x44E)
  {
    return 4294951826;
  }

  else
  {
    return v13;
  }
}

void CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(const opaqueCMFormatDescription *a1, __CVBuffer *a2)
{
  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (Extensions)
  {
    v4 = Extensions;
    Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6960020]);
    if (Value)
    {
      CVBufferSetAttachment(a2, *MEMORY[0x1E6965DE0], Value, kCVAttachmentMode_ShouldPropagate);
    }

    v6 = CFDictionaryGetValue(v4, *MEMORY[0x1E6960080]);
    if (v6)
    {
      CVBufferSetAttachment(a2, *MEMORY[0x1E6965EE8], v6, kCVAttachmentMode_ShouldPropagate);
    }

    v7 = CFDictionaryGetValue(v4, *MEMORY[0x1E6960018]);
    if (v7)
    {
      CVBufferSetAttachment(a2, @"ContentColorVolume", v7, kCVAttachmentMode_ShouldPropagate);
    }

    v8 = CFDictionaryGetValue(v4, *MEMORY[0x1E695FFF0]);
    if (v8)
    {
      v9 = *MEMORY[0x1E6965CD8];

      CVBufferSetAttachment(a2, v9, v8, kCVAttachmentMode_ShouldPropagate);
    }
  }
}

void CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(uint64_t result, uint64_t a2, __CVBuffer *a3)
{
  if (a2 != -1 && result != -1)
  {
    if (a3)
    {
      CMPhotoAddChromaLocationToPixelBufferAccordingToFormat_cold_1(a3, result, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *(v40 - 160) = 0;
  *(v40 - 192) = 0;

  return CMPhotoCFDictionaryGetFloatIfPresent();
}

void HEIFItemDecoderRelease(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      HEIFItemDecoderWaitForFinishAndReturnStatus(a1, 0, 0, 0);
    }

    CMPhotoDecompressionPluginDispose(*(a1 + 16));
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
    }

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

    v6 = *(a1 + 72);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 224);
    if (v7)
    {
      dispatch_release(v7);
    }

    v8 = *(a1 + 232);
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = *(a1 + 14584);
    if (v9)
    {
      CFRelease(v9);
    }

    FigCFArrayApplyFunction();
    v10 = *(a1 + 14592);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a1 + 14600);
    if (v11)
    {
      CFRelease(v11);
    }

    free(a1);
  }
}

uint64_t _once_CMPhotoDeviceSupportsTileDecodingToCanvas()
{
  v8 = *MEMORY[0x1E69E9840];
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  if (sDeviceType == 8)
  {
    v6 = 16;
    v1 = *MEMORY[0x1E696CD60];
    v2 = IOServiceMatching("AppleAVD");
    result = IOServiceGetMatchingService(v1, v2);
    if (result)
    {
      v3 = result;
      if (MEMORY[0x1AC551D00](result, "HEVCCanDecodeTileToCanvas", v7, &v6))
      {
        v4 = 1;
      }

      else
      {
        v4 = v6 == 0;
      }

      v5 = !v4 && strncasecmp(v7, "Yes", v6) == 0;
      sDeviceSupportsTileDecodingToCanvas = v5;
      return IOObjectRelease(v3);
    }

    else
    {
      sDeviceSupportsTileDecodingToCanvas = 0;
    }
  }

  else
  {
    sDeviceSupportsTileDecodingToCanvas = 1;
  }

  return result;
}

uint64_t _once_getDeviceType()
{
  v2 = 8;
  v3 = 0;
  result = sysctlbyname("hw.cpufamily", &v3, &v2, 0, 0);
  if (v3 > 1598941842)
  {
    if (v3 > 2271604201)
    {
      if (v3 > 3660830780)
      {
        if (v3 == 3660830781)
        {
          v1 = 11;
          goto LABEL_49;
        }

        if (v3 == 3894312694)
        {
          v1 = 7;
          goto LABEL_49;
        }

        if (v3 != 4197663070)
        {
          goto LABEL_46;
        }
      }

      else if (v3 != 2271604202)
      {
        if (v3 == 2465937352)
        {
          v1 = 5;
          goto LABEL_49;
        }

        if (v3 == 2872336137)
        {
          v1 = 18;
          goto LABEL_49;
        }

        goto LABEL_46;
      }

LABEL_31:
      v1 = 12;
      goto LABEL_49;
    }

    if (v3 <= 1867590059)
    {
      if (v3 != 1598941843)
      {
        if (v3 == 1741614739)
        {
          v1 = 6;
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      goto LABEL_31;
    }

    if (v3 != 1867590060)
    {
      if (v3 != 1912690738)
      {
        if (v3 == 1976872121)
        {
          v1 = 15;
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      goto LABEL_31;
    }

LABEL_37:
    v1 = 13;
    goto LABEL_49;
  }

  if (v3 <= 541402831)
  {
    if (v3 <= 399882553)
    {
      if (v3 == 30910251)
      {
        v1 = 17;
        goto LABEL_49;
      }

      if (v3 == 131287967)
      {
        v1 = 8;
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (v3 != 399882554)
    {
      if (v3 == 458787763)
      {
        v1 = 10;
        goto LABEL_49;
      }

      if (v3 == 492472296)
      {
        v1 = 16;
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    goto LABEL_37;
  }

  if (v3 > 747742333)
  {
    switch(v3)
    {
      case 747742334:
        v1 = 4;
        goto LABEL_49;
      case 933271106:
        v1 = 3;
        goto LABEL_49;
      case 1176831186:
        v1 = 9;
        goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v3 == 541402832)
  {
    v1 = 14;
    goto LABEL_49;
  }

  if (v3 == 678884789)
  {
    goto LABEL_37;
  }

LABEL_46:
  result = _isMobileGestaltVirtualDevice();
  if (result)
  {
    v1 = 10;
  }

  else
  {
    v1 = 0;
  }

LABEL_49:
  sDeviceType = v1;
  return result;
}

__CFString *cmpweak_kFigPictureCollectionProperty_SourceSpecifiesOrientation()
{
  if (MEMORY[0x1E69721A0])
  {
    return *MEMORY[0x1E69721A0];
  }

  else
  {
    return @"SourceSpecifiesOrientation";
  }
}

uint64_t CMPhotoCreatePixelBufferCLAPDictionaryFromRect(const __CFAllocator *a1, CFMutableDictionaryRef *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v16 = Mutable;
    v17 = a5 + a7 * 0.5 - a3 * 0.5;
    v18 = CMPhotoCFDictionarySetFloat(Mutable, *MEMORY[0x1E6965D68], v17);
    if (v18 || (v19 = a6 + a8 * 0.5 - a4 * 0.5, v18 = CMPhotoCFDictionarySetFloat(v16, *MEMORY[0x1E6965D78], v19), v18) || (v20 = a7, v18 = CMPhotoCFDictionarySetFloat(v16, *MEMORY[0x1E6965D80], v20), v18))
    {
      v22 = v18;
    }

    else
    {
      v21 = a8;
      v22 = CMPhotoCFDictionarySetFloat(v16, *MEMORY[0x1E6965D60], v21);
      if (!v22)
      {
        *a2 = v16;
        return v22;
      }
    }

    CFRelease(v16);
    return v22;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t CMPhotoCFDictionarySetFloat(uint64_t a1, uint64_t a2, float a3)
{
  valuePtr = a3;
  result = 4294950306;
  if (a1 && a2)
  {
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr))
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

__CVBuffer *CMPhotoPixelBufferHasUnhandledIdentityMatrix(__CVBuffer *result)
{
  if (result)
  {
    v1 = result;
    v2 = CVBufferCopyAttachment(result, *MEMORY[0x1E6965F98], 0);
    v3 = FigCFEqual();
    PixelFormatType = CVPixelBufferGetPixelFormatType(v1);
    v5 = CMPhotoPixelFormatContainsYCbCr(PixelFormatType);
    if (v2)
    {
      CFRelease(v2);
    }

    if (v5)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    return !v6;
  }

  return result;
}

unint64_t _convertAndScalePixelBufferOddSafe(uint64_t a1, __CVBuffer *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t a13, unsigned int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, int a24, uint64_t a25)
{
  if (!a2)
  {
    return 4294950306;
  }

  if (a8 == *MEMORY[0x1E695F060] && a9 == *(MEMORY[0x1E695F060] + 8))
  {
    return 4294950306;
  }

  if (CGRectIsNull(*&a4))
  {
    CMPhotoGetPixelBufferCLAPAsRect(a2);
  }

  HIDWORD(v86) = a24;
  HIDWORD(v89) = a21;
  CVPixelBufferGetPixelFormatType(a2);
  OUTLINED_FUNCTION_31();
  IsSubsampled = CMPhotoPixelFormatIsSubsampled(v28, v29, v30, v31, 0);
  if (!IsSubsampled)
  {
    OUTLINED_FUNCTION_31();
    IsSubsampled = CMPhotoPixelFormatIsSubsampled(v39, v40, v41, v42, 0);
    if (!IsSubsampled)
    {
      if (a3)
      {
        IsSubsampled = CMPhotoCFDictionaryGetBooleanIfPresent();
      }
    }
  }

  HIDWORD(v68) = a24;
  *(&v68 + 1) = __PAIR16__(a23, a22);
  LOBYTE(v68) = BYTE4(v89);
  OUTLINED_FUNCTION_11_3(IsSubsampled, v33, v34, v35, v36, v37, a14, v38, v58, v60, v62, pixelBufferOut, v66, v68, a25, v74, v75, v76, v77, v78, v79, v80, v81, *&a4, *&a5, *&a6, *&a7, v86, a13, v89, v90, a1);
  OUTLINED_FUNCTION_5_5();
  return _convertAndScalePixelBuffer(v43, v44, v45, v46, a12, v88, v47, v48, v49, v50, v51, v52, v53, a19, v54, v55, v59, v61, v63, pixelBufferOuta, v67, v69, v70, v71, v72, v73);
}

const void *_getPixelBufferDescriptionKey(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69();
  Attributes = CVPixelBufferGetAttributes();
  if (!Attributes)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(Attributes, *MEMORY[0x1E6966120]);
  if (!Value)
  {
    CVPixelBufferGetPixelFormatType(v2);
    Value = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (!Value)
    {
      return 0;
    }
  }

  return CFDictionaryGetValue(Value, v1);
}

uint64_t CMPhotoPixelFormatContainsYCbCr(OSType pixelFormat)
{
  v1 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], pixelFormat);
  FigCFDictionaryGetBooleanIfPresent();
  if (v1)
  {
    CFRelease(v1);
  }

  return 0;
}

const __CFBoolean *CMPhotoCFBooleanGetValue(const __CFBoolean *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (CFBooleanGetTypeID() == v2)
    {

      return CFBooleanGetValue(v1);
    }

    else if (CFNumberGetTypeID() == v2)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v1, kCFNumberIntType, &valuePtr))
      {
        v3 = valuePtr == 0;
      }

      else
      {
        v3 = 1;
      }

      return !v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMPhotoColorTripletCreateDictionaryRepresentation(uint64_t a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (Mutable)
  {
    CMPhotoCFDictionarySetInt(Mutable, @"primaries", a1);
    CMPhotoCFDictionarySetInt(v5, @"matrix", a2);
    CMPhotoCFDictionarySetInt(v5, @"transferFunction", SHIDWORD(a1));
  }

  return v5;
}

uint64_t CMPhotoScaleAndRotateSessionTransformImage(uint64_t a1, __CVBuffer *a2, uint64_t a3, __CVBuffer **a4)
{
  v55[0] = 0;
  if (!a2)
  {
    return 4294950306;
  }

  v54 = 1;
  v8 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v8;
  v52.origin = rect.origin;
  v52.size = v8;
  v51 = 1;
  if (*a4)
  {
    v9 = *a4;
  }

  else
  {
    v9 = a2;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v9);
  v10 = MEMORY[0x1E695F060];
  size = *MEMORY[0x1E695F060];
  v48 = 1;
  v47 = (*a4 == 0) << 6;
  v46 = 1;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  cf = 0;
  v39 = 0;
  if (!a3)
  {
    IntIfPresent = 0;
LABEL_12:
    if (a1)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetIntIfPresent();
  IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
  CMPhotoCFDictionaryGetIntIfPresent();
  CMPhotoCFDictionaryGetSizeIfPresent(a3, @"RowAlignment", &v47);
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetCFValueIfPresent();
  CMPhotoCFDictionaryGetCFValueIfPresent();
  CMPhotoCFDictionaryGetCFValueIfPresent();
  CMPhotoCFDictionaryGetCFValueIfPresent();
  if (!CMPhotoCFDictionaryGetSizeIfPresent(a3, @"DestinationMaxSideLength", &v39))
  {
    goto LABEL_12;
  }

  if (v42 || v40)
  {
    goto LABEL_50;
  }

  if (CGRectIsNull(rect))
  {
    CMPhotoGetPixelBufferCLAPAsRect(a2);
  }

  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  OUTLINED_FUNCTION_42();
  CMPhotoPixelBufferConstrainSizeToMaxSideLength(v27, v28, v29, v30, v31, v32, v33, v34, 0, 0);
  size = vcvtq_f64_u64(0);
  if (!a1)
  {
LABEL_30:
    OUTLINED_FUNCTION_3_5(&CMPhotoScaleAndRotateSessionGetDefault_onceToken);
    a1 = defaultSession;
  }

LABEL_13:
  v12 = *v10;
  v13 = v10[1];
  if (size.width == *v10 && size.height == v13)
  {
    if (CGRectIsNull(rect))
    {
      rect.origin.x = CMPhotoGetPixelBufferCLAPAsRect(a2);
      rect.origin.y = v15;
      rect.size.width = v16;
      rect.size.height = v17;
    }

    size = rect.size;
  }

  if (!*a4)
  {
    return _convertAndScalePixelBufferOddSafe(a1, a2, a3, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, size.width, size.height, v54, v51, PixelFormatType, 0, 0, *&v52.origin.x, *&v52.origin.y, *&v52.size.width, *&v52.size.height, v48, v47, v46, v45, v44, -1, a4);
  }

  CMPhotoGetPixelBufferCLAPAsRect(*a4);
  v19 = v18;
  v21 = v20;
  v22 = CVPixelBufferGetPixelFormatType(*a4);
  if (IntIfPresent && v22 != PixelFormatType)
  {
    goto LABEL_50;
  }

  if (!CGRectIsNull(v52))
  {
    v23 = vcvtad_u64_f64(v52.size.width) + vcvtad_u64_f64(v52.origin.x);
    v24 = vcvtad_u64_f64(v52.size.height) + vcvtad_u64_f64(v52.origin.y);
    IsAGXVersatile = CMPhotoPixelFormatIsAGXVersatile(PixelFormatType);
    v26 = v23;
    if (IsAGXVersatile)
    {
      if (v19 + v19 < v26 || v21 + v21 < v24)
      {
        goto LABEL_50;
      }
    }

    else if (v19 < v26 || v21 < v24)
    {
      goto LABEL_50;
    }
  }

  result = CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(v51, v55, 0);
  if (!result)
  {
    if (v55[0] == 270 || (height = size.width, width = size.height, v55[0] == 90))
    {
      height = size.height;
      width = size.width;
    }

    if (size.width != v12 || size.height != v13)
    {
      if (CMPhotoPixelFormatIsAGXVersatile(PixelFormatType))
      {
        if (height > v19 + v19 || width > v21 + v21)
        {
LABEL_50:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }

      else if (height > v19 || width > v21)
      {
        goto LABEL_50;
      }
    }

    return _convertAndScalePixelBufferOddSafe(a1, a2, a3, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, size.width, size.height, v54, v51, PixelFormatType, 0, 0, *&v52.origin.x, *&v52.origin.y, *&v52.size.width, *&v52.size.height, v48, v47, v46, v45, v44, -1, a4);
  }

  return result;
}

uint64_t CMPhotoColorTripletMakeWithDictionaryRepresentation(uint64_t result)
{
  if (result)
  {
    CMPhotoCFDictionaryGetIntIfPresent();
    CMPhotoCFDictionaryGetIntIfPresent();
    CMPhotoCFDictionaryGetIntIfPresent();
    return 0;
  }

  return result;
}

uint64_t CMPhotoCFDictionaryGetDoubleIfPresent()
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
            CFNumberGetValue(numberb, kCFNumberDoubleType, v5);
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

__CFDictionary *CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(__CFDictionary *a1, int a2, int a3, int a4, int a5)
{
  Mutable = a1;
  if (a1 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
  {
    CMPhotoCFDictionarySetBoolean(Mutable, @"HighSpeed", a2);
    CMPhotoCFDictionarySetBoolean(Mutable, @"DisableMSRForTransfer", a3);
    CMPhotoCFDictionarySetBoolean(Mutable, @"UseExperimentalMSRAcceleratorForTransfer", a4);
    CMPhotoCFDictionarySetBoolean(Mutable, @"DisableGPUForTransfer", a5);
  }

  return Mutable;
}

uint64_t CMPhotoCreateDefaultTripletsForTransfer(__CVBuffer *a1, uint64_t a2)
{
  if (a1)
  {
    v5[1] = v2;
    v5[2] = v3;
    CMPhotoCreateDefaultTripletsForTransfer_cold_1(a2, a1, v5);
  }

  return 0;
}

const __CFBoolean *CMPhotoCreateDefaultTripletsForTransfer_cold_1(uint64_t a1, __CVBuffer *a2, uint64_t *a3)
{
  v5 = a1;
  IsFullRange = CMPhotoPixelFormatIsFullRange(a1);
  PixelBufferDescriptionKey = _getPixelBufferDescriptionKey(a2);
  result = CMPhotoCFBooleanGetValue(PixelBufferDescriptionKey);
  if (result && (result = CMPhotoPixelFormatContainsYCbCr(v5), result))
  {
    result = CMPhotoPixelBufferIsITUR_2100TF(a2);
    v9 = 1;
    if (!IsFullRange)
    {
      v9 = 2;
    }

    if (result)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t CMPhotoPixelBufferMemcpySupportedForBuffer(__CVBuffer *a1, _BYTE *a2, char a3, char a4)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = 0;
  if (PixelFormatType > 1380401728)
  {
    if (PixelFormatType > 1937125935)
    {
      if (PixelFormatType <= 1953903151)
      {
        if (PixelFormatType == 1937125936)
        {
          goto LABEL_30;
        }

        v10 = 1952854576;
      }

      else
      {
        if (PixelFormatType == 1953903152 || PixelFormatType == 2019963440)
        {
          goto LABEL_30;
        }

        v10 = 2016686640;
      }
    }

    else if (PixelFormatType <= 1815162993)
    {
      if (PixelFormatType == 1380401729)
      {
        goto LABEL_30;
      }

      v10 = 1751527984;
    }

    else
    {
      if (PixelFormatType == 1815162994 || PixelFormatType == 1815491698)
      {
        goto LABEL_30;
      }

      v10 = 1936077360;
    }

LABEL_29:
    if (PixelFormatType != v10)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (PixelFormatType <= 875836533)
  {
    if (PixelFormatType <= 875704933)
    {
      if (PixelFormatType == 875704422)
      {
        goto LABEL_30;
      }

      v10 = 875704438;
    }

    else
    {
      if (PixelFormatType == 875704934 || PixelFormatType == 875704950)
      {
        goto LABEL_30;
      }

      v10 = 875836518;
    }

    goto LABEL_29;
  }

  if (PixelFormatType > 1278226735)
  {
    if ((PixelFormatType - 1278226736) > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (PixelFormatType != 875836534 && PixelFormatType != 1111970369)
  {
    v10 = 1278226488;
    goto LABEL_29;
  }

LABEL_30:
  extraRowsOnTop = 0uLL;
  CVPixelBufferGetExtendedPixels(a1, &extraRowsOnTop + 1, 0, &extraRowsOnTop, 0);
  if (extraRowsOnTop != 0)
  {
    return 0;
  }

  v11 = 0;
  if (CMPhotoPixelFormatIsSubsampled(PixelFormatType, 0, 0, &v11, 0))
  {
    return 0;
  }

  if (!v11)
  {
    return 1;
  }

  if (*a2)
  {
    return 0;
  }

  result = 0;
  if ((a2[8] & 1) == 0 && (a3 & 1) == 0 && (a4 & 1) == 0)
  {
    return 1;
  }

  return result;
}

double OUTLINED_FUNCTION_107()
{

  return CMPhotoGetPixelBufferCLAPAsRect(v0);
}

uint64_t OUTLINED_FUNCTION_48@<X0>(unint64_t a1@<X8>)
{

  return CMPhotoAlignValue(5 * (a1 >> 2), 0x140uLL);
}

uint64_t _decodeImage_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void CMPhotoDecompressionSessionFreeAsyncRequest(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t _canDecodeTilesOrLayersIntoCanvas(__CVBuffer *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, int a8, int *a9, uint64_t a10, int a11)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  PixelBufferSize = CMPhotoGetPixelBufferSize(a1);
  if (a11 == 1785750887)
  {
    return PixelFormatType == a8;
  }

  else
  {
    v23 = PixelBufferSize;
    v24 = v21;
    v25 = CMPhotoDeviceSupportsTileDecodingToCanvas();
    v22 = 0;
    if ((a8 & 0xFFFFFFEF) != 0x34343466 && v25)
    {
      IOSurface = CVPixelBufferGetIOSurface(a1);
      v28 = PixelFormatType == a8 && IOSurface != 0;
      v53 = 0u;
      v54 = 0u;
      CMPhotoPixelBufferAttributesGetExtendedPixelsStruct(a10, &v53);
      if (v53 | v54)
      {
        v31 = 0;
        v29 = a7;
      }

      else
      {
        v29 = a7;
        v31 = (a6 < 2 || !*(&v53 + 1)) && (a7 < 2 || *(&v54 + 1) == 0);
      }

      if (!v28)
      {
        v31 = 0;
      }

      if (a4 | a5)
      {
        v32 = a4;
      }

      else
      {
        v32 = a2;
      }

      if (a4 | a5)
      {
        v33 = a5;
      }

      else
      {
        v33 = a3;
      }

      if (a2 > a9[6] || a3 > a9[4] || v32 < a9[7] || v33 < a9[5])
      {
        v31 = 0;
      }

      if (a6 >= 2 && a2 % *a9)
      {
        v31 = 0;
      }

      v37 = vcvtad_u64_f64(v23);
      v38 = vcvtad_u64_f64(v24);
      if (v29 >= 2 && a3 % a9[1])
      {
        v31 = 0;
      }

      v39 = a2 + v37 + ~((v37 - 1) % a2);
      v40 = a3 + v38 + ~((v38 - 1) % a3);
      if (a4 | a5)
      {
        v39 = a4 + a9[2] + ~((a4 - 1) % a9[2]) + v37 + ~((v37 - 1) % a2);
        v40 = a5 + a9[3] + ~((a5 - 1) % a9[3]) + v38 + ~((v38 - 1) % a3);
      }

      v41 = 0;
      if (a6 == 1)
      {
        v42 = *(&v53 + 1) + a2;
      }

      else
      {
        v42 = v39;
      }

      if (v29 == 1)
      {
        v43 = *(&v54 + 1) + a3;
      }

      else
      {
        v43 = v40;
      }

      v45 = v42 <= a9[8] && v43 <= a9[9] && v31;
      while (1)
      {
        v46 = CVPixelBufferGetPlaneCount(a1) ? CVPixelBufferGetPlaneCount(a1) : 1;
        if (v41 >= v46)
        {
          break;
        }

        if (CVPixelBufferIsPlanar(a1))
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v41);
        }

        else
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a1);
        }

        v48 = BytesPerRowOfPlane <= a9[10] && v45;
        if (BytesPerRowOfPlane % *a9)
        {
          v45 = 0;
        }

        else
        {
          v45 = v48;
        }

        ++v41;
      }

      extraRowsOnBottom = 0;
      extraColumnsOnRight = 0;
      CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
      return extraColumnsOnRight + v37 >= v42 && extraRowsOnBottom + v38 >= v43 && v45;
    }
  }

  return v22;
}

uint64_t CMPhotoCreateCGImageWithPixelBuffer(uint64_t a1, CVPixelBufferRef pixelBuffer, int a3, CGImageRef *a4)
{
  if (!pixelBuffer)
  {
    return 4294950306;
  }

  v9 = pixelBuffer;
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  if (a3 && IOSurface)
  {
    v186 = a4;
    v12 = CVPixelBufferGetIOSurface(v9);
    PixelFormat = IOSurfaceGetPixelFormat(v12);
    cf[0] = 0;
    CMPhotoGetPixelBufferCLAPAsRect(v9);
    OUTLINED_FUNCTION_64();
    v189 = vcvtad_u64_f64(v14);
    v191 = vcvtad_u64_f64(v15);
    IsTiled = IOSurfaceIsTiled();
    v17 = vdupq_n_s32(PixelFormat);
    v18 = vceqq_s32(v17, xmmword_1A5AAD170);
    v17.i32[1] = PixelFormat & 0xFFFFFFFD;
    v19 = (PixelFormat != 1380411457) & ~vmaxv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(v17, xmmword_1A5AAD160), v18)));
    if (PixelFormat == 1815162994)
    {
      v19 = 0;
    }

    if (PixelFormat == 1380410945)
    {
      v19 = 0;
    }

    if (PixelFormat == 1815491698)
    {
      v19 = 0;
    }

    if (PixelFormat == 1717856627)
    {
      v19 = 0;
    }

    if (PixelFormat == 1751411059)
    {
      v19 = 0;
    }

    if ((v19 & 1) != 0 || IsTiled)
    {
      FastestAlignment = CGBitmapGetFastestAlignment();
      v21 = MEMORY[0x1AC550000](a1, 48, 1909800069, 0);
      if (!v21)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3();
        v58 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v167, v170, v174);
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_35();
      if (!v59 & v23 || ((1 << v22) & 0x1400000000001) == 0)
      {
        OUTLINED_FUNCTION_15_0();
        if (!v59 & v23 || (OUTLINED_FUNCTION_10(), v59))
        {
          if (PixelFormat == 1278555701)
          {
            v28 = 1278555445;
            v21[6] = 1278555445;
            v29 = 2 * v189;
            goto LABEL_78;
          }

          OUTLINED_FUNCTION_33();
          if (v59)
          {
            v24 = 1;
          }

          else
          {
            v24 = PixelFormat == 1717856627;
          }

          if (!v24 && PixelFormat != 1751411059 && PixelFormat != 1751410032)
          {
            if (CMPhotoGetBitDepthForPixelFormat(PixelFormat) < 9)
            {
              v28 = 1111970369;
              v21[6] = 1111970369;
              v29 = 4 * v189;
            }

            else
            {
              if (PixelFormat == 1380410945)
              {
                v27 = 1380410945;
              }

              else
              {
                v27 = 1815491698;
              }

              if (PixelFormat == 1380411457)
              {
                v28 = 1380411457;
              }

              else
              {
                v28 = v27;
              }

              v21[6] = v28;
              v29 = 8 * v189;
            }

            goto LABEL_78;
          }
        }
      }

      v21[6] = PixelFormat;
      CMPhotoGetBitDepthForPixelFormat(PixelFormat);
      OUTLINED_FUNCTION_52();
      CMPhotoGetUsedBitDepthForPixelFormat(PixelFormat);
      v29 = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormat) * v189;
      v28 = v21[6];
LABEL_78:
      CMPhotoGetUsedBitDepthForPixelFormat(v28);
      v60 = (FastestAlignment + v29 - 1) & -FastestAlignment;
      *(v21 + 4) = v60;
      *(v21 + 5) = v60 * v191;
      *(v21 + 1) = CFRetain(v9);
      *(v21 + 2) = 0;
      v21[7] = 0;
      v61 = FigSimpleMutexCreate();
      *v21 = v61;
      if (v61)
      {
        callbacks = *byte_1F1914670;
        v62 = CGDataProviderCreateDirect(v21, v60 * v191, &callbacks);
        v63 = 0;
        goto LABEL_80;
      }

      v58 = 4294950305;
LABEL_97:
      free(v21);
      return v58;
    }

    v178 = v18;
    if (v12)
    {
      CFRetain(v12);
    }

    IOSurfaceLock(v12, 5u, 0);
    IOSurfaceUnlock(v12, 5u, 0);
    IOSurfaceLock(v12, 1u, 0);
    IOSurfaceIncrementUseCount(v12);
    OUTLINED_FUNCTION_15_0();
    if (!v59 & v23 || ((1 << v123) & 0x45) == 0)
    {
      OUTLINED_FUNCTION_32();
      if (!v59)
      {
        v124 = PixelFormat == 1380410945 || PixelFormat == 1380411457;
        if (!v124 && PixelFormat != 1815491698)
        {
          OUTLINED_FUNCTION_59();
        }
      }
    }

    v150 = vcvtad_u64_f64(v6);
    v151 = OUTLINED_FUNCTION_85();
    v183 = vcvtad_u64_f64(v5);
    if (CMPhotoPixelBufferHasOpaqueAlphaFromAttachment(v151, v152))
    {
      v153 = v178;
    }

    else
    {
      OUTLINED_FUNCTION_32();
      v153 = v178;
      if (!v59)
      {
        if (PixelFormat == 1380410945 || PixelFormat == 1380411457 || PixelFormat == 1815491698)
        {
LABEL_189:
          OUTLINED_FUNCTION_59();
          if (!v59)
          {
            v157 = v150;
            if (PixelFormat != 1815491698 && PixelFormat != 1380411457 && PixelFormat != 1380410945)
            {
              OUTLINED_FUNCTION_52();
              if (PixelFormat != v164 && PixelFormat != 1278226536)
              {
                OUTLINED_FUNCTION_33();
              }

              v159 = 1;
              OUTLINED_FUNCTION_35();
              if (!(!v59 & v23))
              {
                OUTLINED_FUNCTION_13_1();
                if (!v166)
                {
                  goto LABEL_198;
                }
              }

              OUTLINED_FUNCTION_15_0();
              if (!(!v59 & v23))
              {
                OUTLINED_FUNCTION_10();
                if (!v59)
                {
                  goto LABEL_198;
                }
              }

              OUTLINED_FUNCTION_33();
              if (v59 || PixelFormat == 1751410032)
              {
                goto LABEL_198;
              }
            }

            goto LABEL_192;
          }

LABEL_191:
          v157 = v150;
LABEL_192:
          if (PixelFormat == 1717856627 || PixelFormat == 1751411059)
          {
            v159 = 1;
          }

          else
          {
            v159 = 4;
          }

LABEL_198:
          UsedBitDepthForPixelFormat = CMPhotoGetUsedBitDepthForPixelFormat(PixelFormat);
          if (PixelFormat == 1815162994)
          {
            v161 = 32;
          }

          else
          {
            v161 = UsedBitDepthForPixelFormat * v159;
          }

          BytesPerRow = IOSurfaceGetBytesPerRow(v12);
          BaseAddress = IOSurfaceGetBaseAddress(v12);
          v62 = CGDataProviderCreateWithData(v12, &BaseAddress[BytesPerRow * v157 + (v161 >> 3) * v183], BytesPerRow * v191, _callbackDataProviderReleaseSurface);
          v63 = v159 == 1;
LABEL_80:
          ColorSpaceFromPixelBuffer = CMPhotoCreateColorSpaceFromPixelBuffer(v9, cf, 0, 0);
          v65 = cf[0];
          if (ColorSpaceFromPixelBuffer)
          {
            goto LABEL_86;
          }

          OUTLINED_FUNCTION_8_2();
          v74 = OUTLINED_FUNCTION_55(v66, v67, v68, v69, v70, v71, v72, v73, v167, v170, v174, v176, v178.i64[0], v178.i64[1], v181, v183, v4, v186, v189, v191);
          v75 = !v63;
          if (v74)
          {
            v75 = 1;
          }

          if ((v75 & 1) == 0)
          {
            if (CGColorSpaceGetNumberOfComponents(v65) == 1)
            {
LABEL_85:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1();
              ColorSpaceFromPixelBuffer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v168, v171, v175);
LABEL_86:
              v58 = ColorSpaceFromPixelBuffer;
              if (!v65)
              {
                goto LABEL_94;
              }

              goto LABEL_93;
            }

            if (v65)
            {
              CFRelease(v65);
            }

            v65 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
            cf[0] = v65;
            OUTLINED_FUNCTION_8_2();
            v74 = OUTLINED_FUNCTION_55(v76, v77, v78, v79, v80, v81, v82, v83, v168, v171, v175, v177, v179, v180, v182, v184, v185, v187, v190, v192);
          }

          v84 = v74;
          if (v74)
          {
            CMPhotoGetEncodeAccelerationModeOverride();
            CGImageSetProperty();
            v58 = 0;
            *v187 = v84;
            if (!v65)
            {
LABEL_94:
              if (v62)
              {
                CFRelease(v62);
              }

              v21 = 0;
              goto LABEL_97;
            }

LABEL_93:
            CFRelease(v65);
            goto LABEL_94;
          }

          goto LABEL_85;
        }

        OUTLINED_FUNCTION_59();
      }
    }

    v156 = vmovn_s32(v153);
    if (vuzp1_s8(v156, v156).i8[7])
    {
      goto LABEL_191;
    }

    goto LABEL_189;
  }

  cf[0] = 0;
  if (CVPixelBufferGetIOSurface(v9))
  {
    v30 = IOSurfaceIsTiled() == 0;
  }

  else
  {
    v30 = 1;
  }

  CVPixelBufferGetPixelFormatType(v9);
  OUTLINED_FUNCTION_39();
  v33 = v31 == v32 || v31 == 1278226488;
  if (v33 || ((OUTLINED_FUNCTION_52(), v34 != v35) ? (v36 = v34 == 1278226536) : (v36 = 1), !v36 ? (v37 = v34 == 1278226736) : (v37 = 1), !v37 ? (v38 = v34 == 1278226738) : (v38 = 1), !v38 && (v34 != 1278226742 ? (v39 = v34 == 1815491698) : (v39 = 1), v39 || ((OUTLINED_FUNCTION_38(), v34 != v40) ? (v41 = v34 == 1717856627) : (v41 = 1), !v41 ? (v42 = v34 == 1751410032) : (v42 = 1), !v42 ? (v43 = v34 == 1751411059) : (v43 = 1), !v43 && v34 == 1380401729))))
  {
    if (v30)
    {
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_103();
    if (!v59 & v23 || ((1 << v121) & 0x1400000000001) == 0)
    {
      OUTLINED_FUNCTION_34();
      if (!v59 & v23 || (OUTLINED_FUNCTION_10(), v126))
      {
        OUTLINED_FUNCTION_38();
      }
    }
  }

  CMPhotoGetBitDepthForPixelFormat(v34);
  OUTLINED_FUNCTION_54(MEMORY[0x1E695F050]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_4();
  v58 = CMPhotoScaleAndRotateSessionTransformForSize(v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, 0, v170, v174);
  v9 = cf[0];
  if (v58)
  {
    return v58;
  }

LABEL_100:
  *&callbacks.version = 0;
  CVPixelBufferGetPixelFormatType(v9);
  OUTLINED_FUNCTION_39();
  if (v85 != v86 && v85 != 1278226488 && v85 != 1278226742 && v85 != 1380401729 && v85 != 1815491698)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v122 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v167, v170, v174);
LABEL_135:
    v58 = v122;
    goto LABEL_170;
  }

  v91 = v85;
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v85);
  v93 = OUTLINED_FUNCTION_85();
  CMPhotoPixelBufferHasOpaqueAlphaFromAttachment(v93, v94);
  v122 = CVPixelBufferLockBaseAddress(v9, 1uLL);
  if (v122)
  {
    goto LABEL_135;
  }

  v188 = a4;
  if (CVPixelBufferGetPlaneCount(v9) == 1)
  {
    v95 = OUTLINED_FUNCTION_9_0();
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v95, v96);
  }

  else
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddress(v9);
  }

  v98 = BaseAddressOfPlane;
  if (CVPixelBufferGetPlaneCount(v9) == 1)
  {
    v99 = OUTLINED_FUNCTION_9_0();
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v99, v100);
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(v9);
  }

  v102 = BytesPerRowOfPlane;
  PixelBufferCLAPAsRect = CMPhotoGetPixelBufferCLAPAsRect(v9);
  v105 = v104;
  v107 = v106;
  v108 = BytesPerPixelForPixelFormat;
  v110 = v109 * BytesPerPixelForPixelFormat;
  v111 = (v106 * v110);
  Data = CGBitmapAllocateData();
  if (Data)
  {
    v113 = Data;
    if (v107)
    {
      v114 = &v98[(v105 * v102) + (PixelBufferCLAPAsRect * v108)];
      v115 = v107;
      v116 = Data;
      do
      {
        memcpy(v116, v114, v110);
        v116 += v110;
        v114 += v102;
        --v115;
      }

      while (v115);
    }

    v117 = CVPixelBufferUnlockBaseAddress(v9, 1uLL);
    if (v117)
    {
      v58 = v117;
    }

    else
    {
      v118 = CGDataProviderCreateWithData(0, v113, v111, _callbackDataProviderReleaseImage);
      if (v118)
      {
        v119 = v118;
        v120 = CMPhotoCreateColorSpaceFromPixelBuffer(v9, &callbacks, 0, 0);
        if (v120)
        {
          v58 = v120;
          v127 = *&callbacks.version;
          goto LABEL_167;
        }

        OUTLINED_FUNCTION_39();
        CMPhotoGetBitDepthForPixelFormat(v91);
        v127 = *&callbacks.version;
        OUTLINED_FUNCTION_8_2();
        v136 = OUTLINED_FUNCTION_50(v128, v129, v130, v131, v132, v133, v134, v135, v167, v170, SHIDWORD(v170));
        if (v136)
        {
          goto LABEL_166;
        }

        NumberOfComponents = CGColorSpaceGetNumberOfComponents(v127);
        CGColorSpaceGetName(v127);
        v138 = *MEMORY[0x1E695F128];
        v193 = FigCFEqual();
        if (v127)
        {
          CFRelease(v127);
        }

        v139 = vdupq_n_s32(v91);
        v140 = vceqq_s32(v139, xmmword_1A5AAD150);
        v139.i32[1] = v91 & 0xFFFFFFFD;
        *v139.i8 = vmovn_s16(vuzp1q_s16(vceqq_s32(v139, xmmword_1A5AAD140), v140));
        v139.i8[0] = vmaxv_u8(*v139.i8);
        if (((v91 != 1278226742) & ~v139.i32[0]) != 0 || NumberOfComponents == 1)
        {
          v127 = 0;
          if (!CMPhotoPixelFormatContainsRGB(v91) || !v193)
          {
            goto LABEL_173;
          }

          v138 = *MEMORY[0x1E695F1C0];
        }

        v127 = CGColorSpaceCreateWithName(v138);
        if (v127)
        {
          CMPhotoGetBitDepthForPixelFormat(v91);
          OUTLINED_FUNCTION_8_2();
          v136 = OUTLINED_FUNCTION_50(v141, v142, v143, v144, v145, v146, v147, v148, v169, v172, v173);
          if (v136)
          {
LABEL_166:
            v58 = 0;
            *v188 = v136;
LABEL_167:
            if (v127)
            {
              CFRelease(v127);
            }

            CFRelease(v119);
            goto LABEL_170;
          }
        }

LABEL_173:
        fig_log_get_emitter();
        v58 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v169, v172, v174);
        goto LABEL_167;
      }

      v58 = 4294950305;
    }

    CGBitmapFreeData();
  }

  else
  {
    v58 = 4294950305;
  }

LABEL_170:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v58;
}

uint64_t CMPhotoDecompressionPluginIsHardwareSession(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 56)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CMPhotoCodecSessionPoolRecycleSession(uint64_t a1, CFTypeRef cf, int a3)
{
  v6 = a1;
  if (!a1)
  {
    OUTLINED_FUNCTION_1_9(&CMPhotoCodecSessionPoolGetDefault_onceToken);
    v6 = defaultPool;
    if (!defaultPool)
    {
      return 4294950305;
    }
  }

  if (!cf)
  {
    return 0;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == VTCompressionSessionGetTypeID() || (v8 = CFGetTypeID(cf), v8 == VTTileCompressionSessionGetTypeID()))
  {
    v13 = v6;
    v14 = 0;
  }

  else
  {
    v9 = CFGetTypeID(cf);
    if (v9 != VTDecompressionSessionGetTypeID())
    {
      v10 = CFGetTypeID(cf);
      if (v10 != VTTileDecompressionSessionGetTypeID())
      {
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950306, "<<<< CMPhotoCodecSessionPool >>>>", 2304, v3);
      }
    }

    v13 = v6;
    v14 = 1;
  }

  return CMPhotoCodecSessionPool_RecycleSession(v13, v14, cf, a3);
}

uint64_t CMPhotoGetAuxiliaryImageTypeFromURN(uint64_t a1)
{
  if (FigCFEqual() || FigCFEqual())
  {
    return 3;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    return 2;
  }

  if (FigCFEqual())
  {
    return 5;
  }

  return 4;
}

const void *Pool_MarkBufferAsUsed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = (a2 + 8);
  if (v6)
  {
    v8 = (v6 + 48);
  }

  *v8 = v7;
  *v7 = v6;
  *v5 = 0;
  v9 = *(a2 + 8);
  *(a3 + 48) = v9;
  *v9 = a3;
  *(a2 + 8) = v5;
  v10 = (a3 + 56);
  v11 = *(a3 + 56);
  v12 = *(a3 + 64);
  v13 = (a1 + 8);
  if (v11)
  {
    v13 = (v11 + 64);
  }

  *v13 = v12;
  *v12 = v11;
  *v10 = 0;
  v14 = *(a1 + 8);
  *(a3 + 64) = v14;
  *v14 = a3;
  *(a1 + 8) = v10;
  IOSurfaceIncrementUseCount(*a3);
  *(a3 + 72) = 0;
  result = *a3;
  if (*a3)
  {
    result = CFRetain(result);
  }

  ++*(a2 + 32);
  return result;
}

void CMPhotoAddChromaLocationToPixelBufferAccordingToFormat_cold_1(__CVBuffer *a1, unsigned int a2, unsigned int a3)
{
  PixelBufferDescriptionKey = _getPixelBufferDescriptionKey(a1);
  Value = CMPhotoCFBooleanGetValue(PixelBufferDescriptionKey);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
  if (Value)
  {
    v10 = ChromaSubsamplingFromPixelFormat == 5;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    _setChromaLocationAttachmentToBuffer(1, a2, a1);

    _setChromaLocationAttachmentToBuffer(0, a3, a1);
  }
}

uint64_t CMPhotoGetChromaSubsamplingFromPixelFormat(uint64_t a1)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  result = 5;
  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1882469427)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat > 1278555444)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1751527983)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat > 1380410944)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1380410945 || UncompressedPixelFormatFromCompressedPixelFormat == 1380411457)
          {
            return 1;
          }

          v3 = 1647589490;
        }

        else
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1278555445 || UncompressedPixelFormatFromCompressedPixelFormat == 1378955371)
          {
            return 1;
          }

          v3 = 1380401729;
        }

        goto LABEL_67;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1815491697)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1751527984)
        {
          return result;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 1815162994)
        {
          return 1;
        }

        v3 = 1815361650;
        goto LABEL_67;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1815491698)
      {
        return 1;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1882468912)
      {
        return result;
      }

      v4 = 1882468914;
    }

    else
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat > 1111970368)
      {
        if ((UncompressedPixelFormatFromCompressedPixelFormat - 1278226488) <= 0x30 && ((1 << (UncompressedPixelFormatFromCompressedPixelFormat - 56)) & 0x1400000000001) != 0 || (UncompressedPixelFormatFromCompressedPixelFormat - 1278226736) <= 6 && ((1 << (UncompressedPixelFormatFromCompressedPixelFormat - 48)) & 0x45) != 0)
        {
          return 6;
        }

        v3 = 1111970369;
        goto LABEL_67;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat <= 875704933)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat != 32)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 875704422)
          {
            return result;
          }

          v5 = 875704438;
          goto LABEL_71;
        }

        return 1;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat > 875836517)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 875836518)
        {
          return 1;
        }

        v3 = 875836534;
        goto LABEL_67;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 875704934)
      {
        return 3;
      }

      v4 = 875704950;
    }

LABEL_75:
    if (UncompressedPixelFormatFromCompressedPixelFormat != v4)
    {
      goto LABEL_78;
    }

    return 3;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1952854577)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1936077359)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat > 1885746227)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1885746228 || UncompressedPixelFormatFromCompressedPixelFormat == 1919365990)
        {
          return 1;
        }

        v3 = 1919365992;
        goto LABEL_67;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1882469428)
      {
        return 1;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1885745712)
      {
        return result;
      }

      v4 = 1885745714;
      goto LABEL_75;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1937125935)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 1936077360)
      {
        return result;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1936077362)
      {
        return 3;
      }

      v3 = 1936077876;
      goto LABEL_67;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1937126451)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 1937125936)
      {
        return result;
      }

      v4 = 1937125938;
      goto LABEL_75;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 1937126452)
    {
      v5 = 1952854576;
      goto LABEL_71;
    }

    return 1;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat > 2016686641)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat > 2019963441)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 2037741157)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 2019963442)
        {
          return 3;
        }

        v3 = 2019963956;
LABEL_67:
        if (UncompressedPixelFormatFromCompressedPixelFormat == v3)
        {
          return 1;
        }

LABEL_78:
        if (CMPhotoPixelFormatIsRAW(UncompressedPixelFormatFromCompressedPixelFormat))
        {
          return 7;
        }

        result = CMPhotoPixelFormatIsRAWVersatile(UncompressedPixelFormatFromCompressedPixelFormat);
        if (result)
        {
          return 7;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat <= 1717856626)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 825306677 || UncompressedPixelFormatFromCompressedPixelFormat == 825437747)
          {
            return 6;
          }

          v7 = 1717855600;
        }

        else
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat > 1751411058)
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1932996149)
            {
              return 6;
            }

            v6 = 26995;
          }

          else
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1717856627)
            {
              return 6;
            }

            v6 = 25968;
          }

          v7 = v6 | 0x68640000;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat != v7)
        {
          return result;
        }

        return 6;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 2037741171)
      {
        return 3;
      }

      v4 = 2037741158;
      goto LABEL_75;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 2016686642)
    {
      return 3;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 2016687156)
    {
      v5 = 2019963440;
      goto LABEL_71;
    }

    return 1;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1953903153)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat != 1952854578)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat != 1952855092)
      {
        v5 = 1953903152;
        goto LABEL_71;
      }

      return 1;
    }

    return 3;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1999843441)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat != 1953903154)
    {
      v3 = 1953903668;
      goto LABEL_67;
    }

    return 3;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat == 1999843442)
  {
    return 1;
  }

  v5 = 2016686640;
LABEL_71:
  if (UncompressedPixelFormatFromCompressedPixelFormat != v5)
  {
    goto LABEL_78;
  }

  return result;
}

void _setChromaLocationAttachmentToBuffer(int a1, unsigned int a2, CVBufferRef buffer)
{
  if (a2 <= 5)
  {
    v3 = MEMORY[0x1E6965CF0];
    if (a1)
    {
      v3 = MEMORY[0x1E6965D00];
    }

    CVBufferSetAttachment(buffer, *v3, **(&unk_1E77A17C8 + a2), kCVAttachmentMode_ShouldPropagate);
  }
}

void CMPhotoPixelBufferCopyCropRectToOffset(__CVBuffer *a1, int a2, uint64_t *a3, __CVBuffer *a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a1)
  {
    v8 = a4;
    if (a4)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      v15 = CVPixelBufferGetPixelFormatType(v8);
      v16 = v15;
      if (a8)
      {
        if (PixelFormatType != v15)
        {
          BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(PixelFormatType);
          if (BitDepthForPixelFormat != CMPhotoGetBitDepthForPixelFormat(v16))
          {
            goto LABEL_66;
          }

          if (!CMPhotoPixelFormatContainsYCbCr(PixelFormatType))
          {
            goto LABEL_66;
          }

          if (!CMPhotoPixelFormatContainsYCbCr(v16))
          {
            goto LABEL_66;
          }

          ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
          if (ChromaSubsamplingFromPixelFormat != CMPhotoGetChromaSubsamplingFromPixelFormat(v16))
          {
            goto LABEL_66;
          }
        }
      }

      else if (PixelFormatType != v15)
      {
        goto LABEL_66;
      }

      Width = CVPixelBufferGetWidth(v8);
      Height = CVPixelBufferGetHeight(v8);
      v97 = 0;
      v98 = 0;
      v21 = OUTLINED_FUNCTION_14_0();
      CVPixelBufferGetExtendedPixels(v21, v22, v23, 0, v24);
      if (a3[2] > Width - a6 || a3[3] > Height - a7 + v98)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      else
      {
        v25 = *(a3 + 1);
        v96[0] = *a3;
        v96[1] = v25;
        if (CMPhotoPixelBufferMemcpySupportedForBuffer(a1, v96, a6, a7))
        {
          if (!a2 || (v26 = OUTLINED_FUNCTION_20(), !CVPixelBufferLockBaseAddress(v26, v27)))
          {
            if (a5)
            {
              v28 = OUTLINED_FUNCTION_14_0();
              if (CVPixelBufferLockBaseAddress(v28, v29))
              {
                a5 = 0;
                goto LABEL_51;
              }

              a5 = 1;
            }

            v30 = *a3;
            v90 = a3[1];
            BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
            OUTLINED_FUNCTION_42();
            if (CMPhotoPixelFormatIsSubsampled(v31, v32, v33, v34, v35))
            {
              goto LABEL_51;
            }

            v95 = v8;
            if (CVPixelBufferGetPlaneCount(a1) < 2)
            {
              v86 = a5;
              BaseAddress = CVPixelBufferGetBaseAddress(a1);
              v37 = CVPixelBufferGetBaseAddress(v8);
              CVPixelBufferGetBytesPerRow(a1);
              v38 = OUTLINED_FUNCTION_86();
              BytesPerRow = CVPixelBufferGetBytesPerRow(v38);
              v40 = a3[3];
              if (v40 >= CVPixelBufferGetHeight(a1))
              {
                v41 = CVPixelBufferGetHeight(a1);
              }

              else
              {
                v41 = a3[3];
              }

              v75 = a3[2];
              if (v75 >= CVPixelBufferGetWidth(a1))
              {
                v76 = CVPixelBufferGetWidth(a1);
                if (!v41)
                {
LABEL_50:
                  a5 = v86;
LABEL_51:
                  if (a2)
                  {
                    v80 = OUTLINED_FUNCTION_20();
                    CVPixelBufferUnlockBaseAddress(v80, v81);
                  }

                  if (a5)
                  {
                    v82 = OUTLINED_FUNCTION_14_0();
                    CVPixelBufferUnlockBaseAddress(v82, v83);
                  }

                  goto LABEL_55;
                }
              }

              else
              {
                v76 = a3[2];
                if (!v41)
                {
                  goto LABEL_50;
                }
              }

              v77 = &BaseAddress[BytesPerPixelForPixelFormat * v30];
              v78 = &v37[BytesPerPixelForPixelFormat * a6 + BytesPerRow * a7];
              v79 = v76 * BytesPerPixelForPixelFormat;
              do
              {
                memcpy(v78, v77, v79);
                v78 += BytesPerRow;
                --v41;
              }

              while (v41);
              goto LABEL_50;
            }

            if (!CVPixelBufferGetPlaneCount(a1))
            {
              goto LABEL_51;
            }

            v86 = a5;
            v42 = 0;
            v93 = 2 * BytesPerPixelForPixelFormat * v30;
            v92 = 2 * BytesPerPixelForPixelFormat * a6;
            v88 = BytesPerPixelForPixelFormat * a6;
            v89 = BytesPerPixelForPixelFormat * v30;
            while (1)
            {
              v43 = OUTLINED_FUNCTION_40();
              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v43, v44);
              v46 = CVPixelBufferGetBaseAddressOfPlane(v8, v42);
              v47 = OUTLINED_FUNCTION_40();
              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v47, v48);
              v50 = CVPixelBufferGetBytesPerRowOfPlane(v8, v42);
              if (v42)
              {
                break;
              }

              v64 = a3[3];
              v65 = OUTLINED_FUNCTION_17();
              if (v64 >= CVPixelBufferGetHeightOfPlane(v65, v66))
              {
                v67 = OUTLINED_FUNCTION_17();
                HeightOfPlane = CVPixelBufferGetHeightOfPlane(v67, v68);
              }

              else
              {
                HeightOfPlane = a3[3];
              }

              v61 = &BaseAddressOfPlane[v89 + BytesPerRowOfPlane * v90];
              v62 = &v46[v88 + v50 * a7];
              v69 = a3[2];
              v70 = OUTLINED_FUNCTION_17();
              if (v69 >= CVPixelBufferGetWidthOfPlane(v70, v71))
              {
                v72 = OUTLINED_FUNCTION_17();
                WidthOfPlane = CVPixelBufferGetWidthOfPlane(v72, v73);
                if (HeightOfPlane)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                WidthOfPlane = a3[2];
                if (HeightOfPlane)
                {
                  goto LABEL_39;
                }
              }

LABEL_41:
              ++v42;
              v8 = v95;
              if (CVPixelBufferGetPlaneCount(a1) <= v42)
              {
                goto LABEL_50;
              }
            }

            v51 = a3[2];
            HeightOfPlane = a3[3];
            v53 = OUTLINED_FUNCTION_40();
            if (HeightOfPlane >= CVPixelBufferGetHeightOfPlane(v53, v54))
            {
              v55 = OUTLINED_FUNCTION_40();
              HeightOfPlane = CVPixelBufferGetHeightOfPlane(v55, v56);
            }

            v57 = OUTLINED_FUNCTION_40();
            if (v51 >= CVPixelBufferGetWidthOfPlane(v57, v58))
            {
              v59 = OUTLINED_FUNCTION_40();
              v51 = CVPixelBufferGetWidthOfPlane(v59, v60);
            }

            v61 = &BaseAddressOfPlane[v93 + BytesPerRowOfPlane * v90];
            v62 = &v46[v92 + v50 * a7];
            WidthOfPlane = 2 * v51;
            if (!HeightOfPlane)
            {
              goto LABEL_41;
            }

LABEL_39:
            v74 = WidthOfPlane * BytesPerPixelForPixelFormat;
            do
            {
              memcpy(v62, v61, v74);
              v61 += BytesPerRowOfPlane;
              v62 += v50;
              --HeightOfPlane;
            }

            while (HeightOfPlane);
            goto LABEL_41;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }

LABEL_55:
      OUTLINED_FUNCTION_73();
      return;
    }
  }

LABEL_66:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_73();

  FigSignalErrorAtGM(v84);
}

void CMPhotoPropagateColorPropertiesFromSourceBuffer(CVBufferRef buffer, __CVBuffer *a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  if (buffer && a2)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E6965EC8];
    v12[0] = *MEMORY[0x1E6965CE8];
    v12[1] = v5;
    v6 = *MEMORY[0x1E6965F30];
    v12[2] = *MEMORY[0x1E6965D88];
    v12[3] = v6;
    v7 = *MEMORY[0x1E6965F98];
    v12[4] = *MEMORY[0x1E6965F98];
    do
    {
      v8 = v12[v4];
      attachmentMode = kCVAttachmentMode_ShouldNotPropagate;
      v9 = CVBufferCopyAttachment(buffer, v8, &attachmentMode);
      if (v9)
      {
        v10 = v9;
        if (v8 == v7)
        {
          CMPhotoAddMatrixToBufferIfAllowed(a2, v9);
        }

        else
        {
          CVBufferSetAttachment(a2, v8, v9, attachmentMode);
        }

        CFRelease(v10);
      }

      ++v4;
    }

    while (v4 != 5);
  }
}

void CMPhotoAddMatrixToBufferIfAllowed(__CVBuffer *a1, const void *a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CMPhotoPixelFormatContainsRGB(PixelFormatType);
  v6 = 1;
  if (PixelFormatType > 1278226735)
  {
    if ((PixelFormatType - 1278226736) <= 6 && ((1 << (PixelFormatType - 48)) & 0x45) != 0 || PixelFormatType == 1717855600 || PixelFormatType == 1751410032)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if ((PixelFormatType - 1278226488) > 0x30 || ((1 << (PixelFormatType - 56)) & 0x1400000000001) == 0)
  {
LABEL_11:
    v6 = PixelFormatType == 1751411059 || PixelFormatType == 1717856627;
  }

LABEL_17:
  v8 = 1;
  if (PixelFormatType != 825306677 && PixelFormatType != 825437747)
  {
    v8 = PixelFormatType == 1932996149;
  }

  if (!CMPhotoPixelFormatIsRAW(PixelFormatType))
  {
    IsRAWVersatile = CMPhotoPixelFormatIsRAWVersatile(PixelFormatType);
    v10 = v5 || v6;
    if (((v10 | v8) & 1) == 0 && !IsRAWVersatile)
    {
      v11 = *MEMORY[0x1E6965F98];

      CVBufferSetAttachment(a1, v11, a2, kCVAttachmentMode_ShouldPropagate);
    }
  }
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return CMPhotoCreateColorSpaceFromPixelBuffer(v2, va, 1, 0);
}

uint64_t CMPhotoGetBitDepthForPixelFormat(uint64_t a1)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  v2 = 32;
  if (UncompressedPixelFormatFromCompressedPixelFormat > 1735549491)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1936077359)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1882468913)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat <= 1751527983)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat > 1735553071)
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1735553072)
            {
              return 10;
            }

            if (UncompressedPixelFormatFromCompressedPixelFormat != 1751410032)
            {
              v5 = 1751411059;
              goto LABEL_112;
            }

            return 16;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat != 1735549492)
          {
            return 8;
          }

          return 14;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat <= 1815361649)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1751527984)
          {
            return 16;
          }

          v4 = 1815162994;
          goto LABEL_108;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 1815361650 || UncompressedPixelFormatFromCompressedPixelFormat == 1815491698)
        {
          return 16;
        }

        v6 = 12848;
      }

      else
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat > 1919365989)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat <= 1919379251)
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1919365990)
            {
              return v2;
            }

            if (UncompressedPixelFormatFromCompressedPixelFormat != 1919365992)
            {
              return 8;
            }

            return 16;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat != 1919379252)
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1919381552)
            {
              return 10;
            }

            v5 = 1932996149;
            goto LABEL_112;
          }

          return 14;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat > 1885745711)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1885745712 || UncompressedPixelFormatFromCompressedPixelFormat == 1885745714)
          {
            return 10;
          }

          v4 = 1885746228;
          goto LABEL_108;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 1882468914)
        {
          return 10;
        }

        v6 = 13364;
      }

      v4 = v6 | 0x70340000;
      goto LABEL_108;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1953903153)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1937126451)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat <= 1936077875)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1936077360)
          {
            return 16;
          }

          v5 = 1936077362;
        }

        else
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1936077876 || UncompressedPixelFormatFromCompressedPixelFormat == 1937125936)
          {
            return 16;
          }

          v5 = 1937125938;
        }

        goto LABEL_112;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1952854577)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1937126452)
        {
          return 16;
        }

        v8 = 1952854576;
LABEL_117:
        if (UncompressedPixelFormatFromCompressedPixelFormat == v8)
        {
          return 12;
        }

        return 8;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1952854578 || UncompressedPixelFormatFromCompressedPixelFormat == 1952855092)
      {
        return 12;
      }

      v7 = 12848;
    }

    else
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat > 2016687155)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat > 2019963955)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 2019963956)
          {
            return 10;
          }

          return 8;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 2016687156 || UncompressedPixelFormatFromCompressedPixelFormat == 2019963440)
        {
          return 10;
        }

        v4 = 2019963442;
        goto LABEL_108;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat > 1999843441)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1999843442 || UncompressedPixelFormatFromCompressedPixelFormat == 2016686640)
        {
          return 10;
        }

        v4 = 2016686642;
        goto LABEL_108;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1953903154)
      {
        return 12;
      }

      v7 = 13364;
    }

    v8 = v7 | 0x74760000;
    goto LABEL_117;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat > 1378955370)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat > 1650946097)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1651926375)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat > 1651798065)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1651798066)
          {
            return 12;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat == 1651847472)
          {
            return 10;
          }

          return 8;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 1650946098)
        {
          return 12;
        }

        v5 = 1651519798;
        goto LABEL_112;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1734501175)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat != 1651926376)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat != 1717855600 && UncompressedPixelFormatFromCompressedPixelFormat != 1717856627)
          {
            return 8;
          }

          return v2;
        }

        return 16;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1734501176)
      {
        return 8;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1734504496)
      {
        return 10;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat != 1734505012)
      {
        return 8;
      }

      return 14;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1647589489)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1380410944)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1378955371)
        {
          return 10;
        }

        return 8;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1380410945)
      {
        return v2;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat != 1380411457)
      {
        v5 = 1647392369;
        goto LABEL_112;
      }

      return 16;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1650942775)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 1647589490)
      {
        return 16;
      }

      v5 = 1647719528;
      goto LABEL_112;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 1650942776)
    {
      return 8;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 1650943796)
    {
      return 14;
    }

    v4 = 1650946096;
LABEL_108:
    if (UncompressedPixelFormatFromCompressedPixelFormat == v4)
    {
      return 10;
    }

    return 8;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 875836533)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat > 875704421)
    {
      return 8;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat > 825437746)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat != 825437747)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat != 843264056)
        {
          v5 = 843264310;
          goto LABEL_112;
        }

        return 8;
      }

      return 16;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 32)
    {
      return 8;
    }

    v5 = 825306677;
LABEL_112:
    if (UncompressedPixelFormatFromCompressedPixelFormat == v5)
    {
      return 16;
    }

    return 8;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat > 1278226735)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1278555444)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat != 1278226736)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat != 1278226738)
        {
          v3 = 12598;
LABEL_65:
          v5 = v3 | 0x4C300000;
          goto LABEL_112;
        }

        return 12;
      }

      return 10;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 1278555445)
    {
      return 5;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 1279340600)
    {
      v5 = 1279340854;
      goto LABEL_112;
    }

    return 8;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1278226488)
  {
    return 8;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat != 1278226534)
  {
    v3 = 12392;
    goto LABEL_65;
  }

  return v2;
}

uint64_t CMPhotoGetUsedBitDepthForPixelFormat(int a1)
{
  v1 = 32;
  if (a1 > 1734505011)
  {
    if (a1 > 1936077359)
    {
      if (a1 <= 1953903153)
      {
        if (a1 <= 1937126451)
        {
          if (a1 <= 1936077875)
          {
            if (a1 == 1936077360)
            {
              return 16;
            }

            v4 = 1936077362;
          }

          else
          {
            if (a1 == 1936077876 || a1 == 1937125936)
            {
              return 16;
            }

            v4 = 1937125938;
          }

          goto LABEL_124;
        }

        if (a1 <= 1952854577)
        {
          if (a1 == 1937126452)
          {
            return 16;
          }

          v4 = 1952854576;
          goto LABEL_124;
        }

        if (a1 == 1952854578 || a1 == 1952855092)
        {
          return 16;
        }

        v7 = 12848;
      }

      else
      {
        if (a1 > 2016687155)
        {
          if (a1 > 2019963955)
          {
            if (a1 == 2037741171 || a1 == 2037741158)
            {
              return 8;
            }

            v3 = 13364;
          }

          else
          {
            if (a1 == 2016687156 || a1 == 2019963440)
            {
              return 16;
            }

            v3 = 12850;
          }

          v4 = v3 | 0x78660000;
          goto LABEL_124;
        }

        if (a1 > 1999843441)
        {
          if (a1 != 1999843442)
          {
            if (a1 != 2016686640)
            {
              v4 = 2016686642;
              goto LABEL_124;
            }

            return 16;
          }

          return 10;
        }

        if (a1 == 1953903154)
        {
          return 16;
        }

        v7 = 13364;
      }

      v4 = v7 | 0x74760000;
      goto LABEL_124;
    }

    if (a1 <= 1882468913)
    {
      if (a1 <= 1751411058)
      {
        if (a1 <= 1735549751)
        {
          if (a1 == 1734505012)
          {
            return 16;
          }

          v4 = 1735549492;
          goto LABEL_124;
        }

        if (a1 != 1735549752)
        {
          if (a1 != 1735553072)
          {
            v4 = 1751410032;
            goto LABEL_124;
          }

          return 10;
        }

        return 8;
      }

      if (a1 <= 1815162993)
      {
        if (a1 == 1751411059)
        {
          return 16;
        }

        v4 = 1751527984;
        goto LABEL_124;
      }

      if (a1 == 1815162994)
      {
        return 10;
      }

      if (a1 == 1815491698)
      {
        return 16;
      }

      v5 = 12848;
    }

    else
    {
      if (a1 > 1919365989)
      {
        if (a1 <= 1919379251)
        {
          if (a1 == 1919365990)
          {
            return v1;
          }

          if (a1 != 1919365992)
          {
            v2 = 1919378232;
            goto LABEL_112;
          }

          return 16;
        }

        if (a1 == 1919379252)
        {
          return 16;
        }

        if (a1 != 1919381552)
        {
          v4 = 1932996149;
          goto LABEL_124;
        }

        return 10;
      }

      if (a1 > 1885745711)
      {
        if (a1 == 1885745712 || a1 == 1885745714)
        {
          return 10;
        }

        v6 = 1885746228;
LABEL_117:
        if (a1 != v6)
        {
          return 0;
        }

        return 10;
      }

      if (a1 == 1882468914)
      {
        return 10;
      }

      v5 = 13364;
    }

    v6 = v5 | 0x70340000;
    goto LABEL_117;
  }

  if (a1 > 1378955370)
  {
    if (a1 > 1650946097)
    {
      if (a1 > 1651926375)
      {
        if (a1 <= 1717856626)
        {
          if (a1 == 1651926376)
          {
            return 16;
          }

          if (a1 != 1652056888)
          {
            if (a1 != 1717855600)
            {
              return 0;
            }

            return v1;
          }

          return 8;
        }

        if (a1 == 1717856627)
        {
          return v1;
        }

        if (a1 == 1734501176)
        {
          return 8;
        }

        v6 = 1734504496;
        goto LABEL_117;
      }

      if (a1 <= 1651798065)
      {
        if (a1 != 1650946098)
        {
          v4 = 1651519798;
          goto LABEL_124;
        }
      }

      else if (a1 != 1651798066)
      {
        if (a1 != 1651847472)
        {
          v2 = 1651925816;
          goto LABEL_112;
        }

        return 16;
      }

      return 12;
    }

    if (a1 <= 1647589489)
    {
      if (a1 > 1380410944)
      {
        if (a1 == 1380410945)
        {
          return v1;
        }

        if (a1 != 1380411457)
        {
          v4 = 1647392369;
          goto LABEL_124;
        }

        return 16;
      }

      if (a1 != 1378955371)
      {
        v2 = 1380401729;
        goto LABEL_112;
      }

      return 10;
    }

    if (a1 <= 1650942775)
    {
      if (a1 == 1647589490)
      {
        return 16;
      }

      v4 = 1647719528;
      goto LABEL_124;
    }

    if (a1 != 1650942776)
    {
      if (a1 == 1650943796)
      {
        return 16;
      }

      v6 = 1650946096;
      goto LABEL_117;
    }

    return 8;
  }

  if (a1 <= 875836533)
  {
    if (a1 > 875704421)
    {
      if (a1 <= 875704933)
      {
        if (a1 == 875704422)
        {
          return 8;
        }

        v2 = 875704438;
      }

      else
      {
        if (a1 == 875704934 || a1 == 875704950)
        {
          return 8;
        }

        v2 = 875836518;
      }

LABEL_112:
      if (a1 != v2)
      {
        return 0;
      }

      return 8;
    }

    if (a1 > 825437746)
    {
      if (a1 != 825437747)
      {
        if (a1 != 843264056)
        {
          v4 = 843264310;
          goto LABEL_124;
        }

        return 8;
      }

      return 16;
    }

    if (a1 == 32)
    {
      return 8;
    }

    v4 = 825306677;
LABEL_124:
    if (a1 == v4)
    {
      return 16;
    }

    return 0;
  }

  if (a1 > 1278226735)
  {
    if (a1 <= 1278555444)
    {
      if ((a1 - 1278226736) > 6 || ((1 << (a1 - 48)) & 0x45) == 0)
      {
        return 0;
      }

      return 16;
    }

    if (a1 == 1278555445)
    {
      return 5;
    }

    if (a1 != 1279340600)
    {
      v4 = 1279340854;
      goto LABEL_124;
    }

    return 8;
  }

  if (a1 <= 1278226487)
  {
    if (a1 == 875836534)
    {
      return 8;
    }

    v2 = 1111970369;
    goto LABEL_112;
  }

  if (a1 == 1278226488)
  {
    return 8;
  }

  if (a1 != 1278226534)
  {
    v4 = 1278226536;
    goto LABEL_124;
  }

  return v1;
}

uint64_t VTDecompressionPluginClass_isHardwareSession(uint64_t a1)
{
  v1 = *(a1 + 64);
  propertyValueOut = 0;
  if (VTSessionCopyProperty(*(v1 + 8), *MEMORY[0x1E69839F0], *a1, &propertyValueOut))
  {
    v2 = 0;
  }

  else
  {
    v2 = FigCFEqual();
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  return v2;
}

uint64_t CMPhotoLeastCommonMultiple(uint64_t a1, uint64_t a2)
{
  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= v3)
  {
    v2 = v3;
  }

  if (v2)
  {
    if (v2 < 1)
    {
      v5 = v4;
    }

    else
    {
      do
      {
        v5 = v2;
        v2 = v4 % v2;
        v4 = v5;
      }

      while (v2);
    }
  }

  else if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return a2 * a1 / v5;
}

uint64_t SurfacePool_CleanupTimerHandler(uint64_t a1)
{
  result = FigSimpleMutexLock();
  if (!result)
  {
    if (*(a1 + 368) != -1)
    {
      v3 = OUTLINED_FUNCTION_12_5();
      v4 = dispatch_time(*(a1 + 384), *(a1 + 368));
      if (dispatch_time(*(a1 + 384), *(a1 + 376)) >= v3)
      {
        if (v4 < v3 && !*(a1 + 392))
        {
          ++*(a1 + 400);
          *(a1 + 392) = 1;
          Pool_Cleanup((a1 + 24), *(a1 + 96), *(a1 + 120), 1, 0);
          Pool_Cleanup((a1 + 168), *(a1 + 240), *(a1 + 264), 1, 0);
        }
      }

      else
      {
        SurfacePool_PerformFullClean(a1);
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t first_pixel_bgg4(uint16x4_t *a1, uint16x4_t *a2, int a3, uint64_t a4, int16x8_t a5, double a6, double a7, double a8, int8x16_t a9)
{
  v10 = *a1;
  v9 = a1 + 1;
  *a5.i8 = vshr_n_u16(v10, 4uLL);
  *a2 = *a5.i8;
  v11 = a2 + 1;
  v12 = a3 - 4;
  if ((v12 & 7) != 0)
  {
    return sub_1A5954600(v9, v11, v12);
  }

  else
  {
    return sub_1A5954620(v9, v11, v12, a5, a6, a7, a8, a9, a4);
  }
}

uint64_t sub_1A5954620(uint16x8_t *a1, uint64_t a2, int a3, int16x8_t a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9)
{
  v9 = vshrq_n_u16(*a1, 4uLL);
  a4.i64[1] = v9.i64[0];
  return process_pixel_blue0(a1[1].i64, a2, (a3 - 8), a9, *&v9.i64[1], *v9.i64, *vshll_n_u16(*&vandq_s8(vsubq_s16(v9, a4), a8), 2uLL).i32);
}

uint64_t bitstream_write_code_blue0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v12 = __OFSUB__(a8, a6);
  v13 = a8 - a6;
  if ((v13 < 0) ^ v12 | (v13 == 0))
  {
    return full_buffer_blue0(a1, a2, a3, a4, a5, a6, a7, v13, a9, a10, a11, a12);
  }

  else
  {
    return process_pixel_green0(a1, a2, a3, a4, a5, a10, a11, a12, a6, a7, v13);
  }
}

uint64_t full_buffer_blue0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v12 = -a8;
  *a2 = a7 | (a5 >> v12);
  return process_pixel_green0(a1, (a2 + 1), a3, a4, a5, a10, a11, a12, a6, 0, a9 - v12);
}

uint64_t bitstream_write_code_green0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, __n128 a12@<Q2>)
{
  v12 = __OFSUB__(a8, a6);
  v13 = a8 - a6;
  if ((v13 < 0) ^ v12 | (v13 == 0))
  {
    return full_buffer_green0(a1, a2, a3, a4, a5, a6, a7, v13, a9, a10, a11, a12);
  }

  else
  {
    return process_pixel_green1(a1, a2, a3, a4, a5, a10, a11, a12, a6, a7, v13);
  }
}

uint64_t full_buffer_green0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, __n128 a12@<Q2>)
{
  v12 = -a8;
  *a2 = a7 | (a5 >> v12);
  return process_pixel_green1(a1, (a2 + 1), a3, a4, a5, a10, a11, a12, a6, 0, a9 - v12);
}

uint64_t bitstream_write_code_green1@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, __n128 a12@<Q2>)
{
  v12 = __OFSUB__(a8, a6);
  v13 = a8 - a6;
  if ((v13 < 0) ^ v12 | (v13 == 0))
  {
    return full_buffer_green1(a1, a2, a3, a4, a5, a6, a7, v13, a9, a10, a11, a12);
  }

  else
  {
    return process_pixel_red0(a1, a2, a3, a4, a5, a10, a11, a12, a6, a7, v13);
  }
}

uint64_t full_buffer_green1@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, __n128 a12@<Q2>)
{
  v12 = -a8;
  *a2 = a7 | (a5 >> v12);
  return process_pixel_red0(a1, (a2 + 1), a3, a4, a5, a10, a11, a12, a6, 0, a9 - v12);
}

uint64_t bitstream_write_code_red0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12)
{
  v12 = __OFSUB__(a8, a6);
  v13 = a8 - a6;
  if ((v13 < 0) ^ v12 | (v13 == 0))
  {
    return full_buffer_red0(a1, a2, a3, a4, a5, a6, a7, v13, a9);
  }

  else
  {
    return process_pixel_blue1(a1, a2, a3, a9, a4, a10, a11, a12);
  }
}

uint64_t bitstream_write_code_blue1@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>)
{
  v13 = __OFSUB__(a8, a6);
  v14 = a8 - a6;
  if ((v14 < 0) ^ v13 | (v14 == 0))
  {
    return full_buffer_blue1(a1, a2, a3, a4, a5, a6, a7, v14, a9, a10, a11, a12, a13);
  }

  else
  {
    return process_pixel_green2(a1, a2, a3, a4, a5, a10, a11, a12, a13, a6, a7, v14);
  }
}

uint64_t full_buffer_blue1@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>)
{
  v13 = -a8;
  *a2 = a7 | (a5 >> v13);
  return process_pixel_green2(a1, (a2 + 1), a3, a4, a5, a10, a11, a12, a13, a6, 0, a9 - v13);
}

uint64_t bitstream_write_code_green2@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, __n128 a13@<Q3>)
{
  v13 = __OFSUB__(a8, a6);
  v14 = a8 - a6;
  if ((v14 < 0) ^ v13 | (v14 == 0))
  {
    return full_buffer_green2(a1, a2, a3, a4, a5, a6, a7, v14, a9, a10, a11, a12, a13);
  }

  else
  {
    return process_pixel_green3(a1, a2, a3, a4, a5, a10, a11, a12, a13, a6, a7, v14);
  }
}

uint64_t full_buffer_green2@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, __n128 a13@<Q3>)
{
  v13 = -a8;
  *a2 = a7 | (a5 >> v13);
  return process_pixel_green3(a1, (a2 + 1), a3, a4, a5, a10, a11, a12, a13, a6, 0, a9 - v13);
}

uint64_t bitstream_write_code_green3@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, __n128 a13@<Q3>)
{
  v13 = __OFSUB__(a8, a6);
  v14 = a8 - a6;
  if ((v14 < 0) ^ v13 | (v14 == 0))
  {
    return full_buffer_green3(a1, a2, a3, a4, a5, a6, a7, v14, a9, a10, a11, a12, a13);
  }

  else
  {
    return process_pixel_red1(a1, a2, a3, a4, a5, a10, a11, a12, a13, a6, a7, v14);
  }
}

uint64_t full_buffer_green3@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, __n128 a13@<Q3>)
{
  v13 = -a8;
  *a2 = a7 | (a5 >> v13);
  return process_pixel_red1(a1, (a2 + 1), a3, a4, a5, a10, a11, a12, a13, a6, 0, a9 - v13);
}

uint64_t bitstream_write_code_red1@<X0>(uint16x8_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, int16x8_t a10@<Q0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, int8x16_t a14@<Q4>)
{
  v14 = __OFSUB__(a8, a6);
  v15 = a8 - a6;
  if ((v15 < 0) ^ v14 | (v15 == 0))
  {
    return full_buffer_red1(a1, a2, a3, a4, a5, a6, a7, v15, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    return finish_quad_bgg4(a1, a2, a3, a4, v15, a10, a11, a12, a13, a14, a9);
  }
}

uint64_t full_buffer_red1@<X0>(uint16x8_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, int16x8_t a10@<Q0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, int8x16_t a14@<Q4>)
{
  v14 = -a8;
  *a2 = a7 | (a5 >> v14);
  return finish_quad_bgg4(a1, (a2 + 1), a3, a4, a5, a6, 0, a9 - v14, a10, a11, a12, a13, a14);
}

uint64_t finish_quad_bgg4@<X0>(uint16x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a8@<W7>, int16x8_t a9@<Q0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, int8x16_t a13@<Q4>, int w8_0@<W8>)
{
  if (a3)
  {
    return sub_1A5954620(a1, a2, a3, a9, a10, a11, a12, a13, a4);
  }

  else
  {
    return bitstream_write_flush_bgg4(a8, w8_0);
  }
}

uint64_t bitstream_write_flush_bgg4@<X0>(int a1@<W7>, int a2@<W8>, uint64_t x0_0@<X0>, _DWORD *x1_0@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>)
{
  if (a1 < 8)
  {
    return bitstream_write_quad_bgg4(x0_0, x1_0, a3, a4, a5, a6, a7);
  }

  v10 = a2 - a1;
  if (v10)
  {
    return flush_loop_bgg4(x0_0, x1_0, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    return done_bgg4(x0_0, x1_0);
  }
}

uint64_t flush_loop_bgg4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  do
  {
    HIDWORD(v8) = a7;
    LODWORD(v8) = a7;
    a7 = v8 >> 24;
    *a2++ = BYTE3(v8);
    v9 = __OFSUB__(a8, 8);
    a8 -= 8;
  }

  while (!((a8 < 0) ^ v9 | (a8 == 0)));
  return done_bgg4(a1, a2);
}

uint64_t first_pixel_luma(unsigned __int32 *a1, unsigned __int32 *a2, int a3, __n128 a4, uint64_t a5, int8x8_t a6)
{
  v7 = *a1;
  v6 = (a1 + 1);
  a4.n128_u32[0] = v7;
  *a2 = v7;
  v8 = a2 + 1;
  v9 = a3 - 4;
  a4.n128_u8[7] = HIBYTE(v7);
  if ((v9 & 7) != 0)
  {
    return process_quad_luma(v6, v8, v9, a4, a6);
  }

  else
  {
    return process_pixel_luma(v6, a4.n128_u64[0], v8, v9, a5);
  }
}

uint64_t process_quad_luma(__int32 *a1, uint64_t a2, int a3, __n128 a4, int8x8_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  a5.i32[0] = *a1;
  v10 = vext_s8(a4.n128_u64[0], a5, 7uLL);
  a4.n128_u8[7] = HIBYTE(*a1);
  v11.n128_u64[0] = vshll_n_u8(vsub_s8(a5, v10), 1uLL).u64[0];
  v11.n128_u64[1] = v11.n128_u64[0];
  return process_quad_luma4((a1 + 1), a2, (a3 - 4), a6, a4.n128_f64[0], v11, a7, a8, a9, a10);
}

uint64_t process_pixel_luma(double *a1, int8x8_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = *a1;
  _X0 = a1 + 1;
  __asm { PRFM            #0, [X0,#0x20] }

  return process_pixel_luma0(_X0, a3, (a4 - 8), a5, v6, vshll_n_u8(vsub_s8(*&v6, vext_s8(a2, *&v6, 7uLL)), 1uLL));
}

uint64_t bitstream_write_code_luma0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, float a11@<S1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_luma0(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_luma1(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_luma0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, float a11@<S1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_luma1(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_luma1@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_luma1(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_luma2(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_luma1@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_luma2(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_luma2@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_luma2(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_luma3(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_luma2@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_luma3(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_luma3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __n128 a9, __n128 a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_luma3(a1, a2, a3, a4, a5, a6, a7, v11, a9, a10);
  }

  else
  {
    return process_pixel_luma4(a1, a2, a3, a9.n128_f64[0], a10, a4);
  }
}

uint64_t bitstream_write_code_luma4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_luma4(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_luma5(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_luma4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_luma5(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_luma5@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_luma5(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_luma6(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_luma5@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_luma6(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_luma6@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_luma6(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_luma7(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_luma6@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_luma7(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_luma7@<X0>(double *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, int8x8_t a10@<D0>)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_luma7(a1, a2, a3, a4, a5, a6, a7, v11, a9, a10);
  }

  else
  {
    return finish_quad_luma(a1, a2, a3, a4, v11, a10, a9);
  }
}

uint64_t full_buffer_luma7@<X0>(double *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, int8x8_t a10@<D0>)
{
  v10 = -a8;
  *a2 = a7 | (a5 >> v10);
  return finish_quad_luma(a1, (a2 + 1), a3, a4, a5, a6, 0, a9 - v10, a10);
}

uint64_t finish_quad_luma@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a8@<W7>, int8x8_t a9@<D0>, int w8_0@<W8>)
{
  if (a3)
  {
    return process_pixel_luma(a1, a9, a2, a3, a4);
  }

  else
  {
    return bitstream_write_flush_luma(a8, w8_0);
  }
}

uint64_t bitstream_write_flush_luma@<X0>(int a1@<W7>, int a2@<W8>, uint64_t x0_0@<X0>, _DWORD *x1_0@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>)
{
  if (a1 < 8)
  {
    return bitstream_write_quad_luma(x0_0, x1_0, a3, a4, a5, a6, a7);
  }

  v10 = a2 - a1;
  if (v10)
  {
    return flush_loop_luma(x0_0, x1_0, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    return done_luma(x0_0, x1_0);
  }
}

uint64_t flush_loop_luma(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  do
  {
    HIDWORD(v8) = a7;
    LODWORD(v8) = a7;
    a7 = v8 >> 24;
    *a2++ = BYTE3(v8);
    v9 = __OFSUB__(a8, 8);
    a8 -= 8;
  }

  while (!((a8 < 0) ^ v9 | (a8 == 0)));
  return done_luma(a1, a2);
}

uint64_t first_pixel_chroma(__int32 *a1, __int32 *a2, int a3, __n128 a4, uint64_t a5, int8x8_t a6)
{
  v7 = *a1;
  v6 = a1 + 1;
  a4.n128_u32[0] = v7;
  *a2 = v7;
  v8 = a2 + 1;
  v9 = a3 - 4;
  a4.n128_u16[3] = HIWORD(v7);
  if ((v9 & 7) != 0)
  {
    return process_quad_chroma(v6, v8, v9, a4, a6);
  }

  else
  {
    return process_pixel_luma(v6, a4.n128_u64[0], v8, v9, a5);
  }
}

uint64_t process_quad_chroma(__int32 *a1, uint64_t a2, int a3, __n128 a4, int8x8_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  a5.i32[0] = *a1;
  v10 = vext_s8(a4.n128_u64[0], a5, 6uLL);
  a4.n128_u16[3] = HIWORD(*a1);
  v11.n128_u64[0] = vshll_n_u8(vsub_s8(a5, v10), 1uLL).u64[0];
  v11.n128_u64[1] = v11.n128_u64[0];
  return process_quad_chroma4((a1 + 1), a2, (a3 - 4), a6, a4.n128_f64[0], v11, a7, a8, a9, a10);
}

uint64_t process_pixel_chroma(double *a1, int8x8_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = *a1;
  _X0 = a1 + 1;
  __asm { PRFM            #0, [X0,#0x20] }

  return process_pixel_chroma0(_X0, a3, (a4 - 8), a5, v6, vshll_n_u8(vsub_s8(*&v6, vext_s8(a2, *&v6, 6uLL)), 1uLL));
}

uint64_t bitstream_write_code_chroma0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, float a11@<S1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_chroma0(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_chroma1(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_chroma0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, float a11@<S1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_chroma1(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_chroma1@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_chroma1(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_chroma2(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_chroma1@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_chroma2(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_chroma2@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_chroma2(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_chroma3(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_chroma2@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, double a11@<D1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_chroma3(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_chroma3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __n128 a9, __n128 a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_chroma3(a1, a2, a3, a4, a5, a6, a7, v11, a9, a10);
  }

  else
  {
    return process_pixel_chroma4(a1, a2, a3, a9.n128_f64[0], a10, a4);
  }
}

uint64_t bitstream_write_code_chroma4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_chroma4(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_chroma5(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_chroma4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_chroma5(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_chroma5@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_chroma5(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_chroma6(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_chroma5@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_chroma6(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_chroma6@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_chroma6(a1, a2, a3, a4, a5, a6, a7, v12, a9, a10, a11);
  }

  else
  {
    return process_pixel_chroma7(a1, a2, a3, a4, a5, a10, a11, a6, a7, v12);
  }
}

uint64_t full_buffer_chroma6@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, double a10@<D0>, __n128 a11@<Q1>)
{
  v11 = -a8;
  *a2 = a7 | (a5 >> v11);
  return process_pixel_chroma7(a1, (a2 + 1), a3, a4, a5, a10, a11, a6, 0, a9 - v11);
}

uint64_t bitstream_write_code_chroma7@<X0>(double *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char a9@<W8>, int8x8_t a10@<D0>)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_chroma7(a1, a2, a3, a4, a5, a6, a7, v11, a9, a10);
  }

  else
  {
    return finish_quad_chroma(a1, a2, a3, a4, v11, a10, a9);
  }
}

uint64_t full_buffer_chroma7@<X0>(double *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, int8x8_t a10@<D0>)
{
  v10 = -a8;
  *a2 = a7 | (a5 >> v10);
  return finish_quad_chroma(a1, (a2 + 1), a3, a4, a5, a6, 0, a9 - v10, a10);
}

uint64_t finish_quad_chroma@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a8@<W7>, int8x8_t a9@<D0>, int w8_0@<W8>)
{
  if (a3)
  {
    return process_pixel_chroma(a1, a9, a2, a3, a4);
  }

  else
  {
    return bitstream_write_flush_chroma(a8, w8_0);
  }
}

uint64_t bitstream_write_flush_chroma@<X0>(int a1@<W7>, int a2@<W8>, uint64_t x0_0@<X0>, _DWORD *x1_0@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>)
{
  if (a1 < 8)
  {
    return bitstream_write_quad_chroma(x0_0, x1_0, a3, a4, a5, a6, a7);
  }

  v10 = a2 - a1;
  if (v10)
  {
    return flush_loop_chroma(x0_0, x1_0, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    return done_chroma(x0_0, x1_0);
  }
}

uint64_t flush_loop_chroma(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  do
  {
    HIDWORD(v8) = a7;
    LODWORD(v8) = a7;
    a7 = v8 >> 24;
    *a2++ = BYTE3(v8);
    v9 = __OFSUB__(a8, 8);
    a8 -= 8;
  }

  while (!((a8 < 0) ^ v9 | (a8 == 0)));
  return done_chroma(a1, a2);
}

uint64_t CMPhotoDNGCompressLineASM(uint64_t a1, int16x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a2.i16[0] = *(a1 + 40);
  a2.i16[1] = *(a1 + 44);
  return sub_1A5955088(a1, a2, *(a1 + 44), a4, a5, a6, v6);
}

uint64_t sub_1A5955088(uint64_t a1, int16x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  do
  {
    v12 = *v8++;
    v11 -= 8;
    v13 = vshrq_n_u16(vshlq_n_s16(v12, 2uLL), 4uLL);
    a2.i32[1] = v13.i32[0];
    a2.i64[1] = *(v13.i64 + 4);
    a2 = vsubq_s16(v13, a2);
    v14 = vshll_n_s16(*a2.i8, 2uLL);
    v15 = vshll_high_n_s16(a2, 2uLL);
    a2.i32[0] = v13.i32[3];
    v16 = *(v7 + v14.i32[0]);
    v17 = (*(v7 + v14.i32[0]) >> 8);
    v18 = __OFSUB__(v10, v16);
    v19 = v10 - v16;
    if (v19 < 0 != v18)
    {
      a1 = write_bitbuffer();
    }

    v20 = v9 | (v17 << v19);
    v21 = *(v7 + v14.i32[1]);
    v22 = (*(v7 + v14.i32[1]) >> 8);
    v18 = __OFSUB__(v19, v21);
    v23 = v19 - v21;
    if (v23 < 0 != v18)
    {
      a1 = write_bitbuffer();
    }

    v24 = v20 | (v22 << v23);
    v25 = *(v7 + v14.i32[2]);
    v26 = (*(v7 + v14.i32[2]) >> 8);
    v18 = __OFSUB__(v23, v25);
    v27 = v23 - v25;
    if (v27 < 0 != v18)
    {
      a1 = write_bitbuffer();
    }

    v28 = v24 | (v26 << v27);
    v29 = *(v7 + v14.i32[3]);
    v30 = (*(v7 + v14.i32[3]) >> 8);
    v18 = __OFSUB__(v27, v29);
    v31 = v27 - v29;
    if (v31 < 0 != v18)
    {
      a1 = write_bitbuffer();
    }

    v32 = v28 | (v30 << v31);
    v33 = *(v7 + v15.i32[0]);
    v34 = (*(v7 + v15.i32[0]) >> 8);
    v18 = __OFSUB__(v31, v33);
    v35 = v31 - v33;
    if (v35 < 0 != v18)
    {
      a1 = write_bitbuffer();
    }

    v36 = v32 | (v34 << v35);
    v37 = *(v7 + v15.i32[1]);
    v38 = (*(v7 + v15.i32[1]) >> 8);
    v18 = __OFSUB__(v35, v37);
    v39 = v35 - v37;
    if (v39 < 0 != v18)
    {
      a1 = write_bitbuffer();
    }

    v40 = v36 | (v38 << v39);
    v41 = *(v7 + v15.i32[2]);
    v42 = (*(v7 + v15.i32[2]) >> 8);
    v18 = __OFSUB__(v39, v41);
    v43 = v39 - v41;
    if (v43 < 0 != v18)
    {
      a1 = write_bitbuffer();
    }

    v44 = v40 | (v42 << v43);
    v45 = *(v7 + v15.i32[3]);
    v46 = (*(v7 + v15.i32[3]) >> 8);
    v18 = __OFSUB__(v43, v45);
    v10 = v43 - v45;
    if (v10 < 0 != v18)
    {
      a1 = write_bitbuffer();
    }

    v9 = v44 | (v46 << v10);
  }

  while (v11);
  return done(a1);
}

uint64_t done(uint64_t result)
{
  *(result + 8) = v1;
  *(result + 16) = v2;
  *(result + 24) = v3;
  *(result + 32) = v4;
  return result;
}

void byte_0()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_1();
}

void byte_1()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_2();
}

void byte_2()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_3();
}

void byte_3()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_4();
}

void byte_4()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_5();
}

void byte_5()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_6();
}

void byte_6()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_7();
}

void byte_7()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  write_bitbuffer_done();
}

uint64_t SlimXEncodeBlocks_NEON(uint64_t *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v1078 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a1[2];
  v12 = *(a1 + 8);
  v11 = *(a1 + 9);
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = predictionPattern[v12];
  v16 = a1[10];
  v17 = *(v16 + 128);
  if (v17 && *(v16 + 88) + v17 - v10 < 160)
  {
    return 4294951888;
  }

  v18 = 4294951891;
  v19 = vdupq_n_s16(-v11);
  switch(v12)
  {
    case 0:
      v192 = vmovl_u8(*v9);
      v193 = vmovl_u8(*(v9 + 8));
      v190 = vmovl_u8(*(v9 + v14));
      v191 = vmovl_u8(*(v9 + v14 + 8));
      v196 = (v9 + v14 + v14);
      v188 = vmovl_u8(*v196);
      v189 = vmovl_u8(v196[1]);
      v197 = (v196 + v14);
      v194 = vmovl_u8(*v197);
      v195 = vmovl_u8(v197[1]);
      goto LABEL_40;
    case 1:
      v20 = vmovl_u8(*v9);
      v21 = vmovl_u8(*(v9 + 8));
      v22 = vmovl_u8(*(v9 + v14));
      v23 = vmovl_u8(*(v9 + v14 + 8));
      v233 = (v9 + v14 + v14);
      v25 = vmovl_u8(*v233);
      v26 = vmovl_u8(v233[1]);
      v234 = (v233 + v14);
      v28 = vmovl_u8(*v234);
      v29 = vmovl_u8(v234[1]);
      goto LABEL_47;
    case 2:
      v135 = vmovl_u8(*v9);
      v136 = vmovl_u8(*(v9 + v14));
      v137 = (v9 + v14 + v14);
      v138 = vmovl_u8(*v137);
      v139 = (v137 + v14);
      v140 = vmovl_u8(*v139);
      v141 = (v139 + v14);
      v142 = vmovl_u8(*v141);
      v143 = (v141 + v14);
      v144 = vmovl_u8(*v143);
      v145 = (v143 + v14);
      v146 = vmovl_u8(*v145);
      v147 = vmovl_u8(*(v145 + v14));
      v33 = vtrn1q_s16(v135, v142);
      v148 = vtrn2q_s16(v135, v142);
      v35 = vtrn1q_s16(v138, v146);
      v149 = vtrn2q_s16(v138, v146);
      v150 = vtrn1q_s16(v136, v144);
      v38 = vtrn2q_s16(v136, v144);
      v151 = vtrn1q_s16(v140, v147);
      v40 = vtrn2q_s16(v140, v147);
      v36 = vzip2q_s64(v150, v148);
      v34.i64[0] = v150.i64[0];
      v34.i64[1] = v148.i64[0];
      v39 = vzip2q_s64(v151, v149);
      v37.i64[0] = v151.i64[0];
      v37.i64[1] = v149.i64[0];
      goto LABEL_64;
    case 3:
      v198 = vmovl_u8(*v9);
      v199 = vmovl_u8(*(v9 + v14));
      v200 = (v9 + v14 + v14);
      v201 = vmovl_u8(*v200);
      v202 = (v200 + v14);
      v203 = vmovl_u8(*v202);
      v204 = (v202 + v14);
      v205 = vmovl_u8(*v204);
      v206 = (v204 + v14);
      v207 = vmovl_u8(*v206);
      v208 = (v206 + v14);
      v209 = vmovl_u8(*v208);
      v210 = vmovl_u8(*(v208 + v14));
      v33 = vtrn1q_s32(v198, v205);
      v211 = vtrn2q_s32(v198, v205);
      v35 = vtrn1q_s32(v199, v207);
      v212 = vtrn2q_s32(v199, v207);
      v213 = vtrn1q_s32(v201, v209);
      v38 = vtrn2q_s32(v201, v209);
      v214 = vtrn1q_s32(v203, v210);
      v40 = vtrn2q_s32(v203, v210);
      v34 = vzip1q_s64(v213, v211);
      v36 = vzip2q_s64(v213, v211);
      v37 = vzip1q_s64(v214, v212);
      v39 = vzip2q_s64(v214, v212);
      goto LABEL_64;
    case 6:
      v152 = vmovl_u8(*v9);
      v153 = vmovl_u8(*(v9 + 8));
      v154 = vmovl_u8(*(v9 + v14));
      v155 = vmovl_u8(*(v9 + v14 + 8));
      v156 = (v9 + v14 + v14);
      v157 = vmovl_u8(*v156);
      v158 = vmovl_u8(v156[1]);
      v159 = (v156 + v14);
      v160 = vmovl_u8(*v159);
      v161 = vmovl_u8(v159[1]);
      if (v11)
      {
        v152 = vshlq_u16(v152, v19);
        v154 = vshlq_u16(v154, v19);
        v157 = vshlq_u16(v157, v19);
        v160 = vshlq_u16(v160, v19);
        v153 = vshlq_u16(v153, v19);
        v155 = vshlq_u16(v155, v19);
        v158 = vshlq_u16(v158, v19);
        v161 = vshlq_u16(v161, v19);
      }

      v162 = vtrn1q_s32(v152, v153);
      v163 = vtrn2q_s32(v152, v153);
      v164 = vtrn1q_s32(v154, v155);
      v165 = vtrn2q_s32(v154, v155);
      v166 = vtrn1q_s32(v157, v158);
      v167 = vtrn2q_s32(v157, v158);
      v168 = vtrn1q_s32(v160, v161);
      v169 = vtrn2q_s32(v160, v161);
      v33 = vtrn1q_s16(v162, v166);
      v34 = vtrn2q_s16(v162, v166);
      v35 = vtrn1q_s16(v164, v168);
      v37 = vtrn2q_s16(v164, v168);
      v36 = vtrn1q_s16(v163, v167);
      v38 = vtrn2q_s16(v163, v167);
      v39 = vtrn1q_s16(v165, v169);
      v40 = vtrn2q_s16(v165, v169);
      goto LABEL_64;
    case 7:
      v1077 = 0uLL;
      v1076 = 0uLL;
      vectorload_1x16_packed10(v9, v13, &v1077, &v1076);
      v1035 = v1076;
      v1047 = v1077;
      v186 = (v9 + v14);
      vectorload_1x16_packed10(v186, v13, &v1077, &v1076);
      v1016 = v1076;
      v1025 = v1077;
      v187 = (v186 + v14);
      vectorload_1x16_packed10(v187, v13, &v1077, &v1076);
      v1003 = v1076;
      v1009 = v1077;
      vectorload_1x16_packed10((v187 + v14), v13, &v1077, &v1076);
      v189 = v1003;
      v188 = v1009;
      v191 = v1016;
      v190 = v1025;
      v193 = v1035;
      v192 = v1047;
      v195 = v1076;
      v194 = v1077;
LABEL_40:
      v33.i64[0] = v192.i64[0];
      v33.i64[1] = v188.i64[0];
      v34 = vzip2q_s64(v192, v188);
      v35.i64[0] = v190.i64[0];
      v35.i64[1] = v194.i64[0];
      v36.i64[0] = v193.i64[0];
      v36.i64[1] = v189.i64[0];
      v37 = vzip2q_s64(v190, v194);
      v38 = vzip2q_s64(v193, v189);
      v39.i64[0] = v191.i64[0];
      v39.i64[1] = v195.i64[0];
      v40 = vzip2q_s64(v191, v195);
      goto LABEL_64;
    case 8:
      v1077 = 0uLL;
      v1076 = 0uLL;
      vectorload_1x16_packed10(v9, v13, &v1077, &v1076);
      v1036 = v1076;
      v1048 = v1077;
      v235 = (v9 + v14);
      vectorload_1x16_packed10(v235, v13, &v1077, &v1076);
      v1017 = v1076;
      v1026 = v1077;
      v236 = (v235 + v14);
      vectorload_1x16_packed10(v236, v13, &v1077, &v1076);
      v1004 = v1076;
      v1010 = v1077;
      vectorload_1x16_packed10((v236 + v14), v13, &v1077, &v1076);
      v26 = v1004;
      v25 = v1010;
      v23 = v1017;
      v22 = v1026;
      v21 = v1036;
      v20 = v1048;
      v29 = v1076;
      v28 = v1077;
      goto LABEL_47;
    case 10:
    case 24:
      v20 = *v9;
      v21 = *(v9 + 16);
      v22 = *(v9 + v14);
      v23 = *(v9 + v14 + 16);
      v24 = (v9 + v14 + v14);
      v25 = *v24;
      v26 = v24[1];
      v27 = &v24->i8[v14];
      v28 = *v27;
      v29 = *(v27 + 1);
      if (*(a1 + 40))
      {
        v30 = vqaddq_u16(vqaddq_u16(vqaddq_u16(vqaddq_u16(vqaddq_u16(vqaddq_u16(vqaddq_u16(vshlq_n_s16(v20, 0xCuLL), vshlq_n_s16(v22, 0xCuLL)), vshlq_n_s16(v25, 0xCuLL)), vshlq_n_s16(v28, 0xCuLL)), vshlq_n_s16(v21, 0xCuLL)), vshlq_n_s16(v23, 0xCuLL)), vshlq_n_s16(v26, 0xCuLL)), vshlq_n_s16(v29, 0xCuLL));
        v30.i16[0] = vmaxvq_u16(v30);
        if (v30.i32[0])
        {
          return 4294951887;
        }
      }

      if (v11)
      {
        v20 = vshlq_u16(v20, v19);
        v22 = vshlq_u16(v22, v19);
        v25 = vshlq_u16(v25, v19);
        v28 = vshlq_u16(v28, v19);
        v21 = vshlq_u16(v21, v19);
        v23 = vshlq_u16(v23, v19);
        v26 = vshlq_u16(v26, v19);
        v29 = vshlq_u16(v29, v19);
      }

      if (v12 == 11)
      {
LABEL_47:
        v33 = vtrn1q_s16(v20, v25);
        v34 = vtrn2q_s16(v20, v25);
        v35 = vtrn1q_s16(v22, v28);
        v37 = vtrn2q_s16(v22, v28);
        v36 = vtrn1q_s16(v21, v26);
        v38 = vtrn2q_s16(v21, v26);
        v39 = vtrn1q_s16(v23, v29);
        v40 = vtrn2q_s16(v23, v29);
      }

      else
      {
        v33.i64[0] = v20.i64[0];
        v33.i64[1] = v25.i64[0];
        v34 = vzip2q_s64(v20, v25);
        v35.i64[0] = v22.i64[0];
        v35.i64[1] = v28.i64[0];
        v36.i64[0] = v21.i64[0];
        v36.i64[1] = v26.i64[0];
        v37 = vzip2q_s64(v22, v28);
        v38 = vzip2q_s64(v21, v26);
        v39.i64[0] = v23.i64[0];
        v39.i64[1] = v29.i64[0];
        v40 = vzip2q_s64(v23, v29);
      }

LABEL_61:
      if (v12 >= 0x11 && *(a1 + 27))
      {
        v294 = *(a1 + 56);
        v295 = vdupq_n_s16(16 - v294);
        v296 = vdupq_n_s16(v294 - 1);
        v297 = vdupq_n_s16(-v294);
        v298 = vqsubq_u16(v295, vclzq_s16(v33));
        v299.i64[0] = -1;
        v299.i64[1] = -1;
        v300.i64[0] = 0x1000100010001;
        v300.i64[1] = 0x1000100010001;
        v33 = vaddq_s16(vshlq_u16(v298, v296), vshlq_u16(vaddq_s16(vsubq_s16(v33, vshlq_u16(v33, v297)), vshlq_u16(v300, vaddq_s16(v298, v299))), vnegq_s16(v298)));
        v301 = vqsubq_u16(v295, vclzq_s16(v35));
        v35 = vaddq_s16(vshlq_u16(v301, v296), vshlq_u16(vaddq_s16(vsubq_s16(v35, vshlq_u16(v35, v297)), vshlq_u16(v300, vaddq_s16(v301, v299))), vnegq_s16(v301)));
        v302 = vqsubq_u16(v295, vclzq_s16(v34));
        v34 = vaddq_s16(vshlq_u16(v302, v296), vshlq_u16(vaddq_s16(vsubq_s16(v34, vshlq_u16(v34, v297)), vshlq_u16(v300, vaddq_s16(v302, v299))), vnegq_s16(v302)));
        v303 = vqsubq_u16(v295, vclzq_s16(v37));
        v37 = vaddq_s16(vshlq_u16(v303, v296), vshlq_u16(vaddq_s16(vsubq_s16(v37, vshlq_u16(v37, v297)), vshlq_u16(v300, vaddq_s16(v303, v299))), vnegq_s16(v303)));
        v304 = vqsubq_u16(v295, vclzq_s16(v36));
        v36 = vaddq_s16(vshlq_u16(v304, v296), vshlq_u16(vaddq_s16(vsubq_s16(v36, vshlq_u16(v36, v297)), vshlq_u16(v300, vaddq_s16(v304, v299))), vnegq_s16(v304)));
        v305 = vqsubq_u16(v295, vclzq_s16(v39));
        v39 = vaddq_s16(vshlq_u16(v305, v296), vshlq_u16(vaddq_s16(vsubq_s16(v39, vshlq_u16(v39, v297)), vshlq_u16(v300, vaddq_s16(v305, v299))), vnegq_s16(v305)));
        v306 = vqsubq_u16(v295, vclzq_s16(v38));
        v38 = vaddq_s16(vshlq_u16(v306, v296), vshlq_u16(vaddq_s16(vsubq_s16(v38, vshlq_u16(v38, v297)), vshlq_u16(v300, vaddq_s16(v306, v299))), vnegq_s16(v306)));
        v307 = vqsubq_u16(v295, vclzq_s16(v40));
        v40 = vaddq_s16(vshlq_u16(v307, v296), vshlq_u16(vaddq_s16(vsubq_s16(v40, vshlq_u16(v40, v297)), vshlq_u16(v300, vaddq_s16(v307, v299))), vnegq_s16(v307)));
      }

LABEL_64:
      v308 = a1 + 21;
      v309 = vminq_u16(v33, v35);
      v309.i16[0] = vminvq_u16(v309);
      v310 = v309.i32[0];
      v311 = vmaxq_u16(v33, v35);
      v311.i16[0] = vmaxvq_u16(v311);
      v312 = (a1 + ((v15 >> 9) & 0x7FFFF8) + 42);
      v313 = v311.i32[0] - v310;
      v314 = __clz(v311.i32[0] - v310);
      *(a1 + 22) = 32 - v314 - *v312;
      *(a1 + 21) = 32 - v314;
      v315 = 1 << -v314;
      v316 = v312[2];
      if (v310 < v316 || (v315 + v316) <= v311.i32[0])
      {
        v318 = (v310 - ((v315 - v313) >> 1)) & ~((v310 - ((v315 - v313) >> 1)) >> 31);
        v319 = v318 - v316;
        LOWORD(v316) = v318;
      }

      else
      {
        v319 = 0;
      }

      *(a1 + 24) = v319;
      *(a1 + 23) = v316;
      v320 = vminq_u16(v34, v37);
      v320.i16[0] = vminvq_u16(v320);
      v321 = v320.i32[0];
      v322 = vmaxq_u16(v34, v37);
      v322.i16[0] = vmaxvq_u16(v322);
      v323 = &v308[4 * ((v15 >> 8) & 0xF)];
      v324 = v322.i32[0] - v321;
      v325 = __clz(v322.i32[0] - v321);
      *(a1 + 26) = 32 - v325 - *v323;
      *(a1 + 25) = 32 - v325;
      v326 = 1 << -v325;
      v327 = v323[2];
      if (v321 < v327 || (v326 + v327) <= v322.i32[0])
      {
        v329 = (v321 - ((v326 - v324) >> 1)) & ~((v321 - ((v326 - v324) >> 1)) >> 31);
        v330 = v329 - v327;
        LOWORD(v327) = v329;
      }

      else
      {
        v330 = 0;
      }

      *(a1 + 28) = v330;
      *(a1 + 27) = v327;
      v331 = vminq_u16(v36, v39);
      v331.i16[0] = vminvq_u16(v331);
      v332 = v331.i32[0];
      v333 = vmaxq_u16(v36, v39);
      v333.i16[0] = vmaxvq_u16(v333);
      v334 = &v308[4 * (v15 >> 4)];
      v335 = v333.i32[0] - v332;
      v336 = __clz(v333.i32[0] - v332);
      *(a1 + 30) = 32 - v336 - *v334;
      *(a1 + 29) = 32 - v336;
      v337 = 1 << -v336;
      v338 = v334[2];
      if (v332 < v338 || (v337 + v338) <= v333.i32[0])
      {
        v340 = (v332 - ((v337 - v335) >> 1)) & ~((v332 - ((v337 - v335) >> 1)) >> 31);
        v341 = v340 - v338;
        LOWORD(v338) = v340;
      }

      else
      {
        v341 = 0;
      }

      *(a1 + 32) = v341;
      *(a1 + 31) = v338;
      if (v12 == 19)
      {
        v342 = *(a1 + 36);
      }

      else
      {
        v343 = vminq_u16(v38, v40);
        v343.i16[0] = vminvq_u16(v343);
        v344 = v343.i32[0];
        v345 = vmaxq_u16(v38, v40);
        v345.i16[0] = vmaxvq_u16(v345);
        v346 = &v308[4 * (v15 & 0xF)];
        v347 = __clz(v345.i32[0] - v344);
        *(a1 + 34) = 32 - v347 - *v346;
        *(a1 + 33) = 32 - v347;
        v348 = 1 << -v347;
        v349 = v346[2];
        if (v344 < v349 || (v348 + v349) <= v345.i32[0])
        {
          v350 = (v344 - ((v348 - (v345.i32[0] - v344)) >> 1)) & ~((v344 - ((v348 - (v345.i32[0] - v344)) >> 1)) >> 31);
          v342 = v350 - v349;
        }

        else
        {
          v342 = 0;
          LOWORD(v350) = v349;
        }

        *(a1 + 36) = v342;
        *(a1 + 35) = v350;
      }

      v351 = 0;
      v352 = 0;
      v353 = 0;
      v354 = 0;
      v367 = v319 == 0;
      v355 = v319 != 0;
      if (v367)
      {
        v356 = 2;
      }

      else
      {
        v356 = 3;
      }

      if (v330)
      {
        v355 = v356;
      }

      if (v341)
      {
        v355 |= 4u;
      }

      if (v342)
      {
        v355 |= 8u;
      }

      v357 = a1 + 22;
      break;
    case 11:
    case 25:
      v20 = *v9;
      v21 = *(v9 + 16);
      v22 = *(v9 + v14);
      v23 = *(v9 + v14 + 16);
      v31 = (v9 + v14 + v14);
      v25 = *v31;
      v26 = v31[1];
      v32 = &v31->i8[v14];
      v28 = *v32;
      v29 = *(v32 + 1);
      if (!v11)
      {
        goto LABEL_47;
      }

      goto LABEL_37;
    case 12:
      v79 = (v9 + v14 + v14);
      v80 = *v79;
      v81 = v79[1];
      v82 = (v79 + v14);
      v83 = veorq_s8((*&vcltzq_s16(*v9) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v9);
      v84 = veorq_s8((*&vcltzq_s16(*(v9 + v14)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + v14));
      v85 = veorq_s8((*&vcltzq_s16(v80) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v80);
      v86 = veorq_s8((*&vcltzq_s16(*v82) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v82);
      v87 = veorq_s8((*&vcltzq_s16(*(v9 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + 16));
      v88 = veorq_s8((*&vcltzq_s16(*(v9 + v14 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + v14 + 16));
      v89 = veorq_s8((*&vcltzq_s16(v81) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v81);
      v90 = veorq_s8((*&vcltzq_s16(v82[1]) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v82[1]);
      if (v11)
      {
        v83 = vshlq_u16(v83, v19);
        v84 = vshlq_u16(v84, v19);
        v85 = vshlq_u16(v85, v19);
        v86 = vshlq_u16(v86, v19);
        v87 = vshlq_u16(v87, v19);
        v88 = vshlq_u16(v88, v19);
        v89 = vshlq_u16(v89, v19);
        v90 = vshlq_u16(v90, v19);
      }

      v91 = vtrn1q_s32(v83, v87);
      v92 = vtrn2q_s32(v83, v87);
      v93 = vtrn1q_s32(v84, v88);
      v94 = vtrn2q_s32(v84, v88);
      v95 = vtrn1q_s32(v85, v89);
      v96 = vtrn2q_s32(v85, v89);
      v97 = vtrn1q_s32(v86, v90);
      v98 = vtrn2q_s32(v86, v90);
      v33 = vtrn1q_s16(v91, v95);
      v34 = vtrn2q_s16(v91, v95);
      v35 = vtrn1q_s16(v93, v97);
      v37 = vtrn2q_s16(v93, v97);
      v36 = vtrn1q_s16(v92, v96);
      v38 = vtrn2q_s16(v92, v96);
      v39 = vtrn1q_s16(v94, v98);
      v40 = vtrn2q_s16(v94, v98);
      goto LABEL_64;
    case 13:
      v58 = (v9 + v14 + v14);
      v59 = *v58;
      v60 = (v58 + v14);
      v61 = *v60;
      v62 = (v60 + v14);
      v63 = *v62;
      v64 = (v62 + v14);
      v65 = *v64;
      v66 = (v64 + v14);
      v67 = veorq_s8((*&vcltzq_s16(*v9) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v9);
      v68 = veorq_s8((*&vcltzq_s16(v59) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v59);
      v69 = veorq_s8((*&vcltzq_s16(*(v9 + v14)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + v14));
      v70 = veorq_s8((*&vcltzq_s16(v61) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v61);
      v71 = veorq_s8((*&vcltzq_s16(v63) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v63);
      v72 = veorq_s8((*&vcltzq_s16(*v66) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v66);
      v73 = veorq_s8((*&vcltzq_s16(v65) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v65);
      v74 = veorq_s8((*&vcltzq_s16(*(v66 + v14)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v66 + v14));
      if (v11)
      {
        v67 = vshlq_u16(v67, v19);
        v68 = vshlq_u16(v68, v19);
        v69 = vshlq_u16(v69, v19);
        v70 = vshlq_u16(v70, v19);
        v71 = vshlq_u16(v71, v19);
        v72 = vshlq_u16(v72, v19);
        v73 = vshlq_u16(v73, v19);
        v74 = vshlq_u16(v74, v19);
      }

      v33 = vtrn1q_s16(v67, v71);
      v75 = vtrn2q_s16(v67, v71);
      v35 = vtrn1q_s16(v68, v72);
      v76 = vtrn2q_s16(v68, v72);
      v77 = vtrn1q_s16(v69, v73);
      v38 = vtrn2q_s16(v69, v73);
      v78 = vtrn1q_s16(v70, v74);
      v40 = vtrn2q_s16(v70, v74);
      v36 = vzip2q_s64(v77, v75);
      v34.i64[0] = v77.i64[0];
      v34.i64[1] = v75.i64[0];
      v39 = vzip2q_s64(v78, v76);
      v37.i64[0] = v78.i64[0];
      v37.i64[1] = v76.i64[0];
      goto LABEL_64;
    case 14:
      v254 = (v9 + v14 + v14);
      v255 = *v254;
      v256 = (v254 + v14);
      v257 = *v256;
      v258 = (v256 + v14);
      v259 = *v258;
      v260 = (v258 + v14);
      v261 = *v260;
      v262 = (v260 + v14);
      v263 = veorq_s8((*&vcltzq_s16(*v9) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v9);
      v264 = veorq_s8((*&vcltzq_s16(*(v9 + v14)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + v14));
      v265 = veorq_s8((*&vcltzq_s16(v255) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v255);
      v266 = veorq_s8((*&vcltzq_s16(v257) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v257);
      v267 = veorq_s8((*&vcltzq_s16(v259) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v259);
      v268 = veorq_s8((*&vcltzq_s16(v261) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v261);
      v269 = veorq_s8((*&vcltzq_s16(*v262) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v262);
      v270 = veorq_s8((*&vcltzq_s16(*(v262 + v14)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v262 + v14));
      if (v11)
      {
        v263 = vshlq_u16(v263, v19);
        v264 = vshlq_u16(v264, v19);
        v265 = vshlq_u16(v265, v19);
        v266 = vshlq_u16(v266, v19);
        v267 = vshlq_u16(v267, v19);
        v268 = vshlq_u16(v268, v19);
        v269 = vshlq_u16(v269, v19);
        v270 = vshlq_u16(v270, v19);
      }

      v33 = vtrn1q_s32(v263, v267);
      v271 = vtrn2q_s32(v263, v267);
      v35 = vtrn1q_s32(v264, v268);
      v272 = vtrn2q_s32(v264, v268);
      v273 = vtrn1q_s32(v265, v269);
      v38 = vtrn2q_s32(v265, v269);
      v274 = vtrn1q_s32(v266, v270);
      v40 = vtrn2q_s32(v266, v270);
      v34 = vzip1q_s64(v273, v271);
      v36 = vzip2q_s64(v273, v271);
      v37 = vzip1q_s64(v274, v272);
      v39 = vzip2q_s64(v274, v272);
      goto LABEL_64;
    case 15:
      v170 = (v9 + v14 + v14);
      v171 = *v170;
      v172 = v170[1];
      v173 = (v170 + v14);
      v174 = veorq_s8((*&vcltzq_s16(*v9) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v9);
      v175 = veorq_s8((*&vcltzq_s16(*(v9 + v14)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + v14));
      v176 = veorq_s8((*&vcltzq_s16(v171) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v171);
      v177 = veorq_s8((*&vcltzq_s16(*v173) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v173);
      v178 = veorq_s8((*&vcltzq_s16(*(v9 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + 16));
      v179 = veorq_s8((*&vcltzq_s16(*(v9 + v14 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + v14 + 16));
      v180 = veorq_s8((*&vcltzq_s16(v172) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v172);
      v181 = veorq_s8((*&vcltzq_s16(v173[1]) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v173[1]);
      if (v11)
      {
        v174 = vshlq_u16(v174, v19);
        v175 = vshlq_u16(v175, v19);
        v176 = vshlq_u16(v176, v19);
        v177 = vshlq_u16(v177, v19);
        v178 = vshlq_u16(v178, v19);
        v179 = vshlq_u16(v179, v19);
        v180 = vshlq_u16(v180, v19);
        v181 = vshlq_u16(v181, v19);
      }

      v33.i64[0] = v174.i64[0];
      v33.i64[1] = v176.i64[0];
      v34 = vzip2q_s64(v174, v176);
      v35.i64[0] = v175.i64[0];
      v35.i64[1] = v177.i64[0];
      v36.i64[0] = v178.i64[0];
      v36.i64[1] = v180.i64[0];
      v37 = vzip2q_s64(v175, v177);
      v38 = vzip2q_s64(v178, v180);
      v39.i64[0] = v179.i64[0];
      v39.i64[1] = v181.i64[0];
      v40 = vzip2q_s64(v179, v181);
      goto LABEL_64;
    case 16:
      v182 = (v9 + v14 + v14);
      v183 = *v182;
      v184 = v182[1];
      v185 = (v182 + v14);
      v20 = veorq_s8((*&vcltzq_s16(*v9) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v9);
      v22 = veorq_s8((*&vcltzq_s16(*(v9 + v14)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + v14));
      v25 = veorq_s8((*&vcltzq_s16(v183) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v183);
      v28 = veorq_s8((*&vcltzq_s16(*v185) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v185);
      v21 = veorq_s8((*&vcltzq_s16(*(v9 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + 16));
      v23 = veorq_s8((*&vcltzq_s16(*(v9 + v14 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + v14 + 16));
      v26 = veorq_s8((*&vcltzq_s16(v184) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v184);
      v29 = veorq_s8((*&vcltzq_s16(v185[1]) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v185[1]);
      if (v11)
      {
LABEL_37:
        v20 = vshlq_u16(v20, v19);
        v22 = vshlq_u16(v22, v19);
        v25 = vshlq_u16(v25, v19);
        v28 = vshlq_u16(v28, v19);
        v21 = vshlq_u16(v21, v19);
        v23 = vshlq_u16(v23, v19);
        v26 = vshlq_u16(v26, v19);
        v29 = vshlq_u16(v29, v19);
      }

      goto LABEL_47;
    case 17:
      v237 = *v9;
      v238 = *(v9 + v14);
      v239 = (v9 + v14 + v14);
      v240 = *v239;
      v241 = (v239 + v14);
      v242 = *v241;
      v243 = (v241 + v14);
      v244 = *v243;
      v245 = (v243 + v14);
      v246 = *v245;
      v247 = (v245 + v14);
      v248 = *v247;
      v249 = *(v247 + v14);
      if (v11)
      {
        v237 = vshlq_u16(v237, v19);
        v240 = vshlq_u16(v240, v19);
        v244 = vshlq_u16(v244, v19);
        v248 = vshlq_u16(v248, v19);
        v238 = vshlq_u16(v238, v19);
        v242 = vshlq_u16(v242, v19);
        v246 = vshlq_u16(v246, v19);
        v249 = vshlq_u16(v249, v19);
      }

      v34 = vtrn1q_s16(v244, v237);
      v250 = vtrn2q_s16(v244, v237);
      v37 = vtrn1q_s16(v248, v240);
      v251 = vtrn2q_s16(v248, v240);
      v252 = vtrn1q_s16(v238, v246);
      v38 = vtrn2q_s16(v238, v246);
      v253 = vtrn1q_s16(v242, v249);
      v40 = vtrn2q_s16(v242, v249);
      v33 = vtrn1q_s32(v250, v252);
      v36 = vtrn2q_s32(v250, v252);
      v35 = vtrn1q_s32(v251, v253);
      v39 = vtrn2q_s32(v251, v253);
      goto LABEL_61;
    case 18:
      v215 = *v9;
      v216 = *(v9 + 16);
      v217 = *(v9 + v14);
      v218 = *(v9 + v14 + 16);
      v219 = (v9 + v14 + v14);
      v220 = *v219;
      v221 = v219[1];
      v222 = (v219 + v14);
      v223 = *v222;
      v224 = v222[1];
      if (v11)
      {
        v215 = vshlq_u16(v215, v19);
        v217 = vshlq_u16(v217, v19);
        v220 = vshlq_u16(v220, v19);
        v223 = vshlq_u16(v223, v19);
        v216 = vshlq_u16(v216, v19);
        v218 = vshlq_u16(v218, v19);
        v221 = vshlq_u16(v221, v19);
        v224 = vshlq_u16(v224, v19);
      }

      v225 = vtrn1q_s32(v215, v216);
      v226 = vtrn2q_s32(v215, v216);
      v227 = vtrn1q_s32(v217, v218);
      v228 = vtrn2q_s32(v217, v218);
      v229 = vtrn1q_s32(v220, v221);
      v230 = vtrn2q_s32(v220, v221);
      v231 = vtrn1q_s32(v223, v224);
      v232 = vtrn2q_s32(v223, v224);
      v33 = vtrn1q_s16(v225, v229);
      v34 = vtrn2q_s16(v225, v229);
      v35 = vtrn1q_s16(v227, v231);
      v37 = vtrn2q_s16(v227, v231);
      v36 = vtrn1q_s16(v226, v230);
      v38 = vtrn2q_s16(v226, v230);
      v39 = vtrn1q_s16(v228, v232);
      v40 = vtrn2q_s16(v228, v232);
      goto LABEL_61;
    case 19:
      *v33.i8 = vld3_s16(v9);
      v287 = (v9 + v14);
      v1079 = vld3_s16(v287);
      v288 = (v287 + v14);
      v33.i64[1] = v1079.val[0];
      v34.i64[0] = v289;
      v34.i64[1] = v1079.val[1];
      *v35.i8 = vld3_s16(v288);
      v290 = (v288 + v14);
      v1080 = vld3_s16(v290);
      v36.i64[0] = v291;
      v36.i64[1] = v1079.val[2];
      v35.i64[1] = v1080.val[0];
      v37.i64[0] = v292;
      v37.i64[1] = v1080.val[1];
      v39.i64[0] = v293;
      v39.i64[1] = v1080.val[2];
      v40 = 0uLL;
      if (v11)
      {
        v33 = vshlq_u16(v33, v19);
        v35 = vshlq_u16(v35, v19);
        v34 = vshlq_u16(v34, v19);
        v37 = vshlq_u16(v37, v19);
        v36 = vshlq_u16(v36, v19);
        v39 = vshlq_u16(v39, v19);
      }

      v38 = 0uLL;
      goto LABEL_61;
    case 20:
      v119 = *v9;
      v120 = *(v9 + v14);
      v121 = (v9 + v14 + v14);
      v122 = *v121;
      v123 = (v121 + v14);
      v124 = *v123;
      v125 = (v123 + v14);
      v126 = *v125;
      v127 = (v125 + v14);
      v128 = *v127;
      v129 = (v127 + v14);
      v130 = *v129;
      v131 = *(v129 + v14);
      if (v11)
      {
        v119 = vshlq_u16(v119, v19);
        v122 = vshlq_u16(v122, v19);
        v120 = vshlq_u16(v120, v19);
        v124 = vshlq_u16(v124, v19);
        v126 = vshlq_u16(v126, v19);
        v130 = vshlq_u16(v130, v19);
        v128 = vshlq_u16(v128, v19);
        v131 = vshlq_u16(v131, v19);
      }

      v33 = vtrn1q_s16(v119, v126);
      v132 = vtrn2q_s16(v119, v126);
      v35 = vtrn1q_s16(v122, v130);
      v133 = vtrn2q_s16(v122, v130);
      v134 = vtrn1q_s16(v120, v128);
      v38 = vtrn2q_s16(v120, v128);
      v37 = vtrn1q_s16(v124, v131);
      v40 = vtrn2q_s16(v124, v131);
      v36 = vzip2q_s64(v134, v132);
      v34.i64[0] = v134.i64[0];
      v34.i64[1] = v132.i64[0];
      v39 = vzip2q_s64(v37, v133);
      goto LABEL_57;
    case 21:
      v275 = *v9;
      v276 = *(v9 + 16);
      v277 = *(v9 + v14);
      v278 = *(v9 + v14 + 16);
      v279 = (v9 + v14 + v14);
      v280 = *v279;
      v281 = v279[1];
      v282 = (v279 + v14);
      v283 = *v282;
      v37 = v282[1];
      if (v11)
      {
        v275 = vshlq_u16(v275, v19);
        v280 = vshlq_u16(v280, v19);
        v277 = vshlq_u16(v277, v19);
        v283 = vshlq_u16(v283, v19);
        v276 = vshlq_u16(v276, v19);
        v281 = vshlq_u16(v281, v19);
        v278 = vshlq_u16(v278, v19);
        v37 = vshlq_u16(v37, v19);
      }

      v33 = vtrn1q_s16(v275, v276);
      v284 = vtrn2q_s16(v275, v276);
      v35 = vtrn1q_s16(v280, v281);
      v133 = vtrn2q_s16(v280, v281);
      v285 = vtrn1q_s16(v277, v278);
      v38 = vtrn2q_s16(v277, v278);
      v286 = vtrn1q_s16(v283, v37);
      v40 = vtrn2q_s16(v283, v37);
      v36 = vzip2q_s64(v285, v284);
      v34.i64[0] = v285.i64[0];
      v34.i64[1] = v284.i64[0];
      v39 = vzip2q_s64(v286, v133);
      v37.i64[0] = v286.i64[0];
LABEL_57:
      v37.i64[1] = v133.i64[0];
      goto LABEL_61;
    case 22:
      v41 = *v9;
      v42 = *(v9 + v14);
      v43 = (v9 + v14 + v14);
      v44 = *v43;
      v45 = (v43 + v14);
      v46 = *v45;
      v47 = (v45 + v14);
      v48 = *v47;
      v49 = (v47 + v14);
      v50 = *v49;
      v51 = (v49 + v14);
      v52 = *v51;
      v53 = *(v51 + v14);
      if (v11)
      {
        v41 = vshlq_u16(v41, v19);
        v42 = vshlq_u16(v42, v19);
        v44 = vshlq_u16(v44, v19);
        v46 = vshlq_u16(v46, v19);
        v48 = vshlq_u16(v48, v19);
        v50 = vshlq_u16(v50, v19);
        v52 = vshlq_u16(v52, v19);
        v53 = vshlq_u16(v53, v19);
      }

      v33 = vtrn1q_s32(v41, v48);
      v54 = vtrn2q_s32(v41, v48);
      v35 = vtrn1q_s32(v42, v50);
      v55 = vtrn2q_s32(v42, v50);
      v56 = vtrn1q_s32(v44, v52);
      v38 = vtrn2q_s32(v44, v52);
      v57 = vtrn1q_s32(v46, v53);
      v40 = vtrn2q_s32(v46, v53);
      v34 = vzip1q_s64(v56, v54);
      v36 = vzip2q_s64(v56, v54);
      v37 = vzip1q_s64(v57, v55);
      v39 = vzip2q_s64(v57, v55);
      goto LABEL_61;
    case 23:
      v99 = (v9 + v14 + v14);
      v100 = *v99;
      v101 = v99[1];
      v102 = (v99 + v14);
      v103 = veorq_s8((*&vcltzq_s16(*v9) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v9);
      v104 = veorq_s8((*&vcltzq_s16(*(v9 + v14)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + v14));
      v105 = veorq_s8((*&vcltzq_s16(v100) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v100);
      v106 = veorq_s8((*&vcltzq_s16(*v102) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v102);
      v107 = veorq_s8((*&vcltzq_s16(*(v9 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + 16));
      v108 = veorq_s8((*&vcltzq_s16(*(v9 + v14 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v9 + v14 + 16));
      v109 = veorq_s8((*&vcltzq_s16(v101) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v101);
      v110 = veorq_s8((*&vcltzq_s16(v102[1]) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v102[1]);
      if (v11)
      {
        v103 = vshlq_u16(v103, v19);
        v104 = vshlq_u16(v104, v19);
        v105 = vshlq_u16(v105, v19);
        v106 = vshlq_u16(v106, v19);
        v107 = vshlq_u16(v107, v19);
        v108 = vshlq_u16(v108, v19);
        v109 = vshlq_u16(v109, v19);
        v110 = vshlq_u16(v110, v19);
      }

      v111 = vtrn1q_s32(v103, v107);
      v112 = vtrn2q_s32(v103, v107);
      v113 = vtrn1q_s32(v104, v108);
      v114 = vtrn2q_s32(v104, v108);
      v115 = vtrn1q_s32(v105, v109);
      v116 = vtrn2q_s32(v105, v109);
      v117 = vtrn1q_s32(v106, v110);
      v118 = vtrn2q_s32(v106, v110);
      v33 = vtrn1q_s16(v111, v115);
      v34 = vtrn2q_s16(v111, v115);
      v35 = vtrn1q_s16(v113, v117);
      v37 = vtrn2q_s16(v113, v117);
      v36 = vtrn1q_s16(v112, v116);
      v38 = vtrn2q_s16(v112, v116);
      v39 = vtrn1q_s16(v114, v118);
      v40 = vtrn2q_s16(v114, v118);
      goto LABEL_61;
    default:
      return v18;
  }

  do
  {
    v359 = *v357;
    v357 += 4;
    v358 = v359;
    if ((v359 + 2) >= 5u)
    {
      if (v313 >> 15)
      {
        v18 = 4294951894;
        if (v314 != 16)
        {
          return v18;
        }
      }

      else
      {
        if (!(v324 >> 15))
        {
          if (!(v335 >> 15))
          {
            v361 = *(a1 + 33);
            if (v361 <= 0xF)
            {
              *v10 = v355 + 64;
              v10[1] = *(a1 + 42) + 16 * *(a1 + 50);
              v365 = (v10 + 3);
              v10[2] = *(a1 + 58) + 16 * *(a1 + 66);
              goto LABEL_124;
            }

            goto LABEL_114;
          }

          if (HIWORD(v335))
          {
            return 4294951894;
          }

LABEL_113:
          v361 = *(a1 + 33);
LABEL_114:
          if (v361 <= 0x10)
          {
            *v10 = v355 + 80;
            v362 = *(a1 + 21) + (*(a1 + 25) << 6);
            v363 = v362 + (*(a1 + 29) << 12);
            v364 = v363 + (*(a1 + 33) << 18);
            v10[1] = v362;
            v10[2] = BYTE1(v363);
            v365 = (v10 + 4);
            v10[3] = BYTE2(v364);
            goto LABEL_124;
          }

          return 4294951894;
        }

        v18 = 4294951894;
      }

      if (HIWORD(v324) || HIWORD(v335))
      {
        return v18;
      }

      goto LABEL_113;
    }

    if (v358)
    {
      v352 = v351;
      ++v354;
    }

    v353 = 5 * v353 + v358 + 2;
    ++v351;
  }

  while (v351 != 4);
  if (v354 == 1)
  {
    v366 = v308[4 * v352 + 1];
    v367 = v366 == 0xFFFF || v366 == 1;
    if (!v367)
    {
      goto LABEL_123;
    }

    v360 = (((v366 >> 11) & 0x10 | (32 * v352)) ^ 0x80) + v355;
LABEL_122:
    *v10 = v360;
    v365 = (v10 + 1);
  }

  else
  {
    if (!v354)
    {
      LOBYTE(v360) = v355 + 48;
      goto LABEL_122;
    }

LABEL_123:
    *v10 = ((v353 >> 4) & 0xF0) + v355;
    v365 = (v10 + 2);
    v10[1] = v353;
  }

LABEL_124:
  v368 = a1 + 23;
  v369 = 4;
  while (2)
  {
    if (v355)
    {
      if (v12 <= 5)
      {
        LOWORD(v370) = *v368;
        goto LABEL_133;
      }

      v371 = v368[1];
      if (v371 >= 0)
      {
        v370 = v368[1];
      }

      else
      {
        v370 = -v371;
      }

      v372 = (v371 >> 9) & 0x40;
      if (v370 > 0x3F)
      {
        if ((v370 & 0xC000) != 0)
        {
          v375 = *v368;
          *v365 = 0;
          v374 = (v365 + 2);
          *(v365 + 1) = v375;
          v370 = v375 >> 8;
          v373 = 3;
        }

        else
        {
          *v365 = v370 & 0x3F | v372 | 0x80;
          v374 = (v365 + 1);
          LOWORD(v370) = v370 >> 6;
          v373 = 2;
        }
      }

      else
      {
        LOBYTE(v370) = v372 | v370;
LABEL_133:
        v373 = 1;
        v374 = v365;
      }

      v365 = (v365 + v373);
      *v374 = v370;
    }

    v355 >>= 1;
    v368 += 4;
    if (--v369)
    {
      continue;
    }

    break;
  }

  if (!v365)
  {
    return 4294951894;
  }

  v376 = a1 + 23;
  v377 = vld1q_dup_s16(v376);
  v378 = vsubq_s16(v33, v377);
  v379 = vsubq_s16(v35, v377);
  v380 = a1 + 27;
  v381 = vld1q_dup_s16(v380);
  v382 = vsubq_s16(v34, v381);
  v383 = vsubq_s16(v37, v381);
  v384 = a1 + 31;
  v385 = vld1q_dup_s16(v384);
  v386 = vsubq_s16(v36, v385);
  v387 = vsubq_s16(v39, v385);
  v388 = a1 + 35;
  v389 = vld1q_dup_s16(v388);
  v390 = vsubq_s16(v38, v389);
  v391 = vsubq_s16(v40, v389);
  v392 = *(a1 + 21);
  if (v12 > 0x10 || (v393 = *(a1 + 27)) == 0)
  {
    if (*(a1 + 21) <= 4u)
    {
      if (*(a1 + 21) <= 1u)
      {
        if (!*(a1 + 21))
        {
          goto LABEL_303;
        }

        v430 = vorrq_s8(vshrq_n_u32(v378, 0xFuLL), v378);
        v431.i64[0] = 0xFFFFLL;
        v431.i64[1] = 0xFFFFLL;
        v432 = vorrq_s8(vandq_s8(vshrq_n_u64(v430, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v430, v431));
        v433 = vorr_s8(vshld_n_s64(vextq_s8(v432, v432, 8uLL).i64[0], 4uLL), *v432.i8).u32[0];
        v434 = 1;
      }

      else if (v392 == 2)
      {
        v459 = vorrq_s8(vshrq_n_u32(v378, 0xEuLL), v378);
        v460.i64[0] = 0xFFFFLL;
        v460.i64[1] = 0xFFFFLL;
        v461 = vorrq_s8(vandq_s8(vshrq_n_u64(v459, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v459, v460));
        v433 = vorr_s8(vshld_n_s64(vextq_s8(v461, v461, 8uLL).i64[0], 8uLL), *v461.i8).u32[0];
        v434 = 2;
      }

      else
      {
        if (v392 != 3)
        {
          v407 = vorrq_s8(vshrq_n_u32(v378, 0xCuLL), v378);
          v408.i64[0] = 16776960;
          v408.i64[1] = 16776960;
          v409 = vandq_s8(vshrq_n_u64(v407, 0x18uLL), v408);
          v408.i64[0] = 0xFFFFLL;
          v408.i64[1] = 0xFFFFLL;
          v410 = vorrq_s8(v409, vandq_s8(v407, v408));
          *v365 = vorr_s8(vshld_n_s64(vextq_s8(v410, v410, 8uLL).i64[0], 0x10uLL), *v410.i8).u32[0];
          v365 = (v365 + 4);
          goto LABEL_264;
        }

        v444 = vorrq_s8(vshrq_n_u32(v378, 0xDuLL), v378);
        v445.i64[0] = 0xFFFFLL;
        v445.i64[1] = 0xFFFFLL;
        v446 = vorrq_s8(vandq_s8(vshrq_n_u64(v444, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v444, v445));
        v433 = vorr_s8(vshld_n_s64(vextq_s8(v446, v446, 8uLL).i64[0], 0xCuLL), *v446.i8).u32[0];
        v434 = 3;
      }

      *v365 = v433;
      v365 = (v365 + v434);
    }

    else if (*(a1 + 21) > 7u)
    {
      switch(v392)
      {
        case 8:
          v485 = vorrq_s8(vshrq_n_u32(v378, 8uLL), v378);
          v486.i64[0] = 4294901760;
          v486.i64[1] = 4294901760;
          v487 = vandq_s8(vshrq_n_u64(v485, 0x10uLL), v486);
          v486.i64[0] = 0xFFFFLL;
          v486.i64[1] = 0xFFFFLL;
          v488 = vorrq_s8(v487, vandq_s8(v485, v486));
          *v365++ = vorr_s8(vshld_n_s64(vextq_s8(v488, v488, 8uLL).i64[0], 0x20uLL), *v488.i8);
          break;
        case 9:
          v456.i64[0] = 0xFFFF0000FFFFLL;
          v456.i64[1] = 0xFFFF0000FFFFLL;
          v457 = vorrq_s8(vandq_s8(vshrq_n_u32(v378, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v378, v456));
          v458 = vorrq_s8(vandq_s8(vshrq_n_u64(v457, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v457, vdupq_n_s64(0x1FFFFFFuLL)));
          v456.i64[0] = vextq_s8(v458, v458, 8uLL).u64[0];
          *v365 = vorr_s8(vshld_n_s64(v456.i64[0], 0x24uLL), *v458.i8);
          *(v365 + 8) = vshrd_n_u64(v456.u64[0], 0x1CuLL);
          v365 = (v365 + 9);
          break;
        case 10:
          v420.i64[0] = 0xFFFF0000FFFFLL;
          v420.i64[1] = 0xFFFF0000FFFFLL;
          v421 = vorrq_s8(vandq_s8(vshrq_n_u32(v378, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v378, v420));
          v422 = vorrq_s8(vandq_s8(vshrq_n_u64(v421, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v421, vdupq_n_s64(0x3FFFFFFuLL)));
          v420.i64[0] = vextq_s8(v422, v422, 8uLL).u64[0];
          *v365 = vorr_s8(vshld_n_s64(v420.i64[0], 0x28uLL), *v422.i8);
          *(v365 + 4) = vshrd_n_u64(v420.u64[0], 0x18uLL);
          v365 = (v365 + 10);
          break;
        default:
          v1001 = v379;
          v1005 = v382;
          v1011 = v383;
          v1018 = v386;
          v1027 = v387;
          v1037 = v390;
          v1049 = v391;
          v726 = 0;
          v1077 = 0uLL;
          do
          {
            v1075 = v378;
            v1077.i16[v726] = *(&v1075 & 0xFFFFFFFFFFFFFFF1 | (2 * (v726 & 7)));
            ++v726;
          }

          while (v726 != 8);
          v365 = vectorWritePacked(v365, &v1077, v392);
          v390 = v1037;
          v391 = v1049;
          v386 = v1018;
          v387 = v1027;
          v382 = v1005;
          v383 = v1011;
          v379 = v1001;
          break;
      }
    }

    else if (v392 == 5)
    {
      v482 = vorrq_s8(vshrq_n_u32(v378, 0xBuLL), v378);
      v483.i64[0] = 0xFFFFLL;
      v483.i64[1] = 0xFFFFLL;
      v484 = vorrq_s8(vandq_s8(vshrq_n_u64(v482, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v482, v483));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v484, v484, 8uLL).i64[0], 0x14uLL), *v484.i8);
      v365 = (v365 + 5);
    }

    else if (v392 == 6)
    {
      v453 = vorrq_s8(vshrq_n_u32(v378, 0xAuLL), v378);
      v454.i64[0] = 0xFFFFLL;
      v454.i64[1] = 0xFFFFLL;
      v455 = vorrq_s8(vandq_s8(vshrq_n_u64(v453, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v453, v454));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v455, v455, 8uLL).i64[0], 0x18uLL), *v455.i8);
      v365 = (v365 + 6);
    }

    else
    {
      v404 = vorrq_s8(vshrq_n_u32(v378, 9uLL), v378);
      v405.i64[0] = 0xFFFFLL;
      v405.i64[1] = 0xFFFFLL;
      v406 = vorrq_s8(vandq_s8(vshrq_n_u64(v404, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v404, v405));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v406, v406, 8uLL).i64[0], 0x1CuLL), *v406.i8);
      v365 = (v365 + 7);
    }

LABEL_264:
    v727 = *v308;
    if (v727 > 4)
    {
      if (*v308 > 7u)
      {
        switch(v727)
        {
          case 8u:
            v771 = vorrq_s8(vshrq_n_u32(v379, 8uLL), v379);
            v772.i64[0] = 4294901760;
            v772.i64[1] = 4294901760;
            v773 = vandq_s8(vshrq_n_u64(v771, 0x10uLL), v772);
            v772.i64[0] = 0xFFFFLL;
            v772.i64[1] = 0xFFFFLL;
            v774 = vorrq_s8(v773, vandq_s8(v771, v772));
            *v365++ = vorr_s8(vshld_n_s64(vextq_s8(v774, v774, 8uLL).i64[0], 0x20uLL), *v774.i8);
            goto LABEL_303;
          case 9u:
            v761.i64[0] = 0xFFFF0000FFFFLL;
            v761.i64[1] = 0xFFFF0000FFFFLL;
            v762 = vorrq_s8(vandq_s8(vshrq_n_u32(v379, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v379, v761));
            v763 = vorrq_s8(vandq_s8(vshrq_n_u64(v762, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v762, vdupq_n_s64(0x1FFFFFFuLL)));
            v764 = vextq_s8(v763, v763, 8uLL).u64[0];
            *v365 = vorr_s8(vshld_n_s64(v764, 0x24uLL), *v763.i8);
            *(v365 + 8) = vshrd_n_u64(v764, 0x1CuLL);
            v365 = (v365 + 9);
            goto LABEL_303;
          case 0xAu:
            v735.i64[0] = 0xFFFF0000FFFFLL;
            v735.i64[1] = 0xFFFF0000FFFFLL;
            v736 = vorrq_s8(vandq_s8(vshrq_n_u32(v379, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v379, v735));
            v737 = vorrq_s8(vandq_s8(vshrq_n_u64(v736, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v736, vdupq_n_s64(0x3FFFFFFuLL)));
            v738 = vextq_s8(v737, v737, 8uLL).u64[0];
            *v365 = vorr_s8(vshld_n_s64(v738, 0x28uLL), *v737.i8);
            *(v365 + 4) = vshrd_n_u64(v738, 0x18uLL);
            v365 = (v365 + 10);
            goto LABEL_303;
        }
      }

      else
      {
        switch(v727)
        {
          case 5u:
            v768 = vorrq_s8(vshrq_n_u32(v379, 0xBuLL), v379);
            v769.i64[0] = 0xFFFFLL;
            v769.i64[1] = 0xFFFFLL;
            v770 = vorrq_s8(vandq_s8(vshrq_n_u64(v768, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v768, v769));
            *v365 = vorr_s8(vshld_n_s64(vextq_s8(v770, v770, 8uLL).i64[0], 0x14uLL), *v770.i8);
            v365 = (v365 + 5);
            goto LABEL_303;
          case 6u:
            v758 = vorrq_s8(vshrq_n_u32(v379, 0xAuLL), v379);
            v759.i64[0] = 0xFFFFLL;
            v759.i64[1] = 0xFFFFLL;
            v760 = vorrq_s8(vandq_s8(vshrq_n_u64(v758, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v758, v759));
            *v365 = vorr_s8(vshld_n_s64(vextq_s8(v760, v760, 8uLL).i64[0], 0x18uLL), *v760.i8);
            v365 = (v365 + 6);
            goto LABEL_303;
          case 7u:
            v728 = vorrq_s8(vshrq_n_u32(v379, 9uLL), v379);
            v729.i64[0] = 0xFFFFLL;
            v729.i64[1] = 0xFFFFLL;
            v730 = vorrq_s8(vandq_s8(vshrq_n_u64(v728, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v728, v729));
            *v365 = vorr_s8(vshld_n_s64(vextq_s8(v730, v730, 8uLL).i64[0], 0x1CuLL), *v730.i8);
            v365 = (v365 + 7);
            goto LABEL_303;
        }
      }

LABEL_300:
      v1008 = v382;
      v1014 = v383;
      v1022 = v386;
      v1031 = v387;
      v1042 = v390;
      v1054 = v391;
      v775 = 0;
      v1077 = 0uLL;
      do
      {
        v1074 = v379;
        v1077.i16[v775] = *(&v1074 & 0xFFFFFFFFFFFFFFF1 | (2 * (v775 & 7)));
        ++v775;
      }

      while (v775 != 8);
      v365 = vectorWritePacked(v365, &v1077, v727);
      v390 = v1042;
      v391 = v1054;
      v386 = v1022;
      v387 = v1031;
      v382 = v1008;
      v383 = v1014;
LABEL_303:
      v776 = *(a1 + 25);
      if (v776 > 4)
      {
        if (*(a1 + 25) > 7u)
        {
          switch(v776)
          {
            case 8u:
              v809 = vorrq_s8(vshrq_n_u32(v382, 8uLL), v382);
              v810.i64[0] = 4294901760;
              v810.i64[1] = 4294901760;
              v811 = vandq_s8(vshrq_n_u64(v809, 0x10uLL), v810);
              v810.i64[0] = 0xFFFFLL;
              v810.i64[1] = 0xFFFFLL;
              v812 = vorrq_s8(v811, vandq_s8(v809, v810));
              *v365++ = vorr_s8(vshld_n_s64(vextq_s8(v812, v812, 8uLL).i64[0], 0x20uLL), *v812.i8);
              goto LABEL_330;
            case 9u:
              v799.i64[0] = 0xFFFF0000FFFFLL;
              v799.i64[1] = 0xFFFF0000FFFFLL;
              v800 = vorrq_s8(vandq_s8(vshrq_n_u32(v382, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v382, v799));
              v801 = vorrq_s8(vandq_s8(vshrq_n_u64(v800, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v800, vdupq_n_s64(0x1FFFFFFuLL)));
              v802 = vextq_s8(v801, v801, 8uLL).u64[0];
              *v365 = vorr_s8(vshld_n_s64(v802, 0x24uLL), *v801.i8);
              *(v365 + 8) = vshrd_n_u64(v802, 0x1CuLL);
              v365 = (v365 + 9);
              goto LABEL_330;
            case 0xAu:
              v784.i64[0] = 0xFFFF0000FFFFLL;
              v784.i64[1] = 0xFFFF0000FFFFLL;
              v785 = vorrq_s8(vandq_s8(vshrq_n_u32(v382, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v382, v784));
              v786 = vorrq_s8(vandq_s8(vshrq_n_u64(v785, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v785, vdupq_n_s64(0x3FFFFFFuLL)));
              v787 = vextq_s8(v786, v786, 8uLL).u64[0];
              *v365 = vorr_s8(vshld_n_s64(v787, 0x28uLL), *v786.i8);
              *(v365 + 4) = vshrd_n_u64(v787, 0x18uLL);
              v365 = (v365 + 10);
              goto LABEL_330;
          }
        }

        else
        {
          switch(v776)
          {
            case 5u:
              v806 = vorrq_s8(vshrq_n_u32(v382, 0xBuLL), v382);
              v807.i64[0] = 0xFFFFLL;
              v807.i64[1] = 0xFFFFLL;
              v808 = vorrq_s8(vandq_s8(vshrq_n_u64(v806, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v806, v807));
              *v365 = vorr_s8(vshld_n_s64(vextq_s8(v808, v808, 8uLL).i64[0], 0x14uLL), *v808.i8);
              v365 = (v365 + 5);
              goto LABEL_330;
            case 6u:
              v796 = vorrq_s8(vshrq_n_u32(v382, 0xAuLL), v382);
              v797.i64[0] = 0xFFFFLL;
              v797.i64[1] = 0xFFFFLL;
              v798 = vorrq_s8(vandq_s8(vshrq_n_u64(v796, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v796, v797));
              *v365 = vorr_s8(vshld_n_s64(vextq_s8(v798, v798, 8uLL).i64[0], 0x18uLL), *v798.i8);
              v365 = (v365 + 6);
              goto LABEL_330;
            case 7u:
              v777 = vorrq_s8(vshrq_n_u32(v382, 9uLL), v382);
              v778.i64[0] = 0xFFFFLL;
              v778.i64[1] = 0xFFFFLL;
              v779 = vorrq_s8(vandq_s8(vshrq_n_u64(v777, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v777, v778));
              *v365 = vorr_s8(vshld_n_s64(vextq_s8(v779, v779, 8uLL).i64[0], 0x1CuLL), *v779.i8);
              v365 = (v365 + 7);
              goto LABEL_330;
          }
        }

LABEL_327:
        v1015 = v383;
        v1023 = v386;
        v1032 = v387;
        v1043 = v390;
        v1055 = v391;
        v813 = 0;
        v1077 = 0uLL;
        do
        {
          v1073 = v382;
          v1077.i16[v813] = *(&v1073 & 0xFFFFFFFFFFFFFFF1 | (2 * (v813 & 7)));
          ++v813;
        }

        while (v813 != 8);
        v365 = vectorWritePacked(v365, &v1077, v776);
        v390 = v1043;
        v391 = v1055;
        v386 = v1023;
        v387 = v1032;
        v383 = v1015;
LABEL_330:
        v814 = *(a1 + 25);
        if (v814 > 4)
        {
          if (*(a1 + 25) > 7u)
          {
            switch(v814)
            {
              case 8u:
                v847 = vorrq_s8(vshrq_n_u32(v383, 8uLL), v383);
                v848.i64[0] = 4294901760;
                v848.i64[1] = 4294901760;
                v849 = vandq_s8(vshrq_n_u64(v847, 0x10uLL), v848);
                v848.i64[0] = 0xFFFFLL;
                v848.i64[1] = 0xFFFFLL;
                v850 = vorrq_s8(v849, vandq_s8(v847, v848));
                *v365++ = vorr_s8(vshld_n_s64(vextq_s8(v850, v850, 8uLL).i64[0], 0x20uLL), *v850.i8);
                goto LABEL_357;
              case 9u:
                v837.i64[0] = 0xFFFF0000FFFFLL;
                v837.i64[1] = 0xFFFF0000FFFFLL;
                v838 = vorrq_s8(vandq_s8(vshrq_n_u32(v383, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v383, v837));
                v839 = vorrq_s8(vandq_s8(vshrq_n_u64(v838, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v838, vdupq_n_s64(0x1FFFFFFuLL)));
                v840 = vextq_s8(v839, v839, 8uLL).u64[0];
                *v365 = vorr_s8(vshld_n_s64(v840, 0x24uLL), *v839.i8);
                *(v365 + 8) = vshrd_n_u64(v840, 0x1CuLL);
                v365 = (v365 + 9);
                goto LABEL_357;
              case 0xAu:
                v822.i64[0] = 0xFFFF0000FFFFLL;
                v822.i64[1] = 0xFFFF0000FFFFLL;
                v823 = vorrq_s8(vandq_s8(vshrq_n_u32(v383, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v383, v822));
                v824 = vorrq_s8(vandq_s8(vshrq_n_u64(v823, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v823, vdupq_n_s64(0x3FFFFFFuLL)));
                v825 = vextq_s8(v824, v824, 8uLL).u64[0];
                *v365 = vorr_s8(vshld_n_s64(v825, 0x28uLL), *v824.i8);
                *(v365 + 4) = vshrd_n_u64(v825, 0x18uLL);
                v365 = (v365 + 10);
                goto LABEL_357;
            }
          }

          else
          {
            switch(v814)
            {
              case 5u:
                v844 = vorrq_s8(vshrq_n_u32(v383, 0xBuLL), v383);
                v845.i64[0] = 0xFFFFLL;
                v845.i64[1] = 0xFFFFLL;
                v846 = vorrq_s8(vandq_s8(vshrq_n_u64(v844, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v844, v845));
                *v365 = vorr_s8(vshld_n_s64(vextq_s8(v846, v846, 8uLL).i64[0], 0x14uLL), *v846.i8);
                v365 = (v365 + 5);
                goto LABEL_357;
              case 6u:
                v834 = vorrq_s8(vshrq_n_u32(v383, 0xAuLL), v383);
                v835.i64[0] = 0xFFFFLL;
                v835.i64[1] = 0xFFFFLL;
                v836 = vorrq_s8(vandq_s8(vshrq_n_u64(v834, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v834, v835));
                *v365 = vorr_s8(vshld_n_s64(vextq_s8(v836, v836, 8uLL).i64[0], 0x18uLL), *v836.i8);
                v365 = (v365 + 6);
                goto LABEL_357;
              case 7u:
                v815 = vorrq_s8(vshrq_n_u32(v383, 9uLL), v383);
                v816.i64[0] = 0xFFFFLL;
                v816.i64[1] = 0xFFFFLL;
                v817 = vorrq_s8(vandq_s8(vshrq_n_u64(v815, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v815, v816));
                *v365 = vorr_s8(vshld_n_s64(vextq_s8(v817, v817, 8uLL).i64[0], 0x1CuLL), *v817.i8);
                v365 = (v365 + 7);
                goto LABEL_357;
            }
          }

LABEL_354:
          v1024 = v386;
          v1033 = v387;
          v1044 = v390;
          v1056 = v391;
          v851 = 0;
          v1077 = 0uLL;
          do
          {
            v1072 = v383;
            v1077.i16[v851] = *(&v1072 & 0xFFFFFFFFFFFFFFF1 | (2 * (v851 & 7)));
            ++v851;
          }

          while (v851 != 8);
          v365 = vectorWritePacked(v365, &v1077, v814);
          v390 = v1044;
          v391 = v1056;
          v386 = v1024;
          v387 = v1033;
LABEL_357:
          v852 = *(a1 + 29);
          if (v852 > 4)
          {
            if (*(a1 + 29) > 7u)
            {
              switch(v852)
              {
                case 8u:
                  v885 = vorrq_s8(vshrq_n_u32(v386, 8uLL), v386);
                  v886.i64[0] = 4294901760;
                  v886.i64[1] = 4294901760;
                  v887 = vandq_s8(vshrq_n_u64(v885, 0x10uLL), v886);
                  v886.i64[0] = 0xFFFFLL;
                  v886.i64[1] = 0xFFFFLL;
                  v888 = vorrq_s8(v887, vandq_s8(v885, v886));
                  *v365++ = vorr_s8(vshld_n_s64(vextq_s8(v888, v888, 8uLL).i64[0], 0x20uLL), *v888.i8);
                  goto LABEL_384;
                case 9u:
                  v875.i64[0] = 0xFFFF0000FFFFLL;
                  v875.i64[1] = 0xFFFF0000FFFFLL;
                  v876 = vorrq_s8(vandq_s8(vshrq_n_u32(v386, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v386, v875));
                  v877 = vorrq_s8(vandq_s8(vshrq_n_u64(v876, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v876, vdupq_n_s64(0x1FFFFFFuLL)));
                  v878 = vextq_s8(v877, v877, 8uLL).u64[0];
                  *v365 = vorr_s8(vshld_n_s64(v878, 0x24uLL), *v877.i8);
                  *(v365 + 8) = vshrd_n_u64(v878, 0x1CuLL);
                  v365 = (v365 + 9);
                  goto LABEL_384;
                case 0xAu:
                  v860.i64[0] = 0xFFFF0000FFFFLL;
                  v860.i64[1] = 0xFFFF0000FFFFLL;
                  v861 = vorrq_s8(vandq_s8(vshrq_n_u32(v386, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v386, v860));
                  v862 = vorrq_s8(vandq_s8(vshrq_n_u64(v861, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v861, vdupq_n_s64(0x3FFFFFFuLL)));
                  v863 = vextq_s8(v862, v862, 8uLL).u64[0];
                  *v365 = vorr_s8(vshld_n_s64(v863, 0x28uLL), *v862.i8);
                  *(v365 + 4) = vshrd_n_u64(v863, 0x18uLL);
                  v365 = (v365 + 10);
                  goto LABEL_384;
              }
            }

            else
            {
              switch(v852)
              {
                case 5u:
                  v882 = vorrq_s8(vshrq_n_u32(v386, 0xBuLL), v386);
                  v883.i64[0] = 0xFFFFLL;
                  v883.i64[1] = 0xFFFFLL;
                  v884 = vorrq_s8(vandq_s8(vshrq_n_u64(v882, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v882, v883));
                  *v365 = vorr_s8(vshld_n_s64(vextq_s8(v884, v884, 8uLL).i64[0], 0x14uLL), *v884.i8);
                  v365 = (v365 + 5);
                  goto LABEL_384;
                case 6u:
                  v872 = vorrq_s8(vshrq_n_u32(v386, 0xAuLL), v386);
                  v873.i64[0] = 0xFFFFLL;
                  v873.i64[1] = 0xFFFFLL;
                  v874 = vorrq_s8(vandq_s8(vshrq_n_u64(v872, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v872, v873));
                  *v365 = vorr_s8(vshld_n_s64(vextq_s8(v874, v874, 8uLL).i64[0], 0x18uLL), *v874.i8);
                  v365 = (v365 + 6);
                  goto LABEL_384;
                case 7u:
                  v853 = vorrq_s8(vshrq_n_u32(v386, 9uLL), v386);
                  v854.i64[0] = 0xFFFFLL;
                  v854.i64[1] = 0xFFFFLL;
                  v855 = vorrq_s8(vandq_s8(vshrq_n_u64(v853, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v853, v854));
                  *v365 = vorr_s8(vshld_n_s64(vextq_s8(v855, v855, 8uLL).i64[0], 0x1CuLL), *v855.i8);
                  v365 = (v365 + 7);
                  goto LABEL_384;
              }
            }

LABEL_381:
            v1034 = v387;
            v1045 = v390;
            v1057 = v391;
            v889 = 0;
            v1077 = 0uLL;
            do
            {
              v1071 = v386;
              v1077.i16[v889] = *(&v1071 & 0xFFFFFFFFFFFFFFF1 | (2 * (v889 & 7)));
              ++v889;
            }

            while (v889 != 8);
            v365 = vectorWritePacked(v365, &v1077, v852);
            v390 = v1045;
            v391 = v1057;
            v387 = v1034;
LABEL_384:
            v890 = *(a1 + 29);
            if (v890 > 4)
            {
              if (*(a1 + 29) > 7u)
              {
                switch(v890)
                {
                  case 8u:
                    v923 = vorrq_s8(vshrq_n_u32(v387, 8uLL), v387);
                    v924.i64[0] = 4294901760;
                    v924.i64[1] = 4294901760;
                    v925 = vandq_s8(vshrq_n_u64(v923, 0x10uLL), v924);
                    v924.i64[0] = 0xFFFFLL;
                    v924.i64[1] = 0xFFFFLL;
                    v926 = vorrq_s8(v925, vandq_s8(v923, v924));
                    *v365++ = vorr_s8(vshld_n_s64(vextq_s8(v926, v926, 8uLL).i64[0], 0x20uLL), *v926.i8);
                    goto LABEL_411;
                  case 9u:
                    v913.i64[0] = 0xFFFF0000FFFFLL;
                    v913.i64[1] = 0xFFFF0000FFFFLL;
                    v914 = vorrq_s8(vandq_s8(vshrq_n_u32(v387, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v387, v913));
                    v915 = vorrq_s8(vandq_s8(vshrq_n_u64(v914, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v914, vdupq_n_s64(0x1FFFFFFuLL)));
                    v916 = vextq_s8(v915, v915, 8uLL).u64[0];
                    *v365 = vorr_s8(vshld_n_s64(v916, 0x24uLL), *v915.i8);
                    *(v365 + 8) = vshrd_n_u64(v916, 0x1CuLL);
                    v365 = (v365 + 9);
                    goto LABEL_411;
                  case 0xAu:
                    v898.i64[0] = 0xFFFF0000FFFFLL;
                    v898.i64[1] = 0xFFFF0000FFFFLL;
                    v899 = vorrq_s8(vandq_s8(vshrq_n_u32(v387, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v387, v898));
                    v900 = vorrq_s8(vandq_s8(vshrq_n_u64(v899, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v899, vdupq_n_s64(0x3FFFFFFuLL)));
                    v901 = vextq_s8(v900, v900, 8uLL).u64[0];
                    *v365 = vorr_s8(vshld_n_s64(v901, 0x28uLL), *v900.i8);
                    *(v365 + 4) = vshrd_n_u64(v901, 0x18uLL);
                    v365 = (v365 + 10);
                    goto LABEL_411;
                }
              }

              else
              {
                switch(v890)
                {
                  case 5u:
                    v920 = vorrq_s8(vshrq_n_u32(v387, 0xBuLL), v387);
                    v921.i64[0] = 0xFFFFLL;
                    v921.i64[1] = 0xFFFFLL;
                    v922 = vorrq_s8(vandq_s8(vshrq_n_u64(v920, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v920, v921));
                    *v365 = vorr_s8(vshld_n_s64(vextq_s8(v922, v922, 8uLL).i64[0], 0x14uLL), *v922.i8);
                    v365 = (v365 + 5);
                    goto LABEL_411;
                  case 6u:
                    v910 = vorrq_s8(vshrq_n_u32(v387, 0xAuLL), v387);
                    v911.i64[0] = 0xFFFFLL;
                    v911.i64[1] = 0xFFFFLL;
                    v912 = vorrq_s8(vandq_s8(vshrq_n_u64(v910, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v910, v911));
                    *v365 = vorr_s8(vshld_n_s64(vextq_s8(v912, v912, 8uLL).i64[0], 0x18uLL), *v912.i8);
                    v365 = (v365 + 6);
                    goto LABEL_411;
                  case 7u:
                    v891 = vorrq_s8(vshrq_n_u32(v387, 9uLL), v387);
                    v892.i64[0] = 0xFFFFLL;
                    v892.i64[1] = 0xFFFFLL;
                    v893 = vorrq_s8(vandq_s8(vshrq_n_u64(v891, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v891, v892));
                    *v365 = vorr_s8(vshld_n_s64(vextq_s8(v893, v893, 8uLL).i64[0], 0x1CuLL), *v893.i8);
                    v365 = (v365 + 7);
                    goto LABEL_411;
                }
              }

LABEL_408:
              v1046 = v390;
              v1058 = v391;
              v927 = 0;
              v1077 = 0uLL;
              do
              {
                v1070 = v387;
                v1077.i16[v927] = *(&v1070 & 0xFFFFFFFFFFFFFFF1 | (2 * (v927 & 7)));
                ++v927;
              }

              while (v927 != 8);
              v365 = vectorWritePacked(v365, &v1077, v890);
              v390 = v1046;
              v391 = v1058;
LABEL_411:
              if (v12 == 19)
              {
                goto LABEL_476;
              }

              v928 = *(a1 + 33);
              if (v928 > 4)
              {
                if (*(a1 + 33) > 7u)
                {
                  switch(v928)
                  {
                    case 8u:
                      v961 = vorrq_s8(vshrq_n_u32(v390, 8uLL), v390);
                      v962.i64[0] = 4294901760;
                      v962.i64[1] = 4294901760;
                      v963 = vandq_s8(vshrq_n_u64(v961, 0x10uLL), v962);
                      v962.i64[0] = 0xFFFFLL;
                      v962.i64[1] = 0xFFFFLL;
                      v964 = vorrq_s8(v963, vandq_s8(v961, v962));
                      *v365++ = vorr_s8(vshld_n_s64(vextq_s8(v964, v964, 8uLL).i64[0], 0x20uLL), *v964.i8);
                      goto LABEL_439;
                    case 9u:
                      v951.i64[0] = 0xFFFF0000FFFFLL;
                      v951.i64[1] = 0xFFFF0000FFFFLL;
                      v952 = vorrq_s8(vandq_s8(vshrq_n_u32(v390, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v390, v951));
                      v953 = vorrq_s8(vandq_s8(vshrq_n_u64(v952, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v952, vdupq_n_s64(0x1FFFFFFuLL)));
                      v954 = vextq_s8(v953, v953, 8uLL).u64[0];
                      *v365 = vorr_s8(vshld_n_s64(v954, 0x24uLL), *v953.i8);
                      *(v365 + 8) = vshrd_n_u64(v954, 0x1CuLL);
                      v365 = (v365 + 9);
                      goto LABEL_439;
                    case 0xAu:
                      v936.i64[0] = 0xFFFF0000FFFFLL;
                      v936.i64[1] = 0xFFFF0000FFFFLL;
                      v937 = vorrq_s8(vandq_s8(vshrq_n_u32(v390, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v390, v936));
                      v938 = vorrq_s8(vandq_s8(vshrq_n_u64(v937, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v937, vdupq_n_s64(0x3FFFFFFuLL)));
                      v939 = vextq_s8(v938, v938, 8uLL).u64[0];
                      *v365 = vorr_s8(vshld_n_s64(v939, 0x28uLL), *v938.i8);
                      *(v365 + 4) = vshrd_n_u64(v939, 0x18uLL);
                      v365 = (v365 + 10);
                      goto LABEL_439;
                  }
                }

                else
                {
                  switch(v928)
                  {
                    case 5u:
                      v958 = vorrq_s8(vshrq_n_u32(v390, 0xBuLL), v390);
                      v959.i64[0] = 0xFFFFLL;
                      v959.i64[1] = 0xFFFFLL;
                      v960 = vorrq_s8(vandq_s8(vshrq_n_u64(v958, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v958, v959));
                      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v960, v960, 8uLL).i64[0], 0x14uLL), *v960.i8);
                      v365 = (v365 + 5);
                      goto LABEL_439;
                    case 6u:
                      v948 = vorrq_s8(vshrq_n_u32(v390, 0xAuLL), v390);
                      v949.i64[0] = 0xFFFFLL;
                      v949.i64[1] = 0xFFFFLL;
                      v950 = vorrq_s8(vandq_s8(vshrq_n_u64(v948, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v948, v949));
                      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v950, v950, 8uLL).i64[0], 0x18uLL), *v950.i8);
                      v365 = (v365 + 6);
                      goto LABEL_439;
                    case 7u:
                      v929 = vorrq_s8(vshrq_n_u32(v390, 9uLL), v390);
                      v930.i64[0] = 0xFFFFLL;
                      v930.i64[1] = 0xFFFFLL;
                      v931 = vorrq_s8(vandq_s8(vshrq_n_u64(v929, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v929, v930));
                      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v931, v931, 8uLL).i64[0], 0x1CuLL), *v931.i8);
                      v365 = (v365 + 7);
                      goto LABEL_439;
                  }
                }

LABEL_436:
                v1059 = v391;
                v965 = 0;
                v1077 = 0uLL;
                do
                {
                  v1069 = v390;
                  v1077.i16[v965] = *(&v1069 & 0xFFFFFFFFFFFFFFF1 | (2 * (v965 & 7)));
                  ++v965;
                }

                while (v965 != 8);
                v365 = vectorWritePacked(v365, &v1077, v928);
                v391 = v1059;
LABEL_439:
                v966 = *(a1 + 33);
                if (v966 <= 4)
                {
                  if (*(a1 + 33) <= 1u)
                  {
                    if (!*(a1 + 33))
                    {
                      goto LABEL_476;
                    }

                    v686 = vorrq_s8(vshrq_n_u32(v391, 0xFuLL), v391);
                    v687 = vandq_s8(vshrq_n_u64(v686, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL));
                    goto LABEL_459;
                  }

                  switch(v966)
                  {
                    case 2u:
                      v712 = vorrq_s8(vshrq_n_u32(v391, 0xEuLL), v391);
                      v713 = vandq_s8(vshrq_n_u64(v712, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL));
                      goto LABEL_467;
                    case 3u:
                      v692 = vorrq_s8(vshrq_n_u32(v391, 0xDuLL), v391);
                      v693 = vandq_s8(vshrq_n_u64(v692, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL));
LABEL_461:
                      v979.i64[0] = 0xFFFFLL;
                      v979.i64[1] = 0xFFFFLL;
                      v980 = vorrq_s8(v693, vandq_s8(v692, v979));
                      v977 = vorr_s8(vshld_n_s64(vextq_s8(v980, v980, 8uLL).i64[0], 0xCuLL), *v980.i8).u32[0];
                      v978 = 3;
                      goto LABEL_468;
                    case 4u:
                      v676 = vorrq_s8(vshrq_n_u32(v391, 0xCuLL), v391);
                      goto LABEL_451;
                  }
                }

                else if (*(a1 + 33) > 7u)
                {
                  switch(v966)
                  {
                    case 8u:
                      v725 = vorrq_s8(vshrq_n_u32(v391, 8uLL), v391);
                      goto LABEL_472;
                    case 9u:
                      v983.i64[0] = 0xFFFF0000FFFFLL;
                      v983.i64[1] = 0xFFFF0000FFFFLL;
                      v984 = vorrq_s8(vandq_s8(vshrq_n_u32(v391, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v391, v983));
                      v705 = vandq_s8(v984, vdupq_n_s64(0x1FFFFFFuLL));
                      v707 = vshrq_n_u64(v984, 0xEuLL);
                      v706 = vdupq_n_s64(0x7FFFFFC0000uLL);
                      goto LABEL_465;
                    case 0xAu:
                      v972.i64[0] = 0xFFFF0000FFFFLL;
                      v972.i64[1] = 0xFFFF0000FFFFLL;
                      v681 = vorrq_s8(vandq_s8(vshrq_n_u32(v391, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v391, v972));
                      goto LABEL_456;
                  }
                }

                else
                {
                  switch(v966)
                  {
                    case 5u:
                      v718 = vorrq_s8(vshrq_n_u32(v391, 0xBuLL), v391);
                      v719 = vandq_s8(vshrq_n_u64(v718, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL));
                      goto LABEL_470;
                    case 6u:
                      v698 = vorrq_s8(vshrq_n_u32(v391, 0xAuLL), v391);
                      v699 = vandq_s8(vshrq_n_u64(v698, 0x14uLL), vdupq_n_s64(0xFFFF000uLL));
                      goto LABEL_463;
                    case 7u:
                      v669 = vorrq_s8(vshrq_n_u32(v391, 9uLL), v391);
                      v670 = vandq_s8(vshrq_n_u64(v669, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL));
LABEL_445:
                      v967.i64[0] = 0xFFFFLL;
                      v967.i64[1] = 0xFFFFLL;
                      v968 = vorrq_s8(v670, vandq_s8(v669, v967));
                      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v968, v968, 8uLL).i64[0], 0x1CuLL), *v968.i8);
                      v365 = (v365 + 7);
                      goto LABEL_476;
                  }
                }

                v994 = 0;
                v1077 = 0uLL;
                do
                {
                  v1068 = v391;
                  v1077.i16[v994] = *(&v1068 & 0xFFFFFFFFFFFFFFF1 | (2 * (v994 & 7)));
                  ++v994;
                }

                while (v994 != 8);
                goto LABEL_475;
              }

              if (*(a1 + 33) <= 1u)
              {
                if (!*(a1 + 33))
                {
                  goto LABEL_476;
                }

                v940 = vorrq_s8(vshrq_n_u32(v390, 0xFuLL), v390);
                v941.i64[0] = 0xFFFFLL;
                v941.i64[1] = 0xFFFFLL;
                v942 = vorrq_s8(vandq_s8(vshrq_n_u64(v940, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v940, v941));
                v943 = vorr_s8(vshld_n_s64(vextq_s8(v942, v942, 8uLL).i64[0], 4uLL), *v942.i8).u32[0];
                v944 = 1;
              }

              else
              {
                switch(v928)
                {
                  case 2u:
                    v955 = vorrq_s8(vshrq_n_u32(v390, 0xEuLL), v390);
                    v956.i64[0] = 0xFFFFLL;
                    v956.i64[1] = 0xFFFFLL;
                    v957 = vorrq_s8(vandq_s8(vshrq_n_u64(v955, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v955, v956));
                    v943 = vorr_s8(vshld_n_s64(vextq_s8(v957, v957, 8uLL).i64[0], 8uLL), *v957.i8).u32[0];
                    v944 = 2;
                    break;
                  case 3u:
                    v945 = vorrq_s8(vshrq_n_u32(v390, 0xDuLL), v390);
                    v946.i64[0] = 0xFFFFLL;
                    v946.i64[1] = 0xFFFFLL;
                    v947 = vorrq_s8(vandq_s8(vshrq_n_u64(v945, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v945, v946));
                    v943 = vorr_s8(vshld_n_s64(vextq_s8(v947, v947, 8uLL).i64[0], 0xCuLL), *v947.i8).u32[0];
                    v944 = 3;
                    break;
                  case 4u:
                    v932 = vorrq_s8(vshrq_n_u32(v390, 0xCuLL), v390);
                    v933.i64[0] = 16776960;
                    v933.i64[1] = 16776960;
                    v934 = vandq_s8(vshrq_n_u64(v932, 0x18uLL), v933);
                    v933.i64[0] = 0xFFFFLL;
                    v933.i64[1] = 0xFFFFLL;
                    v935 = vorrq_s8(v934, vandq_s8(v932, v933));
                    *v365 = vorr_s8(vshld_n_s64(vextq_s8(v935, v935, 8uLL).i64[0], 0x10uLL), *v935.i8).u32[0];
                    v365 = (v365 + 4);
                    goto LABEL_439;
                  default:
                    goto LABEL_436;
                }
              }

              *v365 = v943;
              v365 = (v365 + v944);
              goto LABEL_439;
            }

            if (*(a1 + 29) <= 1u)
            {
              if (!*(a1 + 29))
              {
                goto LABEL_411;
              }

              v902 = vorrq_s8(vshrq_n_u32(v387, 0xFuLL), v387);
              v903.i64[0] = 0xFFFFLL;
              v903.i64[1] = 0xFFFFLL;
              v904 = vorrq_s8(vandq_s8(vshrq_n_u64(v902, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v902, v903));
              v905 = vorr_s8(vshld_n_s64(vextq_s8(v904, v904, 8uLL).i64[0], 4uLL), *v904.i8).u32[0];
              v906 = 1;
            }

            else
            {
              switch(v890)
              {
                case 2u:
                  v917 = vorrq_s8(vshrq_n_u32(v387, 0xEuLL), v387);
                  v918.i64[0] = 0xFFFFLL;
                  v918.i64[1] = 0xFFFFLL;
                  v919 = vorrq_s8(vandq_s8(vshrq_n_u64(v917, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v917, v918));
                  v905 = vorr_s8(vshld_n_s64(vextq_s8(v919, v919, 8uLL).i64[0], 8uLL), *v919.i8).u32[0];
                  v906 = 2;
                  break;
                case 3u:
                  v907 = vorrq_s8(vshrq_n_u32(v387, 0xDuLL), v387);
                  v908.i64[0] = 0xFFFFLL;
                  v908.i64[1] = 0xFFFFLL;
                  v909 = vorrq_s8(vandq_s8(vshrq_n_u64(v907, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v907, v908));
                  v905 = vorr_s8(vshld_n_s64(vextq_s8(v909, v909, 8uLL).i64[0], 0xCuLL), *v909.i8).u32[0];
                  v906 = 3;
                  break;
                case 4u:
                  v894 = vorrq_s8(vshrq_n_u32(v387, 0xCuLL), v387);
                  v895.i64[0] = 16776960;
                  v895.i64[1] = 16776960;
                  v896 = vandq_s8(vshrq_n_u64(v894, 0x18uLL), v895);
                  v895.i64[0] = 0xFFFFLL;
                  v895.i64[1] = 0xFFFFLL;
                  v897 = vorrq_s8(v896, vandq_s8(v894, v895));
                  *v365 = vorr_s8(vshld_n_s64(vextq_s8(v897, v897, 8uLL).i64[0], 0x10uLL), *v897.i8).u32[0];
                  v365 = (v365 + 4);
                  goto LABEL_411;
                default:
                  goto LABEL_408;
              }
            }

            *v365 = v905;
            v365 = (v365 + v906);
            goto LABEL_411;
          }

          if (*(a1 + 29) <= 1u)
          {
            if (!*(a1 + 29))
            {
              goto LABEL_411;
            }

            v864 = vorrq_s8(vshrq_n_u32(v386, 0xFuLL), v386);
            v865.i64[0] = 0xFFFFLL;
            v865.i64[1] = 0xFFFFLL;
            v866 = vorrq_s8(vandq_s8(vshrq_n_u64(v864, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v864, v865));
            v867 = vorr_s8(vshld_n_s64(vextq_s8(v866, v866, 8uLL).i64[0], 4uLL), *v866.i8).u32[0];
            v868 = 1;
          }

          else
          {
            switch(v852)
            {
              case 2u:
                v879 = vorrq_s8(vshrq_n_u32(v386, 0xEuLL), v386);
                v880.i64[0] = 0xFFFFLL;
                v880.i64[1] = 0xFFFFLL;
                v881 = vorrq_s8(vandq_s8(vshrq_n_u64(v879, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v879, v880));
                v867 = vorr_s8(vshld_n_s64(vextq_s8(v881, v881, 8uLL).i64[0], 8uLL), *v881.i8).u32[0];
                v868 = 2;
                break;
              case 3u:
                v869 = vorrq_s8(vshrq_n_u32(v386, 0xDuLL), v386);
                v870.i64[0] = 0xFFFFLL;
                v870.i64[1] = 0xFFFFLL;
                v871 = vorrq_s8(vandq_s8(vshrq_n_u64(v869, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v869, v870));
                v867 = vorr_s8(vshld_n_s64(vextq_s8(v871, v871, 8uLL).i64[0], 0xCuLL), *v871.i8).u32[0];
                v868 = 3;
                break;
              case 4u:
                v856 = vorrq_s8(vshrq_n_u32(v386, 0xCuLL), v386);
                v857.i64[0] = 16776960;
                v857.i64[1] = 16776960;
                v858 = vandq_s8(vshrq_n_u64(v856, 0x18uLL), v857);
                v857.i64[0] = 0xFFFFLL;
                v857.i64[1] = 0xFFFFLL;
                v859 = vorrq_s8(v858, vandq_s8(v856, v857));
                *v365 = vorr_s8(vshld_n_s64(vextq_s8(v859, v859, 8uLL).i64[0], 0x10uLL), *v859.i8).u32[0];
                v365 = (v365 + 4);
                goto LABEL_384;
              default:
                goto LABEL_381;
            }
          }

          *v365 = v867;
          v365 = (v365 + v868);
          goto LABEL_384;
        }

        if (*(a1 + 25) <= 1u)
        {
          if (!*(a1 + 25))
          {
            goto LABEL_357;
          }

          v826 = vorrq_s8(vshrq_n_u32(v383, 0xFuLL), v383);
          v827.i64[0] = 0xFFFFLL;
          v827.i64[1] = 0xFFFFLL;
          v828 = vorrq_s8(vandq_s8(vshrq_n_u64(v826, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v826, v827));
          v829 = vorr_s8(vshld_n_s64(vextq_s8(v828, v828, 8uLL).i64[0], 4uLL), *v828.i8).u32[0];
          v830 = 1;
        }

        else
        {
          switch(v814)
          {
            case 2u:
              v841 = vorrq_s8(vshrq_n_u32(v383, 0xEuLL), v383);
              v842.i64[0] = 0xFFFFLL;
              v842.i64[1] = 0xFFFFLL;
              v843 = vorrq_s8(vandq_s8(vshrq_n_u64(v841, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v841, v842));
              v829 = vorr_s8(vshld_n_s64(vextq_s8(v843, v843, 8uLL).i64[0], 8uLL), *v843.i8).u32[0];
              v830 = 2;
              break;
            case 3u:
              v831 = vorrq_s8(vshrq_n_u32(v383, 0xDuLL), v383);
              v832.i64[0] = 0xFFFFLL;
              v832.i64[1] = 0xFFFFLL;
              v833 = vorrq_s8(vandq_s8(vshrq_n_u64(v831, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v831, v832));
              v829 = vorr_s8(vshld_n_s64(vextq_s8(v833, v833, 8uLL).i64[0], 0xCuLL), *v833.i8).u32[0];
              v830 = 3;
              break;
            case 4u:
              v818 = vorrq_s8(vshrq_n_u32(v383, 0xCuLL), v383);
              v819.i64[0] = 16776960;
              v819.i64[1] = 16776960;
              v820 = vandq_s8(vshrq_n_u64(v818, 0x18uLL), v819);
              v819.i64[0] = 0xFFFFLL;
              v819.i64[1] = 0xFFFFLL;
              v821 = vorrq_s8(v820, vandq_s8(v818, v819));
              *v365 = vorr_s8(vshld_n_s64(vextq_s8(v821, v821, 8uLL).i64[0], 0x10uLL), *v821.i8).u32[0];
              v365 = (v365 + 4);
              goto LABEL_357;
            default:
              goto LABEL_354;
          }
        }

        *v365 = v829;
        v365 = (v365 + v830);
        goto LABEL_357;
      }

      if (*(a1 + 25) <= 1u)
      {
        if (!*(a1 + 25))
        {
          goto LABEL_357;
        }

        v788 = vorrq_s8(vshrq_n_u32(v382, 0xFuLL), v382);
        v789.i64[0] = 0xFFFFLL;
        v789.i64[1] = 0xFFFFLL;
        v790 = vorrq_s8(vandq_s8(vshrq_n_u64(v788, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v788, v789));
        v791 = vorr_s8(vshld_n_s64(vextq_s8(v790, v790, 8uLL).i64[0], 4uLL), *v790.i8).u32[0];
        v792 = 1;
      }

      else
      {
        switch(v776)
        {
          case 2u:
            v803 = vorrq_s8(vshrq_n_u32(v382, 0xEuLL), v382);
            v804.i64[0] = 0xFFFFLL;
            v804.i64[1] = 0xFFFFLL;
            v805 = vorrq_s8(vandq_s8(vshrq_n_u64(v803, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v803, v804));
            v791 = vorr_s8(vshld_n_s64(vextq_s8(v805, v805, 8uLL).i64[0], 8uLL), *v805.i8).u32[0];
            v792 = 2;
            break;
          case 3u:
            v793 = vorrq_s8(vshrq_n_u32(v382, 0xDuLL), v382);
            v794.i64[0] = 0xFFFFLL;
            v794.i64[1] = 0xFFFFLL;
            v795 = vorrq_s8(vandq_s8(vshrq_n_u64(v793, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v793, v794));
            v791 = vorr_s8(vshld_n_s64(vextq_s8(v795, v795, 8uLL).i64[0], 0xCuLL), *v795.i8).u32[0];
            v792 = 3;
            break;
          case 4u:
            v780 = vorrq_s8(vshrq_n_u32(v382, 0xCuLL), v382);
            v781.i64[0] = 16776960;
            v781.i64[1] = 16776960;
            v782 = vandq_s8(vshrq_n_u64(v780, 0x18uLL), v781);
            v781.i64[0] = 0xFFFFLL;
            v781.i64[1] = 0xFFFFLL;
            v783 = vorrq_s8(v782, vandq_s8(v780, v781));
            *v365 = vorr_s8(vshld_n_s64(vextq_s8(v783, v783, 8uLL).i64[0], 0x10uLL), *v783.i8).u32[0];
            v365 = (v365 + 4);
            goto LABEL_330;
          default:
            goto LABEL_327;
        }
      }

      *v365 = v791;
      v365 = (v365 + v792);
      goto LABEL_330;
    }

    if (*v308 <= 1u)
    {
      if (!*v308)
      {
        goto LABEL_303;
      }

      v739 = vorrq_s8(vshrq_n_u32(v379, 0xFuLL), v379);
      v740.i64[0] = 0xFFFFLL;
      v740.i64[1] = 0xFFFFLL;
      v741 = vorrq_s8(vandq_s8(vshrq_n_u64(v739, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v739, v740));
      v742 = vorr_s8(vshld_n_s64(vextq_s8(v741, v741, 8uLL).i64[0], 4uLL), *v741.i8).u32[0];
      v743 = 1;
    }

    else
    {
      switch(v727)
      {
        case 2u:
          v765 = vorrq_s8(vshrq_n_u32(v379, 0xEuLL), v379);
          v766.i64[0] = 0xFFFFLL;
          v766.i64[1] = 0xFFFFLL;
          v767 = vorrq_s8(vandq_s8(vshrq_n_u64(v765, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v765, v766));
          v742 = vorr_s8(vshld_n_s64(vextq_s8(v767, v767, 8uLL).i64[0], 8uLL), *v767.i8).u32[0];
          v743 = 2;
          break;
        case 3u:
          v755 = vorrq_s8(vshrq_n_u32(v379, 0xDuLL), v379);
          v756.i64[0] = 0xFFFFLL;
          v756.i64[1] = 0xFFFFLL;
          v757 = vorrq_s8(vandq_s8(vshrq_n_u64(v755, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v755, v756));
          v742 = vorr_s8(vshld_n_s64(vextq_s8(v757, v757, 8uLL).i64[0], 0xCuLL), *v757.i8).u32[0];
          v743 = 3;
          break;
        case 4u:
          v731 = vorrq_s8(vshrq_n_u32(v379, 0xCuLL), v379);
          v732.i64[0] = 16776960;
          v732.i64[1] = 16776960;
          v733 = vandq_s8(vshrq_n_u64(v731, 0x18uLL), v732);
          v732.i64[0] = 0xFFFFLL;
          v732.i64[1] = 0xFFFFLL;
          v734 = vorrq_s8(v733, vandq_s8(v731, v732));
          *v365 = vorr_s8(vshld_n_s64(vextq_s8(v734, v734, 8uLL).i64[0], 0x10uLL), *v734.i8).u32[0];
          v365 = (v365 + 4);
          goto LABEL_303;
        default:
          goto LABEL_300;
      }
    }

    *v365 = v742;
    v365 = (v365 + v743);
    goto LABEL_303;
  }

  v394 = v392 - v393 * v392 / 8;
  v395 = vdupq_n_s16(v393 * v392 / -8);
  v396 = vshlq_u16(v378, v395);
  if (v394 <= 4)
  {
    if (v394 <= 1)
    {
      if (!v394)
      {
        goto LABEL_193;
      }

      if (v394 != 1)
      {
        goto LABEL_281;
      }

      v435 = vorrq_s8(vshrq_n_u32(v396, 0xFuLL), v396);
      v436.i64[0] = 0xFFFFLL;
      v436.i64[1] = 0xFFFFLL;
      v437 = vorrq_s8(vandq_s8(vshrq_n_u64(v435, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v435, v436));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v437, v437, 8uLL).i64[0], 4uLL), *v437.i8).u32[0];
      v438 = (v365 + 1);
      v439 = vshlq_u16(v379, v395);
      v440 = vorrq_s8(vshrq_n_u32(v439, 0xFuLL), v439);
      v436.i64[0] = 0xFFFFLL;
      v436.i64[1] = 0xFFFFLL;
      v441 = vorrq_s8(vandq_s8(vshrq_n_u64(v440, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v440, v436));
      v442 = vorr_s8(vshld_n_s64(vextq_s8(v441, v441, 8uLL).i64[0], 4uLL), *v441.i8).u32[0];
      v443 = 1;
    }

    else if (v394 == 2)
    {
      v476 = vorrq_s8(vshrq_n_u32(v396, 0xEuLL), v396);
      v477.i64[0] = 0xFFFFLL;
      v477.i64[1] = 0xFFFFLL;
      v478 = vorrq_s8(vandq_s8(vshrq_n_u64(v476, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v476, v477));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v478, v478, 8uLL).i64[0], 8uLL), *v478.i8).u32[0];
      v438 = (v365 + 2);
      v479 = vshlq_u16(v379, v395);
      v480 = vorrq_s8(vshrq_n_u32(v479, 0xEuLL), v479);
      v477.i64[0] = 0xFFFFLL;
      v477.i64[1] = 0xFFFFLL;
      v481 = vorrq_s8(vandq_s8(vshrq_n_u64(v480, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v480, v477));
      v442 = vorr_s8(vshld_n_s64(vextq_s8(v481, v481, 8uLL).i64[0], 8uLL), *v481.i8).u32[0];
      v443 = 2;
    }

    else
    {
      if (v394 != 3)
      {
        v411 = vorrq_s8(vshrq_n_u32(v396, 0xCuLL), v396);
        v412.i64[0] = 16776960;
        v412.i64[1] = 16776960;
        v413 = vandq_s8(vshrq_n_u64(v411, 0x18uLL), v412);
        v412.i64[0] = 0xFFFFLL;
        v412.i64[1] = 0xFFFFLL;
        v414 = vorrq_s8(v413, vandq_s8(v411, v412));
        *v365 = vorr_s8(vshld_n_s64(vextq_s8(v414, v414, 8uLL).i64[0], 0x10uLL), *v414.i8).u32[0];
        v415 = v365 + 1;
        v416 = vshlq_u16(v379, v395);
        v417 = vorrq_s8(vshrq_n_u32(v416, 0xCuLL), v416);
        v412.i64[0] = 16776960;
        v412.i64[1] = 16776960;
        v418 = vandq_s8(vshrq_n_u64(v417, 0x18uLL), v412);
        v412.i64[0] = 0xFFFFLL;
        v412.i64[1] = 0xFFFFLL;
        v419 = vorrq_s8(v418, vandq_s8(v417, v412));
        *v415 = vorr_s8(vshld_n_s64(vextq_s8(v419, v419, 8uLL).i64[0], 0x10uLL), *v419.i8).u32[0];
        v365 = (v415 + 1);
        goto LABEL_193;
      }

      v447 = vorrq_s8(vshrq_n_u32(v396, 0xDuLL), v396);
      v448.i64[0] = 0xFFFFLL;
      v448.i64[1] = 0xFFFFLL;
      v449 = vorrq_s8(vandq_s8(vshrq_n_u64(v447, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v447, v448));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v449, v449, 8uLL).i64[0], 0xCuLL), *v449.i8).u32[0];
      v438 = (v365 + 3);
      v450 = vshlq_u16(v379, v395);
      v451 = vorrq_s8(vshrq_n_u32(v450, 0xDuLL), v450);
      v448.i64[0] = 0xFFFFLL;
      v448.i64[1] = 0xFFFFLL;
      v452 = vorrq_s8(vandq_s8(vshrq_n_u64(v451, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v451, v448));
      v442 = vorr_s8(vshld_n_s64(vextq_s8(v452, v452, 8uLL).i64[0], 0xCuLL), *v452.i8).u32[0];
      v443 = 3;
    }

    *v438 = v442;
    v365 = (v438 + v443);
    goto LABEL_193;
  }

  if (v394 <= 7)
  {
    if (v394 == 5)
    {
      v489 = vorrq_s8(vshrq_n_u32(v396, 0xBuLL), v396);
      v490.i64[0] = 0xFFFFLL;
      v490.i64[1] = 0xFFFFLL;
      v491 = vorrq_s8(vandq_s8(vshrq_n_u64(v489, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v489, v490));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v491, v491, 8uLL).i64[0], 0x14uLL), *v491.i8);
      v492 = (v365 + 5);
      v493 = vshlq_u16(v379, v395);
      v494 = vorrq_s8(vshrq_n_u32(v493, 0xBuLL), v493);
      v490.i64[0] = 0xFFFFLL;
      v490.i64[1] = 0xFFFFLL;
      v495 = vorrq_s8(vandq_s8(vshrq_n_u64(v494, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v494, v490));
      *v492 = vorr_s8(vshld_n_s64(vextq_s8(v495, v495, 8uLL).i64[0], 0x14uLL), *v495.i8);
      v365 = (v492 + 5);
    }

    else if (v394 == 6)
    {
      v462 = vorrq_s8(vshrq_n_u32(v396, 0xAuLL), v396);
      v463.i64[0] = 0xFFFFLL;
      v463.i64[1] = 0xFFFFLL;
      v464 = vorrq_s8(vandq_s8(vshrq_n_u64(v462, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v462, v463));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v464, v464, 8uLL).i64[0], 0x18uLL), *v464.i8);
      v465 = (v365 + 6);
      v466 = vshlq_u16(v379, v395);
      v467 = vorrq_s8(vshrq_n_u32(v466, 0xAuLL), v466);
      v463.i64[0] = 0xFFFFLL;
      v463.i64[1] = 0xFFFFLL;
      v468 = vorrq_s8(vandq_s8(vshrq_n_u64(v467, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v467, v463));
      *v465 = vorr_s8(vshld_n_s64(vextq_s8(v468, v468, 8uLL).i64[0], 0x18uLL), *v468.i8);
      v365 = (v465 + 6);
    }

    else
    {
      v397 = vorrq_s8(vshrq_n_u32(v396, 9uLL), v396);
      v398.i64[0] = 0xFFFFLL;
      v398.i64[1] = 0xFFFFLL;
      v399 = vorrq_s8(vandq_s8(vshrq_n_u64(v397, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v397, v398));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v399, v399, 8uLL).i64[0], 0x1CuLL), *v399.i8);
      v400 = (v365 + 7);
      v401 = vshlq_u16(v379, v395);
      v402 = vorrq_s8(vshrq_n_u32(v401, 9uLL), v401);
      v398.i64[0] = 0xFFFFLL;
      v398.i64[1] = 0xFFFFLL;
      v403 = vorrq_s8(vandq_s8(vshrq_n_u64(v402, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v402, v398));
      *v400 = vorr_s8(vshld_n_s64(vextq_s8(v403, v403, 8uLL).i64[0], 0x1CuLL), *v403.i8);
      v365 = (v400 + 7);
    }

    goto LABEL_193;
  }

  switch(v394)
  {
    case 8:
      v496 = vorrq_s8(vshrq_n_u32(v396, 8uLL), v396);
      v497.i64[0] = 4294901760;
      v497.i64[1] = 4294901760;
      v498 = vandq_s8(vshrq_n_u64(v496, 0x10uLL), v497);
      v497.i64[0] = 0xFFFFLL;
      v497.i64[1] = 0xFFFFLL;
      v499 = vorrq_s8(v498, vandq_s8(v496, v497));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v499, v499, 8uLL).i64[0], 0x20uLL), *v499.i8);
      v500 = (v365 + 1);
      v501 = vshlq_u16(v379, v395);
      v502 = vorrq_s8(vshrq_n_u32(v501, 8uLL), v501);
      v497.i64[0] = 4294901760;
      v497.i64[1] = 4294901760;
      v503 = vandq_s8(vshrq_n_u64(v502, 0x10uLL), v497);
      v497.i64[0] = 0xFFFFLL;
      v497.i64[1] = 0xFFFFLL;
      v504 = vorrq_s8(v503, vandq_s8(v502, v497));
      *v500 = vorr_s8(vshld_n_s64(vextq_s8(v504, v504, 8uLL).i64[0], 0x20uLL), *v504.i8);
      v365 = &v500[1];
      goto LABEL_193;
    case 9:
      v469.i64[0] = 0xFFFF0000FFFFLL;
      v469.i64[1] = 0xFFFF0000FFFFLL;
      v470 = vorrq_s8(vandq_s8(vshrq_n_u32(v396, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v396, v469));
      v471 = vorrq_s8(vandq_s8(vshrq_n_u64(v470, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v470, vdupq_n_s64(0x1FFFFFFuLL)));
      v469.i64[0] = vextq_s8(v471, v471, 8uLL).u64[0];
      *v365 = vorr_s8(vshld_n_s64(v469.i64[0], 0x24uLL), *v471.i8);
      *(v365 + 8) = vshrd_n_u64(v469.u64[0], 0x1CuLL);
      v472 = (v365 + 9);
      v469.i64[0] = 0xFFFF0000FFFFLL;
      v469.i64[1] = 0xFFFF0000FFFFLL;
      v473 = vshlq_u16(v379, v395);
      v474 = vorrq_s8(vandq_s8(vshrq_n_u32(v473, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v473, v469));
      v475 = vorrq_s8(vandq_s8(vshrq_n_u64(v474, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v474, vdupq_n_s64(0x1FFFFFFuLL)));
      v469.i64[0] = vextq_s8(v475, v475, 8uLL).u64[0];
      *v472 = vorr_s8(vshld_n_s64(v469.i64[0], 0x24uLL), *v475.i8);
      v472[1].i8[0] = vshrd_n_u64(v469.u64[0], 0x1CuLL);
      v365 = (&v472[1] + 1);
      goto LABEL_193;
    case 10:
      v423.i64[0] = 0xFFFF0000FFFFLL;
      v423.i64[1] = 0xFFFF0000FFFFLL;
      v424 = vorrq_s8(vandq_s8(vshrq_n_u32(v396, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v396, v423));
      v425 = vorrq_s8(vandq_s8(vshrq_n_u64(v424, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v424, vdupq_n_s64(0x3FFFFFFuLL)));
      v423.i64[0] = vextq_s8(v425, v425, 8uLL).u64[0];
      *v365 = vorr_s8(vshld_n_s64(v423.i64[0], 0x28uLL), *v425.i8);
      *(v365 + 4) = vshrd_n_u64(v423.u64[0], 0x18uLL);
      v426 = (v365 + 10);
      v423.i64[0] = 0xFFFF0000FFFFLL;
      v423.i64[1] = 0xFFFF0000FFFFLL;
      v427 = vshlq_u16(v379, v395);
      v428 = vorrq_s8(vandq_s8(vshrq_n_u32(v427, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v427, v423));
      v429 = vorrq_s8(vandq_s8(vshrq_n_u64(v428, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v428, vdupq_n_s64(0x3FFFFFFuLL)));
      v423.i64[0] = vextq_s8(v429, v429, 8uLL).u64[0];
      *v426 = vorr_s8(vshld_n_s64(v423.i64[0], 0x28uLL), *v429.i8);
      v426[1].i16[0] = vshrd_n_u64(v423.u64[0], 0x18uLL);
      v365 = (&v426[1] + 2);
      goto LABEL_193;
  }

LABEL_281:
  v1000 = v395;
  v1002 = v379;
  v1006 = v382;
  v1012 = v383;
  v1019 = v386;
  v1028 = v387;
  v1038 = v390;
  v1050 = v391;
  v744 = 0;
  v1077 = 0uLL;
  do
  {
    v1067 = v396;
    v1077.i16[v744] = *(&v1067 & 0xFFFFFFFFFFFFFFF1 | (2 * (v744 & 7)));
    ++v744;
  }

  while (v744 != 8);
  v745 = vectorWritePacked(v365, &v1077, v394);
  v746 = vshlq_u16(v1002, v1000);
  v996 = 0;
  v1077 = 0uLL;
  do
  {
    v1066 = v746;
    v1077.i16[v996] = *(&v1066 & 0xFFFFFFFFFFFFFFF1 | (2 * (v996 & 7)));
    ++v996;
  }

  while (v996 != 8);
  v365 = vectorWritePacked(v745, &v1077, v394);
  v390 = v1038;
  v391 = v1050;
  v386 = v1019;
  v387 = v1028;
  v382 = v1006;
  v383 = v1012;
LABEL_193:
  v505 = *(a1 + 25);
  v506 = v505 - *(a1 + 27) * v505 / 8;
  v507 = vdupq_n_s16(*(a1 + 27) * v505 / -8);
  v508 = vshlq_u16(v382, v507);
  if (v506 <= 4)
  {
    if (v506 <= 1)
    {
      if (!v506)
      {
        goto LABEL_216;
      }

      if (v506 != 1)
      {
        goto LABEL_284;
      }

      v532 = vorrq_s8(vshrq_n_u32(v508, 0xFuLL), v508);
      v533.i64[0] = 0xFFFFLL;
      v533.i64[1] = 0xFFFFLL;
      v534 = vorrq_s8(vandq_s8(vshrq_n_u64(v532, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v532, v533));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v534, v534, 8uLL).i64[0], 4uLL), *v534.i8).u32[0];
      v535 = (v365 + 1);
      v536 = vshlq_u16(v383, v507);
      v537 = vorrq_s8(vshrq_n_u32(v536, 0xFuLL), v536);
      v533.i64[0] = 0xFFFFLL;
      v533.i64[1] = 0xFFFFLL;
      v538 = vorrq_s8(vandq_s8(vshrq_n_u64(v537, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v537, v533));
      v539 = vorr_s8(vshld_n_s64(vextq_s8(v538, v538, 8uLL).i64[0], 4uLL), *v538.i8).u32[0];
      v540 = 1;
    }

    else if (v506 == 2)
    {
      v561 = vorrq_s8(vshrq_n_u32(v508, 0xEuLL), v508);
      v562.i64[0] = 0xFFFFLL;
      v562.i64[1] = 0xFFFFLL;
      v563 = vorrq_s8(vandq_s8(vshrq_n_u64(v561, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v561, v562));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v563, v563, 8uLL).i64[0], 8uLL), *v563.i8).u32[0];
      v535 = (v365 + 2);
      v564 = vshlq_u16(v383, v507);
      v565 = vorrq_s8(vshrq_n_u32(v564, 0xEuLL), v564);
      v562.i64[0] = 0xFFFFLL;
      v562.i64[1] = 0xFFFFLL;
      v566 = vorrq_s8(vandq_s8(vshrq_n_u64(v565, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v565, v562));
      v539 = vorr_s8(vshld_n_s64(vextq_s8(v566, v566, 8uLL).i64[0], 8uLL), *v566.i8).u32[0];
      v540 = 2;
    }

    else
    {
      if (v506 != 3)
      {
        v516 = vorrq_s8(vshrq_n_u32(v508, 0xCuLL), v508);
        v517.i64[0] = 16776960;
        v517.i64[1] = 16776960;
        v518 = vandq_s8(vshrq_n_u64(v516, 0x18uLL), v517);
        v517.i64[0] = 0xFFFFLL;
        v517.i64[1] = 0xFFFFLL;
        v519 = vorrq_s8(v518, vandq_s8(v516, v517));
        *v365 = vorr_s8(vshld_n_s64(vextq_s8(v519, v519, 8uLL).i64[0], 0x10uLL), *v519.i8).u32[0];
        v520 = v365 + 1;
        v521 = vshlq_u16(v383, v507);
        v522 = vorrq_s8(vshrq_n_u32(v521, 0xCuLL), v521);
        v517.i64[0] = 16776960;
        v517.i64[1] = 16776960;
        v523 = vandq_s8(vshrq_n_u64(v522, 0x18uLL), v517);
        v517.i64[0] = 0xFFFFLL;
        v517.i64[1] = 0xFFFFLL;
        v524 = vorrq_s8(v523, vandq_s8(v522, v517));
        *v520 = vorr_s8(vshld_n_s64(vextq_s8(v524, v524, 8uLL).i64[0], 0x10uLL), *v524.i8).u32[0];
        v365 = (v520 + 1);
        goto LABEL_216;
      }

      v541 = vorrq_s8(vshrq_n_u32(v508, 0xDuLL), v508);
      v542.i64[0] = 0xFFFFLL;
      v542.i64[1] = 0xFFFFLL;
      v543 = vorrq_s8(vandq_s8(vshrq_n_u64(v541, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v541, v542));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v543, v543, 8uLL).i64[0], 0xCuLL), *v543.i8).u32[0];
      v535 = (v365 + 3);
      v544 = vshlq_u16(v383, v507);
      v545 = vorrq_s8(vshrq_n_u32(v544, 0xDuLL), v544);
      v542.i64[0] = 0xFFFFLL;
      v542.i64[1] = 0xFFFFLL;
      v546 = vorrq_s8(vandq_s8(vshrq_n_u64(v545, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v545, v542));
      v539 = vorr_s8(vshld_n_s64(vextq_s8(v546, v546, 8uLL).i64[0], 0xCuLL), *v546.i8).u32[0];
      v540 = 3;
    }

    *v535 = v539;
    v365 = (v535 + v540);
    goto LABEL_216;
  }

  if (v506 <= 7)
  {
    if (v506 == 5)
    {
      v567 = vorrq_s8(vshrq_n_u32(v508, 0xBuLL), v508);
      v568.i64[0] = 0xFFFFLL;
      v568.i64[1] = 0xFFFFLL;
      v569 = vorrq_s8(vandq_s8(vshrq_n_u64(v567, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v567, v568));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v569, v569, 8uLL).i64[0], 0x14uLL), *v569.i8);
      v570 = (v365 + 5);
      v571 = vshlq_u16(v383, v507);
      v572 = vorrq_s8(vshrq_n_u32(v571, 0xBuLL), v571);
      v568.i64[0] = 0xFFFFLL;
      v568.i64[1] = 0xFFFFLL;
      v573 = vorrq_s8(vandq_s8(vshrq_n_u64(v572, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v572, v568));
      *v570 = vorr_s8(vshld_n_s64(vextq_s8(v573, v573, 8uLL).i64[0], 0x14uLL), *v573.i8);
      v365 = (v570 + 5);
    }

    else if (v506 == 6)
    {
      v547 = vorrq_s8(vshrq_n_u32(v508, 0xAuLL), v508);
      v548.i64[0] = 0xFFFFLL;
      v548.i64[1] = 0xFFFFLL;
      v549 = vorrq_s8(vandq_s8(vshrq_n_u64(v547, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v547, v548));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v549, v549, 8uLL).i64[0], 0x18uLL), *v549.i8);
      v550 = (v365 + 6);
      v551 = vshlq_u16(v383, v507);
      v552 = vorrq_s8(vshrq_n_u32(v551, 0xAuLL), v551);
      v548.i64[0] = 0xFFFFLL;
      v548.i64[1] = 0xFFFFLL;
      v553 = vorrq_s8(vandq_s8(vshrq_n_u64(v552, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v552, v548));
      *v550 = vorr_s8(vshld_n_s64(vextq_s8(v553, v553, 8uLL).i64[0], 0x18uLL), *v553.i8);
      v365 = (v550 + 6);
    }

    else
    {
      v509 = vorrq_s8(vshrq_n_u32(v508, 9uLL), v508);
      v510.i64[0] = 0xFFFFLL;
      v510.i64[1] = 0xFFFFLL;
      v511 = vorrq_s8(vandq_s8(vshrq_n_u64(v509, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v509, v510));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v511, v511, 8uLL).i64[0], 0x1CuLL), *v511.i8);
      v512 = (v365 + 7);
      v513 = vshlq_u16(v383, v507);
      v514 = vorrq_s8(vshrq_n_u32(v513, 9uLL), v513);
      v510.i64[0] = 0xFFFFLL;
      v510.i64[1] = 0xFFFFLL;
      v515 = vorrq_s8(vandq_s8(vshrq_n_u64(v514, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v514, v510));
      *v512 = vorr_s8(vshld_n_s64(vextq_s8(v515, v515, 8uLL).i64[0], 0x1CuLL), *v515.i8);
      v365 = (v512 + 7);
    }

    goto LABEL_216;
  }

  switch(v506)
  {
    case 8:
      v574 = vorrq_s8(vshrq_n_u32(v508, 8uLL), v508);
      v575.i64[0] = 4294901760;
      v575.i64[1] = 4294901760;
      v576 = vandq_s8(vshrq_n_u64(v574, 0x10uLL), v575);
      v575.i64[0] = 0xFFFFLL;
      v575.i64[1] = 0xFFFFLL;
      v577 = vorrq_s8(v576, vandq_s8(v574, v575));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v577, v577, 8uLL).i64[0], 0x20uLL), *v577.i8);
      v578 = (v365 + 1);
      v579 = vshlq_u16(v383, v507);
      v580 = vorrq_s8(vshrq_n_u32(v579, 8uLL), v579);
      v575.i64[0] = 4294901760;
      v575.i64[1] = 4294901760;
      v581 = vandq_s8(vshrq_n_u64(v580, 0x10uLL), v575);
      v575.i64[0] = 0xFFFFLL;
      v575.i64[1] = 0xFFFFLL;
      v582 = vorrq_s8(v581, vandq_s8(v580, v575));
      *v578 = vorr_s8(vshld_n_s64(vextq_s8(v582, v582, 8uLL).i64[0], 0x20uLL), *v582.i8);
      v365 = &v578[1];
      goto LABEL_216;
    case 9:
      v554.i64[0] = 0xFFFF0000FFFFLL;
      v554.i64[1] = 0xFFFF0000FFFFLL;
      v555 = vorrq_s8(vandq_s8(vshrq_n_u32(v508, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v508, v554));
      v556 = vorrq_s8(vandq_s8(vshrq_n_u64(v555, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v555, vdupq_n_s64(0x1FFFFFFuLL)));
      v554.i64[0] = vextq_s8(v556, v556, 8uLL).u64[0];
      *v365 = vorr_s8(vshld_n_s64(v554.i64[0], 0x24uLL), *v556.i8);
      *(v365 + 8) = vshrd_n_u64(v554.u64[0], 0x1CuLL);
      v557 = (v365 + 9);
      v554.i64[0] = 0xFFFF0000FFFFLL;
      v554.i64[1] = 0xFFFF0000FFFFLL;
      v558 = vshlq_u16(v383, v507);
      v559 = vorrq_s8(vandq_s8(vshrq_n_u32(v558, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v558, v554));
      v560 = vorrq_s8(vandq_s8(vshrq_n_u64(v559, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v559, vdupq_n_s64(0x1FFFFFFuLL)));
      v554.i64[0] = vextq_s8(v560, v560, 8uLL).u64[0];
      *v557 = vorr_s8(vshld_n_s64(v554.i64[0], 0x24uLL), *v560.i8);
      v557[1].i8[0] = vshrd_n_u64(v554.u64[0], 0x1CuLL);
      v365 = (&v557[1] + 1);
      goto LABEL_216;
    case 10:
      v525.i64[0] = 0xFFFF0000FFFFLL;
      v525.i64[1] = 0xFFFF0000FFFFLL;
      v526 = vorrq_s8(vandq_s8(vshrq_n_u32(v508, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v508, v525));
      v527 = vorrq_s8(vandq_s8(vshrq_n_u64(v526, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v526, vdupq_n_s64(0x3FFFFFFuLL)));
      v525.i64[0] = vextq_s8(v527, v527, 8uLL).u64[0];
      *v365 = vorr_s8(vshld_n_s64(v525.i64[0], 0x28uLL), *v527.i8);
      *(v365 + 4) = vshrd_n_u64(v525.u64[0], 0x18uLL);
      v528 = (v365 + 10);
      v525.i64[0] = 0xFFFF0000FFFFLL;
      v525.i64[1] = 0xFFFF0000FFFFLL;
      v529 = vshlq_u16(v383, v507);
      v530 = vorrq_s8(vandq_s8(vshrq_n_u32(v529, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v529, v525));
      v531 = vorrq_s8(vandq_s8(vshrq_n_u64(v530, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v530, vdupq_n_s64(0x3FFFFFFuLL)));
      v525.i64[0] = vextq_s8(v531, v531, 8uLL).u64[0];
      *v528 = vorr_s8(vshld_n_s64(v525.i64[0], 0x28uLL), *v531.i8);
      v528[1].i16[0] = vshrd_n_u64(v525.u64[0], 0x18uLL);
      v365 = (&v528[1] + 2);
      goto LABEL_216;
  }

LABEL_284:
  v1007 = v507;
  v1013 = v383;
  v1020 = v386;
  v1029 = v387;
  v1039 = v390;
  v1051 = v391;
  v747 = 0;
  v1077 = 0uLL;
  do
  {
    v1065 = v508;
    v1077.i16[v747] = *(&v1065 & 0xFFFFFFFFFFFFFFF1 | (2 * (v747 & 7)));
    ++v747;
  }

  while (v747 != 8);
  v748 = vectorWritePacked(v365, &v1077, v506);
  v749 = vshlq_u16(v1013, v1007);
  v997 = 0;
  v1077 = 0uLL;
  do
  {
    v1064 = v749;
    v1077.i16[v997] = *(&v1064 & 0xFFFFFFFFFFFFFFF1 | (2 * (v997 & 7)));
    ++v997;
  }

  while (v997 != 8);
  v365 = vectorWritePacked(v748, &v1077, v506);
  v390 = v1039;
  v391 = v1051;
  v386 = v1020;
  v387 = v1029;
LABEL_216:
  v583 = *(a1 + 29);
  v584 = v583 - *(a1 + 27) * v583 / 8;
  v585 = vdupq_n_s16(*(a1 + 27) * v583 / -8);
  v586 = vshlq_u16(v386, v585);
  if (v584 <= 4)
  {
    if (v584 <= 1)
    {
      if (!v584)
      {
        goto LABEL_239;
      }

      if (v584 != 1)
      {
        goto LABEL_287;
      }

      v610 = vorrq_s8(vshrq_n_u32(v586, 0xFuLL), v586);
      v611.i64[0] = 0xFFFFLL;
      v611.i64[1] = 0xFFFFLL;
      v612 = vorrq_s8(vandq_s8(vshrq_n_u64(v610, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v610, v611));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v612, v612, 8uLL).i64[0], 4uLL), *v612.i8).u32[0];
      v613 = (v365 + 1);
      v614 = vshlq_u16(v387, v585);
      v615 = vorrq_s8(vshrq_n_u32(v614, 0xFuLL), v614);
      v611.i64[0] = 0xFFFFLL;
      v611.i64[1] = 0xFFFFLL;
      v616 = vorrq_s8(vandq_s8(vshrq_n_u64(v615, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v615, v611));
      v617 = vorr_s8(vshld_n_s64(vextq_s8(v616, v616, 8uLL).i64[0], 4uLL), *v616.i8).u32[0];
      v618 = 1;
    }

    else if (v584 == 2)
    {
      v639 = vorrq_s8(vshrq_n_u32(v586, 0xEuLL), v586);
      v640.i64[0] = 0xFFFFLL;
      v640.i64[1] = 0xFFFFLL;
      v641 = vorrq_s8(vandq_s8(vshrq_n_u64(v639, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v639, v640));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v641, v641, 8uLL).i64[0], 8uLL), *v641.i8).u32[0];
      v613 = (v365 + 2);
      v642 = vshlq_u16(v387, v585);
      v643 = vorrq_s8(vshrq_n_u32(v642, 0xEuLL), v642);
      v640.i64[0] = 0xFFFFLL;
      v640.i64[1] = 0xFFFFLL;
      v644 = vorrq_s8(vandq_s8(vshrq_n_u64(v643, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v643, v640));
      v617 = vorr_s8(vshld_n_s64(vextq_s8(v644, v644, 8uLL).i64[0], 8uLL), *v644.i8).u32[0];
      v618 = 2;
    }

    else
    {
      if (v584 != 3)
      {
        v594 = vorrq_s8(vshrq_n_u32(v586, 0xCuLL), v586);
        v595.i64[0] = 16776960;
        v595.i64[1] = 16776960;
        v596 = vandq_s8(vshrq_n_u64(v594, 0x18uLL), v595);
        v595.i64[0] = 0xFFFFLL;
        v595.i64[1] = 0xFFFFLL;
        v597 = vorrq_s8(v596, vandq_s8(v594, v595));
        *v365 = vorr_s8(vshld_n_s64(vextq_s8(v597, v597, 8uLL).i64[0], 0x10uLL), *v597.i8).u32[0];
        v598 = v365 + 1;
        v599 = vshlq_u16(v387, v585);
        v600 = vorrq_s8(vshrq_n_u32(v599, 0xCuLL), v599);
        v595.i64[0] = 16776960;
        v595.i64[1] = 16776960;
        v601 = vandq_s8(vshrq_n_u64(v600, 0x18uLL), v595);
        v595.i64[0] = 0xFFFFLL;
        v595.i64[1] = 0xFFFFLL;
        v602 = vorrq_s8(v601, vandq_s8(v600, v595));
        *v598 = vorr_s8(vshld_n_s64(vextq_s8(v602, v602, 8uLL).i64[0], 0x10uLL), *v602.i8).u32[0];
        v365 = (v598 + 1);
        goto LABEL_239;
      }

      v619 = vorrq_s8(vshrq_n_u32(v586, 0xDuLL), v586);
      v620.i64[0] = 0xFFFFLL;
      v620.i64[1] = 0xFFFFLL;
      v621 = vorrq_s8(vandq_s8(vshrq_n_u64(v619, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v619, v620));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v621, v621, 8uLL).i64[0], 0xCuLL), *v621.i8).u32[0];
      v613 = (v365 + 3);
      v622 = vshlq_u16(v387, v585);
      v623 = vorrq_s8(vshrq_n_u32(v622, 0xDuLL), v622);
      v620.i64[0] = 0xFFFFLL;
      v620.i64[1] = 0xFFFFLL;
      v624 = vorrq_s8(vandq_s8(vshrq_n_u64(v623, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v623, v620));
      v617 = vorr_s8(vshld_n_s64(vextq_s8(v624, v624, 8uLL).i64[0], 0xCuLL), *v624.i8).u32[0];
      v618 = 3;
    }

    *v613 = v617;
    v365 = (v613 + v618);
    goto LABEL_239;
  }

  if (v584 <= 7)
  {
    if (v584 == 5)
    {
      v645 = vorrq_s8(vshrq_n_u32(v586, 0xBuLL), v586);
      v646.i64[0] = 0xFFFFLL;
      v646.i64[1] = 0xFFFFLL;
      v647 = vorrq_s8(vandq_s8(vshrq_n_u64(v645, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v645, v646));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v647, v647, 8uLL).i64[0], 0x14uLL), *v647.i8);
      v648 = (v365 + 5);
      v649 = vshlq_u16(v387, v585);
      v650 = vorrq_s8(vshrq_n_u32(v649, 0xBuLL), v649);
      v646.i64[0] = 0xFFFFLL;
      v646.i64[1] = 0xFFFFLL;
      v651 = vorrq_s8(vandq_s8(vshrq_n_u64(v650, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v650, v646));
      *v648 = vorr_s8(vshld_n_s64(vextq_s8(v651, v651, 8uLL).i64[0], 0x14uLL), *v651.i8);
      v365 = (v648 + 5);
    }

    else if (v584 == 6)
    {
      v625 = vorrq_s8(vshrq_n_u32(v586, 0xAuLL), v586);
      v626.i64[0] = 0xFFFFLL;
      v626.i64[1] = 0xFFFFLL;
      v627 = vorrq_s8(vandq_s8(vshrq_n_u64(v625, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v625, v626));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v627, v627, 8uLL).i64[0], 0x18uLL), *v627.i8);
      v628 = (v365 + 6);
      v629 = vshlq_u16(v387, v585);
      v630 = vorrq_s8(vshrq_n_u32(v629, 0xAuLL), v629);
      v626.i64[0] = 0xFFFFLL;
      v626.i64[1] = 0xFFFFLL;
      v631 = vorrq_s8(vandq_s8(vshrq_n_u64(v630, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v630, v626));
      *v628 = vorr_s8(vshld_n_s64(vextq_s8(v631, v631, 8uLL).i64[0], 0x18uLL), *v631.i8);
      v365 = (v628 + 6);
    }

    else
    {
      v587 = vorrq_s8(vshrq_n_u32(v586, 9uLL), v586);
      v588.i64[0] = 0xFFFFLL;
      v588.i64[1] = 0xFFFFLL;
      v589 = vorrq_s8(vandq_s8(vshrq_n_u64(v587, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v587, v588));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v589, v589, 8uLL).i64[0], 0x1CuLL), *v589.i8);
      v590 = (v365 + 7);
      v591 = vshlq_u16(v387, v585);
      v592 = vorrq_s8(vshrq_n_u32(v591, 9uLL), v591);
      v588.i64[0] = 0xFFFFLL;
      v588.i64[1] = 0xFFFFLL;
      v593 = vorrq_s8(vandq_s8(vshrq_n_u64(v592, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v592, v588));
      *v590 = vorr_s8(vshld_n_s64(vextq_s8(v593, v593, 8uLL).i64[0], 0x1CuLL), *v593.i8);
      v365 = (v590 + 7);
    }

    goto LABEL_239;
  }

  switch(v584)
  {
    case 8:
      v652 = vorrq_s8(vshrq_n_u32(v586, 8uLL), v586);
      v653.i64[0] = 4294901760;
      v653.i64[1] = 4294901760;
      v654 = vandq_s8(vshrq_n_u64(v652, 0x10uLL), v653);
      v653.i64[0] = 0xFFFFLL;
      v653.i64[1] = 0xFFFFLL;
      v655 = vorrq_s8(v654, vandq_s8(v652, v653));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v655, v655, 8uLL).i64[0], 0x20uLL), *v655.i8);
      v656 = (v365 + 1);
      v657 = vshlq_u16(v387, v585);
      v658 = vorrq_s8(vshrq_n_u32(v657, 8uLL), v657);
      v653.i64[0] = 4294901760;
      v653.i64[1] = 4294901760;
      v659 = vandq_s8(vshrq_n_u64(v658, 0x10uLL), v653);
      v653.i64[0] = 0xFFFFLL;
      v653.i64[1] = 0xFFFFLL;
      v660 = vorrq_s8(v659, vandq_s8(v658, v653));
      *v656 = vorr_s8(vshld_n_s64(vextq_s8(v660, v660, 8uLL).i64[0], 0x20uLL), *v660.i8);
      v365 = &v656[1];
      goto LABEL_239;
    case 9:
      v632.i64[0] = 0xFFFF0000FFFFLL;
      v632.i64[1] = 0xFFFF0000FFFFLL;
      v633 = vorrq_s8(vandq_s8(vshrq_n_u32(v586, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v586, v632));
      v634 = vorrq_s8(vandq_s8(vshrq_n_u64(v633, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v633, vdupq_n_s64(0x1FFFFFFuLL)));
      v632.i64[0] = vextq_s8(v634, v634, 8uLL).u64[0];
      *v365 = vorr_s8(vshld_n_s64(v632.i64[0], 0x24uLL), *v634.i8);
      *(v365 + 8) = vshrd_n_u64(v632.u64[0], 0x1CuLL);
      v635 = (v365 + 9);
      v632.i64[0] = 0xFFFF0000FFFFLL;
      v632.i64[1] = 0xFFFF0000FFFFLL;
      v636 = vshlq_u16(v387, v585);
      v637 = vorrq_s8(vandq_s8(vshrq_n_u32(v636, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v636, v632));
      v638 = vorrq_s8(vandq_s8(vshrq_n_u64(v637, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v637, vdupq_n_s64(0x1FFFFFFuLL)));
      v632.i64[0] = vextq_s8(v638, v638, 8uLL).u64[0];
      *v635 = vorr_s8(vshld_n_s64(v632.i64[0], 0x24uLL), *v638.i8);
      v635[1].i8[0] = vshrd_n_u64(v632.u64[0], 0x1CuLL);
      v365 = (&v635[1] + 1);
      goto LABEL_239;
    case 10:
      v603.i64[0] = 0xFFFF0000FFFFLL;
      v603.i64[1] = 0xFFFF0000FFFFLL;
      v604 = vorrq_s8(vandq_s8(vshrq_n_u32(v586, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v586, v603));
      v605 = vorrq_s8(vandq_s8(vshrq_n_u64(v604, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v604, vdupq_n_s64(0x3FFFFFFuLL)));
      v603.i64[0] = vextq_s8(v605, v605, 8uLL).u64[0];
      *v365 = vorr_s8(vshld_n_s64(v603.i64[0], 0x28uLL), *v605.i8);
      *(v365 + 4) = vshrd_n_u64(v603.u64[0], 0x18uLL);
      v606 = (v365 + 10);
      v603.i64[0] = 0xFFFF0000FFFFLL;
      v603.i64[1] = 0xFFFF0000FFFFLL;
      v607 = vshlq_u16(v387, v585);
      v608 = vorrq_s8(vandq_s8(vshrq_n_u32(v607, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v607, v603));
      v609 = vorrq_s8(vandq_s8(vshrq_n_u64(v608, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v608, vdupq_n_s64(0x3FFFFFFuLL)));
      v603.i64[0] = vextq_s8(v609, v609, 8uLL).u64[0];
      *v606 = vorr_s8(vshld_n_s64(v603.i64[0], 0x28uLL), *v609.i8);
      v606[1].i16[0] = vshrd_n_u64(v603.u64[0], 0x18uLL);
      v365 = (&v606[1] + 2);
      goto LABEL_239;
  }

LABEL_287:
  v1021 = v585;
  v1030 = v387;
  v1040 = v390;
  v1052 = v391;
  v750 = 0;
  v1077 = 0uLL;
  do
  {
    v1063 = v586;
    v1077.i16[v750] = *(&v1063 & 0xFFFFFFFFFFFFFFF1 | (2 * (v750 & 7)));
    ++v750;
  }

  while (v750 != 8);
  v751 = vectorWritePacked(v365, &v1077, v584);
  v752 = vshlq_u16(v1030, v1021);
  v998 = 0;
  v1077 = 0uLL;
  do
  {
    v1062 = v752;
    v1077.i16[v998] = *(&v1062 & 0xFFFFFFFFFFFFFFF1 | (2 * (v998 & 7)));
    ++v998;
  }

  while (v998 != 8);
  v365 = vectorWritePacked(v751, &v1077, v584);
  v390 = v1040;
  v391 = v1052;
LABEL_239:
  v661 = *(a1 + 33);
  v662 = v661 - *(a1 + 27) * v661 / 8;
  v663 = vdupq_n_s16(*(a1 + 27) * v661 / -8);
  v664 = vshlq_u16(v390, v663);
  if (v662 <= 4)
  {
    if (v662 > 1)
    {
      if (v662 != 2)
      {
        if (v662 != 3)
        {
          v671 = vorrq_s8(vshrq_n_u32(v664, 0xCuLL), v664);
          v672.i64[0] = 16776960;
          v672.i64[1] = 16776960;
          v673 = vandq_s8(vshrq_n_u64(v671, 0x18uLL), v672);
          v672.i64[0] = 0xFFFFLL;
          v672.i64[1] = 0xFFFFLL;
          v674 = vorrq_s8(v673, vandq_s8(v671, v672));
          *v365 = vorr_s8(vshld_n_s64(vextq_s8(v674, v674, 8uLL).i64[0], 0x10uLL), *v674.i8).u32[0];
          v365 = (v365 + 4);
          v675 = vshlq_u16(v391, v663);
          v676 = vorrq_s8(vshrq_n_u32(v675, 0xCuLL), v675);
LABEL_451:
          v969.i64[0] = 16776960;
          v969.i64[1] = 16776960;
          v970 = vandq_s8(vshrq_n_u64(v676, 0x18uLL), v969);
          v969.i64[0] = 0xFFFFLL;
          v969.i64[1] = 0xFFFFLL;
          v971 = vorrq_s8(v970, vandq_s8(v676, v969));
          *v365 = vorr_s8(vshld_n_s64(vextq_s8(v971, v971, 8uLL).i64[0], 0x10uLL), *v971.i8).u32[0];
          v365 = (v365 + 4);
          goto LABEL_476;
        }

        v688 = vorrq_s8(vshrq_n_u32(v664, 0xDuLL), v664);
        v689.i64[0] = 0xFFFFLL;
        v689.i64[1] = 0xFFFFLL;
        v690 = vorrq_s8(vandq_s8(vshrq_n_u64(v688, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v688, v689));
        *v365 = vorr_s8(vshld_n_s64(vextq_s8(v690, v690, 8uLL).i64[0], 0xCuLL), *v690.i8).u32[0];
        v365 = (v365 + 3);
        v691 = vshlq_u16(v391, v663);
        v692 = vorrq_s8(vshrq_n_u32(v691, 0xDuLL), v691);
        v693 = vandq_s8(vshrq_n_u64(v692, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL));
        goto LABEL_461;
      }

      v708 = vorrq_s8(vshrq_n_u32(v664, 0xEuLL), v664);
      v709.i64[0] = 0xFFFFLL;
      v709.i64[1] = 0xFFFFLL;
      v710 = vorrq_s8(vandq_s8(vshrq_n_u64(v708, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v708, v709));
      *v365 = vorr_s8(vshld_n_s64(vextq_s8(v710, v710, 8uLL).i64[0], 8uLL), *v710.i8).u32[0];
      v365 = (v365 + 2);
      v711 = vshlq_u16(v391, v663);
      v712 = vorrq_s8(vshrq_n_u32(v711, 0xEuLL), v711);
      v713 = vandq_s8(vshrq_n_u64(v712, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL));
LABEL_467:
      v987.i64[0] = 0xFFFFLL;
      v987.i64[1] = 0xFFFFLL;
      v988 = vorrq_s8(v713, vandq_s8(v712, v987));
      v977 = vorr_s8(vshld_n_s64(vextq_s8(v988, v988, 8uLL).i64[0], 8uLL), *v988.i8).u32[0];
      v978 = 2;
      goto LABEL_468;
    }

    if (!v662)
    {
      goto LABEL_476;
    }

    if (v662 != 1)
    {
LABEL_290:
      v1041 = v663;
      v1053 = v391;
      v753 = 0;
      v1077 = 0uLL;
      do
      {
        v1061 = v664;
        v1077.i16[v753] = *(&v1061 & 0xFFFFFFFFFFFFFFF1 | (2 * (v753 & 7)));
        ++v753;
      }

      while (v753 != 8);
      v365 = vectorWritePacked(v365, &v1077, v662);
      v754 = vshlq_u16(v1053, v1041);
      v999 = 0;
      v1077 = 0uLL;
      do
      {
        v1060 = v754;
        v1077.i16[v999] = *(&v1060 & 0xFFFFFFFFFFFFFFF1 | (2 * (v999 & 7)));
        ++v999;
      }

      while (v999 != 8);
      v966 = v662;
LABEL_475:
      v365 = vectorWritePacked(v365, &v1077, v966);
      goto LABEL_476;
    }

    v682 = vorrq_s8(vshrq_n_u32(v664, 0xFuLL), v664);
    v683.i64[0] = 0xFFFFLL;
    v683.i64[1] = 0xFFFFLL;
    v684 = vorrq_s8(vandq_s8(vshrq_n_u64(v682, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v682, v683));
    *v365 = vorr_s8(vshld_n_s64(vextq_s8(v684, v684, 8uLL).i64[0], 4uLL), *v684.i8).u32[0];
    v365 = (v365 + 1);
    v685 = vshlq_u16(v391, v663);
    v686 = vorrq_s8(vshrq_n_u32(v685, 0xFuLL), v685);
    v687 = vandq_s8(vshrq_n_u64(v686, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL));
LABEL_459:
    v975.i64[0] = 0xFFFFLL;
    v975.i64[1] = 0xFFFFLL;
    v976 = vorrq_s8(v687, vandq_s8(v686, v975));
    v977 = vorr_s8(vshld_n_s64(vextq_s8(v976, v976, 8uLL).i64[0], 4uLL), *v976.i8).u32[0];
    v978 = 1;
LABEL_468:
    *v365 = v977;
    v365 = (v365 + v978);
    goto LABEL_476;
  }

  if (v662 > 7)
  {
    if (v662 != 8)
    {
      if (v662 != 9)
      {
        if (v662 == 10)
        {
          v677.i64[0] = 0xFFFF0000FFFFLL;
          v677.i64[1] = 0xFFFF0000FFFFLL;
          v678 = vorrq_s8(vandq_s8(vshrq_n_u32(v664, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v664, v677));
          v679 = vorrq_s8(vandq_s8(vshrq_n_u64(v678, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v678, vdupq_n_s64(0x3FFFFFFuLL)));
          v677.i64[0] = vextq_s8(v679, v679, 8uLL).u64[0];
          *v365 = vorr_s8(vshld_n_s64(v677.i64[0], 0x28uLL), *v679.i8);
          *(v365 + 4) = vshrd_n_u64(v677.u64[0], 0x18uLL);
          v365 = (v365 + 10);
          v677.i64[0] = 0xFFFF0000FFFFLL;
          v677.i64[1] = 0xFFFF0000FFFFLL;
          v680 = vshlq_u16(v391, v663);
          v681 = vorrq_s8(vandq_s8(vshrq_n_u32(v680, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v680, v677));
LABEL_456:
          v973 = vorrq_s8(vandq_s8(vshrq_n_u64(v681, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v681, vdupq_n_s64(0x3FFFFFFuLL)));
          v974 = vextq_s8(v973, v973, 8uLL).u64[0];
          *v365 = vorr_s8(vshld_n_s64(v974, 0x28uLL), *v973.i8);
          *(v365 + 4) = vshrd_n_u64(v974, 0x18uLL);
          v365 = (v365 + 10);
          goto LABEL_476;
        }

        goto LABEL_290;
      }

      v700.i64[0] = 0xFFFF0000FFFFLL;
      v700.i64[1] = 0xFFFF0000FFFFLL;
      v701 = vorrq_s8(vandq_s8(vshrq_n_u32(v664, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v664, v700));
      v702 = vorrq_s8(vandq_s8(vshrq_n_u64(v701, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v701, vdupq_n_s64(0x1FFFFFFuLL)));
      v700.i64[0] = vextq_s8(v702, v702, 8uLL).u64[0];
      *v365 = vorr_s8(vshld_n_s64(v700.i64[0], 0x24uLL), *v702.i8);
      *(v365 + 8) = vshrd_n_u64(v700.u64[0], 0x1CuLL);
      v365 = (v365 + 9);
      v700.i64[0] = 0xFFFF0000FFFFLL;
      v700.i64[1] = 0xFFFF0000FFFFLL;
      v703 = vshlq_u16(v391, v663);
      v704 = vorrq_s8(vandq_s8(vshrq_n_u32(v703, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v703, v700));
      v705 = vandq_s8(v704, vdupq_n_s64(0x1FFFFFFuLL));
      v706 = vdupq_n_s64(0x7FFFFFC0000uLL);
      v707 = vshrq_n_u64(v704, 0xEuLL);
LABEL_465:
      v985 = vorrq_s8(vandq_s8(v707, v706), v705);
      v986 = vextq_s8(v985, v985, 8uLL).u64[0];
      *v365 = vorr_s8(vshld_n_s64(v986, 0x24uLL), *v985.i8);
      *(v365 + 8) = vshrd_n_u64(v986, 0x1CuLL);
      v365 = (v365 + 9);
      goto LABEL_476;
    }

    v720 = vorrq_s8(vshrq_n_u32(v664, 8uLL), v664);
    v721.i64[0] = 4294901760;
    v721.i64[1] = 4294901760;
    v722 = vandq_s8(vshrq_n_u64(v720, 0x10uLL), v721);
    v721.i64[0] = 0xFFFFLL;
    v721.i64[1] = 0xFFFFLL;
    v723 = vorrq_s8(v722, vandq_s8(v720, v721));
    *v365++ = vorr_s8(vshld_n_s64(vextq_s8(v723, v723, 8uLL).i64[0], 0x20uLL), *v723.i8);
    v724 = vshlq_u16(v391, v663);
    v725 = vorrq_s8(vshrq_n_u32(v724, 8uLL), v724);
LABEL_472:
    v991.i64[0] = 4294901760;
    v991.i64[1] = 4294901760;
    v992 = vandq_s8(vshrq_n_u64(v725, 0x10uLL), v991);
    v991.i64[0] = 0xFFFFLL;
    v991.i64[1] = 0xFFFFLL;
    v993 = vorrq_s8(v992, vandq_s8(v725, v991));
    *v365++ = vorr_s8(vshld_n_s64(vextq_s8(v993, v993, 8uLL).i64[0], 0x20uLL), *v993.i8);
    goto LABEL_476;
  }

  if (v662 == 5)
  {
    v714 = vorrq_s8(vshrq_n_u32(v664, 0xBuLL), v664);
    v715.i64[0] = 0xFFFFLL;
    v715.i64[1] = 0xFFFFLL;
    v716 = vorrq_s8(vandq_s8(vshrq_n_u64(v714, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v714, v715));
    *v365 = vorr_s8(vshld_n_s64(vextq_s8(v716, v716, 8uLL).i64[0], 0x14uLL), *v716.i8);
    v365 = (v365 + 5);
    v717 = vshlq_u16(v391, v663);
    v718 = vorrq_s8(vshrq_n_u32(v717, 0xBuLL), v717);
    v719 = vandq_s8(vshrq_n_u64(v718, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL));
LABEL_470:
    v989.i64[0] = 0xFFFFLL;
    v989.i64[1] = 0xFFFFLL;
    v990 = vorrq_s8(v719, vandq_s8(v718, v989));
    *v365 = vorr_s8(vshld_n_s64(vextq_s8(v990, v990, 8uLL).i64[0], 0x14uLL), *v990.i8);
    v365 = (v365 + 5);
    goto LABEL_476;
  }

  if (v662 != 6)
  {
    v665 = vorrq_s8(vshrq_n_u32(v664, 9uLL), v664);
    v666.i64[0] = 0xFFFFLL;
    v666.i64[1] = 0xFFFFLL;
    v667 = vorrq_s8(vandq_s8(vshrq_n_u64(v665, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v665, v666));
    *v365 = vorr_s8(vshld_n_s64(vextq_s8(v667, v667, 8uLL).i64[0], 0x1CuLL), *v667.i8);
    v365 = (v365 + 7);
    v668 = vshlq_u16(v391, v663);
    v669 = vorrq_s8(vshrq_n_u32(v668, 9uLL), v668);
    v670 = vandq_s8(vshrq_n_u64(v669, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL));
    goto LABEL_445;
  }

  v694 = vorrq_s8(vshrq_n_u32(v664, 0xAuLL), v664);
  v695.i64[0] = 0xFFFFLL;
  v695.i64[1] = 0xFFFFLL;
  v696 = vorrq_s8(vandq_s8(vshrq_n_u64(v694, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v694, v695));
  *v365 = vorr_s8(vshld_n_s64(vextq_s8(v696, v696, 8uLL).i64[0], 0x18uLL), *v696.i8);
  v365 = (v365 + 6);
  v697 = vshlq_u16(v391, v663);
  v698 = vorrq_s8(vshrq_n_u32(v697, 0xAuLL), v697);
  v699 = vandq_s8(vshrq_n_u64(v698, 0x14uLL), vdupq_n_s64(0xFFFF000uLL));
LABEL_463:
  v981.i64[0] = 0xFFFFLL;
  v981.i64[1] = 0xFFFFLL;
  v982 = vorrq_s8(v699, vandq_s8(v698, v981));
  *v365 = vorr_s8(vshld_n_s64(vextq_s8(v982, v982, 8uLL).i64[0], 0x18uLL), *v982.i8);
  v365 = (v365 + 6);
LABEL_476:
  v18 = 0;
  a1[2] = v365;
  return v18;
}

unsigned int *vectorload_1x16_packed10(unsigned int *result, uint64_t a2, _WORD *a3, _WORD *a4)
{
  v4 = *result;
  if (a2 == 2)
  {
    *a3 = (v4 >> 20) & 0x3FF;
    v15 = result[1];
    v16 = result[2];
    a3[1] = v15 & 0x3FF;
    a3[2] = (v15 >> 10) & 0x3FF;
    a3[3] = (v15 >> 20) & 0x3FF;
    a3[4] = v16 & 0x3FF;
    a3[5] = (v16 >> 10) & 0x3FF;
    a3[6] = (v16 >> 20) & 0x3FF;
    v17 = result[3];
    v18 = result[4];
    a3[7] = v17 & 0x3FF;
    *a4 = (v17 >> 10) & 0x3FF;
    a4[1] = (v17 >> 20) & 0x3FF;
    a4[2] = v18 & 0x3FF;
    a4[3] = (v18 >> 10) & 0x3FF;
    LOWORD(v17) = (v18 >> 20) & 0x3FF;
    v19 = result[5];
    a4[4] = v17;
    a4[5] = v19 & 0x3FF;
    v9 = v19 >> 20;
    a4[6] = (v19 >> 10) & 0x3FF;
  }

  else if (a2 == 1)
  {
    *a3 = (v4 >> 10) & 0x3FF;
    a3[1] = (v4 >> 20) & 0x3FF;
    v10 = result[1];
    v11 = result[2];
    a3[2] = v10 & 0x3FF;
    a3[3] = (v10 >> 10) & 0x3FF;
    a3[4] = (v10 >> 20) & 0x3FF;
    a3[5] = v11 & 0x3FF;
    a3[6] = (v11 >> 10) & 0x3FF;
    a3[7] = (v11 >> 20) & 0x3FF;
    v12 = result[3];
    v13 = result[4];
    *a4 = v12 & 0x3FF;
    a4[1] = (v12 >> 10) & 0x3FF;
    a4[2] = (v12 >> 20) & 0x3FF;
    a4[3] = v13 & 0x3FF;
    a4[4] = (v13 >> 10) & 0x3FF;
    a4[5] = (v13 >> 20) & 0x3FF;
    v14 = result[5];
    LOWORD(v13) = v14 & 0x3FF;
    v9 = v14 >> 10;
    a4[6] = v13;
  }

  else
  {
    if (a2)
    {
      vectorload_1x16_packed10_cold_1();
    }

    *a3 = v4 & 0x3FF;
    a3[1] = (v4 >> 10) & 0x3FF;
    a3[2] = (v4 >> 20) & 0x3FF;
    v5 = result[1];
    v6 = result[2];
    a3[3] = v5 & 0x3FF;
    a3[4] = (v5 >> 10) & 0x3FF;
    a3[5] = (v5 >> 20) & 0x3FF;
    a3[6] = v6 & 0x3FF;
    a3[7] = (v6 >> 10) & 0x3FF;
    *a4 = (v6 >> 20) & 0x3FF;
    v7 = result[3];
    v8 = result[4];
    a4[1] = v7 & 0x3FF;
    a4[2] = (v7 >> 10) & 0x3FF;
    a4[3] = (v7 >> 20) & 0x3FF;
    a4[4] = v8 & 0x3FF;
    a4[5] = (v8 >> 10) & 0x3FF;
    a4[6] = (v8 >> 20) & 0x3FF;
    v9 = result[5];
  }

  a4[7] = v9 & 0x3FF;
  return result;
}

int *SlimXDecodeBlocks_NEON(int *result, double a2, uint32x4_t a3, uint32x4_t a4)
{
  v427 = *MEMORY[0x1E69E9840];
  v4 = *(result + 2);
  v5 = *(result + 3);
  if (v4 >= v5)
  {
    goto LABEL_288;
  }

  v6 = *result;
  v7 = result[2];
  v8 = result[3];
  v9 = result + 42;
  v11 = result[8];
  v10 = result[9];
  v12 = vdupq_n_s16(v10);
  v13 = predictionPattern[v11];
  v14 = (v4 + 2);
  while (1)
  {
    v15 = v14 - 1;
    *(result + 2) = v14 - 1;
    v16 = *(v14 - 2);
    v17 = v16 & 0xF;
    v18 = v16 >> 4;
    if (v16 >> 4 != 6)
    {
      break;
    }

    if (v17 < 8)
    {
      v19 = 10 - v17;
      if ((v16 & 0xF) == 0)
      {
        v19 = 0;
      }

      result[27] = v17;
      result[28] = v19;
      ++v14;
      if (v15 != v5)
      {
        continue;
      }
    }

    goto LABEL_288;
  }

  if (v16 >> 4 <= 2)
  {
    if (v18 < 3)
    {
      if (v15 >= v5)
      {
        goto LABEL_288;
      }

      *(result + 2) = v14;
      v26 = *(v14 - 1) | (v18 << 8);
      v27 = v26;
      v28 = v26 % 5u;
      *(result + 34) = v26 % 5u;
      v29 = (v26 / 5u) % 5u;
      *(result + 30) = v29;
      v30 = ((((v26 - ((18351 * v27) >> 16)) >> 1) + ((18351 * v27) >> 16)) >> 4) % 5u;
      *(result + 26) = v30;
      v31 = (((v26 - ((1573 * v27) >> 16)) >> 1) + ((1573 * v27) >> 16)) >> 6;
      if (v27 >= 0x271)
      {
        v32 = v31 - 5;
      }

      else
      {
        v32 = v31;
      }

      *(result + 22) = v32;
      goto LABEL_30;
    }
  }

  else
  {
    if (v16 >> 4 <= 4)
    {
      if (v18 == 3)
      {
        v21 = *&v9[(v13 >> 9) & 0x7FFFF8];
        *(result + 21) = v21;
        LOWORD(v22) = *&v9[8 * ((v13 >> 8) & 0xF)];
        *(result + 25) = v22;
        LOWORD(v24) = *&v9[8 * (v13 >> 4)];
        *(result + 29) = v24;
        LOWORD(v25) = *&v9[8 * (v13 & 0xF)];
      }

      else
      {
        if (v15 >= v5)
        {
          goto LABEL_288;
        }

        *(result + 2) = v14;
        v20 = *(v14 - 1);
        v21 = v20 & 0xF;
        *(result + 21) = v21;
        v22 = v20 >> 4;
        *(result + 25) = v20 >> 4;
        if (v14 >= v5)
        {
          goto LABEL_288;
        }

        v15 = v14 + 1;
        *(result + 2) = v14 + 1;
        v23 = *v14;
        LOWORD(v24) = v23 & 0xF;
        *(result + 29) = v24;
        v25 = v23 >> 4;
      }

      *(result + 33) = v25;
      v14 = v15;
      goto LABEL_31;
    }

    if (v18 == 5)
    {
      if (v15 >= v5)
      {
        goto LABEL_288;
      }

      *(result + 2) = v14;
      if (v14 >= v5)
      {
        goto LABEL_288;
      }

      v33 = *(v14 - 1);
      *(result + 2) = v14 + 1;
      if ((v14 + 1) >= v5)
      {
        goto LABEL_288;
      }

      v34 = *v14;
      v35 = v14 + 2;
      *(result + 2) = v14 + 2;
      v36 = v14[1];
      v37 = (v34 << 8) | (v36 << 16);
      v21 = v33 & 0x3F;
      v38 = v33 & 0xFFFF00FF | (v34 << 8);
      *(result + 21) = v21;
      v22 = (v38 >> 6) & 0x3F;
      *(result + 25) = (v38 >> 6) & 0x3F;
      v24 = (v37 >> 12) & 0x3F;
      *(result + 29) = (v37 >> 12) & 0x3F;
      v25 = v36 >> 2;
      *(result + 33) = v36 >> 2;
      v14 = v35;
      goto LABEL_31;
    }

    if (v18 == 7)
    {
      goto LABEL_288;
    }
  }

  *(result + 34) = 2;
  *(result + 30) = 2;
  *(result + 26) = 2;
  *(result + 22) = 2;
  *&v9[8 * ((v16 >> 5) & 3) + 2] = (2 * ((v16 & 0x10) != 0)) ^ 3;
  v32 = *(result + 22);
  v30 = *(result + 26);
  v29 = *(result + 30);
  v28 = *(result + 34);
  --v14;
LABEL_30:
  v21 = v32 + *&v9[(v13 >> 9) & 0x7FFFF8] - 2;
  *(result + 21) = v21;
  LOWORD(v22) = v30 + *&v9[8 * ((v13 >> 8) & 0xF)] - 2;
  *(result + 25) = v22;
  LOWORD(v24) = v29 + *&v9[8 * (v13 >> 4)] - 2;
  *(result + 29) = v24;
  LOWORD(v25) = v28 + *&v9[8 * (v13 & 0xF)] - 2;
  *(result + 33) = v25;
LABEL_31:
  if (v11 >= 6)
  {
    v39 = 16;
  }

  else
  {
    v39 = 8;
  }

  if (v39 < v21)
  {
    goto LABEL_288;
  }

  v40 = v22;
  if (v39 < v22)
  {
    goto LABEL_288;
  }

  v41 = v24;
  if (v39 < v24)
  {
    goto LABEL_288;
  }

  v42 = v25;
  if (v39 < v25)
  {
    goto LABEL_288;
  }

  v43 = result + 23;
  v44 = 16;
  do
  {
    if ((v17 & 1) == 0)
    {
      LOWORD(v45) = 0;
LABEL_41:
      *v43 = *&v9[8 * ((v13 >> (v44 - 4)) & 3) + 4] + v45;
      goto LABEL_54;
    }

    if (v14 >= v5)
    {
      goto LABEL_288;
    }

    v46 = v14 + 1;
    *(result + 2) = v14 + 1;
    v45 = *v14;
    if (v11 > 5)
    {
      if (*v14)
      {
        if ((v45 & 0x80) != 0)
        {
          if (v46 >= v5)
          {
            goto LABEL_288;
          }

          v48 = v14 + 2;
          *(result + 2) = v14 + 2;
          v49 = v45 & 0x3F | (v14[1] << 6);
          if ((v45 & 0x40) != 0)
          {
            v45 = -v49;
          }

          else
          {
            LOWORD(v45) = v49;
          }

          v14 = v48;
        }

        else
        {
          if (v45 >= 0x40)
          {
            v45 = -(v45 & 0x3F);
          }

          ++v14;
        }

        goto LABEL_41;
      }

      if (v46 >= v5)
      {
        goto LABEL_288;
      }

      *(result + 2) = v14 + 2;
      v47 = v14[1];
      *v43 = v47;
      if ((v14 + 2) >= v5)
      {
        goto LABEL_288;
      }

      v46 = v14 + 3;
      *(result + 2) = v14 + 3;
      *v43 = v47 | (v14[2] << 8);
    }

    else
    {
      *v43 = v45;
    }

    v14 = v46;
LABEL_54:
    v17 >>= 1;
    v43 += 4;
    v44 -= 4;
  }

  while (v44);
  v50 = result[27];
  if (v11 <= 0x10 && v50)
  {
    if (v11 >= 0xC || v11 == 6)
    {
      v52 = 0;
    }

    else
    {
      v52 = -1;
    }

    v53 = v50 * v21 + 7;
    v54 = v50 * v21 / 8;
    v55 = v21 - v54;
    v56 = 1 << (v54 - 1);
    if (v53 < 0xF)
    {
      v56 = 0;
    }

    if (v55 <= 0x10 && (v5 - v14) >= v55)
    {
      a3.i32[0] = v11;
      a4.i32[0] = 6;
      v57 = vdupq_lane_s32(*&vcgtq_u32(a4, a3), 0);
      v58 = vdupq_n_s16(v52);
      v59 = vbicq_s8(vornq_s8((*&v58 & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL)), v58), v57);
      v60 = *&v57 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      v61 = v56 + *(result + 23);
      if (v55 < 5)
      {
        v64 = 0;
        v62 = 0;
      }

      else
      {
        v63 = *v14;
        v14 += 4;
        v62 = v63;
        v64 = 32;
      }

      v75 = 0;
      v76 = vdupq_n_s16(v54);
      v77 = vdupq_n_s16(v61);
      v78 = vorrq_s8(v60, v59);
      v79 = ~(-1 << v55);
      v426 = 0uLL;
      do
      {
        while (v64 < v55)
        {
          v80 = *v14++;
          v62 += v80 << v64;
          v64 += 8;
        }

        v426.i16[v75] = v62 & v79;
        v62 >>= v55;
        v64 -= v55;
        ++v75;
      }

      while (v75 != 8);
      *(result + 2) = v14;
      if ((v5 - v14) >= v55)
      {
        v81 = vaddq_s16(vshlq_u16(v426, v76), v77);
        if (v55 < 5)
        {
          v84 = 0;
          v82 = 0;
        }

        else
        {
          v83 = *v14;
          v14 += 4;
          v82 = v83;
          v84 = 32;
        }

        v91 = 0;
        v86 = vminq_u16(v81, v78);
        v426 = 0uLL;
        do
        {
          while (v84 < v55)
          {
            v92 = *v14++;
            v82 += v92 << v84;
            v84 += 8;
          }

          v426.i16[v91] = v82 & v79;
          v82 >>= v55;
          v84 -= v55;
          ++v91;
        }

        while (v91 != 8);
        *(result + 2) = v14;
        v93 = v50 * v40 + 7;
        v94 = v50 * v40 >= 0 ? v50 * v40 : v50 * v40 + 7;
        v95 = v94 >> 3;
        v96 = (v40 - (v94 >> 3));
        v97 = 1 << ((v94 >> 3) - 1);
        v98 = v93 >= 0xF ? v97 : 0;
        if (v96 <= 0x10 && (v5 - v14) >= v96)
        {
          v99 = vaddq_s16(vshlq_u16(v426, v76), v77);
          v100 = v98 + *(result + 27);
          if (v96 < 5)
          {
            v103 = 0;
            v101 = 0;
          }

          else
          {
            v102 = *v14;
            v14 += 4;
            v101 = v102;
            v103 = 32;
          }

          v112 = 0;
          v113 = vdupq_n_s16(v95);
          v114 = vdupq_n_s16(v100);
          v105 = vminq_u16(v99, v78);
          v115 = ~(-1 << v96);
          v426 = 0uLL;
          do
          {
            while (v103 < v96)
            {
              v116 = *v14++;
              v101 += v116 << v103;
              v103 += 8;
            }

            v426.i16[v112] = v101 & v115;
            v101 >>= v96;
            v103 -= v96;
            ++v112;
          }

          while (v112 != 8);
          *(result + 2) = v14;
          if ((v5 - v14) >= v96)
          {
            v117 = vaddq_s16(vshlq_u16(v426, v113), v114);
            if (v96 < 5)
            {
              v120 = 0;
              v118 = 0;
            }

            else
            {
              v119 = *v14;
              v14 += 4;
              v118 = v119;
              v120 = 32;
            }

            v127 = 0;
            v122 = vminq_u16(v117, v78);
            v426 = 0uLL;
            do
            {
              while (v120 < v96)
              {
                v128 = *v14++;
                v118 += v128 << v120;
                v120 += 8;
              }

              v426.i16[v127] = v118 & v115;
              v118 >>= v96;
              v120 -= v96;
              ++v127;
            }

            while (v127 != 8);
            *(result + 2) = v14;
            v129 = v50 * v41 + 7;
            v130 = v50 * v41 >= 0 ? v50 * v41 : v50 * v41 + 7;
            v131 = v130 >> 3;
            v132 = (v41 - (v130 >> 3));
            v133 = 1 << ((v130 >> 3) - 1);
            v134 = v129 >= 0xF ? v133 : 0;
            if (v132 <= 0x10 && (v5 - v14) >= v132)
            {
              v135 = vaddq_s16(vshlq_u16(v426, v113), v114);
              v136 = v134 + *(result + 31);
              if (v132 < 5)
              {
                v139 = 0;
                v137 = 0;
              }

              else
              {
                v138 = *v14;
                v14 += 4;
                v137 = v138;
                v139 = 32;
              }

              v148 = 0;
              v149 = vdupq_n_s16(v131);
              v150 = vdupq_n_s16(v136);
              v141 = vminq_u16(v135, v78);
              v151 = ~(-1 << v132);
              v426 = 0uLL;
              do
              {
                while (v139 < v132)
                {
                  v152 = *v14++;
                  v137 += v152 << v139;
                  v139 += 8;
                }

                v426.i16[v148] = v137 & v151;
                v137 >>= v132;
                v139 -= v132;
                ++v148;
              }

              while (v148 != 8);
              *(result + 2) = v14;
              if ((v5 - v14) >= v132)
              {
                v153 = vaddq_s16(vshlq_u16(v426, v149), v150);
                if (v132 < 5)
                {
                  v156 = 0;
                  v154 = 0;
                }

                else
                {
                  v155 = *v14;
                  v14 += 4;
                  v154 = v155;
                  v156 = 32;
                }

                v166 = 0;
                v158 = vminq_u16(v153, v78);
                v426 = 0uLL;
                do
                {
                  while (v156 < v132)
                  {
                    v167 = *v14++;
                    v154 += v167 << v156;
                    v156 += 8;
                  }

                  v426.i16[v166] = v154 & v151;
                  v154 >>= v132;
                  v156 -= v132;
                  ++v166;
                }

                while (v166 != 8);
                *(result + 2) = v14;
                v168 = v50 * v42 + 7;
                v169 = v50 * v42 >= 0 ? v50 * v42 : v50 * v42 + 7;
                v170 = v169 >> 3;
                v171 = (v42 - (v169 >> 3));
                v172 = 1 << ((v169 >> 3) - 1);
                v173 = v168 >= 0xF ? v172 : 0;
                if (v171 <= 0x10 && (v5 - v14) >= v171)
                {
                  v174 = vaddq_s16(vshlq_u16(v426, v149), v150);
                  v175 = v173 + *(result + 35);
                  if (v171 < 5)
                  {
                    v178 = 0;
                    v176 = 0;
                  }

                  else
                  {
                    v177 = *v14;
                    v14 += 4;
                    v176 = v177;
                    v178 = 32;
                  }

                  v179 = 0;
                  v180 = vdupq_n_s16(v170);
                  v181 = vdupq_n_s16(v175);
                  v160 = vminq_u16(v174, v78);
                  v182 = ~(-1 << v171);
                  v426 = 0uLL;
                  do
                  {
                    while (v178 < v171)
                    {
                      v183 = *v14++;
                      v176 += v183 << v178;
                      v178 += 8;
                    }

                    v426.i16[v179] = v176 & v182;
                    v176 >>= v171;
                    v178 -= v171;
                    ++v179;
                  }

                  while (v179 != 8);
                  *(result + 2) = v14;
                  if ((v5 - v14) >= v171)
                  {
                    v184 = vaddq_s16(vshlq_u16(v426, v180), v181);
                    if (v171 < 5)
                    {
                      v187 = 0;
                      v185 = 0;
                    }

                    else
                    {
                      v186 = *v14;
                      v14 += 4;
                      v185 = v186;
                      v187 = 32;
                    }

                    v188 = 0;
                    v161 = vminq_u16(v184, v78);
                    v426 = 0uLL;
                    do
                    {
                      while (v187 < v171)
                      {
                        v189 = *v14++;
                        v185 += v189 << v187;
                        v187 += 8;
                      }

                      v426.i16[v188] = v185 & v182;
                      v185 >>= v171;
                      v187 -= v171;
                      ++v188;
                    }

                    while (v188 != 8);
                    *(result + 2) = v14;
                    v162 = vminq_u16(vaddq_s16(vshlq_u16(v426, v180), v181), v78);
                    goto LABEL_230;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_288:
    longjmp(result + 29, -15407);
  }

  if (v21 > 0x10u || (v5 - v14) < v21)
  {
    goto LABEL_288;
  }

  if (v21 < 5u)
  {
    v67 = 0;
    v65 = 0;
  }

  else
  {
    v66 = *v14;
    v14 += 4;
    v65 = v66;
    v67 = 32;
  }

  v68 = 0;
  v69 = *(result + 23);
  v70 = ~(-1 << v21);
  v426 = 0uLL;
  do
  {
    while (v67 < v21)
    {
      v71 = *v14++;
      v65 += v71 << v67;
      v67 += 8;
    }

    v426.i16[v68] = v69 + (v65 & v70);
    v65 >>= v21;
    v67 -= v21;
    ++v68;
  }

  while (v68 != 8);
  *(result + 2) = v14;
  if ((v5 - v14) < v21)
  {
    goto LABEL_288;
  }

  if (v21 < 5u)
  {
    v74 = 0;
    v72 = 0;
  }

  else
  {
    v73 = *v14;
    v14 += 4;
    v72 = v73;
    v74 = 32;
  }

  v85 = 0;
  v86 = v426;
  v426 = 0uLL;
  do
  {
    while (v74 < v21)
    {
      v87 = *v14++;
      v72 += v87 << v74;
      v74 += 8;
    }

    v426.i16[v85] = v69 + (v72 & v70);
    v72 >>= v21;
    v74 -= v21;
    ++v85;
  }

  while (v85 != 8);
  *(result + 2) = v14;
  if (v40 > 0x10 || (v5 - v14) < v40)
  {
    goto LABEL_288;
  }

  if (v40 < 5)
  {
    v90 = 0;
    v88 = 0;
  }

  else
  {
    v89 = *v14;
    v14 += 4;
    v88 = v89;
    v90 = 32;
  }

  v104 = 0;
  v105 = v426;
  v106 = *(result + 27);
  v107 = ~(-1 << v40);
  v426 = 0uLL;
  do
  {
    while (v90 < v40)
    {
      v108 = *v14++;
      v88 += v108 << v90;
      v90 += 8;
    }

    v426.i16[v104] = v106 + (v88 & v107);
    v88 >>= v40;
    v90 -= v40;
    ++v104;
  }

  while (v104 != 8);
  *(result + 2) = v14;
  if ((v5 - v14) < v40)
  {
    goto LABEL_288;
  }

  if (v40 < 5)
  {
    v111 = 0;
    v109 = 0;
  }

  else
  {
    v110 = *v14;
    v14 += 4;
    v109 = v110;
    v111 = 32;
  }

  v121 = 0;
  v122 = v426;
  v426 = 0uLL;
  do
  {
    while (v111 < v40)
    {
      v123 = *v14++;
      v109 += v123 << v111;
      v111 += 8;
    }

    v426.i16[v121] = v106 + (v109 & v107);
    v109 >>= v40;
    v111 -= v40;
    ++v121;
  }

  while (v121 != 8);
  *(result + 2) = v14;
  if (v41 > 0x10 || (v5 - v14) < v41)
  {
    goto LABEL_288;
  }

  if (v41 < 5)
  {
    v126 = 0;
    v124 = 0;
  }

  else
  {
    v125 = *v14;
    v14 += 4;
    v124 = v125;
    v126 = 32;
  }

  v140 = 0;
  v141 = v426;
  v142 = *(result + 31);
  v143 = ~(-1 << v41);
  v426 = 0uLL;
  do
  {
    while (v126 < v41)
    {
      v144 = *v14++;
      v124 += v144 << v126;
      v126 += 8;
    }

    v426.i16[v140] = v142 + (v124 & v143);
    v124 >>= v41;
    v126 -= v41;
    ++v140;
  }

  while (v140 != 8);
  *(result + 2) = v14;
  if ((v5 - v14) < v41)
  {
    goto LABEL_288;
  }

  if (v41 < 5)
  {
    v147 = 0;
    v145 = 0;
  }

  else
  {
    v146 = *v14;
    v14 += 4;
    v145 = v146;
    v147 = 32;
  }

  v157 = 0;
  v158 = v426;
  v426 = 0uLL;
  do
  {
    while (v147 < v41)
    {
      v159 = *v14++;
      v145 += v159 << v147;
      v147 += 8;
    }

    v426.i16[v157] = v142 + (v145 & v143);
    v145 >>= v41;
    v147 -= v41;
    ++v157;
  }

  while (v157 != 8);
  *(result + 2) = v14;
  v160 = v426;
  if (v11 == 19)
  {
    v161 = 0uLL;
    v162 = 0uLL;
    if (!v50)
    {
LABEL_238:
      if (v10)
      {
        v86 = vshlq_u16(v86, v12);
        v105 = vshlq_u16(v105, v12);
        v122 = vshlq_u16(v122, v12);
        v141 = vshlq_u16(v141, v12);
        v158 = vshlq_u16(v158, v12);
        v160 = vshlq_u16(v160, v12);
      }

      v429.val[0] = vextq_s8(v86, v86, 8uLL).u64[0];
      v429.val[1] = vextq_s8(v122, v122, 8uLL).u64[0];
      vst3_s16(v6, *v86.i8);
      v233 = (v6 + v8);
      v429.val[2] = vextq_s8(v158, v158, 8uLL).u64[0];
      vst3_s16(v233, v429);
      v234 = (v233 + v8);
      v428.val[0] = vextq_s8(v105, v105, 8uLL).u64[0];
      vst3_s16(v234, *v105.i8);
      v235 = (v234 + v8);
      v428.val[1] = vextq_s8(v141, v141, 8uLL).u64[0];
      v428.val[2] = vextq_s8(v160, v160, 8uLL).u64[0];
      vst3_s16(v235, v428);
      return result;
    }

LABEL_231:
    v199 = result[28];
    if (v199)
    {
      v200 = vdupq_n_s16(v199 - 1);
      v201 = vnegq_s16(v200);
      v202 = vdupq_n_s16(-v199);
      v203.i64[0] = 0x1000100010001;
      v203.i64[1] = 0x1000100010001;
      v204 = vqsubq_u16(vshlq_u16(v86, v201), v203);
      v205 = vshlq_u16(vsubq_s16(v86, vshlq_u16(v204, v200)), v204);
      v86 = vaddq_s16(vshlq_u16(v205, v202), v205);
      v206 = vqsubq_u16(vshlq_u16(v105, v201), v203);
      v207 = vshlq_u16(vsubq_s16(v105, vshlq_u16(v206, v200)), v206);
      v105 = vaddq_s16(vshlq_u16(v207, v202), v207);
      v208 = vqsubq_u16(vshlq_u16(v122, v201), v203);
      v209 = vshlq_u16(vsubq_s16(v122, vshlq_u16(v208, v200)), v208);
      v122 = vaddq_s16(vshlq_u16(v209, v202), v209);
      v210 = vqsubq_u16(vshlq_u16(v141, v201), v203);
      v211 = vshlq_u16(vsubq_s16(v141, vshlq_u16(v210, v200)), v210);
      v141 = vaddq_s16(vshlq_u16(v211, v202), v211);
      v212 = vqsubq_u16(vshlq_u16(v158, v201), v203);
      v213 = vshlq_u16(vsubq_s16(v158, vshlq_u16(v212, v200)), v212);
      v158 = vaddq_s16(vshlq_u16(v213, v202), v213);
      v214 = vqsubq_u16(vshlq_u16(v160, v201), v203);
      v215 = vshlq_u16(vsubq_s16(v160, vshlq_u16(v214, v200)), v214);
      v160 = vaddq_s16(vshlq_u16(v215, v202), v215);
      v216 = vqsubq_u16(vshlq_u16(v161, v201), v203);
      v217 = vshlq_u16(vsubq_s16(v161, vshlq_u16(v216, v200)), v216);
      v161 = vaddq_s16(vshlq_u16(v217, v202), v217);
      v218 = vqsubq_u16(vshlq_u16(v162, v201), v203);
      v219 = vshlq_u16(vsubq_s16(v162, vshlq_u16(v218, v200)), v218);
      v162 = vaddq_s16(vshlq_u16(v219, v202), v219);
    }
  }

  else
  {
    if (v42 > 0x10 || (v5 - v14) < v42)
    {
      goto LABEL_288;
    }

    if (v42 < 5)
    {
      v165 = 0;
      v163 = 0;
    }

    else
    {
      v164 = *v14;
      v14 += 4;
      v163 = v164;
      v165 = 32;
    }

    v190 = 0;
    v191 = *(result + 35);
    v192 = ~(-1 << v42);
    v426 = 0uLL;
    do
    {
      while (v165 < v42)
      {
        v193 = *v14++;
        v163 += v193 << v165;
        v165 += 8;
      }

      v426.i16[v190] = v191 + (v163 & v192);
      v163 >>= v42;
      v165 -= v42;
      ++v190;
    }

    while (v190 != 8);
    *(result + 2) = v14;
    if ((v5 - v14) < v42)
    {
      goto LABEL_288;
    }

    if (v42 < 5)
    {
      v196 = 0;
      v194 = 0;
    }

    else
    {
      v195 = *v14;
      v14 += 4;
      v194 = v195;
      v196 = 32;
    }

    v197 = 0;
    v161 = v426;
    v426 = 0uLL;
    do
    {
      while (v196 < v42)
      {
        v198 = *v14++;
        v194 += v198 << v196;
        v196 += 8;
      }

      v426.i16[v197] = v191 + (v194 & v192);
      v194 >>= v42;
      v196 -= v42;
      ++v197;
    }

    while (v197 != 8);
    *(result + 2) = v14;
    v162 = v426;
    if (v50)
    {
LABEL_230:
      if (v11 > 0x10)
      {
        goto LABEL_231;
      }
    }
  }

  switch(v11)
  {
    case 0:
    case 7:
      v220 = vzip1q_s64(v86, v122);
      v221 = vzip2q_s64(v86, v122);
      v222 = vzip1q_s64(v105, v141);
      v223 = vzip2q_s64(v105, v141);
      v224 = vzip1q_s64(v158, v161);
      v225 = vzip2q_s64(v158, v161);
      v226 = vzip1q_s64(v160, v162);
      v227 = vzip2q_s64(v160, v162);
      if (!v10)
      {
        goto LABEL_236;
      }

      goto LABEL_235;
    case 1:
    case 8:
    case 11:
    case 25:
      v220 = vtrn1q_s16(v86, v122);
      v221 = vtrn2q_s16(v86, v122);
      v222 = vtrn1q_s16(v105, v141);
      v223 = vtrn2q_s16(v105, v141);
      v224 = vtrn1q_s16(v158, v161);
      v225 = vtrn2q_s16(v158, v161);
      v226 = vtrn1q_s16(v160, v162);
      v227 = vtrn2q_s16(v160, v162);
      if (v10)
      {
LABEL_235:
        v220 = vshlq_u16(v220, v12);
        v222 = vshlq_u16(v222, v12);
        v221 = vshlq_u16(v221, v12);
        v223 = vshlq_u16(v223, v12);
        v224 = vshlq_u16(v224, v12);
        v226 = vshlq_u16(v226, v12);
        v225 = vshlq_u16(v225, v12);
        v227 = vshlq_u16(v227, v12);
      }

LABEL_236:
      if (v11 > 5)
      {
        if ((v11 - 7) > 1)
        {
          *v6 = v220;
          *(v6 + 16) = v224;
          v266 = (v6 + v8);
          *v266 = v222;
          v266[1] = v226;
          v267 = (v6 + v8 + v8);
          *v267 = v221;
          v267[1] = v225;
          v268 = (v267 + v8);
          *v268 = v223;
LABEL_287:
          v268[1] = v227;
        }

        else
        {
          v425 = v224;
          v426 = v220;
          v423 = v223;
          v424 = v227;
          v421 = v221;
          v422 = v225;
          v419 = v222;
          v420 = v226;
          vectorstore_1x16_packed10(v6, v7, &v426, &v425);
          v425 = v420;
          v426 = v419;
          vectorstore_1x16_packed10((v6 + v8), v7, &v426, &v425);
          v425 = v422;
          v426 = v421;
          vectorstore_1x16_packed10((v6 + 2 * v8), v7, &v426, &v425);
          v425 = v424;
          v426 = v423;
          result = vectorstore_1x16_packed10((v6 + 3 * v8), v7, &v426, &v425);
        }
      }

      else
      {
        *v6 = vqmovn_u16(v220);
        *(v6 + 8) = vqmovn_u16(v224);
        v228 = (v6 + v8);
        *v228 = vqmovn_u16(v222);
        v228[1] = vqmovn_u16(v226);
        v229 = (v6 + v8 + v8);
        *v229 = vqmovn_u16(v221);
        v229[1] = vqmovn_u16(v225);
        v230 = (v229 + v8);
        v231 = vqmovn_u16(v223);
        v232 = vqmovn_u16(v227);
LABEL_276:
        *v230 = v231;
        v230[1] = v232;
      }

      break;
    case 2:
      v364 = vzip1q_s64(v122, v158);
      v365 = vzip2q_s64(v122, v158);
      v366 = vzip1q_s64(v141, v160);
      v367 = vzip2q_s64(v141, v160);
      *v6 = vqmovn_u16(vtrn1q_s16(v86, v365));
      *(v6 + v8) = vqmovn_u16(vtrn1q_s16(v364, v161));
      *(v6 + 2 * v8) = vqmovn_u16(vtrn1q_s16(v105, v367));
      *(v6 + 3 * v8) = vqmovn_u16(vtrn1q_s16(v366, v162));
      v362 = vtrn2q_s16(v366, v162);
      *(v6 + 4 * v8) = vqmovn_u16(vtrn2q_s16(v86, v365));
      *(v6 + 5 * v8) = vqmovn_u16(vtrn2q_s16(v364, v161));
      v363 = vqmovn_u16(vtrn2q_s16(v105, v367));
      goto LABEL_272;
    case 3:
      v358 = vzip1q_s64(v122, v158);
      v359 = vzip2q_s64(v122, v158);
      v360 = vzip1q_s64(v141, v160);
      v361 = vzip2q_s64(v141, v160);
      *v6 = vqmovn_u16(vtrn1q_s32(v86, v359));
      *(v6 + v8) = vqmovn_u16(vtrn1q_s32(v105, v361));
      *(v6 + 2 * v8) = vqmovn_u16(vtrn1q_s32(v358, v161));
      *(v6 + 3 * v8) = vqmovn_u16(vtrn1q_s32(v360, v162));
      v362 = vtrn2q_s32(v360, v162);
      *(v6 + 4 * v8) = vqmovn_u16(vtrn2q_s32(v86, v359));
      *(v6 + 5 * v8) = vqmovn_u16(vtrn2q_s32(v105, v361));
      v363 = vqmovn_u16(vtrn2q_s32(v358, v161));
LABEL_272:
      *(v6 + 6 * v8) = v363;
      *(v6 - v8 + 8 * v8) = vqmovn_u16(v362);
      return result;
    case 6:
      v368 = vtrn1q_s16(v86, v122);
      v369 = vtrn2q_s16(v86, v122);
      v370 = vtrn1q_s16(v105, v141);
      v371 = vtrn2q_s16(v105, v141);
      v372 = vtrn1q_s16(v158, v161);
      v373 = vtrn2q_s16(v158, v161);
      v374 = vtrn1q_s16(v160, v162);
      v375 = vtrn2q_s16(v160, v162);
      v376 = vtrn1q_s32(v368, v372);
      v377 = vtrn2q_s32(v368, v372);
      v378 = vtrn1q_s32(v370, v374);
      v379 = vtrn2q_s32(v370, v374);
      v380 = vtrn1q_s32(v369, v373);
      v381 = vtrn2q_s32(v369, v373);
      v382 = vtrn1q_s32(v371, v375);
      v383 = vtrn2q_s32(v371, v375);
      if (v10)
      {
        v376 = vshlq_u16(v376, v12);
        v378 = vshlq_u16(v378, v12);
        v380 = vshlq_u16(v380, v12);
        v382 = vshlq_u16(v382, v12);
        v377 = vshlq_u16(v377, v12);
        v379 = vshlq_u16(v379, v12);
        v381 = vshlq_u16(v381, v12);
        v383 = vshlq_u16(v383, v12);
      }

      *v6 = vqmovn_u16(v376);
      *(v6 + 8) = vqmovn_u16(v377);
      v384 = (v6 + v8);
      *v384 = vqmovn_u16(v378);
      v384[1] = vqmovn_u16(v379);
      v385 = (v6 + v8 + v8);
      *v385 = vqmovn_u16(v380);
      v385[1] = vqmovn_u16(v381);
      v230 = (v385 + v8);
      v231 = vqmovn_u16(v382);
      v232 = vqmovn_u16(v383);
      goto LABEL_276;
    case 10:
    case 24:
      v255 = vzip1q_s64(v86, v122);
      v256 = vzip2q_s64(v86, v122);
      v257 = vzip1q_s64(v105, v141);
      v258 = vzip2q_s64(v105, v141);
      v259 = vzip1q_s64(v158, v161);
      v260 = vzip2q_s64(v158, v161);
      v261 = vzip1q_s64(v160, v162);
      v262 = vzip2q_s64(v160, v162);
      if (v10)
      {
        v255 = vshlq_u16(v255, v12);
        v257 = vshlq_u16(v257, v12);
        v256 = vshlq_u16(v256, v12);
        v258 = vshlq_u16(v258, v12);
        v259 = vshlq_u16(v259, v12);
        v261 = vshlq_u16(v261, v12);
        v260 = vshlq_u16(v260, v12);
        v262 = vshlq_u16(v262, v12);
      }

      *v6 = v255;
      *(v6 + 16) = v259;
      v263 = (v6 + v8);
      *v263 = v257;
      v263[1] = v261;
      v264 = (v6 + v8 + v8);
      *v264 = v256;
      v264[1] = v260;
      v265 = (v264 + v8);
      *v265 = v258;
      v265[1] = v262;
      return result;
    case 12:
    case 23:
      v236 = vtrn1q_s16(v86, v122);
      v237 = vtrn2q_s16(v86, v122);
      v238 = vtrn1q_s16(v105, v141);
      v239 = vtrn2q_s16(v105, v141);
      v240 = vtrn1q_s16(v158, v161);
      v241 = vtrn2q_s16(v158, v161);
      v242 = vtrn1q_s16(v160, v162);
      v243 = vtrn2q_s16(v160, v162);
      v244 = vtrn1q_s32(v236, v240);
      v245 = vtrn2q_s32(v236, v240);
      v246 = vtrn1q_s32(v238, v242);
      v247 = vtrn2q_s32(v238, v242);
      v248 = vtrn1q_s32(v237, v241);
      v249 = vtrn2q_s32(v237, v241);
      v250 = vtrn1q_s32(v239, v243);
      v251 = vtrn2q_s32(v239, v243);
      if (v10)
      {
        v244 = vshlq_u16(v244, v12);
        v246 = vshlq_u16(v246, v12);
        v248 = vshlq_u16(v248, v12);
        v250 = vshlq_u16(v250, v12);
        v245 = vshlq_u16(v245, v12);
        v247 = vshlq_u16(v247, v12);
        v249 = vshlq_u16(v249, v12);
        v251 = vshlq_u16(v251, v12);
      }

      *v6 = veorq_s8((*&vcgezq_s16(v244) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v244);
      *(v6 + 16) = veorq_s8((*&vcgezq_s16(v245) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v245);
      v252 = (v6 + v8);
      *v252 = veorq_s8((*&vcgezq_s16(v246) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v246);
      v252[1] = veorq_s8((*&vcgezq_s16(v247) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v247);
      v253 = (v6 + v8 + v8);
      *v253 = veorq_s8((*&vcgezq_s16(v248) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v248);
      v253[1] = veorq_s8((*&vcgezq_s16(v249) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v249);
      v254 = (v253 + v8);
      *v254 = veorq_s8((*&vcgezq_s16(v250) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v250);
      v254[1] = veorq_s8((*&vcgezq_s16(v251) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v251);
      return result;
    case 13:
      v341 = vzip1q_s64(v122, v158);
      v342 = vzip2q_s64(v122, v158);
      v343 = vzip1q_s64(v141, v160);
      v344 = vzip2q_s64(v141, v160);
      v345 = vtrn1q_s16(v86, v342);
      v346 = vtrn2q_s16(v86, v342);
      v347 = vtrn1q_s16(v105, v344);
      v348 = vtrn2q_s16(v105, v344);
      v349 = vtrn1q_s16(v341, v161);
      v350 = vtrn2q_s16(v341, v161);
      v351 = vtrn1q_s16(v343, v162);
      v352 = vtrn2q_s16(v343, v162);
      if (v10)
      {
        v345 = vshlq_u16(v345, v12);
        v347 = vshlq_u16(v347, v12);
        v349 = vshlq_u16(v349, v12);
        v351 = vshlq_u16(v351, v12);
        v346 = vshlq_u16(v346, v12);
        v348 = vshlq_u16(v348, v12);
        v350 = vshlq_u16(v350, v12);
        v352 = vshlq_u16(v352, v12);
      }

      v339 = veorq_s8((*&vcgezq_s16(v352) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v352);
      *v6 = veorq_s8((*&vcgezq_s16(v345) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v345);
      *(v6 + v8) = veorq_s8((*&vcgezq_s16(v349) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v349);
      v353 = (v6 + v8 + v8);
      *v353 = veorq_s8((*&vcgezq_s16(v347) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v347);
      v354 = (v353 + v8);
      *v354 = veorq_s8((*&vcgezq_s16(v351) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v351);
      v355 = (v354 + v8);
      *v355 = veorq_s8((*&vcgezq_s16(v346) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v346);
      v356 = (v355 + v8);
      *v356 = veorq_s8((*&vcgezq_s16(v350) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v350);
      v357 = (v356 + v8);
      *v357 = veorq_s8((*&vcgezq_s16(v348) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v348);
      goto LABEL_283;
    case 14:
      v386 = vzip1q_s64(v122, v158);
      v387 = vzip2q_s64(v122, v158);
      v388 = vzip1q_s64(v141, v160);
      v389 = vzip2q_s64(v141, v160);
      v390 = vtrn1q_s32(v86, v387);
      v391 = vtrn2q_s32(v86, v387);
      v392 = vtrn1q_s32(v105, v389);
      v393 = vtrn2q_s32(v105, v389);
      v394 = vtrn1q_s32(v386, v161);
      v395 = vtrn2q_s32(v386, v161);
      v396 = vtrn1q_s32(v388, v162);
      v397 = vtrn2q_s32(v388, v162);
      if (v10)
      {
        v390 = vshlq_u16(v390, v12);
        v392 = vshlq_u16(v392, v12);
        v394 = vshlq_u16(v394, v12);
        v396 = vshlq_u16(v396, v12);
        v391 = vshlq_u16(v391, v12);
        v393 = vshlq_u16(v393, v12);
        v395 = vshlq_u16(v395, v12);
        v397 = vshlq_u16(v397, v12);
      }

      v336 = veorq_s8((*&vcgezq_s16(v394) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v394);
      v338 = veorq_s8((*&vcgezq_s16(v396) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v396);
      v333 = veorq_s8((*&vcgezq_s16(v391) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v391);
      v335 = veorq_s8((*&vcgezq_s16(v393) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v393);
      v337 = veorq_s8((*&vcgezq_s16(v395) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v395);
      v339 = veorq_s8((*&vcgezq_s16(v397) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v397);
      *v6 = veorq_s8((*&vcgezq_s16(v390) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v390);
      v340 = v6 + v8;
      *(v6 + v8) = veorq_s8((*&vcgezq_s16(v392) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v392);
      goto LABEL_282;
    case 15:
      v269 = vzip1q_s64(v86, v122);
      v270 = vzip2q_s64(v86, v122);
      v271 = vzip1q_s64(v105, v141);
      v272 = vzip2q_s64(v105, v141);
      v273 = vzip1q_s64(v158, v161);
      v274 = vzip2q_s64(v158, v161);
      v275 = vzip1q_s64(v160, v162);
      v276 = vzip2q_s64(v160, v162);
      if (v10)
      {
        goto LABEL_253;
      }

      goto LABEL_254;
    case 16:
      v269 = vtrn1q_s16(v86, v122);
      v270 = vtrn2q_s16(v86, v122);
      v271 = vtrn1q_s16(v105, v141);
      v272 = vtrn2q_s16(v105, v141);
      v273 = vtrn1q_s16(v158, v161);
      v274 = vtrn2q_s16(v158, v161);
      v275 = vtrn1q_s16(v160, v162);
      v276 = vtrn2q_s16(v160, v162);
      if (!v10)
      {
        goto LABEL_254;
      }

LABEL_253:
      v269 = vshlq_u16(v269, v12);
      v271 = vshlq_u16(v271, v12);
      v270 = vshlq_u16(v270, v12);
      v272 = vshlq_u16(v272, v12);
      v273 = vshlq_u16(v273, v12);
      v275 = vshlq_u16(v275, v12);
      v274 = vshlq_u16(v274, v12);
      v276 = vshlq_u16(v276, v12);
LABEL_254:
      v227 = veorq_s8((*&vcgezq_s16(v276) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v276);
      *v6 = veorq_s8((*&vcgezq_s16(v269) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v269);
      *(v6 + 16) = veorq_s8((*&vcgezq_s16(v273) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v273);
      v277 = (v6 + v8);
      *v277 = veorq_s8((*&vcgezq_s16(v271) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v271);
      v277[1] = veorq_s8((*&vcgezq_s16(v275) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v275);
      v278 = (v6 + v8 + v8);
      *v278 = veorq_s8((*&vcgezq_s16(v270) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v270);
      v278[1] = veorq_s8((*&vcgezq_s16(v274) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v274);
      v268 = &v278->i8[v8];
      *v268 = veorq_s8((*&vcgezq_s16(v272) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v272);
      goto LABEL_287;
    case 17:
      v279 = vtrn1q_s32(v86, v158);
      v280 = vtrn2q_s32(v86, v158);
      v281 = vtrn1q_s32(v105, v160);
      v282 = vtrn2q_s32(v105, v160);
      v283 = vtrn1q_s16(v122, v279);
      v284 = vtrn2q_s16(v122, v279);
      v285 = vtrn1q_s16(v141, v281);
      v286 = vtrn2q_s16(v141, v281);
      v287 = vtrn1q_s16(v280, v161);
      v288 = vtrn2q_s16(v280, v161);
      v289 = vtrn1q_s16(v282, v162);
      v290 = vtrn2q_s16(v282, v162);
      if (v10)
      {
        v284 = vshlq_u16(v284, v12);
        v286 = vshlq_u16(v286, v12);
        v283 = vshlq_u16(v283, v12);
        v285 = vshlq_u16(v285, v12);
        v287 = vshlq_u16(v287, v12);
        v289 = vshlq_u16(v289, v12);
        v288 = vshlq_u16(v288, v12);
        v290 = vshlq_u16(v290, v12);
      }

      *v6 = v284;
      *(v6 + v8) = v287;
      v291 = (v6 + v8 + v8);
      *v291 = v286;
      v292 = (v291 + v8);
      *v292 = v289;
      v293 = (v292 + v8);
      *v293 = v283;
      v294 = (v293 + v8);
      *v294 = v288;
      v295 = (v294 + v8);
      *v295 = v285;
      *(v295 + v8) = v290;
      return result;
    case 18:
      v402 = vtrn1q_s16(v86, v122);
      v403 = vtrn2q_s16(v86, v122);
      v404 = vtrn1q_s16(v105, v141);
      v405 = vtrn2q_s16(v105, v141);
      v406 = vtrn1q_s16(v158, v161);
      v407 = vtrn2q_s16(v158, v161);
      v408 = vtrn1q_s16(v160, v162);
      v409 = vtrn2q_s16(v160, v162);
      v410 = vtrn1q_s32(v402, v406);
      v411 = vtrn2q_s32(v402, v406);
      v412 = vtrn1q_s32(v404, v408);
      v413 = vtrn2q_s32(v404, v408);
      v414 = vtrn1q_s32(v403, v407);
      v415 = vtrn2q_s32(v403, v407);
      v416 = vtrn1q_s32(v405, v409);
      v227 = vtrn2q_s32(v405, v409);
      if (v10)
      {
        v410 = vshlq_u16(v410, v12);
        v412 = vshlq_u16(v412, v12);
        v414 = vshlq_u16(v414, v12);
        v416 = vshlq_u16(v416, v12);
        v411 = vshlq_u16(v411, v12);
        v413 = vshlq_u16(v413, v12);
        v415 = vshlq_u16(v415, v12);
        v227 = vshlq_u16(v227, v12);
      }

      *v6 = v410;
      *(v6 + 16) = v411;
      v417 = (v6 + v8);
      *v417 = v412;
      v417[1] = v413;
      v418 = (v6 + v8 + v8);
      *v418 = v414;
      v418[1] = v415;
      v268 = (v418 + v8);
      *v268 = v416;
      goto LABEL_287;
    case 19:
      goto LABEL_238;
    case 20:
      v311 = vzip1q_s64(v122, v158);
      v312 = vzip2q_s64(v122, v158);
      v313 = vzip1q_s64(v141, v160);
      v314 = vzip2q_s64(v141, v160);
      v315 = vtrn1q_s16(v86, v312);
      v316 = vtrn2q_s16(v86, v312);
      v317 = vtrn1q_s16(v105, v314);
      v318 = vtrn2q_s16(v105, v314);
      v319 = vtrn1q_s16(v311, v161);
      v320 = vtrn2q_s16(v311, v161);
      v321 = vtrn1q_s16(v313, v162);
      v322 = vtrn2q_s16(v313, v162);
      if (v10)
      {
        v315 = vshlq_u16(v315, v12);
        v317 = vshlq_u16(v317, v12);
        v319 = vshlq_u16(v319, v12);
        v321 = vshlq_u16(v321, v12);
        v316 = vshlq_u16(v316, v12);
        v318 = vshlq_u16(v318, v12);
        v320 = vshlq_u16(v320, v12);
        v322 = vshlq_u16(v322, v12);
      }

      *v6 = v315;
      *(v6 + v8) = v319;
      v323 = (v6 + v8 + v8);
      *v323 = v317;
      v324 = (v323 + v8);
      *v324 = v321;
      v325 = (v324 + v8);
      *v325 = v316;
      v326 = (v325 + v8);
      *v326 = v320;
      v327 = (v326 + v8);
      *v327 = v318;
      *(v327 + v8) = v322;
      return result;
    case 21:
      v296 = vzip1q_s64(v122, v158);
      v297 = vzip2q_s64(v122, v158);
      v298 = vzip1q_s64(v141, v160);
      v299 = vzip2q_s64(v141, v160);
      v300 = vtrn1q_s16(v86, v297);
      v301 = vtrn2q_s16(v86, v297);
      v302 = vtrn1q_s16(v105, v299);
      v303 = vtrn2q_s16(v105, v299);
      v304 = vtrn1q_s16(v296, v161);
      v305 = vtrn2q_s16(v296, v161);
      v306 = vtrn1q_s16(v298, v162);
      v307 = vtrn2q_s16(v298, v162);
      if (v10)
      {
        v300 = vshlq_u16(v300, v12);
        v302 = vshlq_u16(v302, v12);
        v304 = vshlq_u16(v304, v12);
        v306 = vshlq_u16(v306, v12);
        v301 = vshlq_u16(v301, v12);
        v303 = vshlq_u16(v303, v12);
        v305 = vshlq_u16(v305, v12);
        v307 = vshlq_u16(v307, v12);
      }

      *v6 = v300;
      *(v6 + 16) = v301;
      v308 = (v6 + v8);
      *v308 = v304;
      v308[1] = v305;
      v309 = (v6 + v8 + v8);
      *v309 = v302;
      v309[1] = v303;
      v310 = (v309 + v8);
      *v310 = v306;
      v310[1] = v307;
      return result;
    case 22:
      v328 = vzip1q_s64(v122, v158);
      v329 = vzip2q_s64(v122, v158);
      v330 = vzip1q_s64(v141, v160);
      v331 = vzip2q_s64(v141, v160);
      v332 = vtrn1q_s32(v86, v329);
      v333 = vtrn2q_s32(v86, v329);
      v334 = vtrn1q_s32(v105, v331);
      v335 = vtrn2q_s32(v105, v331);
      v336 = vtrn1q_s32(v328, v161);
      v337 = vtrn2q_s32(v328, v161);
      v338 = vtrn1q_s32(v330, v162);
      v339 = vtrn2q_s32(v330, v162);
      if (v10)
      {
        v332 = vshlq_u16(v332, v12);
        v334 = vshlq_u16(v334, v12);
        v336 = vshlq_u16(v336, v12);
        v338 = vshlq_u16(v338, v12);
        v333 = vshlq_u16(v333, v12);
        v335 = vshlq_u16(v335, v12);
        v337 = vshlq_u16(v337, v12);
        v339 = vshlq_u16(v339, v12);
      }

      *v6 = v332;
      v340 = v6 + v8;
      *(v6 + v8) = v334;
LABEL_282:
      v398 = (v340 + v8);
      *v398 = v336;
      v399 = (v398 + v8);
      *v399 = v338;
      v400 = (v399 + v8);
      *v400 = v333;
      v401 = (v400 + v8);
      *v401 = v335;
      v357 = &v401->i8[v8];
      *v357 = v337;
LABEL_283:
      *(v357 + v8) = v339;
      return result;
    default:
      longjmp(result + 29, -15405);
  }

  return result;
}