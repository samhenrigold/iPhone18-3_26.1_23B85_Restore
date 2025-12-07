uint64_t OUTLINED_FUNCTION_1_104()
{
  v3 = v1[1];
  v2[6] = *v1;
  v2[7] = v3;
  v2[8] = v1[2];
  return v0;
}

__n128 OUTLINED_FUNCTION_6_66@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 + 24);
  v1[6] = result;
  return result;
}

CFTypeRef FigURLStorageSessionCopyGlobalSession(uint64_t a1, uint64_t a2)
{
  ClassID = FigHTTPRequestGetClassID(a1, a2);
  v4 = FigHTTPRequestNSURLSessionGetClassID(ClassID, v3);
  if (ClassID != v4)
  {
    return 0;
  }

  return _FigURLStorageSessionNSCopyGlobalSession(v4);
}

uint64_t FigURLStorageSessionCreate(const __CFDictionary *a1, uint64_t *a2)
{
  ClassID = FigHTTPRequestGetClassID(a1, a2);
  if (ClassID != FigHTTPRequestNSURLSessionGetClassID(ClassID, v5))
  {
    return 4294954514;
  }

  return _FigURLStorageSessionNSCreate(a1, a2);
}

__CFString *otfw_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerForFormatWriter %p>", a1);
  return Mutable;
}

uint64_t otfw_postNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 16))
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t otfw_LowWater(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v2 = *(result + 88);
  if (v2)
  {
    v3 = *(result + 96);

    return v2(v3);
  }

  return result;
}

void sub_19665EF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getPATCCAccessClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__8;
  v0 = getPATCCAccessClass_softClass;
  v7 = __Block_byref_object_dispose__8;
  v8 = getPATCCAccessClass_softClass;
  if (!getPATCCAccessClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPATCCAccessClass_block_invoke;
    v2[3] = &unk_1E7486A28;
    v2[4] = &v3;
    __getPATCCAccessClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19665F004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPAAccessLoggerClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PAAccessLogger");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPAAccessLoggerClass_block_invoke_cold_1();
  }

  getPAAccessLoggerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void PrivacyAccountingLibrary()
{
  v0 = 0;
  if (!PrivacyAccountingLibraryCore(&v0))
  {
    PrivacyAccountingLibrary_cold_1(&v0);
  }

  if (v0)
  {
    free(v0);
  }
}

uint64_t PrivacyAccountingLibraryCore(uint64_t a1)
{
  if (!PrivacyAccountingLibraryCore_frameworkLibrary)
  {
    PrivacyAccountingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return PrivacyAccountingLibraryCore_frameworkLibrary;
}

uint64_t __PrivacyAccountingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PrivacyAccountingLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPATCCAccessClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PATCCAccess");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPATCCAccessClass_block_invoke_cold_1();
  }

  getPATCCAccessClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getPAApplicationClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PAApplication");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPAApplicationClass_block_invoke_cold_1();
  }

  getPAApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t figVTTCaptionWriter_RegisterFigVTTCaptionWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVTTCaptionWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVTTCaptionWriterGetClassID_sRegisterFigVTTCaptionWriterBaseTypeOnce, figVTTCaptionWriter_RegisterFigVTTCaptionWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVTTCaptionWriterAddCaption(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  v9[2] = a3[2];
  return v6(a1, a2, v9);
}

uint64_t FigVTTCaptionWriterFinish(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigVTTCaptionWriterInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

void facPickBestDestinationNumberOfChannels(uint64_t a1, _DWORD *inSpecifier)
{
  v3 = *(a1 + 28);
  outPropertyDataSize = 0;
  if (!AudioFormatGetPropertyInfo(0x61766E63u, 0x28u, inSpecifier, &outPropertyDataSize))
  {
    v4 = malloc_type_malloc(outPropertyDataSize, 0xD5498F66uLL);
    if (AudioFormatGetProperty(0x61766E63u, 0x28u, inSpecifier, &outPropertyDataSize, v4) || outPropertyDataSize <= 3)
    {
      free(v4);
    }

    else
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = *&v4[v5];
        if (v7 == -1 || v7 == v3)
        {
          break;
        }

        v5 += 4;
        if (v7 <= v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v7;
        }

        if (v7 < v3)
        {
          v6 = v9;
        }

        if ((outPropertyDataSize & 0xFFFFFFFC) == v5)
        {
          goto LABEL_19;
        }
      }

      v6 = v3;
LABEL_19:
      free(v4);
      if (v6)
      {
        inSpecifier[7] = v6;
      }
    }
  }
}

uint64_t findCodecs(int a1, _DWORD *a2, _DWORD *a3)
{
  outPropertyDataSize = 0;
  inSpecifier = a1;
  *a2 = 0;
  *a3 = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x6176656Eu, 4u, &inSpecifier, &outPropertyDataSize);
  if (!PropertyInfo)
  {
    v6 = outPropertyDataSize;
    if (outPropertyDataSize)
    {
      v7 = outPropertyDataSize / 0xC;
      v8 = malloc_type_malloc(12 * (outPropertyDataSize / 0xCuLL), 0x10000403E1C8BA9uLL);
      if (!v8)
      {
        return 4294954510;
      }

      v9 = v8;
      Property = AudioFormatGetProperty(0x6176656Eu, 4u, &inSpecifier, &outPropertyDataSize, v8);
      if (Property)
      {
        PropertyInfo = Property;
        free(v9);
        return PropertyInfo;
      }

      if (v6 >= 0xC)
      {
        v11 = inSpecifier;
        v12 = v7 + 1;
        v13 = v9 + 2;
        do
        {
          if (*(v13 - 1) == v11)
          {
            if (*v13 == 1634756727)
            {
              if (!*a2)
              {
                *a2 = 1634756727;
              }
            }

            else if (!*a3)
            {
              *a3 = *v13;
            }
          }

          v13 += 3;
          --v12;
        }

        while (v12 > 1);
      }

      free(v9);
    }

    return 0;
  }

  return PropertyInfo;
}

double facCopyMixMapForInputs(int a1, _DWORD *a2, unsigned int a3, unsigned int a4, void *a5, char **a6, _DWORD *a7)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a6 || !a7)
  {
    facCopyMixMapForInputs_cold_1(&v46);
    return result;
  }

  if (a2)
  {
    v15 = a2;
    goto LABEL_12;
  }

  if ((a1 - 1) > 1)
  {
    v15 = 0;
    goto LABEL_12;
  }

  a3 = 20 * a1 + 12;
  v16 = malloc_type_calloc(1uLL, a3, 0x1000040E0EAB150uLL);
  if (v16)
  {
    v15 = v16;
    if (a1 == 1)
    {
      v17 = 6553601;
    }

    else
    {
      v17 = 6619138;
    }

    *v16 = v17;
LABEL_12:
    v18 = a5;
    if (!a5)
    {
      if (a4 - 1 > 1)
      {
        v18 = 0;
      }

      else
      {
        v19 = malloc_type_calloc(1uLL, 20 * a4 + 12, 0x1000040E0EAB150uLL);
        v18 = v19;
        if (!v19)
        {
          fig_log_get_emitter();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v42, v43);
          v23 = 0;
          if (v15)
          {
LABEL_46:
            if (v15 != a2)
            {
              free(v15);
            }
          }

LABEL_48:
          if (v18 && v18 != a5)
          {
            free(v18);
          }

          if (v23)
          {
            free(v23);
          }

          return result;
        }

        if (a4 == 1)
        {
          v20 = 6553601;
        }

        else
        {
          v20 = 6619138;
        }

        *v19 = v20;
      }
    }

    v45 = a4 * a1;
    v21 = malloc_type_calloc(a4 * a1, 4uLL, 0x100004052888210uLL);
    v23 = v21;
    if (!v15 || !v18)
    {
      if (a1)
      {
        v26 = 0;
        result = 0.0;
        v27 = v21;
        do
        {
          if (a4)
          {
            v28 = 0;
            do
            {
              if (v28)
              {
                v29 = 0.0;
              }

              else
              {
                v29 = 1.0;
              }

              *v27++ = v29;
              ++v28;
            }

            while (a4 != v28);
          }

          ++v26;
        }

        while (v26 != a1);
      }

      v25 = 0;
      goto LABEL_36;
    }

    *outPropertyDataSize = 0;
    inSpecifier = 0;
    v52 = 0;
    v47 = 0x100000000;
    v48 = 0uLL;
    v49 = 0;
    v46 = 0;
    if (*v15 == 0x10000)
    {
      v30 = v15 + 1;
      v31 = 1668116578;
    }

    else
    {
      if (!*v15)
      {
        v24 = v15[2];
        v25 = v15;
        if (20 * v24 + 12 > a3)
        {
          v25 = v15;
          goto LABEL_42;
        }

        goto LABEL_69;
      }

      v31 = 1668116588;
      v30 = v15;
    }

    if (AudioFormatGetPropertyInfo(v31, 4u, v30, &outPropertyDataSize[1]))
    {
      goto LABEL_41;
    }

    if (outPropertyDataSize[1])
    {
      v25 = malloc_type_calloc(1uLL, outPropertyDataSize[1], 0x1000040E0EAB150uLL);
      if (v25)
      {
        if (*v15 == 0x10000)
        {
          v32 = v15 + 1;
          v33 = 1668116578;
        }

        else
        {
          v33 = 1668116588;
          v32 = v15;
        }

        if (!AudioFormatGetProperty(v33, 4u, v32, &outPropertyDataSize[1], v25))
        {
          v24 = v25[2];
LABEL_69:
          outPropertyData = v23;
          v52 = v18;
          if (v24)
          {
            v35 = 0;
            v36 = 1;
            v37 = outPropertyData;
            while (1)
            {
              if (v36)
              {
                v38 = &v25[5 * v35 + 3];
                v39 = *v38;
                v49 = *(v38 + 16);
                v48 = v39;
              }

              inSpecifier = &v46;
              outPropertyDataSize[0] = 4 * a4;
              if (!AudioFormatGetProperty(0x6D6D6170u, 0x10u, &inSpecifier, outPropertyDataSize, v37) || !v48)
              {
                goto LABEL_82;
              }

              if (v48 != -1)
              {
                break;
              }

              v36 = 0;
              LODWORD(v48) = 3;
LABEL_83:
              if (v35 >= v25[2])
              {
                goto LABEL_84;
              }
            }

            if ((v48 & 0xFFFF0000) == 0x10000)
            {
              v40 = v48;
              if (v48 >= a4)
              {
                goto LABEL_82;
              }
            }

            else
            {
              v40 = v35;
              if (v35 >= a4)
              {
LABEL_82:
                v37 += 4 * a4;
                ++v35;
                v36 = 1;
                goto LABEL_83;
              }
            }

            *&v37[4 * v40] = 1065353216;
            goto LABEL_82;
          }

LABEL_84:
          v23 = outPropertyData;
LABEL_36:
          *a6 = v23;
          *a7 = 4 * v45;
          v23 = 0;
          if (!v25)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        free(v25);
LABEL_41:
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_42:
    fig_log_get_emitter();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v42, v43);
    if (!v25)
    {
      goto LABEL_45;
    }

LABEL_43:
    if (v25 != v15)
    {
      free(v25);
    }

LABEL_45:
    if (v15)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954510, "<<<< FAC >>>>", 2223, v7);
}

double FigSampleBufferProcessorAcquireHardware(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  return acquireHardware(DerivedStorage);
}

double acquireHardware(uint64_t a1)
{
  if (*(a1 + 72) && !*(a1 + 80))
  {
    v3 = AudioConverterAcquireHardwareCodec();
    if (v3)
    {
      v5 = v3;
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v5, "<<<< FAC >>>>", 3097, v1);
    }

    else
    {
      *(a1 + 80) = 1;
    }
  }

  return result;
}

uint64_t FigSampleBufferProcessorRelinquishHardware(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 80))
  {
    return 0;
  }

  v2 = DerivedStorage;
  result = AudioConverterReleaseHardwareCodec();
  *(v2 + 80) = 0;
  return result;
}

__CFString *facCopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CFGetAllocator(DerivedStorage);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(DerivedStorage);
  if (DerivedStorage[16])
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_AudioCompression %p> retainCount: %d%s allocator: %p\n", DerivedStorage, v4, v5, v6);
  return Mutable;
}

void facCopyProperty(uint64_t a1, const void *a2, uint64_t a3, double **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FAC >>>>", 637, v4);
    return;
  }

  v9 = DerivedStorage;
  if (CFEqual(a2, @"SampleBufferProcessor_iTunesGaplessInfo"))
  {
    if (!*(v9 + 208))
    {
      goto LABEL_33;
    }

    v10 = *(v9 + 200);
    RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(*(v9 + 32));
    if (!RichestDecodableFormat)
    {
      goto LABEL_34;
    }

    v12 = RichestDecodableFormat;
    RichestDecodableFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(*(v9 + 32));
    if (!RichestDecodableFormat)
    {
      goto LABEL_34;
    }

    if (*(v12 + 2) == 1819304813)
    {
      goto LABEL_33;
    }

    outPropertyData = 0;
    if (*v12 == *RichestDecodableFormat)
    {
      v13 = 1;
    }

    else
    {
      v13 = (*v12 / *RichestDecodableFormat + 0.5);
      if (!v13)
      {
LABEL_33:
        RichestDecodableFormat = 0;
        goto LABEL_34;
      }
    }

    ioPropertyDataSize[0] = 8;
    if (!AudioConverterGetProperty(*(v9 + 64), 0x7072696Du, ioPropertyDataSize, &outPropertyData))
    {
      RichestDecodableFormat = FigGaplessInfoCreateEnhanced_NoCorrection(*(v9 + 32), outPropertyData, HIDWORD(outPropertyData), v10 / v13);
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (CFEqual(a2, @"SampleBufferProcessor_OutputBitRate"))
  {
    LODWORD(outPropertyData) = 0;
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(v9 + 32));
    if (StreamBasicDescription)
    {
      if (StreamBasicDescription->mSampleRate != 0.0)
      {
        mFramesPerPacket = StreamBasicDescription->mFramesPerPacket;
        if (mFramesPerPacket)
        {
          mBytesPerPacket = StreamBasicDescription->mBytesPerPacket;
          if (mBytesPerPacket)
          {
            LODWORD(outPropertyData) = vcvtd_n_u64_f64(StreamBasicDescription->mSampleRate / mFramesPerPacket * mBytesPerPacket, 3uLL);
LABEL_26:
            RichestDecodableFormat = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &outPropertyData);
LABEL_34:
            *a4 = RichestDecodableFormat;
            return;
          }
        }
      }
    }

    v17 = *(v9 + 64);
    if (v17)
    {
      ioPropertyDataSize[0] = 4;
      Property = AudioConverterGetProperty(v17, 0x62726174u, ioPropertyDataSize, &outPropertyData);
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, ioPropertyDataSize[0], v28);
    }

    if (!Property)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (CFEqual(a2, @"SampleBufferProcessor_OutputFormatDescription"))
    {
      RichestDecodableFormat = *(v9 + 32);
      if (RichestDecodableFormat)
      {
        RichestDecodableFormat = CFRetain(RichestDecodableFormat);
      }

      goto LABEL_34;
    }

    if (CFEqual(a2, @"SampleBufferProcessor_HardwareResourceName"))
    {
      v19 = *(v9 + 72);
      *a4 = v19;
      if (v19)
      {
        CFRetain(v19);
      }
    }

    else if (CFEqual(a2, @"SampleBufferProcessorProperty_ImprovedOutputFormatDescription"))
    {
      outSize = 0;
      if (AudioConverterGetPropertyInfo(*(v9 + 64), 0x636D6763u, &outSize, 0) || !outSize)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, ioPropertyDataSize[0], v28);
      }

      else
      {
        v20 = malloc_type_malloc(outSize, 0x48FA5FC8uLL);
        if (AudioConverterGetProperty(*(v9 + 64), 0x636D6763u, &outSize, v20) || !outSize)
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, ioPropertyDataSize[0], v28);
        }

        else
        {
          outPropertyData = 0;
          ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(*(v9 + 32), &outPropertyData);
          v22 = CMAudioFormatDescriptionGetStreamBasicDescription(*(v9 + 32));
          Extensions = CMFormatDescriptionGetExtensions(*(v9 + 32));
          if (v22)
          {
            v24 = Extensions;
            *ioPropertyDataSize = 0;
            v25 = CFGetAllocator(*(v9 + 32));
            if (!CMAudioFormatDescriptionCreate(v25, v22, outPropertyData, ChannelLayout, outSize, v20, v24, ioPropertyDataSize))
            {
              *a4 = *ioPropertyDataSize;
            }
          }
        }

        if (v20)
        {
          free(v20);
        }
      }
    }
  }
}

unsigned __int16 *StereoMonoDownMix16SwappedEndian(unsigned __int16 *result, __int16 *a2, int a3)
{
  for (; a3; --a3)
  {
    v3 = ((2896 * (bswap32(result[1]) >> 16)) >> 12) + ((2896 * (bswap32(*result) >> 16)) >> 12);
    if (v3 >= 0x7FFF)
    {
      v4 = 0x7FFF;
    }

    else
    {
      v4 = v3;
    }

    if (v3 <= -32768)
    {
      v5 = 0x8000;
    }

    else
    {
      v5 = v3;
    }

    if (v3 <= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    *a2++ = v6;
    result += 2;
  }

  return result;
}

unsigned int *StereoMonoDownMix32SwappedEndian(unsigned int *result, unsigned int *a2, int a3)
{
  for (; a3; --a3)
  {
    v3 = *result;
    v4 = result[1];
    result += 2;
    v5 = ((11863283 * bswap32(v4)) >> 24) + ((11863283 * bswap32(v3)) >> 24);
    if (v5 >= 0x7FFFFFFF)
    {
      v6 = 0x7FFFFFFF;
    }

    else
    {
      v6 = v5;
    }

    if (v5 <= 0xFFFFFFFF80000000)
    {
      v7 = 0x80000000;
    }

    else
    {
      v7 = v5;
    }

    if (v5 <= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    *a2++ = v8;
  }

  return result;
}

void FigSampleBufferProcessorCreateWithAudioDecompression(const void *a1, uint64_t a2, size_t a3, const AudioChannelLayout *a4, uint64_t a5, CFTypeRef *a6)
{
  if (a6)
  {
    if (a2 && *(a2 + 8) == 1819304813)
    {
      FigSampleBufferProcessorGetClassID();
      if (!CMDerivedObjectCreate())
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v13 = *(a2 + 32);
        v14 = *(a2 + 16);
        *(DerivedStorage + 40) = *a2;
        *(DerivedStorage + 56) = v14;
        *(DerivedStorage + 72) = v13;
        if (CMAudioFormatDescriptionCreate(a1, a2, a3, a4, 0, 0, 0, (DerivedStorage + 32)))
        {
          CFRelease(0);
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0, v19);
        }

        else
        {
          if (a1)
          {
            *(DerivedStorage + 288) = a1;
            CFRetain(a1);
          }

          *a6 = 0;
        }
      }

      return;
    }

    emitter = fig_log_get_emitter();
    v16 = v6;
    v17 = 434;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v16 = v6;
    v17 = 431;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< FAD >>>>", v17, v16);
}

uint64_t fadInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigAudioDecompressorInvalidate(DerivedStorage);
  return 0;
}

void fadFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigAudioDecompressorInvalidate(DerivedStorage);
}

__CFString *fadCopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CFGetAllocator(DerivedStorage);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(DerivedStorage);
  if (DerivedStorage[16])
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_AudioDecompression %p> retainCount: %d%s allocator: %p\n", DerivedStorage, v4, v5, v6);
  return Mutable;
}

void FigAudioDecompressorInvalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    if (*(a1 + 136))
    {
      if (*(a1 + 152))
      {
        AudioConverterReleaseHardwareCodec();
        *(a1 + 152) = 0;
      }

      v2 = *(a1 + 144);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 144) = 0;
      }

      AudioConverterDispose(*(a1 + 136));
      *(a1 + 136) = 0;
    }

    v3 = *(a1 + 104);
    if (v3)
    {
      free(v3);
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      deallocateAndZeroBufferListDataPointers(v4, *(a1 + 296));
      free(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    v5 = *(a1 + 232);
    if (v5)
    {
      free(v5);
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
    }

    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    v6 = *(a1 + 24);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 24) = 0;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 32) = 0;
    }

    v8 = *(a1 + 304);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 304) = 0;
    }

    v9 = *(a1 + 312);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 312) = 0;
    }

    v10 = *(a1 + 296);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 296) = 0;
    }

    v11 = *(a1 + 264);
    if (v11)
    {
      Count = CFArrayGetCount(v11);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; i != v13; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 264), i);
          free(ValueAtIndex);
        }
      }

      CFArrayRemoveAllValues(*(a1 + 264));
      CFRelease(*(a1 + 264));
      *(a1 + 264) = 0;
    }

    v16 = *(a1 + 224);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 224) = 0;
    }

    v17 = *(a1 + 160);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 160) = 0;
    }

    v18 = *(a1 + 168);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 168) = 0;
    }

    *(a1 + 16) = 1;
  }
}

void deallocateAndZeroBufferListDataPointers(unsigned int *a1, CFAllocatorRef allocator)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      v5 = 0;
      v6 = (a1 + 4);
      do
      {
        if (*v6)
        {
          CFAllocatorDeallocate(allocator, *v6);
          *v6 = 0;
          v3 = *a1;
        }

        *(v6 - 1) = 0;
        ++v5;
        v6 += 2;
      }

      while (v5 < v3);
    }
  }
}

uint64_t sbp_fad_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 120) = a2;
  *(DerivedStorage + 128) = a3;
  return 0;
}

void sbp_fad_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*(DerivedStorage + 272) == 2)
  {
    AudioConverterReset(*(DerivedStorage + 136));
    acquireHardware_0(v4);
    if (v5)
    {
      return;
    }

    *(v4 + 272) = 0;
  }

  RunConverter_0(v4, a2);
}

CMItemCount sbp_fad_finishPendingProcessing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 272) = 1;
  RunConverter_0(DerivedStorage, 0);
  v3 = v2;
  *(DerivedStorage + 272) = 2;
  if (*(DerivedStorage + 152))
  {
    AudioConverterReleaseHardwareCodec();
    *(DerivedStorage + 152) = 0;
  }

  return v3;
}

double acquireHardware_0(uint64_t a1)
{
  if (*(a1 + 144) && !*(a1 + 152))
  {
    v3 = AudioConverterAcquireHardwareCodec();
    if (v3)
    {
      v5 = v3;
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v5, "<<<< FAD >>>>", 490, v1);
    }

    else
    {
      *(a1 + 152) = 1;
    }
  }

  return result;
}

uint64_t fadDecoderInputProc(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(*(a5 + 24));
  totalLengthOut = 0;
  dataPointerOut = 0;
  sizeArrayEntriesNeededOut = 0;
  lengthAtOffsetOut = 0;
  v10 = *(a5 + 160);
  if (v10)
  {
    v11 = *(a5 + 168);
    *(a5 + 168) = v10;
    CFRetain(v10);
    if (v11)
    {
      CFRelease(v11);
    }

    *(a5 + 176) = 0;
    *(a5 + 184) = 0;
    v12 = *(a5 + 160);
    if (v12)
    {
      CFRelease(v12);
      *(a5 + 160) = 0;
    }
  }

  v13 = *(a5 + 168);
  if (!v13 || CMSampleBufferGetNumSamples(v13) == *(a5 + 184))
  {
    *a2 = 0;
    if (*(a5 + 272) == 1)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  if (!*(a5 + 216))
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v73, *(a5 + 168));
    *(a5 + 192) = v73;
    *(a5 + 216) = 1;
  }

  v15 = *(a5 + 168);
  NumSamples = CMSampleBufferGetNumSamples(v15);
  CMSampleBufferGetSampleSizeArray(v15, NumSamples, 0, &sizeArrayEntriesNeededOut);
  v17 = sizeArrayEntriesNeededOut;
  v18 = *(a5 + 232);
  if (sizeArrayEntriesNeededOut > *(a5 + 240))
  {
    if (v18)
    {
      free(*(a5 + 232));
      v17 = sizeArrayEntriesNeededOut;
    }

    v18 = malloc_type_malloc(8 * v17, 0x100004000313F17uLL);
    v19 = sizeArrayEntriesNeededOut;
    *(a5 + 232) = v18;
    *(a5 + 240) = v19;
  }

  v20 = *(a5 + 168);
  v21 = CMSampleBufferGetNumSamples(v20);
  CMSampleBufferGetSampleSizeArray(v20, v21, v18, &sizeArrayEntriesNeededOut);
  if (!sizeArrayEntriesNeededOut)
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (!*(a5 + 176))
  {
    if (sizeArrayEntriesNeededOut == 1)
    {
      *(a5 + 176) = *v18;
    }

    else if (CMSampleBufferGetNumSamples(*(a5 + 168)) >= 1)
    {
      v22 = 0;
      do
      {
        v23 = *(a5 + 168);
        *(a5 + 176) += v18[v22++];
      }

      while (v22 < CMSampleBufferGetNumSamples(v23));
    }
  }

  v24 = *(a5 + 184);
  v63 = RichestDecodableFormat;
  if (v24)
  {
    if (sizeArrayEntriesNeededOut == 1)
    {
      v25 = *v18 * v24;
      v26 = *v18 * CMSampleBufferGetNumSamples(*(a5 + 168)) - v25;
    }

    else
    {
      if (v24 < 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        v27 = v18;
        v28 = *(a5 + 184);
        do
        {
          v29 = *v27++;
          v25 += v29;
          --v28;
        }

        while (v28);
      }

      if (v24 >= CMSampleBufferGetNumSamples(*(a5 + 168)))
      {
        v26 = 0;
      }

      else
      {
        v26 = 0;
        do
        {
          v26 += v18[v24++];
        }

        while (v24 < CMSampleBufferGetNumSamples(*(a5 + 168)));
      }
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v30 = *(a5 + 224);
  if (v30)
  {
    CFRelease(v30);
    *(a5 + 224) = 0;
  }

  v31 = CMSampleBufferGetNumSamples(*(a5 + 168));
  DataBuffer = CMSampleBufferGetDataBuffer(*(a5 + 168));
  CMBlockBufferGetDataPointer(DataBuffer, v25, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  v62 = a4;
  if (lengthAtOffsetOut == v26)
  {
    goto LABEL_55;
  }

  v33 = sizeArrayEntriesNeededOut;
  v31 = *(a5 + 184);
  v34 = CMSampleBufferGetNumSamples(*(a5 + 168));
  if (v33 == 1)
  {
    if (v31 >= v34)
    {
      goto LABEL_56;
    }

    v35 = 0;
    while (1)
    {
      v26 = *v18 + v35;
      if (v26 > lengthAtOffsetOut)
      {
        break;
      }

      ++v31;
      v36 = CMSampleBufferGetNumSamples(*(a5 + 168));
      v35 = v26;
      if (v31 >= v36)
      {
        goto LABEL_54;
      }
    }
  }

  else
  {
    if (v31 >= v34)
    {
      goto LABEL_56;
    }

    v35 = 0;
    while (1)
    {
      v26 = v18[v31] + v35;
      if (v26 > lengthAtOffsetOut)
      {
        break;
      }

      ++v31;
      v37 = CMSampleBufferGetNumSamples(*(a5 + 168));
      v35 = v26;
      if (v31 >= v37)
      {
        goto LABEL_54;
      }
    }
  }

  v26 = v35;
LABEL_54:
  if (v26)
  {
LABEL_55:
    LODWORD(result) = 0;
    goto LABEL_62;
  }

LABEL_56:
  v38 = CMSampleBufferGetDataBuffer(*(a5 + 168));
  if (sizeArrayEntriesNeededOut == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = v31;
  }

  LODWORD(result) = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v38, *MEMORY[0x1E695E480], 0, v25, v18[v39], 0, (a5 + 224));
  if (result)
  {
    LODWORD(v26) = 0;
  }

  else
  {
    CMBlockBufferGetDataPointer(*(a5 + 224), 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    LODWORD(result) = 0;
    v31 = *(a5 + 184) + 1;
    v26 = v18[v39];
  }

LABEL_62:
  v40 = v63;
  v41 = *(a5 + 184);
  v42 = v31 - v41;
  if (!v63->mASBD.mBytesPerPacket || (v43 = *(a5 + 184), !v63->mASBD.mFramesPerPacket))
  {
    v73.value = 0;
    packetDescriptionsSizeOut.value = 0;
    if (v42 > *(a5 + 112))
    {
      v44 = *(a5 + 104);
      if (v44)
      {
        free(v44);
      }

      *(a5 + 104) = malloc_type_malloc(16 * v42, 0x1000040451B5BE8uLL);
      *(a5 + 112) = v42;
    }

    v45 = *(a5 + 168);
    v46 = CMSampleBufferGetNumSamples(v45);
    CMSampleBufferGetSampleSizeArray(v45, v46, v18, 0);
    LODWORD(result) = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(*(a5 + 168), &v73, &packetDescriptionsSizeOut);
    if (v42 >= 1)
    {
      v47 = 0;
      v48 = *(a5 + 104);
      v49 = v73.value + 16 * v41;
      v50 = v31 - v41;
      do
      {
        *(v48 + v47) = *(v49 + v47);
        v48 = *(a5 + 104);
        *(v48 + v47) -= v25;
        v47 += 16;
        --v50;
      }

      while (v50);
    }

    v43 = *(a5 + 184);
    v40 = v63;
  }

  if (!v43)
  {
    v61 = *(a5 + 248);
    v51 = *(a5 + 168);
    memset(&v73, 0, sizeof(v73));
    if (faq_getFigTimeAttachment(v51, *MEMORY[0x1E6960560], &v73))
    {
      v52 = *(a5 + 40);
      time = v73;
      CMTimeConvertScale(&v71, &time, v52, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      value = v71.value;
      if (HIDWORD(v71.value))
      {
        return 4294954516;
      }
    }

    else
    {
      value = 0;
    }

    memset(&packetDescriptionsSizeOut, 0, sizeof(packetDescriptionsSizeOut));
    if (faq_getFigTimeAttachment(v51, *MEMORY[0x1E6960558], &packetDescriptionsSizeOut))
    {
      v54 = *(a5 + 40);
      time = packetDescriptionsSizeOut;
      CMTimeConvertScale(&v69, &time, v54, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v55 = v69.value;
      if (HIDWORD(v69.value))
      {
        return 4294954516;
      }
    }

    else
    {
      v55 = 0;
    }

    if (v55 | value)
    {
      v56 = *(a5 + 40);
      if (v56 != v63->mASBD.mSampleRate)
      {
        v57 = v56 / v63->mASBD.mSampleRate;
        v61 = (*(a5 + 248) * v57 + 0.5);
      }

      if (value)
      {
        v58 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        *v58 = v61;
        v58[1] = v61 + value;
        CFArrayAppendValue(*(a5 + 264), v58);
      }

      if (v55)
      {
        v59 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        CMSampleBufferGetDuration(&v73, *(a5 + 168));
        CMTimeConvertScale(&v64, &v73, *(a5 + 40), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v60 = LODWORD(v64.value) + v61;
        *v59 = v60 - v55;
        v59[1] = v60;
        CFArrayAppendValue(*(a5 + 264), v59);
      }
    }

    LODWORD(result) = 0;
    v40 = v63;
  }

  *(a5 + 248) += v42 * v40->mASBD.mFramesPerPacket;
  *a3 = 1;
  *(a3 + 8) = v40->mASBD.mChannelsPerFrame;
  *(a3 + 12) = v26;
  *(a3 + 16) = dataPointerOut;
  *(a5 + 184) += v42;
  *a2 = v42;
  if (v62)
  {
    *v62 = *(a5 + 104);
  }

  if (v31 == v41)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t fvc_layerDefinition_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCLayerDefinitionID = result;
  return result;
}

uint64_t FigVCLayerDefinitionGetOpacity(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 44);
      result = 0;
      *a2 = v2;
    }

    else
    {
      FigVCLayerDefinitionGetOpacity_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigVCLayerDefinitionGetOpacity_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigVCLayerDefinitionGetSpecifiedCropRect(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    FigVCLayerDefinitionGetSpecifiedCropRect_cold_2(&v14);
    return v14;
  }

  if (!a2)
  {
    FigVCLayerDefinitionGetSpecifiedCropRect_cold_1(&v14);
    return v14;
  }

  v4 = (a1 + 48);
  if (CGRectIsNull(*(a1 + 48)))
  {
    v5 = *(MEMORY[0x1E695F040] + 16);
    v14 = *MEMORY[0x1E695F040];
    v15 = v5;
    FigCFDictionaryGetCGRectIfPresent();
    if (*(a1 + 24))
    {
      Value = CFDictionaryGetValue(*(a1 + 16), @"TweenedCropRectangle");
      if (Value)
      {
        FigVideoCompositionInstructionEvaluateTweenedCropRectangle(Value, *(a1 + 40));
        *&v14 = v7;
        *(&v14 + 1) = v8;
        *&v15 = v9;
        *(&v15 + 1) = v10;
      }
    }

    v11 = v15;
    *(a1 + 48) = v14;
    *(a1 + 64) = v11;
  }

  result = 0;
  v13 = v4[1];
  *a2 = *v4;
  a2[1] = v13;
  return result;
}

uint64_t FigVCLayerDefinitionGetSpecifiedAffineTransform(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    FigVCLayerDefinitionGetSpecifiedAffineTransform_cold_2(v18);
    return LODWORD(v18[0]);
  }

  if (!a2)
  {
    FigVCLayerDefinitionGetSpecifiedAffineTransform_cold_1(v18);
    return LODWORD(v18[0]);
  }

  if (!*(a1 + 128))
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    v15 = *MEMORY[0x1E695EFD0];
    v16 = v4;
    v17 = *(MEMORY[0x1E695EFD0] + 32);
    Value = CFDictionaryGetValue(*(a1 + 16), @"ConstantAffineMatrix");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFArrayGetTypeID())
      {
        FigGetCGAffineTransformFrom3x2MatrixArray(v6, &v15);
      }
    }

    if (*(a1 + 24))
    {
      v8 = CFDictionaryGetValue(*(a1 + 16), @"TweenedAffineMatrix");
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFArrayGetTypeID())
        {
          FigVideoCompositionInstructionEvaluateTweenedAffineMatrix(v9, v18, *(a1 + 40));
          v15 = v18[0];
          v16 = v18[1];
          v17 = v18[2];
        }
      }
    }

    v11 = v16;
    *(a1 + 80) = v15;
    *(a1 + 96) = v11;
    *(a1 + 112) = v17;
    *(a1 + 128) = 1;
  }

  result = 0;
  v13 = *(a1 + 80);
  v14 = *(a1 + 112);
  a2[1] = *(a1 + 96);
  a2[2] = v14;
  *a2 = v13;
  return result;
}

void fvc_layerDefinition_getCleanAperture(uint64_t a1, int a2, int a3, double *a4)
{
  if (a1)
  {
    FigVideoCompositorUtilityGetCleanAperture();
    if (v7)
    {
      return;
    }

    v8 = 0.0;
    v9 = a2;
    if ((a2 + (0.0 * 2.0)) <= 0.0)
    {
      v8 = a2 + (0.0 * 2.0);
    }

    if (v8 >= (v9 + (0.0 * -2.0)))
    {
      v8 = v9 + (0.0 * -2.0);
    }

    v10 = a3;
    v11 = a3 + (0.0 * 2.0);
    if (v11 > 0.0)
    {
      v11 = 0.0;
    }

    v12 = v10 + (0.0 * -2.0);
    if (v11 < v12)
    {
      v12 = v11;
    }

    v13 = (((v9 - v8) * 0.5) + 0.0);
    v14 = (((v10 - v12) * 0.5) + 0.0);
    v15 = v8;
    v16 = v12;
  }

  else
  {
    v15 = a2;
    v16 = a3;
    v14 = 0.0;
    v13 = 0.0;
  }

  *a4 = v13;
  a4[1] = v14;
  a4[2] = v15;
  a4[3] = v16;
}

uint64_t FigVCLayerDefinitionCreate(uint64_t a1, const void *a2, const void *a3, char a4, uint64_t *a5, float a6)
{
  if (a3)
  {
    if (a5)
    {
      MEMORY[0x19A8D3660](&FigVCLayerDefinitionGetTypeID_sRegisterFigVCLayerDefinitionOnce, fvc_layerDefinition_Register);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v12 = Instance;
        if (a2)
        {
          v13 = CFRetain(a2);
        }

        else
        {
          v13 = 0;
        }

        *(v12 + 32) = v13;
        v14 = CFRetain(a3);
        result = 0;
        *(v12 + 16) = v14;
        *(v12 + 40) = a6;
        *(v12 + 24) = a4;
        v16 = MEMORY[0x1E695F050];
        *(v12 + 44) = 2143289344;
        v17 = v16[1];
        *(v12 + 48) = *v16;
        *(v12 + 64) = v17;
        *a5 = v12;
      }

      else
      {
        FigVCLayerDefinitionCreate_cold_1(&v18);
        return v18;
      }
    }

    else
    {
      FigVCLayerDefinitionCreate_cold_2(&v19);
      return v19;
    }
  }

  else
  {
    FigVCLayerDefinitionCreate_cold_3(&v20);
    return v20;
  }

  return result;
}

void FigVCLayerDefinitionOptimizeLayerDefinitionArray(__CFArray *a1, CGFloat a2, CGFloat a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (CFArrayGetCount(a1) >= 1)
  {
    v6 = 0;
    do
    {
      if (*(CFArrayGetValueAtIndex(a1, v6) + 4))
      {
        ++v6;
      }

      else
      {
        CFArrayRemoveValueAtIndex(a1, v6);
      }
    }

    while (v6 < CFArrayGetCount(a1));
  }

  if (CFArrayGetCount(a1) < 1)
  {
LABEL_14:
    if (CFArrayGetCount(a1) < 1)
    {
LABEL_22:
      if (CFArrayGetCount(a1) < 1)
      {
        v12 = 0;
LABEL_42:
        while (v12 < CFArrayGetCount(a1))
        {
          CFArrayRemoveValueAtIndex(a1, v12);
        }
      }

      else
      {
        v12 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
          v29 = 0.0;
          if (FigVCLayerDefinitionGetOpacity(ValueAtIndex, &v29))
          {
            break;
          }

          if (v29 == 1.0 && FigVideoCompositorIsPixelBufferOpaque(ValueAtIndex[4]))
          {
            memset(&v31, 0, sizeof(v31));
            if (FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(ValueAtIndex, &v31))
            {
              return;
            }

            memset(&v30, 0, sizeof(v30));
            FigVCLayerDefinitionGetAffineTransform(ValueAtIndex, &v30);
            if (v14)
            {
              return;
            }

            v15 = 0;
            *&v32.a = v31.origin;
            v32.c = v31.origin.x + v31.size.width;
            v32.d = v31.origin.y;
            v32.tx = v31.origin.x + v31.size.width;
            v32.ty = v31.origin.y + v31.size.height;
            *&v33 = v31.origin.x;
            *(&v33 + 1) = v31.origin.y + v31.size.height;
            c = v30.c;
            d = v30.d;
            v18 = vdupq_lane_s64(*&v30.a, 0);
            v19 = vdupq_lane_s64(*&v30.tx, 0);
            v20 = vdupq_lane_s64(*&v30.b, 0);
            v21 = vdupq_lane_s64(*&v30.ty, 0);
            do
            {
              v22 = (&v32.a + v15);
              v35 = vld2q_f64(v22);
              v36.val[0] = vaddq_f64(v19, vmlaq_f64(vmulq_n_f64(v35.val[1], c), v35.val[0], v18));
              v36.val[1] = vaddq_f64(v21, vmlaq_f64(vmulq_n_f64(v35.val[1], d), v35.val[0], v20));
              vst2q_f64(v22, v36);
              v15 += 32;
            }

            while (v15 != 64);
            if ((v32.a - v32.c) * (v32.ty - v32.d) - (v32.b - v32.d) * (v32.tx - v32.c) > 0.0)
            {
              v23 = *&v32.a;
              *&v32.a = v33;
              v24 = *&v32.c;
              *&v32.c = *&v32.tx;
              *&v32.tx = v24;
              v33 = v23;
            }

            v28[0] = 0.0;
            v28[1] = 0.0;
            v26[1] = a3;
            v27[0] = a2;
            v27[1] = 0.0;
            v25[1] = a3;
            v26[0] = a2;
            v25[0] = 0.0;
            if (fvc_layerDefinition_isPointInTetragon(v28, &v32) && fvc_layerDefinition_isPointInTetragon(v27, &v32) && fvc_layerDefinition_isPointInTetragon(v26, &v32) && fvc_layerDefinition_isPointInTetragon(v25, &v32))
            {
              ++v12;
              goto LABEL_42;
            }
          }

          if (++v12 >= CFArrayGetCount(a1))
          {
            goto LABEL_42;
          }
        }
      }
    }

    else
    {
      v9 = 0;
      while (1)
      {
        v10 = CFArrayGetValueAtIndex(a1, v9);
        memset(&v31, 0, sizeof(v31));
        if (FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(v10, &v31))
        {
          break;
        }

        memset(&v32, 0, sizeof(v32));
        FigVCLayerDefinitionGetAffineTransform(v10, &v32);
        if (v11)
        {
          break;
        }

        v30 = v32;
        v37 = CGRectApplyAffineTransform(v31, &v30);
        v37.origin.x = round(v37.origin.x);
        v37.origin.y = round(v37.origin.y);
        v37.size.width = round(v37.size.width);
        v37.size.height = round(v37.size.height);
        v38.origin.x = 0.0;
        v38.origin.y = 0.0;
        v38.size.width = a2;
        v38.size.height = a3;
        if (CGRectIntersectsRect(v37, v38))
        {
          ++v9;
        }

        else
        {
          CFArrayRemoveValueAtIndex(a1, v9);
        }

        if (v9 >= CFArrayGetCount(a1))
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = CFArrayGetValueAtIndex(a1, v7);
      LODWORD(v32.a) = 0;
      if (FigVCLayerDefinitionGetOpacity(v8, &v32))
      {
        break;
      }

      if (*&v32.a < 0.0001)
      {
        CFArrayRemoveValueAtIndex(a1, v7);
      }

      else
      {
        ++v7;
      }

      if (v7 >= CFArrayGetCount(a1))
      {
        goto LABEL_14;
      }
    }
  }
}

BOOL fvc_layerDefinition_isPointInTetragon(double *a1, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 8);
  do
  {
    v4 = v2;
    if (v2 == 4)
    {
      break;
    }

    ++v2;
    v5 = (a2 + 16 * ((v4 + 1) & 3));
    v6 = round((*(v3 - 1) - *v5) * (a1[1] - v5[1]) - (*v3 - v5[1]) * (*a1 - *v5));
    v3 += 2;
  }

  while (v6 <= 0.0);
  return v4 > 3;
}

double fvc_layerDefinition_Init(uint64_t a1)
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

void fvc_layerDefinition_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

CGAffineTransform *OUTLINED_FUNCTION_3_78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, __n128 a14, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 t1, uint64_t t1_16, uint64_t t1_24, uint64_t t1_32, uint64_t t1_40, uint64_t a21, uint64_t t1_40a, uint64_t a22)
{
  t1 = a9;

  return CGAffineTransformConcat(&a22, &t1_16, &a10);
}

uint64_t sbp_vtcs_handleSessionTerminatedNotification(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

__CFString *sbp_vtcs_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_VideoCompression %p>", a1);
  return Mutable;
}

void sbp_vtcs_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 39))
  {
    if (!a4)
    {
      emitter = fig_log_get_emitter();
      v9 = v4;
      v10 = 4294954516;
      v11 = 243;
      goto LABEL_3;
    }

    v12 = DerivedStorage;
    if (CFEqual(a2, @"SampleBufferProcessor_InheritOutputColorSpaceFromInput"))
    {
      v13 = MEMORY[0x1E695E4D0];
      v14 = *(v12 + 34);
    }

    else
    {
      if (!CFEqual(a2, @"SampleBufferProcessor_InheritOutputCleanApertureFromInput"))
      {
        if (CFEqual(a2, @"SampleBufferProcessorProperty_ForceSyncSampleIntervalForSegmentation"))
        {
          v16 = *MEMORY[0x1E695E480];
          *&v18.value = *(v12 + 72);
          v17 = *(v12 + 88);
        }

        else
        {
          if (!CFEqual(a2, @"SampleBufferProcessorProperty_InitialSegmentStartTime"))
          {
            return;
          }

          v16 = *MEMORY[0x1E695E480];
          *&v18.value = *(v12 + 48);
          v17 = *(v12 + 64);
        }

        v18.epoch = v17;
        v15 = CMTimeCopyAsDictionary(&v18, v16);
LABEL_15:
        *a4 = v15;
        return;
      }

      v13 = MEMORY[0x1E695E4D0];
      v14 = *(v12 + 36);
    }

    if (!v14)
    {
      v13 = MEMORY[0x1E695E4C0];
    }

    v15 = CFRetain(*v13);
    goto LABEL_15;
  }

  emitter = fig_log_get_emitter();
  v9 = v4;
  v10 = 4294954511;
  v11 = 240;
LABEL_3:

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "<<< sbp_vtcs >>>", v11, v9);
}

double sbp_vtcs_setProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 39))
  {
    emitter = fig_log_get_emitter();
    v8 = v3;
    v9 = 4294954511;
    v10 = 273;
LABEL_13:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<< sbp_vtcs >>>", v10, v8);
  }

  v11 = DerivedStorage;
  if (CFEqual(a2, @"SampleBufferProcessor_InheritOutputColorSpaceFromInput"))
  {
    if (a3)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        *(v11 + 34) = CFBooleanGetValue(a3);
        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v8 = v3;
    v9 = 4294954516;
    v10 = 280;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"SampleBufferProcessor_InheritOutputCleanApertureFromInput"))
  {
    if (a3)
    {
      v14 = CFGetTypeID(a3);
      if (v14 == CFBooleanGetTypeID())
      {
        *(v11 + 36) = CFBooleanGetValue(a3);
        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v8 = v3;
    v9 = 4294954516;
    v10 = 288;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"SampleBufferProcessorProperty_ForceSyncSampleIntervalForSegmentation"))
  {
    memset(&v19, 0, sizeof(v19));
    CMTimeMakeFromDictionary(&v19, a3);
    if ((v19.flags & 0x1D) == 1 && (time1 = **&MEMORY[0x1E6960CC0], v17 = v19, CMTimeCompare(&time1, &v17) < 0))
    {
      result = *&v19.value;
      *(v11 + 72) = v19;
    }

    else
    {
      v15 = fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954516, "<<< sbp_vtcs >>>", 298, v3);
    }
  }

  else if (CFEqual(a2, @"SampleBufferProcessorProperty_InitialSegmentStartTime"))
  {
    memset(&v19, 0, sizeof(v19));
    CMTimeMakeFromDictionary(&v19, a3);
    if ((v19.flags & 0x1D) == 1)
    {
      result = *&v19.value;
      *(v11 + 48) = v19;
    }

    else
    {
      v16 = fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 4294954516, "<<< sbp_vtcs >>>", 308, v3);
    }
  }

  return result;
}

void sbp_vtcs_releaseCMBlockBuffer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL sbp_CVBufferAttachmentEmpty(__CVBuffer *a1, const __CFString *a2)
{
  v2 = CVBufferCopyAttachment(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == 0;
}

CMTime *sbp_vtcs_calculateNextCumulatedForceSyncSampleInterval@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v9, 0, sizeof(v9));
  lhs = *a2;
  v7 = *(a1 + 48);
  CMTimeSubtract(&v9, &lhs, &v7);
  lhs = **&MEMORY[0x1E6960CC0];
  v7 = v9;
  if (CMTimeCompare(&lhs, &v7) < 0)
  {
    lhs = v9;
    v7 = *(a1 + 72);
    v5 = CMTimeDivide() + 1;
  }

  else
  {
    v5 = 1;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  lhs = *(a1 + 72);
  return CMTimeMultiply(a3, &lhs, v5);
}

CMTime *OUTLINED_FUNCTION_4_83@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19)
{
  a17 = a1;
  a18 = v19;
  a19 = v21;

  return sbp_vtcs_calculateNextCumulatedForceSyncSampleInterval(v20, &a16, v22 - 144);
}

__n128 OUTLINED_FUNCTION_6_67()
{
  result = *(v1 - 144);
  v0[6] = result;
  v0[7].n128_u64[0] = *(v1 - 128);
  return result;
}

void *frr_figRTCReportingInitOnce()
{
  result = dlopen("/System/Library/PrivateFrameworks/RTCReporting.framework/RTCReporting", 1);
  if (result)
  {
    v1 = result;
    qword_1ED4CAD28 = CFArrayCreate(*MEMORY[0x1E695E480], frr_figRTCReportingInitOnce_frameworkList, 6, 0);
    sRTCReportingAPI_InitWithSessionInfo = dlsym(v1, "RTCReportingInitWithSessionInfo");
    qword_1ED4CAD20 = dlsym(v1, "RTCReportingInitWithSessionInfoDict");
    off_1ED4CAD38 = dlsym(v1, "RTCReportingStartConfiguration");
    off_1ED4CAD48 = dlsym(v1, "RTCReportingFetchStatesWithUserInfo");
    off_1ED4CAD30 = dlsym(v1, "RTCReportingSetMessageBlock");
    off_1ED4CAD58 = dlsym(v1, "RTCReportingSendMessageWithError");
    off_1ED4CADE0 = dlsym(v1, "RTCReportingSendMessageWithDictionary");
    qword_1ED4CAD60 = dlsym(v1, "RTCReportingUploadLogWithArray");
    off_1ED4CAD40 = dlsym(v1, "RTC_relaxSessions");
    off_1ED4CAD50 = dlsym(v1, "RTCReportingSendOneMessageWithDictionary");
    v2 = dlsym(v1, "kRTCReportingSessionInfoClientType");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    qword_1ED4CAD68 = v3;
    v4 = dlsym(v1, "kRTCReportingSessionInfoClientVersion");
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    qword_1ED4CAD70 = v5;
    v6 = dlsym(v1, "kRTCReportingSessionInfoSessionID");
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    qword_1ED4CAD78 = v7;
    v8 = dlsym(v1, "kRTCReportingSessionInfoBatchEvent");
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    qword_1ED4CAD80 = v9;
    v10 = dlsym(v1, "kRTCReportingSessionInfoContainsRealtimeEvents");
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    qword_1ED4CADA0 = v11;
    v12 = dlsym(v1, "kRTCReportingSessionInfoRequireUserInfo");
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    qword_1ED4CAD88 = v13;
    v14 = dlsym(v1, "kRTCReportingSessionInfoHierarchyToken");
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    qword_1ED4CAD90 = v15;
    v16 = dlsym(v1, "kRTCReportingSessionInfoClientBundleID");
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    qword_1ED4CAD98 = v17;
    v18 = dlsym(v1, "kRTCReportingUserInfoClientName");
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    qword_1ED4CADA8 = v19;
    v20 = dlsym(v1, "kRTCReportingUserInfoServiceName");
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    qword_1ED4CADB0 = v21;
    v22 = dlsym(v1, "kRTCReportingMessageParametersCategory");
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }

    qword_1ED4CADB8 = v23;
    v24 = dlsym(v1, "kRTCReportingMessageParametersFlag");
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    qword_1ED4CADC0 = v25;
    v26 = dlsym(v1, "kRTCReportingMessageParametersPayload");
    if (v26)
    {
      v27 = *v26;
    }

    else
    {
      v27 = 0;
    }

    qword_1ED4CADD0 = v27;
    v28 = dlsym(v1, "kRTCReportingMessageParametersType");
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    qword_1ED4CADC8 = v29;
    result = dlsym(v1, "kRTCReportingSessionInfoSamplingUUIID");
    if (result)
    {
      v30 = *result;
    }

    else
    {
      v30 = 0;
    }

    v31 = 0;
    qword_1ED4CADD8 = v30;
    if (qword_1ED4CAD78 && sRTCReportingAPI_InitWithSessionInfo && qword_1ED4CAD20 && off_1ED4CAD38 && off_1ED4CAD48 && off_1ED4CAD30 && off_1ED4CAD58 && off_1ED4CADE0 && qword_1ED4CAD60 && off_1ED4CAD50 && qword_1ED4CAD98 && qword_1ED4CAD68 && qword_1ED4CAD70 && qword_1ED4CAD80 && qword_1ED4CAD88 && qword_1ED4CAD90 && qword_1ED4CADA0 && qword_1ED4CADB0 && qword_1ED4CADA8 && qword_1ED4CADB8 && qword_1ED4CADC0)
    {
      if (qword_1ED4CADD0)
      {
        v31 = qword_1ED4CADC8 != 0;
      }
    }

    _MergedGlobals_73 = v31;
  }

  return result;
}

double __FigRTCReportingCreate_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (FigIsItOKToLogURLs())
  {
    if (*(a1 + 32))
    {
      v4 = dword_1EAF173E8 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

double frr_logRTCReportingSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, CFDictionaryRef theDict, int a7)
{
  v12 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"PlayerType");
    CFDictionaryGetValue(theDict, @"PumpName");
  }

  IsItOKToLogURLs = FigIsItOKToLogURLs();
  if (a7 && IsItOKToLogURLs)
  {
    if (dword_1EAF173E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_117()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t FigImageQueueDisplayCountHistory_GetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigImageQueueDisplayCountHistoryTypeOnce != -1)
  {
    FigImageQueueDisplayCountHistory_GetTypeID_cold_1();
  }

  return sFigImageQueueDisplayCountHistoryID;
}

uint64_t FigImageQueueDisplayCountHistory_RegisterClassOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigImageQueueDisplayCountHistoryID = result;
  return result;
}

uint64_t FigImageQueueDisplayCountHistory_Create(uint64_t *a1, uint64_t a2)
{
  if (sRegisterFigImageQueueDisplayCountHistoryTypeOnce != -1)
  {
    FigImageQueueDisplayCountHistory_GetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a1 = v4;
  }

  else
  {
    FigImageQueueDisplayCountHistory_Create_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t FigImageQueueDisplayCountHistory_initCadencePathMutexOnce(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  qword_1ED4CADF0 = result;
  return result;
}

uint64_t FigImageQueueDisplayCountHistory_TraceFlush(uint64_t result)
{
  if (*(result + 24))
  {
    ++*(result + 36);
  }

  return result;
}

uint64_t FigImageQueueDisplayCountHistory_TraceDisplayCountUsingHostTime(uint64_t result, CMTime *a2, int a3, int a4, uint64_t a5, double a6, double a7)
{
  if (*(result + 24))
  {
    v13 = result;
    for (i = 0; i != 1920; i += 64)
    {
      v15 = v13 + i;
      time1 = *(v13 + i + 40);
      v22 = *a2;
      result = CMTimeCompare(&time1, &v22);
      if (!result)
      {
        v18 = *(v13 + 36);
        epoch = a2->epoch;
        *(v15 + 40) = *&a2->value;
        *(v15 + 56) = epoch;
        *(v15 + 64) = a7;
        *(v15 + 72) = a5;
        *(v15 + 80) = a6;
        *(v15 + 92) = v18;
        *(v15 + 96) = a4;
        *(v15 + 88) = a3;
        return result;
      }
    }

    if (*(v13 + 1960) == 30)
    {
      result = FigImageQueueDisplayCountHistory_WriteAndRemoveOldestDisplayCountTraceEntry(v13);
    }

    v16 = (v13 + 96);
    v17 = 30;
    while ((*(v16 - 11) & 1) != 0)
    {
      v16 += 16;
      if (!--v17)
      {
        return result;
      }
    }

    v20 = *(v13 + 36);
    v21 = *&a2->value;
    *(v16 - 5) = a2->epoch;
    *(v16 - 14) = v21;
    *(v16 - 4) = a7;
    *(v16 - 3) = a5;
    *(v16 - 2) = a6;
    *(v16 - 1) = v20;
    *v16 = a4;
    *(v16 - 2) = a3;
    ++*(v13 + 1960);
  }

  return result;
}

uint64_t FigImageQueueDisplayCountHistory_WriteAndRemoveOldestDisplayCountTraceEntry(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v42 = *MEMORY[0x1E69E9840];
  v3 = result + 40;
  v4 = -1;
  v5 = 52;
  v6 = -1;
  do
  {
    if ((*(v1 + v5) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (v4 == -1)
    {
      v6 = -1;
      goto LABEL_7;
    }

    result = FigImageQueueDisplayCountHistory_EntryIsOlderThanEntry(v1, v2, v4);
    if (result)
    {
      v6 = v4;
LABEL_7:
      v4 = v2;
      goto LABEL_8;
    }

    if (v6 == -1 || (result = FigImageQueueDisplayCountHistory_EntryIsOlderThanEntry(v1, v2, v6), result))
    {
      v6 = v2;
    }

LABEL_8:
    ++v2;
    v5 += 64;
  }

  while (v2 != 30);
  if ((v4 & 0x80000000) != 0)
  {
    *(v1 + 1960) = 0;
  }

  else
  {
    v7 = v3 + (v4 << 6);
    if ((v6 & 0x80000000) == 0)
    {
      v8 = v3 + (v6 << 6);
      if (*(v7 + 52) == *(v8 + 52))
      {
        v9 = *(v8 + 40);
        if (*(v7 + 40) == v9 && v9 != 0.0)
        {
          v10 = FigHostTimeToNanoseconds() * 0.000000001 / *(v7 + 40);
          v11 = (v10 + 0.5);
          if (vabds_f32(v11, v10) <= 0.1)
          {
            *(v7 + 48) = v11;
          }
        }
      }
    }

    v12 = *(v7 + 52);
    v13 = *(v7 + 48);
    v14 = *v7;
    v15 = *(v7 + 8);
    v40 = *(v7 + 12);
    v41 = *(v7 + 20);
    v16 = v1 + 1976;
    if (*(v1 + 1964) != v12 && *(v1 + 32) != 8)
    {
      fwrite("\n[FLUSHED]", 0xAuLL, 1uLL, *(v1 + 24));
    }

    v17 = *(v1 + 2232);
    v18 = *(v1 + 2236);
    if (v18 + v17 <= 0)
    {
      v19 = --(v18 + v17);
    }

    else
    {
      v19 = (v18 + v17);
    }

    *(v16 + v19) = v13;
    v20 = v18 + 1;
    *(v1 + 2236) = v18 + 1;
    if (v18 >= 256)
    {
      v20 = 256;
      *(v1 + 2236) = 256;
      if (v17 == 255)
      {
        v17 = 0;
      }

      else
      {
        ++v17;
      }

      *(v1 + 2232) = v17;
    }

    v21 = *(v1 + 2240);
    if (v21 < v20)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = v20;
    }

    *(v1 + 2240) = v22;
    v23 = *(v1 + 32);
    if (v23 == 8)
    {
      time.value = v14;
      time.timescale = v15;
      *&time.flags = v40;
      HIDWORD(time.epoch) = v41;
      CMTimeGetSeconds(&time);
      fprintf(*(v1 + 24), "\n%13.6f, %13.6f, %d,");
    }

    else if (v23 == 5)
    {
      time.value = v14;
      time.timescale = v15;
      *&time.flags = v40;
      HIDWORD(time.epoch) = v41;
      CMTimeGetSeconds(&time);
      fprintf(*(v1 + 24), "\n%13.6f, %13.6f, %+9.6f,");
    }

    else
    {
      v24 = v14 / v15;
      if (v23 == 1)
      {
        v25 = *(v1 + 1968);
        if (v25 != v24)
        {
          if (v18 >= 255)
          {
            v18 = 255;
          }

          v26 = v17 + v18 - v22;
          v27 = v26 + 1;
          v28 = 1;
          while (1)
          {
            if (v22 >= 2 * v28 && v28 + v22 <= v20)
            {
              if (v22 < 1)
              {
                v35 = 0;
              }

              else
              {
                v29 = 0;
                v30 = v26;
                v31 = v27;
                while (1)
                {
                  v32 = v30 <= 0 ? --v30 : v30;
                  v33 = *(v16 + v32);
                  v34 = v31 <= 0 ? --v31 : v31;
                  if (v33 != *(v16 + v34))
                  {
                    break;
                  }

                  --v29;
                  ++v31;
                  ++v30;
                  if (!(v22 + v29))
                  {
                    goto LABEL_63;
                  }
                }

                v35 = -v29;
              }

              if (v35 == v22)
              {
                break;
              }
            }

            ++v28;
            --v26;
            if (v28 == 6)
            {
              goto LABEL_64;
            }
          }

LABEL_63:
          fprintf(*(v1 + 24), " (repeating, period %d)", v28);
          v25 = *(v1 + 1968);
LABEL_64:
          *(v1 + 2240) = 0;
          if (v25 != v24)
          {
            goto LABEL_66;
          }
        }

        if (*(v1 + 1964) != v12)
        {
LABEL_66:
          if (*(v1 + 1972) >= 1)
          {
            fprintf(*(v1 + 24), " [total %d]", *(v1 + 1972));
          }

          *(v1 + 1972) = 0;
          fprintf(*(v1 + 24), "\n[%02d:%02d:%02d]", v24 / 3600, v24 / 60 % 60, v24 % 60);
        }

        *(v1 + 1968) = v24;
        *(v1 + 1972) += v13;
      }

      else
      {
        v36 = *(v1 + 24);
        v38.value = v14;
        v38.timescale = v15;
        *&v38.flags = v40;
        HIDWORD(v38.epoch) = v41;
        CMTimeConvertScale(&time, &v38, 1000, kCMTimeRoundingMethod_RoundTowardZero);
        fprintf(v36, "\n[%02d:%02d:%02d.%03d]");
      }
    }

    *(v1 + 1964) = v12;
    result = fprintf(*(v1 + 24), " %d", v13);
    v37 = MEMORY[0x1E6960C70];
    *v7 = *MEMORY[0x1E6960C70];
    *(v7 + 16) = *(v37 + 16);
    --*(v1 + 1960);
  }

  return result;
}

void FigImageQueueDisplayCountHistory_CancelTracingDisplayCount(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    fwrite("\n\n# ABANDONING -- this image queue is for scrubbing only.\n", 0x3AuLL, 1uLL, v1);
    fclose(*(a1 + 24));
    *(a1 + 24) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    unlink(*(a1 + 16));
    free(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

void FigImageQueueDisplayCountHistory_FinishTracingDisplayCount(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (*(a1 + 1960))
    {
      do
      {
        FigImageQueueDisplayCountHistory_WriteAndRemoveOldestDisplayCountTraceEntry(a1);
      }

      while (*(a1 + 1960));
      v1 = *(a1 + 24);
    }

    fputc(10, v1);
    if (*(a1 + 32) != 8)
    {
      fwrite("\n# END\n", 7uLL, 1uLL, *(a1 + 24));
    }

    fclose(*(a1 + 24));
    *(a1 + 24) = 0;
    free(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

void FigImageQueueDisplayCountHistory_Finalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    FigImageQueueDisplayCountHistory_FinishTracingDisplayCount(a1);
  }
}

__CFString *FigImageQueueDisplayCountHistory_CopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = a1[2];
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigImageQueueDisplayCountHistory %p %s> RC %d", a1, v3, v4);
  return Mutable;
}

BOOL FigImageQueueDisplayCountHistory_EntryIsOlderThanEntry(uint64_t a1, int a2, int a3)
{
  v5 = a1 + 40 + (a3 << 6);
  v6 = *(v5 + 52);
  v7 = a1 + 40 + (a2 << 6);
  v8 = *(v7 + 52);
  if (v6 > v8)
  {
    return 1;
  }

  if (v6 != v8)
  {
    return 0;
  }

  v12 = v3;
  v13 = v4;
  time1 = *v5;
  v10 = *v7;
  return CMTimeCompare(&time1, &v10) > 0;
}

uint64_t OUTLINED_FUNCTION_2_103(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

char *figcss_BuildCSSTokenInfo()
{
  result = malloc_type_calloc(0x21uLL, 0x18uLL, 0x106004067290D6BuLL);
  v1 = 0;
  v2 = result + 16;
  do
  {
    *(v2 - 2) = v1;
    *(v2 - 2) = dword_196E77D70[v1];
    *v2 = off_1E748CAE8[v1];
    v2 += 24;
    ++v1;
  }

  while (v1 != 33);
  qword_1EAF19898 = result;
  _MergedGlobals_97 = 1;
  return result;
}

void figcss_BuildCSSTokenNameMappingDictionaries()
{
  MEMORY[0x19A8D3660](&_MergedGlobals_6, figcss_BuildCSSTokenInfo);
  v0 = _MergedGlobals_97;
  if (_MergedGlobals_97)
  {
    v1 = 33;
  }

  else
  {
    v1 = 0;
  }

  v2 = qword_1EAF19898;
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  qword_1EAF198A0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1EAF198A8 = CFDictionaryCreateMutable(v3, 0, v4, v5);
  valuePtr = 0;
  if (v0 == 1)
  {
    do
    {
      v6 = CFNumberCreate(v3, kCFNumberCFIndexType, &valuePtr);
      CFDictionarySetValue(qword_1EAF198A0, v6, *(v2 + 24 * valuePtr + 16));
      CFDictionarySetValue(qword_1EAF198A8, *(v2 + 24 * valuePtr + 16), v6);
      if (v6)
      {
        CFRelease(v6);
      }

      ++valuePtr;
    }

    while (valuePtr < v1);
  }
}

void OUTLINED_FUNCTION_0_119()
{

  JUMPOUT(0x19A8D3660);
}

void FigRenderPipelineCreateForWritingTrack(uint64_t a1, const void *a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, CFTypeRef *a8)
{
  cf = 0;
  if (a8)
  {
    if (a2)
    {
      FigRenderPipelineGetClassID();
      if (CMDerivedObjectCreate() || (DerivedStorage = CMBaseObjectGetDerivedStorage(), CFRetain(a2), *(DerivedStorage + 8) = a2, *(DerivedStorage + 16) = a3, v23 = *a4, v24 = *(a4 + 2), v21 = *a6, v22 = *(a6 + 2), FigSampleBufferConsumerCreateForFormatWriter(a2, a3, &v23, a5, &v21, a7, (DerivedStorage + 24)), v17))
      {
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        *a8 = cf;
      }

      return;
    }

    emitter = fig_log_get_emitter();
    v19 = v8;
    v20 = 235;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v19 = v8;
    v20 = 233;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< RP-FW >>>>", v20, v19);
}

uint64_t figRenderPipelineForFormatWriterInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      v3 = *(DerivedStorage + 24);
      if (v3)
      {
        CFRelease(v3);
        *(v2 + 24) = 0;
      }

      v4 = *(v2 + 8);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 8) = 0;
      }
    }
  }

  return 0;
}

__CFString *figRenderPipelineForFormatWriterCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigRenderPipelineForFormatWriter %p: ", a1);
  CFStringAppendFormat(Mutable, 0, @"formatWriter %@, trackID %d, sampleBufferConsumer %@", *(DerivedStorage + 8), *(DerivedStorage + 16), *(DerivedStorage + 24));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void figRenderPipelineForFormatWriterCopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && (v8 = DerivedStorage, !*DerivedStorage))
  {
    if (CFEqual(@"SourceSampleBufferQueue", a2))
    {
      v10 = *(v8 + 1);
      v11 = *(v8 + 4);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v12)
      {
        v13 = *MEMORY[0x1E695E480];

        v12(v10, v11, @"SourceSampleBufferQueue", v13, a4);
      }
    }

    else if (CFEqual(@"SourceSampleBufferConsumer", a2))
    {
      v14 = *(v8 + 3);
      *a4 = v14;
      if (v14)
      {
        CFRetain(v14);
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< RP-FW >>>>", 130, v4);
  }
}

void figRenderPipelineForFormatWriterSetProperty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || *DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< RP-FW >>>>", 113, v1);
  }
}

uint64_t FigCaptionRendererIntervalSetValue(uint64_t a1, const void *a2)
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

__CFString *FigCaptionRendererIntervalCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererInterval: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererInterval_FigCaptionRendererIntervalProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererInterval <FigCaptionRendererIntervalProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererInterval_FigCaptionRendererIntervalProtocol_SetRange(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[1] = a3;
  return 0;
}

uint64_t RegisterFigCaptionRendererIntervalBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void FigCaptionRendererParentIntervalFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *FigCaptionRendererParentIntervalCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererParentInterval: <%p>", DerivedStorage);
  return Mutable;
}

__CFString *FigCaptionRendererParentInterval_FigCaptionRendererIntervalProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererParentInterval <FigCaptionRendererIntervalProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererIntervalProtocol_GetRange(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v5 = *(ProtocolVTable + 16);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v6(v3, a2);
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererIntervalProtocol_SetRange(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v7 = *(ProtocolVTable + 16);
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v8(v5, a2, a3);
      }
    }
  }

  return 0;
}

__CFString *FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererParentInterval <FigCaptionRendererParentIntervalProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_AddChildInterval(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBytePumpGetFigBaseObject();
  v19 = v4;
  v20 = v5;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v7 = *(ProtocolVTable + 16)) != 0 && (v8 = *(v7 + 8)) != 0 && !v8(a2, &v19))
  {
    v9 = *(DerivedStorage + 24);
    v10 = (v19 / v9);
    v11 = ((v19 + v20) / v9);
    if (v10 <= v11)
    {
      v12 = *MEMORY[0x1E695E480];
      v13 = v11 + 1;
      v14 = MEMORY[0x1E695E9C0];
      do
      {
        v15 = CFStringCreateWithFormat(v12, 0, @"%ld", v10);
        Value = CFDictionaryGetValue(*(DerivedStorage + 16), v15);
        if (!Value)
        {
          Mutable = CFArrayCreateMutable(v12, 0, v14);
          if (!Mutable)
          {
            FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_AddChildInterval_cold_1(v15);
            return 0;
          }

          Value = Mutable;
          CFDictionarySetValue(*(DerivedStorage + 16), v15, Mutable);
          CFRelease(Value);
        }

        CFArrayAppendValue(Value, a2);
        if (v15)
        {
          CFRelease(v15);
        }

        ++v10;
      }

      while (v13 != v10);
    }
  }

  else
  {
    FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_AddChildInterval_cold_2();
  }

  return 0;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_RemoveChildInterval(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBytePumpGetFigBaseObject();
  v19 = v4;
  v20 = v5;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v7 = *(ProtocolVTable + 16)) != 0 && (v8 = *(v7 + 8)) != 0 && !v8(a2, &v19))
  {
    v9 = *(DerivedStorage + 24);
    v10 = (v19 / v9);
    v11 = ((v19 + v20) / v9);
    if (v10 <= v11)
    {
      v12 = *MEMORY[0x1E695E480];
      v13 = v11 + 1;
      while (1)
      {
        v14 = CFStringCreateWithFormat(v12, 0, @"%ld", v10);
        Value = CFDictionaryGetValue(*(DerivedStorage + 16), v14);
        if (Value)
        {
          v16 = Value;
          v21.length = CFArrayGetCount(Value);
          v21.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v16, v21, a2);
          if ((FirstIndexOfValue & 0x8000000000000000) == 0)
          {
            CFArrayRemoveValueAtIndex(v16, FirstIndexOfValue);
          }

          if (!CFArrayGetCount(v16))
          {
            break;
          }
        }

        if (v14)
        {
          goto LABEL_12;
        }

LABEL_13:
        if (v13 == ++v10)
        {
          return 0;
        }
      }

      CFDictionaryRemoveValue(*(DerivedStorage + 16), v14);
      if (!v14)
      {
        goto LABEL_13;
      }

LABEL_12:
      CFRelease(v14);
      goto LABEL_13;
    }
  }

  else
  {
    FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_RemoveChildInterval_cold_1();
  }

  return 0;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_RemoveAllChildIntervals(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryRemoveAllValues(*(DerivedStorage + 16));
  return 0;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_GetChildIntervalsAt(uint64_t a1, __CFArray **a2, double a3, double a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a4 >= 0.0)
  {
    v11 = copySubIntervalsAt(a1, a3);
    if (v11)
    {
      v12 = v11;
      v31.length = CFArrayGetCount(v11);
      v31.location = 0;
      CFArrayAppendArray(Mutable, v12, v31);
      CFRelease(v12);
    }

    v13 = copySubIntervalsAt(a1, a3 + a4);
    if (v13)
    {
      v14 = v13;
      v32.length = CFArrayGetCount(v13);
      v32.location = 0;
      CFArrayAppendArray(Mutable, v14, v32);
      CFRelease(v14);
    }

    Count = CFDictionaryGetCount(*(DerivedStorage + 16));
    v16 = *(DerivedStorage + 24);
    v17 = (a3 / v16);
    v18 = (a3 + a4) / v16;
    v19 = v18;
    if (v18 - v17 + 1 >= Count)
    {
      context[1] = v18;
      context[2] = Mutable;
      context[0] = v17;
      *&context[3] = a3;
      *&context[4] = a4;
      CFDictionaryApplyFunction(*(DerivedStorage + 16), fcri_getIntervalsByRange, context);
    }

    else if (v19 - 1 > v17)
    {
      v20 = v17 + 1;
      do
      {
        v21 = CFStringCreateWithFormat(v9, 0, @"%ld", v20);
        Value = CFDictionaryGetValue(*(DerivedStorage + 16), v21);
        if (Value)
        {
          v23 = Value;
          v33.length = CFArrayGetCount(Value);
          v33.location = 0;
          CFArrayAppendArray(Mutable, v23, v33);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        ++v20;
      }

      while (v19 != v20);
    }

    do
    {
      if (CFArrayGetCount(Mutable) < 1)
      {
        break;
      }

      v24 = 0;
      v25 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v24);
        v30.length = CFArrayGetCount(Mutable);
        v30.location = 0;
        LastIndexOfValue = CFArrayGetLastIndexOfValue(Mutable, v30, ValueAtIndex);
        if (LastIndexOfValue > v24)
        {
          CFArrayRemoveValueAtIndex(Mutable, LastIndexOfValue);
          v25 = 1;
        }

        ++v24;
      }

      while (CFArrayGetCount(Mutable) > v24);
    }

    while (v25);
  }

  *a2 = Mutable;
  return 0;
}

CFMutableArrayRef copySubIntervalsAt(uint64_t a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = CFStringCreateWithFormat(v4, 0, @"%ld", (a2 / *(DerivedStorage + 24)));
  Value = CFDictionaryGetValue(*(DerivedStorage + 16), v6);
  if (Value)
  {
    v8 = Value;
    *context = a2;
    context[1] = Mutable;
    v11.length = CFArrayGetCount(Value);
    v11.location = 0;
    CFArrayApplyFunction(v8, v11, findAndSaveCoveringIntervalsApplier, context);
  }

  else if (Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

void fcri_getIntervalsByRange(const __CFString *a1, const __CFArray *a2, uint64_t a3)
{
  IntValue = CFStringGetIntValue(a1);
  if (*a3 <= IntValue && a2 && *(a3 + 8) >= IntValue)
  {
    v6 = *(a3 + 24);
    v7 = *(a3 + 16);
    v8.length = CFArrayGetCount(a2);
    v8.location = 0;
    CFArrayApplyFunction(a2, v8, findAndSaveOverlappingIntervalsApplier, &v6);
  }
}

void findAndSaveCoveringIntervalsApplier(const void *a1, uint64_t a2)
{
  FigBytePumpGetFigBaseObject();
  v9 = v4;
  v10 = v5;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v7 = *(ProtocolVTable + 16)) != 0 && (v8 = *(v7 + 8)) != 0 && !v8(a1, &v9))
  {
    if (v9 <= *a2 && *a2 <= v9 + v10)
    {
      CFArrayAppendValue(*(a2 + 8), a1);
    }
  }

  else
  {
    findAndSaveCoveringIntervalsApplier_cold_1();
  }
}

void findAndSaveOverlappingIntervalsApplier(const void *a1, uint64_t a2)
{
  FigBytePumpGetFigBaseObject();
  v16 = v4;
  v17 = v5;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v7 = *(ProtocolVTable + 16)) != 0 && (v8 = *(v7 + 8)) != 0 && !v8(a1, &v16))
  {
    v9 = v16 + v17;
    v10 = *a2;
    if (v16 <= *a2 && v10 <= v9)
    {
      goto LABEL_7;
    }

    v11 = v10 > v9;
    v12 = v10 + *(a2 + 8);
    v13 = v10 > v16;
    v14 = v16 > v12;
    if (v16 > v12)
    {
      v13 = 1;
    }

    if (v12 > v9)
    {
      v14 = 1;
    }

    if (v9 > v12)
    {
      v11 = 1;
    }

    v15 = !v14 || !v13;
    if (v15 || !v11)
    {
LABEL_7:
      CFArrayAppendValue(*(a2 + 16), a1);
    }
  }

  else
  {
    findAndSaveOverlappingIntervalsApplier_cold_1();
  }
}

uint64_t RegisterFigCaptionRendererParentIntervalBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

double OUTLINED_FUNCTION_4_85()
{
  result = 0.0;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_51()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_8_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return FigAtomStreamInitWithByteStream();
}

uint64_t FigTTMLDocumentWriterCreateDivBuilder(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateDivBuilder_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateDivBuilder_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    DerivedStorage[1] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterDivBuilder_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t figTTMLDocumentWriterDivBuilder_SetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementSetAttribute(*(DerivedStorage + 24), a2, a3);
  return 0;
}

uint64_t figTTMLDocumentWriterDivBuilder_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[3])
  {
    return 4294950721;
  }

  v2 = *DerivedStorage;

  return FigTTMLDocumentWriterFlush(v2);
}

uint64_t synthesizeDivAttributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19A8D3660](&initPropertyToAttributeMapOnce, initPropertyToAttributeMap);
  result = FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements(a2, a1, sPropertyToAttributeMap);
  if (result)
  {
    *(a3 + 8) = result;
  }

  return result;
}

void initPropertyToAttributeMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69612E8], FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961330], FigTTMLDocumentWriterMapPropertyToAttribute_Hidden);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961370], FigTTMLDocumentWriterMapPropertyToAttribute_Invisible);
  sPropertyToAttributeMap = Mutable;
}

uint64_t removeUnnecessaryChildDivElements(uint64_t a1)
{
  do
  {
    ChildrenCount = FigTTMLDocumentWriterElementGetChildrenCount(a1);
    if (ChildrenCount < 1)
    {
      break;
    }

    v3 = ChildrenCount;
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      ChildAtIndex = FigTTMLDocumentWriterElementGetChildAtIndex(a1, i);
      if (ChildAtIndex)
      {
        v7 = ChildAtIndex;
        v8 = CFGetTypeID(ChildAtIndex);
        if (v8 == FigTTMLDocumentWriterElementGetTypeID() && FigTTMLDocumentWriterElementGetElementType(v7) == 3 && !FigTTMLDocumentWriterElementGetAttributeCount(v7))
        {
          v9 = FigTTMLDocumentWriterElementGetChildrenCount(v7);
          if (v9 < 1)
          {
LABEL_13:
            v15 = FigTTMLDocumentWriterElementGetChildrenCount(v7);
            if (v15 >= 1)
            {
              v16 = v15;
              for (j = 0; j != v16; ++j)
              {
                v18 = FigTTMLDocumentWriterElementGetChildAtIndex(v7, j);
                FigTTMLDocumentWriterElementInsertChildNodeBeforeNode(a1, v18, v7);
              }
            }

            FigTTMLDocumentWriterElementRemoveChildNode(a1, v7);
            v4 = 1;
          }

          else
          {
            v10 = v9;
            v11 = 0;
            while (1)
            {
              v12 = FigTTMLDocumentWriterElementGetChildAtIndex(v7, v11);
              if (!v12)
              {
                break;
              }

              v13 = v12;
              v14 = CFGetTypeID(v12);
              if (v14 != FigTTMLDocumentWriterElementGetTypeID() || FigTTMLDocumentWriterElementGetElementType(v13) != 3)
              {
                break;
              }

              if (v10 == ++v11)
              {
                goto LABEL_13;
              }
            }
          }
        }
      }
    }
  }

  while (v4);
  return 0;
}

uint64_t RegisterFigRemakerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigRemakerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigRemakerGetClassID_sRegisterFigRemakerTypeOnce, RegisterFigRemakerType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigAssetReaderType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetReaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetReaderGetClassID_sRegisterFigAssetReaderTypeOnce, RegisterFigAssetReaderType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigAssetWriterType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetWriterGetClassID_sRegisterFigAssetWriterTypeOnce, RegisterFigAssetWriterType);

  return CMBaseClassGetCFTypeID();
}

void figTTMLLayout_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 136) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLLayout_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"layout: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLLayout_CopyChildNodeArray(const void *a1, CFArrayRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = CFGetAllocator(a1);
    Copy = CFArrayCreateCopy(v6, *(v5 + 136));
    result = 0;
    *a2 = Copy;
  }

  else
  {
    figTTMLLayout_CopyChildNodeArray_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t figTTMLLayout_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 9;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLLayout_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigMediaRequestSchedulerAddResourceToReadQueue(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  Mutable = *(a1 + 128);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 128) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, a2);
    v6 = 0;
  }

  else
  {
    FigMediaRequestSchedulerAddResourceToReadQueue_cold_1(&v8);
    v6 = v8;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigMediaRequestSchedulerCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, int a6, const void *a7, const void *a8, CFTypeRef a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, NSObject *a14, uint64_t *a15)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a15)
  {
    context = xmmword_1E748D100;
    if (mrs_getTypeID_once != -1)
    {
      dispatch_once_f(&mrs_getTypeID_once, &context, mrstUtil_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v19 = Instance;
      if (a2)
      {
        v20 = CFRetain(a2);
      }

      else
      {
        v20 = 0;
      }

      *(v19 + 24) = v20;
      if (a3)
      {
        v21 = CFRetain(a3);
      }

      else
      {
        v21 = 0;
      }

      *(v19 + 32) = v21;
      if (a4)
      {
        v22 = CFRetain(a4);
      }

      else
      {
        v22 = 0;
      }

      *(v19 + 40) = v22;
      v23 = a5;
      if (a5)
      {
        v23 = CFRetain(a5);
      }

      *(v19 + 48) = v23;
      v24 = a7;
      if (a7)
      {
        v24 = CFRetain(a7);
      }

      *(v19 + 64) = v24;
      v25 = a8;
      if (a8)
      {
        v25 = CFRetain(a8);
      }

      *(v19 + 72) = v25;
      if (a9)
      {
        v26 = CFRetain(a9);
      }

      else
      {
        v26 = 0;
      }

      *(v19 + 80) = v26;
      *(v19 + 96) = a13;
      *(v19 + 104) = a14;
      *(v19 + 56) = a6;
      *(v19 + 112) = a10;
      *(v19 + 120) = a11;
      if (a14)
      {
        dispatch_retain(a14);
      }

      v27 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v19 + 88) = v27;
      if (v27)
      {
        v28 = FigReentrantMutexCreate();
        *(v19 + 16) = v28;
        if (v28)
        {
          result = 0;
          *a15 = v19;
          return result;
        }

        v30 = 393;
      }

      else
      {
        v30 = 390;
      }

      FigMediaRequestSchedulerCreate_cold_1(v30, v19, &context);
    }

    else
    {
      FigMediaRequestSchedulerCreate_cold_2(&context);
    }
  }

  else
  {
    FigMediaRequestSchedulerCreate_cold_3(&context);
  }

  return context;
}

void mrs_resourceLoadDidProduceDataOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = (a2 + 16);
  FigSimpleMutexLock();
  v16 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v16)
  {
    v17 = v16;
    FigSimpleMutexUnlock();
    v18 = CFGetTypeID(*(a2 + 160));
    TypeID = FigSessionDataSpecifierGetTypeID();
    if (!a8 && v18 == TypeID)
    {
      FigMediaRequestDeliverOnceWithCacheSaveDataToCache(a1, a6);
    }

    (**(a2 + 96))(a2, *(a2 + 160), v17, a3, a4, a5, a6, a7);
    FigSimpleMutexLock();
    if (a7)
    {
      mrs_readNextResource(a2, v20);
    }

    FigSimpleMutexUnlock();

    CFRelease(v17);
  }

  else
  {
    mrs_resourceLoadDidProduceDataOutput_cold_1(v15);
  }
}

void mrs_resourceLoadDidFail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a2 + 16);
  FigSimpleMutexLock();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    mrs_resourceLoadDidFail_cold_1(v6, a2, v7, a4);
  }

  else
  {
    mrs_resourceLoadDidFail_cold_2(v6);
  }
}

void mrs_issueDidFinishReadQueueCallbackOnCallbackQueue(void *a1)
{
  (*(a1[2] + 16))(*a1, a1[1]);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  MallocZoneForMedia = FigGetMallocZoneForMedia();

  malloc_zone_free(MallocZoneForMedia, a1);
}

void mrs_finalize(void *a1)
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

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
    a1[10] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    CFRelease(v9);
    a1[11] = 0;
  }

  v10 = a1[16];
  if (v10)
  {
    CFRelease(v10);
    a1[16] = 0;
  }

  v11 = a1[19];
  if (v11)
  {
    CFRelease(v11);
    a1[19] = 0;
  }

  v12 = a1[20];
  if (v12)
  {
    CFRelease(v12);
    a1[20] = 0;
  }

  FigSimpleMutexDestroy();
  v13 = a1[13];
  if (v13)
  {
    dispatch_release(v13);
    a1[13] = 0;
  }
}

uint64_t mrstUtil_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t __streamPlaylistParserRemote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  result = FigXPCRemoteClientCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __FigStreamPlaylistParserRemoteGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAE28 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_82(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return FigCFStringGetCStringPtrAndBufferToFree();
}

void OUTLINED_FUNCTION_4_86(uint64_t value)
{

  xpc_dictionary_set_uint64(v2, v1, value);
}

uint64_t FigXMLServiceStartServer(uint64_t a1, uint64_t a2)
{
  if (FigXMLServiceStartServer_sFigXMLServiceServerSetupOnce != -1)
  {
    FigXMLServiceStartServer_cold_1();
  }

  return FigXMLServiceStartServer_err;
}

uint64_t __FigXMLServiceStartServer_block_invoke()
{
  result = FigXPCServerStart();
  FigXMLServiceStartServer_err = result;
  return result;
}

CFStringRef CopyKeyStringForTrackReferenceOSType(const __CFAllocator *a1, int a2)
{
  if (a2 > 1919837297)
  {
    if (a2 > 1936945762)
    {
      if (a2 == 1936945763)
      {
        v4 = @"ssrc";

        return CFRetain(v4);
      }

      if (a2 == 1953325924)
      {
        v4 = @"tmcd";

        return CFRetain(v4);
      }
    }

    else
    {
      if (a2 == 1919837298)
      {
        v4 = @"rndr";

        return CFRetain(v4);
      }

      if (a2 == 1935832172)
      {
        v4 = @"sbtl";

        return CFRetain(v4);
      }
    }
  }

  else if (a2 > 1667785071)
  {
    if (a2 == 1667785072)
    {
      v4 = @"chap";

      return CFRetain(v4);
    }

    if (a2 == 1717660780)
    {
      v4 = @"fall";

      return CFRetain(v4);
    }
  }

  else
  {
    if (a2 == 1667523952)
    {
      v4 = @"cdep";

      return CFRetain(v4);
    }

    if (a2 == 1667527523)
    {
      v4 = @"cdsc";

      return CFRetain(v4);
    }
  }

  return CFStringCreateWithFormat(a1, 0, @"%c%c%c%c", HIBYTE(a2), BYTE2(a2), BYTE1(a2), a2, v2, v3);
}

uint64_t GetTrackReferenceOSTypeFromKeyString(const __CFString *cf2)
{
  if (CFEqual(@"chap", cf2))
  {
    return 1667785072;
  }

  if (CFEqual(@"sbtl", cf2))
  {
    return 1935832172;
  }

  if (CFEqual(@"tmcd", cf2))
  {
    return 1953325924;
  }

  if (CFEqual(@"ssrc", cf2))
  {
    return 1936945763;
  }

  if (CFEqual(@"fall", cf2))
  {
    return 1717660780;
  }

  v2 = 1667523952;
  if (CFEqual(@"cdsc", cf2))
  {
    return 1667527523;
  }

  if (CFEqual(@"rndr", cf2))
  {
    return 1919837298;
  }

  if (!CFEqual(@"cdep", cf2))
  {
    if (CFStringGetLength(cf2) == 4)
    {
      *buffer = 0;
      v7.location = 0;
      v7.length = 4;
      Bytes = CFStringGetBytes(cf2, v7, 0, 0, 0, buffer, 4, 0);
      v4 = bswap32(*buffer);
      if (Bytes)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t FigAudioProcessingUnitPackedCurveGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_76 != -1)
  {
    FigAudioProcessingUnitPackedCurveGetTypeID_cold_1();
  }

  return qword_1ED4CAE38;
}

BOOL fapupc_Equal(void *a1, void *a2)
{
  v2 = 40 * a1[2];
  if (v2 + 12 * (a1[4] + a1[3]) == 12 * (a2[4] + a2[3]) + 40 * a2[2] && (a1[2] == a2[2] ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3 ? (v4 = a1[4] == a2[4]) : (v4 = 0), v4))
  {
    return memcmp(a1 + 9, a2 + 9, v2 + 12 * (a1[4] + a1[3])) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t __FigAudioProcessingUnitPackedCurveGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAE38 = result;
  return result;
}

uint64_t FigAudioProcessingUnitPackedCurveIteratorGetSnapshot(uint64_t a1, void *a2, void *a3, void *a4)
{
  *a2 = *(*(a1 + 16) + 40);
  *a3 = *(a1 + 32);
  *a4 = *(*(a1 + 16) + 24);
  return 0;
}

uint64_t FigAudioProcessingUnitCurveIteratorGetTypeID(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CAE40 != -1)
  {
    FigAudioProcessingUnitCurveIteratorGetTypeID_cold_1();
  }

  return qword_1ED4CAE48;
}

void fapuci_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __FigAudioProcessingUnitCurveIteratorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAE48 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_109(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *time1, uint64_t a8, CMTime *time2, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 time1a, uint64_t time1_16, uint64_t a16, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, __int128 a20, uint64_t a21)
{
  time1a = a20;
  time1_16 = a21;

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_2_106(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return CMTimeMake(&a19, 1, 1000000000);
}

CMTime *OUTLINED_FUNCTION_3_83(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *rhs, CMTime *lhs, uint64_t a6, CMTime *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a18, uint64_t a19)
{

  return CMTimeSubtract(&a19, &lhsa, &rhsa);
}

CMTime *OUTLINED_FUNCTION_6_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *time, CMTime *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t timea, uint64_t time_8, uint64_t time_16, uint64_t a22)
{

  return CMTimeAbsoluteValue(&a22, &timea);
}

uint64_t OUTLINED_FUNCTION_7_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *time2, CMTime *time1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t time1a)
{

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t FigTTMLExtensionCreate(const __CFAllocator *a1, uint64_t a2, __int128 *a3, CFTypeRef *a4)
{
  v8 = FigTTMLGetLibXMLAccess();
  if (!v8)
  {
    FigTTMLExtensionCreate_cold_4(&v16);
LABEL_15:
    v11 = 0;
LABEL_17:
    v14 = v16;
    goto LABEL_20;
  }

  if (!a4)
  {
    FigTTMLExtensionCreate_cold_3(&v16);
    goto LABEL_15;
  }

  FigTTMLNodeGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3), v9) || (v9 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24)), v9))
  {
    v14 = v9;
    v11 = 0;
    goto LABEL_20;
  }

  v11 = (*(v8 + 104))(a2);
  v12 = CFStringCreateWithCString(a1, v11, 0x8000100u);
  if (!v12)
  {
    FigTTMLExtensionCreate_cold_1(&v16);
    goto LABEL_17;
  }

  v13 = v12;
  if (!CFStringGetLength(v12))
  {
    FigTTMLExtensionCreate_cold_1(&v16);
    v14 = v16;
    goto LABEL_19;
  }

  v14 = FigTTMLSkipNode(a2, a3, *(DerivedStorage + 128));
  if (v14)
  {
LABEL_19:
    CFRelease(v13);
LABEL_20:
    if (!v8)
    {
      return v14;
    }

    goto LABEL_10;
  }

  *(DerivedStorage + 144) = v13;
  *a4 = 0;
LABEL_10:
  (*(v8 + 112))(v11);
  return v14;
}

void figTTMLExtension_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 136) = 0;
  }

  v3 = *(DerivedStorage + 144);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLExtension_CopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"extension[%@] : %@(%@)", v2, *(DerivedStorage + 144), *(DerivedStorage + 136));
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t figTTMLExtension_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2)
{
  if (a2)
  {
    v3 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    result = 0;
    *a2 = Mutable;
  }

  else
  {
    figTTMLExtension_CopyChildNodeArray_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t figTTMLExtension_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 19;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLExtension_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

void FigRemakerRemoteCreateWithURLs(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 *a13, __int128 *a14, uint64_t a15, const __CFURL *a16, uint64_t a17, const __CFDictionary *a18, _DWORD *a19, _DWORD *a20, void *a21)
{
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  cf = 0;
  MEMORY[0x19A8D3660](&frr_OneTimeInitialization_sInitRemoteRemakerOnlyOnce, frr_OneTimeInitializationWork);
  if (!gRemakerRemoteClient)
  {
    v31 = 0;
LABEL_43:
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    if (v31)
    {
      CFRelease(v31);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return;
  }

  if (a2)
  {
    if (FigCFURLIsLocalResource())
    {
      if (a16)
      {
        if (remakerFamily_CFURLSchemeIsFile(a16))
        {
          if (a21)
          {
            if (a19)
            {
              *a19 = 0;
            }

            if (a20)
            {
              *a20 = 0;
            }

            if (FigXPCCreateBasicMessage() || FigXPCMessageSetCFURL() || FigXPCMessageSetCFString() || FigXPCMessageSetCFDictionary() || (xpc_dictionary_set_int64(v44, "Width", a5), xpc_dictionary_set_int64(v44, "Height", a6), FigXPCMessageSetCFDictionary()) || (xpc_dictionary_set_uint64(v44, "VideoCodecType", a8), FigXPCMessageSetCFDictionary()) || FigXPCMessageSetCFDictionary() || FigXPCMessageSetCFDictionary() || FigXPCMessageSetCFDictionary() || (v37 = *a13, *&v38 = *(a13 + 2), FigXPCMessageSetCMTime()) || (v26 = a14[1], v37 = *a14, v38 = v26, v39 = a14[2], FigXPCMessageSetCMTimeRange()) || FigXPCMessageSetCFURL() || FigXPCMessageSetCFDictionary() || FigXPCMessageSetCFDictionary() || frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a2, 1, v44, 0x196EFB1C5, &v42) || frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a16, 0, v44, 0x196EFB1E5, &v41) || CFDictionaryContainsKey(a18, @"Remaker_TemporaryDirectoryURL") && (Value = CFDictionaryGetValue(a18, @"Remaker_TemporaryDirectoryURL"), frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(Value, 0, v44, 0x196EFB203, &cf)) || FigXPCRemoteClientSendSyncMessageCreatingReply())
            {
              v31 = 0;
            }

            else
            {
              int64 = xpc_dictionary_get_int64(v43, "WriterAudioTrackIDOut");
              v28 = xpc_dictionary_get_int64(v43, "WriterVideoTrackIDOut");
              uint64 = xpc_dictionary_get_uint64(v43, *MEMORY[0x1E69615A0]);
              if (uint64)
              {
                EmptyWrapper = frr_CreateEmptyWrapper(1, uint64, &v45);
                v31 = v45;
                if (!EmptyWrapper)
                {
                  remoteRemakerFamily_storeSandboxRegistration(v45, v42);
                  remoteRemakerFamily_storeSandboxRegistration(v31, v41);
                  remoteRemakerFamily_storeSandboxRegistration(v31, cf);
                  *a21 = v31;
                  if (a19)
                  {
                    *a19 = int64;
                  }

                  v31 = 0;
                  if (a20)
                  {
                    *a20 = v28;
                  }
                }
              }

              else
              {
                FigRemakerRemoteCreateWithURLs_cold_1(&v37);
                v31 = 0;
              }
            }

            goto LABEL_43;
          }

          v32 = qword_1ED4CBE28;
          v33 = v21;
          v34 = 4294954516;
          v35 = 1460;
        }

        else
        {
          v32 = qword_1ED4CBE28;
          v33 = v21;
          v34 = 4294954516;
          v35 = 1458;
        }
      }

      else
      {
        v32 = qword_1ED4CBE28;
        v33 = v21;
        v34 = 4294954516;
        v35 = 1456;
      }
    }

    else
    {
      v32 = qword_1ED4CBE28;
      v33 = v21;
      v34 = 4294955187;
      v35 = 1454;
    }
  }

  else
  {
    v32 = qword_1ED4CBE28;
    v33 = v21;
    v34 = 4294954516;
    v35 = 1452;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v34, "<<<< RemakerRemote >>>>", v35, v33);
}

const void *frr_CreateEmptyWrapper(int a1, uint64_t a2, CFTypeRef *a3)
{
  if (a1 == 2)
  {
    FigAssetReaderGetClassID();
  }

  else if (a1 == 1)
  {
    FigRemakerGetClassID();
  }

  else
  {
    FigAssetWriterGetClassID();
  }

  v6 = CMDerivedObjectCreate();
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 4) = a1;
    *(DerivedStorage + 36) = 0;
    v8 = FigXPCRemoteClientAssociateObject();
    if (v8)
    {
      return v8;
    }

    else
    {
      *(DerivedStorage + 8) = a2;
      *(DerivedStorage + 128) = 0;
      if (sRemoteRemakerPixelBufferOrigin != -1)
      {
        frr_CreateEmptyWrapper_cold_1();
      }

      v12 = 0;
      if (frr_shouldUseFigPixelBufferMemorySharing_onceToken != -1)
      {
        frr_CreateEmptyWrapper_cold_2();
      }

      FigSimpleMutexLock();
      v9 = CMBaseObjectGetDerivedStorage();
      if (qword_1ED4CAE68)
      {
        FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID();
        qword_1ED4CAE68 = 0;
      }

      ObjectID = remoteRemakerFamily_CreateXPCMessage(0, 2003136610, &v12);
      if (ObjectID || (ObjectID = FigPixelBufferOriginBeginEstablishingPixelBufferRecipientByFillingInXPCMessage1(), ObjectID) || (ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID) || (ObjectID = FigPixelBufferOriginCompleteEstablishingPixelBufferRecipientUsingXPCMessage2(), ObjectID) || (ObjectID = FigPixelBufferOriginGetObjectID(), ObjectID))
      {
        v6 = ObjectID;
      }

      else
      {
        v6 = *(v9 + 16);
        *(v9 + 16) = 0;
        if (v6)
        {
          CFRelease(v6);
          v6 = 0;
        }
      }

      FigSimpleMutexUnlock();
      FigXPCRelease();
      FigXPCRelease();
      if (!v6)
      {
        *a3 = 0;
      }
    }
  }

  return v6;
}

double FigRemakerRemoteCreateBaseWithURLs(uint64_t a1, const __CFURL *a2, uint64_t a3, const __CFURL *a4, uint64_t a5, uint64_t a6, const __CFDictionary *a7, void *a8)
{
  v31 = 0;
  v32 = 0;
  cf = 0;
  xdict = 0;
  v27 = 0;
  v28 = 0;
  MEMORY[0x19A8D3660](&frr_OneTimeInitialization_sInitRemoteRemakerOnlyOnce, frr_OneTimeInitializationWork, a3, a4, a5);
  if (!gRemakerRemoteClient)
  {
    v20 = 0;
    goto LABEL_30;
  }

  if (a7)
  {
    v14 = *MEMORY[0x1E695E4D0];
    v15 = v14 == CFDictionaryGetValue(a7, @"Remaker_PermitNonLocalSourceURLs");
  }

  else
  {
    v15 = 0;
  }

  if (a2 | a3)
  {
    if (a2 && (FigCFURLIsLocalResource() ? (v16 = 1) : (v16 = v15), (v16 & 1) == 0))
    {
      v22 = qword_1ED4CBE28;
      v23 = v8;
      v24 = 4294955187;
      v25 = 1615;
    }

    else if (a4)
    {
      if (remakerFamily_CFURLSchemeIsFile(a4))
      {
        if (a8)
        {
          if (FigXPCCreateBasicMessage() || FigXPCMessageSetCFURL())
          {
            goto LABEL_29;
          }

          if (a3)
          {
            v26 = 0;
            if (FigFormatReaderXPCRemoteGetObjectID(a3, &v26))
            {
              goto LABEL_29;
            }

            FigRemakerRemoteCreateBaseWithURLs_cold_2(&v31, &v26);
          }

          if (!FigXPCMessageSetCFURL() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a2, 1, v31, 0x196EFB1C5, &cf) && !frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a4, 0, v31, 0x196EFB1E5, &v28))
          {
            Value = FigCFDictionaryGetValue();
            if ((!Value || !frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(Value, 0, v31, 0x196EFB203, &v27)) && !FigXPCRemoteClientSendSyncMessageCreatingReply())
            {
              uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
              if (!uint64)
              {
                FigRemakerRemoteCreateBaseWithURLs_cold_1(&v33);
                v20 = 0;
                goto LABEL_30;
              }

              EmptyWrapper = frr_CreateEmptyWrapper(1, uint64, &v32);
              v20 = v32;
              if (EmptyWrapper)
              {
LABEL_30:
                FigXPCRemoteClientKillServerOnTimeout();
                FigXPCRelease();
                FigXPCRelease();
                if (v20)
                {
                  CFRelease(v20);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                if (v28)
                {
                  CFRelease(v28);
                }

                if (v27)
                {
                  CFRelease(v27);
                }

                return result;
              }

              remoteRemakerFamily_storeSandboxRegistration(v32, cf);
              remoteRemakerFamily_storeSandboxRegistration(v20, v28);
              remoteRemakerFamily_storeSandboxRegistration(v20, v27);
              *a8 = v20;
            }
          }

LABEL_29:
          v20 = 0;
          goto LABEL_30;
        }

        v22 = qword_1ED4CBE28;
        v23 = v8;
        v24 = 4294954516;
        v25 = 1621;
      }

      else
      {
        v22 = qword_1ED4CBE28;
        v23 = v8;
        v24 = 4294954516;
        v25 = 1619;
      }
    }

    else
    {
      v22 = qword_1ED4CBE28;
      v23 = v8;
      v24 = 4294954516;
      v25 = 1617;
    }
  }

  else
  {
    v22 = qword_1ED4CBE28;
    v23 = v8;
    v24 = 4294954516;
    v25 = 1613;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v24, "<<<< RemakerRemote >>>>", v25, v23);
}

double FigAssetReaderRemoteCreateWithURLAndFormatReader(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, void *a6)
{
  v28 = 0;
  v29 = 0;
  xdict = 0;
  v27 = 0;
  cf = 0;
  MEMORY[0x19A8D3660](&frr_OneTimeInitialization_sInitRemoteRemakerOnlyOnce, frr_OneTimeInitializationWork, a3, a4);
  if (!gRemakerRemoteClient)
  {
    v19 = 0;
    Mutable = 0;
    goto LABEL_24;
  }

  if (a5)
  {
    v12 = *MEMORY[0x1E695E4D0];
    v13 = v12 == CFDictionaryGetValue(a5, @"AssetReader_PermitNonLocalSourceURLs");
  }

  else
  {
    v13 = 0;
  }

  if (a2 | a3)
  {
    if (a2 && (FigCFURLIsLocalResource() ? (v14 = 1) : (v14 = v13), (v14 & 1) == 0))
    {
      v21 = qword_1ED4CBE28;
      v22 = v6;
      v23 = 4294954889;
      v24 = 3115;
    }

    else
    {
      if (a6)
      {
        if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFURL())
        {
          if (!a3)
          {
LABEL_17:
            if (!FigXPCMessageSetCFDictionary() && !frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a2, 1, v27, 0x196EFB1C5, &cf) && !FigXPCRemoteClientSendSyncMessageCreatingReply())
            {
              uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
              if (uint64)
              {
                v16 = uint64;
                Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (Mutable)
                {
                  v18 = frr_CreateEmptyWrapper(2, v16, &v29);
                  v19 = v29;
                  if (!v18)
                  {
                    *(CMBaseObjectGetDerivedStorage() + 88) = Mutable;
                    remoteRemakerFamily_storeSandboxRegistration(v19, cf);
                    Mutable = 0;
                    *a6 = v19;
                    v19 = 0;
                  }
                }

                else
                {
                  FigAssetReaderRemoteCreateWithURLAndFormatReader_cold_1(&v30);
                  v19 = 0;
                }
              }

              else
              {
                FigAssetReaderRemoteCreateWithURLAndFormatReader_cold_2(&v30);
                v19 = 0;
                Mutable = 0;
              }

              goto LABEL_24;
            }

            goto LABEL_37;
          }

          if (!FigFormatReaderXPCRemoteGetObjectID(a3, &v28))
          {
            xpc_dictionary_set_uint64(v27, "SourceFormatReaderToken", v28);
            goto LABEL_17;
          }
        }

LABEL_37:
        v19 = 0;
        Mutable = 0;
LABEL_24:
        FigXPCRemoteClientKillServerOnTimeout();
        FigXPCRelease();
        FigXPCRelease();
        if (v19)
        {
          CFRelease(v19);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return result;
      }

      v21 = qword_1ED4CBE28;
      v22 = v6;
      v23 = 4294954516;
      v24 = 3117;
    }
  }

  else
  {
    v21 = qword_1ED4CBE28;
    v22 = v6;
    v23 = 4294954516;
    v24 = 3113;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v23, "<<<< RemakerRemote >>>>", v24, v22);
}

double FigAssetWriterRemoteCreateWithURL(uint64_t a1, const __CFURL *a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, void *a6)
{
  cf = 0;
  v23 = 0;
  v20 = 0;
  xdict = 0;
  v19 = 0;
  MEMORY[0x19A8D3660](&frr_OneTimeInitialization_sInitRemoteRemakerOnlyOnce, frr_OneTimeInitializationWork, a3);
  if (!gRemakerRemoteClient)
  {
LABEL_16:
    FigXPCRemoteClientKillServerOnTimeout();
    if (cf)
    {
      CFRelease(cf);
    }

    if (xdict)
    {
      CFRelease(xdict);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    return result;
  }

  if (a2)
  {
    if (remakerFamily_CFURLSchemeIsFile(a2))
    {
      if (a6)
      {
        if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFURL() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a2, 0, cf, 0x196EFB1E5, &v20))
        {
          if (!CFDictionaryContainsKey(a4, @"Remaker_TemporaryDirectoryURL") || (Value = CFDictionaryGetValue(a4, @"Remaker_TemporaryDirectoryURL"), !frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(Value, 0, cf, 0x196EFB203, &v19)))
          {
            if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
            {
              uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
              if (uint64)
              {
                if (!frr_CreateEmptyWrapper(3, uint64, &v23))
                {
                  v11 = v23;
                  DerivedStorage = CMBaseObjectGetDerivedStorage();
                  *(DerivedStorage + 80) = 0;
                  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  *(DerivedStorage + 88) = Mutable;
                  if (Mutable)
                  {
                    remoteRemakerFamily_storeSandboxRegistration(v11, v20);
                    remoteRemakerFamily_storeSandboxRegistration(v11, v19);
                    *a6 = v11;
                    v23 = 0;
                  }

                  else
                  {
                    FigAssetWriterRemoteCreateWithURL_cold_1(&v24);
                  }
                }
              }

              else
              {
                FigAssetWriterRemoteCreateWithURL_cold_2(&v24);
              }
            }
          }
        }

        goto LABEL_16;
      }

      v15 = qword_1ED4CBE28;
      v16 = v6;
      v17 = 4241;
    }

    else
    {
      v15 = qword_1ED4CBE28;
      v16 = v6;
      v17 = 4239;
    }
  }

  else
  {
    v15 = qword_1ED4CBE28;
    v16 = v6;
    v17 = 4237;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954516, "<<<< RemakerRemote >>>>", v17, v16);
}

double FigAssetWriterRemoteCreateForWritingFragmentedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, uint64_t a6, void *a7)
{
  v23 = 0;
  xdict = 0;
  MEMORY[0x19A8D3660](&frr_OneTimeInitialization_sInitRemoteRemakerOnlyOnce, frr_OneTimeInitializationWork);
  if (!gRemakerRemoteClient)
  {
    goto LABEL_24;
  }

  if (a7)
  {
    v13 = *MEMORY[0x1E695E480];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a5);
    if (MutableCopy)
    {
      v15 = MutableCopy;
      FigCFDictionarySetValue();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
        if (uint64)
        {
          if (!frr_CreateEmptyWrapper(3, uint64, &v23))
          {
            v17 = v23;
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            *(DerivedStorage + 120) = 1;
            *(DerivedStorage + 96) = a2;
            *(DerivedStorage + 104) = a3;
            *(DerivedStorage + 112) = a4;
            *(DerivedStorage + 80) = 0;
            Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(DerivedStorage + 88) = Mutable;
            if (Mutable)
            {
              *a7 = v17;
              v23 = 0;
            }

            else
            {
              FigAssetWriterRemoteCreateForWritingFragmentedData_cold_1(&v24);
            }
          }
        }

        else
        {
          FigAssetWriterRemoteCreateForWritingFragmentedData_cold_2(&v24);
        }
      }

      FigXPCRemoteClientKillServerOnTimeout();
      CFRelease(v15);
      goto LABEL_13;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v23);
LABEL_24:
    FigXPCRemoteClientKillServerOnTimeout();
LABEL_13:
    if (xdict)
    {
      CFRelease(xdict);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    return result;
  }

  v21 = qword_1ED4CBE28;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 4294954516, "<<<< RemakerRemote >>>>", 4325, v7);
}

void frr_OneTimeInitializationWork()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"ServerConnectionDied");
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t frr_HandleDeadServerConnection(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 24) = 1;
  return result;
}

uint64_t remoteRemakerFamily_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 32))
    {
      v3 = *(DerivedStorage + 64);
      if (v3)
      {
        FigRemote_RemoveSlotIDsFromVideoLayers(v3);
        v4 = *(v2 + 64);
        if (v4)
        {
          CFRelease(v4);
          *(v2 + 64) = 0;
        }
      }

      FigRemote_RemoveReleaseAndClearRemoteCAContext((v2 + 48), *(v2 + 40));
      v5 = *(v2 + 40);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 40) = 0;
      }

      FigRemote_DestroyCARenderServerPort(*(v2 + 36));
      *(v2 + 36) = 0;
    }

    FigXPCRemoteClientDisassociateObject();
    if (!*(v2 + 24))
    {
      FigXPCCreateBasicMessage();
      FigXPCRemoteClientSendAsyncMessage();
      FigXPCRelease();
    }

    FigXPCRemoteClientKillServerOnTimeout();
  }

  return 0;
}

void remoteRemakerFamily_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  remoteRemakerFamily_Invalidate(a1);
  v3 = DerivedStorage[9];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[9] = 0;
  }

  v4 = DerivedStorage[11];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[11] = 0;
  }

  v5 = DerivedStorage[16];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[16] = 0;
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[2] = 0;
  }
}

__CFString *remoteRemaker_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigRemakerRemote %p retainCount: %ld%s allocator: %p>", a1, v5, v6, v7);
  return Mutable;
}

void remoteRemakerFamily_CopyProperty(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v16 = 0;
  v17 = 0;
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v8 = qword_1ED4CBE28;
    v9 = v4;
    v10 = 4294954511;
    v11 = 2828;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v10, "<<<< RemakerRemote >>>>", v11, v9);
    return;
  }

  if (!a2)
  {
    v8 = qword_1ED4CBE28;
    v9 = v4;
    v10 = 4294954516;
    v11 = 2831;
    goto LABEL_3;
  }

  if (!a4)
  {
    v8 = qword_1ED4CBE28;
    v9 = v4;
    v10 = 4294954516;
    v11 = 2834;
    goto LABEL_3;
  }

  if (!remoteRemakerFamily_GetObjectID(a1, &v17))
  {
    if (FigXPCSendStdCopyPropertyMessage())
    {
      v14 = v16;
    }

    else
    {
      if (!CFEqual(a2, @"AssetWriter_Metadata") && !CFEqual(a2, @"Remaker_Metadata"))
      {
LABEL_17:
        *a4 = v16;
        v16 = 0;
        goto LABEL_18;
      }

      v12 = CFGetAllocator(a1);
      MetadataFromBinaryPListData = FigRemote_CreateMetadataFromBinaryPListData(v16, v12, &cf);
      v14 = v16;
      if (!MetadataFromBinaryPListData)
      {
        v16 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        goto LABEL_17;
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRemoteClientKillServerOnTimeout();
}

void remoteRemakerFamily_SetProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  cf = 0;
  v14 = 0;
  if (!*CMBaseObjectGetDerivedStorage())
  {
    if (!a2)
    {
      v7 = qword_1ED4CBE28;
      v8 = v3;
      v9 = 4294954516;
      v10 = 2879;
      goto LABEL_3;
    }

    if (!remoteRemakerFamily_GetObjectID(a1, &v14))
    {
      if (CFEqual(a2, @"AssetWriter_Metadata") || CFEqual(a2, @"Remaker_Metadata"))
      {
        MetadataBinaryPListData = FigRemote_CreateMetadataBinaryPListData(a3, *MEMORY[0x1E695E480], &cf);
        v12 = cf;
        if (MetadataBinaryPListData)
        {
          if (!cf)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

      FigXPCSendStdSetPropertyMessage();
      v12 = cf;
      if (cf)
      {
LABEL_12:
        CFRelease(v12);
      }
    }

LABEL_13:
    FigXPCRemoteClientKillServerOnTimeout();
    return;
  }

  v7 = qword_1ED4CBE28;
  v8 = v3;
  v9 = 4294954511;
  v10 = 2877;
LABEL_3:

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< RemakerRemote >>>>", v10, v8);
}

uint64_t remoteRemakerFamily_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteRemakerFamily_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[24])
    {
      remoteRemakerFamily_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

void remoteRemaker_AddAudioTrack(uint64_t a1, int a2, const void *a3, size_t a4, const void *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v15 = qword_1ED4CBE28;
    v16 = v8;
    v17 = 4294954511;
    v18 = 1825;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v17, "<<<< RemakerRemote >>>>", v18, v16);
    return;
  }

  if (!a3)
  {
    v15 = qword_1ED4CBE28;
    v16 = v8;
    v17 = 4294954516;
    v18 = 1828;
    goto LABEL_5;
  }

  v19 = remoteRemakerFamily_CreateXPCMessage(a1, 1836212596, &xdict);
  v20 = xdict;
  if (!v19)
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    xpc_dictionary_set_data(v20, "AudioDestASBD", a3, 0x28uLL);
    if (a4 && a5)
    {
      xpc_dictionary_set_data(v20, "AudioDestChannelLayout", a5, a4);
    }

    if (!FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        if (a8)
        {
          *a8 = int64;
        }
      }

      else
      {
        remoteRemaker_AddAudioTrack_cold_1(&v23);
      }
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
}

void remoteRemaker_AddVideoTrack(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  value[0] = a6;
  v24 = 0;
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v17 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294954511, "<<<< RemakerRemote >>>>", 2066, v12);
  }

  else
  {
    v18 = remoteRemakerFamily_CreateXPCMessage(a1, 1836212598, &v24);
    v19 = v24;
    if (!v18)
    {
      xpc_dictionary_set_int64(v24, "TrackID", a2);
      xpc_dictionary_set_int64(v19, "Width", a3);
      xpc_dictionary_set_int64(v19, "Height", a4);
      if (!FigXPCMessageSetCFDictionary())
      {
        xpc_dictionary_set_uint64(v19, "VideoCodecType", value[0]);
        if (!FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary())
        {
          *&value[1] = *a11;
          v22 = *(a11 + 16);
          if (!FigXPCMessageSetCMTime() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
          {
            int64 = xpc_dictionary_get_int64(xdict, "TrackIDOut");
            if (int64)
            {
              if (a12)
              {
                *a12 = int64;
              }
            }

            else
            {
              remoteRemaker_AddVideoTrack_cold_1(&value[1]);
            }
          }
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteRemakerFamily_SetFormatWriterProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v6 = qword_1ED4CBE28;
    v7 = v3;
    v8 = 4294954511;
    v9 = 2645;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v8, "<<<< RemakerRemote >>>>", v9, v7);
    return;
  }

  if (!a2)
  {
    v6 = qword_1ED4CBE28;
    v7 = v3;
    v8 = 4294954516;
    v9 = 2647;
    goto LABEL_5;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 1717991280, &v10) && !FigXPCMessageSetCFString() && !FigXPCMessageSetCFObject())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
}

void remoteRemakerFamily_SetFormatWriterTrackProperty(uint64_t a1, int a2, const void *a3, CFTypeRef a4)
{
  cf = 0;
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v8 = qword_1ED4CBE28;
    v9 = v4;
    v10 = 4294954511;
    v11 = 2683;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v10, "<<<< RemakerRemote >>>>", v11, v9);
    return;
  }

  if (!a3)
  {
    v8 = qword_1ED4CBE28;
    v9 = v4;
    v10 = 4294954516;
    v11 = 2685;
    goto LABEL_5;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 1717990512, &xdict))
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    if (!FigXPCMessageSetCFString() && (!CFEqual(a3, @"FormatDescriptionArray") && !CFEqual(a3, @"ReplacementFormatDescriptionArray") || !FigRemote_CreatePListFromFormatDescriptionCollection()) && !FigXPCMessageSetCFObject())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }
}

double remoteRemaker_SetTimeRange(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v15 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954511;
    v10 = 2789;
LABEL_8:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< RemakerRemote >>>>", v10, v8);
  }

  if ((a2->flags & 0x1D) != 1)
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954516;
    v10 = 2791;
    goto LABEL_8;
  }

  if ((a3->flags & 0x1D) == 1)
  {
    *&time1.start.value = *&a2->value;
    time1.start.epoch = a2->epoch;
    time2 = *a3;
    if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12.value, v12.timescale, LODWORD(v12.epoch));
    }
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 1836282994, &v15))
  {
    time2 = *a2;
    v12 = *a3;
    CMTimeRangeFromTimeToTime(&time1, &time2, &v12);
    if (!FigXPCMessageSetCMTimeRange())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return result;
}

void remoteRemaker_StartOutput(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    v2 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 4294954511, "<<<< RemakerRemote >>>>", 2992, v1);
  }

  else
  {
    remoteRemaker_StartOutput_cold_1();
  }
}

void remoteRemaker_EstimateMaxSegmentDurationForFileSize(uint64_t a1, int64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *MEMORY[0x1E6960CC0];
  v12 = *(MEMORY[0x1E6960CC0] + 16);
  xdict = 0;
  if (*DerivedStorage)
  {
    v8 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< RemakerRemote >>>>", 3020, v3);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 1835363699, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "TargetFileSize", a2);
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        CMTime = FigXPCMessageGetCMTime();
        if (a3)
        {
          if (!CMTime)
          {
            *a3 = v11;
            *(a3 + 16) = v12;
          }
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteRemaker_AddAudioTrackWithPreset(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v9 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< RemakerRemote >>>>", 1886, v5);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 1836212592, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          if (a5)
          {
            *a5 = int64;
          }
        }

        else
        {
          remoteRemaker_AddAudioTrackWithPreset_cold_1(&v12);
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteRemaker_AddAudioMixdownTrack(uint64_t a1, const __CFArray *a2, const void *a3, size_t a4, const void *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v23 = 0;
  v24 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v15 = qword_1ED4CBE28;
    v16 = v8;
    v17 = 4294954511;
    v18 = 1938;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v17, "<<<< RemakerRemote >>>>", v18, v16);
    return;
  }

  if (!a3)
  {
    v15 = qword_1ED4CBE28;
    v16 = v8;
    v17 = 4294954516;
    v18 = 1941;
    goto LABEL_5;
  }

  if (remoteRemakerFamily_CreateXPCMessage(a1, 1836212589, &v23))
  {
    v20 = 0;
  }

  else
  {
    v19 = frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens(a2, @"RemakerAudioMixdown_AudioProcessingTap", &v24);
    v21 = v23;
    v20 = v24;
    if (!v19 && !FigXPCMessageSetCFArray())
    {
      xpc_dictionary_set_data(v21, "AudioDestASBD", a3, 0x28uLL);
      if (a4 && a5)
      {
        xpc_dictionary_set_data(v21, "AudioDestChannelLayout", a5, a4);
      }

      if (!FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          if (a8)
          {
            *a8 = int64;
          }
        }

        else
        {
          remoteRemaker_AddAudioMixdownTrack_cold_1(&v25);
        }
      }
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (v20)
  {
    CFRelease(v20);
  }
}

void remoteRemaker_AddAudioMixdownTrackWithPreset(uint64_t a1, const __CFArray *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v13 = 0;
  v14 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v9 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< RemakerRemote >>>>", 2005, v5);
  }

  else
  {
    if (remoteRemakerFamily_CreateXPCMessage(a1, 1836215664, &v13))
    {
      v11 = 0;
    }

    else
    {
      v10 = frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens(a2, @"RemakerAudioMixdown_AudioProcessingTap", &v14);
      v11 = v14;
      if (!v10 && !FigXPCMessageSetCFArray() && !FigXPCMessageSetCFString() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          if (a5)
          {
            *a5 = int64;
          }
        }

        else
        {
          remoteRemaker_AddAudioMixdownTrackWithPreset_cold_1(&v15);
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void remoteRemaker_AddVideoCompositionTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, int a9, const __CFArray *a10, const __CFArray *a11, uint64_t a12, __int128 *a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, unsigned int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23)
{
  v38 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v25 = qword_1ED4CBE28;
    v26 = v23;
    v27 = 4294954511;
    v28 = 2470;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v27, "<<<< RemakerRemote >>>>", v28, v26);
    return;
  }

  if ((*(a13 + 3) & 0x1D) != 1)
  {
    v25 = qword_1ED4CBE28;
    v26 = v23;
    v27 = 4294954516;
    v28 = 2472;
    goto LABEL_5;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 1835103843, &v38))
  {
    v36 = *a13;
    v37 = *(a13 + 2);
    remoteRemakerFamily_AddVideoCompositionTrackCommon(a1, v38, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v36, a14, SHIDWORD(a14), a15, SHIDWORD(a15), a16, a17, a18, a19, a20, a21, a22, a23);
  }

  FigXPCRelease();
}

void remoteRemaker_AddPassthroughTrackWithOptions(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v8 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< RemakerRemote >>>>", 2531, v4);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 1836086383, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      if (!FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          if (a4)
          {
            *a4 = int64;
          }
        }

        else
        {
          remoteRemaker_AddPassthroughTrackWithOptions_cold_1(&v11);
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteRemaker_CanPerformFastFrameRateConversion(uint64_t a1, int a2, __int128 *a3)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v6 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954511, "<<<< RemakerRemote >>>>", 3057, v3);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 1835427427, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      if (!FigXPCMessageSetCMTime())
      {
        FigXPCRemoteClientSendSyncMessage();
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
  }
}

void remoteRemaker_AddTemporalMetadataTrackWithOptions(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v8 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< RemakerRemote >>>>", 2576, v4);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 1836346740, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      if (!FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (a4)
        {
          *a4 = int64;
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteRemaker_CopyTrackProperty(uint64_t a1, int a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  xdict = 0;
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v10 = qword_1ED4CBE28;
    v11 = v5;
    v12 = 4294954511;
    v13 = 2918;
LABEL_7:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v12, "<<<< RemakerRemote >>>>", v13, v11);
    return;
  }

  if (!a3)
  {
    v10 = qword_1ED4CBE28;
    v11 = v5;
    v12 = 4294954516;
    v13 = 2921;
    goto LABEL_7;
  }

  if (!a5)
  {
    v10 = qword_1ED4CBE28;
    v11 = v5;
    v12 = 4294954516;
    v13 = 2924;
    goto LABEL_7;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 1920099184, &xdict))
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    if (!FigXPCMessageSetCFString() && !FigXPCRemoteClientSendSyncMessageCreatingReply() && !FigXPCMessageCopyCFObject())
    {
      *a5 = cf;
      cf = 0;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRemoteClientKillServerOnTimeout();
}

void frr_GetDefaultSourceTrack(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954511;
    v10 = 1120;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< RemakerRemote >>>>", v10, v8);
    return;
  }

  if (!a3)
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954516;
    v10 = 1122;
    goto LABEL_5;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 1717859188, &xdict))
  {
    xpc_dictionary_set_int64(xdict, "MediaType", a2);
    if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      *a3 = xpc_dictionary_get_int64(0, "TrackIDOut");
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
}

uint64_t frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens(const __CFArray *a1, const void *a2, CFTypeRef *a3)
{
  if (!a1)
  {
    v10 = 0;
    *a3 = 0;
    return v10;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_7:
    v10 = 0;
    *a3 = CFRetain(a1);
    return v10;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
    if (!ValueAtIndex)
    {
      frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_5(&v23);
      return v23;
    }

    if (CFDictionaryContainsKey(ValueAtIndex, a2))
    {
      break;
    }

    if (v7 == ++v8)
    {
      goto LABEL_7;
    }
  }

  v11 = *MEMORY[0x1E695E480];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (!MutableCopy)
  {
    frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_4(&v23);
    return v23;
  }

  v13 = MutableCopy;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v23 = 0;
    v17 = CFArrayGetValueAtIndex(v13, v14);
    if (!v17)
    {
      frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_3(&v24);
      goto LABEL_33;
    }

    v18 = v17;
    Value = CFDictionaryGetValue(v17, a2);
    if (!Value)
    {
      goto LABEL_21;
    }

    MTAudioProcessingTapRemoteGetServerObjectToken(Value, &v23);
    if (v20)
    {
      v10 = v20;
      goto LABEL_34;
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v15 = CFNumberCreate(v11, kCFNumberSInt64Type, &v23);
    if (!v15)
    {
      frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_2(&v24);
      goto LABEL_33;
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v21 = CFDictionaryCreateMutableCopy(v11, 0, v18);
    v16 = v21;
    if (!v21)
    {
      break;
    }

    CFDictionaryReplaceValue(v21, a2, v15);
    CFArraySetValueAtIndex(v13, v14, v16);
LABEL_21:
    if (v7 == ++v14)
    {
      v10 = 0;
      *a3 = v13;
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_1(&v24);
LABEL_33:
  v10 = v24;
LABEL_34:
  CFRelease(v13);
  if (v15)
  {
LABEL_23:
    CFRelease(v15);
  }

LABEL_24:
  if (v16)
  {
    CFRelease(v16);
  }

  return v10;
}

void remoteRemakerFamily_AddVideoCompositionTrackCommon(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, const void *a9, int a10, const __CFArray *a11, const __CFArray *a12, uint64_t a13, __int128 *a14, int a15, int a16, int a17, int a18, int a19, uint64_t a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v59 = 0;
  v60[0] = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  if (*DerivedStorage)
  {
    v29 = qword_1ED4CBE28;
    v30 = v26;
    v31 = 4294954511;
    v32 = 2225;
LABEL_8:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v31, "<<<< RemakerRemote >>>>", v32, v30);
    return;
  }

  if ((*(a14 + 3) & 0x1D) != 1)
  {
    v29 = qword_1ED4CBE28;
    v30 = v26;
    v31 = 4294954516;
    v32 = 2227;
    goto LABEL_8;
  }

  if (a9)
  {
    if (DerivedStorage[32])
    {
      v29 = qword_1ED4CBE28;
      v30 = v26;
      v31 = 4294954516;
      v32 = 2231;
      goto LABEL_8;
    }

    v33 = a21;
    if (a10)
    {
      if (a11)
      {
        v29 = qword_1ED4CBE28;
        v30 = v26;
        v31 = 4294954516;
        v32 = 2239;
        goto LABEL_8;
      }

      v50 = DerivedStorage;
      if (a12)
      {
        v29 = qword_1ED4CBE28;
        v30 = v26;
        v31 = 4294954516;
        v32 = 2241;
        goto LABEL_8;
      }
    }

    else
    {
      if (!a11)
      {
        v29 = qword_1ED4CBE28;
        v30 = v26;
        v31 = 4294954516;
        v32 = 2246;
        goto LABEL_8;
      }

      v50 = DerivedStorage;
      Count = CFArrayGetCount(a11);
      if (a12)
      {
        if (Count != CFArrayGetCount(a12))
        {
          v29 = qword_1ED4CBE28;
          v30 = v26;
          v31 = 4294954516;
          v32 = 2256;
          goto LABEL_8;
        }
      }

      else if (Count <= 0)
      {
        v29 = qword_1ED4CBE28;
        v30 = v26;
        v31 = 4294954516;
        v32 = 2250;
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (a10)
    {
      v29 = qword_1ED4CBE28;
      v30 = v26;
      v31 = 4294954516;
      v32 = 2264;
      goto LABEL_8;
    }

    if (a11)
    {
      v29 = qword_1ED4CBE28;
      v30 = v26;
      v31 = 4294954516;
      v32 = 2266;
      goto LABEL_8;
    }

    v33 = a21;
    v50 = DerivedStorage;
    if (a12)
    {
      v29 = qword_1ED4CBE28;
      v30 = v26;
      v31 = 4294954516;
      v32 = 2268;
      goto LABEL_8;
    }
  }

  if (FigXPCMessageSetCFArray() || FigXPCMessageSetCFArray() || FigXPCMessageSetCFArray() || FigXPCMessageSetCFArray())
  {
    goto LABEL_52;
  }

  if (!a7)
  {
    goto LABEL_58;
  }

  v35 = CFGetTypeID(a7);
  if (v35 != CFStringGetTypeID())
  {
    v36 = CFGetTypeID(a7);
    if (v36 == FigVideoCompositorGetTypeID())
    {
      if (FigVideoCompositorRemoteGetObjectID(a7, v60))
      {
        goto LABEL_52;
      }

      Mutable = *(v50 + 9);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        *(v50 + 9) = Mutable;
        if (!Mutable)
        {
          remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_1(&v53);
          goto LABEL_52;
        }
      }

      CFArrayAppendValue(Mutable, a7);
      goto LABEL_39;
    }

LABEL_58:
    remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_4(&v53);
    goto LABEL_52;
  }

LABEL_39:
  FigXPCMessageSetCFString();
  xpc_dictionary_set_uint64(a2, "VideoCompositorObjectID", v60[0]);
  if (!FigXPCMessageSetCFArray())
  {
    v53 = *a14;
    v54 = *(a14 + 2);
    if (!FigXPCMessageSetCMTime())
    {
      xpc_dictionary_set_int64(a2, "SourceTrackIDForFrameTiming", a15);
      xpc_dictionary_set_int64(a2, "RenderWidth", a16);
      xpc_dictionary_set_int64(a2, "RenderHeight", a17);
      xpc_dictionary_set_int64(a2, "Width", a18);
      xpc_dictionary_set_int64(a2, "Height", a19);
      if (!FigXPCMessageSetCFDictionary())
      {
        xpc_dictionary_set_uint64(a2, "VideoCodecType", v33);
        if (!FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary())
        {
          remoteRemakerFamily_copySerializableVideoCompositionProcessorProperties();
          if (!v38 && !FigXPCMessageSetCFDictionary())
          {
            if (!a9)
            {
LABEL_48:
              if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
              {
                int64 = xpc_dictionary_get_int64(v56, "TrackIDOut");
                if (int64)
                {
                  if (a26)
                  {
                    *a26 = int64;
                  }
                }

                else
                {
                  remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_3(&v53);
                }
              }

              goto LABEL_52;
            }

            v40 = remoteRemakerFamily_CreateXPCMessage(a1, 1836081507, &v58);
            v41 = v58;
            if (!v40)
            {
              v42 = a11 ? CFArrayGetCount(a11) : 0;
              xpc_dictionary_set_int64(v41, "AnimationVideoLayerCount", v42);
              if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
              {
                v43 = xpc_dictionary_copy_mach_send();
                *(v50 + 9) = v43;
                if (v43)
                {
                  if (FigXPCMessageCopyCFArray())
                  {
                    goto LABEL_52;
                  }

                  v50[32] = 1;
                  v44 = CFRetain(a9);
                  v45 = v50;
                  v46 = v44;
                  *(v50 + 5) = v44;
                  v47 = a11;
                  if (a11)
                  {
                    v47 = CFRetain(a11);
                    v45 = v50;
                    v46 = *(v50 + 5);
                  }

                  *(v45 + 8) = v47;
                  v48 = v45;
                  if (FigRemote_CreateRemoteCAContextAndAttachLayer(*(v45 + 9), v46, v45 + 6, v45 + 14))
                  {
                    goto LABEL_52;
                  }

                  xpc_dictionary_set_uint64(a2, "AnimationRemoteContextID", *(v48 + 14));
                  v49 = *(v48 + 8);
                  if (v49)
                  {
                    if (FigRemote_InstallSlotIDsInVideoLayers(v59, v49))
                    {
                      goto LABEL_52;
                    }
                  }

                  xpc_dictionary_set_int64(a2, "AnimationTrackID", a10);
                  if (FigXPCMessageSetCFArray() || FigXPCMessageSetCFDictionary())
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_48;
                }

                remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_2(&v53);
              }
            }
          }
        }
      }
    }
  }

LABEL_52:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  if (v59)
  {
    CFRelease(v59);
  }

  if (v55)
  {
    CFRelease(v55);
  }
}

__CFString *remoteReader_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigAssetReaderRemote %p retainCount: %ld%s allocator: %p>", a1, v5, v6, v7);
  return Mutable;
}

void remoteReader_EnableOriginalSampleExtractionFromTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v8 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< RemakerRemote >>>>", 3306, v4);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 1920169065, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      if (!FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          if (a4)
          {
            *a4 = int64;
          }
        }

        else
        {
          remoteReader_EnableOriginalSampleExtractionFromTrack_cold_1(&v11);
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteReader_EnableOriginalSampleReferenceExtractionFromTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v8 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< RemakerRemote >>>>", 3351, v4);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 1920168564, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      if (!FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          if (a4)
          {
            *a4 = int64;
          }
        }

        else
        {
          remoteReader_EnableOriginalSampleReferenceExtractionFromTrack_cold_1(&v11);
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteReader_EnableDecodedVideoExtractionFromTrack(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5, const __CFDictionary *a6, _DWORD *a7)
{
  xdict = 0;
  cf = 0;
  v18 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v13 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 4294954511, "<<<< RemakerRemote >>>>", 3491, v7);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 1920361844, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      if (a6)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(a6))
        {
          CFDictionaryGetValue(a6, @"AssetReader_CopyDataBuffers");
          FigCFEqual();
        }
      }

      if (!FigCreatePixelBufferAttributesWithIOSurfaceSupport() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary())
      {
        v16 = *a5;
        v17 = *(a5 + 2);
        if (!FigXPCMessageSetCMTime() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
        {
          int64 = xpc_dictionary_get_int64(v18, "TrackIDOut");
          if (int64)
          {
            if (a7)
            {
              *a7 = int64;
            }
          }

          else
          {
            remoteReader_EnableDecodedVideoExtractionFromTrack_cold_1(&v16);
          }
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    if (cf)
    {
      CFRelease(cf);
    }

    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteReader_EnableAudioMixdownExtraction(uint64_t a1, const __CFArray *a2, const void *a3, size_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v20 = 0;
  v21 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v15 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954511, "<<<< RemakerRemote >>>>", 3813, v9);
  }

  else
  {
    if (remoteRemakerFamily_CreateXPCMessage(a1, 1918987621, &v20))
    {
      v17 = 0;
    }

    else
    {
      v16 = frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens(a2, @"AssetReaderSource_AudioProcessingTap", &v21);
      v18 = v20;
      v17 = v21;
      if (!v16 && !FigXPCMessageSetCFArray())
      {
        if (a3)
        {
          xpc_dictionary_set_data(v18, "AudioDestASBD", a3, 0x28uLL);
        }

        if (a4 && a5)
        {
          xpc_dictionary_set_data(v18, "AudioDestChannelLayout", a5, a4);
        }

        if (!FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
        {
          int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
          if (int64)
          {
            if (a9)
            {
              *a9 = int64;
            }
          }

          else
          {
            remoteReader_EnableAudioMixdownExtraction_cold_1(&v22);
          }
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    if (v17)
    {
      CFRelease(v17);
    }
  }
}

double remoteReader_StartExtractionForTimeRange(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v15 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954511;
    v10 = 3952;
LABEL_8:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< RemakerRemote >>>>", v10, v8);
  }

  if ((a2->flags & 0x1D) != 1)
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954516;
    v10 = 3954;
    goto LABEL_8;
  }

  if ((a3->flags & 0x1D) == 1)
  {
    *&time1.start.value = *&a2->value;
    time1.start.epoch = a2->epoch;
    time2 = *a3;
    if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12.value, v12.timescale, LODWORD(v12.epoch));
    }
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 1920165234, &v15))
  {
    time2 = *a2;
    v12 = *a3;
    CMTimeRangeFromTimeToTime(&time1, &time2, &v12);
    if (!FigXPCMessageSetCMTimeRange())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return result;
}

void remoteReader_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, int a3, BOOL *a4, CFTypeRef *a5)
{
  v31 = 0;
  cf = 0;
  xdict = 0;
  v30 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v11 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954511, "<<<< RemakerRemote >>>>", 4129, v5);
    return;
  }

  if (remoteRemakerFamily_CreateXPCMessage(a1, 1919251298, &xdict))
  {
    goto LABEL_39;
  }

  v12 = xdict;
  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  xpc_dictionary_set_BOOL(v12, "WaitForSampleBuffer", a3 != 0);
  xpc_dictionary_set_BOOL(v12, "RequestedSampleBuffer", a5 != 0);
  if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    goto LABEL_39;
  }

  v13 = xpc_dictionary_get_BOOL(0, "ExtractionCompleteOut");
  if (a4)
  {
    *a4 = v13;
  }

  if (!a5)
  {
    v16 = 0;
LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  *a5 = 0;
  v14 = *MEMORY[0x1E695E480];
  BlockBufferData = FigXPCMessageCreateBlockBufferData();
  v16 = 0;
  v17 = cf;
  v18 = 0;
  if (BlockBufferData || !cf)
  {
    goto LABEL_24;
  }

  if (frr_CopyTrackInfo(a1, a2, &v30))
  {
LABEL_39:
    v16 = 0;
    goto LABEL_22;
  }

  value = xpc_dictionary_get_value(0, "IOSurfaceArray");
  if (!value)
  {
    goto LABEL_37;
  }

  v20 = value;
  count = xpc_array_get_count(value);
  if (!count)
  {
    remoteReader_ExtractAndRetainNextSampleBuffer_cold_3(&v33);
    goto LABEL_36;
  }

  v22 = count;
  Mutable = CFArrayCreateMutable(v14, count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    remoteReader_ExtractAndRetainNextSampleBuffer_cold_2(&v33);
LABEL_36:
    if (!v33)
    {
LABEL_37:
      v28 = xpc_dictionary_get_value(0, "IOSurface");
      v18 = IOSurfaceLookupFromXPCObject(v28);
      v16 = 0;
      if (FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface())
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    goto LABEL_39;
  }

  v16 = Mutable;
  for (i = 0; i != v22; ++i)
  {
    v25 = xpc_array_get_value(v20, i);
    v26 = IOSurfaceLookupFromXPCObject(v25);
    if (!v26)
    {
      remoteReader_ExtractAndRetainNextSampleBuffer_cold_1(v16, &v33);
      goto LABEL_36;
    }

    v27 = v26;
    CFArrayAppendValue(v16, v26);
    CFRelease(v27);
  }

  v18 = 0;
  if (FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurfaceArray())
  {
    goto LABEL_23;
  }

LABEL_20:
  *a5 = v31;
  v31 = 0;
LABEL_23:
  v17 = cf;
LABEL_24:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  FigXPCRemoteClientKillServerOnTimeout();
}

void remoteReader_EnableDecodedAudioExtractionFromTrackWithAudioOptions(uint64_t a1, int a2, _OWORD *a3, size_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v22 = 0;
  xdict = 0;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  if (*CMBaseObjectGetDerivedStorage())
  {
    v15 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954511, "<<<< RemakerRemote >>>>", 3420, v9);
  }

  else
  {
    v16 = remoteRemakerFamily_CreateXPCMessage(a1, 1919251553, &xdict);
    v17 = xdict;
    if (!v16)
    {
      if (a3)
      {
        v18 = a3;
      }

      else
      {
        v18 = v20;
      }

      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      xpc_dictionary_set_data(v17, "AudioDestASBD", v18, 0x28uLL);
      if (a4 && a5)
      {
        xpc_dictionary_set_data(v17, "AudioDestChannelLayout", a5, a4);
      }

      if (!FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(v22, "TrackIDOut");
        if (int64)
        {
          if (a9)
          {
            *a9 = int64;
          }
        }

        else
        {
          remoteReader_EnableDecodedAudioExtractionFromTrackWithAudioOptions_cold_1(&v24);
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteReader_StartExtractionForTimeRanges(uint64_t a1, void *a2, unint64_t a3)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954511;
    v10 = 3989;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< RemakerRemote >>>>", v10, v8);
    return;
  }

  if (a3 <= 0)
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954516;
    v10 = 3991;
    goto LABEL_3;
  }

  if (!a2)
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954516;
    v10 = 3993;
    goto LABEL_3;
  }

  v11 = a2 + 5;
  v12 = a3;
  do
  {
    if ((*(v11 - 7) & 0x1D) != 1)
    {
      v7 = qword_1ED4CBE28;
      v8 = v3;
      v9 = 4294954516;
      v10 = 3997;
      goto LABEL_3;
    }

    if ((*(v11 - 4) & 1) == 0 || *v11 || (*(v11 - 2) & 0x8000000000000000) != 0)
    {
      v7 = qword_1ED4CBE28;
      v8 = v3;
      v9 = 4294954516;
      v10 = 3999;
      goto LABEL_3;
    }

    v11 += 6;
    --v12;
  }

  while (v12);
  if (!remoteRemakerFamily_CreateXPCMessage(a1, 1920168563, &xdict))
  {
    if (a3 <= 0x555555555555555)
    {
      v13 = 48 * a3;
    }

    else
    {
      v13 = 0;
    }

    xpc_dictionary_set_data(xdict, "TimeRanges", a2, v13);
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
}

void remoteReader_StartExtractionForTimeRangesFromTrack(uint64_t a1, int a2, void *a3, unint64_t a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954511;
    v12 = 4034;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< RemakerRemote >>>>", v12, v10);
    return;
  }

  if (a4 <= 0)
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954516;
    v12 = 4036;
    goto LABEL_3;
  }

  if (!a3)
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954516;
    v12 = 4038;
    goto LABEL_3;
  }

  v13 = a3 + 5;
  v14 = a4;
  do
  {
    if ((*(v13 - 7) & 0x1D) != 1)
    {
      v9 = qword_1ED4CBE28;
      v10 = v4;
      v11 = 4294954516;
      v12 = 4042;
      goto LABEL_3;
    }

    if ((*(v13 - 4) & 1) == 0 || *v13 || (*(v13 - 2) & 0x8000000000000000) != 0)
    {
      v9 = qword_1ED4CBE28;
      v10 = v4;
      v11 = 4294954516;
      v12 = 4044;
      goto LABEL_3;
    }

    v13 += 6;
    --v14;
  }

  while (v14);
  v15 = remoteRemakerFamily_CreateXPCMessage(a1, 1920169076, &xdict);
  v16 = xdict;
  if (!v15)
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    if (a4 <= 0x555555555555555)
    {
      v17 = 48 * a4;
    }

    else
    {
      v17 = 0;
    }

    xpc_dictionary_set_data(v16, "TimeRanges", a3, v17);
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
}

void remoteReader_EnableCaptionExtractionFromTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v8 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< RemakerRemote >>>>", 3876, v4);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 1919115640, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      if (!FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          if (a4)
          {
            *a4 = int64;
          }
        }

        else
        {
          remoteReader_EnableCaptionExtractionFromTrack_cold_1(&v11);
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteReader_StartExtractionForTime(uint64_t a1, __int128 *a2)
{
  v9 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v5 = qword_1ED4CBE28;
    v6 = v2;
    v7 = 4294954511;
    v8 = 3918;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< RemakerRemote >>>>", v8, v6);
    return;
  }

  if ((*(a2 + 3) & 0x1D) != 1)
  {
    v5 = qword_1ED4CBE28;
    v6 = v2;
    v7 = 4294954516;
    v8 = 3920;
    goto LABEL_5;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 1920165236, &v9) && !FigXPCMessageSetCMTime())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
}

uint64_t remoteReader_EnableVideoCompositionExtraction2(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, int a7, const __CFArray *a8, const __CFArray *a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const __CFDictionary *a22, _DWORD *a23)
{
  v24 = *a11;
  v25 = *(a11 + 2);
  return remoteReader_EnableVideoCompositionExtraction3(a1, a2, a3, 0, 0, a4, a5, a6, a7, a8, a9, a10, &v24, a12, SHIDWORD(a12), a13, SHIDWORD(a13), a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t frr_CopyTrackInfo(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SInt32 = FigCFNumberCreateSInt32();
  if (!SInt32)
  {
    frr_CopyTrackInfo_cold_2(&v12);
    return v12;
  }

  v6 = SInt32;
  os_unfair_lock_lock((DerivedStorage + 80));
  Value = CFDictionaryGetValue(*(DerivedStorage + 88), v6);
  if (Value)
  {
    Instance = Value;
    CFRetain(Value);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_8:
    os_unfair_lock_unlock((DerivedStorage + 80));
    if (Instance)
    {
      CFRelease(Instance);
    }

    v9 = 0;
    goto LABEL_11;
  }

  MEMORY[0x19A8D3660](&remoteRemakerTrackInfo_GetTypeID_sRegisterFigRemoteRemakerTrackInfoOnce, remoteRemakerTrackInfo_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance && !frr_CopyTrackInfo_cold_1(&v11))
  {
    v9 = v11;
    goto LABEL_5;
  }

  CFDictionarySetValue(*(DerivedStorage + 88), v6, Instance);
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = 0;
  *a3 = Instance;
LABEL_5:
  os_unfair_lock_unlock((DerivedStorage + 80));
LABEL_11:
  CFRelease(v6);
  return v9;
}

uint64_t remoteRemakerTrackInfo_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigRemoteRemakerTrackInfoID = result;
  return result;
}

void *remoteRemakerTrackInfo_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void remoteRemakerTrackInfo_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *remoteWriter_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigAssetWriterRemote %p retainCount: %ld%s allocator: %p>", a1, v5, v6, v7);
  return Mutable;
}

void remoteWriter_AddNativeTrack(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v7 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< RemakerRemote >>>>", 4394, v3);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 2002873972, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "MediaType", a2);
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          if (a3)
          {
            *a3 = int64;
          }
        }

        else
        {
          remoteWriter_AddNativeTrack_cold_1(&v10);
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteWriter_AddAudioTrackWithCompression(uint64_t a1, const void *a2, size_t a3, const void *a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v14 = qword_1ED4CBE28;
    v15 = v7;
    v16 = 4294954511;
    v17 = 4477;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v16, "<<<< RemakerRemote >>>>", v17, v15);
    return;
  }

  if (!a2)
  {
    v14 = qword_1ED4CBE28;
    v15 = v7;
    v16 = 4294954516;
    v17 = 4480;
    goto LABEL_5;
  }

  v18 = remoteRemakerFamily_CreateXPCMessage(a1, 2002875491, &xdict);
  v19 = xdict;
  if (v18)
  {
    goto LABEL_25;
  }

  xpc_dictionary_set_data(xdict, "AudioDestASBD", a2, 0x28uLL);
  if (a3 && a4)
  {
    xpc_dictionary_set_data(v19, "AudioDestChannelLayout", a4, a3);
  }

  if (FigXPCMessageSetCFDictionary())
  {
LABEL_25:
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v23 = 0;
    if (!a6)
    {
LABEL_14:
      if (!FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          if (a7)
          {
            *a7 = int64;
          }
        }

        else
        {
          remoteWriter_AddAudioTrackWithCompression_cold_2(&v24);
        }
      }

      goto LABEL_19;
    }

    if (remoteWriter_AddAudioTrackWithCompression_cold_1(a6, &v23, &v24, &v25))
    {
      v20 = v24;
      goto LABEL_14;
    }

    v20 = 0;
  }

LABEL_19:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (v20)
  {
    CFRelease(v20);
  }
}

void remoteWriter_AddAudioTrackWithPresetCompression(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v9 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v7 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< RemakerRemote >>>>", 4539, v4);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 2002875504, &v9) && !FigXPCMessageSetCFString() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        if (a4)
        {
          *a4 = int64;
        }
      }

      else
      {
        remoteWriter_AddAudioTrackWithPresetCompression_cold_1(&v10);
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteWriter_AddVideoTrackWithCompression(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, _DWORD *a11)
{
  v11 = *a9;
  v12 = *(a9 + 2);
  remoteWriter_AddVideoTrackWithCompressionAndMediaType(a1, a2, a3, a4, 0x76696465u, a5, a6, a7, a8, &v11, a10, a11);
}

void remoteWriter_SetTrackProperty(uint64_t a1, int a2, const void *a3, const __CFArray *a4)
{
  cf = 0;
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954511;
    v12 = 4745;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< RemakerRemote >>>>", v12, v10);
    return;
  }

  if (!a3)
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954516;
    v12 = 4747;
    goto LABEL_5;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 2003989616, &xdict))
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    if (!FigXPCMessageSetCFString() && (!CFEqual(a3, @"AssetWriterTrack_Metadata") || !FigRemote_CreateMetadataBinaryPListData(a4, *MEMORY[0x1E695E480], &cf)) && !FigXPCMessageSetCFObject())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }
}

void remoteWriter_CopyTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFAllocator *a4, CFTypeRef *a5)
{
  xdict = 0;
  v27 = 0;
  cf[1] = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v11 = qword_1ED4CBE28;
    v12 = v5;
    v13 = 4294954511;
    v14 = 4798;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v13, "<<<< RemakerRemote >>>>", v14, v12);
    return;
  }

  if (!a2)
  {
    v11 = qword_1ED4CBE28;
    v12 = v5;
    v13 = 4294954516;
    v14 = 4801;
    goto LABEL_3;
  }

  if (!a3)
  {
    v11 = qword_1ED4CBE28;
    v12 = v5;
    v13 = 4294954516;
    v14 = 4804;
    goto LABEL_3;
  }

  if (!a5)
  {
    v11 = qword_1ED4CBE28;
    v12 = v5;
    v13 = 4294954516;
    v14 = 4807;
    goto LABEL_3;
  }

  if (CFEqual(a3, @"AssetWriterTrack_PixelBufferPool"))
  {
    if (!frr_CopyTrackInfo(a1, a2, &v27))
    {
      v15 = *(v27 + 2);
      if (v15)
      {
        *a5 = CFRetain(v15);
      }

      else
      {
        v24 = 0;
        cf[0] = 0;
        pixelBufferAttributes = 0;
        v23 = 0;
        v21 = 0;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v16 && !v16(a1, a2, 0x1F0B52818, a4, cf))
        {
          v17 = FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary(cf[0], &v24, &v23);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (!v17)
          {
            if (FigCreatePixelBufferAttributesWithIOSurfaceSupport())
            {
              if (v24)
              {
                CFRelease(v24);
              }

              if (v23)
              {
                CFRelease(v23);
              }
            }

            else
            {
              if (v23)
              {
                CFRelease(v23);
              }

              v23 = 0;
              v18 = CVPixelBufferPoolCreate(a4, v24, pixelBufferAttributes, &v21);
              if (v24)
              {
                CFRelease(v24);
              }

              if (pixelBufferAttributes)
              {
                CFRelease(pixelBufferAttributes);
              }

              if (v18)
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, pixelBufferAttributes, v23);
              }

              else
              {
                v19 = v21;
                *(v27 + 2) = v21;
                if (v19)
                {
                  CFRetain(v19);
                  v20 = v21;
                }

                else
                {
                  v20 = 0;
                }

                *a5 = v20;
              }
            }
          }
        }
      }
    }
  }

  else if (!remoteRemakerFamily_CreateXPCMessage(a1, 2003985264, &xdict))
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    if (!FigXPCMessageSetCFString() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      FigXPCMessageCopyCFObject();
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (v27)
  {
    CFRelease(v27);
  }
}

void remoteWriter_BeginSession(uint64_t a1, __int128 *a2)
{
  v9 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v5 = qword_1ED4CBE28;
    v6 = v2;
    v7 = 4294954511;
    v8 = 4937;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< RemakerRemote >>>>", v8, v6);
    return;
  }

  if ((*(a2 + 3) & 0x1D) != 1)
  {
    v5 = qword_1ED4CBE28;
    v6 = v2;
    v7 = 4294954516;
    v8 = 4939;
    goto LABEL_5;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 2003985011, &v9) && !FigXPCMessageSetCMTime())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
}

void remoteWriter_AddSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  aSurface = 0;
  xdict = 0;
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954511;
    v10 = 4975;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< RemakerRemote >>>>", v10, v8);
    return;
  }

  if (!a3)
  {
    v7 = qword_1ED4CBE28;
    v8 = v3;
    v9 = 4294954516;
    v10 = 4977;
    goto LABEL_3;
  }

  if (!frr_CopyTrackInfo(a1, a2, &cf))
  {
    if (FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer())
    {
      *(cf + 4) = 0;
    }

    else
    {
      *(cf + 4) = (v17 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      v11 = remoteRemakerFamily_CreateXPCMessage(a1, 2003984755, &xdict);
      v12 = xdict;
      if (!v11)
      {
        xpc_dictionary_set_int64(xdict, "TrackID", a2);
        if (!FigXPCMessageSetAndConsumeVMData())
        {
          XPCObject = IOSurfaceCreateXPCObject(aSurface);
          xpc_dictionary_set_value(v12, "IOSurface", XPCObject);
          FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }
}

void remoteWriter_AddPixelBuffer(uint64_t a1, uint64_t a2, __CVBuffer *a3, __int128 *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  aSurface = 0;
  xdict = 0;
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954511;
    v12 = 5047;
LABEL_7:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< RemakerRemote >>>>", v12, v10);
    return;
  }

  if (!a3)
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954516;
    v12 = 5049;
    goto LABEL_7;
  }

  if ((*(a4 + 3) & 0x1D) != 1)
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954516;
    v12 = 5051;
    goto LABEL_7;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 2003984752, &xdict))
  {
    v13 = xdict;
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    if (frr_shouldUseFigPixelBufferMemorySharing_onceToken != -1)
    {
      remoteWriter_AddPixelBuffer_cold_1();
    }

    if (CVPixelBufferGetIOSurface(a3))
    {
      if (!FigPixelBufferOriginSetPixelBufferInXPCMessage())
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!CVPixelBufferGetIOSurface(a3))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (frr_CopyTrackInfo(a1, a2, &cf))
      {
        goto LABEL_23;
      }

      if (FigRemote_CreateSerializedAtomDataAndSurfaceForPixelBuffer())
      {
        *(cf + 4) = 0;
      }

      else
      {
        *(cf + 4) = (v19 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        if (!FigXPCMessageSetAndConsumeVMData())
        {
          XPCObject = IOSurfaceCreateXPCObject(aSurface);
          xpc_dictionary_set_value(v13, "IOSurface", XPCObject);
LABEL_15:
          v21 = *a4;
          v22 = *(a4 + 2);
          if (!FigXPCMessageSetCMTime())
          {
            FigXPCRemoteClientSendSyncMessage();
          }
        }
      }
    }
  }

LABEL_23:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL remoteWriter_IsTrackQueueAboveHighWaterLevel(uint64_t a1, int a2)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, xdict, v7);
    return 0;
  }

  else
  {
    v4 = !remoteRemakerFamily_CreateXPCMessage(a1, 2003988840, &xdict) && (xpc_dictionary_set_int64(xdict, "TrackID", a2), !FigXPCRemoteClientSendSyncMessageCreatingReply()) && xpc_dictionary_get_BOOL(0, "IsTrackQueueAboveHighWaterLevelOut");
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }

  return v4;
}

void remoteWriter_MarkEndOfDataForTrack(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v6 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v5 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954511, "<<<< RemakerRemote >>>>", 5223, v2);
  }

  else
  {
    remoteWriter_MarkEndOfDataForTrack_cold_1(a1, &v6, v3, &v7);
  }
}

void remoteWriter_EndSession(uint64_t a1, __int128 *a2)
{
  v9 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v5 = qword_1ED4CBE28;
    v6 = v2;
    v7 = 4294954511;
    v8 = 5253;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< RemakerRemote >>>>", v8, v6);
    return;
  }

  if ((*(a2 + 3) & 0x1D) != 1)
  {
    v5 = qword_1ED4CBE28;
    v6 = v2;
    v7 = 4294954516;
    v8 = 5255;
    goto LABEL_5;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 2003985779, &v9) && !FigXPCMessageSetCMTime())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
}

void remoteWriter_Finish(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    v2 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 4294954511, "<<<< RemakerRemote >>>>", 5284, v1);
  }

  else
  {
    remoteWriter_Finish_cold_1();
  }
}

void remoteWriter_FinishAsync(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    v2 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 4294954511, "<<<< RemakerRemote >>>>", 5310, v1);
  }

  else
  {
    remoteWriter_FinishAsync_cold_1();
  }
}

void remoteWriter_BeginPass(uint64_t a1, int a2, uint64_t a3)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v6 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954511, "<<<< RemakerRemote >>>>", 5338, v3);
  }

  else
  {
    if (!remoteRemakerFamily_CreateXPCMessage(a1, 2003985008, &xdict))
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      if (!FigXPCMessageSetCFDictionary())
      {
        FigXPCRemoteClientSendSyncMessage();
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
  }
}

void remoteWriter_EndPass(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v6 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v5 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954511, "<<<< RemakerRemote >>>>", 5372, v2);
  }

  else
  {
    remoteWriter_EndPass_cold_1(a1, &v6, v3, &v7);
  }
}

void remoteWriter_AddCaptionTrack(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v14 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v10 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954511, "<<<< RemakerRemote >>>>", 4697, v5);
  }

  else
  {
    v11 = remoteRemakerFamily_CreateXPCMessage(a1, 2003001712, &v14);
    v12 = v14;
    if (!v11 && !FigXPCMessageSetCFDictionary())
    {
      xpc_dictionary_set_uint64(v12, "MediaType", a2);
      xpc_dictionary_set_uint64(v12, "MediaSubType", a3);
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          if (a5)
          {
            *a5 = int64;
          }
        }

        else
        {
          remoteWriter_AddCaptionTrack_cold_1(&v15);
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteWriter_CopyFormatWriterTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  cf = 0;
  xdict = 0;
  v14 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v10 = qword_1ED4CBE28;
    v11 = v5;
    v12 = 4294954511;
    v13 = 2736;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v12, "<<<< RemakerRemote >>>>", v13, v11);
    return;
  }

  if (!a3)
  {
    v10 = qword_1ED4CBE28;
    v11 = v5;
    v12 = 4294954516;
    v13 = 2738;
    goto LABEL_5;
  }

  if (!remoteRemakerFamily_CreateXPCMessage(a1, 1719104624, &xdict))
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    if (!FigXPCMessageSetCFString() && !FigXPCRemoteClientSendSyncMessageCreatingReply() && !FigXPCMessageCopyCFObject())
    {
      if (!CFEqual(a3, @"FormatDescriptionArray"))
      {
LABEL_16:
        *a5 = v14;
        goto LABEL_17;
      }

      if (!FigRemote_CreateFormatDescriptionCollectionFromPList())
      {
        v14 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        goto LABEL_16;
      }
    }
  }

LABEL_17:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }
}

void remoteWriter_Flush(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    v2 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 4294954511, "<<<< RemakerRemote >>>>", 5400, v1);
  }

  else
  {
    remoteWriter_Flush_cold_1();
  }
}

void remoteWriter_AddTaggedPixelBufferGroup(uint64_t a1, int a2, OpaqueCMTaggedBufferGroup *a3, __int128 *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954511;
    v12 = 5127;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< RemakerRemote >>>>", v12, v10);
    return;
  }

  if (!a3)
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954516;
    v12 = 5129;
    goto LABEL_3;
  }

  if ((*(a4 + 3) & 0x1D) != 1)
  {
    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294954516;
    v12 = 5131;
    goto LABEL_3;
  }

  if (CMTaggedBufferGroupGetCount(a3) >= 1)
  {
    v13 = 0;
    while (CMTaggedBufferGroupGetCVPixelBufferAtIndex(a3, v13))
    {
      if (++v13 >= CMTaggedBufferGroupGetCount(a3))
      {
        goto LABEL_12;
      }
    }

    v9 = qword_1ED4CBE28;
    v10 = v4;
    v11 = 4294951171;
    v12 = 5135;
    goto LABEL_3;
  }

LABEL_12:
  if (!remoteRemakerFamily_CreateXPCMessage(a1, 2003988583, &xdict))
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    if (!FigXPCMessageSetCMTime())
    {
      if (frr_shouldUseFigPixelBufferMemorySharing_onceToken != -1)
      {
        frr_CreateEmptyWrapper_cold_2();
      }

      if (!FigPixelBufferOriginSetTaggedBufferGroupInXPCMessage())
      {
        FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
}

void remoteWriter_AddVideoTrackWithCompressionAndMediaType(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, _DWORD *a12)
{
  v26 = 0;
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v17 = qword_1ED4CBE28;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294954511, "<<<< RemakerRemote >>>>", 4593, v12);
  }

  else
  {
    v21 = a5;
    v18 = remoteRemakerFamily_CreateXPCMessage(a1, 2004251747, &v26);
    v19 = v26;
    if (!v18)
    {
      xpc_dictionary_set_int64(v26, "Width", a2);
      xpc_dictionary_set_int64(v19, "Height", a3);
      if (!FigXPCMessageSetCFDictionary())
      {
        xpc_dictionary_set_uint64(v19, "MediaType", v21);
        xpc_dictionary_set_uint64(v19, "VideoCodecType", a6);
        if (!FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFDictionary())
        {
          v23 = *a10;
          v24 = *(a10 + 2);
          if (!FigXPCMessageSetCMTime() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
          {
            int64 = xpc_dictionary_get_int64(xdict, "TrackIDOut");
            if (int64)
            {
              if (a12)
              {
                *a12 = int64;
              }
            }

            else
            {
              remoteWriter_AddVideoTrackWithCompressionAndMediaType_cold_1(&v23);
            }
          }
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }
}

void remoteRemakerFamily_storeSandboxRegistration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = *(DerivedStorage + 128);
  if (Mutable || (Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]), (*(DerivedStorage + 128) = Mutable) != 0))
  {
    if (a2)
    {

      CFSetAddValue(Mutable, a2);
    }
  }

  else
  {
    remoteRemakerFamily_storeSandboxRegistration_cold_1(0, v5, v6, v7, v8, v9, v10, v11, v12, v13, SHIDWORD(v13), vars0);
  }
}

void OUTLINED_FUNCTION_2_107()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_5_75()
{

  return FigXPCRemoteClientSendSyncMessage();
}

uint64_t PKDKeyManagerCreateKeyRequestForKeyID(CFDictionaryRef *a1, void *a2, CFDictionaryRef theDict, const void *a4, void *a5)
{
  v37 = 0;
  v38 = 0;
  cf = 0;
  v36 = 0;
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962B10]);
  v11 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AF0]);
  v12 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AB0]);
  v13 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962B20]);
  v34 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AD8]);
  if (!v11)
  {
    v30 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AC8]);
    if (v30)
    {
      v14 = CFRetain(v30);
    }

    else
    {
      v14 = 0;
    }

    v31 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AC0]);
    if (v31)
    {
      v32 = CFRetain(v31);
    }

    else
    {
      v32 = 0;
    }

    v37 = v32;
    if (a4)
    {
      v33 = CFRetain(a4);
    }

    else
    {
      v33 = 0;
    }

    cf = v33;
    if (v32)
    {
      goto LABEL_4;
    }

LABEL_61:
    PKDKeyManagerCreateKeyRequestForKeyID_cold_5(&v39);
LABEL_67:
    v28 = v39;
    goto LABEL_40;
  }

  if (PKDCopyInfoFromPackagedPersistentKey(v11, 0, &v37, &cf, &v36))
  {
    PKDKeyManagerCreateKeyRequestForKeyID_cold_1(&v39);
    v14 = 0;
    goto LABEL_67;
  }

  v14 = 0;
  if (!v37)
  {
    goto LABEL_61;
  }

LABEL_4:
  if (!cf)
  {
    PKDKeyManagerCreateKeyRequestForKeyID_cold_4(&v39);
    goto LABEL_67;
  }

  if (v13)
  {
    v15 = CFGetTypeID(v13);
    if (v15 != CFDataGetTypeID())
    {
      PKDKeyManagerCreateKeyRequestForKeyID_cold_2(&v39);
      goto LABEL_67;
    }
  }

  if (!a5)
  {
    PKDKeyManagerCreateKeyRequestForKeyID_cold_3(&v39);
    goto LABEL_67;
  }

  *a5 = 0;
  FigCFDictionaryGetInt32IfPresent();
  FigSimpleMutexLock();
  KeyRequestForEntryInternal = keyManager_copyEntryForKeyIDInternal(a1, a2, 0, &v38);
  if (KeyRequestForEntryInternal)
  {
    goto LABEL_62;
  }

  v17 = *(v38 + 4);
  *(v38 + 4) = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v18 = v37;
  v19 = *(v38 + 5);
  *(v38 + 5) = v37;
  if (v18)
  {
    CFRetain(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(v38 + 6);
  v21 = cf;
  *(v38 + 6) = cf;
  if (v21)
  {
    CFRetain(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  KeyRequestForEntryInternal = keyManager_createKeyRequestForEntryInternal(a1, v38, v37, cf, v14, Value, v36, 0, v13, v34, a5);
  if (KeyRequestForEntryInternal)
  {
LABEL_62:
    v28 = KeyRequestForEntryInternal;
  }

  else
  {
    v22 = v37;
    v23 = cf;
    v24 = a1[6];
    a1[6] = v37;
    if (v22)
    {
      CFRetain(v22);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    v25 = a1[7];
    a1[7] = v23;
    if (v23)
    {
      CFRetain(v23);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    v26 = a1[8];
    a1[8] = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    v27 = a1[10];
    a1[10] = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    v28 = 0;
  }

  FigSimpleMutexUnlock();
LABEL_40:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v28;
}

uint64_t keyManager_copyEntryForKeyIDInternal(CFDictionaryRef *a1, void *key, int a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    keyManager_copyEntryForKeyIDInternal_cold_5(context);
    return context[0];
  }

  if (!key)
  {
    keyManager_copyEntryForKeyIDInternal_cold_4(context);
    return context[0];
  }

  if (!a4)
  {
    keyManager_copyEntryForKeyIDInternal_cold_3(context);
    return context[0];
  }

  *a4 = 0;
  Value = CFDictionaryGetValue(a1[11], key);
  if (Value)
  {
    Instance = CFRetain(Value);
    if (a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    Instance = 0;
    if (a3)
    {
LABEL_17:
      if (Instance)
      {
        v11 = 0;
        *a4 = Instance;
        return v11;
      }

      keyManager_copyEntryForKeyIDInternal_cold_2(context);
      return context[0];
    }
  }

  if (Instance)
  {
    goto LABEL_17;
  }

  *context = xmmword_1E748D9C8;
  if (keyManagerEntry_getTypeID_once != -1)
  {
    dispatch_once_f(&keyManagerEntry_getTypeID_once, context, CFRuntimeClassRegisterOnce);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFRetain(a1);
    v10 = CFRetain(key);
    v11 = 0;
    *(Instance + 128) = 0;
    *(Instance + 24) = v10;
    *(Instance + 80) = 0;
    *(Instance + 88) = 0;
    *(Instance + 56) = 0;
    *(Instance + 176) = 0;
    *(Instance + 168) = 1;
    *(Instance + 184) = 1;
    *(Instance + 136) = Instance + 128;
  }

  else
  {
    keyManager_copyEntryForKeyIDInternal_cold_1(context);
    v11 = context[0];
  }

  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v11)
  {
    CFDictionarySetValue(a1[11], key, Instance);
    goto LABEL_17;
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  return v11;
}

uint64_t keyManager_createKeyRequestForEntryInternal(uint64_t a1, void *a2, const __CFData *a3, CFArrayRef theArray, const void *a5, const void *a6, const void *a7, unsigned int a8, const void *a9, const void *a10, void *a11)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a8 > 5)
  {
    keyManager_createKeyRequestForEntryInternal_cold_14(v41);
    return v41[0];
  }

  if (((1 << a8) & 0x16) != 0)
  {
    if (!a7)
    {
      return 4294955146;
    }
  }

  else if (((1 << a8) & 0x21) != 0)
  {
    if (!a5)
    {
      return 4294955146;
    }
  }

  else
  {
    if (a7)
    {
      keyManager_createKeyRequestForEntryInternal_cold_1(v41);
      return v41[0];
    }

    if (a5)
    {
      keyManager_createKeyRequestForEntryInternal_cold_2(v41);
      return v41[0];
    }
  }

  if (!a1)
  {
    keyManager_createKeyRequestForEntryInternal_cold_13(v41);
    return v41[0];
  }

  if (!a3)
  {
    keyManager_createKeyRequestForEntryInternal_cold_12(v41);
    return v41[0];
  }

  if (!a11)
  {
    keyManager_createKeyRequestForEntryInternal_cold_11(v41);
    return v41[0];
  }

  *a11 = 0;
  if (!a2)
  {
    goto LABEL_17;
  }

  if (a2[2] != a1)
  {
    keyManager_createKeyRequestForEntryInternal_cold_3(v41);
    return v41[0];
  }

  v19 = keyManager_ensureMovieIDInternal(a1, a3, theArray);
  if (v19)
  {
    return v19;
  }

  if (a2[8])
  {
    keyManager_createKeyRequestForEntryInternal_cold_4(v41);
    return v41[0];
  }

LABEL_17:
  v20 = a5;
  if (a8 >= 5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, v37);
  }

  v21 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    keyManager_createKeyRequestForEntryInternal_cold_9(v41);
LABEL_74:
    v31 = 0;
    v26 = 0;
    v27 = 0;
    v18 = v41[0];
    goto LABEL_52;
  }

  v38 = CFDictionaryCreateMutable(v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v38)
  {
    keyManager_createKeyRequestForEntryInternal_cold_8(v41);
    goto LABEL_74;
  }

  UInt64 = FigCFNumberCreateUInt64();
  if (!UInt64)
  {
    keyManager_createKeyRequestForEntryInternal_cold_7(v41);
    v31 = 0;
    v26 = 0;
    v18 = v41[0];
    v27 = v38;
    goto LABEL_52;
  }

  if (((1 << a8) & 0x16) != 0)
  {
    if (a7)
    {
      CFDictionarySetValue(Mutable, @"igoeg", a7);
      goto LABEL_28;
    }

    keyManager_createKeyRequestForEntryInternal_cold_6(v41);
LABEL_81:
    v31 = 0;
    v18 = v41[0];
    v27 = v38;
    v26 = UInt64;
    goto LABEL_52;
  }

  if (((1 << a8) & 0x21) != 0)
  {
    if (v20)
    {
      v23 = @"HJN6grNt";
      v24 = Mutable;
      v25 = v20;
LABEL_30:
      CFDictionarySetValue(v24, v23, v25);
      goto LABEL_31;
    }

    keyManager_createKeyRequestForEntryInternal_cold_5(v41);
    goto LABEL_81;
  }

LABEL_28:
  v25 = *(a1 + 104);
  if (v25)
  {
    v23 = @"lGxB4ky";
    v24 = Mutable;
    goto LABEL_30;
  }

LABEL_31:
  CFDictionarySetValue(Mutable, @"Y7bdIsnh7", a3);
  if (theArray)
  {
    CFDictionarySetValue(Mutable, @"P5h3ZgzLxs", theArray);
  }

  v26 = UInt64;
  if (a2 && a2[9])
  {
    FigCFDictionarySetInt64();
  }

  v27 = v38;
  if (a9)
  {
    CFDictionarySetValue(Mutable, @"LBV3vEsw", a9);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, @"xNJu5eepP", a6);
  }

  if (a10)
  {
    CFDictionarySetValue(Mutable, @"mDCRHTmtTKJ", a10);
  }

  CFDictionarySetValue(Mutable, @"aMII4QYJ", UInt64);
  FigCFDictionarySetInt32();
  v28 = **(a1 + 32);
  if (v28 == 3)
  {
    v29 = TnhfdPSFlg(Mutable, v38);
LABEL_46:
    v18 = v29;
    if (v29)
    {
      v31 = 0;
    }

    else
    {
      FigCFDictionaryGetInt64IfPresent();
      Value = CFDictionaryGetValue(v38, @"yN1lNULD2GD");
      if (Value)
      {
        v31 = CFRetain(Value);
      }

      else
      {
        v31 = 0;
      }

      v18 = 0;
    }

    goto LABEL_52;
  }

  if (v28 == 2)
  {
    v29 = pC3lVfLuVJLMz(Mutable, v38);
    goto LABEL_46;
  }

  v31 = 0;
  v18 = 4294955137;
LABEL_52:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EAF17448 >= 2)
    {
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (!v18)
  {
    if (((1 << a8) & 0x31) == 0 || !a2)
    {
      v18 = 0;
      *a11 = v31;
      return v18;
    }

    a2[8] = 0;
    keyManager_createKeyRequestForEntryInternal_cold_10(928, v41);
    v18 = v41[0];
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v18;
}

uint64_t PKDKeyManagerSetUsedForLowValueDecryptionForKeyID(CFDictionaryRef *a1, void *a2, char a3)
{
  cf = 0;
  if (a2)
  {
    FigSimpleMutexLock();
    v6 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
    if (!v6)
    {
      *(cf + 96) = a3;
    }

    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    PKDKeyManagerSetUsedForLowValueDecryptionForKeyID_cold_1(&v9);
    return v9;
  }

  return v6;
}

uint64_t PKDKeyManagerEnsureAndCopyLowValueKeyAndIVForKeyID(CFDictionaryRef *a1, void *a2, void *a3, void *a4)
{
  v11 = 0;
  if (a2)
  {
    FigSimpleMutexLock();
    v8 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &v11);
    if (!v8)
    {
      v8 = keyManager_ensureAndCopyLowValueKeyAndIVForEntryInternal(a1, v11, a3, a4);
    }

    v9 = v8;
    FigSimpleMutexUnlock();
  }

  else
  {
    PKDKeyManagerEnsureAndCopyLowValueKeyAndIVForKeyID_cold_1(&v12);
    return v12;
  }

  return v9;
}

uint64_t PKDKeyManagerSetKeyRequestResponseForKeyID(uint64_t a1, void *a2, const void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (dword_1EAF17448)
  {
    HIBYTE(v24) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    PKDKeyManagerSetKeyRequestResponseForKeyID_cold_2(v26);
    return v26[0];
  }

  if (!a3)
  {
    PKDKeyManagerSetKeyRequestResponseForKeyID_cold_1(v26);
    return v26[0];
  }

  FigSimpleMutexLock();
  v7 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!v7)
  {
    v8 = cf;
    if (!*(cf + 8) || *(cf + 7))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
      if (!v7)
      {
        if (!*(a1 + 112))
        {
LABEL_16:
          v20 = 0;
          goto LABEL_17;
        }

LABEL_13:
        v11 = *(a1 + 120);
        if (v11)
        {
          v12 = *(a1 + 96);
          v13 = *(a1 + 80);
          v15 = *(a1 + 56);
          v14 = *(a1 + 64);
          v16 = *(a1 + 48);
          ID = PKDAPIProviderGetID(*(a1 + 32));
          v18 = *(a1 + 72);
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v19)
          {
            v19(v11, v16, v12, v13, v14, v15, ID, v18);
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v9 = *(cf + 96);
      v10 = *(cf + 80);
      *(cf + 7) = a3;
      CFRetain(a3);
      if (*(v8 + 80))
      {
        v7 = keyManager_processOnlineKeyInternal(a1, v8, 2);
        if (v7)
        {
          goto LABEL_24;
        }

        JE2f6WCx();
        v8[8] = 0;
      }

      if (v10)
      {
LABEL_12:
        *(a1 + 112) = 1;
        goto LABEL_13;
      }

      if (v9)
      {
        v7 = keyManager_ensureAndCopyLowValueKeyAndIVForEntryInternal(a1, v8, 0, 0);
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        keyManager_ensureDecryptContextForEntryInternal(a1, v8, 0);
        if (!v7)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_24:
  v20 = v7;
LABEL_17:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

__CFString *PKDAPIProviderGetID(int *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*a1 == 2)
  {
    return @"F19BF03B-7470-41A4-9655-86D078307D59";
  }

  if (*a1 == 3)
  {
    return @"EC396D13-FB13-4993-9D0D-71518ACF3D6F";
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

uint64_t PKDKeyManagerIsDecryptContextAvailableForKeyID(CFDictionaryRef *a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerIsDecryptContextAvailableForKeyID_cold_2(&v8);
    return v8;
  }

  if (!a2)
  {
    PKDKeyManagerIsDecryptContextAvailableForKeyID_cold_1(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  v4 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if (*(cf + 9))
    {
LABEL_5:
      v5 = 0;
      goto LABEL_6;
    }

    if (*(cf + 8))
    {
      if (*(cf + 7))
      {
        goto LABEL_5;
      }
    }

    else if (*(cf + 11))
    {
      goto LABEL_5;
    }

    v5 = 4294955138;
  }

LABEL_6:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}