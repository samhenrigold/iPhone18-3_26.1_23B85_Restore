uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    v5 = *(DerivedStorage + 8);
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    v9 = *(a2 + 32);
    v4(v8, v5);
  }

  return 0;
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_RemoveAllActions(uint64_t a1)
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

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, uint64_t a2, double a3, double a4)
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

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, uint64_t a2, double a3, double a4)
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

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_BeginScene(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *(a2 + 296);
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, a1);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 128);
          if (v9)
          {
            v9(Value);
          }
        }
      }
    }
  }

  v10 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    return 4294954508;
  }

  v13 = *(v12 + 376);
  if (!v13)
  {
    return 4294954514;
  }

  return v13(v10, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_EndScene(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *(a2 + 296);
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, a1);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 136);
          if (v9)
          {
            v9(Value);
          }
        }
      }
    }
  }

  v10 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    return 4294954508;
  }

  v13 = *(v12 + 384);
  if (!v13)
  {
    return 4294954514;
  }

  return v13(v10, a2);
}

uint64_t RegisterFigCaptionRendererAVFLayoutRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void FigLoadAVFDylib(uint64_t result, uint64_t a2)
{
  if (FigLoadAVFDylib_loadAVFoundationOnce != -1)
  {
    FigLoadAVFDylib_cold_1();
  }
}

void *__FigLoadAVFDylib_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 4);
  FigLoadAVFDylib_avfDylib = result;
  return result;
}

uint64_t CreatePesPrivateForLPCM(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x138uLL, 0x10B0040459D684BuLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *v4 = v4 + 38;
  v4[2] = v4 + 308;
  v4[3] = 4;
  v4[4] = LPCMCheckHeader;
  v4[5] = LPCMCompareHeaders;
  v4[6] = LPCMGetSamplesPerFrame;
  v4[7] = LPCMGetSampleFrequency;
  v4[8] = LPCMGetFrameSize;
  a1[105] = PesLPCMProcessData;
  a1[106] = PesLPCMCleanPrivateData;
  a1[107] = PesLPCMDeletePrivateData;
  a1[6] = v4;
  return result;
}

void PesLPCMDeletePrivateData(uint64_t a1)
{
  MPEGAudioCleanPrivateData(*(a1 + 48));
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

uint64_t caprp_FigCaptionGroupConverterOutputCallbackTX3G(uint64_t a1, __int128 *a2, CFMutableArrayRef *a3)
{
  if (FigCaptionGroupGetSliceCount() && !FigSampleBufferCreateForCaptionGroup())
  {
    if (*a3)
    {
      CFArrayRemoveAllValues(*a3);
      Mutable = *a3;
LABEL_6:
      CFArrayAppendValue(Mutable, 0);
      return 0;
    }

    Mutable = CFArrayCreateMutable(a3[1], 1, MEMORY[0x1E695E9C0]);
    *a3 = Mutable;
    if (Mutable)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t caprp_FigCaptionGroupConverterOutputCallbackWebVTT(uint64_t a1, __int128 *a2, CFMutableArrayRef *a3)
{
  if (FigCaptionGroupGetSliceCount() && !FigSampleBufferCreateForCaptionGroup())
  {
    if (*a3)
    {
      CFArrayRemoveAllValues(*a3);
      Mutable = *a3;
LABEL_6:
      CFArrayAppendValue(Mutable, 0);
      return 0;
    }

    Mutable = CFArrayCreateMutable(a3[1], 1, MEMORY[0x1E695E9C0]);
    *a3 = Mutable;
    if (Mutable)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t caprp_sendSubtitleSampleForSampleBuffer(const void *a1, opaqueCMSampleBuffer *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
    goto LABEL_3;
  }

  if (!a2)
  {
    goto LABEL_3;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v8 = CMGetAttachment(a2, *MEMORY[0x1E69604B0], 0);
  memset(&v40, 0, sizeof(v40));
  CMSampleBufferGetOutputPresentationTimeStamp(&v40, a2);
  memset(&v39, 0, sizeof(v39));
  CMSampleBufferGetOutputDuration(&v39, a2);
  v38 = 0;
  v34 = *MEMORY[0x1E695F050];
  v35 = *(MEMORY[0x1E695F050] + 16);
  v36 = *MEMORY[0x1E695F050];
  v37 = v35;
  if (MediaSubType)
  {
    *(DerivedStorage + 192) = MediaSubType;
  }

  else
  {
    MediaSubType = *(DerivedStorage + 192);
  }

  if (CMFormatDescriptionGetMediaType(FormatDescription) == 1668310898)
  {
    if (!v8)
    {
      FigSimpleMutexLock();
      v9 = *(DerivedStorage + 120);
      if (v9)
      {
        v10 = CFRetain(v9);
      }

      else
      {
        v10 = 0;
      }

      FigSimpleMutexUnlock();
      SubtitleSampleForWebVTTSampleBuffer = caprp_createSubtitleSampleForCaptionGroupSampleBuffer(a1, a2, *(DerivedStorage + 136), *(DerivedStorage + 88), &cf);
      goto LABEL_38;
    }

LABEL_41:
    LOBYTE(v38) = 0;
    v14 = 1;
    v36 = v34;
    v37 = v35;
    goto LABEL_42;
  }

  if ((CMFormatDescriptionGetMediaType(FormatDescription) == 1935832172 || CMFormatDescriptionGetMediaType(FormatDescription) == 1937072756) && CMFormatDescriptionGetMediaSubType(FormatDescription) == 1937010800)
  {
    if (v8)
    {
      goto LABEL_41;
    }

    FigSimpleMutexLock();
    v11 = *(DerivedStorage + 120);
    if (v11)
    {
      v10 = CFRetain(v11);
    }

    else
    {
      v10 = 0;
    }

    FigSimpleMutexUnlock();
    SubtitleSampleForWebVTTSampleBuffer = caprp_createSubtitleSampleForMPEG4Part30SampleBuffer(a1, a2, *(DerivedStorage + 136), *(DerivedStorage + 88), &cf);
LABEL_38:
    v16 = SubtitleSampleForWebVTTSampleBuffer;
    if (v10)
    {
      CFRelease(v10);
    }

    if (v16)
    {
      goto LABEL_3;
    }

    goto LABEL_41;
  }

  if (WebVTTIsFormatDescriptionForWebVTT(FormatDescription))
  {
    if (v8)
    {
      goto LABEL_41;
    }

    if (!*(DerivedStorage + 112) && WebVTTSampleBufferParserCreate((DerivedStorage + 112)))
    {
      goto LABEL_3;
    }

    FigSimpleMutexLock();
    v12 = *(DerivedStorage + 120);
    if (v12)
    {
      v10 = CFRetain(v12);
    }

    else
    {
      v10 = 0;
    }

    FigSimpleMutexUnlock();
    SubtitleSampleForWebVTTSampleBuffer = caprp_createSubtitleSampleForWebVTTSampleBuffer(a1, *(DerivedStorage + 112), a2, v10, *(DerivedStorage + 136), *(DerivedStorage + 88), &cf);
    goto LABEL_38;
  }

  LOBYTE(v42) = 0;
  if (v8)
  {
    v13 = 0;
    LOBYTE(v38) = 0;
    v14 = 1;
    v36 = v34;
    v37 = v35;
  }

  else
  {
    if (caprp_createSubtitleSampleForTX3GSampleBuffer(a1, a2, *(DerivedStorage + 136), &cf, &v42, &v38 + 1, &v38, &v36))
    {
      goto LABEL_3;
    }

    v14 = HIBYTE(v38);
    if (!HIBYTE(v38))
    {
      if (*(DerivedStorage + 106))
      {
        if (v42)
        {
          *(DerivedStorage + 106) = 0;
          v14 = 1;
          goto LABEL_42;
        }

        v43 = v40;
        caprp_sendSubtitleSample(a1, MediaSubType, &v43.value, 1, 0);
        *(DerivedStorage + 106) = 0;
      }

      if (!*(DerivedStorage + 144))
      {
        goto LABEL_3;
      }

      v14 = 0;
      goto LABEL_42;
    }

    v13 = v42 == 0;
  }

  *(DerivedStorage + 106) = v13;
LABEL_42:
  if (*(DerivedStorage + 2))
  {
    *(DerivedStorage + 2) = 0;
    CMFormatDescriptionGetMediaType(FormatDescription);
    if (dword_1EAF17730)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (subrp_SampleBufferShouldBeDisplayed(a2))
  {
    if (subrp_isSubTypeFourCCToBeRepresentedNatively(*(DerivedStorage + 184), MediaSubType))
    {
      if (*(DerivedStorage + 168))
      {
        v18 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v18)
        {
          v19 = v18;
          v20 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00400775FAF6uLL);
          if (v20)
          {
            v21 = v20;
            if (a1)
            {
              v22 = CFRetain(a1);
            }

            else
            {
              v22 = 0;
            }

            *v21 = v22;
            *(v21 + 1) = *(DerivedStorage + 168);
            *(v21 + 2) = CFRetain(v19);
            *(v21 + 3) = CFRetain(a2);
            *(v21 + 32) = v40;
            v21[56] = v14;
            dispatch_async_f(*(DerivedStorage + 8), v21, caprpNativeCallback);
          }

          else
          {
            caprp_sendSubtitleSampleForSampleBuffer_cold_1();
          }

          v28 = v19;
LABEL_65:
          CFRelease(v28);
        }
      }
    }

    else if (*(DerivedStorage + 152))
    {
      v23 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v23)
      {
        v24 = v23;
        v25 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040556ECBE3uLL);
        if (v25)
        {
          v26 = v25;
          if (a1)
          {
            v27 = CFRetain(a1);
          }

          else
          {
            v27 = 0;
          }

          *v26 = v27;
          *(v26 + 1) = *(DerivedStorage + 152);
          *(v26 + 2) = CFRetain(v24);
          v29 = cf;
          if (cf)
          {
            v29 = CFRetain(cf);
          }

          *(v26 + 3) = v29;
          *(v26 + 32) = v40;
          v26[80] = v14;
          v26[81] = v38;
          v30 = v37;
          *(v26 + 88) = v36;
          *(v26 + 104) = v30;
          dispatch_async_f(*(DerivedStorage + 8), v26, caprpCommonCallback);
        }

        else
        {
          caprp_sendSubtitleSampleForSampleBuffer_cold_2();
        }

        v28 = v24;
        goto LABEL_65;
      }
    }
  }

LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  return FigSimpleMutexUnlock();
}

uint64_t caprp_resetOutput(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, LODWORD(v20.value), v20.timescale);
  }

  else if (*(DerivedStorage + 200))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      v6 = malloc_type_calloc(1uLL, 0x18uLL, 0xE004023458D36uLL);
      if (v6)
      {
        v14 = v6;
        if (a2)
        {
          v15 = CFRetain(a2);
        }

        else
        {
          v15 = 0;
        }

        v16 = *(DerivedStorage + 200);
        *v14 = v15;
        v14[1] = v16;
        v14[2] = CFRetain(v5);
        dispatch_async_f(*(DerivedStorage + 8), v14, caprpFlushCallback);
      }

      else
      {
        caprp_resetOutput_cold_1(0, v7, v8, v9, v10, v11, v12, v13, v19, v20.value, SHIDWORD(v20.value), v20.timescale);
      }

      CFRelease(v5);
    }
  }

  else
  {
    v18 = *(DerivedStorage + 192);
    figSubtitleRenderPipelineGetCurrentTimeFromTimebase(DerivedStorage, &v20);
    caprp_sendSubtitleSample(a2, v18, &v20.value, *(DerivedStorage + 106), 0);
    *(DerivedStorage + 106) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t figCaptionRenderPipelineFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 2) = 1;
  figCaptionRenderPipelineInvalidate_Internal(a1, 0);
  FigTextSampleBufferTearDownState(DerivedStorage + 40);
  v3 = *(DerivedStorage + 288);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 288) = 0;
  }

  v4 = *(DerivedStorage + 296);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 296) = 0;
  }

  v5 = *(DerivedStorage + 248);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 248) = 0;
  }

  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 160) = 0;
  }

  v7 = *(DerivedStorage + 176);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 176) = 0;
  }

  v8 = *(DerivedStorage + 208);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 208) = 0;
  }

  v9 = *(DerivedStorage + 8);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 8) = 0;
  }

  if (*(DerivedStorage + 120))
  {
    FigSimpleMutexLock();
    v10 = *(DerivedStorage + 120);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 120) = 0;
    }

    FigSimpleMutexUnlock();
  }

  v11 = *(DerivedStorage + 136);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 136) = 0;
  }

  v12 = *(DerivedStorage + 304);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 304) = 0;
  }

  v13 = *(DerivedStorage + 184);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 184) = 0;
  }

  WebVTTSampleBufferParserDestroy(*(DerivedStorage + 112));
  FigSimpleMutexDestroy();
  *(DerivedStorage + 128) = 0;
  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 16) = 0;
  return result;
}

__CFString *figCaptionRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRenderPipeline %p>", a1);
  return Mutable;
}

void figCaptionRenderPipelineCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v9 = DerivedStorage, *DerivedStorage))
  {
    v10 = qword_1EAF17728;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954444, "<<<< FigCaptionRenderPipeline >>>>", 1812, v4);
    return;
  }

  if (CFEqual(a2, @"CRPP_TextMarkupArray"))
  {
    FigSimpleMutexLock();
    v11 = v9[15];
    if (v11)
    {
      *a4 = CFRetain(v11);
    }

    FigSimpleMutexUnlock();
    return;
  }

  if (CFEqual(a2, @"CRPP_ExtendedLanguageTagString"))
  {
    v12 = v9[17];
    if (!v12)
    {
LABEL_12:
      *a4 = v12;
      return;
    }

LABEL_11:
    v12 = CFRetain(v12);
    goto LABEL_12;
  }

  if (CFEqual(@"HDRCrossTalker", a2))
  {
    v12 = v9[38];
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  FigRenderPipelineGetFigBaseObject();

  CMBaseObjectCopyProperty(v13, a2, a3, a4);
}

void figCaptionRenderPipelineSetProperty(const void *a1, const void *a2, void *a3)
{
  values = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v8 = DerivedStorage, *DerivedStorage))
  {
    v9 = qword_1EAF17728;
    v10 = v3;
    v11 = 1748;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954444, "<<<< FigCaptionRenderPipeline >>>>", v11, v10);
    return;
  }

  if (!CFEqual(a2, @"CRPP_TextMarkupArray"))
  {
    if (CFEqual(a2, @"CRPP_TextHighlightArray"))
    {
      if (a3)
      {
        v14 = CFGetTypeID(a3);
        if (v14 != CFArrayGetTypeID())
        {
          v9 = qword_1EAF17728;
          v10 = v3;
          v11 = 1773;
          goto LABEL_4;
        }
      }

      else
      {
        values = *MEMORY[0x1E695E738];
      }

      v16 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigTextAttributeSubtitleTextHighlightArray, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v19 = *(v8 + 192);
      figSubtitleRenderPipelineGetCurrentTimeFromTimebase(v8, &v21);
      caprp_sendSubtitleSample(a1, v19, &v21.value, 0, v16);
      if (!v16)
      {
        return;
      }

LABEL_40:
      CFRelease(v16);
      return;
    }

    if (CFEqual(a2, @"CRPP_ExtendedLanguageTagString"))
    {
      if (!a3)
      {
        v16 = *(v8 + 136);
        *(v8 + 136) = 0;
        if (!v16)
        {
          return;
        }

        goto LABEL_40;
      }

      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        v9 = qword_1EAF17728;
        v10 = v3;
        v11 = 1779;
        goto LABEL_4;
      }

      v16 = *(v8 + 136);
      *(v8 + 136) = a3;
    }

    else
    {
      if (CFEqual(a2, @"DisplayNonForcedSubtitles"))
      {
        if (!a3 || (v17 = CFBooleanGetTypeID(), v17 == CFGetTypeID(a3)))
        {
          *(v8 + 144) = CFBooleanGetValue(a3);
          return;
        }

        v9 = qword_1EAF17728;
        v10 = v3;
        v11 = 1788;
        goto LABEL_4;
      }

      if (!CFEqual(a2, @"HDRCrossTalker"))
      {
        v20 = *(v8 + 24);

        FigRenderPipelineSetProperty(v20, a2, a3);
        return;
      }

      if (!a3)
      {
        v16 = *(v8 + 304);
        *(v8 + 304) = 0;
        if (!v16)
        {
          return;
        }

        goto LABEL_40;
      }

      v18 = FigCrossTalkerGetTypeID();
      if (v18 != CFGetTypeID(a3))
      {
        v9 = qword_1EAF17728;
        v10 = v3;
        v11 = 1796;
        goto LABEL_4;
      }

      v16 = *(v8 + 304);
      *(v8 + 304) = a3;
    }

    CFRetain(a3);
    if (!v16)
    {
      return;
    }

    goto LABEL_40;
  }

  if (a3)
  {
    v12 = CFArrayGetTypeID();
    if (v12 != CFGetTypeID(a3))
    {
      v9 = qword_1EAF17728;
      v10 = v3;
      v11 = 1759;
      goto LABEL_4;
    }
  }

  FigSimpleMutexLock();
  v13 = *(v8 + 120);
  *(v8 + 120) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  FigSimpleMutexUnlock();
}

void figCaptionRenderPipelineInvalidate_Internal(const void *a1, int a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v5 = DerivedStorage;
      if (*(DerivedStorage + 16))
      {
        FigSimpleMutexLock();
        if (*v5)
        {

          FigSimpleMutexUnlock();
        }

        else
        {
          if (a2)
          {
            if (*(v5 + 200))
            {
              v6 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v6)
              {
                v7 = v6;
                (*(v5 + 200))(a1, v6);
                CFRelease(v7);
              }
            }

            else
            {
              memset(&v17, 0, sizeof(v17));
              figSubtitleRenderPipelineGetCurrentTimeFromTimebase(v5, &v17);
              caprp_sendSubtitleSample(a1, *(v5 + 192), &v17.value, *(v5 + 106), 0);
              *(v5 + 106) = 0;
            }
          }

          *v5 = 1;
          FigSimpleMutexUnlock();
          if (*(v5 + 32))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterRemoveListener();
            CFRelease(*(v5 + 32));
            *(v5 + 32) = 0;
          }

          if (*(v5 + 24))
          {
            FigRenderPipelineGetFigBaseObject();
            if (v8)
            {
              v9 = v8;
              v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
              if (v10)
              {
                v10(v9);
              }
            }

            CFRelease(*(v5 + 24));
            *(v5 + 24) = 0;
          }

          v11 = *(v5 + 216);
          if (v11)
          {
            CFRelease(v11);
            *(v5 + 216) = 0;
          }

          v12 = *(v5 + 224);
          if (v12)
          {
            CFRelease(v12);
            *(v5 + 224) = 0;
          }

          v13 = *(v5 + 232);
          if (v13)
          {
            CFRelease(v13);
            *(v5 + 232) = 0;
          }

          v14 = *(v5 + 240);
          if (v14)
          {
            CFRelease(v14);
            *(v5 + 240) = 0;
          }

          v15 = *(v5 + 272);
          if (v15)
          {
            CFRelease(v15);
            *(v5 + 272) = 0;
          }

          v16 = *(v5 + 256);
          if (v16)
          {
            CFRelease(v16);
            *(v5 + 256) = 0;
          }
        }
      }
    }
  }
}

void caprp_sendSubtitleSample(const void *a1, int a2, __int128 *a3, char a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (subrp_isSubTypeFourCCToBeRepresentedNatively(*(DerivedStorage + 184), a2))
  {
    if (!*(DerivedStorage + 168))
    {
      return;
    }

    v11 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v13 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00400775FAF6uLL);
    if (!v13)
    {
      caprp_sendSubtitleSample_cold_1(0, v14, v15, v16, v17, v18, v19, v20, v44, v45, SHIDWORD(v45), v46);
      goto LABEL_21;
    }

    v21 = v13;
    if (a1)
    {
      v22 = CFRetain(a1);
    }

    else
    {
      v22 = 0;
    }

    v34 = *(DerivedStorage + 168);
    *v21 = v22;
    v21[1] = v34;
    v21[2] = CFRetain(v12);
    v21[3] = 0;
    v35 = *(a3 + 2);
    *(v21 + 2) = *a3;
    v21[6] = v35;
    *(v21 + 56) = a4;
    v36 = *(DerivedStorage + 8);
    v37 = caprpNativeCallback;
    v38 = v21;
  }

  else
  {
    if (!*(DerivedStorage + 152))
    {
      return;
    }

    v23 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v23)
    {
      return;
    }

    v12 = v23;
    v24 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040556ECBE3uLL);
    if (!v24)
    {
      caprp_sendSubtitleSample_cold_2(0, v25, v26, v27, v28, v29, v30, v31, v44, v45, SHIDWORD(v45), v46);
      goto LABEL_21;
    }

    v32 = v24;
    if (a1)
    {
      v33 = CFRetain(a1);
    }

    else
    {
      v33 = 0;
    }

    v39 = *(DerivedStorage + 152);
    *v32 = v33;
    *(v32 + 1) = v39;
    *(v32 + 2) = CFRetain(v12);
    if (a5)
    {
      v40 = CFRetain(a5);
    }

    else
    {
      v40 = 0;
    }

    *(v32 + 3) = v40;
    v41 = *a3;
    *(v32 + 6) = *(a3 + 2);
    *(v32 + 2) = v41;
    v32[80] = a4;
    v42 = MEMORY[0x1E695F050];
    v32[81] = 0;
    v43 = v42[1];
    *(v32 + 88) = *v42;
    *(v32 + 104) = v43;
    v36 = *(DerivedStorage + 8);
    v37 = caprpCommonCallback;
    v38 = v32;
  }

  dispatch_async_f(v36, v38, v37);
LABEL_21:

  CFRelease(v12);
}

void caprpNativeCallback(uint64_t a1)
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

void caprpCommonCallback(uint64_t a1)
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

uint64_t caprp_isSubtitleOverHDRVideo(uint64_t a1)
{
  cf = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 304))
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

void caprpFlushCallback(CFTypeRef *a1)
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

CFDictionaryRef OUTLINED_FUNCTION_1_163@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeCopyAsDictionary(&time, v8);
}

uint64_t OUTLINED_FUNCTION_5_107()
{
  *(v1 - 136) = 0;
  *(v1 - 128) = 0;
  *(v1 - 120) = 0;
  return v0;
}

CMTime *OUTLINED_FUNCTION_6_96()
{
  *(v1 - 160) = 0;
  *(v1 - 152) = 0;
  *(v1 - 144) = 0;

  return CMSampleBufferGetDuration((v1 - 160), v0);
}

void LPCMResyncForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
}

void LPCMDestroyForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v3 = *(a1 + 88);
    if (*(v1 + 24))
    {
      CFRelease(*(v1 + 24));
      v3 = *(a1 + 88);
    }

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    free(v3);
    *(a1 + 88) = 0;
  }
}

uint64_t LPCMReadBitRate(uint64_t a1, void *a2)
{
  if (!*(a1 + 40))
  {
    return 4294954323;
  }

  if (!a2)
  {
    return 4294954516;
  }

  result = 0;
  *a2 = *(*(a1 + 88) + 12);
  return result;
}

void OUTLINED_FUNCTION_0_172()
{
  *v1 = 0;
  v1[2] = v0;
  v1[3] = 1;
  v1[8] = 2;
}

uint64_t FigTTMLSpanCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a4)
  {
    FigTTMLSpanCreate_cold_2(&v16);
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
    v15 = 201;
LABEL_14:
    FigTTMLBodyCreate_cold_1(v15, &v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v11;
  if (!v11)
  {
    v15 = 204;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  FigTTMLParseNode(a2, figTTMLSpan_ConsumeChildNode, a3);
  v13 = v12;
  if (!v12)
  {
    *a4 = 0;
  }

  return v13;
}

uint64_t figTTMLSpan_ConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theString = 0;
  value = 0;
  CFGetAllocator(*a2);
  InlineClassNode = FigTTMLParseAndCreateInlineClassNode();
  if (InlineClassNode || (CFGetAllocator(*a2), InlineClassNode = FigTTMLParseAndCreateAnimationClassNode(), InlineClassNode))
  {
    v8 = InlineClassNode;
  }

  else
  {
    v10 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
    v8 = v10;
    if (a3 && !v10)
    {
      v8 = 0;
      *a3 = value;
      value = 0;
    }
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v8;
}

void figTTMLSpan_Finalize(uint64_t a1)
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

CFStringRef figTTMLSpan_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"span: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLSpan_CopyChildNodeArray(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
    result = 0;
    *a2 = ConcatenationOfTwoArrays;
  }

  else
  {
    figTTMLExtensions_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figTTMLSpan_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 5;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLSpan_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

BOOL LPCMCheckHeader(unsigned __int16 *a1)
{
  result = 0;
  v3 = __rev16(*a1);
  v4 = *(a1 + 2);
  v5 = v4 & 0xF;
  v6 = *(a1 + 3);
  v7 = v6 >> 6;
  if (v3 <= 4319)
  {
    if (v3 > 1919)
    {
      switch(v3)
      {
        case 1920:
          if (v7 == 1 && v5 == 1)
          {
            return 1;
          }

          result = 0;
          if ((v4 & 0xD0) != 0x10 || v7 != 1)
          {
            return result;
          }

          break;
        case 2880:
          if ((v7 == 1 && (v4 & 0xE0) == 128 || (v6 & 0x80u) != 0) && v5 == 1)
          {
            return 1;
          }

          result = 0;
          if ((v4 & 0xD0) != 0x10 || (v6 & 0x80000000) == 0)
          {
            return result;
          }

          break;
        case 3840:
          v10 = v5 == 1 && (v4 & 0xE0) == 160 && v7 == 1;
          v11 = v5 == 2 && v7 == 1;
          if (v10 || v11)
          {
            return 1;
          }

          result = 0;
          if ((v4 & 0xD0) != 0x10 || v7 != 1)
          {
            return result;
          }

          goto LABEL_102;
        default:
          return result;
      }

      if (v5 != 2)
      {
        return result;
      }

      return 1;
    }

    if (v3 == 960)
    {
      return (v4 & 0xD0) == 0x10 && v7 == 1 && v5 == 1;
    }

    if (v3 != 1440)
    {
      return result;
    }

    if ((v4 & 0xD0) == 0x10)
    {
      return (v6 & 0x80u) != 0 && v5 == 1;
    }

    return 0;
  }

  if (v3 > 8639)
  {
    switch(v3)
    {
      case 8640:
        if ((v4 & 0xE0) == 0x80)
        {
          return (v6 & 0x80u) != 0 && v5 == 2;
        }

        break;
      case 11520:
        v19 = v4 & 0xE0;
        if (v19 == 128)
        {
          if ((v6 & 0x80) != 0 && v5 == 3)
          {
            return 1;
          }
        }

        else if (v19 == 160 && (v6 & 0x80) != 0 && v5 == 2)
        {
          return 1;
        }

        result = 0;
        if ((v6 & 0x80) == 0)
        {
          return result;
        }

        goto LABEL_102;
      case 17280:
        if ((v4 & 0xE0) == 0x80)
        {
          return (v6 & 0x80u) != 0 && v5 == 3;
        }

        break;
      default:
        return result;
    }

    return 0;
  }

  switch(v3)
  {
    case 4320:
      if ((v4 & 0xE0) == 0x80)
      {
        return (v6 & 0x80u) != 0 && v5 == 1;
      }

      return 0;
    case 5760:
      if ((v4 & 0xE0) == 0xA0 && (v6 & 0x80) != 0 && v5 == 1)
      {
        return 1;
      }

      v17 = v7 == 1 && (v4 & 0xE0) == 128;
      v18 = v17 || (v6 & 0x80u) != 0;
      if (v18 && v5 == 2)
      {
        return 1;
      }

      result = 0;
      if ((v4 & 0xD0) != 0x10 || (v6 & 0x80000000) == 0)
      {
        return result;
      }

LABEL_102:
      if (v5 != 3)
      {
        return result;
      }

      return 1;
    case 7680:
      v8 = (v4 & 0xE0) == 160;
      if (v7 != 1)
      {
        v8 = 0;
      }

      if (v5 != 2)
      {
        v8 = 0;
      }

      v9 = v5 == 3 && v7 == 1;
      return v8 | v9;
  }

  return result;
}

uint64_t LPCMGetChannelLayout(uint64_t a1)
{
  v1 = (*(a1 + 2) >> 4) - 1;
  if (v1 > 0xA)
  {
    return 196610;
  }

  else
  {
    return dword_196E78FD8[v1];
  }
}

uint64_t LPCMGetBitsPerChannelSample(uint64_t a1)
{
  v1 = *(a1 + 3) >> 6;
  if (v1 == 3)
  {
    v2 = 24;
  }

  else
  {
    v2 = 16;
  }

  if (v1 == 2)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t LPCMGetSamplesPerFrame(unsigned __int16 *a1)
{
  v2 = __rev16(*a1);
  v3 = LPCMGetChannelLayout(a1);
  if (*(a1 + 3) >= 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v2 / (v4 * v3);
}

uint64_t LPCMGetSampleFrequency(uint64_t a1)
{
  v1 = *(a1 + 2) & 0xF;
  if (v1 == 5)
  {
    v2 = 192000;
  }

  else
  {
    v2 = 48000;
  }

  if (v1 == 4)
  {
    return 96000;
  }

  else
  {
    return v2;
  }
}

double PSLPCMCheckHeader(_BYTE *a1)
{
  if ((*a1 & 0xF8) == 0xA0)
  {
    return PSLPCMGetBytesPerFrame(a1, &v5);
  }

  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  if (!v3)
  {
    return PSLPCMGetBytesPerFrame(a1, &v5);
  }

  return result;
}

double PSLPCMGetBytesPerFrame(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  v12 = 0;
  PSLPCMGetSampleFrequency(a1, &v12);
  if (!v6)
  {
    v7 = *(a1 + 5);
    v8 = v12 / 0x258uLL + v12 / 0x258 * (v7 & 7);
    v9 = v7 >> 6;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v10 = 3 * v8;
        goto LABEL_7;
      }

      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954325, "mpeg2parser", 517, v2);
    }

    else if (!v9)
    {
      v10 = 2 * v8;
LABEL_7:
      *a2 = v10;
    }
  }

  return result;
}

void PSLPCMGetSampleFrequency(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  if ((*(a1 + 5) & 0x30) != 0)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954325, "mpeg2parser", 411, v2);
  }

  else
  {
    *a2 = 48000;
  }
}

__n128 FigPlaybackItemSegmentGetTimeMapping@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 68);
  *(a2 + 32) = *(a1 + 52);
  *(a2 + 48) = v2;
  v3 = *(a1 + 100);
  *(a2 + 64) = *(a1 + 84);
  *(a2 + 80) = v3;
  result = *(a1 + 20);
  v5 = *(a1 + 36);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t FigPlaybackItemSegmentCreate(int a1, __int128 *a2, const void *a3, const void *a4, const void *a5, void *a6)
{
  if (a6)
  {
    if (a1 != 1 && (a1 || a5))
    {
      FigPlaybackItemSegmentCreate_cold_1(&v22);
      return v22;
    }

    else
    {
      MEMORY[0x19A8D3660](&FigPlaybackItemSegmentGetTypeID_sFigPlaybackItemSegmentRegisterOnce, FigPlaybackItemSegment_initOnce);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v13 = Instance;
        *(Instance + 16) = a1;
        v14 = *a2;
        *(Instance + 36) = a2[1];
        *(Instance + 20) = v14;
        v15 = a2[2];
        v16 = a2[3];
        v17 = a2[4];
        *(Instance + 100) = a2[5];
        *(Instance + 84) = v17;
        *(Instance + 68) = v16;
        *(Instance + 52) = v15;
        if (a3)
        {
          v18 = CFRetain(a3);
        }

        else
        {
          v18 = 0;
        }

        v13[15] = v18;
        if (a4)
        {
          v19 = CFRetain(a4);
        }

        else
        {
          v19 = 0;
        }

        v13[16] = v19;
        if (a5)
        {
          v20 = CFRetain(a5);
        }

        else
        {
          v20 = 0;
        }

        result = 0;
        v13[17] = v20;
        *a6 = v13;
      }

      else
      {
        FigPlaybackItemSegmentCreate_cold_2(&v23);
        return v23;
      }
    }
  }

  else
  {
    FigPlaybackItemSegmentCreate_cold_3(&v24);
    return v24;
  }

  return result;
}

uint64_t FigPlaybackItemSegment_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlaybackItemSegmentID = result;
  return result;
}

double fpis_init(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void fpis_finalize(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    CFRelease(v2);
    a1[15] = 0;
  }

  v3 = a1[16];
  if (v3)
  {
    CFRelease(v3);
    a1[16] = 0;
  }

  v4 = a1[17];
  if (v4)
  {
    CFRelease(v4);
    a1[17] = 0;
  }
}

CFStringRef fpfis_copyFormattingDesc(uint64_t a1)
{
  v2 = FigCFCopyCompactDescription();
  if (fpfis_copyFormattingDesc_onceToken != -1)
  {
    fpfis_copyFormattingDesc_cold_1();
  }

  v3 = *MEMORY[0x1E695E480];
  if (*(a1 + 16))
  {
    v4 = @"I";
  }

  else
  {
    v4 = @"P";
  }

  v5 = *(a1 + 128);
  *&time.start.value = *(a1 + 20);
  time.start.epoch = *(a1 + 36);
  Seconds = CMTimeGetSeconds(&time.start);
  v7 = *(a1 + 36);
  *&time.start.value = *(a1 + 20);
  *&time.start.epoch = v7;
  *&time.duration.timescale = *(a1 + 52);
  CMTimeRangeGetEnd(&v16, &time);
  v8 = CMTimeGetSeconds(&v16);
  *&time.start.value = *(a1 + 68);
  time.start.epoch = *(a1 + 84);
  v9 = CMTimeGetSeconds(&time.start);
  v10 = *(a1 + 84);
  *&time.start.value = *(a1 + 68);
  *&time.start.epoch = v10;
  *&time.duration.timescale = *(a1 + 100);
  CMTimeRangeGetEnd(&v16, &time);
  v11 = CMTimeGetSeconds(&v16);
  if (fpfis_copyFormattingDesc_includeLoadedTimeRange)
  {
    v12 = v2;
  }

  else
  {
    v12 = &stru_1F0B1AFB8;
  }

  v13 = CFStringCreateWithFormat(v3, 0, @"[%@] %@: [%.3f, %.3f] [%.3f, %.3f] %@", v4, v5, *&Seconds, *&v8, *&v9, *&v11, v12);
  if (v2)
  {
    CFRelease(v2);
  }

  return v13;
}

uint64_t __fpfis_copyFormattingDesc_block_invoke()
{
  result = FigGetCFPreferenceBooleanWithDefault();
  fpfis_copyFormattingDesc_includeLoadedTimeRange = result;
  return result;
}

void FigCaptionRendererNodeFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 320);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 320) = 0;
  }

  v4 = *(DerivedStorage + 304);
  if (v4)
  {
    CFRelease(v4);
  }

  CGImageRelease(*(DerivedStorage + 296));
  *(DerivedStorage + 296) = 0;
  v5 = *(DerivedStorage + 288);
  if (v5)
  {
    *(DerivedStorage + 288) = 0;

    free(v5);
  }
}

__CFString *FigCaptionRendererNodeCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererNode: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererNode_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererNode <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, const void *a2, BOOL *a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  v7.length = CFArrayGetCount(v5);
  v7.location = 0;
  *a3 = CFArrayGetFirstIndexOfValue(v5, v7, a2) >= 0;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayAppendValue(*(DerivedStorage + 8), a2);
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, const void *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  v6.length = CFArrayGetCount(v3);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v6, a2);
  CFArrayRemoveValueAtIndex(v3, FirstIndexOfValue);
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayRemoveAllValues(*(DerivedStorage + 8));
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetViewport(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  if (!CGRectEqualToRect(*(DerivedStorage + 16), v11))
  {
    *(DerivedStorage + 16) = a2;
    *(DerivedStorage + 24) = a3;
    *(DerivedStorage + 32) = a4;
    *(DerivedStorage + 40) = a5;
    *(DerivedStorage + 313) = 1;
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 32);
  *a2 = *(DerivedStorage + 16);
  a2[1] = v4;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a2[3];
  v6 = *a2;
  v5 = a2[1];
  DerivedStorage[5] = a2[2];
  DerivedStorage[6] = v4;
  DerivedStorage[3] = v6;
  DerivedStorage[4] = v5;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage[6];
  v6 = DerivedStorage[3];
  v5 = DerivedStorage[4];
  a2[2] = DerivedStorage[5];
  a2[3] = v4;
  *a2 = v6;
  a2[1] = v5;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetCGBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 112) = a2;
  *(DerivedStorage + 120) = a3;
  *(DerivedStorage + 128) = a4;
  *(DerivedStorage + 136) = a5;
  v10 = 0.0;
  v11 = 0.0;
  if (*(DerivedStorage + 184) == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v11 = v12 / 100.0 * *(DerivedStorage + 128);
  }

  v32 = v11;
  if (*(DerivedStorage + 200) == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v10 = v13 / 100.0 * *(DerivedStorage + 128);
  }

  v14 = 0.0;
  if (*(DerivedStorage + 216) == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v14 = v15 / 100.0 * *(DerivedStorage + 136);
  }

  if (*(DerivedStorage + 232) == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v17 = *(DerivedStorage + 136);
    v18 = v16 / 100.0 * v17;
  }

  else
  {
    v17 = *(DerivedStorage + 136);
    v18 = 0.0;
  }

  v19.f64[0] = v32;
  v20 = *(DerivedStorage + 128) - v32 - v10;
  v19.f64[1] = v18;
  *(DerivedStorage + 144) = vaddq_f64(v19, *(DerivedStorage + 112));
  *(DerivedStorage + 160) = v20;
  *(DerivedStorage + 168) = v17 - v14 - v18;
  v21 = *(DerivedStorage + 8);
  if (CFArrayGetCount(v21) >= 1)
  {
    v22 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v21, v22);
      v24 = *(DerivedStorage + 144);
      v25 = *(DerivedStorage + 152);
      v26 = *(DerivedStorage + 160);
      v27 = *(DerivedStorage + 168);
      FigCaptionRendererNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v29 = *(ProtocolVTable + 16);
        if (v29)
        {
          v30 = *(v29 + 64);
          if (v30)
          {
            v30(ValueAtIndex, v24, v25, v26, v27);
          }
        }
      }

      ++v22;
    }

    while (CFArrayGetCount(v21) > v22);
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 128);
  *a2 = *(DerivedStorage + 112);
  a2[1] = v4;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetCGSize(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 256) = a2;
  *(DerivedStorage + 264) = a3;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetCGOrigin(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 240) = a2;
  *(DerivedStorage + 248) = a3;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[22] = a2;
  DerivedStorage[23] = a3;
  DerivedStorage[24] = a4;
  DerivedStorage[25] = a5;
  DerivedStorage[26] = a6;
  DerivedStorage[27] = a7;
  DerivedStorage[28] = a9;
  DerivedStorage[29] = a10;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 160);
  *a2 = *(DerivedStorage + 144);
  a2[1] = v4;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_PurgeImageCache(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 288);
  if (v2)
  {
    *(DerivedStorage + 288) = 0;
    free(v2);
    *(DerivedStorage + 272) = 0;
    *(DerivedStorage + 280) = 0;
  }

  CGImageRelease(*(DerivedStorage + 296));
  *(DerivedStorage + 296) = 0;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, CGImage *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CGImageRelease(*(DerivedStorage + 296));
  *(DerivedStorage + 296) = CGImageRetain(a2);
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 > 0x10000)
  {
    FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_5(&v14);
    return v14;
  }

  if (a3 > 0x10000)
  {
    FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_4(&v14);
    return v14;
  }

  if (a4 >= 0x11)
  {
    FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_3(&v14);
    return v14;
  }

  v8 = a4 * a3 * (a4 * a2);
  if (v8 >> 29)
  {
    FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_2(&v14);
    return v14;
  }

  v9 = DerivedStorage;
  v10 = *(DerivedStorage + 276) * *(DerivedStorage + 272) * *(DerivedStorage + 280);
  v11 = *(DerivedStorage + 288);
  if (v10 == a4 * a2 * a3)
  {
    bzero(v11, 4 * v8);
    return 0;
  }

  if (v11)
  {
    *(v9 + 288) = 0;
    free(v11);
    *(v9 + 272) = 0;
    *(v9 + 280) = 0;
  }

  if (v8)
  {
    v13 = malloc_type_calloc(4 * v8, 1uLL, 0xB2A22E01uLL);
    *(v9 + 288) = v13;
    if (!v13)
    {
      FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_1(&v14);
      return v14;
    }
  }

  result = 0;
  *(v9 + 272) = a2;
  *(v9 + 276) = a3;
  *(v9 + 280) = a4;
  return result;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 313) = a2;
  v4 = *(DerivedStorage + 8);
  if (CFArrayGetCount(v4) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
      FigCaptionRendererNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 232);
          if (v9)
          {
            v9(ValueAtIndex, a2);
          }
        }
      }

      ++v5;
    }

    while (CFArrayGetCount(v4) > v5);
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, BOOL *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = CFArrayGetCount(*(DerivedStorage + 320)) > 0;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 312) = 257;
  __asm { FMOV            V0.2D, #-1.0 }

  *(DerivedStorage + 240) = _Q0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v9 = *(ProtocolVTable + 16);
    if (v9)
    {
      v10 = *(v9 + 328);
      if (v10)
      {
        v10(a1);
      }
    }
  }

  v11 = *(DerivedStorage + 8);
  if (CFArrayGetCount(v11) >= 1)
  {
    v12 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v14 = CMBaseObjectGetProtocolVTable();
      if (v14)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *(v15 + 272);
          if (v16)
          {
            v16(ValueAtIndex);
          }
        }
      }

      ++v12;
    }

    while (CFArrayGetCount(v11) > v12);
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_Draw(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950096;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 328) && *(a2 + 754))
  {
    CGContextSaveGState(*(a2 + 320));
    v6 = *(MEMORY[0x1E695F050] + 16);
    v11.origin = *MEMORY[0x1E695F050];
    v11.size = v6;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v8 = *(ProtocolVTable + 16);
      if (v8)
      {
        v9 = *(v8 + 104);
        if (v9)
        {
          v9(a1, &v11);
        }
      }
    }

    CGContextSetRGBStrokeColor(*(a2 + 320), 1.0, 0.0, 1.0, 1.0);
    CGContextSetLineWidth(*(a2 + 320), 3.0);
    CGContextStrokeRect(*(a2 + 320), v11);
    CGContextRestoreGState(*(a2 + 320));
  }

  result = 0;
  *(v5 + 312) = 0;
  return result;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950096;
  }

  v4 = DerivedStorage;
  result = 0;
  *(v4 + 313) = 0;
  return result;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 4294950096;
  }
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v5 = *(ProtocolVTable + 16);
    if (v5)
    {
      v6 = *(v5 + 312);
      if (v6)
      {
        v11[0] = v8;
        v11[1] = v9;
        v12 = v10;
        v6(v3, v11);
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayAppendValue(*(DerivedStorage + 320), a2);
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_RemoveAllActions(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayRemoveAllValues(*(DerivedStorage + 320));
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 320);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 320) = 0;
  }

  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *(DerivedStorage + 320) = v5;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, BOOL *a2, CGFloat a3, CGFloat a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(MEMORY[0x1E695F050] + 16);
  v18.origin = *MEMORY[0x1E695F050];
  v18.size = v9;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v11 = *(ProtocolVTable + 16);
    if (v11)
    {
      v12 = *(v11 + 104);
      if (v12)
      {
        v12(a1, &v18);
      }
    }
  }

  v17 = 0;
  *context = a3;
  *&context[1] = a4;
  v13 = *(DerivedStorage + 8);
  v19.length = CFArrayGetCount(v13);
  v19.location = 0;
  CFArrayApplyFunction(v13, v19, SelectChildNodes, context);
  if (!v17)
  {
    v20.x = a3;
    v20.y = a4;
    *(DerivedStorage + 328) = CGRectContainsPoint(v18, v20);
  }

  if (a2)
  {
    if (v17)
    {
      v14 = 1;
    }

    else
    {
      v21.x = a3;
      v21.y = a4;
      v14 = CGRectContainsPoint(v18, v21);
    }

    *a2 = v14;
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, BOOL *a2, CGFloat a3, CGFloat a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(MEMORY[0x1E695F050] + 16);
  v18.origin = *MEMORY[0x1E695F050];
  v18.size = v9;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v11 = *(ProtocolVTable + 16);
    if (v11)
    {
      v12 = *(v11 + 104);
      if (v12)
      {
        v12(a1, &v18);
      }
    }
  }

  v17 = 0;
  *context = a3;
  *&context[1] = a4;
  v13 = *(DerivedStorage + 8);
  v19.length = CFArrayGetCount(v13);
  v19.location = 0;
  CFArrayApplyFunction(v13, v19, UnselectChildNodes, context);
  if (!v17)
  {
    v20.x = a3;
    v20.y = a4;
    if (CGRectContainsPoint(v18, v20))
    {
      *(DerivedStorage + 328) = 0;
    }
  }

  if (a2)
  {
    if (v17)
    {
      v14 = 1;
    }

    else
    {
      v21.x = a3;
      v21.y = a4;
      v14 = CGRectContainsPoint(v18, v21);
    }

    *a2 = v14;
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetPCTContextData(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 304);
  *(DerivedStorage + 304) = a2;
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

uint64_t updateDisplayChildNodes(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 304);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

uint64_t nodeComparatorZIndex(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0.0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v5 = *(ProtocolVTable + 16);
    if (v5)
    {
      v6 = *(v5 + 264);
      if (v6)
      {
        v6(a1, &v13);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v7 = CMBaseObjectGetProtocolVTable();
  v8.n128_u64[0] = 0;
  if (v7)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = *(v9 + 264);
      if (v10)
      {
        v10(a2, &v12, v8);
        v8.n128_u64[0] = v12;
      }
    }
  }

  if (v13 < v8.n128_f64[0])
  {
    return -1;
  }

  else
  {
    return v13 > v8.n128_f64[0];
  }
}

uint64_t SelectChildNodes(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result && (v8 = *(result + 16), result += 16, (v7 = v8) != 0))
  {
    v9 = *(v7 + 352);
    if (v9)
    {
      result = v9(a1, &v10, v4, v5);
      LOBYTE(v9) = v10 != 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  *(a2 + 16) = (*(a2 + 16) != 0) | v9 & 1;
  return result;
}

uint64_t UnselectChildNodes(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result && (v8 = *(result + 16), result += 16, (v7 = v8) != 0))
  {
    v9 = *(v7 + 360);
    if (v9)
    {
      result = v9(a1, &v10, v4, v5);
      LOBYTE(v9) = v10 != 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  *(a2 + 16) = (*(a2 + 16) != 0) | v9 & 1;
  return result;
}

uint64_t RegisterFigCaptionRendererNodeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t fsd_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fsd_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E7492DD0;
  block[4] = &v3;
  if (fsd_ensureClientEstablished_sFigSessionDataRemoteClientSetupOnce != -1)
  {
    dispatch_once(&fsd_ensureClientEstablished_sFigSessionDataRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntryRemote(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, CFDictionaryRef *a6, double a7)
{
  v8 = fsd_ensureClientEstablished();
  if (v8 || (v8 = FigXPCCreateBasicMessage(), v8) || (v8 = FigXPCMessageSetCFString(), v8) || (v8 = FigXPCMessageSetCFObject(), v8) || (xpc_dictionary_set_double(0, "duration", a7), v8 = FigXPCMessageSetCFURL(), v8) || (v8 = FigXPCMessageSetCFDictionary(), v8) || (v8 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v8) || (v8 = FigXPCMessageCopyCFArray(), v8) || (v8 = FigXPCMessageCopyCFDictionary(), v8))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

void __fsd_ensureClientEstablished_block_invoke(uint64_t a1)
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

uint64_t FigSubtitleRendererNotificationBarrier(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t FigSubtitleRendererDrawSubtitleText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v9[2] = *(a3 + 32);
  v10 = *(a3 + 48);
  return v6(a1, a2, v9);
}

uint64_t FigSubtitleRendererLayout(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  v11 = a3[5];
  v15[4] = a3[4];
  v15[5] = v11;
  v15[6] = a3[6];
  v12 = a3[1];
  v15[0] = *a3;
  v15[1] = v12;
  v13 = a3[3];
  v15[2] = a3[2];
  v15[3] = v13;
  return v10(a1, a2, v15, a4, a5);
}

void MediaDataChunkWriterRelease(const __CFAllocator **ptr)
{
  if (ptr)
  {
    v3 = *ptr;
    v2 = ptr[1];
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ptr[1], i);
          if (ValueAtIndex)
          {
            CFAllocatorDeallocate(v3, ValueAtIndex);
          }
        }
      }

      v8 = ptr[1];
      if (v8)
      {
        CFRelease(v8);
      }
    }

    v9 = ptr[5];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = ptr[3];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = ptr[6];
    if (v11)
    {
      CFRelease(v11);
    }

    CFAllocatorDeallocate(v3, ptr);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t MediaDataChunkWriterAddTrack(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!a1)
  {
    MediaDataChunkWriterAddTrack_cold_4(&v15);
    return LODWORD(v15.value);
  }

  if (!a4)
  {
    MediaDataChunkWriterAddTrack_cold_3(&v15);
    return LODWORD(v15.value);
  }

  if (!a6)
  {
    MediaDataChunkWriterAddTrack_cold_2(&v15);
    return LODWORD(v15.value);
  }

  v12 = MEMORY[0x19A8CC720](*a1, 112, 0x108004067B5A0E7, 0);
  if (!v12)
  {
    MediaDataChunkWriterAddTrack_cold_1(&v15);
    return LODWORD(v15.value);
  }

  v13 = v12;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 32) = 0u;
  *v12 = a2;
  *(v12 + 8) = a4;
  *(v12 + 16) = a5;
  *(v12 + 72) = 0x100000;
  CMTimeMake(&v15, 1, 1);
  *(v13 + 76) = v15;
  *(v13 + 100) = 0;
  *(v13 + 104) = a3 & 1;
  CFArrayAppendValue(*(a1 + 8), v13);
  result = 0;
  *a6 = v13;
  return result;
}

double MediaDataChunkWriterTrackAppendSampleData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, size_t *a10, const __CFArray *a11, uint64_t a12)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a6 <= 0)
          {
            MediaDataChunkWriterTrackAppendSampleData_cold_5(&v16);
          }

          else if (a7 <= 0)
          {
            MediaDataChunkWriterTrackAppendSampleData_cold_4(&v16);
          }

          else if (a8)
          {
            if (a9 <= 0)
            {
              MediaDataChunkWriterTrackAppendSampleData_cold_2(&v16);
            }

            else if (a10)
            {
              v13 = 0;
              while (a10[v13])
              {
                if (a9 == ++v13)
                {
                  appendSampleDataOrSampleReference(a1, a2, a3, a4, 0, a5, a6, a7, a8, a9, a10, a11, a12);
                  return result;
                }
              }

              emitter = fig_log_get_emitter();

              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294949684, "< MediaDataChunkWriter >", 1238, v12);
            }

            else
            {
              MediaDataChunkWriterTrackAppendSampleData_cold_1(&v16);
            }
          }

          else
          {
            MediaDataChunkWriterTrackAppendSampleData_cold_3(&v16);
          }
        }

        else
        {
          MediaDataChunkWriterTrackAppendSampleData_cold_6(&v16);
        }
      }

      else
      {
        MediaDataChunkWriterTrackAppendSampleData_cold_7(&v16);
      }
    }

    else
    {
      MediaDataChunkWriterTrackAppendSampleData_cold_8(&v16);
    }
  }

  else
  {
    MediaDataChunkWriterTrackAppendSampleData_cold_9(&v16);
  }

  return result;
}

double MediaDataChunkWriterTrackAppendSampleReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9, const __CFArray *a10, uint64_t a11)
{
  if (a1)
  {
    if (a2)
    {
      if (a5 <= 0)
      {
        MediaDataChunkWriterTrackAppendSampleReference_cold_5(&v15);
      }

      else if (a6 <= 0)
      {
        MediaDataChunkWriterTrackAppendSampleReference_cold_4(&v15);
      }

      else if (a7)
      {
        if (a8 <= 0)
        {
          MediaDataChunkWriterTrackAppendSampleReference_cold_2(&v15);
        }

        else if (a9)
        {
          v12 = 0;
          while (a9[v12])
          {
            if (a8 == ++v12)
            {
              appendSampleDataOrSampleReference(a1, a2, 0, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11);
              return result;
            }
          }

          emitter = fig_log_get_emitter();

          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294949684, "< MediaDataChunkWriter >", 1279, v11);
        }

        else
        {
          MediaDataChunkWriterTrackAppendSampleReference_cold_1(&v15);
        }
      }

      else
      {
        MediaDataChunkWriterTrackAppendSampleReference_cold_3(&v15);
      }
    }

    else
    {
      MediaDataChunkWriterTrackAppendSampleReference_cold_6(&v15);
    }
  }

  else
  {
    MediaDataChunkWriterTrackAppendSampleReference_cold_7(&v15);
  }

  return result;
}

uint64_t MediaDataChunkWriterTrackStartNewChunk(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 105) = 1;
    }

    else
    {
      MediaDataChunkWriterTrackStartNewChunk_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    MediaDataChunkWriterTrackStartNewChunk_cold_2(&v4);
    return v4;
  }

  return result;
}

uint64_t MediaDataChunkWriterGetEntireLength(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {

        return getEndOffset(a1, a2, a3);
      }

      else
      {
        MediaDataChunkWriterGetEntireLength_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      MediaDataChunkWriterGetEntireLength_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MediaDataChunkWriterGetEntireLength_cold_3(&v6);
    return v6;
  }
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkSize(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3 < 0)
      {
        MediaDataChunkWriterTrackSetPreferredChunkSize_cold_1(&v4);
        return v4;
      }

      else
      {
        result = 0;
        *(a2 + 72) = a3;
      }
    }

    else
    {
      MediaDataChunkWriterTrackSetPreferredChunkSize_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MediaDataChunkWriterTrackSetPreferredChunkSize_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkSize(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = 0;
        *a3 = *(a2 + 72);
      }

      else
      {
        MediaDataChunkWriterTrackGetPreferredChunkSize_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      MediaDataChunkWriterTrackGetPreferredChunkSize_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MediaDataChunkWriterTrackGetPreferredChunkSize_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkDuration(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (!a1)
  {
    MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_4(&time1);
    return LODWORD(time1.value);
  }

  if (!a2)
  {
    MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_3(&time1);
    return LODWORD(time1.value);
  }

  if ((a3->flags & 0x1D) != 1)
  {
    MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_1(&time1);
    return LODWORD(time1.value);
  }

  time1 = **&MEMORY[0x1E6960CC0];
  v7 = *a3;
  if (CMTimeCompare(&time1, &v7) >= 1)
  {
    MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_2(&time1);
    return LODWORD(time1.value);
  }

  result = 0;
  v6 = *&a3->value;
  *(a2 + 92) = a3->epoch;
  *(a2 + 76) = v6;
  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkDuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = 0;
        v4 = *(a2 + 76);
        *(a3 + 16) = *(a2 + 92);
        *a3 = v4;
      }

      else
      {
        MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_3(&v7);
    return v7;
  }

  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkAlignment(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3 < 0)
      {
        MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_1(&v4);
        return v4;
      }

      else
      {
        result = 0;
        *(a2 + 100) = a3;
      }
    }

    else
    {
      MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkAlignment(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = 0;
        *a3 = *(a2 + 100);
      }

      else
      {
        MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t appendBlockBufferToSampleDataDestination(uint64_t a1, uint64_t a2, int a3, CMBlockBufferRef theBuffer, size_t offset, size_t a6)
{
  v6 = a6;
  if (a3 == 1)
  {
    if (a6)
    {
      while (1)
      {
        v13 = 0;
        lengthAtOffsetOut = 0;
        result = CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &v13);
        if (result)
        {
          break;
        }

        v12 = v6 >= lengthAtOffsetOut ? lengthAtOffsetOut : v6;
        lengthAtOffsetOut = v12;
        result = appendDataViaDataBuffer(a1, a2, v12);
        if (result)
        {
          break;
        }

        offset += lengthAtOffsetOut;
        v6 -= lengthAtOffsetOut;
        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else if (a3)
  {
    result = appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(a1, a2, 0);
    if (!result)
    {

      return appendBlockBufferReferenceToAggregateBBuf(a1, a2, theBuffer, offset, v6);
    }
  }

  else
  {
    result = appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(a1, a2, 0);
    if (!result)
    {
      result = appendAggregateBBufToByteStream(a1, a2);
      if (!result)
      {

        return appendBlockBufferToByteStream();
      }
    }
  }

  return result;
}

void mdcwMemPoolBBufSourceRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t OUTLINED_FUNCTION_12_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CMTime *time2, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a46, CMTime *time1, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t time1a)
{

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t FigCaptionRendererTimerStart(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 64));
  *(a1 + 72) = v2;
  if (v2)
  {
    v3 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_source_set_cancel_handler_f(*(a1 + 72), fcrTimerOnTimerCanceled);
    dispatch_source_set_event_handler_f(*(a1 + 72), fcrTimerDispatchFunctionCallback);
    dispatch_set_context(*(a1 + 72), v3);
    dispatch_source_set_timer(*(a1 + 72), 0, 1000000 * *(a1 + 36), 0);
    dispatch_resume(*(a1 + 72));
  }

  *(a1 + 33) = 0;
  return 0;
}

void fcrTimerOnTimerCanceled(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void fcrTimerDispatchFunctionCallback(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    if (*(v1 + 24))
    {
      v3 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v3)
      {
        v4 = v3;
        v2[3]();
        CFRelease(v4);
      }
    }

    CFRelease(v2);
  }
}

uint64_t FigCaptionRendererTimerStop(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 72);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 72) = 0;
    }
  }

  *(a1 + 33) = 1;
  return 0;
}

uint64_t FigCaptionRendererTimerCreate(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererTimerLocalGetTypeID_sRegisterFigCaptionRendererTimerOnce, RegisterFigCaptionRendererTimerClass);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 32) = 256;
  *(Instance + 36) = a1;
  snprintf(__str, 0x100uLL, "com.apple.coremedia.figfcrtimer.soQueue<%p>", Instance);
  *(Instance + 64) = dispatch_queue_create(__str, 0);
  if (a2 && a3 && (*(Instance + 24) = a2, v9 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(Instance + 16) = v9) == 0))
  {
    FigCaptionRendererTimerCreate_cold_1(Instance, __str);
    return *__str;
  }

  else
  {
    result = 0;
    *a4 = Instance;
  }

  return result;
}

uint64_t RegisterFigCaptionRendererTimerClass()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRendererTimerID = result;
  return result;
}

double FigCaptionRendererTimerInit(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FigCaptionRendererTimer_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 64) = 0;
  }
}

__CFString *FigCaptionRendererTimerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererTimer %p>", a1);
  return Mutable;
}

uint64_t FigSampleGeneratorServerStart()
{
  v3[0] = 1;
  v3[1] = HandleSampleGeneratorMessage;
  v3[2] = HandleNoReplyFigSampleGeneratorMessage;
  memset(&v3[3], 0, 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1107296256;
  block[2] = __FigSampleGeneratorServerStart_block_invoke;
  block[3] = &__block_descriptor_tmp_158;
  __copy_constructor_8_8_t0w8_pa0_45604_8_pa0_22587_16_pa0_57319_24_pa0_49646_32_pa0_60888_40(v2, v3);
  v2[6] = 0;
  if (FigSampleGeneratorServerStart_sFigSampleGeneratorServerOnce != -1)
  {
    dispatch_once(&FigSampleGeneratorServerStart_sFigSampleGeneratorServerOnce, block);
  }

  return FigSampleGeneratorServerStart_sFigSampleGeneratorServerStartError;
}

dispatch_queue_t __FigSampleGeneratorServerStart_block_invoke(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    v1 = FigXPCServerStart();
  }

  FigSampleGeneratorServerStart_sFigSampleGeneratorServerStartError = v1;
  result = dispatch_queue_create("com.apple.coremedia.samplegenerator.transport", 0);
  gFigSampleGeneratorServerCallbackQueue = result;
  return result;
}

void *__copy_constructor_8_8_t0w8_pa0_45604_8_pa0_22587_16_pa0_57319_24_pa0_49646_32_pa0_60888_40(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  return result;
}

uint64_t __FigServedSampleGeneratorObjectStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB7C8 = result;
  return result;
}

double FigServedSampleGeneratorObjectState_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void FigServedSampleGeneratorObjectState_Finalize(void *context)
{
  v2 = context[2];
  if (v2)
  {
    CFRelease(v2);
    context[2] = 0;
  }

  v3 = context[3];
  if (v3)
  {
    os_release(v3);
    context[3] = 0;
  }

  v4 = context[4];
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      CFDictionaryApplyFunction(v5, sampleBufferHandler_removeListenersApply, context);
    }
  }

  FigCFWeakReferenceStore();
  FigCFWeakReferenceStore();
  DestroySampleBufferHandler(context[4]);
  context[4] = 0;
}

__CFString *FigServedSampleGeneratorObjectState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigServedSampleGeneratorObjectState %p", a1);
  return Mutable;
}

uint64_t sampleBufferHandler_removeListenersApply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

void DestroySampleBufferHandler(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CMBufferQueueRemoveTrigger(*a1, v2);
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      CMBufferQueueReset(*a1);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      *(a1 + 40) = 0;
      xpc_release(v3);
    }

    FigSimpleMutexLock();
    v4 = *(a1 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 16) = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    FigSimpleMutexUnlock();
    v5 = *(a1 + 48);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 48) = 0;
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 56) = 0;
    }

    FigSimpleMutexDestroy();
    *(a1 + 24) = 0;
    v7 = *(a1 + 64);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 64) = 0;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

uint64_t sampleBufferGenerator_dataFailedCallback(uint64_t a1, uint64_t a2, uint64_t a3, opaqueCMSampleBuffer *a4)
{
  v5 = *(a2 + 32);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();

  return sampleBufferGenerator_sendDataFailedMessage(a4, v5);
}

uint64_t sampleBufferGenerator_sendDataFailedMessage(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  value = 0;
  xdict = 0;
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      if (CFDictionaryGetValueIfPresent(*(a2 + 16), a1, &value))
      {
        v6 = 0;
        CFNumberGetValue(value, kCFNumberSInt64Type, &v6);
        statusOut = FigXPCCreateBasicMessage();
        if (!statusOut)
        {
          xpc_dictionary_set_int64(xdict, "RequestID", v6);
          CMSampleBufferHasDataFailed(a1, &statusOut);
          xpc_dictionary_set_int64(xdict, "SampleBufferErrorReturn", statusOut);
          xpc_connection_send_message(*(a2 + 40), xdict);
          CFDictionaryRemoveValue(*(a2 + 16), a1);
        }
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, value, xdict);
        statusOut = v4;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      sampleBufferGenerator_sendDataFailedMessage_cold_1(&statusOut);
    }
  }

  else
  {
    sampleBufferGenerator_sendDataFailedMessage_cold_2(&statusOut);
  }

  return FigXPCRelease();
}

void sampleBufferGenerator_bufferQueue_dataReadyCallback(uint64_t a1)
{
  if (a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __sampleBufferGenerator_bufferQueue_dataReadyCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_26_0;
    block[4] = a1;
    dispatch_async(gFigSampleGeneratorServerCallbackQueue, block);
  }

  else
  {
    sampleBufferGenerator_bufferQueue_dataReadyCallback_cold_1();
  }
}

uint64_t sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  if (!a2)
  {
    sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_6(&v15);
    goto LABEL_24;
  }

  if (!a4)
  {
    sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_5(&v15);
    goto LABEL_24;
  }

  *(a4 + 24) = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 36) = *(a2 + 20);
  v7 = MEMORY[0x19A8D0E00](a3 + 48);
  v8 = MEMORY[0x19A8D0E00](a3 + 56);
  if (!(v7 | v8))
  {
    sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_4(&v15);
LABEL_24:
    v12 = v15;
    if (!v15)
    {
      return v12;
    }

    goto LABEL_15;
  }

  v9 = v8;
  if (FigFormatReaderServerIsObjectIDLocallyServed(*(a2 + 32)))
  {
    if (!FigXPCFormatReaderServerCopySampleCursorForID(*(a2 + 32), a4))
    {
      goto LABEL_6;
    }

LABEL_18:
    sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_1(&v15);
    goto LABEL_27;
  }

  if (FigFormatReaderXPCRemoteCopySampleCursorForObjectIDFromOtherProcess())
  {
    goto LABEL_18;
  }

LABEL_6:
  v10 = *(a2 + 40);
  if (v10)
  {
    if (FigFormatReaderServerIsObjectIDLocallyServed(v10))
    {
      if (!FigXPCFormatReaderServerCopySampleCursorForID(*(a2 + 40), (a4 + 28)))
      {
        goto LABEL_9;
      }
    }

    else if (!FigFormatReaderXPCRemoteCopySampleCursorForObjectIDFromOtherProcess())
    {
      goto LABEL_9;
    }

    sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_2(&v15);
    goto LABEL_27;
  }

LABEL_9:
  *(a4 + 52) = 0;
  *(a4 + 44) = 0;
  v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v14);
  *(a4 + 60) = v11;
  if (v11)
  {
    v12 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_3(&v15);
LABEL_27:
  v12 = v15;
  if (v7)
  {
LABEL_11:
    CFRelease(v7);
  }

LABEL_12:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v12)
  {
LABEL_15:
    sampleBufferGeneratorServer_destroySampleBufferGeneratorRequest(a4);
  }

  return v12;
}

void sampleBufferGeneratorServer_destroySampleBufferGeneratorRequest(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 28);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 60);
  if (v4)
  {

    CFRelease(v4);
  }
}

void sampleBufferGeneratorServer_destroyCallbackParameters(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
      a1[1] = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      a1[2] = 0;
      xpc_release(v3);
    }

    free(a1);
  }
}

uint64_t sampleBufferGeneratorServer_enqueuePendingSampleBuffers(CFArrayRef theArray, uint64_t a2)
{
  value = 0;
  if (!a2)
  {
    v10 = 705;
LABEL_17:
    sampleBufferGeneratorServer_enqueuePendingSampleBuffers_cold_1(v10, &v11);
    return v11;
  }

  if (!theArray)
  {
    v10 = 706;
    goto LABEL_17;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    v10 = 709;
    goto LABEL_17;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  for (i = 0; i != v5; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v8 = CMBufferQueueEnqueue(*v3, ValueAtIndex);
    if (v8)
    {
      v11 = 0;
      FigSimpleMutexLock();
      if (CFDictionaryGetValueIfPresent(v3[2], ValueAtIndex, &value))
      {
        CFNumberGetValue(value, kCFNumberSInt64Type, &v11);
        CFDictionaryRemoveValue(v3[2], ValueAtIndex);
      }

      FigSimpleMutexUnlock();
    }
  }

  return v8;
}

CFTypeRef FigCFCaptionRendererCreate(uint64_t a1)
{
  MEMORY[0x19A8D3660](&FigCFCaptionRendererGetClassID_sRegisterFigCFCaptionRendererOnce, RegisterFigCFCaptionRendererClass);
  if (CMDerivedObjectCreate())
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v2 = DerivedStorage;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  *(v2 + 24) = 0;
  *(v2 + 344) = 0;
  v3 = FigSimpleMutexCreate();
  *(v2 + 32) = v3;
  if (!v3)
  {
    return 0;
  }

  *(v2 + 352) = 1;
  v4 = FigSimpleMutexCreate();
  *(v2 + 288) = v4;
  if (!v4)
  {
    return 0;
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigGetNotifyingObjectForMediaAccessibilityChanged(DefaultLocalCenter, v6);
  FigNotificationCenterAddWeakListener();
  FigCaptionLayoutCopyMAXCaptionSystemSettings(v2 + 80);
  return 0;
}

uint64_t fcfcr_MAXCaptionSettingsChangedNotificationCallBack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigCaptionLayoutCopyMAXCaptionSystemSettings(DerivedStorage + 80);
  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void FigCFCaptionRendererGetCaptionElementRect(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5, CGRect *a6, float64_t a7, float64_t a8, float64_t a9, float64_t a10, double a11, double a12, double a13, double a14)
{
  v14 = a2[1];
  v16[0] = *a2;
  v16[1] = v14;
  v15 = a2[3];
  v16[2] = a2[2];
  v16[3] = v15;
  FigCFCaptionRendererGetCaptionElementWindowProperties(a1, v16, a3, a4, a5, a6, 0, 0, a7, a8, a9, a10, a11, a12, 0);
}

void FigCFCaptionRendererGetCaptionElementWindowProperties(uint64_t a1, double *a2, int a3, int a4, _DWORD *a5, CGRect *a6, BOOL *a7, void *a8, float64_t a9, float64_t a10, float64_t a11, float64_t a12, double a13, double a14, _BYTE *a15)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = *a2;
  v21 = a2[2];
  v22 = a2[4];
  v23 = a2[6];
  v195 = 0;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  theArray = 0;
  FigSimpleMutexLock();
  v24 = *(DerivedStorage + 80);
  if (v24)
  {
    v24 = CFRetain(v24);
  }

  v183[0] = v24;
  v25 = *(DerivedStorage + 88);
  if (v25)
  {
    v25 = CFRetain(v25);
  }

  v183[1] = v25;
  v26 = *(DerivedStorage + 96);
  if (v26)
  {
    v26 = CFRetain(v26);
  }

  v183[2] = v26;
  v27 = *(DerivedStorage + 104);
  if (v27)
  {
    v27 = CFRetain(v27);
  }

  *&v184 = v27;
  v28 = *(DerivedStorage + 120);
  if (v28)
  {
    v28 = CFRetain(v28);
  }

  *&v185 = v28;
  v29 = *(DerivedStorage + 128);
  if (v29)
  {
    v29 = CFRetain(v29);
  }

  *(&v185 + 1) = v29;
  v30 = *(DerivedStorage + 136);
  if (v30)
  {
    v30 = CFRetain(v30);
  }

  *&v186 = v30;
  v31 = *(DerivedStorage + 144);
  if (v31)
  {
    v31 = CFRetain(v31);
  }

  *(&v186 + 1) = v31;
  v32 = *(DerivedStorage + 152);
  if (v32)
  {
    v32 = CFRetain(v32);
  }

  *&v187 = v32;
  v33 = *(DerivedStorage + 160);
  if (v33)
  {
    v33 = CFRetain(v33);
  }

  *(&v187 + 1) = v33;
  v34 = *(DerivedStorage + 168);
  if (v34)
  {
    v34 = CFRetain(v34);
  }

  *&v188 = v34;
  v35 = *(DerivedStorage + 176);
  if (v35)
  {
    v35 = CFRetain(v35);
  }

  *(&v188 + 1) = v35;
  *(&v184 + 1) = *(DerivedStorage + 112);
  v190 = *(DerivedStorage + 200);
  v189 = *(DerivedStorage + 184);
  v191 = *(DerivedStorage + 216);
  v192 = *(DerivedStorage + 232);
  v193 = *(DerivedStorage + 248);
  v194 = *(DerivedStorage + 264);
  v195 = *(DerivedStorage + 280);
  FigSimpleMutexUnlock();
  v196 = 0;
  v197.a = 0.0;
  FigSimpleMutexLock();
  v36 = *(DerivedStorage + 24);
  if (v36)
  {
    v37 = CFRetain(v36);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(DerivedStorage + 296);
  if (v38)
  {
    v181 = CFRetain(v38);
  }

  else
  {
    v181 = 0;
  }

  v39 = *(DerivedStorage + 304);
  if (v39)
  {
    v180 = CFRetain(v39);
  }

  else
  {
    v180 = 0;
  }

  v40 = *(DerivedStorage + 328);
  if (v40)
  {
    v41 = CFRetain(v40);
  }

  else
  {
    v41 = 0;
  }

  FigSimpleMutexUnlock();
  *(DerivedStorage + 336) = 0;
  cf = v41;
  v42 = FigCaptionLayoutCopyEffectiveFontNamePlusInfoAndCreateElementGeometryArrays(v37, a3, v181, v180, *DerivedStorage, *(DerivedStorage + 8), *(DerivedStorage + 16), 0, a9, a10, a11, a12, v183, v41, (DerivedStorage + 336), (DerivedStorage + 40), (DerivedStorage + 48), &v197, &v196, &theArray, (DerivedStorage + 64), (DerivedStorage + 56));
  v43 = v42;
  v44 = *DerivedStorage;
  *DerivedStorage = v42;
  if (v42)
  {
    CFRetain(v42);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *(DerivedStorage + 8);
  a = v197.a;
  *(DerivedStorage + 8) = v197.a;
  if (a != 0.0)
  {
    CFRetain(*&a);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  v47 = *(DerivedStorage + 16);
  v48 = v196;
  *(DerivedStorage + 16) = v196;
  if (v48)
  {
    CFRetain(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (*&v197.a)
  {
    CFRelease(*&v197.a);
  }

  if (v196)
  {
    CFRelease(v196);
  }

  v162 = DerivedStorage;
  if (v43)
  {
    CFRelease(v43);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (!CFPreferencesGetAppBooleanValue(@"disable_caption_repositioning", @"com.apple.coremedia", 0))
  {
    v55 = *MEMORY[0x1E695F058];
    v56.f64[0] = a9;
    v56.f64[1] = a10;
    v57.f64[0] = a11;
    v57.f64[1] = a12;
    __asm { FMOV            V1.2D, #2.0 }

    v63 = vrndaq_f64(vmlaq_f64(v57, _Q1, v56));
    if (a13 >= -0.5 && a14 >= -0.5 || (v64.f64[0] = a11, v64.f64[1] = a12, (vmaxv_u16(vmovn_s32(vuzp1q_s32(vclezq_f64(v64), vclezq_f64(v63)))) & 1) != 0) || (v65 = theArray, v66 = vdivq_f64(v63, v57), v66.f64[0] == 1.0) && v66.f64[1] == 1.0)
    {
      v67 = 0;
    }

    else
    {
      v152 = 0;
      __asm { FMOV            V0.2D, #0.5 }

      v160 = v63;
      *allocatorb = _Q0;
      v179 = v66;
      v170 = *MEMORY[0x1E695F058];
      v172 = vaddq_f64(vmulq_f64(v63, _Q0), v55);
      if (!theArray)
      {
        goto LABEL_152;
      }

LABEL_151:
      for (i = CFArrayGetCount(v65); v152 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v65, v152);
        v156 = ValueAtIndex[2];
        v157 = vsubq_f64(ValueAtIndex[4], v156);
        v158 = vmulq_f64(ValueAtIndex[3], *allocatorb);
        v159 = vsubq_f64(vmlaq_f64(v172, v179, vsubq_f64(vaddq_f64(v156, v158), v172)), v158);
        ValueAtIndex[2] = v159;
        ValueAtIndex[4] = vaddq_f64(v157, v159);
        ++v152;
        if (v65)
        {
          goto LABEL_151;
        }

LABEL_152:
        ;
      }

      v67 = 1;
      v55 = v170;
      v63 = v160;
    }

    if (v22 > 0.0 || v23 > 0.0 || v20 > 0.0 || v21 > 0.0)
    {
      v68 = 0;
      if (a3 == 1)
      {
        v69 = v22;
      }

      else
      {
        v69 = v23;
      }

      v70 = v63.f64[0] - (v20 + v21);
      if (v70 > 0.0)
      {
        v71 = v63.f64[1] - (v22 + v23);
        if (v71 > 0.0)
        {
          v169 = v55;
          MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
          if (MutableCopy)
          {
            v73 = MutableCopy;
            v74 = v69 + v169.f64[1];
            v196 = 0;
            v197.a = 0.0;
            v75 = fcfcr_sweepBottomUp(MutableCopy, &v197.a, v74);
            v76 = v71 + v74;
            Count = CFArrayGetCount(v73);
            v198.location = 0;
            v198.length = Count;
            CFArraySortValues(v73, v198, fcfcr_objComparatorTop, 0);
            if (Count < 1)
            {
              v79 = 0;
            }

            else
            {
              v78 = 0;
              v79 = 0;
              v80 = v71 + v74;
              do
              {
                v81 = CFArrayGetValueAtIndex(v73, v78);
                fcfcr_getElementRect(v81);
                v84 = v82 + v83 - v76;
                if (v84 > 0.0)
                {
                  v81[1].origin.y = v81[1].origin.y - v84;
                  v81[2].origin.y = v81[2].origin.y - v84;
                  v82 = v82 - v84;
                  v79 = 1;
                }

                v80 = fmin(v80, v82);
                ++v78;
              }

              while (Count != v78);
              if ((v79 & (Count != 1)) == 1)
              {
                v177 = v20;
                v85 = 1;
                do
                {
                  v86 = CFArrayGetValueAtIndex(v73, v85);
                  ElementRect = fcfcr_getElementRect(v86);
                  v89 = v88;
                  v91 = v90;
                  v93 = v92;
                  v94 = 0;
                  do
                  {
                    v95 = CFArrayGetValueAtIndex(v73, v94);
                    v96 = fcfcr_getElementRect(v95);
                    v98 = v97;
                    if (fcfcr_isOverlap(ElementRect, v89, v91, v93, v96, v97, v99, v100))
                    {
                      v101 = v93 + v89 - v98;
                      v86[1].origin.y = v86[1].origin.y - v101;
                      v86[2].origin.y = v86[2].origin.y - v101;
                      v89 = v89 - v101;
                      v80 = fmin(v80, v89);
                    }

                    ++v94;
                  }

                  while (v85 != v94);
                  ++v85;
                }

                while (v85 != Count);
                v79 = 1;
                v76 = v80;
                v20 = v177;
              }

              else
              {
                v76 = v80;
              }
            }

            v106 = v20 + v169.f64[0];
            if (v76 < v74)
            {
              fcfcr_sweepBottomUp(v73, &v197.a, (v74 + v76) * 0.5);
            }

            v107 = fcfcr_sweepLeftRight(v73, &v196, v106);
            v108 = v70 + v106;
            v109 = CFArrayGetCount(v73);
            v199.location = 0;
            v199.length = v109;
            CFArraySortValues(v73, v199, fcfcr_objComparatorRight, 0);
            if (v109 < 1)
            {
              v111 = 0;
            }

            else
            {
              v110 = 0;
              v111 = 0;
              v112 = v70 + v106;
              do
              {
                v113 = CFArrayGetValueAtIndex(v73, v110);
                v114 = fcfcr_getElementRect(v113);
                v116 = v114 + v115 - v108;
                if (v116 > 0.0)
                {
                  v113[1].origin.x = v113[1].origin.x - v116;
                  v113[2].origin.x = v113[2].origin.x - v116;
                  v114 = v114 - v116;
                  v111 = 1;
                }

                v112 = fmin(v112, v114);
                ++v110;
              }

              while (v109 != v110);
              if ((v111 & (v109 != 1)) == 1)
              {
                v117 = 1;
                do
                {
                  v118 = CFArrayGetValueAtIndex(v73, v117);
                  v119 = fcfcr_getElementRect(v118);
                  v121 = v120;
                  v123 = v122;
                  v125 = v124;
                  v126 = 0;
                  v127 = v119 + v122;
                  do
                  {
                    v128 = CFArrayGetValueAtIndex(v73, v126);
                    v129 = fcfcr_getElementRect(v128);
                    if (fcfcr_isOverlap(v119, v121, v123, v125, v129, v130, v131, v132))
                    {
                      v118[1].origin.x = v118[1].origin.x - (v127 - v129);
                      v118[2].origin.x = v118[2].origin.x - (v127 - v129);
                      v121 = v121 - (v127 - v129);
                      v112 = fmin(v112, v119);
                    }

                    ++v126;
                  }

                  while (v117 != v126);
                  ++v117;
                }

                while (v117 != v109);
                v111 = 1;
              }

              v108 = v112;
            }

            v68 = v111 | v107 | v79 | v75;
            if (v108 < v106)
            {
              fcfcr_sweepLeftRight(v73, &v196, (v106 + v108) * 0.5);
            }

            CFRelease(v73);
          }

          else
          {
            v68 = 0;
          }
        }
      }

      if (!(v67 | v68 & 1))
      {
        goto LABEL_58;
      }
    }

    else if (!v67)
    {
      goto LABEL_58;
    }

    v133 = 0;
    v134 = theArray;
    allocatora = *MEMORY[0x1E695E480];
    v178 = theArray;
    if (!theArray)
    {
      goto LABEL_138;
    }

LABEL_137:
    for (j = CFArrayGetCount(v134); v133 < j; j = 0)
    {
      v136 = CFArrayGetValueAtIndex(v134, v133);
      v137 = CFDictionaryGetCount(v136[12]);
      if (v137)
      {
        v138 = v137;
        v139 = *(v136 + 8) - FigCaptionLayoutGetBackgroundPathRectFromDictionary(v136[12]);
        v141 = *(v136 + 9) - v140;
        if (v139 != 0.0 || v141 != 0.0)
        {
          memset(&v197, 0, sizeof(v197));
          CGAffineTransformMakeTranslation(&v197, v139, v141);
          Mutable = CFDictionaryCreateMutable(allocatora, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v143 = malloc_type_calloc(8uLL, v138, 0xE7E4059BuLL);
          v144 = malloc_type_calloc(8uLL, v138, 0x98C06A8EuLL);
          CFDictionaryGetKeysAndValues(v136[12], v143, v144);
          v145 = v143;
          v146 = v144;
          if (v138 >= 1)
          {
            do
            {
              v148 = *v145++;
              v147 = v148;
              v149 = *v146++;
              v150 = MEMORY[0x19A8CE0A0](v149, &v197);
              CFDictionaryAddValue(Mutable, v147, v150);
              CGPathRelease(v150);
              --v138;
            }

            while (v138);
          }

          free(v143);
          free(v144);
          v151 = v136[12];
          if (v151)
          {
            CFRelease(v151);
          }

          v136[12] = Mutable;
          v134 = v178;
        }
      }

      ++v133;
      if (v134)
      {
        goto LABEL_137;
      }

LABEL_138:
      ;
    }
  }

LABEL_58:
  FigSimpleMutexLock();
  FigCaptionLayoutReleaseCaptionElementArray(*(v162 + 312));
  *(v162 + 312) = theArray;
  FigSimpleMutexUnlock();
  FigCaptionLayoutClearMAXCaptionSettings(v183);
  if (cf)
  {
    CFRelease(cf);
  }

  v50 = a7;
  v49 = a8;
  v51 = a6;
  if (v181)
  {
    CFRelease(v181);
  }

  if (v180)
  {
    CFRelease(v180);
  }

  FigSimpleMutexLock();
  v52 = FigCaptionLayoutCopyCaptionElementArray(*(v162 + 312));
  v53 = *(v162 + 320);
  FigSimpleMutexUnlock();
  if (v52)
  {
    v54 = CFArrayGetCount(v52);
  }

  else
  {
    v54 = 0;
  }

  if (v54 >= a4)
  {
    v102 = a4;
  }

  else
  {
    v102 = v54;
  }

  if (v102 >= 1)
  {
    for (k = 0; k != v102; ++k)
    {
      v104 = CFArrayGetValueAtIndex(v52, k);
      v105 = v104;
      if (v51)
      {
        v200 = CGRectUnion(v104[2], v104[1]);
        v201 = CGRectIntegral(v200);
        *v51++ = CGRectInset(v201, -v105[4].origin.x, -v105[4].origin.x);
      }

      if (v50)
      {
        *v50++ = CGColorGetAlpha(*&v105[3].size.height) > 0.0;
      }

      if (v49)
      {
        *v49++ = *&v105[4].origin.y;
      }
    }
  }

  if (a15)
  {
    *a15 = v53;
  }

  *a5 = v54;
  FigCaptionLayoutReleaseCaptionElementArray(v52);
}

void FigCFCaptionRendererDrawCaptionElementInContextForRectOrientation(uint64_t a1, unsigned int a2, CGContext *a3, int a4, _BYTE *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v142 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v14 = FigCaptionLayoutCopyCaptionElementArray(*(DerivedStorage + 312));
  v123 = DerivedStorage;
  FigSimpleMutexUnlock();
  if (v14)
  {
    Count = CFArrayGetCount(v14);
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    Count = 0;
    if ((a2 & 0x80000000) != 0)
    {
LABEL_94:
      v101 = 0;
      goto LABEL_97;
    }
  }

  if (Count <= a2)
  {
    goto LABEL_94;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v14, a2);
  v112 = *(DerivedStorage + 72);
  v113 = CFArrayGetCount(*(ValueAtIndex + 14));
  CGContextSaveGState(a3);
  v17 = *(ValueAtIndex + 15);
  if (v17)
  {
    v18 = CGColorRetain(v17);
    *value = 0;
    v19 = *(DerivedStorage + 344);
    if (v19 && CFDictionaryGetValueIfPresent(v19, *MEMORY[0x1E69607C0], value) && ((Components = CGColorGetComponents(v18), v21 = Components[3], longestEffectiveRange.location = 0, FigCFArrayGetCGFloatAtIndex(), v21 > 0.0) ? (v22 = v21 < *&longestEffectiveRange.location) : (v22 = 0), v22))
    {
      *&valuePtr.a = *Components;
      valuePtr.c = Components[2];
      *&valuePtr.d = longestEffectiveRange.location;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v23 = DeviceRGB;
      if (DeviceRGB)
      {
        v103 = CGColorCreate(DeviceRGB, &valuePtr.a);
        if (v103)
        {
          v104 = v103;
          CGColorRelease(v18);
          v18 = v104;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    CGColorSpaceRelease(v23);
    v24 = *(ValueAtIndex + 17);
    v147.origin.x = a6;
    v147.origin.y = a7;
    v147.size.width = a8;
    v147.size.height = a9;
    y1 = CGRectGetMinY(v147);
    v148.origin.x = a6;
    v148.origin.y = a7;
    v148.size.width = a8;
    v148.size.height = a9;
    colora = CGRectGetMinX(v148);
    v149.origin.x = a6;
    v149.origin.y = a7;
    v149.size.width = a8;
    v149.size.height = a9;
    MaxY = CGRectGetMaxY(v149);
    v150.origin.x = a6;
    v150.origin.y = a7;
    v150.size.width = a8;
    v150.size.height = a9;
    MaxX = CGRectGetMaxX(v150);
    v151.origin.x = a6;
    v151.origin.y = a7;
    v151.size.width = a8;
    v151.size.height = a9;
    v152 = CGRectInset(v151, v24, v24);
    x = v152.origin.x;
    v133 = a6;
    y = v152.origin.y;
    width = v152.size.width;
    height = v152.size.height;
    fonta = CGRectGetMinY(v152);
    v153.origin.x = x;
    v153.origin.y = y;
    v153.size.width = width;
    v153.size.height = height;
    MinX = CGRectGetMinX(v153);
    v154.origin.x = x;
    v154.origin.y = y;
    v154.size.width = width;
    v154.size.height = height;
    v127 = CGRectGetMaxY(v154);
    v155.origin.x = x;
    v155.origin.y = y;
    a6 = v133;
    v155.size.width = width;
    v155.size.height = height;
    v32 = CGRectGetMaxX(v155);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, MinX, y1);
    CGPathAddLineToPoint(Mutable, 0, v32, y1);
    CGPathAddArcToPoint(Mutable, 0, MaxX, y1, MaxX, fonta, v24);
    CGPathAddLineToPoint(Mutable, 0, MaxX, v127);
    CGPathAddArcToPoint(Mutable, 0, MaxX, MaxY, v32, MaxY, v24);
    CGPathAddLineToPoint(Mutable, 0, MinX, MaxY);
    CGPathAddArcToPoint(Mutable, 0, colora, MaxY, colora, v127, v24);
    CGPathAddLineToPoint(Mutable, 0, colora, fonta);
    CGPathAddArcToPoint(Mutable, 0, colora, y1, MinX, y1, v24);
    CGPathCloseSubpath(Mutable);
    CGContextAddPath(a3, Mutable);
    CGColorRetain(v18);
    CGContextSetFillColorWithColor(a3, v18);
    CGColorRelease(v18);
    CGContextFillPath(a3);
    CGPathRelease(Mutable);
    CGColorRelease(v18);
  }

  v105 = v14;
  v110 = ValueAtIndex;
  v34 = *(ValueAtIndex + 12);
  v35 = CFDictionaryGetCount(v34);
  v36 = malloc_type_calloc(8uLL, v35, 0x828B053uLL);
  v37 = malloc_type_calloc(8uLL, v35, 0xB3389905uLL);
  CFDictionaryGetKeysAndValues(v34, v36, v37);
  if (v35 >= 1)
  {
    v38 = v37;
    v39 = v36;
    do
    {
      v40 = *v38++;
      CGContextAddPath(a3, v40);
      v41 = *v39++;
      v42 = CGColorRetain(v41);
      CGContextSetFillColorWithColor(a3, v42);
      CGColorRelease(v42);
      CGContextFillPath(a3);
      --v35;
    }

    while (v35);
  }

  free(v36);
  free(v37);
  v43 = v110;
  v156.origin.x = a6;
  v156.origin.y = a7;
  v156.size.width = a8;
  v156.size.height = a9;
  v157 = CGRectInset(v156, v110[16], v110[16]);
  v44 = v157.origin.x;
  v111 = v157.origin.y;
  v107 = v157.size.height;
  v108 = v157.size.width;
  v45 = CGRectGetWidth(v157);
  if (v113 < 1)
  {
    v101 = 0;
  }

  else
  {
    v46 = v45;
    v47 = 0;
    v48 = 0;
    attrName = *MEMORY[0x1E6965658];
    v49 = *MEMORY[0x1E695E480];
    v117 = *(MEMORY[0x1E695F060] + 8);
    v118 = *MEMORY[0x1E695F060];
    v122 = *MEMORY[0x1E6965A60];
    v121 = *MEMORY[0x1E6965A58];
    v50 = v44;
    v119 = v112;
    allocatora = *MEMORY[0x1E695E480];
    v124 = a4;
    v109 = v44;
    do
    {
      theArray = CFArrayGetValueAtIndex(*(v43 + 14), v48);
      if (!v48)
      {
        CFArrayGetValueAtIndex(theArray, 0);
        FigCFDictionaryGetCGFloatIfPresent();
      }

      if (a4 == 1)
      {
        v51 = v111 + v48 * v112 + 0.0;
      }

      else
      {
        v158.origin.x = v44;
        v158.origin.y = v111;
        v158.size.height = v107;
        v158.size.width = v108;
        v51 = v111 + CGRectGetHeight(v158) - (v48 + 1) * v112 - 0.0;
      }

      v52 = v50;
      v53 = v46;
      v54 = v119;
      v159 = CGRectIntegral(*(&v51 - 1));
      v50 = v159.origin.x;
      v55 = v159.origin.y;
      v46 = v159.size.width;
      v119 = v159.size.height;
      v125 = CFArrayGetCount(theArray);
      if (v125 < 1)
      {
        v100 = 0;
      }

      else
      {
        v114 = v50;
        v115 = v48;
        v116 = v47;
        v56 = 0;
        for (i = 0; i != v125; ++i)
        {
          v58 = CFArrayGetValueAtIndex(theArray, i);
          v59 = CFDictionaryGetValue(v58, @"S");
          longestEffectiveRange.location = 0;
          longestEffectiveRange.length = 0;
          if (v59)
          {
            v60 = v59;
            v128 = i;
            Length = CFAttributedStringGetLength(v59);
            if (Length)
            {
              v62 = Length;
              if (*(v123 + 352))
              {
                *(v123 + 352) = 0;
                if (dword_1EAF17750)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }
              }

              Attribute = CFAttributedStringGetAttribute(v60, 0, attrName, 0);
              CapHeight = CTFontGetCapHeight(Attribute);
              font = Attribute;
              XHeight = CTFontGetXHeight(Attribute);
              FigCFDictionaryGetCGFloatIfPresent();
              v50 = v50 + 0.0;
              Limit = FigCFRangeGetLimit();
              if (Limit < FigCFRangeGetLimit())
              {
                v68 = ((v119 - CapHeight) * 0.5 + (v119 - XHeight) * 0.5) * 0.5;
                while (1)
                {
                  v69 = FigCFRangeGetLimit();
                  v145.location = 0;
                  v145.length = v62;
                  AttributesAndLongestEffectiveRange = CFAttributedStringGetAttributesAndLongestEffectiveRange(v60, v69, v145, &longestEffectiveRange);
                  if (AttributesAndLongestEffectiveRange)
                  {
                    break;
                  }

LABEL_86:
                  v99 = FigCFRangeGetLimit();
                  if (v99 >= FigCFRangeGetLimit())
                  {
                    goto LABEL_87;
                  }
                }

                v71 = AttributesAndLongestEffectiveRange;
                v72 = CFAttributedStringCreateWithSubstring(v49, v60, longestEffectiveRange);
                v73 = CTLineCreateWithAttributedString(v72);
                LineWidthWithRange = FigCaptionLayoutGetLineWidthWithRange(v73, 0, longestEffectiveRange.length);
                v75 = CFDictionaryGetValue(v71, @"d");
                if (v75 && CFBooleanGetValue(v75))
                {
                  v76 = v68;
                  if (a4 == 1)
                  {
                    valuePtr.b = 0.0;
                    valuePtr.c = 0.0;
                    valuePtr.a = 1.0;
                    valuePtr.d = -1.0;
                    valuePtr.tx = 0.0;
                    valuePtr.ty = 0.0;
                    CGContextSetTextMatrix(a3, &valuePtr);
                    v76 = v119 - v68;
                  }

                  CGContextSetTextPosition(a3, v50, v55 + v76);
                  *value = 0;
                  FigCFDictionaryGetInt32IfPresent();
                  v77 = CFDictionaryGetValue(v71, @"e");
                  v78 = CFDictionaryGetValue(v71, @"q");
                  CGColorRetain(v77);
                  v79 = *value;
                  v80 = CFAttributedStringGetLength(v72);
                  if (v79)
                  {
                    v81 = v80;
                    Size = CTFontGetSize(font);
                    v83 = Size;
                    if (v79 > 2)
                    {
                      v87 = Size * 0.147058824;
                      if (v83 > 60.0)
                      {
                        v87 = v83 * 0.147058824 * 0.5;
                      }

                      valuePtr.a = v87;
                      if (v78)
                      {
                        CFNumberGetValue(v78, kCFNumberCGFloatType, &valuePtr);
                        valuePtr.a = (valuePtr.a + valuePtr.a) * 100.0 / v83;
                      }

                      v88 = CFNumberCreate(allocatora, kCFNumberCGFloatType, &valuePtr);
                      color = CGColorCreateCopyWithAlpha(v77, 0.4);
                      TextPosition = CGContextGetTextPosition(a3);
                      v90 = a3;
                      MutableCopy = CFAttributedStringCreateMutableCopy(allocatora, 0, v72);
                      CGContextSetFontRenderingStyle();
                      CGContextSetShouldSmoothFonts(v90, 0);
                      CGContextSetShouldAntialias(v90, 1);
                      CGContextSetInterpolationQuality(v90, kCGInterpolationHigh);
                      CGContextSetLineJoin(v90, kCGLineJoinRound);
                      v143.location = 0;
                      v143.length = v81;
                      CFAttributedStringSetAttribute(MutableCopy, v143, v122, v88);
                      v144.location = 0;
                      v144.length = v81;
                      CFAttributedStringSetAttribute(MutableCopy, v144, v121, v77);
                      if (v79 != 3)
                      {
                        v146.height = v117;
                        v146.width = v118;
                        CGContextSetShadowWithColor(v90, v146, 4.0, color);
                      }

                      v92 = CTLineCreateWithAttributedString(MutableCopy);
                      CTLineDraw(v92, v90);
                      if (v92)
                      {
                        CFRelease(v92);
                      }

                      if (v79 != 3)
                      {
                        v93 = v83 * 0.0882352941;
                        if (v83 <= 60.0)
                        {
                          v94 = v83 * 0.0882352941;
                        }

                        else
                        {
                          v94 = v83 * 0.0882352941 / 1.5;
                        }

                        v95 = -v94;
                        if (v83 > 60.0)
                        {
                          v93 = v83 * 0.0882352941 / 1.5;
                        }

                        if (v124 == 1)
                        {
                          v96 = v93;
                        }

                        else
                        {
                          v96 = v95;
                        }

                        v97 = 0;
                        CGContextSetShadowWithColor(v90, *(&v96 - 1), 4.0, color);
                      }

                      CGContextSetTextPosition(v90, TextPosition.x, TextPosition.y);
                      v98 = CTLineCreateWithAttributedString(v72);
                      CTLineDraw(v98, v90);
                      v49 = allocatora;
                      if (v98)
                      {
                        CFRelease(v98);
                      }

                      if (MutableCopy)
                      {
                        CFRelease(MutableCopy);
                      }

                      if (color)
                      {
                        CFRelease(color);
                      }

                      a3 = v90;
                      if (v88)
                      {
                        CFRelease(v88);
                      }

                      a4 = v124;
                    }

                    else
                    {
                      if (v79 == 1)
                      {
                        v49 = allocatora;
                        if (Size <= 60.0)
                        {
                          v84 = Size * -0.0882352941;
                          v85 = v83 * 0.0882352941;
                        }

                        else
                        {
                          v84 = Size * 0.0882352941 / -1.5;
                          v85 = v83 * 0.0882352941 / 1.5;
                        }
                      }

                      else
                      {
                        v84 = Size * 0.0882352941;
                        if (v83 > 60.0)
                        {
                          v84 = v83 * 0.0882352941 / 1.5;
                        }

                        v85 = -v84;
                        v49 = allocatora;
                      }

                      if (a4 == 1)
                      {
                        v85 = v85 - v85;
                      }

                      CGContextSetShadowWithColor(a3, *&v84, 4.0, v77);
                      v86 = CTLineCreateWithAttributedString(v72);
                      CTLineDraw(v86, a3);
                      if (v86)
                      {
LABEL_80:
                        CFRelease(v86);
                      }
                    }
                  }

                  else
                  {
                    v86 = CTLineCreateWithAttributedString(v72);
                    CTLineDraw(v86, a3);
                    v49 = allocatora;
                    if (v86)
                    {
                      goto LABEL_80;
                    }
                  }

                  CGColorRelease(v77);
                }

                if (v73)
                {
                  CFRelease(v73);
                }

                v50 = v50 + LineWidthWithRange;
                if (v72)
                {
                  CFRelease(v72);
                }

                goto LABEL_86;
              }

LABEL_87:
              v56 = 1;
            }

            i = v128;
          }
        }

        v100 = v56 != 0;
        v43 = v110;
        v44 = v109;
        v47 = v116;
        v48 = v115;
        v50 = v114;
      }

      v47 |= v100;
      ++v48;
    }

    while (v48 != v113);
    v101 = v47 & 1;
  }

  v14 = v105;
  CGContextRestoreGState(a3);
LABEL_97:
  if (a5)
  {
    *a5 = v101;
  }

  FigCaptionLayoutReleaseCaptionElementArray(v14);
}

uint64_t captionRenderer_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigGetNotifyingObjectForMediaAccessibilityChanged(DefaultLocalCenter, v3);
  FigNotificationCenterRemoveWeakListener();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 8) = 0;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 16) = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 24) = 0;
  }

  v7 = *(DerivedStorage + 344);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 344) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 32) = 0;
  FigCaptionLayoutClearMAXCaptionSettings(DerivedStorage + 80);
  FigSimpleMutexDestroy();
  *(DerivedStorage + 288) = 0;
  v8 = *(DerivedStorage + 296);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 296) = 0;
  }

  v9 = *(DerivedStorage + 304);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 304) = 0;
  }

  FigCaptionLayoutReleaseCaptionElementArray(*(DerivedStorage + 312));
  *(DerivedStorage + 312) = 0;
  v10 = *(DerivedStorage + 328);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 328) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

uint64_t fcfcr_sweepBottomUp(const __CFArray *a1, double *a2, double a3)
{
  Count = CFArrayGetCount(a1);
  *a2 = a3;
  v32.location = 0;
  v32.length = Count;
  CFArraySortValues(a1, v32, fcfcr_objComparatorBottom, 0);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      fcfcr_getElementRect(ValueAtIndex);
      v12 = a3 - v10;
      if (a3 - v10 > 0.0)
      {
        ValueAtIndex[1].origin.y = v12 + ValueAtIndex[1].origin.y;
        ValueAtIndex[2].origin.y = v12 + ValueAtIndex[2].origin.y;
        v10 = v10 + v12;
        v8 = 1;
      }

      *a2 = fmax(*a2, v11 + v10);
      ++v7;
    }

    while (Count != v7);
    if ((v8 & (Count != 1)) == 1)
    {
      v13 = 1;
      do
      {
        v14 = CFArrayGetValueAtIndex(a1, v13);
        ElementRect = fcfcr_getElementRect(v14);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = 0;
        do
        {
          v23 = CFArrayGetValueAtIndex(a1, v22);
          v24 = fcfcr_getElementRect(v23);
          v26 = v25;
          v28 = v27;
          if (fcfcr_isOverlap(ElementRect, v17, v19, v21, v24, v25, v29, v27))
          {
            v30 = v26 + v28 - v17;
            v14[1].origin.y = v30 + v14[1].origin.y;
            v14[2].origin.y = v30 + v14[2].origin.y;
            v17 = v17 + v30;
            *a2 = fmax(*a2, v21 + v17);
          }

          ++v22;
        }

        while (v13 != v22);
        ++v13;
      }

      while (v13 != Count);
    }
  }

  return v8 & 1;
}

uint64_t fcfcr_sweepLeftRight(const __CFArray *a1, double *a2, double a3)
{
  Count = CFArrayGetCount(a1);
  *a2 = a3;
  v31.location = 0;
  v31.length = Count;
  CFArraySortValues(a1, v31, fcfcr_objComparatorLeft, 0);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      ElementRect = fcfcr_getElementRect(ValueAtIndex);
      v12 = a3 - ElementRect;
      if (a3 - ElementRect > 0.0)
      {
        ValueAtIndex[1].origin.x = v12 + ValueAtIndex[1].origin.x;
        ValueAtIndex[2].origin.x = v12 + ValueAtIndex[2].origin.x;
        ElementRect = ElementRect + v12;
        v8 = 1;
      }

      *a2 = fmax(*a2, v11 + ElementRect);
      ++v7;
    }

    while (Count != v7);
    if ((v8 & (Count != 1)) == 1)
    {
      v13 = 1;
      do
      {
        v14 = CFArrayGetValueAtIndex(a1, v13);
        v15 = fcfcr_getElementRect(v14);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = 0;
        do
        {
          v23 = CFArrayGetValueAtIndex(a1, v22);
          v24 = fcfcr_getElementRect(v23);
          v26 = v25;
          if (fcfcr_isOverlap(v15, v17, v19, v21, v24, v27, v25, v28))
          {
            v29 = v24 + v26 - v15;
            v14[1].origin.x = v29 + v14[1].origin.x;
            v14[2].origin.x = v29 + v14[2].origin.x;
            v15 = v15 + v29;
            *a2 = fmax(*a2, v19 + v15);
          }

          ++v22;
        }

        while (v13 != v22);
        ++v13;
      }

      while (v13 != Count);
    }
  }

  return v8 & 1;
}

uint64_t fcfcr_objComparatorBottom(CGRect *a1, CGRect *a2)
{
  fcfcr_getElementRect(a1);
  v4 = v3;
  fcfcr_getElementRect(a2);
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

double fcfcr_getElementRect(CGRect *a1)
{
  v5 = CGRectUnion(a1[2], a1[1]);
  v6 = CGRectIntegral(v5);
  v2 = -a1[4].origin.x;

  *&result = CGRectInset(v6, v2, v2);
  return result;
}

uint64_t fcfcr_objComparatorTop(CGRect *a1, CGRect *a2)
{
  fcfcr_getElementRect(a1);
  v4 = v3;
  v6 = v5;
  fcfcr_getElementRect(a2);
  v9 = v7 + v8;
  if (v4 + v6 > v9)
  {
    return -1;
  }

  else
  {
    return v4 + v6 < v9;
  }
}

uint64_t fcfcr_objComparatorLeft(CGRect *a1, CGRect *a2)
{
  ElementRect = fcfcr_getElementRect(a1);
  v4 = fcfcr_getElementRect(a2);
  if (ElementRect < v4)
  {
    return -1;
  }

  else
  {
    return ElementRect > v4;
  }
}

uint64_t fcfcr_objComparatorRight(CGRect *a1, CGRect *a2)
{
  ElementRect = fcfcr_getElementRect(a1);
  v5 = v4;
  v6 = fcfcr_getElementRect(a2);
  v8 = v6 + v7;
  if (ElementRect + v5 > v8)
  {
    return -1;
  }

  else
  {
    return ElementRect + v5 < v8;
  }
}

uint64_t FigSteeringParserStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigSteeringParserStartServer_block_invoke;
  block[3] = &unk_1E7492F38;
  block[4] = &v3;
  if (FigSteeringParserStartServer_sFigSteeringParserServerSetupOnce != -1)
  {
    dispatch_once(&FigSteeringParserStartServer_sFigSteeringParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __FigSteeringParserStartServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void FPSupport_InvalidateMetadataStorage(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      CFRelease(v2);
      a1[6] = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
      a1[2] = 0;
    }

    v4 = a1[5];
    if (v4)
    {
      CFRelease(v4);
      a1[5] = 0;
    }

    a1[3] = 0;
    a1[4] = 0;
  }
}

uint64_t FigMetadataStorageCreate(void *a1)
{
  if (!a1)
  {
    FigMetadataStorageCreate_cold_5(&v10);
    return v10;
  }

  v2 = *MEMORY[0x1E695E480];
  if (FigMetadataStorageGetTypeID_onceToken != -1)
  {
    FigMetadataStorageCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMetadataStorageCreate_cold_4(&v10);
    return v10;
  }

  v4 = Instance;
  v5 = CFDictionaryCreate(v2, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = CFArrayCreate(v2, 0, 0, 0);
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v4[2] = CFRetain(v5);
      v8 = 0;
      v4[6] = CFRetain(v7);
    }

    else
    {
      FigMetadataStorageCreate_cold_2(&v10);
      v8 = v10;
    }

    CFRelease(v5);
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  FigMetadataStorageCreate_cold_3(&v10);
  v8 = v10;
  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

LABEL_10:
  if (v8)
  {
    CFRelease(v4);
  }

  else
  {
    *a1 = v4;
  }

  return v8;
}

unint64_t FPSupport_UpdateMetadataOutputs(void *a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    FPSupport_UpdateMetadataOutputs_cold_5(&v35);
    return v35;
  }

  v2 = theDict;
  Count = CFDictionaryGetCount(theDict);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (Count < 1)
    {
      v7 = 0;
      keys = 0;
LABEL_25:
      v10 = CFRetain(Mutable);
      v9 = 0;
      goto LABEL_26;
    }

    if ((Count - 0x2000000000000000) < 0xE000000000000001)
    {
      v7 = 0;
LABEL_6:
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v31, theArray);
      v9 = v8;
      v10 = 0;
      free(0);
      goto LABEL_27;
    }

    v11 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    v12 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    v7 = v12;
    keys = v11;
    if (!v11)
    {
      goto LABEL_6;
    }

    if (v12)
    {
      v32 = v2;
      CFDictionaryGetKeysAndValues(v2, v11, v12);
      v13 = 0;
      v14 = MEMORY[0x1E695E9E8];
      while (1)
      {
        v15 = keys[v13];
        v16 = v7;
        v17 = v7[v13];
        v35 = 0;
        FigCFDictionaryGetDoubleIfPresent();
        Value = CFDictionaryGetValue(v17, @"MetadatadataOutputKey_MetadataIdentifiersToOutput");
        v19 = v35;
        if (FigMetadataOutputStorageGetTypeID_onceToken != -1)
        {
          FPSupport_UpdateMetadataOutputs_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          v21 = Instance;
          *(Instance + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
          if (v15)
          {
            v22 = CFRetain(v15);
          }

          else
          {
            v22 = 0;
          }

          v21[4] = v22;
          v21[5] = v19;
          v21[7] = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], v14);
          if (Value)
          {
            v23 = CFRetain(Value);
          }

          else
          {
            v23 = 0;
          }

          v21[6] = v23;
          v21[8] = CFDictionaryCreateMutable(v5, 0, 0, v14);
          v10 = CFRetain(v21);
          CFRelease(v21);
        }

        else
        {
          v10 = 0;
          if (!FPSupport_UpdateMetadataOutputs_cold_2(&v35, &v36))
          {
            v9 = v36;
            v2 = v32;
            v7 = v16;
            goto LABEL_26;
          }
        }

        v7 = v16;
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v10);
        if (Count == ++v13)
        {
          v2 = v32;
          goto LABEL_25;
        }
      }
    }

    FPSupport_UpdateMetadataOutputs_cold_3(&v35);
    v10 = 0;
  }

  else
  {
    FPSupport_UpdateMetadataOutputs_cold_4(&v35);
    v10 = 0;
    v7 = 0;
    keys = 0;
  }

  v9 = v35;
LABEL_26:
  free(keys);
LABEL_27:
  free(v7);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    goto LABEL_40;
  }

  if (v10)
  {
    v24 = CFArrayGetCount(v10);
    if (v24 >= 1)
    {
      v25 = v24;
      for (i = 0; i != v25; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        ValueAtIndex[3] = CFRetain(a1);
      }
    }

    v28 = a1[6];
    a1[6] = v10;
    CFRetain(v10);
    if (!v28)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v28 = a1[6];
    a1[6] = 0;
    if (!v28)
    {
      goto LABEL_36;
    }
  }

  CFRelease(v28);
LABEL_36:
  v9 = a1[2];
  a1[2] = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v9)
  {
    CFRelease(v9);
    v9 = 0;
  }

LABEL_40:
  if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

uint64_t FPSupport_CreateAndAddMetadataOutputRenderPipelinesForTrackWithID(uint64_t a1, unsigned int a2, void *a3)
{
  v10 = a2;
  cf = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  fpsupport_forEachMetadataOutput(a1, fpsupport_addRenderPipelineToMetadataOutputApplierFn, &v10);
  v6 = v5;
  v7 = cf;
  if (a3 && !v6)
  {
    if (cf)
    {
      v8 = CFRetain(cf);
      v7 = cf;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

uint64_t fpsupport_forgetAboutRenderPipelineFromMetadataOutputApplierFn(uint64_t a1, const void *a2)
{
  if (CFDictionaryContainsKey(*(a1 + 56), a2))
  {
    fpsupport_unregisterOutputFromRenderPipelineCallbacks(a1);
    CFDictionaryRemoveValue(*(a1 + 56), a2);
  }

  return 0;
}

__CFDictionary *FPSupport_CreateMetadataOutputDataCallbackPayload(const void *a1, const void *a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"MetadataOutputKey", a2);
  CFDictionarySetValue(Mutable, @"SampleBuffers", a1);
  FigCFDictionarySetInt32();
  return Mutable;
}

uint64_t registerFigMetadataStorage()
{
  result = _CFRuntimeRegisterClass();
  sFigMetadataStorageID = result;
  return result;
}

double fpsupport_figMetadataStorageInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fpsupport_figMetadataStorageFinalize(void *a1)
{
  if (a1)
  {
    FPSupport_InvalidateMetadataStorage(a1);
  }
}

uint64_t registerFigMetadataOutputStorage()
{
  result = _CFRuntimeRegisterClass();
  sFigMetadataOutputStorageID = result;
  return result;
}

double fpsupport_FigMetadataOutputStorageInit(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fpsupport_FigMetadataOutputStorageFinalize(CFDictionaryRef *context)
{
  CFDictionaryApplyFunction(context[7], fpsupport_destroyMetadataRenderPipelineCallbackContextApplierFn, context);
  v2 = context[3];
  if (v2)
  {
    CFRelease(v2);
    context[3] = 0;
  }

  v3 = context[4];
  if (v3)
  {
    CFRelease(v3);
    context[4] = 0;
  }

  v4 = context[6];
  if (v4)
  {
    CFRelease(v4);
    context[6] = 0;
  }

  v5 = context[7];
  if (v5)
  {
    CFRelease(v5);
    context[7] = 0;
  }

  v6 = context[2];
  if (v6)
  {
    CFRelease(v6);
    context[2] = 0;
  }

  v7 = context[8];
  if (v7)
  {
    CFRelease(v7);
    context[8] = 0;
  }
}

void fpsupport_destroyMetadataRenderPipelineCallbackContextApplierFn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fpsupport_unregisterOutputFromRenderPipelineCallbacks(a3);
  FigRenderPipelineGetFigBaseObject();
  if (v3)
  {
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v5)
    {

      v5(v4);
    }
  }
}

void fpsupport_unregisterOutputFromRenderPipelineCallbacks(uint64_t a1)
{
  cf = 0;
  FigRenderPipelineGetFigBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3 && !v3(v2, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], &cf))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void fpsupport_bufferQueueResetOutputCallback(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v2 = *(a2 + 32);
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v5 = v4;
  v6 = *(v3 + 32);
  if (v6)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v6(v2, v4);
  }

  CFRelease(v5);
}

uint64_t fpsupport_forEachMetadataOutputApplierFn(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    result = (*a2)(result, *(a2 + 8));
    *(a2 + 16) = result;
  }

  return result;
}

void fpsupport_simpleRenderPipelineCallback(const __CFDictionary *a1, void *a2)
{
  Value = CFDictionaryGetValue(a1, @"MetadataOutput");
  FigCFDictionaryGetInt32IfPresent();
  if (Value)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      if (*(v4 + 48))
      {
        v6 = CFDictionaryGetValue(*(v4 + 64), 0);
        if (v6)
        {
          v7 = v6;
          CFRetain(v6);
          goto LABEL_20;
        }

        cf = 0;
        v8 = *MEMORY[0x1E695E480];
        if (FigMetadataFilterStorageGetTypeID_onceToken != -1)
        {
          fpsupport_simpleRenderPipelineCallback_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          FigSampleBufferProcessorCreateForTemporalMetadataFilter(v8, *(v5 + 48), &cf);
          if (v10 || (*(Instance + 24) = FigCFWeakReferenceHolderCreateWithReferencedObject(), *(Instance + 16) = 0, *(Instance + 32) = CFRetain(cf), v11 = cf, (v12 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v12(v11, fpsupport_temporalMetadataFilterOutputCallback, Instance))
          {
            v7 = 0;
            v13 = 0;
          }

          else
          {
            v13 = 1;
            v7 = Instance;
            Instance = 0;
          }
        }

        else
        {
          fpsupport_simpleRenderPipelineCallback_cold_2(&v17);
          v7 = 0;
          v13 = v17;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (Instance)
        {
          CFRelease(Instance);
        }

        if (!v13)
        {
          if (!v7)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        CFDictionaryAddValue(*(v5 + 64), 0, v7);
        if (v7)
        {
LABEL_20:
          v14 = v7[4];
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v15)
          {
            v15(v14, a2);
          }

LABEL_22:
          CFRelease(v7);
LABEL_23:
          CFRelease(v5);
          return;
        }
      }

      FigMetadataOutputReactToNewBufferFromTemporalMetadataFilter(v5, a2, 0);
      goto LABEL_23;
    }
  }
}

void fpsupport_temporalMetadataFilterOutputCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    FigMetadataOutputReactToNewBufferFromTemporalMetadataFilter(v5, a3, *(a1 + 16));

    CFRelease(v6);
  }
}

uint64_t registerFigMetadataFilterStorage()
{
  result = _CFRuntimeRegisterClass();
  sFigMetadataFilterStorageID = result;
  return result;
}

void *fpsupport_FigMetadataFilterStorageInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fpsupport_FigMetadataFilterStorageFinalize(uint64_t a1)
{
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
}

uint64_t FigEndpointStreamAudioEngineStartServer()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v1 = FigXPCServerStart();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

void figEndpointStreamAudioEngine_ServerDisassociateAudioEngineCallback(const void *a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v3, 0, 0, 0);
    }

    CFRelease(v3);
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t CreateCompletionCallbackParametersFromMessageAndConnection(void *a1, uint64_t a2, void *a3)
{
  uint64 = xpc_dictionary_get_uint64(a1, "CompletionID");
  if (uint64)
  {
    v6 = uint64;
    v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
    if (!v7)
    {
      CreateCompletionCallbackParametersFromMessageAndConnection_cold_1(&v10);
      return v10;
    }

    v8 = v7;
    *v7 = v6;
    v7[1] = xpc_dictionary_get_uint64(a1, *MEMORY[0x1E69615A0]);
    v8[2] = FigXPCRetain();
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a3 = v8;
  return result;
}

void DestroyCompletionCallbackParameters(void *a1)
{
  if (a1)
  {
    FigXPCRelease();

    free(a1);
  }
}

void *__serverXPCAudioEngine_getAPAudioSourceSharedMemoryReaderCreate_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
  if (result)
  {
    result = dlsym(result, "APAudioSourceSharedMemoryReaderCreate");
    off_1ED4CB7E0 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_98()
{

  return CMBaseObjectGetVTable();
}

uint64_t sbcbao_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  sbcbao_dropLastSbufTracer(a1);
  FigSimpleMutexUnlock();
  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = DerivedStorage[11];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[11] = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *sbcbao_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerInputForBufferedAirPlayOutput %p>", a1);
  return Mutable;
}

uint64_t sbcbao_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"LastSbufEndOPTS"))
  {
    v9 = *(DerivedStorage + 24);
    *a4 = CMTimeCopyAsDictionary(&v9, a3);
  }

  return 0;
}

uint64_t sbcbao_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

void sbcbao_dropLastSbufTracer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    v2 = DerivedStorage;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(DerivedStorage + 88));
    CFStringAppendCString(MutableCopy, "-DROPPING", 0x8000100u);
    FigEndpointStreamAudioEngineSbufTracerDebugPrint(*(v2 + 48));
    v4 = *(v2 + 48);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 48) = 0;
    }

    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }
  }
}

uint64_t sbcbao_SendSampleBuffer(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x1E6960CC0];
  *&v31.value = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  v31.epoch = v6;
  if (a2)
  {
    v7 = DerivedStorage;
    v29 = v5;
    CMSampleBufferGetPresentationTimeStamp(&time, a2);
    CMSampleBufferGetDuration(&time, a2);
    CMSampleBufferGetOutputDuration(&v31, a2);
    NumSamples = CMSampleBufferGetNumSamples(a2);
    CMSampleBufferGetOutputPresentationTimeStamp(&time, a2);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
    FigEndpointStreamAudioEngineSbufTracerDebugPrint(a2);
    if (CMGetAttachment(a2, @"FlushRangeEnd", 0))
    {
      v11 = MEMORY[0x1E6960C70];
      *(v7 + 24) = *MEMORY[0x1E6960C70];
      *(v7 + 40) = *(v11 + 16);
      if (dword_1EAF17770)
      {
        v28 = epoch;
        LODWORD(lhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        epoch = v28;
      }
    }

    if ((*(v7 + 68) & 1) == 0 || (time.value = value, time.timescale = timescale, time.flags = flags, time.epoch = epoch, time2 = *(v7 + 56), (CMTimeCompare(&time, &time2) & 0x80000000) == 0) || (v13 = *(v7 + 80), v13 <= 0x31))
    {
      CMTimeMake(&time2, 400, 1000);
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      CMTimeAdd(&time, &lhs, &time2);
      *(v7 + 56) = time;
      v13 = *(v7 + 80);
    }

    *(v7 + 80) = v13 + 1;
    if ((flags & 0x1D) == 1)
    {
      time = v31;
      *&time2.value = v29;
      time2.epoch = v6;
      if (CMTimeCompare(&time, &time2) >= 1 && NumSamples >= 1)
      {
        if (*(v7 + 36))
        {
          time = *(v7 + 24);
          time2.value = value;
          time2.timescale = timescale;
          time2.flags = flags;
          time2.epoch = epoch;
          if (CMTimeCompare(&time, &time2))
          {
            if (dword_1EAF17770)
            {
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v15 = MEMORY[0x1E6960C70];
            *(v7 + 24) = *MEMORY[0x1E6960C70];
            *(v7 + 40) = *(v15 + 16);
          }
        }

        if ((*(v7 + 36) & 1) == 0)
        {
          *(v7 + 24) = value;
          *(v7 + 32) = timescale;
          *(v7 + 36) = flags;
          *(v7 + 40) = epoch;
        }

        time2 = *(v7 + 24);
        lhs = v31;
        CMTimeAdd(&time, &time2, &lhs);
        *(v7 + 24) = time;
      }
    }
  }

  v16 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    FigSimpleMutexUnlock();
    return a2;
  }

  v17 = CMGetAttachment(a2, @"SbufTracer", 0);
  v18 = CMSampleBufferGetNumSamples(a2);
  v19 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a2, 1u);
  v20 = v19;
  if (v19 && ((Count = CFDictionaryGetCount(v19), v17) ? (v22 = Count == 1) : (v22 = 0), v22))
  {
    sbcbao_dropLastSbufTracer(a1);
    if (!v18)
    {
      *(v16 + 48) = CFRetain(a2);
      FigSimpleMutexUnlock();
      a2 = 0;
LABEL_35:
      CFRelease(v20);
      return a2;
    }
  }

  else
  {
    if (v17)
    {
      sbcbao_dropLastSbufTracer(a1);
    }

    v23 = *(v16 + 48);
    if (v23)
    {
      v24 = CMGetAttachment(v23, @"SbufTracer", 0);
      CMSetAttachment(a2, @"SbufTracer", v24, 0);
      sbcbao_dropLastSbufTracer(a1);
    }
  }

  FigEndpointStreamAudioEngineSbufTracerDebugPrint(a2);
  v25 = *(v16 + 8);
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v26)
  {
    a2 = v26(v25, a2);
  }

  else
  {
    a2 = 4294954514;
  }

  FigSimpleMutexUnlock();
  if (v20)
  {
    goto LABEL_35;
  }

  return a2;
}

uint64_t sbcbao_IsQueueAtOrAboveHighWater(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(v1);
}

uint64_t sbcbao_IsQueueBelowLowWater(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 0;
  }

  return v2(v1);
}

uint64_t sbcbao_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sbcbao_RemoveLowWaterTrigger(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t sbcbao_GetPendingSampleBufferCount(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v3)
  {
    v4 = v3(v2);
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    ++v4;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t sbcbao_PostNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sbcbao_Flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  *(DerivedStorage + 40) = v5;
  *(DerivedStorage + 56) = v4;
  *(DerivedStorage + 72) = v5;
  *(DerivedStorage + 80) = 0;
  FigSimpleMutexLock();
  sbcbao_dropLastSbufTracer(a1);
  FigSimpleMutexUnlock();
  v6 = *(DerivedStorage + 8);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6);
}

uint64_t FigVirtualDisplaySessionCreateWithComponents(uint64_t a1, const void *a2, const void *a3, const void *a4, CFDictionaryRef theDict, CFTypeRef *a6)
{
  cf[23] = *MEMORY[0x1E69E9840];
  v39 = 0;
  cf[0] = 0;
  v38 = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"logPrefix");
  }

  else
  {
    Value = 0;
  }

  if (checkFigVirtualDisplaySessionTrace_once != -1)
  {
    FigVirtualDisplaySessionCreateWithComponents_cold_1();
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (!a6 || !a3 || !a4)
  {
    v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v34 = 4294955226;
    goto LABEL_30;
  }

  if (a2)
  {
    v15 = CFRetain(a2);
    cf[0] = v15;
    goto LABEL_12;
  }

  v15 = FigVirtualDisplaySourceScreenCreate(a1, theDict, cf, v14);
  if (!v15)
  {
LABEL_12:
    FigVirtualDisplaySessionGetClassID(v15, v16);
    v15 = CMDerivedObjectCreate();
    if (!v15)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = 0;
      *(DerivedStorage + 56) = FigOSTransactionCreate();
      *(DerivedStorage + 8) = dispatch_queue_create("com.apple.coremedia.vdsession.stateq", 0);
      *(DerivedStorage + 16) = dispatch_queue_create("com.apple.coremedia.vdsession.notifq", 0);
      *(DerivedStorage + 24) = dispatch_queue_create("com.apple.coremedia.vdsession.sinkq", 0);
      *(DerivedStorage + 32) = CFRetain(cf[0]);
      *(DerivedStorage + 40) = CFRetain(a3);
      *(DerivedStorage + 48) = CFRetain(a4);
      LogPrefix = FVDUtilsCreateLogPrefix(Value, v39);
      *(DerivedStorage + 72) = LogPrefix;
      FigVirtualDisplaySourceGetCMBaseObject();
      v20 = v19;
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v21)
      {
        v21(v20, @"LogPrefix", LogPrefix);
      }

      FigVirtualDisplayProcessorGetCMBaseObject();
      v23 = v22;
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v24)
      {
        v24(v23, @"LogPrefix", LogPrefix);
      }

      FigVirtualDisplaySinkGetCMBaseObject();
      v26 = v25;
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v27)
      {
        v27(v26, @"LogPrefix", LogPrefix);
      }

      v28 = *MEMORY[0x1E695E480];
      FigVirtualDisplaySourceGetCMBaseObject();
      v30 = v29;
      v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v31)
      {
        v31(v30, @"sourceType", v28, &v38);
      }

      v32 = FigCFEqual();
      *(DerivedStorage + 101) = v32;
      if (v32)
      {
        *(DerivedStorage + 103) = 1;
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
      }

      if (theDict)
      {
        v33 = CFDictionaryGetValue(theDict, @"clientName");
        *(DerivedStorage + 64) = v33;
        if (v33)
        {
          CFRetain(v33);
          if (*(DerivedStorage + 64))
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        *(DerivedStorage + 64) = 0;
      }

      FigCopyBacktrace();
LABEL_29:
      v34 = 0;
      *a6 = v39;
      v39 = 0;
      goto LABEL_30;
    }
  }

  v34 = v15;
  v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_30:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v34;
}

uint64_t FigVirtualDisplaySessionCreateWithConfiguration(const __CFAllocator *a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  value[16] = *MEMORY[0x1E69E9840];
  v31 = 0;
  cf = 0;
  v30 = 0;
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"logPrefix");
  }

  if (checkFigVirtualDisplaySessionTrace_once != -1)
  {
    FigVirtualDisplaySessionCreateWithComponents_cold_1();
  }

  if (!theDict)
  {
    v7 = 0;
LABEL_10:
    v6 = @"Screen";
    goto LABEL_11;
  }

  v6 = CFDictionaryGetValue(theDict, @"sourceType");
  v7 = CFDictionaryGetValue(theDict, @"sinkType");
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFStringGetTypeID())
  {
    goto LABEL_10;
  }

LABEL_11:
  if (!v7 || (v9 = CFGetTypeID(v7), v9 != CFStringGetTypeID()))
  {
    v7 = @"FileWriter";
  }

  if (CFStringCompare(v6, @"Screen", 1uLL))
  {
    if (CFStringCompare(v6, @"Movie", 1uLL))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
    }

    else
    {
      v10 = FigVirtualDisplaySourceMovieCreate(a1, 0, theDict, &cf);
    }

    v11 = v10;
    if (v10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      goto LABEL_46;
    }
  }

  else
  {
    cf = 0;
  }

  if (CFStringCompare(v7, @"FileWriter", 1uLL))
  {
    if (CFStringCompare(v7, @"Conduit", 1uLL))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
    }

    else
    {
      v12 = FigVirtualDisplaySinkConduitCreate(a1, 0, theDict, &v31);
    }
  }

  else
  {
    v12 = FigVirtualDisplaySinkFileWriterCreate(a1, &v31);
  }

  v11 = v12;
  if (v12)
  {
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    if (theDict)
    {
      value[0] = 0;
      if (CFDictionaryGetValueIfPresent(theDict, @"Destination", value))
      {
        v13 = value[0];
        FigVirtualDisplaySinkGetCMBaseObject();
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v16)
        {
          v16(v15, @"Destination", v13);
        }
      }

      if (CFDictionaryGetValueIfPresent(theDict, @"deviceInfo", value))
      {
        v17 = value[0];
        FigVirtualDisplaySinkGetCMBaseObject();
        v19 = v18;
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v20)
        {
          v20(v19, @"deviceInfo", v17);
        }
      }
    }

    v21 = FigVirtualDisplayProcessorCreate(a1, theDict, &v30);
    if (v21)
    {
      v11 = v21;
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      v11 = FigVirtualDisplaySessionCreateWithComponents(a1, cf, v30, v31, theDict, a3);
      if (!v11)
      {
        goto LABEL_35;
      }

      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    }
  }

LABEL_46:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v11;
}

CFTypeRef FigVirtualDisplaySessionActivateWithSourceAndSink(const void *a1, const void *a2, CFDictionaryRef theDict)
{
  cf[22] = *MEMORY[0x1E69E9840];
  v17 = 0;
  cf[0] = 0;
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"logPrefix");
  }

  if (checkFigVirtualDisplaySessionTrace_once == -1)
  {
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    FigVirtualDisplaySessionCreateWithComponents_cold_1();
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CustomProcessor");
    cf[0] = Value;
    if (Value)
    {
      v7 = Value;
      CFRetain(Value);
      v8 = CFGetTypeID(v7);
      if (v8 == FigVirtualDisplayProcessorGetTypeID())
      {
        v9 = *MEMORY[0x1E695E480];
        goto LABEL_11;
      }

LABEL_16:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      goto LABEL_18;
    }
  }

  v9 = *MEMORY[0x1E695E480];
  if (FigVirtualDisplayProcessorCreate(*MEMORY[0x1E695E480], theDict, cf))
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  v7 = cf[0];
LABEL_11:
  if (FigVirtualDisplaySessionCreateWithComponents(v9, a1, v7, a2, theDict, &v17))
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  v10 = v17;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11 || v11(v10, theDict, 0))
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v17;
}

uint64_t FigVirtualDisplaySessionDeactivate(const void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigVirtualDisplaySessionGetTypeID(v2, v3)))
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(a1);
    }

    CFRelease(a1);
    return 0;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294955226;
  }
}

CFTypeRef FigVirtualDisplaySessionActivate(CFDictionaryRef theDict)
{
  v7[22] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"logPrefix");
  }

  if (checkFigVirtualDisplaySessionTrace_once != -1)
  {
    FigVirtualDisplaySessionCreateWithComponents_cold_1();
  }

  if (FigVirtualDisplaySessionCreateWithConfiguration(*MEMORY[0x1E695E480], theDict, v7))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_10;
  }

  v2 = v7[0];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v3 || v3(v2, theDict, 0))
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
LABEL_10:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v7[0];
}

dispatch_queue_t __screenRecordingMonitorGetCurrent_block_invoke(__n128 a1)
{
  FVDUtilsSessionServerEnabled();
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_113 = result != 0;
  if (result)
  {
    qword_1ED4CB7F8 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    qword_1ED4CB800 = FigSimpleMutexCreate();
    result = dispatch_queue_create("com.apple.coremedia.vdsessionscreenrecordingmon.notifq", 0);
    qword_1ED4CB808 = result;
  }

  return result;
}

void fvds_finalize(__CFString *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*DerivedStorage)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    fvds_appendSessionStartInfo(a1, Mutable);
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigBytePumpRelease(Mutable);
    __break(1u);
  }

  else
  {
    v4 = *(DerivedStorage + 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(DerivedStorage + 16);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(DerivedStorage + 24);
    if (v6)
    {
      dispatch_release(v6);
    }

    v7 = *(DerivedStorage + 32);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(DerivedStorage + 40);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(DerivedStorage + 48);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(DerivedStorage + 64);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(DerivedStorage + 80);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(DerivedStorage + 56);
    if (v12)
    {
      os_release(v12);
      *(DerivedStorage + 56) = 0;
    }

    v13 = *(DerivedStorage + 72);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 72) = 0;
    }
  }
}

CFStringRef fvds_copyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v3 = *MEMORY[0x1E695E480];
  FigVirtualDisplaySourceGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"sourceType", v3, &v23);
  }

  FigVirtualDisplayProcessorGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, @"processorType", v3, &v22);
  }

  FigVirtualDisplaySinkGetCMBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, @"Type", v3, &v21);
  }

  v13 = CFGetAllocator(a1);
  v14 = *DerivedStorage;
  v15 = CFGetRetainCount(a1);
  v16 = v23;
  if (!v23)
  {
    v16 = @"source";
  }

  v18 = v21;
  v17 = v22;
  if (!v22)
  {
    v17 = @"processor";
  }

  if (!v21)
  {
    v18 = @"sink";
  }

  v19 = CFStringCreateWithFormat(v13, 0, @"<FigVirtualDisplaySession %p state: %d retainCount: %ld> { %@ (%p) -> %@ (%p) -> %@ (%p) }", a1, v14, v15, v16, DerivedStorage[4], v17, DerivedStorage[5], v18, DerivedStorage[6]);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v19;
}

uint64_t fvds_copyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"IsIdle"))
  {
    FigVirtualDisplayProcessorGetCMBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {

      return v9(v8, @"IsIdle", a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954512;
  }
}

uint64_t fvds_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"ScreenRecording"))
  {
    if (a3 && (v7 = CFGetTypeID(a3), v7 == CFBooleanGetTypeID()))
    {
      v8 = *(DerivedStorage + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __fvds_setProperty_block_invoke;
      block[3] = &__block_descriptor_tmp_77_1;
      block[4] = DerivedStorage;
      block[5] = a3;
      block[6] = a1;
      dispatch_sync(v8, block);
      return 0;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 4294954516;
    }
  }

  else
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954512;
  }
}

void fvds_appendSessionStartInfo(uint64_t a1, __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1E695E480];
  if (v6)
  {
    v8 = CFRetain(v6);
    goto LABEL_3;
  }

  v10 = *(v5 + 80);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v12 = Count;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 80), v13);
        memset(&v18, 0, sizeof(v18));
        dladdr(ValueAtIndex, &v18);
        if (v18.dli_fname)
        {
          v15 = strrchr(v18.dli_fname, 47);
          if (v15)
          {
            v16 = v15;
            if (strcmp(v15 + 1, "MediaToolbox"))
            {
              break;
            }
          }
        }

        if (v12 == ++v13)
        {
          goto LABEL_12;
        }
      }

      v8 = CFStringCreateWithCString(*v7, v16 + 1, 0x8000100u);
LABEL_3:
      v9 = v8;
      if (v8)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v9 = CFRetain(@"???");
LABEL_13:
  if (fvds_appendSessionStartInfo_once != -1)
  {
    fvds_appendSessionStartInfo_cold_1();
  }

  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(*v7, fvds_appendSessionStartInfo_dateFormatter, *(DerivedStorage + 88));
  if (CFStringGetLength(a2) >= 1)
  {
    CFStringAppendFormat(a2, 0, @" ");
  }

  CFStringAppendFormat(a2, 0, @"{ session %p started at %@ by %@ }", a1, StringWithAbsoluteTime, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  if (StringWithAbsoluteTime)
  {
    CFRelease(StringWithAbsoluteTime);
  }
}

CFDateFormatterRef __fvds_appendSessionStartInfo_block_invoke()
{
  result = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0xFF3uLL);
  fvds_appendSessionStartInfo_dateFormatter = result;
  return result;
}

double __fvds_setProperty_block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 101))
  {
    Value = CFBooleanGetValue(*(result + 40));
    *(*(result + 32) + 102) = Value;
    v4 = *(result + 48);
    if (Value)
    {

      return recordingSessionRegister(v4);
    }

    else
    {

      return recordingSessionUnregister(v4);
    }
  }

  return v5;
}

uint64_t sessionStart(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*DerivedStorage)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    CFRetain(a2);
  }

LABEL_4:
  v8 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionStart_block_invoke;
  block[3] = &unk_1E7493178;
  block[4] = a3;
  block[5] = a1;
  block[6] = a2;
  block[7] = DerivedStorage;
  dispatch_async(v8, block);
  return 0;
}

uint64_t sessionStop(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionStop_block_invoke_0;
  block[3] = &__block_descriptor_tmp_95_1;
  block[4] = a1;
  dispatch_sync(v4, block);
  return 0;
}

uint64_t sessionSuspend(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*DerivedStorage != 2)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionSuspend_block_invoke;
  block[3] = &__block_descriptor_tmp_96_2;
  block[4] = a1;
  dispatch_sync(v4, block);
  return 0;
}

uint64_t sessionResume(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*DerivedStorage != 1)
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionResume_block_invoke;
  block[3] = &unk_1E7493220;
  block[4] = &v11;
  block[5] = a1;
  dispatch_sync(v4, block);
  v5 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t sessionGetStartStatus(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __sessionGetStartStatus_block_invoke;
  v5[3] = &unk_1E7493248;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sessionCopyComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __sessionCopyComponents_block_invoke;
  v10[3] = &__block_descriptor_tmp_99_1;
  v10[4] = a2;
  v10[5] = DerivedStorage;
  v10[6] = a3;
  v10[7] = a4;
  dispatch_sync(v8, v10);
  return 0;
}

void __sessionStart_block_invoke(void *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v46 = 0;
  if (*DerivedStorage)
  {
    v48 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = -12070;
LABEL_54:
    v48 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    fvds_stop(v2);
    goto LABEL_55;
  }

  *(DerivedStorage + 88) = CFAbsoluteTimeGetCurrent();
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, @"clientName");
    if (Value)
    {
      v6 = *(DerivedStorage + 64);
      *(DerivedStorage + 64) = Value;
      CFRetain(Value);
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  if (*(DerivedStorage + 101))
  {
    v7 = CMBaseObjectGetDerivedStorage();
    if (qword_1ED4CB830 != -1)
    {
      __sessionStart_block_invoke_cold_1();
    }

    if (byte_1ED4CB7F0 && *(v7 + 101))
    {
      FigSimpleMutexLock();
      if (qword_1ED4CB818)
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        fvds_appendSessionStartInfo(qword_1ED4CB818, Mutable);
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      }

      else
      {
        if (!*(v7 + 103))
        {
          CFSetAddValue(qword_1ED4CB820, v2);
LABEL_21:
          __sessionStart_block_invoke_cold_2();
          goto LABEL_22;
        }

        if (CFSetGetCount(qword_1ED4CB820) < 1)
        {
          qword_1ED4CB818 = v2;
          goto LABEL_21;
        }

        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        CFSetApplyFunction(qword_1ED4CB820, fvds_appendSessionStartInfo, Mutable);
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      FigSimpleMutexUnlock();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = -12073;
      goto LABEL_54;
    }
  }

LABEL_22:
  if (*(DerivedStorage + 4))
  {
    v48 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *(DerivedStorage + 32);
  v14 = *(DerivedStorage + 40);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v15)
  {
    v12 = -12782;
LABEL_52:
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
LABEL_53:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_54;
  }

  v16 = v15(v13, v14);
  if (v16)
  {
    v12 = v16;
    goto LABEL_52;
  }

  *(DerivedStorage + 4) = 1;
  v17 = *(DerivedStorage + 40);
  v18 = *(DerivedStorage + 48);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19)
  {
    v12 = -12782;
    goto LABEL_52;
  }

  v20 = v19(v17, v18);
  if (v20)
  {
    v12 = v20;
    goto LABEL_52;
  }

  v21 = *(DerivedStorage + 48);
  v22 = *(DerivedStorage + 24);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v23)
  {
    v23(v21, v22);
  }

  v24 = getenv("WIRELESSDISPLAY_DISABLE_ENCRYPTION");
  if (v24)
  {
    if (*v24 == 49 && !v24[1])
    {
      FigVirtualDisplaySinkGetCMBaseObject();
      v35 = v34;
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v36)
      {
        v36(v35, @"useEncryption", *MEMORY[0x1E695E4C0]);
      }
    }
  }

  *(DerivedStorage + 4) = 2;
  v25 = *(DerivedStorage + 48);
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v26)
  {
    v12 = -12782;
    goto LABEL_52;
  }

  v27 = v26(v25, v3, 0);
  if (v27)
  {
    v12 = v27;
    goto LABEL_52;
  }

  *(DerivedStorage + 4) = 3;
  v28 = *(DerivedStorage + 40);
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v29)
  {
    v12 = -12782;
    goto LABEL_52;
  }

  v30 = v29(v28, v3);
  if (v30)
  {
    v12 = v30;
    goto LABEL_52;
  }

  *(DerivedStorage + 4) = 4;
  CMNotificationCenterGetDefaultLocalCenter();
  v31 = FigNotificationCenterAddWeakListener();
  if (v31 || (*(DerivedStorage + 100) = 1, (v31 = FigVirtualDisplaySourceStart(*(DerivedStorage + 32), v3)) != 0))
  {
    v12 = v31;
    v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
    goto LABEL_53;
  }

  *(DerivedStorage + 4) = 5;
  FigCFDictionaryGetBooleanIfPresent();
  if (v46)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  *DerivedStorage = v32;
  if (*(DerivedStorage + 102))
  {
    recordingSessionRegister(v2);
  }

  v12 = 0;
LABEL_55:
  *(DerivedStorage + 96) = v12;
  v39 = a1[6];
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = a1[4];
  if (v40)
  {
    v41 = *(a1[7] + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __sessionStart_block_invoke_2;
    block[3] = &unk_1E7493150;
    block[4] = v40;
    v45 = v12;
    dispatch_async(v41, block);
  }
}

void fvds_handleSourceFatalError(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CFRetain(a2);
  v7 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvds_handleSourceFatalError_block_invoke;
  block[3] = &__block_descriptor_tmp_94_0;
  block[4] = a2;
  dispatch_async(v7, block);
}

uint64_t FigVirtualDisplaySourceStart(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

CFMutableSetRef __screenSessionManagerGetCurrent_block_invoke(__n128 a1)
{
  byte_1ED4CB7F0 = FVDUtilsSessionServerEnabled();
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1ED4CB7F0 = result != 0;
  if (result)
  {
    qword_1ED4CB828 = FigSimpleMutexCreate();
    result = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    qword_1ED4CB820 = result;
  }

  return result;
}

void __fvds_handleSourceFatalError_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

double __sessionSuspend_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage == 2)
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 32);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v6)
    {
      v6(v5);
    }

    v7 = *(v4 + 40);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v8)
    {
      v8(v7);
    }

    v9 = *(v4 + 48);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v10)
    {
      v10(v9);
    }

    *v4 = 1;
    if (*(v4 + 102))
    {

      return recordingSessionUnregister(v1);
    }
  }

  return result;
}

void __sessionResume_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*DerivedStorage == 1)
  {
    v5 = *(DerivedStorage + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if ((!v6 || ((v7 = v6(v5), v7 != -12782) ? (v8 = v7 == 0) : (v8 = 1), v8)) && ((v9 = *(v4 + 40), (v10 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) || ((v7 = v10(v9), v7 != -12782) ? (v11 = v7 == 0) : (v11 = 1), v11)) && ((v12 = *(v4 + 32), (v13 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) || ((v7 = v13(v12), v7 != -12782) ? (v14 = v7 == 0) : (v14 = 1), v14)))
    {
      *v4 = 2;
      if (*(v4 + 102))
      {
        recordingSessionRegister(v2);
      }

      v16 = 0;
    }

    else
    {
      v16 = v7;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = -12070;
  }

  *(*(*(a1 + 32) + 8) + 24) = v16;
}

void *__sessionCopyComponents_block_invoke(void *result)
{
  v1 = result;
  v2 = result[4];
  if (v2)
  {
    result = *(result[5] + 32);
    if (result)
    {
      result = CFRetain(result);
      v2 = v1[4];
    }

    *v2 = result;
  }

  v3 = v1[6];
  if (v3)
  {
    result = *(v1[5] + 40);
    if (result)
    {
      result = CFRetain(result);
      v3 = v1[6];
    }

    *v3 = result;
  }

  v4 = v1[7];
  if (v4)
  {
    result = *(v1[5] + 48);
    if (result)
    {
      result = CFRetain(result);
      v4 = v1[7];
    }

    *v4 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_157(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return _os_log_send_and_compose_impl(a1, 0, va, 128, a5, v17, v18, a8);
}

double OUTLINED_FUNCTION_8_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t FigTTMLDocumentWriterCreateRegionBuilder(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateRegionBuilder_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateRegionBuilder_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterRegionBuilder_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t figTTMLDocumentWriterRegionBuilder_StartElement(uint64_t a1, int a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], a2, *(DerivedStorage + 16), &cf);
  if (v4)
  {
    v7 = cf;
    if (!cf)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    FigTTMLDocumentWriterElementAddChildElement(v5, cf);
  }

  else
  {
    if (cf)
    {
      v6 = CFRetain(cf);
    }

    else
    {
      v6 = 0;
    }

    *(DerivedStorage + 8) = v6;
  }

  v7 = cf;
  *(DerivedStorage + 16) = cf;
  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

  return v4;
}

uint64_t figTTMLDocumentWriterRegionBuilder_AddCaptionData(uint64_t a1, const void *a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementAddChildElement(*(DerivedStorage + 16), a2);
  return 0;
}

uint64_t figTTMLDocumentWriterRegionBuilder_SetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementSetAttribute(*(DerivedStorage + 16), a2, a3);
  return 0;
}

uint64_t figTTMLDocumentWriterRegionBuilder_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    return 4294950721;
  }

  v2 = *DerivedStorage;

  return FigTTMLDocumentWriterFlush(v2);
}

void addRegionElement(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v16 = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], 10, *a3, &v16);
  if (v6 || (MEMORY[0x19A8D3660](&initRegionPropertyToAttributeMapOnce, initRegionPropertyToAttributeMap), (v6 = FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements(a2, v16, sExplicitRegionPropertyToAttributeMap)) != 0))
  {
    v11 = v6;
LABEL_30:
    *(a3 + 8) = v11;
    goto LABEL_24;
  }

  v7 = v16;
  cf.value = 0;
  v18 = 0;
  v8 = FigTTMLDocumentWriterRegionTimelineCopyProperty(a2, *MEMORY[0x1E69613B0], &cf);
  if (v8 || (v8 = FigTTMLDocumentWriterRegionTimelineCopyProperty(a2, *MEMORY[0x1E6961328], &v18)) != 0)
  {
    v11 = v8;
    goto LABEL_12;
  }

  FigGeometryDimensionMake();
  v9 = FigGeometryDimensionCopyAsDictionary();
  v10 = v9;
  if (!(cf.value | v18))
  {
    v11 = 0;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (cf.value)
  {
    if (v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    FigCaptionDynamicStyleCreate();
    if (v18)
    {
      goto LABEL_8;
    }
  }

  FigCaptionDynamicStyleCreate();
LABEL_8:
  memset(&v17, 0, sizeof(v17));
  FigTTMLDocumentWriterRegionTimelineGetTimeRange(a2, &v17);
  *&v14.start.value = *&v17.start.value;
  v14.start.epoch = v17.start.epoch;
  v11 = FigTTMLDocumentWriterMapWidthAndHeightPropertiesToExtentAttributeAndSet(cf.value, v18, &v14.start, v7);
  if (v10)
  {
LABEL_11:
    CFRelease(v10);
  }

LABEL_12:
  if (v18)
  {
    CFRelease(v18);
  }

  if (cf.value)
  {
    CFRelease(cf.value);
  }

  if (v11)
  {
    goto LABEL_30;
  }

  if (FigTTMLDocumentWriterRegionTimelineIsAnimated(a2))
  {
    memset(&v17, 0, sizeof(v17));
    FigTTMLDocumentWriterRegionTimelineGetTimeRange(a2, &v17);
    *&v14.start.value = *&v17.start.value;
    v14.start.epoch = v17.start.epoch;
    v12 = CMTimeCopyAsDictionary(&v14.start, v5);
    v14 = v17;
    CMTimeRangeGetEnd(&cf, &v14);
    v13 = CMTimeCopyAsDictionary(&cf, v5);
    FigTTMLDocumentWriterElementSetAttribute(v16, @"begin", v12);
    FigTTMLDocumentWriterElementSetAttribute(v16, @"end", v13);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  FigTTMLDocumentWriterElementAddChildElement(*a3, v16);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_24:
  if (v16)
  {
    CFRelease(v16);
  }
}

void initRegionPropertyToAttributeMap()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961338], FigTTMLDocumentWriterMapPropertyToAttribute_Identifier);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961390], FigTTMLDocumentWriterMapPropertyToAttribute_Position);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69612F8], FigTTMLDocumentWriterMapPropertyToAttribute_ClipOverflow);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69613A0], FigTTMLDocumentWriterMapPropertyToAttribute_ShowBackground);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961380], FigTTMLDocumentWriterMapPropertyToAttribute_Opacity);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961320], FigTTMLDocumentWriterMapPropertyToAttribute_ForcedDisplay);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69612E8], FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69613B8], FigTTMLDocumentWriterMapPropertyToAttribute_WritingMode);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961308], FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAlign);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961330], FigTTMLDocumentWriterMapPropertyToAttribute_Hidden);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961370], FigTTMLDocumentWriterMapPropertyToAttribute_Invisible);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961388], FigTTMLDocumentWriterMapPropertyToAttribute_Padding);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69613C0], FigTTMLDocumentWriterMapPropertyToAttribute_ZIndex);
  sExplicitRegionPropertyToAttributeMap = Mutable;
  v3 = CFDictionaryCreateMutable(v0, 0, v1, 0);
  CFDictionarySetValue(v3, *MEMORY[0x1E6961310], FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAspectRatio);
  CFDictionarySetValue(v3, *MEMORY[0x1E69612D0], FigTTMLDocumentWriterMapPropertyToAttribute_ActiveArea);
  CFDictionarySetValue(v3, *MEMORY[0x1E69612F0], FigTTMLDocumentWriterMapPropertyToAttribute_CellResolution);
  sRootContainerRegionPropertyToAttributeMap = v3;
}

uint64_t copyRootContainerRegion(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  cf = 0;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4 || (v5 = *MEMORY[0x1E695E480], v4(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &v15), !v15))
  {
LABEL_15:
    v12 = 0;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v6 = *MEMORY[0x1E6961300];
  v7 = *MEMORY[0x1E6961318];
  while (1)
  {
    v14 = 0;
    v8 = FigCaptionRegionGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(v8, v6, v5, &v14);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v10 = FigCaptionRegionGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, v7, v5, &cf);
    }

    if (!v14 && !FigCFEqual())
    {
      break;
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v15 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  v12 = v15;
  v15 = 0;
  if (a2)
  {
LABEL_16:
    *a2 = v12;
    a2 = 2;
    v12 = 0;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return a2;
}

uint64_t CreatePropertyStore(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, NSObject *a6, NSObject *a7, uint64_t a8, const void *a9, void *a10)
{
  v18 = *MEMORY[0x1E695E480];
  if (_MergedGlobals_114 != -1)
  {
    CreatePropertyStore_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v20 = Instance;
    v21 = CFRetain(a1);
    v20[7] = v21;
    Count = CFArrayGetCount(v21);
    Mutable = CFDictionaryCreateMutable(v18, Count, MEMORY[0x1E695E9D8], 0);
    v20[8] = Mutable;
    if (Mutable)
    {
      v24 = CFArrayCreateMutable(v18, 0, 0);
      v20[10] = v24;
      if (v24)
      {
        v25 = FigDispatchQueueCreateWithPriority();
        v20[2] = v25;
        if (v25)
        {
          v20[13] = a8;
          v20[14] = CFRetain(a9);
          v20[11] = a6;
          dispatch_retain(a6);
          v20[12] = a7;
          dispatch_retain(a7);
          v20[3] = CFRetain(a2);
          v20[4] = CFRetain(a3);
          v20[5] = CFRetain(a4);
          v26 = CFRetain(a5);
          result = 0;
          v20[6] = v26;
          *a10 = v20;
          return result;
        }

        v28 = 457;
      }

      else
      {
        v28 = 454;
      }
    }

    else
    {
      v28 = 452;
    }

    CreatePropertyStore_cold_2(v28, v20, &v29);
    return v29;
  }

  else
  {
    CreatePropertyStore_cold_3(&v30);
    return v30;
  }
}

uint64_t InitializeProperty(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = a5;
  v11 = 0;
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  v8 = a4;
  v9 = 0;
  dispatch_sync_f(*(a1 + 16), v6, PerformInitializeProperty);
  return v11;
}

uint64_t QueryProperty(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5, void *a6)
{
  memset(v16, 0, sizeof(v16));
  v14[0] = a1;
  v14[1] = a2;
  *cf = 0u;
  LOBYTE(v16[1]) = 0;
  dispatch_sync_f(*(a1 + 16), v14, PerformQueryProperty);
  if (a3)
  {
    *a3 = cf[0];
  }

  if (a4)
  {
    *a4 = HIDWORD(cf[0]);
  }

  if (a5)
  {
    v10 = cf[1];
    if (cf[1])
    {
      v10 = CFRetain(cf[1]);
    }

    *a5 = v10;
  }

  if (a6)
  {
    v11 = v16[0];
    if (v16[0])
    {
      v11 = CFRetain(v16[0]);
    }

    *a6 = v11;
  }

  v12 = HIDWORD(v16[1]);
  TearDownFetchPropertyContext(v14);
  return v12;
}

void TearDownFetchPropertyContext(void *a1)
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

  v4 = a1[6];
  if (v4)
  {
    dispatch_release(v4);
    a1[6] = 0;
  }
}

uint64_t RequestPropertiesAsync(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = a4;
  v9 = 0;
  context[1] = a2;
  v7 = 0;
  context[0] = a1;
  dispatch_sync_f(*(a1 + 16), context, PerformMultiplePropertyRequest);
  result = v9;
  if (a3)
  {
    if (!v9)
    {
      *a3 = v7;
    }
  }

  return result;
}

void PerformMultiplePropertyRequest(uint64_t *a1)
{
  Count = CFArrayGetCount(a1[1]);
  if (a1[3])
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9F8]);
    if (!Mutable)
    {
      PerformMultiplePropertyRequest_cold_1(v11);
      v4 = v11[0];
      goto LABEL_21;
    }
  }

  else
  {
    Mutable = 0;
  }

  if (Count < 1)
  {
    v6 = 1;
    if (Mutable)
    {
LABEL_15:
      if (a1[3] && CFSetGetCount(Mutable))
      {
        *a1[3] = FigAtomicIncrement32();
        v9 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
        if (!v9)
        {
          PerformMultiplePropertyRequest_cold_2(v11);
          v4 = v11[0];
          goto LABEL_20;
        }

        v10 = v9;
        *v9 = *a1[3];
        *(v9 + 1) = CFRetain(Mutable);
        CFArrayAppendValue(*(*a1 + 80), v10);
      }
    }

LABEL_19:
    v4 = 0;
    *(a1 + 16) = v6;
    if (!Mutable)
    {
      goto LABEL_21;
    }

LABEL_20:
    CFRelease(Mutable);
    goto LABEL_21;
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1[1], v5);
    v8 = *a1;
    v18 = 0;
    v11[0] = v8;
    v11[1] = ValueAtIndex;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v17 = 0;
    v16 = 0;
    PerformObtainProperty(v11);
    v4 = v16;
    if (v16)
    {
      break;
    }

    if ((v12 & 0xFFFFFFFE) != 2)
    {
      v6 = 0;
      if (Mutable)
      {
        CFSetAddValue(Mutable, ValueAtIndex);
        v6 = 0;
      }
    }

    TearDownFetchPropertyContext(v11);
    if (Count == ++v5)
    {
      if (Mutable)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  TearDownFetchPropertyContext(v11);
  if (Mutable)
  {
    goto LABEL_20;
  }

LABEL_21:
  *(a1 + 8) = v4;
}

void NotifyCompletedBatch(uint64_t a1, int a2)
{
  valuePtr = a2;
  v2 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v3 = CFDictionaryCreate(v2, kFigAssetPayloadKey_BatchID, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ReviseProperty(void *a1, const void *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040D8CEB3B9uLL);
  if (v6)
  {
    v7 = v6;
    *v6 = CFRetain(a1);
    v7[1] = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v7[4] = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = a1[2];

    dispatch_async_f(v8, v7, PerformReviseProperty);
  }
}

void PerformJobCompletion(void *a1)
{
  if (!*(a1 + 49))
  {
    StoreProperty(*a1, a1[1], *(a1 + 4), a1[4], a1[3]);
  }

  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void StoreByProduct(void *a1, const void *a2, int a3, const void *a4, const void *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040D8CEB3B9uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = CFRetain(a1);
    v11[1] = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      v11[3] = a4;
      if (a4)
      {
        CFRetain(a4);
      }
    }

    *(v11 + 4) = a3;
    v11[4] = a5;
    if (a5)
    {
      CFRetain(a5);
    }

    v12 = a1[2];

    dispatch_async_f(v12, v11, PerformStoreByProduct);
  }
}

void PerformStoreByProduct(CFTypeRef *a1)
{
  StoreProperty(*a1, a1[1], *(a1 + 4), a1[3], a1[4]);
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t DefineMacroProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), v4, PerformDefineMacroProperty);
  return v5;
}

void PerformDefineMacroProperty(const __CFArray ***a1)
{
  v2 = (*a1)[15];
  if (v2)
  {
    if (CFDictionaryContainsKey(v2, a1[1]))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, LODWORD(value[0]));
LABEL_4:
      v4 = v3;
      goto LABEL_30;
    }

    Mutable = (*a1)[15];
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    (*a1)[15] = Mutable;
  }

  CFDictionarySetValue(Mutable, a1[1], a1[2]);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v27 = 0;
  *cf = 0u;
  v26 = 0u;
  *value = 0u;
  v22 = 0;
  Count = CFArrayGetCount(v8);
  v23 = v6;
  if (Count < 1)
  {
    v3 = AccessPropertyInfo(v6, v7, &v22);
    if (v3)
    {
      goto LABEL_4;
    }

    if (Count)
    {
LABEL_31:
      StoreProperty(v6, v7, 0, 0, 0);
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = *MEMORY[0x1E695E480];
    v13 = MEMORY[0x1E695E9F8];
    do
    {
      value[0] = CFArrayGetValueAtIndex(v8, v11);
      PerformQueryProperty(&v23);
      v4 = DWORD1(v26);
      if (DWORD1(v26))
      {
        goto LABEL_40;
      }

      if (LODWORD(value[1]) != 2)
      {
        if (LODWORD(value[1]) == 3)
        {
          v20 = HIDWORD(value[1]);
          if (cf[0])
          {
            v18 = CFRetain(cf[0]);
          }

          else
          {
            v18 = 0;
          }

          if (v10)
          {
            CFRelease(v10);
          }

          TearDownFetchPropertyContext(&v23);
          v21 = AccessPropertyInfo(v6, v7, &v22);
          if (!v21)
          {
            StoreProperty(v6, v7, v20, v18, 0);
            v10 = 0;
            goto LABEL_26;
          }

          v4 = v21;
          goto LABEL_28;
        }

        if (!v10)
        {
          v10 = CFSetCreateMutable(v12, Count, v13);
          if (!v10)
          {
            PerformDefineMacroProperty_cold_2(&v28);
            v4 = v28;
            goto LABEL_30;
          }
        }

        CFSetAddValue(v10, value[0]);
      }

      TearDownFetchPropertyContext(&v23);
      ++v11;
    }

    while (Count != v11);
    v14 = AccessPropertyInfo(v6, v7, &v22);
    if (v14)
    {
      v4 = v14;
LABEL_40:
      v18 = 0;
      if (v10)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (!v10)
    {
      goto LABEL_31;
    }

    v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x600405C6656D0uLL);
    if (!v15)
    {
      PerformDefineMacroProperty_cold_1(&v28);
      v18 = 0;
      v4 = v28;
      goto LABEL_27;
    }

    v16 = v15;
    *v15 = CFRetain(v7);
    v16[1] = CFRetain(v10);
    v17 = v6[16];
    if (!v17)
    {
      v17 = CFArrayCreateMutable(v12, 0, 0);
      v6[16] = v17;
    }

    CFArrayAppendValue(v17, v16);
  }

  v18 = 0;
LABEL_26:
  v4 = 0;
  v19 = v22;
  *(v22 + 32) = 1;
  *(v19 + 2) = 0;
  if (v10)
  {
LABEL_27:
    CFRelease(v10);
  }

LABEL_28:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_30:
  *(a1 + 6) = v4;
}

uint64_t CreateValidationStore(const void *a1, NSObject *a2, NSObject *a3, uint64_t a4, const void *a5, void *a6)
{
  v12 = *MEMORY[0x1E695E480];
  if (qword_1ED4CB848 != -1)
  {
    CreateValidationStore_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    CreateValidationStore_cold_3(&v22);
    return v22;
  }

  v14 = Instance;
  Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], 0);
  v14[4] = Mutable;
  if (!Mutable)
  {
    v20 = 1497;
LABEL_15:
    CreatePropertyStore_cold_2(v20, v14, &v21);
    return v21;
  }

  v16 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], 0);
  v14[5] = v16;
  if (!v16)
  {
    v20 = 1499;
    goto LABEL_15;
  }

  v17 = dispatch_queue_create("AssetValidationStoreQueue", 0);
  v14[2] = v17;
  if (!v17)
  {
    v20 = 1502;
    goto LABEL_15;
  }

  v14[8] = a4;
  v14[9] = CFRetain(a5);
  v14[6] = a2;
  dispatch_retain(a2);
  v14[7] = a3;
  dispatch_retain(a3);
  if (a1)
  {
    v18 = CFRetain(a1);
  }

  else
  {
    v18 = 0;
  }

  result = 0;
  v14[3] = v18;
  *a6 = v14;
  return result;
}

uint64_t RegisterAssetPropertyStoreType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double AssetPropertyStore_Init(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void AssetPropertyStore_Finalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFDictionaryApplyFunction(v5, PerPropertyInfoDisposalApplierFunction, 0);
    v6 = *(a1 + 64);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 64) = 0;
    }
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 24) = 0;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 32) = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 40) = 0;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 48) = 0;
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 112) = 0;
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    Count = CFArrayGetCount(v14);
    if (Count >= 1)
    {
      v16 = Count;
      for (i = 0; i != v16; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
        if (ValueAtIndex)
        {
          v19 = ValueAtIndex;
          v20 = *(ValueAtIndex + 1);
          if (v20)
          {
            CFRelease(v20);
          }

          free(v19);
        }
      }
    }

    v21 = *(a1 + 80);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 80) = 0;
    }
  }

  v22 = *(a1 + 128);
  if (v22)
  {
    v23 = CFArrayGetCount(v22);
    if (v23 >= 1)
    {
      v24 = v23;
      for (j = 0; j != v24; ++j)
      {
        v26 = CFArrayGetValueAtIndex(*(a1 + 128), j);
        if (v26)
        {
          v27 = v26;
          v28 = v26[1];
          if (v28)
          {
            CFRelease(v28);
            v27[1] = 0;
          }

          if (*v27)
          {
            CFRelease(*v27);
          }

          free(v27);
        }
      }
    }

    v29 = *(a1 + 128);
    if (v29)
    {
      CFRelease(v29);
      *(a1 + 128) = 0;
    }
  }
}