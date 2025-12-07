void clcpcfc_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
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

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *clcpcfc_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCLCPCaptionFormatConformer %p>", a1);
  return Mutable;
}

uint64_t clcpcfc_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      return 4294954512;
    }

    v7 = 184;
  }

  else
  {
    v7 = 183;
  }

  v9 = v4;
  v10 = v5;
  clcpcfc_CopyProperty_cold_1(v7, &v8);
  return v8;
}

uint64_t clcpcfc_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 4294954512;
  }

  v6 = v2;
  v7 = v3;
  clcpcfc_SetProperty_cold_1(&v5);
  return v5;
}

uint64_t clcpcfc_CreateConformedCaptionData(uint64_t a1, void *a2, __int128 *a3, void *a4, _OWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    clcpcfc_CreateConformedCaptionData_cold_5(v42);
    return LODWORD(v42[0]);
  }

  if ((*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 5) || (*(a3 + 3) & 0x8000000000000000) != 0)
  {
    clcpcfc_CreateConformedCaptionData_cold_4(v42);
    return LODWORD(v42[0]);
  }

  if (!a4)
  {
    clcpcfc_CreateConformedCaptionData_cold_3(v42);
    return LODWORD(v42[0]);
  }

  if (!a5)
  {
    clcpcfc_CreateConformedCaptionData_cold_2(v42);
    return LODWORD(v42[0]);
  }

  v10 = DerivedStorage;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v11)
  {
    v12 = v11(a2);
    if (!v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = &stru_1F0B1AFB8;
  }

  if (!CFStringGetLength(v12))
  {
LABEL_36:
    v31 = CFRetain(a2);
    v24 = 0;
    *a4 = v31;
    v33 = a3[1];
    v32 = a3[2];
    *a5 = *a3;
    a5[1] = v33;
    a5[2] = v32;
    return v24;
  }

  v35 = *a3;
  v36 = a3[1];
  v37 = a3[2];
  values = a2;
  v13 = *v10;
  *&v40 = clcpcfcFromSbufOutputCallback;
  *(&v40 + 1) = v10;
  *&v39 = clcpcfcToSbufOutputCallback;
  *(&v39 + 1) = v10;
  v38 = 0;
  v14 = FigCLCPCaptionGroupConverterFromSampleBufferCreate(&v40, v13, (v10 + 8));
  if (v14 || (v14 = FigCLCPCaptionGroupConverterToSampleBufferCreate(&v39, v13, &v38), v14))
  {
    v24 = v14;
    v15 = 0;
    goto LABEL_27;
  }

  v15 = CFArrayCreate(v13, &values, 1, MEMORY[0x1E695E9C0]);
  if (!v15)
  {
    clcpcfc_CreateConformedCaptionData_cold_1(v42);
    v24 = LODWORD(v42[0]);
    goto LABEL_27;
  }

  v16 = FigCaptionGroupCreate();
  if (v16)
  {
    goto LABEL_45;
  }

  v17 = v38;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v18)
  {
    v42[0] = v35;
    v42[1] = v36;
    v42[2] = v37;
    v16 = v18(v17, 0, v42);
    if (v16)
    {
      goto LABEL_45;
    }

    v19 = v38;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v20)
    {
      v16 = v20(v19);
      if (!v16)
      {
        v21 = *(v10 + 8);
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v22)
        {
          v16 = v22(v21);
          if (!v16)
          {
            v23 = *(v10 + 16);
            if (v23)
            {
              v23 = CFRetain(v23);
            }

            v24 = 0;
            *a4 = v23;
            v25 = *(v10 + 24);
            v26 = *(v10 + 56);
            a5[1] = *(v10 + 40);
            a5[2] = v26;
            *a5 = v25;
            goto LABEL_27;
          }

          goto LABEL_45;
        }

        goto LABEL_26;
      }

LABEL_45:
      v24 = v16;
      goto LABEL_27;
    }
  }

LABEL_26:
  v24 = 4294954514;
LABEL_27:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  v27 = *(v10 + 16);
  if (v27)
  {
    CFRelease(v27);
    *(v10 + 16) = 0;
  }

  v28 = *(v10 + 8);
  if (v28)
  {
    CFRelease(v28);
    *(v10 + 8) = 0;
  }

  v29 = MEMORY[0x1E6960C98];
  v30 = *(MEMORY[0x1E6960C98] + 16);
  *(v10 + 24) = *MEMORY[0x1E6960C98];
  *(v10 + 40) = v30;
  *(v10 + 56) = *(v29 + 32);
  return v24;
}

double clcpcfcFromSbufOutputCallback(uint64_t a1, __int128 *a2, uint64_t a3)
{
  SliceCount = FigCaptionGroupGetSliceCount();
  if (SliceCount == 1)
  {
    if (*(a3 + 16))
    {
      clcpcfcFromSbufOutputCallback_cold_1(&v13);
    }

    else
    {
      CaptionData = FigCaptionGroupGetCaptionData();
      if (CaptionData)
      {
        v9 = CFRetain(CaptionData);
      }

      else
      {
        v9 = 0;
      }

      *(a3 + 16) = v9;
      v7 = *a2;
      v10 = a2[1];
      *(a3 + 56) = a2[2];
      *(a3 + 40) = v10;
      *(a3 + 24) = v7;
    }
  }

  else if (SliceCount)
  {
    emitter = fig_log_get_emitter();

    *&v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954508, "< FigCLCPCaptionFormatConformer >", 76, v3);
  }

  return *&v7;
}

uint64_t clcpcfcToSbufOutputCallback(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a1);
}

uint64_t AudioFileStreamStartupPackets(void *a1, unsigned int a2, unsigned int a3, const void *a4, AudioStreamPacketDescription *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 136) += a3;
  return result;
}

uint64_t fim_ConfigureAudioFileStreamOptionalProperties(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  inPropertyData = 0x5052495669643365;
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v9 = 1986225779;
    v6 = 0;
    ioPropertyDataSize = 4;
    if (AudioFileStreamGetProperty(*(a1 + 152), 0x66666D74u, &ioPropertyDataSize, &v6))
    {
      v4 = 0;
    }

    else
    {
      v4 = v6 == 1332176742;
    }

    if (v4)
    {
      v10 = 1818586995;
      v3 = 16;
    }

    else
    {
      v3 = 12;
    }
  }

  ioPropertyDataSize = v3;
  return AudioFileStreamSetProperty(*(a1 + 152), 0x6F707470u, v3, &inPropertyData);
}

uint64_t FigIcyManifoldInjectData(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigIcyManifoldInjectData(&lengthAtOffsetOut);
    return lengthAtOffsetOut;
  }

  v7 = DerivedStorage;
  CFRetain(a1);
  CFRetain(a4);
  FigSimpleMutexLock();
  ++*(v7 + 24);
  if (*(v7 + 32))
  {
    FigIcyManifoldInjectData(&lengthAtOffsetOut);
LABEL_84:
    LODWORD(v9) = lengthAtOffsetOut;
    goto LABEL_71;
  }

  if (*(v7 + 36))
  {
    FigIcyManifoldInjectData(&lengthAtOffsetOut);
    goto LABEL_84;
  }

  *(v7 + 36) = 1;
  *(v7 + 44) = 0;
  *(v7 + 39) = 1;
  v8 = CMGetAttachment(a4, @"FBPAKey_TimedData", 0);
  if (v8)
  {
    if (CFEqual(v8, @"FBPA_TimedData_ICY"))
    {
      v9 = fim_PushMetaData(a1, a4, 0x69637920u);
      if (!v9)
      {
        goto LABEL_70;
      }

LABEL_69:
      fim_EndAllTracks(a1, v9);
      goto LABEL_70;
    }
  }

  else
  {
    cf = 0;
    v10 = CMGetAttachment(a4, @"FMFD_BufferAudioDecryptor", 0);
    if (!v10)
    {
      v10 = CMGetAttachment(a4, @"FMFD_BufferDecryptor", 0);
    }

    if (!FigCFEqual())
    {
      v11 = *(v7 + 568);
      if (!v11)
      {
        *(v7 + 272) = 1;
      }

      *(v7 + 568) = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      *(v7 + 275) = 1;
    }

    if (CMBlockBufferGetDataLength(a4))
    {
      v36 = a4;
      if (CMBlockBufferIsRangeContiguous(a4, 0, 0))
      {
        v12 = CFRetain(a4);
        cf = v12;
      }

      else
      {
        ContiguousBlockBuffer = FigMemoryPoolCreateContiguousBlockBuffer();
        if (ContiguousBlockBuffer)
        {
          LODWORD(v9) = ContiguousBlockBuffer;
          goto LABEL_70;
        }

        v12 = 0;
      }

      dataPointerOut = 0;
      lengthAtOffsetOut = 0;
      v14 = CMBaseObjectGetDerivedStorage();
      DataLength = CMBlockBufferGetDataLength(v12);
      if (DataLength)
      {
        v16 = DataLength;
        v17 = 0;
        v18 = (v14 + 504);
        while (1)
        {
          v19 = *(v14 + 520);
          if (v19)
          {
            if (v16 >= *(v14 + 536))
            {
              v20 = *(v14 + 536);
            }

            else
            {
              v20 = v16;
            }

            appended = CMBlockBufferAppendBufferReference(v19, v12, v17, v20, 0);
            if (appended)
            {
LABEL_77:
              v9 = appended;
              goto LABEL_80;
            }

            v22 = *(v14 + 536) - v20;
            *(v14 + 536) = v22;
            if (!v22)
            {
              fim_PushMetaData(a1, *(v14 + 520), 0x69643320u);
              v23 = *(v14 + 520);
              if (v23)
              {
                CFRelease(v23);
              }

              *(v14 + 520) = 0;
              *(v14 + 544) = 0;
            }
          }

          appended = CMBlockBufferGetDataPointer(v12, v17, &lengthAtOffsetOut, 0, &dataPointerOut);
          if (appended)
          {
            goto LABEL_77;
          }

          if (v16 >= lengthAtOffsetOut)
          {
            v24 = lengthAtOffsetOut;
          }

          else
          {
            v24 = v16;
          }

          *(v14 + 320) = dataPointerOut;
          *(v14 + 328) = v24;
          *(v14 + 336) = v12;
          *(v14 + 344) = v17;
          v25 = *(v14 + 528);
          if (v25)
          {
            if (v25 + v24 >= 0xA)
            {
              v28 = -*(v14 + 528);
              *(v14 + 528) = 0;
              ProcessID3HeaderTagFromAudioFileStream(a1, v28);
            }

            else
            {
              *(v14 + 528) = v25 + v24;
            }
          }

          v26 = *(v14 + 152);
          if (!v26)
          {
            appended = fim_NewAudioStream(a1);
            if (appended)
            {
              goto LABEL_77;
            }

            v26 = *(v14 + 152);
          }

          v9 = AudioFileStreamParseBytes(v26, v24, dataPointerOut, *(v14 + 34) != 0);
          if (v24 > 9)
          {
            v27 = *&dataPointerOut[v24 - 2];
            *v18 = *&dataPointerOut[v24 - 10];
            *(v14 + 512) = v27;
          }

          else
          {
            memmove((v14 + 504), v18 + v24, 10 - v24);
            memmove(v18 + 10 - v24, dataPointerOut, v24);
          }

          *(v14 + 34) = 0;
          if (*(v14 + 352))
          {
            v24 = *(v14 + 356);
            *(v14 + 352) = 0;
            *(v14 + 356) = 0;
            fim_DestroyAudioStream(v14 + 80);
          }

          if (!*(v14 + 33) && v9)
          {
            goto LABEL_80;
          }

          if (*(v14 + 44))
          {
            break;
          }

          if (*(v14 + 32) || *(v14 + 37))
          {
            v9 = 4294951251;
            goto LABEL_80;
          }

          v17 += v24;
          v16 -= v24;
          if (!v16)
          {
            goto LABEL_59;
          }
        }

        v9 = *(v14 + 44);
LABEL_80:
        a4 = v36;
      }

      else
      {
        v9 = 0;
LABEL_59:
        v29 = *(v14 + 464);
        a4 = v36;
        if (v29)
        {
          v30 = (v14 + 464);
          while (1)
          {
            v31 = fim_PushMetaData(a1, v29[1], *(v29 + 4));
            if (v31)
            {
              break;
            }

            v32 = **v30;
            *v30 = v32;
            if (!v32)
            {
              *(v14 + 472) = v30;
            }

            v33 = v29[1];
            if (v33)
            {
              CFRelease(v33);
            }

            free(v29);
            v29 = *v30;
            if (!*v30)
            {
              v9 = 0;
              goto LABEL_68;
            }
          }

          v9 = v31;
        }
      }

LABEL_68:
      CFRelease(cf);
      if (!v9)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }
  }

  LODWORD(v9) = 0;
LABEL_70:
  *(v7 + 36) = 0;
LABEL_71:
  if (v9 == -16045)
  {
    v34 = 0;
  }

  else
  {
    v34 = v9;
  }

  --*(v7 + 24);
  FigSimpleMutexUnlock();
  CFRelease(a4);
  CFRelease(a1);
  return v34;
}

uint64_t FigIcyManifoldInvalidate(void *a1)
{
  CFRetain(a1);
  FigIcyManifoldInvalidateGuts(a1);
  CFRelease(a1);
  return 0;
}

uint64_t FigIcyManifoldFinalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = 1;
  FigIcyManifoldInvalidateGuts(a1);
  fim_DestroyAudioStream(DerivedStorage + 80);
  fim_DestroyMetaTrack((DerivedStorage + 400));
  v3 = *(DerivedStorage + 560);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 560) = 0;
  }

  v4 = *(DerivedStorage + 568);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 568) = 0;
  }

  v5 = *(DerivedStorage + 520);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 520) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  result = *(DerivedStorage + 8);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 8) = 0;
  }

  return result;
}

__CFString *FigIcyManifoldCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigIcyManifold :");
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t FigIcyManifoldCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 32))
  {
    FigIcyManifoldCopyProperty(&v13);
    v10 = v13;
    goto LABEL_12;
  }

  if (CFEqual(a2, @"FMFD_ParserState"))
  {
    valuePtr = 0;
    if (*(DerivedStorage + 39))
    {
      if (*(DerivedStorage + 120))
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      valuePtr = v8;
    }

    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    if (!CFEqual(a2, @"FMFD_Type"))
    {
      v10 = 4294954512;
      goto LABEL_12;
    }

    v9 = CFStringCreateWithCString(a3, "AAC", 0x8000100u);
  }

  v10 = 0;
  *a4 = v9;
LABEL_12:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigIcyManifoldSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (!CFEqual(a2, @"FMFD_HintForStartTime"))
  {
    value_low = 4294954512;
    goto LABEL_7;
  }

  if (!a3 || (v6 = CFGetTypeID(a3), v6 != CFDictionaryGetTypeID()))
  {
    FigIcyManifoldSetProperty(&v12);
LABEL_10:
    value_low = LODWORD(v12.value);
    goto LABEL_7;
  }

  CMTimeMakeFromDictionary(&v12, a3);
  value = v12.value;
  flags = v12.flags;
  timescale = v12.timescale;
  if ((v12.flags & 0x1D) != 1)
  {
    FigIcyManifoldSetProperty(&v12);
    goto LABEL_10;
  }

  value_low = 0;
  epoch = v12.epoch;
  *(DerivedStorage + 576) = value;
  *(DerivedStorage + 584) = timescale;
  *(DerivedStorage + 588) = flags;
  *(DerivedStorage + 592) = epoch;
  v10 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 600) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 616) = *(v10 + 16);
LABEL_7:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigIcyManifoldInvalidateGuts(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = v3 + 1;
  if (!*(DerivedStorage + 32))
  {
    *(DerivedStorage + 32) = 1;
    *(DerivedStorage + 56) = 0;
    if (!*(DerivedStorage + 40))
    {
      fim_EndAllTracks(a1, 4294954511);
      v3 = *(DerivedStorage + 24) - 1;
    }
  }

  *(DerivedStorage + 24) = v3;

  return FigSimpleMutexUnlock();
}

void fim_EndAllTracks(void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v5 = *(DerivedStorage + 104);
  v6 = *(DerivedStorage + 80);
  *(DerivedStorage + 80) = 0;
  if (v5)
  {
    v7 = v5;
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  if (!a2)
  {
LABEL_5:
    FigIcyManifoldFlush(a1);
  }

LABEL_6:
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *(DerivedStorage + 112);
    v10 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = 0;
    if (v10 >= 1)
    {
      v11 = v10;
      do
      {
        FigSimpleMutexUnlock();
        --v11;
      }

      while (v11);
    }

    if (v9)
    {
      v7(a1, v6, v9, a2);
    }

    do
    {
      FigSimpleMutexLock();
      v12 = *(DerivedStorage + 24) + 1;
      *(DerivedStorage + 24) = v12;
    }

    while (v12 < v10);
  }

  if (a1)
  {
    CFRelease(a1);
    v13 = CMBaseObjectGetDerivedStorage();
    CFRetain(a1);
  }

  else
  {
    v13 = CMBaseObjectGetDerivedStorage();
  }

  v14 = *(v13 + 400);
  *(v13 + 400) = 0;
  v15 = *(v13 + 424);
  if (v15 && v14)
  {
    v16 = *(v13 + 432);
    v17 = *(v13 + 24);
    *(v13 + 24) = 0;
    if (v17 >= 1)
    {
      v18 = v17;
      do
      {
        FigSimpleMutexUnlock();
        --v18;
      }

      while (v18);
    }

    if (v16)
    {
      v15(a1, v14, v16, a2);
    }

    do
    {
      FigSimpleMutexLock();
      v19 = *(v13 + 24) + 1;
      *(v13 + 24) = v19;
    }

    while (v19 < v17);
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigIcyManifoldFlush(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 32))
  {
    FigIcyManifoldFlush(&v11);
LABEL_24:
    v9 = v11;
    goto LABEL_18;
  }

  if (*(DerivedStorage + 36))
  {
    FigIcyManifoldFlush(&v11);
    goto LABEL_24;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  v4 = v3;
  v11 = 0;
  v5 = *(v3 + 568);
  if (v5)
  {
    if (*(v3 + 276))
    {
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v6 || v6(v5, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &v11))
      {
        goto LABEL_20;
      }

      v7 = v11;
    }

    else
    {
      v7 = CFRetain(*MEMORY[0x1E695E4D0]);
      v11 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7 != *MEMORY[0x1E695E4D0])
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  FigIcyManifoldFlush(v4, a1);
LABEL_20:
  v7 = v11;
  if (v11)
  {
LABEL_12:
    CFRelease(v7);
  }

LABEL_13:
  if (*(DerivedStorage + 39))
  {
    v8 = *(DerivedStorage + 152);
    if (v8)
    {
      if (*(DerivedStorage + 120))
      {
        AudioFileStreamParseBytes(v8, 0, 0, 0);
      }
    }
  }

  v9 = 0;
  *(DerivedStorage + 37) = 1;
LABEL_18:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t fim_emitSampleApplier(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 96))
  {
    v6 = *(DerivedStorage + 96);
  }

  else
  {
    v6 = 0;
  }

  result = fim_MakePushSampleBufferCallback(a2, DerivedStorage, *(DerivedStorage + 80), v6, *(DerivedStorage + 112), a1);
  if (result)
  {
    *(v5 + 44) = result;
  }

  return result;
}

void fim_DestroyMetaTrack(void *a1)
{
  FigFormatDescriptionRelease();
  a1[7] = 0;
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
    a1[5] = 0;
  }

  v4 = (a1 + 8);
  v3 = a1[8];
  if (v3)
  {
    do
    {
      v5 = *v3;
      *v4 = *v3;
      if (!v5)
      {
        a1[9] = v4;
      }

      v6 = v3[1];
      if (v6)
      {
        CFRelease(v6);
      }

      free(v3);
      v3 = *v4;
    }

    while (*v4);
  }
}

void fim_DestroyAudioStream(uint64_t a1)
{
  if (*(a1 + 40))
  {
    FigFormatDescriptionRelease();
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    AudioFileStreamClose(v2);
    *(a1 + 72) = 0;
  }

  free(*(a1 + 224));
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 280) = 0;
  v3 = *(a1 + 304);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 304) = 0;
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 288) = 0;
  }

  *(a1 + 296) = 0;
  v5 = *(a1 + 312);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 312) = 0;
  }
}

uint64_t FigIcyManifoldNoteStreamEnd(void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 32))
  {
    FigIcyManifoldNoteStreamEnd(&v7);
    v5 = v7;
  }

  else
  {
    *(DerivedStorage + 37) = 1;
    fim_EndAllTracks(a1, a2);
    v5 = 0;
  }

  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v5;
}

uint64_t FigIcyManifoldCopyCurrentFormatDescriptionForTrack(uint64_t a1, int a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 32))
  {
    FigIcyManifoldCopyCurrentFormatDescriptionForTrack(&v13);
    v9 = v13;
    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (*(DerivedStorage + 80) != a2)
  {
    if (*(DerivedStorage + 400) == a2)
    {
      if (!*(DerivedStorage + 456))
      {
        emitter = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951254, "<<<< FIM >>>>", 2617, v3);
        goto LABEL_10;
      }

      goto LABEL_8;
    }

LABEL_9:
    v10 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294951254, "<<<< FIM >>>>", 2620, v3);
    goto LABEL_10;
  }

  if (!*(DerivedStorage + 120))
  {
    v7 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294951253, "<<<< FIM >>>>", 2610, v3);
LABEL_10:
    v9 = v8;
    goto LABEL_11;
  }

LABEL_8:
  v9 = 0;
  *a3 = FigFormatDescriptionRetain();
LABEL_11:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t fim_ReannounceTrack(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 72);
  v10 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = 0;
  if (v10 >= 1)
  {
    v11 = v10;
    do
    {
      FigSimpleMutexUnlock();
      --v11;
    }

    while (v11);
  }

  v12 = *(DerivedStorage + 56);
  MediaType = CMFormatDescriptionGetMediaType(a3);
  v14 = v12(a1, v9, MediaType, a2);
  do
  {
    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 24) + 1;
    *(DerivedStorage + 24) = v15;
  }

  while (v15 < v10);
  if (v14)
  {
    return v14;
  }

  if (*(DerivedStorage + 32) || *(DerivedStorage + 37))
  {
    return 4294951251;
  }

  return fim_MakeFormatDescriptionCallback(a1, DerivedStorage, a2, a4, v9, a3, 0);
}

uint64_t fim_PushMetaData(uint64_t a1, OpaqueCMBlockBuffer *a2, FourCharCode a3)
{
  v36 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  sampleSizeArray = 0;
  if (a3 != 1768174368)
  {
    goto LABEL_74;
  }

  returnedPointerOut.value = 0;
  v7 = CMBlockBufferAccessDataBytes(a2, 0xAuLL, 4uLL, temporaryBlock, &returnedPointerOut);
  if (v7)
  {
    goto LABEL_68;
  }

  if (strncasecmp(returnedPointerOut.value, "PRIV", 4uLL) || CMBlockBufferAccessDataBytes(a2, 0x14uLL, 0x2DuLL, &time1, &returnedPointerOut) || strcmp("com.apple.streaming.transportStreamTimestamp", returnedPointerOut.value) || (destination = 0, CMBlockBufferCopyDataBytes(a2, 0x41uLL, 8uLL, &destination)))
  {
LABEL_74:
    if (*(DerivedStorage + 120))
    {
      v8 = CMBaseObjectGetDerivedStorage();
      v9 = v8;
      if (a3 == 1768126752 || a3 == 1886155636 || a3 == 1768174368)
      {
        v10 = *(v8 + 452);
        v11 = *(v8 + 456);
        if (v10 == a3)
        {
          if (v11)
          {
            goto LABEL_42;
          }
        }

        else if (v11)
        {
          CFRelease(v11);
          *(v9 + 456) = 0;
        }

        v7 = CMFormatDescriptionCreate(*v9, 0x6D657461u, a3, 0, (v9 + 456));
        if (!v7)
        {
          if (!*(v9 + 456))
          {
            fim_PushMetaData(&time1);
            value_low = LODWORD(time1.duration.value);
            if (LODWORD(time1.duration.value))
            {
              goto LABEL_57;
            }

LABEL_45:
            v21 = *(v9 + 456);
            if (!v21)
            {
              goto LABEL_57;
            }

            if (!*(DerivedStorage + 416))
            {
              value_low = 0;
              goto LABEL_57;
            }

            fim_GetCurrentAudioTime(DerivedStorage + 80, &time1.duration);
            timescale = time1.duration;
            if (*(DerivedStorage + 492))
            {
              time1.duration = timescale;
              time2 = *(DerivedStorage + 480);
              if (CMTimeCompare(&time1.duration, &time2) <= 0)
              {
                timescale = *(DerivedStorage + 480);
              }
            }

            fim_AdjustPTS(DerivedStorage, &timescale);
            time1.decodeTimeStamp = **&MEMORY[0x1E6960C70];
            time1.presentationTimeStamp = timescale;
            CMTimeMake(&time1.duration, 1, timescale.timescale);
            sampleSizeArray = CMBlockBufferGetDataLength(a2);
            v7 = CMSampleBufferCreate(*DerivedStorage, a2, 1u, 0, 0, v21, 1, 1, &time1, 1, &sampleSizeArray, &v34);
            if (!v7)
            {
              lhs = timescale;
              returnedPointerOut = time1.duration;
              CMTimeAdd(&time2, &lhs, &returnedPointerOut);
              *(DerivedStorage + 480) = time2;
              if (*(DerivedStorage + 416))
              {
                v22 = *(DerivedStorage + 416);
              }

              else
              {
                v22 = 0;
              }

              PushSampleBufferCallback = fim_MakePushSampleBufferCallback(a1, DerivedStorage, *(DerivedStorage + 400), v22, *(DerivedStorage + 432), v34);
              value_low = PushSampleBufferCallback;
              if (PushSampleBufferCallback)
              {
                *(DerivedStorage + 44) = PushSampleBufferCallback;
              }

              goto LABEL_57;
            }

            goto LABEL_68;
          }

          if (*(v9 + 452) != a3)
          {
            *(v9 + 452) = a3;
            v14 = *(v9 + 56);
            if (v14)
            {
              v15 = *(v9 + 400);
              if (v15)
              {
                goto LABEL_40;
              }

              v16 = 101;
              *(v9 + 400) = 101;
              v17 = *(v9 + 24);
              *(v9 + 24) = 0;
              if (v17 >= 1)
              {
                v18 = v17;
                do
                {
                  FigSimpleMutexUnlock();
                  --v18;
                }

                while (v18);
                v14 = *(v9 + 56);
                v16 = *(v9 + 400);
              }

              value_low = v14(a1, *(v9 + 72), 1835365473, v16);
              do
              {
                FigSimpleMutexLock();
                v19 = *(v9 + 24) + 1;
                *(v9 + 24) = v19;
              }

              while (v19 < v17);
              if (value_low)
              {
                goto LABEL_57;
              }

              if (!*(v9 + 32) && !*(v9 + 37))
              {
                v15 = *(v9 + 400);
LABEL_40:
                if (*(v9 + 408))
                {
                  v20 = *(v9 + 408);
                }

                else
                {
                  v20 = 0;
                }

                value_low = fim_MakeFormatDescriptionCallback(a1, v9, v15, v20, *(v9 + 432), *(v9 + 456), 0);
                if (value_low)
                {
                  goto LABEL_57;
                }

                goto LABEL_45;
              }

              value_low = 4294951251;
LABEL_57:
              if (v34)
              {
                CFRelease(v34);
              }

              return value_low;
            }
          }

LABEL_42:
          value_low = 0;
          goto LABEL_45;
        }

LABEL_68:
        value_low = v7;
        goto LABEL_57;
      }
    }

    else if (a3 == 1768126752 || a3 == 1886155636 || a3 == 1768174368)
    {
      v12 = *(DerivedStorage + 440);
      *(DerivedStorage + 440) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      value_low = 0;
      *(DerivedStorage + 448) = a3;
      goto LABEL_57;
    }

    value_low = 4294954516;
    goto LABEL_57;
  }

  v25 = bswap64(destination & 0xFFFFFFFF01000000);
  destination = v25;
  if (*(DerivedStorage + 273))
  {
    time2 = *(DerivedStorage + 280);
    CMTimeMake(&lhs, *(DerivedStorage + 136), *(DerivedStorage + 192));
    CMTimeAdd(&timescale, &time2, &lhs);
    *&lhs.value = *&timescale.timescale;
    time2 = timescale;
    CMTimeConvertScale(&timescale, &time2, 90000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v26 = (destination - timescale.value) | 0xFFFFFFFE00000000;
    if (((destination - timescale.value) & 0x100000000) == 0)
    {
      v26 = (destination - LODWORD(timescale.value));
    }

    if (v26 - 3 <= 0xFFFFFFFFFFFFFFFALL)
    {
      CMTimeMake(&timescale, v26 + timescale.value, 90000);
      *(DerivedStorage + 280) = timescale;
      *(DerivedStorage + 136) = 0;
      *(DerivedStorage + 274) = 1;
    }
  }

  else if (!*(DerivedStorage + 136))
  {
    *(DerivedStorage + 273) = 1;
    CMTimeMake(&timescale, v25, 90000);
    *(DerivedStorage + 280) = timescale;
  }

  return 0;
}

double fim_GetCurrentAudioTime@<D0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  if (*(a1 + 40))
  {
    CMTimeMake(a2, *(a1 + 56), *(a1 + 112));
  }

  else
  {
    v5 = MEMORY[0x1E6960CC0];
    v4 = *MEMORY[0x1E6960CC0];
    *&a2->value = *MEMORY[0x1E6960CC0];
    a2->epoch = *(v5 + 16);
  }

  if (*(a1 + 212))
  {
    lhs = *a2;
    v7 = *(a1 + 200);
    CMTimeAdd(&v9, &lhs, &v7);
    *&v4 = v9.value;
    *a2 = v9;
  }

  return *&v4;
}

__n128 fim_AdjustPTS(uint64_t a1, CMTime *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 576);
  if ((*(a1 + 588) & 0x1D) != 1)
  {
    v5 = MEMORY[0x1E6960CC0];
    result = *MEMORY[0x1E6960CC0];
    *v4 = *MEMORY[0x1E6960CC0];
    *(a1 + 592) = *(v5 + 16);
  }

  if (a2)
  {
    if ((a2->flags & 0x1D) == 1)
    {
      if ((v17 = *a2, *&time1.value = *v4, time1.epoch = *(a1 + 592), FigManifoldAdjustTimestampAndUpdateRefTime(&time1, &v17, v4), value = a2->value, flags = a2->flags, timescale = a2->timescale, epoch = a2->epoch, v22 = v17.value, v9 = v17.flags, v23 = v17.timescale, v10 = v17.epoch, (flags & 0x1F) != 3) && (v17.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v11 = a2->value, rhs.epoch = v17.epoch, lhs.value = v11, lhs.timescale = a2->timescale, lhs.flags = flags, lhs.epoch = epoch, *&rhs.value = *&v17.value, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), time = time1, CMTimeMake(&lhs, 1, 1000000000), CMTimeCompare(&time, &lhs) > 0))
      {
        time1.value = value;
        time1.timescale = timescale;
        time1.flags = flags;
        time1.epoch = epoch;
        time.value = v22;
        time.timescale = v23;
        time.flags = v9;
        time.epoch = v10;
        if (CMTimeCompare(&time1, &time))
        {
          result.n128_u64[0] = v17.value;
          *a2 = v17;
        }
      }
    }

    v12 = (a1 + 600);
    if ((*(a1 + 612) & 0x1D) != 1)
    {
      v13 = MEMORY[0x1E6960CC0];
      v14 = *MEMORY[0x1E6960CC0];
      *v12 = *MEMORY[0x1E6960CC0];
      v15 = *(v13 + 16);
      *(a1 + 616) = v15;
      time1 = *a2;
      *&time.value = v14;
      time.epoch = v15;
      if (CMTimeCompare(&time1, &time) < 0)
      {
        CMTimeMake(&time1, 0x200000000, 90000);
        result.n128_u64[0] = time1.value;
        *v12 = *&time1.value;
        *(a1 + 616) = time1.epoch;
      }
    }

    if ((a2->flags & 0x1D) == 1)
    {
      time = *a2;
      *&lhs.value = *v12;
      lhs.epoch = *(a1 + 616);
      CMTimeAdd(&time1, &time, &lhs);
      result.n128_u64[0] = time1.value;
      *a2 = time1;
    }
  }

  else if ((*(a1 + 612) & 0x1D) != 1)
  {
    v16 = MEMORY[0x1E6960CC0];
    result = *MEMORY[0x1E6960CC0];
    *(a1 + 600) = *MEMORY[0x1E6960CC0];
    *(a1 + 616) = *(v16 + 16);
  }

  return result;
}

void OUTLINED_FUNCTION_8_4()
{
  *(v0 + 264) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;

  fim_DestroyMetaTrack((v0 + 400));
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  --*(v0 + 24);

  return FigSimpleMutexUnlock();
}

uint64_t FigStreamingLiveServerClockCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    CMClockGetHostTimeClock();
    CMTimeMake(&v11, 0, 1);
    TimeCallback = FigDerivedClockCreateWithGetTimeCallback();
    if (TimeCallback)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      DerivedStorage = FigDerivedClockGetDerivedStorage();
      *DerivedStorage = 0x3FF0000000000000;
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v11, HostTimeClock);
      v8 = *&v11.value;
      epoch = v11.epoch;
      *(DerivedStorage + 24) = v11.epoch;
      *(DerivedStorage + 8) = v8;
      *(DerivedStorage + 32) = *(DerivedStorage + 8);
      *(DerivedStorage + 48) = epoch;
      *(DerivedStorage + 56) = a2;
      *(DerivedStorage + 64) = FigReentrantMutexCreate();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      TimeCallback = 0;
      *a3 = cf;
    }
  }

  else
  {
    FigStreamingLiveServerClockCreate_cold_1(&v11);
    return LODWORD(v11.value);
  }

  return TimeCallback;
}

uint64_t fslscHandleRateDelta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0.0;
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  memset(&v12, 0, sizeof(v12));
  memset(&v11, 0, sizeof(v11));
  FigSimpleMutexLock();
  if (a5)
  {
    fslscGetAnchorTime(a2, &v12, &v11);
    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v8 = v13;
    }

    else
    {
      if (!FigCFDictionaryGetDoubleIfPresent())
      {
LABEL_7:
        v9 = *&v12.value;
        *(DerivedStorage + 24) = v12.epoch;
        *(DerivedStorage + 8) = v9;
        *(DerivedStorage + 32) = v11;
        return FigSimpleMutexUnlock();
      }

      v8 = v13 + *DerivedStorage;
    }

    *DerivedStorage = v8;
    goto LABEL_7;
  }

  return FigSimpleMutexUnlock();
}

CFStringRef fslscCopyDebugDesc(const void *a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v3, 0, @"LowLatencyServerClock(minder = %p, Rate = %f)", DerivedStorage[7], *DerivedStorage);
}

uint64_t fslscFinalize(uint64_t a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  result = *(DerivedStorage + 64);
  if (result)
  {

    return FigSimpleMutexDestroy();
  }

  return result;
}

BOOL fslscMightDrift(uint64_t a1, uint64_t a2)
{
  if (FigDerivedClockVerifyCallbacksMatch() && FigDerivedClockVerifyCallbacksMatch() && (DerivedStorage = FigDerivedClockGetDerivedStorage(), v3 = FigDerivedClockGetDerivedStorage(), (v4 = *(DerivedStorage + 56)) != 0))
  {
    return v4 != *(v3 + 56);
  }

  else
  {
    return 1;
  }
}

double fslscGetRate(uint64_t a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t fslscGetAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  FigSimpleMutexLock();
  memset(&v12, 0, sizeof(v12));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v12, HostTimeClock);
  if (a2)
  {
    lhs = v12;
    v9 = *(DerivedStorage + 32);
    CMTimeSubtract(&time, &lhs, &v9);
    CMTimeMultiplyByFloat64(&lhs, &time, *DerivedStorage);
    v7 = *(DerivedStorage + 8);
    v9.epoch = *(DerivedStorage + 24);
    *&v9.value = v7;
    CMTimeAdd(&time, &v9, &lhs);
    *a2 = time;
  }

  if (a3)
  {
    *a3 = v12;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t RegisterFigContentKeySessionType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigContentKeySessionGetTypeID()
{
  MEMORY[0x19A8D3660](&FigContentKeySessionGetClassID_sRegisterFigContentKeySessionTypeOnce, RegisterFigContentKeySessionType);

  return CMBaseClassGetCFTypeID();
}

__CFString *fcks_copyDebugDescription(const void *a1)
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
  CFStringAppendFormat(Mutable, 0, @"<FigContentKeySession %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t fcks_copyProperty(const void *a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fcks_copyProperty_cold_4(&cf);
    return cf;
  }

  if (!a4)
  {
    fcks_copyProperty_cold_3(&cf);
    return cf;
  }

  v9 = DerivedStorage;
  *a4 = 0;
  FigSimpleMutexLock();
  if (*v9)
  {
    fcks_copyProperty_cold_1(&cf);
    v10 = cf;
    goto LABEL_38;
  }

  if (CFEqual(*MEMORY[0x1E6960F90], a2))
  {
    v10 = *(v9 + 16);
    if (!v10)
    {
      goto LABEL_38;
    }

    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v11)
    {
      v10 = 4294954514;
      goto LABEL_38;
    }

    v12 = v11(v10, @"SessionID", a3, a4);
    goto LABEL_28;
  }

  if (CFEqual(*MEMORY[0x1E6960F88], a2))
  {
    if (!*(v9 + 16))
    {
      goto LABEL_34;
    }

    goto LABEL_26;
  }

  if (CFEqual(@"kFigCKSPropertyKey_SecureStopManager", a2))
  {
    v12 = fcks_ensureSecureStopManager(a1);
    if (!v12)
    {
      v26 = *(v9 + 168);
      if (v26)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    goto LABEL_28;
  }

  if (!CFEqual(@"kFigCKSPropertyKey_ShouldProvideFPSSecureStop", a2))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, cf, v30);
LABEL_28:
    v10 = v12;
    goto LABEL_38;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  v14 = *(v13 + 152);
  LOBYTE(v15) = v14 != 0;
  v16 = *(v13 + 8);
  if (!v16 || (Count = CFArrayGetCount(v16), v14) || (v18 = Count, Count < 1))
  {
LABEL_25:
    if ((v15 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_26:
    v25 = MEMORY[0x1E695E4D0];
    goto LABEL_35;
  }

  v19 = *MEMORY[0x1E695E480];
  v20 = *MEMORY[0x1E695E4D0];
  v21 = 1;
  while (1)
  {
    CFArrayGetValueAtIndex(*(v13 + 8), v21 - 1);
    v15 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v15)
    {
      goto LABEL_23;
    }

    cf = 0;
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v22)
    {
      break;
    }

    v23 = v22(v15, @"kFigCKSPropertyKey_ShouldProvideFPSSecureStop", v19, &cf);
    CFRelease(v15);
    if (v23)
    {
      goto LABEL_33;
    }

    LOBYTE(v15) = v20 == cf;
    if (cf)
    {
      CFRelease(cf);
    }

LABEL_23:
    if ((v15 & 1) == 0 && v21++ < v18)
    {
      continue;
    }

    goto LABEL_25;
  }

  CFRelease(v15);
  v23 = 4294954514;
LABEL_33:
  fcks_copyProperty_cold_2(v23, &cf);
LABEL_34:
  v25 = MEMORY[0x1E695E4C0];
LABEL_35:
  v26 = *v25;
LABEL_36:
  v26 = CFRetain(v26);
LABEL_37:
  v10 = 0;
  *a4 = v26;
LABEL_38:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fcks_setProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fcks_setProperty_cold_9(v29);
    return v29[0];
  }

  if (!a3)
  {
    fcks_setProperty_cold_8(v29);
    return v29[0];
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  if (*v7)
  {
    fcks_setProperty_cold_1(v29);
    goto LABEL_34;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960F80]))
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFDataGetTypeID())
    {
      if (FigCFEqual())
      {
        goto LABEL_10;
      }

      v9 = *(v7 + 48);
      *(v7 + 48) = a3;
      CFRetain(a3);
      if (v9)
      {
        CFRelease(v9);
      }

      fcks_resetSessionGuts(a1);
      v10 = *(CMBaseObjectGetDerivedStorage() + 8);
      if (!v10)
      {
        goto LABEL_10;
      }

      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v10);
      if (Copy)
      {
        fcks_setProperty_cold_3(Copy, a1, a3, v29);
      }

      else
      {
        fcks_setProperty_cold_4(v29);
      }
    }

    else
    {
      fcks_setProperty_cold_2(v29);
    }

LABEL_34:
    v11 = v29[0];
    goto LABEL_11;
  }

  if (CFEqual(a2, @"kFigCKSPropertyKey_SendToNero"))
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a3))
    {
      CFDictionaryGetValue(a3, @"kFigCKSPropertyKeySendToNero_Visuals");
      v14 = FigCFEqual();
      if (v14 != *(v7 + 56))
      {
        *(v7 + 56) = v14;
        if (v14)
        {
          Value = CFDictionaryGetValue(a3, @"kFigCKSPropertyKeySendToNero_NeroTransport");
          if (Value)
          {
            v16 = *(v7 + 144);
            *(v7 + 144) = Value;
            CFRetain(Value);
            if (v16)
            {
              CFRelease(v16);
            }
          }
        }

        else
        {
          v26 = *(v7 + 144);
          if (v26)
          {
            CFRelease(v26);
            *(v7 + 144) = 0;
          }
        }

        fcks_resetSessionGuts(a1);
      }
    }

    goto LABEL_10;
  }

  if (!CFEqual(a2, *MEMORY[0x1E6960F78]))
  {
    if (CFEqual(a2, *MEMORY[0x1E6960F98]))
    {
      v24 = CFGetTypeID(a3);
      if (v24 == CFBooleanGetTypeID())
      {
        v11 = 0;
        *(v7 + 184) = *MEMORY[0x1E695E4D0] == a3;
        goto LABEL_11;
      }

      fcks_setProperty_cold_7(v29);
      goto LABEL_34;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29[1]);
LABEL_40:
    v11 = v19;
    goto LABEL_11;
  }

  v17 = CFGetTypeID(a3);
  if (v17 != CFDataGetTypeID())
  {
    fcks_setProperty_cold_5(v29);
    goto LABEL_34;
  }

  if (!*(v7 + 160))
  {
    goto LABEL_52;
  }

  if (!FigCFEqual())
  {
    fcks_setProperty_cold_6(v29);
    goto LABEL_34;
  }

  if (!*(v7 + 160))
  {
LABEL_52:
    *(v7 + 160) = CFRetain(a3);
    if (*(v7 + 152))
    {
      v18 = CMBaseObjectGetDerivedStorage();
      v19 = fcks_ensureSecureStopManager(a1);
      if (!v19)
      {
        v21 = v18[20];
        v20 = v18[21];
        v22 = v18[19];
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v23)
        {
          v11 = 4294954514;
          goto LABEL_11;
        }

        v19 = v23(v20, v21, v22);
      }

      goto LABEL_40;
    }
  }

LABEL_10:
  v11 = 0;
LABEL_11:
  FigSimpleMutexUnlock();
  return v11;
}

void fcks_freeAllCryptorEntries(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 128);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 8);
      fcks_freeCryptorEntry(a1, v2);
      v2 = v3;
    }

    while (v3);
  }
}

void fcks_freeCryptorEntry(const void *a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = v5;
  if (a1 && v5)
  {
    fcks_freeCryptorEntry_cold_1(a1);
LABEL_4:
    CFRelease(v6);
    goto LABEL_5;
  }

  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  v7 = a2[1];
  v8 = a2[2];
  v9 = (DerivedStorage + 136);
  if (v7)
  {
    v9 = v7 + 16;
  }

  *v9 = v8;
  *v8 = v7;
  v10 = CFGetAllocator(a1);

  CFAllocatorDeallocate(v10, a2);
}

uint64_t fcks_secureStopDidFinalizeRecordCallback(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 56);
  if (v6)
  {

    return v6(a2);
  }

  return result;
}

void fcks_resetSessionGuts(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fcks_freeAllCryptorEntries(a1);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }
}

uint64_t fcks_addChildSession(const void *a1, const void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a2)
  {
    if (a1 != a2)
    {
      v5 = DerivedStorage;
      FigSimpleMutexLock();
      if (*v5)
      {
        fcks_addChildSession_cold_1(v17);
      }

      else
      {
        fcks_setClientAuditTokenForChildSession(a1, a2, *(v5 + 48));
        if (v6)
        {
          goto LABEL_24;
        }

        v7 = CFGetAllocator(a1);
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v8)
        {
          v13 = 4294954514;
          goto LABEL_14;
        }

        v6 = v8(a2, @"kFigCKSPropertyKey_SecureStopManager", v7, &cf);
        if (v6)
        {
LABEL_24:
          v13 = v6;
          goto LABEL_14;
        }

        v9 = *(v5 + 168);
        v10 = cf;
        *(v5 + 168) = cf;
        if (v10)
        {
          CFRetain(v10);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v11)
        {
          v12 = v11;
          CFArrayAppendValue(*(v5 + 8), v11);
          CFRelease(v12);
          v13 = 0;
LABEL_14:
          FigSimpleMutexUnlock();
          goto LABEL_15;
        }

        fcks_addChildSession_cold_2(v17);
      }

      v13 = v17[0];
      goto LABEL_14;
    }

    fcks_addChildSession_cold_3(v17);
  }

  else
  {
    fcks_addChildSession_cold_4(v17);
  }

  v13 = v17[0];
LABEL_15:
  if (dword_1EAF16B90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t fcks_copyCryptor(const void *a1, const __CFAllocator *a2, const __CFDictionary *a3, int a4, CFTypeRef *a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    fcks_copyCryptor_cold_12(cf);
    return LODWORD(cf[0]);
  }

  if (!a5)
  {
    fcks_copyCryptor_cold_11(cf);
    return LODWORD(cf[0]);
  }

  v10 = DerivedStorage;
  v94 = a4;
  *a5 = 0;
  v11 = *MEMORY[0x1E6960F58];
  v12 = CFDictionaryContainsKey(a3, *MEMORY[0x1E6960F58]);
  v13 = MEMORY[0x1E6960F40];
  v14 = MEMORY[0x1E6960F48];
  v96 = a5;
  if (v12 || CFDictionaryContainsKey(a3, *MEMORY[0x1E6960F48]))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(a2, 0, a3);
    if (MutableCopy)
    {
      v16 = MutableCopy;
      if (CFDictionaryContainsKey(MutableCopy, *v13))
      {
        v17 = 0;
        goto LABEL_15;
      }

      Value = CFDictionaryGetValue(a3, v11);
      v19 = CFDictionaryGetValue(a3, *v14);
      cf[0] = 0;
      if (v19)
      {
        v20 = PKDCopyDecryptFormatTypeFromFormatDescription(v19, cf);
        if (v20)
        {
LABEL_179:
          v27 = v20;
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          v21 = 0;
          goto LABEL_29;
        }
      }

      else if (Value)
      {
        v20 = PKDCopyDecryptFormatTypeFromSinfArray(Value, cf);
        if (v20)
        {
          goto LABEL_179;
        }
      }

      v17 = cf[0];
      FigCFDictionarySetValue();
LABEL_15:
      if (!CFDictionaryContainsKey(a3, v11))
      {
        v24 = 0;
        v26 = 0;
LABEL_22:
        CFDictionaryRemoveValue(v16, v11);
        CFDictionaryRemoveValue(v16, *v14);
        v27 = 0;
        v21 = v16;
        v16 = 0;
        if (!v17)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v22 = CFDictionaryGetValue(a3, v11);
      cf[0] = 0;
      if (v22)
      {
        v23 = PKDCopyDefaultKeyIDFromSinfArray(v22, cf);
        v24 = cf[0];
        if (v23)
        {
          v27 = v23;
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          v21 = 0;
          v24 = 0;
          goto LABEL_165;
        }

        cf[0] = 0;
        if (v24)
        {
          Base64EncodedStringFromCFData = FigCreateBase64EncodedStringFromCFData();
          v26 = cf[0];
          if (!Base64EncodedStringFromCFData)
          {
LABEL_20:
            FigCFDictionarySetValue();
            goto LABEL_22;
          }

          v27 = Base64EncodedStringFromCFData;
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          v21 = 0;
LABEL_165:
          v26 = 0;
          if (!v17)
          {
LABEL_24:
            if (v24)
            {
              CFRelease(v24);
            }

            if (v26)
            {
              CFRelease(v26);
            }

            a5 = v96;
            if (!v16)
            {
LABEL_30:
              if (v27)
              {
                goto LABEL_146;
              }

              goto LABEL_31;
            }

LABEL_29:
            CFRelease(v16);
            goto LABEL_30;
          }

LABEL_23:
          CFRelease(v17);
          goto LABEL_24;
        }
      }

      else
      {
        v24 = 0;
      }

      v26 = 0;
      goto LABEL_20;
    }

    fcks_copyCryptor_cold_1(cf);
    v21 = 0;
    v27 = LODWORD(cf[0]);
    if (LODWORD(cf[0]))
    {
      goto LABEL_146;
    }
  }

  else
  {
    v21 = CFRetain(a3);
  }

LABEL_31:
  FigSimpleMutexLock();
  if (*v10)
  {
    fcks_copyCryptor_cold_2(cf);
    v27 = LODWORD(cf[0]);
    goto LABEL_154;
  }

  v28 = CMBaseObjectGetDerivedStorage();
  *v101 = 0;
  LOBYTE(v98) = 0;
  *a5 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  if (v98)
  {
    if (*(v28 + 24))
    {
      v29 = FigCFWeakReferenceHolderCopyReferencedObject();
      *v101 = v29;
      if (v29)
      {
        v30 = v29;
        v27 = 0;
        goto LABEL_73;
      }
    }
  }

  v31 = *(v28 + 8);
  if (!v31)
  {
    v27 = 0;
LABEL_58:
    v42 = CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    v43 = *(v42 + 128);
    if (v43)
    {
      v44 = *MEMORY[0x1E69610A8];
      v45 = *MEMORY[0x1E695E480];
      do
      {
        while (1)
        {
          v46 = v43;
          v43 = *(v43 + 8);
          v47 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v47)
          {
            break;
          }

          fcks_freeCryptorEntry(a1, v46);
          if (!v43)
          {
            goto LABEL_69;
          }
        }

        v30 = v47;
        v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v48 && !v48(v30, v44, v45, cf) && FigCFEqual())
        {
          goto LABEL_70;
        }

        CFRelease(v30);
        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }
      }

      while (v43);
LABEL_69:
      v30 = 0;
LABEL_70:
      a5 = v96;
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    else
    {
      v30 = 0;
    }

LABEL_73:
    *a5 = v30;
    if (v27)
    {
      goto LABEL_154;
    }

    goto LABEL_74;
  }

  Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v31);
  if (!Copy)
  {
    fcks_copyCryptor_cold_4(cf);
    goto LABEL_170;
  }

  v33 = Copy;
  FigSimpleMutexUnlock();
  Count = CFArrayGetCount(v33);
  if (Count < 1)
  {
    v27 = 0;
    goto LABEL_56;
  }

  v35 = Count;
  v36 = 1;
  while (1)
  {
    CFArrayGetValueAtIndex(v33, v36 - 1);
    v37 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v37)
    {
      break;
    }

LABEL_47:
    if (*v101)
    {
      v41 = 0;
    }

    else
    {
      v41 = v36 < v35;
    }

    ++v36;
    if (!v41)
    {
      v27 = 0;
      goto LABEL_55;
    }
  }

  v38 = v37;
  v39 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v39)
  {
    v27 = v39(v38, 0, v21, 0, v101);
    CFRelease(v38);
    if (v27)
    {
      v40 = v27 == -17293;
    }

    else
    {
      v40 = 1;
    }

    if (!v40)
    {
      goto LABEL_55;
    }

    goto LABEL_47;
  }

  CFRelease(v38);
  v27 = 4294954514;
LABEL_55:
  a5 = v96;
LABEL_56:
  CFRelease(v33);
  FigSimpleMutexLock();
  if (!*v28)
  {
    v30 = *v101;
    if (!*v101)
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

  fcks_copyCryptor_cold_3(cf);
LABEL_170:
  v27 = LODWORD(cf[0]);
  if (LODWORD(cf[0]))
  {
LABEL_154:
    FigSimpleMutexUnlock();
    goto LABEL_146;
  }

LABEL_74:
  if (v94 && !*a5)
  {
    *type = 1;
    v99 = 0;
    v98 = 0;
    v49 = CMBaseObjectGetDerivedStorage();
    v50 = CFDictionaryGetValue(v21, *MEMORY[0x1E6960F50]);
    if (v50)
    {
      v51 = v50;
      v52 = *(v49 + 32);
      if (!v52)
      {
        goto LABEL_80;
      }

      if (CFEqual(v50, v52))
      {
        if (!*(v49 + 32))
        {
LABEL_80:
          *(v49 + 32) = CFRetain(v51);
        }

        v53 = CFDictionaryGetValue(v21, *MEMORY[0x1E6960F40]);
        v54 = v53;
        v55 = *MEMORY[0x1E695E480];
        if (*(v49 + 16))
        {
          v56 = 0;
          goto LABEL_83;
        }

        v95 = v53;
        Mutable = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v63 = Mutable;
        if (Mutable)
        {
          v80 = *MEMORY[0x1E695E4C0];
          if (*(v49 + 56))
          {
            v81 = *MEMORY[0x1E695E4C0];
          }

          else
          {
            v81 = *MEMORY[0x1E695E4D0];
          }

          CFDictionarySetValue(Mutable, @"ExternalProtectionMonitorPerCryptor", v81);
          if (!*(v49 + 184))
          {
            CFDictionarySetValue(v63, @"RequiresReencryptionContext", v80);
            if (!*(v49 + 184))
            {
              CFDictionarySetValue(v63, @"RequiresReencryptionContext", v80);
            }
          }

          v82 = FigCPEProtectorCreateForScheme(a2, v51, v63, v49 + 16);
          v56 = v63;
          if (!v82)
          {
            v83 = *(v49 + 16);
            v84 = *(v49 + 144);
            v85 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v85)
            {
              v63 = 0;
              v58 = 0;
              goto LABEL_126;
            }

            v82 = v85(v83, @"NeroTransport", v84);
            if (!v82)
            {
              if (dword_1EAF16B90 >= 2)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v54 = v95;
LABEL_83:
              v57 = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v58 = v57;
              if (!v57)
              {
                fcks_copyCryptor_cold_8(cf);
                v63 = 0;
                goto LABEL_178;
              }

              if (v54)
              {
                CFDictionarySetValue(v57, @"FormatType", v54);
              }

              v59 = *(v49 + 48);
              if (v59)
              {
                CFDictionarySetValue(v58, @"AuditToken", v59);
              }

              FigCFDictionarySetValueFromKeyInDict();
              FigCFDictionarySetValueFromKeyInDict();
              FigCFDictionarySetValueFromKeyInDict();
              FigCFDictionarySetValueFromKeyInDict();
              FigCFDictionaryGetInt32IfPresent();
              v60 = (CMBaseObjectGetDerivedStorage() + 168);
              if (!*v60)
              {
                v61 = CFGetAllocator(a1);
                v62 = FigSecureStopManagerCopyDefaultRuntimeInstance(v61, v60);
                if (v62)
                {
                  v27 = v62;
                  v63 = 0;
                  goto LABEL_127;
                }
              }

              FigCFDictionarySetValue();
              v63 = CFDictionaryCreateCopy(a2, v21);
              if (!v63)
              {
                fcks_copyCryptor_cold_7(cf);
                goto LABEL_178;
              }

              FigCFDictionarySetValue();
              v64 = *(v49 + 16);
              v65 = *(*(CMBaseObjectGetVTable() + 16) + 104);
              if (v65)
              {
                v66 = v65(v64, a2, *type, v58, &v98);
                if (v66)
                {
                  v27 = v66;
                }

                else
                {
                  FigCFDictionaryGetBooleanIfPresent();
                  if (v99)
                  {
                    v67 = *(v49 + 24);
                    if (v67)
                    {
                      CFRelease(v67);
                    }

                    *(v49 + 24) = FigCFWeakReferenceHolderCreateWithReferencedObject();
                  }

                  v68 = CFGetAllocator(a1);
                  v69 = MEMORY[0x19A8CC720](v68, 24, 0xA0040E93CF5C4, 0);
                  v70 = v69;
                  if (v69)
                  {
                    *v69 = 0;
                    v69[1] = 0;
                    v69[2] = 0;
                    v71 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                    *v70 = v71;
                    if (v71)
                    {
                      v70[1] = 0;
                      v72 = *(v49 + 136);
                      v70[2] = v72;
                      *v72 = v70;
                      *(v49 + 136) = v70 + 1;
                      goto LABEL_100;
                    }

                    v93 = 816;
                  }

                  else
                  {
                    v93 = 811;
                  }

                  if ((fcks_copyCryptor_cold_6(v68, v70, v93, cf) & 1) == 0)
                  {
LABEL_178:
                    v27 = LODWORD(cf[0]);
                    goto LABEL_127;
                  }

LABEL_100:
                  if (!a1 || !v98 || ((CMNotificationCenterGetDefaultLocalCenter(), v73 = FigNotificationCenterAddWeakListener(), !v73) || (v27 = v73, v73 == -12724)) && ((CMNotificationCenterGetDefaultLocalCenter(), v74 = FigNotificationCenterAddWeakListener(), !v74) || (v27 = v74, v74 == -12724)) && ((CMNotificationCenterGetDefaultLocalCenter(), v75 = FigNotificationCenterAddWeakListener(), !v75) || (v27 = v75, v75 == -12724)) && ((CMNotificationCenterGetDefaultLocalCenter(), v76 = FigNotificationCenterAddWeakListener(), !v76) || (v27 = v76, v76 == -12724)))
                  {
                    v27 = 0;
                    *v96 = v98;
                    v98 = 0;
                    goto LABEL_130;
                  }
                }

LABEL_127:
                if (v98)
                {
                  CFRelease(v98);
                }

                if (v58)
                {
LABEL_130:
                  CFRelease(v58);
                }

                if (v56)
                {
                  CFRelease(v56);
                }

                if (v63)
                {
                  CFRelease(v63);
                }

                if (v27)
                {
                  goto LABEL_154;
                }

                PKDLogPrivateData(a3);
                v77 = FigCFCopyCompactDescription();
                if (dword_1EAF16B90)
                {
                  LODWORD(v98) = 0;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  v87 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v88 = v98;
                  v89 = type[0];
                  if (os_log_type_enabled(v87, type[0]))
                  {
                    v90 = v88;
                  }

                  else
                  {
                    v90 = v88 & 0xFFFFFFFE;
                  }

                  if (v90)
                  {
                    v91 = *v96;
                    *v101 = 136316162;
                    *&v101[4] = "fcks_copyCryptor";
                    v102 = 2048;
                    v103 = a1;
                    v104 = 2114;
                    v105 = v91;
                    v106 = 2114;
                    v107 = v77;
                    v108 = 1024;
                    v109 = 0;
                    _os_log_send_and_compose_impl(v90, 0, cf, 128, &dword_1962D5000, v87, v89, "<<< FigContentKeySession >>> %s: %p created %{public}@ %{public}@ err:%d", v101, 48);
                  }

LABEL_142:
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                goto LABEL_143;
              }

LABEL_126:
              v27 = 4294954514;
              goto LABEL_127;
            }
          }

          v27 = v82;
          v63 = 0;
          v58 = 0;
          goto LABEL_127;
        }

        fcks_copyCryptor_cold_9(cf);
LABEL_177:
        v56 = 0;
        v58 = 0;
        goto LABEL_178;
      }

      fcks_copyCryptor_cold_5(cf);
    }

    else
    {
      fcks_copyCryptor_cold_10(cf);
    }

    v63 = 0;
    goto LABEL_177;
  }

  PKDLogPrivateData(a3);
  v77 = FigCFCopyCompactDescription();
  if (dword_1EAF16B90)
  {
    LODWORD(v98) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
    goto LABEL_142;
  }

LABEL_143:
  FigSimpleMutexUnlock();
  if (v77)
  {
    CFRelease(v77);
  }

  v27 = 0;
LABEL_146:
  if (v21)
  {
    CFRelease(v21);
  }

  return v27;
}

uint64_t fcks_resetSession(const void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    fcks_resetSession_cold_1(v6);
    v3 = v6[0];
  }

  else
  {
    fcks_resetSessionGuts(a1);
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  if (dword_1EAF16B90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

uint64_t fcks_invokeKeyResponseErrorCallbackAsync(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    FigContentKeySessionCallbackContext = fcks_createFigContentKeySessionCallbackContext(DerivedStorage);
    v19 = FigContentKeySessionCallbackContext;
    if (FigContentKeySessionCallbackContext)
    {
      v9 = FigContentKeySessionCallbackContext;
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      *v9 = v10;
      if (a4)
      {
        v11 = CFRetain(a4);
      }

      else
      {
        v11 = 0;
      }

      v9[3] = v11;
      v9[1] = a3;
      dispatch_async_f(*(DerivedStorage + 64), v9, fcks_dispatchKeyResponseErrorCallback);
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 8);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 8), i);
      v14 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v14)
      {
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v16)
        {
          CFRelease(v15);
          v17 = 4294954514;
LABEL_19:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v22);
          goto LABEL_20;
        }

        v17 = v16(v15, a2, a3, a4);
        CFRelease(v15);
        if (v17)
        {
          goto LABEL_19;
        }
      }
    }

    goto LABEL_22;
  }

  if (fcks_invokeKeyResponseErrorCallbackAsync_cold_1())
  {
LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v17 = v21;
LABEL_20:
  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v19);
LABEL_23:
  FigSimpleMutexUnlock();
  return v17;
}

uint64_t fcks_invokeKeyResponseSuccessfullyProcessedCallbackAsync(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    FigContentKeySessionCallbackContext = fcks_createFigContentKeySessionCallbackContext(DerivedStorage);
    v16 = FigContentKeySessionCallbackContext;
    if (FigContentKeySessionCallbackContext)
    {
      v7 = FigContentKeySessionCallbackContext;
      if (a2)
      {
        v8 = CFRetain(a2);
      }

      else
      {
        v8 = 0;
      }

      *v7 = v8;
      v7[1] = a3;
      dispatch_async_f(*(DerivedStorage + 64), v7, fcks_dispatchKeyResponseSuccessfullyProcessedCallback);
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 8);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 8), i);
      v11 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v11)
      {
        v12 = v11;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v13)
        {
          CFRelease(v12);
          v14 = 4294954514;
LABEL_16:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v19);
          goto LABEL_17;
        }

        v14 = v13(v12, a2, a3);
        CFRelease(v12);
        if (v14)
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_19;
  }

  if (fcks_invokeKeyResponseSuccessfullyProcessedCallbackAsync_cold_1())
  {
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v14 = v18;
LABEL_17:
  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v16);
LABEL_20:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t fcks_invokePersistentKeyUpdatedCallbackAsync(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    FigContentKeySessionCallbackContext = fcks_createFigContentKeySessionCallbackContext(DerivedStorage);
    v17 = FigContentKeySessionCallbackContext;
    if (FigContentKeySessionCallbackContext)
    {
      v7 = FigContentKeySessionCallbackContext;
      if (a2)
      {
        v8 = CFRetain(a2);
      }

      else
      {
        v8 = 0;
      }

      v7[2] = v8;
      if (a3)
      {
        v9 = CFRetain(a3);
      }

      else
      {
        v9 = 0;
      }

      v7[4] = v9;
      dispatch_async_f(*(DerivedStorage + 64), v7, fcks_dispatchPersistentKeyUpdatedCallback);
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 8);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 8), i);
      v12 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v12)
      {
        v13 = v12;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v14)
        {
          CFRelease(v13);
          v15 = 4294954514;
LABEL_19:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v20);
          goto LABEL_20;
        }

        v15 = v14(v13, a2, a3);
        CFRelease(v13);
        if (v15)
        {
          goto LABEL_19;
        }
      }
    }

    goto LABEL_22;
  }

  if (fcks_invokePersistentKeyUpdatedCallbackAsync_cold_1())
  {
LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  v15 = v19;
LABEL_20:
  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v17);
LABEL_23:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t fcks_invokeSecureStopDidFinalizeRecordCallbackAsync(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigContentKeySessionCallbackContext = fcks_createFigContentKeySessionCallbackContext(DerivedStorage);
  if (FigContentKeySessionCallbackContext)
  {
    dispatch_async_f(*(DerivedStorage + 64), FigContentKeySessionCallbackContext, fcks_dispatchSecureStopDidFinalizeRecordCallback);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fcks_invokeDispatchExternalProtectionStateChangedCallbackAsync(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    FigContentKeySessionCallbackContext = fcks_createFigContentKeySessionCallbackContext(DerivedStorage);
    v14 = FigContentKeySessionCallbackContext;
    if (FigContentKeySessionCallbackContext)
    {
      v5 = FigContentKeySessionCallbackContext;
      if (a2)
      {
        v6 = CFRetain(a2);
      }

      else
      {
        v6 = 0;
      }

      *v5 = v6;
      dispatch_async_f(*(DerivedStorage + 64), v5, fcks_dispatchExternalProtectionStateChangedCallback);
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 8);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 8), i);
      v9 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v9)
      {
        v10 = v9;
        v11 = *(CMBaseObjectGetVTable() + 16);
        if (!*(v11 + 56))
        {
          CFRelease(v10);
          v12 = 4294954514;
LABEL_16:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v17);
          goto LABEL_17;
        }

        v12 = (*(v11 + 64))(v10, a2);
        CFRelease(v10);
        if (v12)
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_19;
  }

  if (fcks_invokeDispatchExternalProtectionStateChangedCallbackAsync_cold_1())
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v12 = v16;
LABEL_17:
  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v14);
LABEL_20:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t fcks_setAuthorizationToken(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      FigSimpleMutexLock();
      if (*v6)
      {
        fcks_setAuthorizationToken_cold_1(&v9);
        v7 = v9;
      }

      else
      {
        CFDictionarySetValue(*(v6 + 176), a2, a3);
        v7 = 0;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      fcks_setAuthorizationToken_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    fcks_setAuthorizationToken_cold_3(&v11);
    return v11;
  }

  return v7;
}

uint64_t fcks_copyAuthorizationToken(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    fcks_copyAuthorizationToken_cold_3(v19);
    return v19[0];
  }

  if (!a3)
  {
    fcks_copyAuthorizationToken_cold_2(v19);
    return v19[0];
  }

  v6 = DerivedStorage;
  *a3 = 0;
  FigSimpleMutexLock();
  if (*v6)
  {
    fcks_copyAuthorizationToken_cold_1(v19);
    v15 = v19[0];
LABEL_19:
    FigSimpleMutexUnlock();
    v9 = cf;
    if (v15)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(*(v6 + 176), a2);
  if (Value)
  {
    v8 = CFRetain(Value);
    cf = v8;
    if (v8)
    {
      v9 = v8;
      FigSimpleMutexUnlock();
LABEL_20:
      v15 = 0;
      *a3 = v9;
      return v15;
    }
  }

  else
  {
    cf = 0;
  }

  for (i = 0; ; ++i)
  {
    Count = *(v6 + 8);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      goto LABEL_17;
    }

    CFArrayGetValueAtIndex(*(v6 + 8), i);
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v12)
    {
      break;
    }

LABEL_15:
    ;
  }

  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v14)
  {
    CFRelease(v13);
    v15 = 4294954514;
    goto LABEL_23;
  }

  v15 = v14(v13, a2, &cf);
  CFRelease(v13);
  if (v15 == -17295)
  {
    goto LABEL_15;
  }

  if (v15)
  {
LABEL_23:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v18, v19[1]);
    goto LABEL_24;
  }

LABEL_17:
  if (cf)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v15 = 4294950001;
LABEL_24:
  FigSimpleMutexUnlock();
  v9 = cf;
LABEL_25:
  if (v9)
  {
    CFRelease(v9);
  }

  return v15;
}

CFTypeRef *fcks_createFigContentKeySessionCallbackContext(uint64_t a1)
{
  v5 = 0;
  if (*(a1 + 64) && *(a1 + 120) && (v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x10E0040C7BBEF1CuLL), v5 = v2, *v2 = 0u, *(v2 + 1) = 0u, *(v2 + 2) = 0u, *(v2 + 3) = 0u, *(v2 + 4) = 0u, *(v2 + 5) = 0u, v3 = FigCFWeakReferenceHolderCopyReferencedObject(), (v2[5] = v3) != 0))
  {
    __copy_assignment_8_8_t0w4_pa0_52572_8_pa0_57120_16_pa0_14239_24_pa0_30190_32_pa0_41757_40((v2 + 6), a1 + 72);
  }

  else
  {
    fcks_releaseAndClearFigContentKeySessionCallbackContext(&v5);
    return v5;
  }

  return v2;
}

void fcks_dispatchKeyResponseErrorCallback(CFTypeRef *a1)
{
  v2 = a1;
  v1 = a1[7];
  if (v1)
  {
    v1(a1[5], *a1, a1[1], a1[3]);
  }

  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v2);
}

uint64_t FigAssetWriterCreateForWritingFragmentedData(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, const __CFDictionary *a6, void *a7)
{
  cf = 0;
  FigKTraceInit();
  if (a7)
  {
    v14 = assetWriter_CreateWithByteStreamOrFormatWriterSegmentCallback(a1, 0, assetWriter_FormatWriterSegmentCallback, a5, a6, &cf);
    v15 = cf;
    if (v14)
    {
      v17 = v14;
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 304) = 1;
      *(DerivedStorage + 312) = a2;
      *(DerivedStorage + 320) = a3;
      *(DerivedStorage + 328) = a4;
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      v17 = 0;
      *a7 = v15;
    }
  }

  else
  {
    FigAssetWriterCreateForWritingFragmentedData_cold_1(&v20);
    return v20;
  }

  return v17;
}

void assetWriter_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    assetWriter_CopyProperty_cold_2(&v19);
    return;
  }

  if (!a4)
  {
    assetWriter_CopyProperty_cold_1(&v19);
    return;
  }

  v9 = DerivedStorage;
  if (!CFEqual(a2, @"AssetWriter_RealTime"))
  {
    if (CFEqual(a2, @"AssetWriter_MaximizePowerEfficiency"))
    {
      v11 = MEMORY[0x1E695E4D0];
      v12 = *(v9 + 424);
LABEL_9:
      if (!v12)
      {
        v11 = MEMORY[0x1E695E4C0];
      }

      v13 = CFRetain(*v11);
      goto LABEL_15;
    }

    if (CFEqual(a2, @"AssetWriter_ClientPID"))
    {
      v14 = *MEMORY[0x1E695E480];
      v15 = v9 + 9;
      v16 = kCFNumberSInt32Type;
    }

    else
    {
      if (CFEqual(a2, @"AssetWriter_ThrottleForBackground"))
      {
        v11 = MEMORY[0x1E695E4D0];
        v12 = *(v9 + 40);
        goto LABEL_9;
      }

      if (!CFEqual(a2, @"AssetWriter_IOPolicy"))
      {
        if (CFEqual(a2, @"AssetWriter_PreferredOutputSegmentInterval"))
        {
          v17 = v9 + 67;
          v18 = *(v9 + 67);
        }

        else
        {
          if (!CFEqual(a2, @"AssetWriter_InitialSegmentStartTime"))
          {
            return;
          }

          v17 = v9 + 61;
          v18 = *(v9 + 61);
        }

        *&v19.value = v18;
        v19.epoch = *(v17 + 2);
        v13 = CMTimeCopyAsDictionary(&v19, a3);
LABEL_15:
        *a4 = v13;
        return;
      }

      v14 = *MEMORY[0x1E695E480];
      v15 = v9 + 114;
      v16 = kCFNumberIntType;
    }

    v13 = CFNumberCreate(v14, v16, v15);
    goto LABEL_15;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954509, "<<<< FigAssetWriter >>>>", 630, v4);
}

void assetWriter_SetProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    assetWriter_SetProperty_cold_13(&v25);
    return;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, @"AssetWriter_ClientSecTask"))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == SecTaskGetTypeID())
      {
        v10 = *(v8 + 55);
        *(v8 + 55) = a3;
        CFRetain(a3);
        if (v10)
        {
          CFRelease(v10);
        }
      }

      else
      {
        assetWriter_SetProperty_cold_1(&v25);
      }
    }

    else
    {
      v13 = *(v8 + 55);
      if (v13)
      {
        CFRelease(v13);
        *(v8 + 55) = 0;
      }
    }

    return;
  }

  if (CFEqual(a2, @"AssetWriter_Metadata"))
  {
    if (*v8 >= 5u)
    {
      assetWriter_SetProperty_cold_3();
    }

    else if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 == CFArrayGetTypeID())
      {
        v12 = *(v8 + 50);
        if (v12)
        {
          CFRelease(v12);
          *(v8 + 50) = 0;
        }

        *(v8 + 50) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
      }

      else
      {
        assetWriter_SetProperty_cold_2(&v25);
      }
    }

    else
    {
      v15 = *(v8 + 50);
      if (v15)
      {
        CFRelease(v15);
        *(v8 + 50) = 0;
      }
    }

    return;
  }

  if (CFEqual(a2, @"AssetWriter_RealTime"))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954509, "<<<< FigAssetWriter >>>>", 696, v3);
    return;
  }

  if (CFEqual(a2, @"AssetWriter_ClientPID"))
  {
    if (a3 && (v16 = CFGetTypeID(a3), v16 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a3, kCFNumberSInt32Type, v8 + 9);

      remakerfamily_updateClientPID(a1);
    }

    else
    {
      assetWriter_SetProperty_cold_4(&v25);
    }

    return;
  }

  if (CFEqual(a2, @"AssetWriter_ThrottleForBackground"))
  {
    if (a3 && (v17 = CFGetTypeID(a3), v17 == CFBooleanGetTypeID()))
    {
      *(v8 + 40) = CFBooleanGetValue(a3);

      remakerfamily_updateThrottleForBackground(a1);
    }

    else
    {
      assetWriter_SetProperty_cold_5(&v25);
    }

    return;
  }

  if (CFEqual(a2, @"AssetWriter_IOPolicy"))
  {
    if (a3 && (v18 = CFGetTypeID(a3), v18 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a3, kCFNumberIntType, v8 + 114);

      remakerfamily_updateIOPolicy(a1);
    }

    else
    {
      assetWriter_SetProperty_cold_6(&v25);
    }

    return;
  }

  if (CFEqual(a2, @"AssetWriter_MaximizePowerEfficiency"))
  {
    if (a3 && (v19 = CFGetTypeID(a3), v19 == CFBooleanGetTypeID()))
    {
      *(v8 + 424) = CFBooleanGetValue(a3);
    }

    else
    {
      assetWriter_SetProperty_cold_7(&v25);
    }

    return;
  }

  if (CFEqual(a2, @"AssetWriter_PreferredOutputSegmentInterval"))
  {
    if (*(v8 + 304) != 1)
    {
      assetWriter_SetProperty_cold_8(&v25);
      return;
    }

    memset(&v25, 0, sizeof(v25));
    CMTimeMakeFromDictionary(&v25, a3);
    if ((~v25.flags & 0x11) != 0)
    {
      if ((v25.flags & 0x1D) != 1 || (time1 = **&MEMORY[0x1E6960CC0], v23 = v25, (CMTimeCompare(&time1, &v23) & 0x80000000) == 0))
      {
        assetWriter_SetProperty_cold_9(&time1);
        return;
      }
    }

    if (!FigFormatWriterSetProperty(*(v8 + 23), @"PreferredOutputSegmentInterval", a3))
    {
      v20 = v8 + 67;
      *(v8 + 67) = *&v25.value;
LABEL_59:
      *(v20 + 2) = v25.epoch;
    }
  }

  else if (CFEqual(a2, @"AssetWriter_InitialSegmentStartTime"))
  {
    if (*(v8 + 304) != 1)
    {
      assetWriter_SetProperty_cold_10(&v25);
      return;
    }

    memset(&v25, 0, sizeof(v25));
    CMTimeMakeFromDictionary(&v25, a3);
    if ((v25.flags & 0x1D) != 1)
    {
      assetWriter_SetProperty_cold_11(&time1);
      return;
    }

    if (!FigFormatWriterSetProperty(*(v8 + 23), @"InitialSegmentStartTime", a3))
    {
      v20 = v8 + 61;
      *(v8 + 61) = *&v25.value;
      goto LABEL_59;
    }
  }

  else if (CFEqual(a2, @"AssetWriter_MinimizeMemoryUsage"))
  {
    if (a3 && (v21 = CFGetTypeID(a3), v21 == CFBooleanGetTypeID()))
    {
      Value = CFBooleanGetValue(a3);
      *(v8 + 425) = Value;
      remakerFamily_setMemoryUsage(a1, Value);
    }

    else
    {
      assetWriter_SetProperty_cold_12(&v25);
    }
  }
}

uint64_t FigFormatWriterSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigFormatWriterGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

void assetWriter_AddAudioTrackWithPresetCompression(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (*CMBaseObjectGetDerivedStorage() == 1)
  {
    if (a2)
    {
      v16 = 0;
      v17 = 0;
      v14 = 0;
      v15 = 0;
      FigAudioCompressionOptionsGetPreset(a2, &v17, &v16, &v15, &v14);
      if (!v8)
      {
        v10 = v16;
        v9 = v17;
        v12 = v14;
        v11 = v15;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v13)
        {
          v13(a1, v9, v10, v11, v12, a3, a4);
        }
      }
    }

    else
    {
      assetWriter_AddAudioTrackWithPresetCompression_cold_2(&v17);
    }
  }

  else
  {
    assetWriter_AddAudioTrackWithPresetCompression_cold_1(&v17);
  }
}

uint64_t assetWriter_AddVideoTrackWithCompression(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, const void *a7, uint64_t a8, __int128 *a9, const __CFDictionary *a10, _DWORD *a11)
{
  v12 = *a9;
  v13 = *(a9 + 2);
  return assetWriter_AddVideoTrackWithCompressionAndMediaType(a1, a2, a3, a4, 1986618469, a5, a6, a7, a8, &v12, a10, a11);
}

uint64_t assetWriter_SetTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v6 = a2;
  if (*CMBaseObjectGetDerivedStorage() != 1)
  {
    assetWriter_SetTrackProperty_cold_1(&v20);
    return v20;
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, v6);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_SetTrackProperty_cold_5(&v20);
    return v20;
  }

  v9 = ChannelByWriterTrackID;
  if (!*(ChannelByWriterTrackID + 16) || (v10 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_SetTrackProperty_cold_4(&v20);
    return v20;
  }

  v11 = v10;
  if (CFEqual(a3, @"AssetWriterTrack_Metadata"))
  {
    if (!a4)
    {
      v18 = v11[24];
      if (v18)
      {
        CFRelease(v18);
        v15 = 0;
        v11[24] = 0;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_19;
    }

    v12 = CFGetTypeID(a4);
    if (v12 == CFArrayGetTypeID())
    {
      v13 = v11[24];
      if (v13)
      {
        CFRelease(v13);
        v11[24] = 0;
      }

      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a4);
      v15 = 0;
      v11[24] = Copy;
      goto LABEL_19;
    }

    assetWriter_SetTrackProperty_cold_2(&v20);
    goto LABEL_27;
  }

  if (CFEqual(a3, @"AssetWriterTrack_ShouldVerifyFirstAudioSampleBufferPriming"))
  {
    if (!a4 || (v16 = CFGetTypeID(a4), v16 != CFBooleanGetTypeID()))
    {
      assetWriter_SetTrackProperty_cold_3(&v20);
LABEL_27:
      v15 = v20;
      goto LABEL_19;
    }

    Value = CFBooleanGetValue(a4);
    v15 = 0;
    *(v9 + 192) = Value;
  }

  else
  {
    v15 = 4294954512;
  }

LABEL_19:
  CFRelease(v11);
  return v15;
}

uint64_t assetWriter_CopyTrackProperty(const void *a1, uint64_t a2, const void *a3, uint64_t a4, void *a5)
{
  v7 = a2;
  if (*CMBaseObjectGetDerivedStorage() >= 7u)
  {
    assetWriter_CopyTrackProperty_cold_5(&propertyValueOut);
    return propertyValueOut;
  }

  if (!a5)
  {
    assetWriter_CopyTrackProperty_cold_4(&propertyValueOut);
    return propertyValueOut;
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, v7);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_CopyTrackProperty_cold_3(&propertyValueOut);
    return propertyValueOut;
  }

  v10 = ChannelByWriterTrackID;
  if (!*(ChannelByWriterTrackID + 16) || (v11 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_CopyTrackProperty_cold_2(&propertyValueOut);
    return propertyValueOut;
  }

  v12 = v11;
  if (!CFEqual(a3, @"AssetWriterTrack_PixelBufferPool"))
  {
    if (!CFEqual(a3, @"AssetWriterTrack_EncoderSupportsMultiPass"))
    {
      if (CFEqual(a3, @"AssetWriterTrack_ShouldVerifyFirstAudioSampleBufferPriming"))
      {
        v21 = MEMORY[0x1E695E4D0];
        if (!*(v10 + 192))
        {
          v21 = MEMORY[0x1E695E4C0];
        }

        v22 = *v21;
        if (*v21)
        {
          v22 = CFRetain(v22);
        }

        v14 = 0;
        *a5 = v22;
      }

      else
      {
        v14 = 4294954512;
      }

      goto LABEL_10;
    }

    if (!*(v10 + 120) || (v13 = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v10, 0), !v13))
    {
      v16 = *(v12 + 288);
      if (v16)
      {
        v17 = *(v12 + 32);
        if (v17 == 1986618469 || v17 == 1635088502)
        {
          propertyValueOut = 0;
          VTCompressionSession = FigMediaProcessorGetVTCompressionSession(v16);
          v19 = VTSessionCopyProperty(VTCompressionSession, *MEMORY[0x1E6983740], *MEMORY[0x1E695E480], &propertyValueOut);
          v20 = MEMORY[0x1E695E4D0];
          if (v19)
          {
            v20 = MEMORY[0x1E695E4C0];
          }

          *a5 = *v20;
          if (propertyValueOut)
          {
            CFRelease(propertyValueOut);
          }

          v14 = 0;
          goto LABEL_10;
        }
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, propertyValueOut, v25);
    }

    goto LABEL_30;
  }

  if (*(v10 + 120))
  {
    v13 = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v10, 0);
    if (v13)
    {
LABEL_30:
      v14 = v13;
      goto LABEL_10;
    }
  }

  assetWriter_CopyTrackProperty_cold_1(v12, a5, &propertyValueOut);
  v14 = propertyValueOut;
LABEL_10:
  CFRelease(v12);
  return v14;
}

uint64_t assetWriter_AddSampleBuffer(const void *a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    assetWriter_AddSampleBuffer_cold_11(&time1);
    return LODWORD(time1.value);
  }

  v7 = DerivedStorage;
  if (DerivedStorage[5])
  {
    assetWriter_AddSampleBuffer_cold_1();
    return LODWORD(time1.value);
  }

  if (*DerivedStorage != 3)
  {
    assetWriter_AddSampleBuffer_cold_2(&time1);
    return LODWORD(time1.value);
  }

  if (!a3)
  {
    assetWriter_AddSampleBuffer_cold_10(&time1);
    return LODWORD(time1.value);
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_AddSampleBuffer_cold_9(&time1);
    return LODWORD(time1.value);
  }

  v9 = ChannelByWriterTrackID;
  if (!*(ChannelByWriterTrackID + 16) || (v10 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_AddSampleBuffer_cold_8(&time1);
    return LODWORD(time1.value);
  }

  v11 = v10;
  if (!CMSampleBufferGetNumSamples(a3) || assetWriter_IsTrackNativeTrack(a1, v9) || (DataBuffer = CMSampleBufferGetDataBuffer(a3), ImageBuffer = CMSampleBufferGetImageBuffer(a3), CaptionGroup = FigSampleBufferGetCaptionGroup(), DataBuffer) || ImageBuffer || CaptionGroup)
  {
    CMSampleBufferGetDuration(&time1, a3);
    if ((time1.flags & 1) == 0)
    {
      goto LABEL_15;
    }

    CMSampleBufferGetDuration(&lhs, a3);
    if ((lhs.flags & 8) == 0)
    {
      goto LABEL_15;
    }

    assetWriter_AddSampleBuffer_cold_4(&rhs);
  }

  else
  {
    assetWriter_AddSampleBuffer_cold_3(&rhs);
  }

  value_low = LODWORD(rhs.value);
  if (LODWORD(rhs.value))
  {
    goto LABEL_54;
  }

LABEL_15:
  if (v11[8] != 1936684398)
  {
    goto LABEL_41;
  }

  if (!*(v9 + 120))
  {
LABEL_20:
    if (*(v9 + 192))
    {
      if (CMSampleBufferGetNumSamples(a3) >= 1)
      {
        v40 = **&MEMORY[0x1E6960C70];
        if (!*(v9 + 193))
        {
          v19 = CMGetAttachment(a3, *MEMORY[0x1E6960560], 0);
          CMTimeMakeFromDictionary(&time1, v19);
          value = time1.value;
          flags = time1.flags;
          timescale = time1.timescale;
          if (time1.flags)
          {
            epoch = time1.epoch;
          }

          else
          {
            value = *MEMORY[0x1E6960CC0];
            flags = *(MEMORY[0x1E6960CC0] + 12);
            timescale = *(MEMORY[0x1E6960CC0] + 8);
            epoch = *(MEMORY[0x1E6960CC0] + 16);
          }

          if (*(v9 + 208))
          {
            lhs = *(v9 + 196);
            rhs.value = value;
            rhs.timescale = timescale;
            rhs.flags = flags;
            rhs.epoch = epoch;
            CMTimeAdd(&time1, &lhs, &rhs);
            *(v9 + 196) = time1;
          }

          else
          {
            *(v9 + 196) = value;
            *(v9 + 204) = timescale;
            *(v9 + 208) = flags;
            *(v9 + 212) = epoch;
          }

          CMSampleBufferGetDuration(&v40, a3);
          time1 = v40;
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          if (CMTimeCompare(&time1, &lhs) >= 1)
          {
            FormatDescription = CMSampleBufferGetFormatDescription(a3);
            *&v39.value = *(v9 + 196);
            v39.epoch = *(v9 + 212);
            MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(FormatDescription);
            if (MostCompatibleFormat)
            {
              memset(&time1, 0, sizeof(time1));
              CMTimeMake(&time1, MostCompatibleFormat->mASBD.mFramesPerPacket, MostCompatibleFormat->mASBD.mSampleRate);
              GradualDecoderRefresh = FigGaplessInfoCreateGradualDecoderRefresh(FormatDescription);
              SInt32 = FigCFNumberGetSInt32();
              memset(&lhs, 0, sizeof(lhs));
              rhs = time1;
              CMTimeMultiply(&lhs, &rhs, SInt32);
              memset(&rhs, 0, sizeof(rhs));
              FigGaplessInfoGetDefaultAudioPrimingDuration(FormatDescription, &rhs);
              memset(&v43, 0, sizeof(v43));
              time = lhs;
              time2 = rhs;
              CMTimeMinimum(&v43, &time, &time2);
              time = v39;
              time2 = v43;
              if (CMTimeCompare(&time, &time2) < 0)
              {
                v26 = *MEMORY[0x1E695E480];
                time = v39;
                v27 = CMTimeCopyDescription(v26, &time);
                time = rhs;
                v28 = CMTimeCopyDescription(v26, &time);
                time = time1;
                v29 = CMTimeCopyDescription(v26, &time);
                if (v29)
                {
                  CFRelease(v29);
                }

                if (v28)
                {
                  CFRelease(v28);
                }

                if (v27)
                {
                  CFRelease(v27);
                }
              }

              if (GradualDecoderRefresh)
              {
                CFRelease(GradualDecoderRefresh);
              }
            }

            *(v9 + 193) = 1;
          }
        }
      }
    }

LABEL_41:
    if (!*(v9 + 120))
    {
      goto LABEL_48;
    }

    time1.value = 0;
    v30 = CMSampleBufferGetImageBuffer(a3);
    if (v30)
    {
      v31 = assetWriter_copyPixelBufferAttributesForHintingEncoder(v30, &time1);
      if (v31)
      {
LABEL_50:
        value_low = v31;
        goto LABEL_54;
      }

      v32 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v32)
      {
        v33 = v32;
        v34 = time1.value;
        value_low = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v9, time1.value);
        if (v34)
        {
          CFRelease(v34);
        }

        CFRelease(v33);
        if (value_low)
        {
          goto LABEL_54;
        }

LABEL_48:
        v35 = *(v9 + 32);
        if (v35)
        {
          v31 = CMBufferQueueEnqueue(v35, a3);
        }

        else
        {
          v36 = *(v7 + 23);
          v37 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v37)
          {
            value_low = 4294954514;
            goto LABEL_54;
          }

          v31 = v37(v36, a2, a3);
        }

        goto LABEL_50;
      }

      assetWriter_AddSampleBuffer_cold_6(&lhs);
    }

    else
    {
      assetWriter_AddSampleBuffer_cold_7(&lhs);
    }

    value_low = LODWORD(lhs.value);
    goto LABEL_54;
  }

  v15 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v15)
  {
    assetWriter_AddSampleBuffer_cold_5(&time1);
    value_low = LODWORD(time1.value);
    goto LABEL_54;
  }

  v16 = v15;
  v17 = CMSampleBufferGetFormatDescription(a3);
  value_low = assetWriter_finishBuildingAudioTrackWithSourceFormatDescription(a1, v9, v17);
  CFRelease(v16);
  if (!value_low)
  {
    if (v11[8] != 1936684398)
    {
      goto LABEL_41;
    }

    goto LABEL_20;
  }

LABEL_54:
  CFRelease(v11);
  return value_low;
}

opaqueCMBufferQueue *assetWriter_IsTrackQueueAboveHighWaterLevel(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = **&MEMORY[0x1E6960C70];
  if (*DerivedStorage >= 7u)
  {
    assetWriter_IsTrackQueueAboveHighWaterLevel_cold_2();
    return 0;
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, v2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_IsTrackQueueAboveHighWaterLevel_cold_1();
    return 0;
  }

  v6 = ChannelByWriterTrackID;
  result = *(ChannelByWriterTrackID + 32);
  if (result)
  {
    CMBufferQueueGetDuration(&v13, result);
    TotalSize = CMBufferQueueGetTotalSize(*(v6 + 32));
    CMBufferQueueGetBufferCount(*(v6 + 32));
    v9 = *(v6 + 96);
    time1 = v13;
    v11 = *(v6 + 64);
    if (CMTimeCompare(&time1, &v11) <= 0)
    {
      return (v9 && TotalSize > v9);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t assetWriter_MarkEndOfDataForTrack(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *CMBaseObjectGetDerivedStorage();
  if (v4 >= 7)
  {
    assetWriter_MarkEndOfDataForTrack_cold_4(&v10);
    return v10;
  }

  if (v4 <= 2)
  {
    assetWriter_MarkEndOfDataForTrack_cold_3(&v10);
    return v10;
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, v2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_MarkEndOfDataForTrack_cold_2(&v10);
    return v10;
  }

  if (!*(ChannelByWriterTrackID + 16) || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_MarkEndOfDataForTrack_cold_1(&v10);
    return v10;
  }

  v7 = v6;
  v8 = remakerFamily_MarkEndOfDataForTrack(v6, 1);
  CFRelease(v7);
  return v8;
}

uint64_t assetWriter_Finish(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    assetWriter_Finish_cold_3(&v7);
    return v7;
  }

  else
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 5))
    {
      assetWriter_Finish_cold_1();
      return v5;
    }

    else if (*DerivedStorage <= 2u)
    {
      assetWriter_Finish_cold_2(&v6);
      return v6;
    }

    else
    {
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      FigAtomicCompareAndSwap32();
      dispatch_sync_f(v3[7], a1, assetWriter_finishAsyncDispatch);
      FigSemaphoreWaitRelative();
      FigSemaphoreSignal();
      remakerFamily_registerPowerLogEvent(a1);
      return *(v3 + 5);
    }
  }
}

uint64_t assetWriter_FinishAsync(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    assetWriter_FinishAsync_cold_3(&v7);
    return v7;
  }

  else
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 5))
    {
      assetWriter_FinishAsync_cold_1();
      return v5;
    }

    else if (*DerivedStorage <= 2u)
    {
      assetWriter_FinishAsync_cold_2(&v6);
      return v6;
    }

    else
    {
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      FigAtomicCompareAndSwap32();
      remakerFamily_safeDispatchAsync(v3[7], a1, assetWriter_finishAsyncDispatch);
      return 0;
    }
  }
}

uint64_t assetWriter_BeginPass(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v14 = 0;
  v15 = 0;
  v4 = *CMBaseObjectGetDerivedStorage();
  if (v4 >= 7)
  {
    assetWriter_BeginPass_cold_6(&v16);
    return v16;
  }

  if (v4 != 3)
  {
    assetWriter_BeginPass_cold_1(&v16);
    return v16;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, v2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_BeginPass_cold_5(&v16);
    return v16;
  }

  v6 = ChannelByWriterTrackID;
  if (!*(ChannelByWriterTrackID + 16) || (v7 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_BeginPass_cold_4(&v16);
    return v16;
  }

  v8 = v7;
  if (!*(v7 + 356))
  {
    assetWriter_BeginPass_cold_3(&v16);
LABEL_28:
    v9 = v16;
    goto LABEL_19;
  }

  *(v7 + 424) = 0;
  if (!*(v6 + 120))
  {
    if (*(v7 + 288))
    {
      v10 = *(v7 + 400);
      if (!v10 || CFArrayGetCount(v10) < 1 || (Pass = remakerFamily_createTimeRangesCArray(*(v8 + 400), &v14, &v15), !Pass) && (Pass = VTFrameSiloSetTimeRangesForNextPass(*(v8 + 360), v14, v15), !Pass))
      {
        VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(v8 + 288));
        Pass = VTCompressionSessionBeginPass(VTCompressionSession, 0, 0);
        if (!Pass)
        {
          *(v8 + 296) = 0;
          Pass = CMBufferQueueReset(*(v6 + 32));
        }
      }

      v9 = Pass;
      goto LABEL_19;
    }

    assetWriter_BeginPass_cold_2(&v16);
    goto LABEL_28;
  }

  v9 = 0;
  *(v6 + 220) = 1;
LABEL_19:
  free(v15);
  CFRelease(v8);
  return v9;
}

uint64_t assetWriter_EndPass(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *CMBaseObjectGetDerivedStorage();
  if (v4 >= 7)
  {
    assetWriter_EndPass_cold_4(v13);
    return v13[0];
  }

  if (v4 != 3)
  {
    assetWriter_EndPass_cold_1(v13);
    return v13[0];
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, v2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_EndPass_cold_3(v13);
    return v13[0];
  }

  if (!*(ChannelByWriterTrackID + 16) || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_EndPass_cold_2(v13);
    return v13[0];
  }

  v7 = v6;
  if (*(v6 + 356))
  {
    v8 = 0;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13[1]);
    v8 = v7[356] == 0;
  }

  v9 = remakerFamily_MarkEndOfDataForTrack(v7, v8);
  CFRelease(v7);
  return v9;
}

uint64_t assetWriter_AddCaptionTrack(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v46 = 0;
  v45 = **&MEMORY[0x1E6960C70];
  v44 = 0;
  if (*DerivedStorage != 1)
  {
    assetWriter_AddCaptionTrack_cold_1(&time);
LABEL_35:
    value_low = LODWORD(time.value);
    goto LABEL_13;
  }

  if (!a5)
  {
    assetWriter_AddCaptionTrack_cold_2(&time);
    goto LABEL_35;
  }

  v10 = DerivedStorage;
  v11 = remakerFamily_createChannel(a1, 0, a2, &v46);
  if (v11)
  {
    goto LABEL_32;
  }

  v12 = *(v10 + 23);
  v13 = v46;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    value_low = 4294954514;
LABEL_13:
    remakerFamily_discardChannel(a1, v46);
    return value_low;
  }

  v11 = v14(v12, a2, 0, v13 + 300);
  if (v11 || (v11 = remakerFamily_setFormatWriterTrackProperties(a1, *(v46 + 300), a3, 0), v11) || (v11 = remakerFamily_setFormatWriterProperties(a1, a3), v11))
  {
LABEL_32:
    value_low = v11;
    goto LABEL_13;
  }

  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  v16 = MEMORY[0x1E695E480];
  if (CMTimeIfPresent && (v45.flags & 0x1D) == 1)
  {
    v17 = *MEMORY[0x1E695E480];
    time = v45;
    v18 = CMTimeCopyAsDictionary(&time, v17);
    v19 = *(v10 + 23);
    v20 = *(v46 + 300);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v21)
    {
      v21(v19, v20, @"CaptionTimeCodeFrameDuration", v18);
    }
  }

  else
  {
    v18 = 0;
  }

  if (FigCFDictionaryGetBooleanIfPresent())
  {
    v23 = *(v10 + 23);
    v24 = *(v46 + 300);
    v25 = (v44 ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v26)
    {
      v26(v23, v24, @"UseDropFrameTimeCode", *v25);
    }
  }

  v27 = CFGetAllocator(a1);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v29 = CMBufferQueueCreate(v27, 0, CallbacksForUnsortedSampleBuffers, (*(v46 + 160) + 32));
  v30 = v46;
  if (v29 || (v31 = *(v46 + 160), remakerFamily_getLowWaterLevel(*(v10 + 32), &time), *(v31 + 40) = time, v32 = *(v46 + 160), remakerFamily_getHighWaterLevel(*(v10 + 32), &time), *(v32 + 64) = time, v33 = *(v46 + 160), v34 = *(v33 + 32), time = *(v33 + 40), v29 = CMBufferQueueInstallTrigger(v34, assetWriterTrack_reachedLowWater, v33, 2, &time, (v33 + 104)), v30 = v46, v29))
  {
    value_low = v29;
  }

  else
  {
    v35 = *v16;
    v36 = *(*(v46 + 160) + 32);
    v37 = *(v10 + 23);
    v38 = *(v46 + 300);
    CMTimeMake(&time, 2, 1);
    CMTimeMake(&v42, 1, 1);
    if (*(v10 + 32))
    {
      v39 = 0;
    }

    else
    {
      v39 = 31;
    }

    v40 = FigMediaProcessorCreateForCaptionConversionWithFormatWriter(v35, a2, a3, v36, v37, v38, &time.value, 0, &v42, 0, v39, (v46 + 288));
    if (v40)
    {
      value_low = v40;
      v30 = v46;
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      value_low = FigNotificationCenterAddWeakListeners();
      v30 = v46;
      if (!value_low)
      {
        *a5 = *(v46 + 300);
        remakerFamily_commitChannel(a1, v30);
        v30 = 0;
        v46 = 0;
      }
    }
  }

  remakerFamily_discardChannel(a1, v30);
  if (v18)
  {
    CFRelease(v18);
  }

  return value_low;
}

uint64_t assetWriter_Flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 20))
  {
    assetWriter_Flush_cold_1();
    return v5;
  }

  if (*DerivedStorage >= 5u)
  {
    assetWriter_Flush_cold_4(&v5);
    return v5;
  }

  if (*DerivedStorage <= 2u)
  {
    assetWriter_Flush_cold_3(&v5);
    return v5;
  }

  if (*(DerivedStorage + 304) != 1)
  {
    assetWriter_Flush_cold_2(&v5);
    return v5;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v2 = *(DerivedStorage + 184);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v2, 0);
}

uint64_t assetWriter_AddVideoTrackWithCompressionAndMediaType(const void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFDictionary *a7, const void *a8, uint64_t a9, __int128 *a10, const __CFDictionary *a11, _DWORD *a12)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v50 = 0;
  v51 = 0;
  if (*DerivedStorage != 1)
  {
    assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_1(&time);
LABEL_57:
    value_low = LODWORD(time.value);
    goto LABEL_18;
  }

  if (!a6)
  {
    assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_8(&time);
    goto LABEL_57;
  }

  if (!a12)
  {
    assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_7(&time);
    goto LABEL_57;
  }

  v19 = DerivedStorage;
  v20 = remakerFamily_createChannel(a1, 0, a5, &v51);
  if (v20)
  {
    goto LABEL_20;
  }

  v47 = a2;
  v21 = *(v19 + 23);
  v22 = v51;
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v23)
  {
    value_low = 4294954514;
    goto LABEL_18;
  }

  v20 = v23(v21, a5, 0, v22 + 300);
  if (v20)
  {
    goto LABEL_20;
  }

  v20 = remakerFamily_setFormatWriterTrackProperties(a1, *(v51 + 300), a6, 0);
  if (v20)
  {
    goto LABEL_20;
  }

  v20 = remakerFamily_setFormatWriterProperties(a1, a6);
  if (v20)
  {
    goto LABEL_20;
  }

  v24 = CFGetAllocator(a1);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v20 = CMBufferQueueCreate(v24, 0, CallbacksForUnsortedSampleBuffers, (*(v51 + 160) + 32));
  if (v20)
  {
    goto LABEL_20;
  }

  v26 = *(v51 + 160);
  remakerFamily_getLowWaterLevel(*(v19 + 32), &time);
  *(v26 + 40) = time;
  v27 = *(v51 + 160);
  remakerFamily_getHighWaterLevel(*(v19 + 32), &time);
  *(v27 + 64) = time;
  *(*(v51 + 160) + 88) = remakerFamily_getLowWaterTotalSize(*(v19 + 32));
  HighWaterTotalSize = remakerFamily_getHighWaterTotalSize(*(v19 + 32));
  v29 = *(v51 + 160);
  *(v29 + 96) = HighWaterTotalSize;
  v30 = *(v29 + 32);
  if (*(v29 + 88))
  {
    time = *(v29 + 40);
    v20 = FigBufferQueueInstallTriggerWithTimeAndIntegerThresholds();
    if (!v20)
    {
      goto LABEL_12;
    }

LABEL_20:
    value_low = v20;
    goto LABEL_18;
  }

  time = *(v29 + 40);
  v20 = CMBufferQueueInstallTrigger(v30, assetWriterTrack_reachedLowWater, v29, 2, &time, (v29 + 104));
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_12:
  *(*(v51 + 160) + 120) = 1;
  if (a6 <= 1634743415)
  {
    if (a6 == 1634742376 || a6 == 1634742888)
    {
      goto LABEL_27;
    }

    v31 = 13416;
  }

  else
  {
    if ((a6 - 1634755432) <= 0xB && ((1 << (a6 - 104)) & 0x8C1) != 0 || (a6 - 1634759272) <= 6 && ((1 << (a6 - 104)) & 0x51) != 0)
    {
      goto LABEL_27;
    }

    v31 = 13432;
  }

  if (a6 == (v31 | 0x61700000))
  {
LABEL_27:
    if (hasProResHWEncoder_pred != -1)
    {
      assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_2();
    }

    if (hasProResHWEncoder_hasProResHW == 1)
    {
      if (doesProResHWEncoderSupportInterlaced_pred != -1)
      {
        assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_3();
      }

      if ((doesProResHWEncoderSupportInterlaced_proResHWSupportsInterlaced & 1) == 0)
      {
        FigCFDictionaryGetInt32IfPresent();
      }
    }
  }

  RemakerVideoEncoderSpecification = remakerFamily_createRemakerVideoEncoderSpecification(a1, a7, &v50);
  if (RemakerVideoEncoderSpecification)
  {
    goto LABEL_58;
  }

  RemakerVideoEncoderSpecification = remakerFamily_setupMultiPassTrackIfNecessary(a1, v51, a9);
  if (RemakerVideoEncoderSpecification)
  {
    goto LABEL_58;
  }

  v34 = v50;
  v35 = v51;
  v36 = *(v51 + 160);
  *(v36 + 228) = v47;
  *(v36 + 232) = a3;
  *(v36 + 236) = a6;
  if (v34)
  {
    v34 = CFRetain(v34);
    v35 = v51;
    v36 = *(v51 + 160);
  }

  *(v36 + 240) = v34;
  v37 = *a10;
  *(v36 + 264) = *(a10 + 2);
  *(v36 + 248) = v37;
  v38 = a8;
  if (a8)
  {
    v38 = CFRetain(a8);
    v35 = v51;
  }

  v39 = *(v35 + 160);
  *(v39 + 272) = v38;
  if (a11)
  {
    RemakerVideoEncoderSpecification = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v39, a11);
    if (RemakerVideoEncoderSpecification)
    {
      goto LABEL_58;
    }
  }

  else
  {
    RemakerVideoEncoderSpecification = VTSelectAndCreateVideoEncoderInstance();
    if (RemakerVideoEncoderSpecification)
    {
LABEL_58:
      value_low = RemakerVideoEncoderSpecification;
      goto LABEL_18;
    }
  }

  v40 = v51;
  *a12 = *(v51 + 300);
  if ((*(a10 + 3) & 0x1D) == 1)
  {
    v41 = *(a10 + 2);
    if (v41 <= 600)
    {
      v41 = 600;
    }

    LODWORD(time.value) = v41;
    v42 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &time);
    v43 = *(v19 + 23);
    v44 = *(v51 + 300);
    v45 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v45)
    {
      v45(v43, v44, @"MediaTimeScale", v42);
    }

    remakerFamily_setFormatWriterMovieTimeScaleIfAppropriate(a1, v42, a5);
    CFRelease(v42);
    v40 = v51;
  }

  remakerFamily_commitChannel(a1, v40);
  value_low = 0;
  v51 = 0;
LABEL_18:
  remakerFamily_discardChannel(a1, v51);
  if (v50)
  {
    CFRelease(v50);
  }

  return value_low;
}

void assetWriterTrack_reachedLowWater(uint64_t a1)
{
  if (a1 && *(a1 + 16) && (v2 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v3 = v2;
    if (*(a1 + 16) && (v4 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
    {
      v5 = v4;
      v6 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v6)
      {
        assetWriterTrack_reachedLowWater_cold_1(v6, v5, @"AssetWriter_TrackQueueNowBelowLowWaterLevel");
      }

      else
      {
        CFRelease(v5);
      }
    }

    else
    {
      assetWriterTrack_reachedLowWater_cold_2();
    }

    CFRelease(v3);
  }

  else
  {
    assetWriterTrack_reachedLowWater_cold_3();
  }
}

uint64_t assetWriter_finishBuildingAudioTrackWithSourceFormatDescription(uint64_t a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2 || !*(a2 + 16) || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    if (assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_3(&v16))
    {
      return 0;
    }

    v7 = 0;
    v8 = v16;
    v13 = 1;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  if (a3 && *(a2 + 120))
  {
    v9 = CFGetTypeID(a3);
    if (v9 == CMFormatDescriptionGetTypeID())
    {
      *(a2 + 120) = 0;
      if (CMFormatDescriptionGetMediaSubType(a3) == 1819304813)
      {
        v10 = remakerFamily_buildMediaProcessorForAudioCompressionFromLPCMWithFormatWriter(a1, v7, a3, a2 + 128, *(a2 + 168), *(a2 + 176), *(a2 + 184), *(a2 + 32));
        if (!v10)
        {
          v11 = v7[36];
          if (v11)
          {
            FigMediaProcessorGo(v11);
          }

          v8 = 0;
          goto LABEL_12;
        }

        v8 = v10;
        goto LABEL_24;
      }

      assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_2(&v15);
      v8 = v15;
    }

    else
    {
      assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_1(&v14);
      v8 = v14;
    }

    if (v8)
    {
LABEL_24:
      v13 = 0;
LABEL_17:
      remakerfamily_setFailureStatusIfError(a1, v8);
      remakerFamily_invalidateAllMediaProcessors(a1);
      if (v13)
      {
        return v8;
      }
    }
  }

LABEL_12:
  CFRelease(v7);
  return v8;
}

uint64_t assetWriter_getChannelByWriterTrackID(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v6);
    if (ValueAtIndex[75] == a2)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return *(ValueAtIndex + 20);
}

uint64_t assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(const void *a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  timeRangeArray = 0;
  if (!a2 || (v7 = DerivedStorage, !*(a2 + 16)) || (v8 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    if (assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes_cold_2(&v27))
    {
      return 0;
    }

    v9 = 0;
    value_low = LODWORD(v27.value);
    v25 = 1;
    goto LABEL_33;
  }

  v9 = v8;
  v10 = *(v8 + 32);
  if (v10 == 1635088502 || v10 == 1986618469)
  {
    if (!*(a2 + 120))
    {
LABEL_26:
      value_low = 0;
      goto LABEL_27;
    }

    *(a2 + 120) = 0;
    v12 = *(a2 + 228);
    v13 = *(a2 + 232);
    v14 = *(a2 + 236);
    v15 = *(a2 + 240);
    v16 = *(a2 + 32);
    *&v27.value = *(a2 + 248);
    v17 = *(a2 + 272);
    v27.epoch = *(a2 + 264);
    remakerFamily_setupCompressionMediaProcessorAndFileOutput(a1, v12, v13, v14, &v27, v15, a3, v8, v16, 0, v17);
    if (!Pass)
    {
      v19 = *(a2 + 240);
      if (v19)
      {
        CFRelease(v19);
        *(a2 + 240) = 0;
      }

      if (!*(v9 + 356) || !*(a2 + 220))
      {
        goto LABEL_21;
      }

      v20 = *(v9 + 400);
      if (!v20 || CFArrayGetCount(v20) < 1 || (Pass = remakerFamily_createTimeRangesCArray(*(v9 + 400), &v29, &timeRangeArray), !Pass) && (Pass = VTFrameSiloSetTimeRangesForNextPass(*(v9 + 360), v29, timeRangeArray), !Pass))
      {
        VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(v9 + 288));
        Pass = VTCompressionSessionBeginPass(VTCompressionSession, *(a2 + 224), 0);
        if (!Pass)
        {
          *(a2 + 220) = 0;
          *(a2 + 224) = 0;
LABEL_21:
          v22 = *(a2 + 272);
          if (v22)
          {
            CFRelease(v22);
            *(a2 + 272) = 0;
          }

          if (*v7 == 3)
          {
            v23 = *(v9 + 288);
            if (v23)
            {
              FigMediaProcessorGo(v23);
            }
          }

          goto LABEL_26;
        }
      }
    }

    value_low = Pass;
    v25 = 0;
LABEL_33:
    remakerfamily_setFailureStatusIfError(a1, value_low);
    remakerFamily_invalidateAllMediaProcessors(a1);
    free(timeRangeArray);
    if (v25)
    {
      return value_low;
    }

    goto LABEL_28;
  }

  assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes_cold_1(&v27);
  value_low = LODWORD(v27.value);
LABEL_27:
  free(timeRangeArray);
LABEL_28:
  CFRelease(v9);
  return value_low;
}

BOOL assetWriter_GetInputQueueLengthBeforeFormatWriterForTrackIndex@<W0>(const void *a1@<X0>, CFIndex a2@<X1>, uint64_t a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), a2);
  result = assetWriter_IsTrackNativeTrack(a1, ValueAtIndex[20]);
  if (result)
  {
    v9 = ValueAtIndex[20];
    *a3 = *(v9 + 64);
    v10 = *(v9 + 80);
  }

  else
  {
    v11 = MEMORY[0x1E6960C70];
    *a3 = *MEMORY[0x1E6960C70];
    v10 = *(v11 + 16);
  }

  *(a3 + 16) = v10;
  return result;
}

BOOL assetWriter_IsTrackNativeTrack(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2 || (v5 = DerivedStorage, !*(a2 + 16)) || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_IsTrackNativeTrack_cold_1();
    return 0;
  }

  v7 = v6;
  v8 = *(v5 + 184);
  v9 = *(v6 + 300);
  v10 = CFGetAllocator(a1);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v11)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v12 = v11(v8, v9, @"SourceSampleBufferQueue", v10, &cf);
  v13 = cf;
  if (v12)
  {
    v14 = 0;
    if (!cf)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v14 = FigCFEqual() != 0;
  v13 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v13);
  }

LABEL_9:
  CFRelease(v7);
  return v14;
}

uint64_t assetWriter_copyPixelBufferAttributesForHintingEncoder(__CVBuffer *a1, CFDictionaryRef *a2)
{
  valuePtr = CVPixelBufferGetPixelFormatType(a1);
  v3 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (cf)
  {
    v4 = CFDictionaryCreate(v3, MEMORY[0x1E6966130], &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v4)
    {
      v5 = 0;
      *a2 = v4;
      goto LABEL_4;
    }

    assetWriter_copyPixelBufferAttributesForHintingEncoder_cold_1(&v9);
  }

  else
  {
    assetWriter_copyPixelBufferAttributesForHintingEncoder_cold_2(&v9);
  }

  v5 = v9;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void __hasProResHWEncoder_block_invoke()
{
  listOfVideoEncodersOut = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984228], *MEMORY[0x1E695E4D0]);
  if (VTCopyVideoEncoderList(Mutable, &listOfVideoEncodersOut))
  {
    v1 = 1;
  }

  else
  {
    v1 = listOfVideoEncodersOut == 0;
  }

  if (!v1)
  {
    if (CFArrayGetCount(listOfVideoEncodersOut) >= 1)
    {
      v2 = 0;
      do
      {
        CFArrayGetValueAtIndex(listOfVideoEncodersOut, v2);
        FigCFDictionaryGetBooleanIfPresent();
        ++v2;
      }

      while (v2 < CFArrayGetCount(listOfVideoEncodersOut));
    }

    CFRelease(listOfVideoEncodersOut);
  }
}

void __doesProResHWEncoderSupportInterlaced_block_invoke()
{
  session = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    v2 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6984270], *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(v1, *MEMORY[0x1E6984288], v2);
    if (!VTCompressionSessionCreate(0, 1920, 1080, 0x6170636Eu, v1, 0, 0, 0, 0, &session))
    {
      SInt32 = FigCFNumberCreateSInt32();
      if (SInt32)
      {
        v4 = SInt32;
        if (!VTSessionSetProperty(session, *MEMORY[0x1E6983640], SInt32))
        {
          doesProResHWEncoderSupportInterlaced_proResHWSupportsInterlaced = 1;
        }

        CFRelease(v4);
      }

      CFRelease(session);
    }

    CFRelease(v1);
  }
}

CMTime *OUTLINED_FUNCTION_8_5@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, CMTime *time2, uint64_t a20, CMTime *time1, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, __int128 time2a, uint64_t time2_16, uint64_t a28, uint64_t time1a)
{
  v34 = *(v31 + 48);
  *v31 = v30;
  *(v31 + 8) = a1;
  *(v31 + 12) = v29;
  *(v31 + 16) = v34;
  time2a = a23;
  time2_16 = a24;

  return CMTimeMaximum((v32 - 224), &time1a, &time2a);
}

uint64_t RegisterFigManifoldBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigManifoldGetCFTypeID()
{
  MEMORY[0x19A8D3660](&FigManifoldGetClassID_sRegisterFigManifoldBaseTypeOnce, RegisterFigManifoldBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigManifoldRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigManifoldRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CMTime *OUTLINED_FUNCTION_0_18@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5)
{
  a4 = a1;

  return CMTimeConvertScale(&a5, &a2, 90000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

uint64_t RegisterFigCaptionGroupConverterFromSampleBufferBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCaptionGroupConverterFromSampleBufferGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCaptionGroupConverterFromSampleBufferGetClassID_sRegisterFigCaptionGroupConverterFromSampleBufferBaseTypeOnce, RegisterFigCaptionGroupConverterFromSampleBufferBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FinalizeClientRequestsOnList(uint64_t a1, uint64_t *a2, int a3)
{
  while (1)
  {
    FigSimpleMutexLock();
    v6 = *a2;
    if (!*a2)
    {
      break;
    }

    while (*(v6 + 80) != a1)
    {
      v6 = *(v6 + 88);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v7 = FigSimpleMutexUnlock();
    v10 = 0;
    v9 = 0;
    if (a3)
    {
      v7 = FigAIOBlockUntilReady(v7, v6, 1);
    }

    FigAIOTryToComplete(v7, v6, &v10, &v9);
  }

LABEL_8:

  return FigSimpleMutexUnlock();
}

uint64_t AddPendingRequest(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = qword_1EAF18980;
  *(a1 + 88) = qword_1EAF18980;
  if (v2)
  {
    *(v2 + 96) = a1 + 88;
  }

  qword_1EAF18980 = a1;
  *(a1 + 96) = &qword_1EAF18980;
  FigSemaphoreSignal();

  return FigSimpleMutexUnlock();
}

uint64_t FigAIOTryToComplete(int a1, aiocb *aiocbp, int *a3, ssize_t *a4)
{
  *a3 = -1;
  *a4 = 0;
  if (aio_error(aiocbp) == 36)
  {
    return 0;
  }

  v8 = &qword_1EAF18988;
  FigSimpleMutexLock();
  do
  {
    v9 = *v8;
    v8 = (*v8 + 88);
    if (v9)
    {
      v10 = v9 == aiocbp;
    }

    else
    {
      v10 = 1;
    }
  }

  while (!v10);
  if (v9)
  {
    aio_offset = aiocbp[1].aio_offset;
    aio_buf = aiocbp[1].aio_buf;
    if (aio_offset)
    {
      *(aio_offset + 96) = aio_buf;
    }

    *aio_buf = aio_offset;
    v13 = 1;
  }

  else
  {
    v14 = &qword_1EAF18980;
    do
    {
      v15 = *v14;
      v14 = (*v14 + 88);
      if (v15)
      {
        v16 = v15 == aiocbp;
      }

      else
      {
        v16 = 1;
      }
    }

    while (!v16);
    if (!v15)
    {
      FigSimpleMutexUnlock();
      return 0;
    }

    v13 = 0;
    LOBYTE(aiocbp[1].aio_nbytes) = 1;
  }

  FigSimpleMutexUnlock();
  *a4 = 0;
  v17 = aio_error(aiocbp);
  if (v17 == 36)
  {
    *a3 = 36;
  }

  else
  {
    v18 = v17;
    v19 = aio_return(aiocbp);
    *a4 = v19;
    if (v18 == -1 || v19 == -1)
    {
      v18 = *__error();
    }

    *a3 = v18;
    if (v18 == 22)
    {
      if (v9)
      {
        v13 = 1;
      }

      else
      {
        v20 = &qword_1EAF18980;
        FigSimpleMutexLock();
        do
        {
          v21 = *v20;
          v20 = (*v20 + 88);
          if (v21)
          {
            v22 = v21 == aiocbp;
          }

          else
          {
            v22 = 1;
          }
        }

        while (!v22);
        if (!v21)
        {
          v23 = &qword_1EAF18988;
          do
          {
            v24 = *v23;
            v23 = (*v23 + 88);
            if (v24)
            {
              v25 = v24 == aiocbp;
            }

            else
            {
              v25 = 1;
            }
          }

          while (!v25);
          if (!v24)
          {
            goto LABEL_48;
          }
        }

        if (LOBYTE(aiocbp[1].aio_nbytes))
        {
          v26 = aiocbp[1].aio_offset;
          v27 = aiocbp[1].aio_buf;
          if (v26)
          {
            *(v26 + 96) = v27;
          }

          *v27 = v26;
          v13 = 1;
        }

        else
        {
LABEL_48:
          v13 = 0;
        }

        FigSimpleMutexUnlock();
      }

      v28 = FigAtomicIncrement32();
      if (v28 == 1)
      {
        FigGetUpTimeNanoseconds();
      }

      else if (v28 >= 20)
      {
        FigGetUpTimeNanoseconds();
        FigAtomicCompareAndSwap32();
      }
    }
  }

  if (v13)
  {
    free(aiocbp);
  }

  return 1;
}

uint64_t FigAIOBlockUntilReady(int a1, aiocb *aiocbp, int a3)
{
  aiocblist[1] = *MEMORY[0x1E69E9840];
  if (aio_error(aiocbp) != 36)
  {
    return 0;
  }

  aiocblist[0] = aiocbp;
  v7 = xmmword_196E73000;
  if (a3)
  {
    aio_cancel(aiocbp->aio_fildes, aiocbp);
  }

  for (i = 0; ; i = aio_suspend(aiocblist, 1, &v7))
  {
    if (i != 4)
    {
      result = aio_error(aiocbp);
      if (result != 36)
      {
        break;
      }
    }
  }

  return result;
}

void FigAIORequestThread()
{
  v0 = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
  v1 = 8;
  while (1)
  {
    FigSimpleMutexLock();
    aio_offset = qword_1EAF18980;
    if (!qword_1EAF18980)
    {
      FigSimpleMutexUnlock();
      goto LABEL_33;
    }

    v3 = 0;
    v4 = 0;
    while (1)
    {
      while (1)
      {
        v5 = aio_offset;
        v6 = aio_error(aio_offset);
        p_aio_offset = &aio_offset[1].aio_offset;
        aio_offset = aio_offset[1].aio_offset;
        if (v6 == 36)
        {
          break;
        }

        v9 = *(v5 + 96);
        if (aio_offset)
        {
          aio_offset[1].aio_buf = v9;
        }

        *v9 = aio_offset;
        if (*(v5 + 104))
        {
          free(v5);
          if (!aio_offset)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v10 = qword_1EAF18988;
          *p_aio_offset = qword_1EAF18988;
          if (v10)
          {
            *(v10 + 96) = p_aio_offset;
          }

          qword_1EAF18988 = v5;
          *(v5 + 96) = &qword_1EAF18988;
          *(*(v5 + 80) + 24) = 1;
          ++v4;
          if (!aio_offset)
          {
            goto LABEL_21;
          }
        }
      }

      if (v3 == v1)
      {
        break;
      }

LABEL_8:
      v0[v3++] = v5;
      if (!aio_offset)
      {
        goto LABEL_21;
      }
    }

    v1 = v3 + 4;
    v8 = malloc_type_realloc(v0, 8 * (v3 + 4), 0x2004093837F09uLL);
    if (v8)
    {
      break;
    }

    v1 = v3;
LABEL_21:
    FigSimpleMutexUnlock();
    if (v4 >= 1)
    {
      FigSimpleMutexLock();
      do
      {
        v11 = qword_1EAF189A0;
        if (!qword_1EAF189A0)
        {
          break;
        }

        while (1)
        {
          if (*(v11 + 24))
          {
            *(v11 + 24) = 0;
            if (*v11)
            {
              break;
            }
          }

          v11 = *(v11 + 16);
          if (!v11)
          {
            goto LABEL_30;
          }
        }

        (*v11)(v11, *(v11 + 8));
      }

      while (v4-- > 0);
LABEL_30:
      FigSimpleMutexUnlock();
    }

    if (v3)
    {
      timeoutp = xmmword_196E73000;
      aio_suspend(v0, v3, &timeoutp);
      continue;
    }

LABEL_33:
    FigSemaphoreWaitRelative();
  }

  v0 = v8;
  goto LABEL_8;
}

void *OUTLINED_FUNCTION_0_19()
{

  return malloc_type_calloc(1uLL, 0x70uLL, 0x10A20409309F963uLL);
}

uint64_t OUTLINED_FUNCTION_1_17(int a1)
{
  *v1 = a1;
  *(v1 + 8) = v4;
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t FPSupport_CheckPlayerPerformanceTrace()
{
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

void FPSupport_TracePlayerPerformanceDictionary(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = FPSupport_CopyDictionaryDescriptionAsCFString(a2);
  if (dword_1EAF16BB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t FigByteFlumeGetTypeID()
{
  MEMORY[0x19A8D3660](&FigByteFlumeGetClassID_sRegisterFigByteFlumeBaseTypeOnce, RegisterFigByteFlumeBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTTMLFeaturesCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4)
{
  if (a4)
  {
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

    else
    {
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 144) = Mutable;
      if (Mutable)
      {
        *a3 = 0;
        a3[1] = 0;
        FigTTMLParseNode(a2, figTTMLFeaturesConsumeChildNode, a3);
        v12 = v11;
        if (!v11)
        {
          *a4 = 0;
        }
      }

      else
      {
        FigTTMLFeaturesCreate_cold_1(&v14);
        return v14;
      }
    }
  }

  else
  {
    FigTTMLFeaturesCreate_cold_2(&v14);
    return v14;
  }

  return v12;
}

void figTTMLFeatures_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLFeatures_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"features: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLFeatures_CopyChildNodeArray(const void *a1, __CFArray **a2)
{
  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = *(DerivedStorage + 144);
    if (v6)
    {
      v7.length = CFArrayGetCount(*(DerivedStorage + 144));
    }

    else
    {
      v7.length = 0;
    }

    v7.location = 0;
    CFArrayAppendArray(Mutable, v6, v7);
    v8 = 0;
    *a2 = Mutable;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    v8 = v10;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v8;
}

uint64_t figTTMLFeatures_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 16;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLFeatures_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t remoteXPCAIG_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 9) = 1;
  return result;
}

uint64_t remoteXPCAIG_NotificationFilter(int a1, CFTypeRef cf1, void *a3, uint64_t a4, CFDictionaryRef *a5)
{
  v24[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (CFEqual(cf1, @"AIGDidGenerateCGImage"))
  {
    v9 = &v20;
    memset(&v17[1], 0, sizeof(CMTime));
    v10 = &v23;
    v23 = 0;
    v24[0] = 0;
    v20 = 0;
    v21 = 0;
    if (remoteXPCAIG_CopyCGImageFromMessage(a3, &cf))
    {
      v7 = 1;
    }

    else
    {
      keys = @"CGImage";
      values = cf;
      if (FigXPCMessageGetCMTime())
      {
        v11 = 0;
        v12 = 1;
      }

      else
      {
        v9 = &v21;
        v10 = v24;
        v13 = *MEMORY[0x1E695E480];
        v17[0] = v17[1];
        v11 = CMTimeCopyAsDictionary(v17, v13);
        v23 = @"FigTime";
        v20 = v11;
        v12 = 2;
      }

      value = xpc_dictionary_get_value(a3, "RequestID");
      if (value)
      {
        v17[0].value = xpc_int64_get_value(value);
        v15 = *MEMORY[0x1E695E480];
        v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v17);
        *v10 = @"RequestID";
        *v9 = v16;
        *a5 = CFDictionaryCreate(v15, &keys, &values, v12 + 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v16)
        {
          CFRelease(v16);
        }
      }

      else
      {
        *a5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v7 = 4;
    }
  }

  else
  {
    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

__CFString *remoteXPCAIG_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = "";
  if (*(DerivedStorage + 8))
  {
    v7 = " (invalidated)";
  }

  else
  {
    v7 = "";
  }

  if (*(DerivedStorage + 9))
  {
    v6 = "SERVER DIED";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigAssetImageGeneratorRemote(XPC) %p retainCount: %ld%s ObjectID: %016llx%s>", a1, v5, v7, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteXPCAIG_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteXPCAIG_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      remoteXPCAIG_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

uint64_t crabsUpdateLength(uint64_t a1)
{
  number = 0;
  FigByteFlumeGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = v4(v3, @"FBF_EntireLength", *MEMORY[0x1E695E480], &number);
  v6 = number;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = number == 0;
  }

  if (v7)
  {
    v8 = 0;
    if (number)
    {
LABEL_11:
      CFRelease(v6);
    }
  }

  else
  {
    v10 = 0;
    CFNumberGetValue(number, kCFNumberSInt64Type, &v10);
    v6 = number;
    v8 = v10 & ~(v10 >> 63);
    v5 = (v10 >> 63) & 0xFFFFCE11;
    if (number)
    {
      goto LABEL_11;
    }
  }

  if (!v5)
  {
    *(a1 + 56) = v8;
  }

  return v5;
}

uint64_t crabsDiskBackingIsBusy(uint64_t a1, int a2)
{
  result = *(a1 + 24);
  if (result | a2)
  {
    cf = 0;
    *(a1 + 24) = 0;
    FigDiskCacheProviderGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = v6(v5, @"CacheIsBusy", *MEMORY[0x1E695E480], &cf);
      v8 = cf;
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = cf == *MEMORY[0x1E695E4D0];
      }

      if (v9)
      {
        *(a1 + 24) = 1;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    return *(a1 + 24);
  }

  return result;
}

uint64_t crabsInitialize(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  cf[7] = v1;
  cf[8] = v2;
  v5 = *(a1 + 56);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = 0x10000;
  if (v5 < 6291456)
  {
    v6 = 0x4000;
  }

  *(a1 + 96) = v6;
  v7 = (v5 + v6 - 1) / v6;
  v8 = malloc_type_calloc(v7, 8uLL, 0x2004093837F09uLL);
  *(a1 + 80) = v8;
  if (v8)
  {
    *(a1 + 88) = v7;
    if (*(a1 + 168) || (v9 = FigReadWriteLockCreate(), (*(a1 + 168) = v9) != 0))
    {
      v10 = malloc_type_calloc(1uLL, *(a1 + 96), 0x7F6EECD7uLL);
      *(a1 + 152) = v10;
      if (v10)
      {
        *(a1 + 160) = -1;
        v11 = *(a1 + 88);
        *(a1 + 232) = v11;
        *(a1 + 360) = v11;
        if (*(a1 + 184) >= 1)
        {
          v12 = 0;
          v13 = *(a1 + 192);
          do
          {
            *(v13 + 8 * v12++) = v11;
          }

          while (v12 < *(a1 + 184));
        }

        *&v14 = -1;
        *(&v14 + 1) = -1;
        *(a1 + 424) = v14;
        *(a1 + 440) = v14;
        *(a1 + 472) = (*(a1 + 96) + 0x3FFFFFLL) / *(a1 + 96);
        *(a1 + 480) = 4;
        if (!*(a1 + 8))
        {
          return 0;
        }

        v46 = 0;
        cf[0] = 0;
        v15 = *MEMORY[0x1E695E480];
        SInt64 = FigCFNumberCreateSInt64();
        FigDiskCacheProviderGetFigBaseObject();
        v18 = v17;
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v19)
        {
          v19(v18, @"CacheSize", SInt64);
        }

        v20 = FigCFNumberCreateSInt64();
        if (v20)
        {
          v21 = v20;
          FigDiskCacheProviderGetFigBaseObject();
          v23 = v22;
          v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v24)
          {
            v24(v23, @"CacheBlockSize", v21);
          }

          CFRelease(v21);
        }

        valuePtr = 16;
        v25 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
        if (v25)
        {
          v26 = v25;
          FigDiskCacheProviderGetFigBaseObject();
          v28 = v27;
          v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v29)
          {
            v29(v28, @"CacheMapEntrySize", v26);
          }

          CFRelease(v26);
        }

        if ((*(a1 + 504) & 4) == 0)
        {
          FigDiskCacheProviderGetFigBaseObject();
          v31 = v30;
          v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v32)
          {
            if (!v32(v31, @"CacheIdentifier", v15, cf))
            {
              v33 = *(a1 + 32);
              v34 = cf[0];
              v35 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v35 && v35(v33, v34))
              {
                FigDiskCacheProviderGetFigBaseObject();
                if (!CMBaseObjectCopyProperty(v36, @"CacheMap", v15, &v46))
                {
                  BackingFile = FigDiskCacheProviderGetBackingFile(*(a1 + 8));
                  if (BackingFile)
                  {
                    crabsRestoreCache(a1, v46, BackingFile, *(a1 + 56));
                    if (v38)
                    {
                      FigDiskCacheProviderGetFigBaseObject();
                      CMBaseObjectSetProperty(v39, @"CacheMap", 0);
                    }
                  }
                }

LABEL_38:
                if (cf[0])
                {
                  CFRelease(cf[0]);
                }

                if (v46)
                {
                  CFRelease(v46);
                }

                if (SInt64)
                {
                  CFRelease(SInt64);
                }

                return 0;
              }

              FigDiskCacheProviderGetFigBaseObject();
              CMBaseObjectSetProperty(v40, @"CacheMap", 0);
            }
          }
        }

        v42 = (a1 + 144);
        v41 = *(a1 + 144);
        if (v41)
        {
          CFRelease(v41);
          *v42 = 0;
        }

        v43 = *(a1 + 32);
        v44 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v44)
        {
          v44(v43, v42);
        }

        goto LABEL_38;
      }

      crabsInitialize_cold_1(cf);
    }

    else
    {
      crabsInitialize_cold_2(cf);
    }
  }

  else
  {
    crabsInitialize_cold_3(cf);
  }

  return LODWORD(cf[0]);
}

uint64_t FigCRABSPrintWorkingSet(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  printf("FigCRABSPrintWorkingSet stream [%p]", DerivedStorage);
  v2 = DerivedStorage[39];
  if (!v2)
  {
    return printf("<%d>\n", DerivedStorage[28]);
  }

  v3 = 1;
  do
  {
    while (*(v2 + 80) && DerivedStorage[28] == *v2)
    {
      printf("[%d] ", *v2);
      v3 = 0;
      v2 = *(v2 + 32);
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    printf("%d ", *v2);
    v2 = *(v2 + 32);
  }

  while (v2);
  if (v3)
  {
    return printf("<%d>\n", DerivedStorage[28]);
  }

LABEL_11:

  return putchar(10);
}

void gdbShowCRABSStats()
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  keys[0] = CFRetain(@"cacheMemAllotted");
  v0 = *MEMORY[0x1E695E480];
  values[0] = FigCFNumberCreateSInt64();
  keys[1] = CFRetain(@"diskCacheAllotted");
  values[1] = FigCFNumberCreateSInt64();
  v1 = CFDictionaryCreate(v0, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 1; i != -1; --i)
  {
    CFRelease(keys[i]);
    CFRelease(values[i]);
  }

  puts(" Statistics for FigByteStream_CRABS:");
  CFShow(v1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t *gdbDumpCRABSWorkingSet(uint64_t *result)
{
  for (i = *result; i; i = *(i + 32))
  {
    result = printf(" Mem block %d has MemIsland <%p>\n", *i, *(i + 80));
  }

  return result;
}

__CFString *FigCRABSCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  FigRetainProxyLockMutex();
  if (DerivedStorage[7] == -1 || (v3 = DerivedStorage[10]) == 0)
  {
    CFStringAppendFormat(Mutable, 0, @"FigByteStream_CRABS: Uninitialized");
  }

  else
  {
    v4 = DerivedStorage[11];
    if (v4 < 1)
    {
      v10 = 0;
      v9 = 0;
      v8 = 0;
      v7 = 0;
      v6 = 0;
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *v3;
        if (*v3)
        {
          v12 = *(v11 + 10);
          if (v12)
          {
            v6 = (v6 + 1);
            if (*(v12 + 24) <= 0)
            {
              v9 = v9;
            }

            else
            {
              v9 = (v9 + 1);
            }
          }

          v13 = *(v11 + 4);
          if ((v13 & 0x200) != 0)
          {
            v14 = (v13 >> 8) & 1;
          }

          else
          {
            v14 = *(v11 + 11) != 0;
          }

          v10 = (v10 + 1);
          v5 = (v14 + v5);
          if (DerivedStorage[28] <= *v11)
          {
            v7 = (v7 + 1);
          }

          else
          {
            v8 = (v8 + 1);
          }
        }

        ++v3;
        --v4;
      }

      while (v4);
    }

    CFStringAppendFormat(Mutable, 0, @"FigByteStream_CRABS: \n\t\t# active cache blocks <%d>\n\t\t# in-memory cache blocks <%d>\n\t\t# referenced cache blocks <%d>\n\t\t# on disk <%d>\n\t\t# in state Backfill <%d>\n\t\t# in state Follows Hints <%d>", v10, v6, v9, v5, v8, v7);
  }

  FigRetainProxyUnlockMutex();
  return Mutable;
}

uint64_t crabsCompleteLazySync(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (!*(a1 + 728))
  {
    return 0;
  }

  if (a2)
  {
    FigAIOBlockUntilReady(*(a1 + 720), *(a1 + 736), 0);
  }

  v15 = 0;
  v3 = FigAIOTryToComplete(*(a1 + 720), *(a1 + 736), &v16, &v15);
  v4 = v16;
  if (v3)
  {
    v5 = a1 + 728;
    if (v16)
    {
      if (v16 == 69 || v16 == 28)
      {
        *(a1 + 135) = 1;
        if (*(a1 + 112))
        {
          *(a1 + 112) = 0;
          *(a1 + 176) |= 8u;
          if (dword_1EAF16BD0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      *(*v5 + 8) |= 8u;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    }

    v7 = *v5;
    if ((*(*v5 + 8) & 8) != 0)
    {
      v10 = 1;
    }

    else
    {
      v8 = *v7;
      v9 = *(a1 + 224);
      v10 = v9 <= v8 && v9 + *(a1 + 344) / 4 > v8;
    }

    crabsReleaseWorking(a1, v7, v10, 1);
    *v5 = 0;
    *(a1 + 736) = 0;
    return v16;
  }

  return v4;
}

uint64_t crabsCompleteLazyPagein(uint64_t a1, int a2)
{
  v7 = 0;
  if (!*(a1 + 744))
  {
    return 0;
  }

  if (a2)
  {
    FigAIOBlockUntilReady(*(a1 + 720), *(a1 + 752), 0);
  }

  v6 = 0;
  v3 = FigAIOTryToComplete(*(a1 + 720), *(a1 + 752), &v7, &v6);
  result = v7;
  if (v3)
  {
    if (v7)
    {
      crabsMarkBlockUnbacked(a1, *(a1 + 744), *(a1 + 224) <= **(a1 + 744));
    }

    crabsReleaseWorking(a1, *(a1 + 744), 1, 1);
    v5 = *(a1 + 744);
    if ((~*(v5 + 8) & 5) == 0)
    {
      crabsUnhint(a1, v5);
    }

    *(a1 + 744) = 0;
    *(a1 + 752) = 0;
    return v7;
  }

  return result;
}

uint64_t crabsSyncCache(uint64_t a1)
{
  v2 = *(a1 + 504);
  if ((v2 & 5) == 4 && !*(a1 + 136))
  {
    return 0;
  }

  v3 = *(a1 + 88);
  if ((v2 & 1) == 0)
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = *(*(a1 + 80) + 8 * v4);
        if (v6)
        {
          break;
        }

LABEL_35:
        if (v3 <= ++v4)
        {
          goto LABEL_58;
        }
      }

      v7 = *(v6 + 4);
      if ((v7 & 0x80) != 0 && ((v7 & 0x40) != 0 || *(a1 + 136)))
      {
        crabsMakeBackingNonvolatile(a1, v6, *(a1 + 224) <= *v6);
        v7 = *(v6 + 4);
      }

      if ((v7 & 0x10) != 0)
      {
        if ((v7 & 0x100) != 0)
        {
          goto LABEL_20;
        }
      }

      else if ((v7 & 0x100) != 0 || !*(a1 + 136))
      {
        goto LABEL_20;
      }

      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = *(a1 + 96);
        v10 = *v6;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v11)
        {
          if (v11(v8, v9, v9 * v10, a1 + 16, v6 + 24))
          {
            *(v6 + 4) |= 0x140u;
          }
        }
      }

LABEL_20:
      v12 = *(v6 + 4);
      if ((v12 & 0x40) != 0)
      {
        if (*(v6 + 10))
        {
          v38 = 0;
LABEL_28:
          v13 = v6[1];
          v14 = FigFileForkWrite();
          if (v14)
          {
            v15 = 0;
          }

          else
          {
            v15 = v38 == v13;
          }

          if (!v15)
          {
            goto LABEL_77;
          }

          v12 = v6[2] & 0xFFBF;
          *(v6 + 4) &= ~0x40u;
          goto LABEL_34;
        }

        if ((v12 & 0x200) == 0)
        {
          if (!*(v6 + 11))
          {
            goto LABEL_34;
          }

LABEL_27:
          v38 = 0;
          goto LABEL_28;
        }

        if ((v12 >> 8))
        {
          goto LABEL_27;
        }
      }

LABEL_34:
      v5 += (v12 >> 8) & 1;
      v3 = *(a1 + 88);
      goto LABEL_35;
    }

    goto LABEL_57;
  }

  if (v3 >= 1)
  {
    v16 = 0;
    v5 = 0;
    while (1)
    {
      v17 = *(*(a1 + 80) + 8 * v16);
      if (v17)
      {
        break;
      }

LABEL_55:
      if (v3 <= ++v16)
      {
        goto LABEL_58;
      }
    }

    if (!*(v17 + 80))
    {
      goto LABEL_54;
    }

    v18 = *(v17 + 8);
    if ((v18 & 8) == 0 && v17 != *(a1 + 728))
    {
      goto LABEL_54;
    }

    if ((v18 & 0x200) != 0)
    {
      if (((v18 >> 8) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (!*(v17 + 88))
    {
LABEL_47:
      if (crabsAllocBacking(a1, v17))
      {
        crabsAddBlockToBackedList(a1, v17);
      }
    }

    v19 = *(v17 + 8);
    if ((v19 & 0x200) == 0)
    {
      if (!*(v17 + 88))
      {
        goto LABEL_54;
      }

LABEL_53:
      crabsSyncBlock(a1, v17);
      if (v14)
      {
LABEL_77:
        v29 = v14;
        v28 = 0;
        goto LABEL_68;
      }

      goto LABEL_54;
    }

    if ((v19 >> 8))
    {
      goto LABEL_53;
    }

LABEL_54:
    v5 += HIBYTE(*(v17 + 8)) & 1;
    v3 = *(a1 + 88);
    goto LABEL_55;
  }

LABEL_57:
  v5 = 0;
LABEL_58:
  v20 = 16 * v5;
  v21 = malloc_type_malloc(v20 + 16, 0xE6E88954uLL);
  if (v21)
  {
    v22 = v21;
    *v21 = 0x6261726305000000;
    *(v21 + 2) = bswap32(*(a1 + 96));
    *(v21 + 3) = bswap32(v5);
    v23 = *(a1 + 88);
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = v21 + 16;
      v26 = *(a1 + 80);
      do
      {
        v27 = *(v26 + 8 * v24);
        if (v27 && (*(v27 + 8) & 0x100) != 0)
        {
          *(v25 + 1) = bswap64(*(v27 + 96));
          *v25 = bswap32(v24);
          *(v25 + 1) = bswap32(*(v27 + 4));
          v25 += 16;
        }

        ++v24;
      }

      while (v23 != v24);
    }

    v28 = CFDataCreate(*MEMORY[0x1E695E480], v21, v20 + 16);
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      crabsSyncCache_cold_1(&v38);
      v29 = v38;
    }

    free(v22);
  }

  else
  {
    crabsSyncCache_cold_2(&v38);
    v28 = 0;
    v29 = v38;
  }

LABEL_68:
  v30 = *(a1 + 144);
  if (v30)
  {
    FigDiskCacheProviderGetFigBaseObject();
    v32 = v31;
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v33)
    {
      v33(v32, @"CacheIdentifier", v30);
    }
  }

  FigDiskCacheProviderGetFigBaseObject();
  v35 = v34;
  v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v36)
  {
    v36(v35, @"CacheMap", v28);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v29;
}

void crabsReleaseDiskCacheProviderAsync(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    os_release(v3);
  }

  free(a1);
}

uint64_t crabsRetainProxyUnlockWithActions(uint64_t a1)
{
  if (FigRetainProxyIsInvalidated())
  {

    return FigRetainProxyUnlockMutex();
  }

  else
  {
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();

    return crabsUnlockWithActions(DerivedStorage);
  }
}

uint64_t crabsDeferredUnlockWithActions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  values[16] = *MEMORY[0x1E69E9840];
  FigRetainProxyLockMutex();
  Owner = FigRetainProxyGetOwner();
  if (FigRetainProxyIsInvalidated())
  {
    FigRetainProxyUnlockMutex();
    goto LABEL_35;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (*(DerivedStorage + 104))
  {
    v7 = *(DerivedStorage + 176);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v8 = *(DerivedStorage + 24);
  v9 = *(DerivedStorage + 135);
  *(DerivedStorage + 176) = 0;
  FigRetainProxyUnlockMutex();
  if ((v7 & 4) != 0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v10 = MEMORY[0x1E695E480];
  if ((v7 & 3) != 0)
  {
    v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, 0, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if ((v7 & 8) != 0)
  {
    cf = 0;
    *type = 0;
    if (v8)
    {
      v24 = @"Cache is Busy";
      v25 = -12542;
    }

    else
    {
      if (!v9)
      {
        v23 = 0;
LABEL_44:
        crabsReportingIssueEvent(v6, 401);
        crabsReportingIssueIRATEventIfNeeded(v6, 801);
        if (dword_1EAF16BD0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if (cf)
        {
          CFRelease(cf);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        goto LABEL_12;
      }

      v24 = @"Disk is Full";
      v25 = -12541;
    }

    *type = v25;
    v26 = *v10;
    cf = CFNumberCreate(*v10, kCFNumberSInt32Type, type);
    v23 = CFDictionaryCreate(v26, kFigCachedReadAheadByteStreamParameter_StatusCode, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    crabsReportingReportError(v6, @"CoreMediaErrorDomain", v24, *type);
    goto LABEL_44;
  }

LABEL_12:
  if ((v7 & 0x20) != 0)
  {
    if (dword_1EAF16BD0)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v13 = cf;
      v14 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        v15 = v13;
      }

      else
      {
        v15 = v13 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v30 = 136315394;
        v31 = "crabsDeferredUnlockWithActions";
        v32 = 2048;
        v33 = v6;
        _os_log_send_and_compose_impl(v15, 0, values, 128, &dword_1962D5000, v12, v14, "<<<< CRABS >>>> %s: [%p] CRABS sending kFigCachedReadAheadByteStreamNotification_ReadError", &v30, 22);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = *(v6 + 952);
    if (*(v6 + 944))
    {
      if (!v16)
      {
        v17 = *v10;
        values[0] = CFNumberCreate(*v10, kCFNumberIntType, (v6 + 944));
        v18 = CFDictionaryCreate(v17, kFigCachedReadAheadByteStreamParameter_ReadResult, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (values[0])
        {
          CFRelease(values[0]);
        }

        goto LABEL_26;
      }

LABEL_25:
      v18 = CFDictionaryCreate(*v10, kFigCachedReadAheadByteStreamParameter_ReadCFError, (v6 + 952), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_26:
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      crabsReportingReportError(v6, @"CoreMediaErrorDomain", @"CRABS Read Error", *(v6 + 944));
      v19 = *(v6 + 952);
      if (v19)
      {
        CFRelease(v19);
        *(v6 + 952) = 0;
      }

      *(v6 + 944) = 0;
      if (v18)
      {
        CFRelease(v18);
      }

      goto LABEL_30;
    }

    if (v16)
    {
      goto LABEL_25;
    }
  }

LABEL_30:
  if ((v7 & 0x40) != 0)
  {
    v20 = *v10;
    values[0] = CFNumberCreate(*v10, kCFNumberSInt32Type, (v6 + 108));
    v21 = CFDictionaryCreate(v20, kFigCachedReadAheadByteStreamParameter_ConnectionState, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (values[0])
    {
      CFRelease(values[0]);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

LABEL_35:
  if (Owner)
  {
    CFRelease(Owner);
  }

  return FigRetainProxyRelease();
}

void crabsReportingReportError(void *a1, const __CFString *a2, uint64_t a3, int a4)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  v9 = a4;
  v10 = CFErrorCreate(AllocatorForMedia, a2, a4, 0);
  cf = 0;
  if (a1)
  {
    if (a1[122])
    {
      v11 = FigGetAllocatorForMedia();
      FigMetricErrorEventCreate(v11, 1, v10, &cf);
      v12 = a1[122];
      v13 = cf;
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v14)
      {
        v14(v12, 0, v13);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v15 = a1[115];
    if (v15)
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v16)
      {
        v16(v15, 0x1F0B64598, 0x1F0B3F7B8, a3, 0);
      }

      v17 = a1[115];
      if (!v17)
      {
        goto LABEL_30;
      }

      v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v18)
      {
        v18(v17, 0x1F0B64598, 0x1F0B3F798, v9, 0);
      }

      v19 = a1[115];
      if (v19)
      {
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v20)
        {
          v20(v19, 0x1F0B64598, 0x1F0B3F7D8, a2, 0);
        }

        v21 = a1[115];
      }

      else
      {
LABEL_30:
        v21 = 0;
      }

      if (a1[7] == -1)
      {
        v22 = 1;
        if (!v21)
        {
LABEL_26:
          crabsReportingIssueEvent(a1, 402);
          goto LABEL_27;
        }
      }

      else
      {
        if (a1[10])
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        if (!v21)
        {
          goto LABEL_26;
        }
      }

      v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v23)
      {
        v23(v21, 0x1F0B64598, 0x1F0B3F818, v22, 0);
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t crabsReportingIssueEvent(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 920);
    if (v2)
    {
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 16);
      result = VTable + 16;
      v6 = *(v5 + 8);
      if (v6)
      {

        return v6(v2, 0x1F0B64598, a2, 0, 0);
      }
    }
  }

  return result;
}

uint64_t crabsMarkBlockUnbacked(uint64_t a1, int *a2, int a3)
{
  v6 = a2[1];
  result = crabsMarkBlockUnfilled(a1, a2);
  *(a2 + 12) = -1;
  v8 = *(a2 + 4);
  *(a2 + 4) = v8 & 0xFEFF;
  ++*(a1 + 408);
  if ((v8 & 0x11) == 0)
  {
    v9 = *(a2 + 6);
    v10 = *(a2 + 7);
    if (*(a2 + 3) != 0)
    {
      v11 = 264;
      if (!a3)
      {
        v11 = 280;
      }

      v12 = (a1 + v11 + 8);
      if (v9)
      {
        v12 = (v9 + 56);
      }

      *v12 = v10;
      *v10 = v9;
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      if (a3)
      {
        *(a2 + 4) = v8 & 0xEEEE;
      }
    }
  }

  v13 = *a2;
  v14 = *(a1 + 224);
  if (v14 <= v13)
  {
    v15 = *(a1 + 240);
    if (v15 < v14 || v15 > v13)
    {
      *(a1 + 240) = v13;
    }
  }

  if (v6)
  {
    if (*(a1 + 128))
    {
      v17 = 1;
    }

    else
    {
      v17 = v14 <= v13;
    }

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    *(a1 + 176) |= v18;
    *(a1 + 128) = 0;
  }

  return result;
}

uint64_t crabsEnsureInitialized(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  v3 = *(DerivedStorage + 56) != -1 && *(DerivedStorage + 80) != 0;
  FigRetainProxyUnlockMutex();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    result = 4294954511;
  }

  else
  {
    result = 0;
  }

  if (!IsInvalidated && !v3)
  {
    LODWORD(result) = readOrRef(a1, 1uLL, 0, 0, 0, 0, -1);
    if (result == -12873)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void crabsReleaseReadAheadAssertion(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigRetainProxyLockMutex())
  {
    if (dword_1EAF16BD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(DerivedStorage + 116) - 1;
    *(DerivedStorage + 116) = v4;
    if (!v4)
    {
      crabsReportingIssueIRATEventIfNeeded(DerivedStorage, 801);
    }

    FigRetainProxyUnlockMutex();
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

BOOL crabsIsEntireLengthAvailableInCache(uint64_t a1)
{
  v4 = 0;
  v2 = crabsSelectNextFill(a1, &v4);
  result = 0;
  if (!v2 && !v4)
  {
    return *(a1 + 130) != 0;
  }

  return result;
}

BOOL crabsShouldStartFirehose(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 134))
  {
    return 1;
  }

  v4 = *(a1 + 88);
  v5 = 0x200000 / *(a1 + 96);
  if (v5 < 1 || v4 <= a2)
  {
    v7 = 0;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(a1 + 80) + 8 * a2 + 8 * v9);
      if (v10)
      {
        if ((*(v10 + 8) & 4) != 0)
        {
          break;
        }
      }

      v7 = v9 + 1;
      if (a2 + 1 + v9 < v4)
      {
        ++v9;
        if (v7 < v5)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v7 = v9;
  }

LABEL_15:
  if ((*(a1 + 504) & 3) != 0)
  {
    goto LABEL_22;
  }

  v11 = 2 * *(a1 + 480);
  if (v11 >= *(a1 + 472))
  {
    v11 = *(a1 + 472);
  }

  v12 = v11 + v7;
  v13 = v4 - a2;
  v7 = v12 >= v13 ? v13 : v12;
  result = crabsEnsureSafetyMargin(a1, a2);
  if (result)
  {
LABEL_22:
    result = crabsAllocateMoreBacking(a1, a2, v7, *(a1 + 224) > a2);
  }

  *(a1 + 134) = !result;
  return result;
}

uint64_t crabsWaitForLoadAbort(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16BD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRetainProxyLockMutex();
  *(a1 + 16) = -12871;
  MEMORY[0x19A8D12E0](*a1);
  return FigRetainProxyUnlockMutex();
}

BOOL crabsRangeInBlockIsCached(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  if (v3 == 0x4000)
  {
    v4 = a2 >> 14;
  }

  else if (v3 == 0x10000)
  {
    v4 = a2 >> 16;
  }

  else
  {
    v4 = a2 / v3;
  }

  v5 = *(*(a1 + 80) + 8 * v4);
  return v5 && v5[1] + v3 * *v5 >= a3 + a2;
}

BOOL crabsEnsureSafetyMargin(void *a1, uint64_t a2)
{
  v4 = 2 * a1[60];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  crabsPurgeCompletionSweep(a1);
  if (v4 >= a1[11] + ~a2)
  {
    v4 = a1[11] + ~a2;
  }

  if (crabsHasSafetyMargin(a1, a2, v4))
  {
    return 1;
  }

  v7 = a1[61];
  if (v7 && UpTimeNanoseconds < v7)
  {
    return 0;
  }

  if (a1[59] >= a1[11] + ~a2)
  {
    v8 = a1[11] + ~a2;
  }

  else
  {
    v8 = a1[59];
  }

  if (crabsAllocateMoreBacking(a1, a2, v8, a1[28] > a2))
  {
    a1[61] = 0;
    return 1;
  }

  a1[61] = UpTimeNanoseconds + 1090000000;

  return crabsHasSafetyMargin(a1, a2, v4);
}

BOOL crabsBlockIsAKeeper(void *a1, int *a2)
{
  if ((a2[2] & 0x10) != 0)
  {
    return 1;
  }

  v2 = a1[28];
  v3 = *a2;
  if (**(a1[36] + 8) && v2 <= v3)
  {
    return 1;
  }

  v5 = **(a1[34] + 8);
  if (!v5)
  {
    return 1;
  }

  if (v2 <= v3)
  {
    return v3 <= *v5;
  }

  return 0;
}

void crabsSwipeBacking(uint64_t a1, uint64_t a2, int a3)
{
  v7 = **(*(a1 + 288) + 8);
  if (v7)
  {
    while (1)
    {
      v8 = *(v7 + 7);
      v9 = **(v8 + 8);
      v10 = *(v7 + 4);
      if ((v10 & 0x400) == 0)
      {
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        if (crabsMakeBackingNonvolatile(a1, v7, 0))
        {
          break;
        }
      }

      v7 = v9;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v8 = *(v7 + 7);
LABEL_17:
    v15 = *(v7 + 6);
    if (v15 | v8)
    {
      v16 = (v15 + 56);
      if (!v15)
      {
        v16 = (a1 + 288);
      }

      *v16 = v8;
      *v8 = v15;
      *(v7 + 6) = 0;
      *(v7 + 7) = 0;
    }
  }

  else
  {
LABEL_6:
    if (a3 || (v7 = **(*(a1 + 272) + 8)) == 0)
    {
LABEL_7:
      v11 = qword_1EAF16BC8;

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954420, "<<<< CRABS >>>>", 4657, v3);
      return;
    }

    while (1)
    {
      v12 = *(v7 + 7);
      v13 = **(v12 + 8);
      v14 = *(v7 + 4);
      if ((v14 & 0x400) == 0)
      {
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        if (crabsMakeBackingNonvolatile(a1, v7, 1))
        {
          break;
        }
      }

      v7 = v13;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v12 = *(v7 + 7);
LABEL_22:
    v17 = *(v7 + 6);
    if (v17 | v12)
    {
      v18 = (v17 + 56);
      if (!v17)
      {
        v18 = (a1 + 272);
      }

      *v18 = v12;
      *v12 = v17;
      *(v7 + 6) = 0;
      *(v7 + 7) = 0;
      *(v7 + 4) &= ~0x1000u;
    }
  }

  v19 = *(a1 + 504);
  if (v19)
  {
    if (v7 == *(a1 + 728))
    {
      crabsSyncBlock(a1, v7);
      v19 = *(a1 + 504);
    }

    *(a2 + 96) = *(v7 + 12);
    *(a2 + 8) |= 0x100u;
    *(v7 + 12) = -1;
    *(v7 + 4) &= ~0x100u;
  }

  else
  {
    *(a2 + 88) = *(v7 + 11);
    *(v7 + 11) = 0;
  }

  v20 = *(a1 + 224);
  *(a1 + 240) = v20;
  ++*(a1 + 408);
  if ((v19 & 1) == 0)
  {
    *(a1 + 132) = 0;
  }

  if (v7[1] >= 1)
  {
    if (*(v7 + 10))
    {
      *(v7 + 4) |= 8u;
    }

    if (*(a1 + 128))
    {
      v21 = 2;
    }

    else if (v20 > *v7)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    *(a1 + 176) |= v21;
    *(a1 + 128) = 0;
  }

  crabsCleanupOrphan(a1, v7);
}

BOOL crabsHasSafetyMargin(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1[10] + 8 * a2);
  if (!v6)
  {
    if (crabsInitBlock(a1, a2))
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1[10] + 8 * a2);
    }
  }

  v7 = *(v6 + 4);
  if ((v7 & 0x200) == 0)
  {
    if (*(v6 + 11))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (((v7 >> 8) & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v8 = a1[28];
  if (v8 <= a2)
  {
    v9 = *(v6 + 6);
    v10 = a3 > 0;
    if (v9)
    {
      v11 = a3 < 1;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      do
      {
        a3 += *(v9 + 8) << 24 >> 31;
        v9 = *(v9 + 48);
        v10 = a3 != 0;
        if (v9)
        {
          v12 = a3 == 0;
        }

        else
        {
          v12 = 1;
        }
      }

      while (!v12);
    }

    if (!v10)
    {
      return a3 == 0;
    }

    v6 = a1[35];
  }

  if (a3 >= 1 && v6)
  {
    if (v8 <= *v6)
    {
      a3 = 1;
    }

    else
    {
      do
      {
        a3 += *(v6 + 4) << 24 >> 31;
        v6 = *(v6 + 6);
        if (v6)
        {
          v13 = a3 == 0;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }
  }

  return a3 == 0;
}

BOOL crabsAllocateMoreBacking(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  v5 = a2;
  v6 = *(a1 + 224);
  if (v6 != a2 && a3 >= 1)
  {
    do
    {
      v11 = *(*(a1 + 80) + 8 * v5);
      if (!v11)
      {
        if (crabsInitBlock(a1, v5))
        {
          v11 = 0;
        }

        else
        {
          v11 = *(*(a1 + 80) + 8 * v5);
        }
      }

      v12 = *(v11 + 8);
      if ((v12 & 0x200) != 0)
      {
        if ((v12 >> 8))
        {
          goto LABEL_16;
        }
      }

      else if (*(v11 + 88))
      {
        goto LABEL_16;
      }

      if (!crabsAllocBacking(a1, v11))
      {
        v6 = *(a1 + 224);
        if (v5 < v6 || !crabsBlockIsAKeeper(a1, v11))
        {
          return v5 == v6;
        }

        crabsSwipeBacking(a1, v11, a4);
        if (v13)
        {
          v6 = *(a1 + 224);
          return v5 == v6;
        }
      }

      crabsAddBlockToBackedList(a1, v11);
      if ((*(v11 + 8) & 0x11) == 0 && !*(v11 + 80))
      {
        if ((*(a1 + 504) & 3) == 0)
        {
          crabsMakeBlockVolatileRelativeToAnchor(a1, v11);
        }

LABEL_16:
        --v4;
      }

      v5 = (v5 + 1) % *(a1 + 88);
      v6 = *(a1 + 224);
    }

    while (v5 != v6 && v4 > 0);
  }

  if (v4)
  {
    return v5 == v6;
  }

  return 1;
}

uint64_t flushPendingReleaseSet(void *a1)
{
  FigSimpleMutexLock();
  for (i = **(a1[47] + 8); i; i = **(a1[47] + 8))
  {
    v3 = i[8];
    v4 = i[9];
    v5 = (v3 + 72);
    if (!v3)
    {
      v5 = a1 + 47;
    }

    *v5 = v4;
    *v4 = v3;
    i[8] = 0;
    i[9] = 0;
    v6 = i[10];
    if (v6 && !*(v6 + 24))
    {
      addToWorkingSet(a1, i, 1, 1);
      v7 = a1[12];
      *(&gCRABS_Stats + 1) += v7;
      a1[106] += v7;
    }
  }

  return FigSimpleMutexUnlock();
}

void crabsMakeCacheInFrontListVolatile(void *a1)
{
  v1 = **(a1[34] + 8);
  if (v1)
  {
    do
    {
      v3 = **(*(v1 + 56) + 8);
      crabsMakeBlockVolatileRelativeToAnchor(a1, v1);
      v1 = v3;
    }

    while (v3);
  }
}

float crabsMakeCacheInFrontListNonvolatile(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    do
    {
      v3 = *(v2 + 48);
      if ((*(v2 + 8) & 0x80) != 0 && !crabsMakeBackingNonvolatile(a1, v2, 1))
      {
        break;
      }

      v2 = v3;
    }

    while (v3);
  }

  return crabsPurgeCompletionSweep(a1);
}

uint64_t crabsCallCacheIterationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v13 = *(a1 + 760);
  if (v13)
  {
    v14 = CFRetain(v13);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    a5 = 0;
    v16 = 1;
    if (!a7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  FigRetainProxyUnlockMutex();
  LODWORD(a5) = (a5)(a6, a4, a3, a2);
  v15 = FigRetainProxyLockMutex();
  if (v15)
  {
    v16 = 0;
    if (a5)
    {
      a5 = a5;
    }

    else
    {
      a5 = v15;
    }

    if (!a7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    IsInvalidated = FigRetainProxyIsInvalidated();
    v16 = 1;
    if (IsInvalidated)
    {
      a5 = 4294954511;
    }

    else
    {
      a5 = a5;
    }

    if (!a7)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  *a7 = v16;
LABEL_12:
  if (v14)
  {
    CFRelease(v14);
  }

  return a5;
}

uint64_t FigDiskCacheProviderGetBackingFile(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{

  return crabsCallCacheIterationCallback(a1, a2, v9, v10, v7, v8, a7);
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{

  return FigSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1)
{

  return FigRetainProxyLockMutex();
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return FigByteStreamStatsLogOneRead();
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

BOOL OUTLINED_FUNCTION_33_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, os_log_type_t type, int a29)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1)
{

  return CMBaseObjectGetVTable();
}

uint64_t FigCRABSScheduledIOEqual(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;

  return CFEqual(v4, v3);
}

uint64_t FigCRABSScheduledIOCopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, *MEMORY[0x1E6962E88]))
  {
    return 4294954512;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = *MEMORY[0x1E6960E08];

  return v8(CMBaseObject, v9, a3, a4);
}

uint64_t FigCRABSScheduledIOGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  FigCRABSGetByteStream();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

void ttmlFormatReader_reportSkippedSyntaxElement(__CFArray *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v3 = 0;
      v4 = 0;
      Mutable = 0;
      v6 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v3)
        {
          CFRelease(v3);
        }

        Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v3 = CFStringCreateWithFormat(v6, 0, @"The parser skipped a syntax element: %@", ValueAtIndex);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        CFArrayAppendValue(a1, Mutable);
        ++v4;
      }

      while (Count != v4);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

void ttmlFormatReader_reportUnsupportedFeatures(__CFArray *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v3 = 0;
      v4 = 0;
      Mutable = 0;
      v6 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v3)
        {
          CFRelease(v3);
        }

        Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v3 = CFStringCreateWithFormat(v6, 0, @"The parser doesn't support a feature/extension: %@", ValueAtIndex);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        CFArrayAppendValue(a1, Mutable);
        ++v4;
      }

      while (Count != v4);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

void ttmlFormatReader_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *ttmlFormatReader_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<TTMLFormatReader %p>", a1);
  return Mutable;
}

uint64_t ttmlFormatReader_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    ttmlFormatReader_CopyProperty_cold_2(&v17);
    return v17;
  }

  if (!a4)
  {
    ttmlFormatReader_CopyProperty_cold_1(&v16);
    return v16;
  }

  v8 = DerivedStorage;
  if (!FigCFEqual() && !FigCFEqual())
  {
    if (FigCFEqual())
    {
      v13 = @"com.apple.coremedia.formatreader.ttml";
    }

    else
    {
      if (FigCFEqual())
      {
        result = 0;
        if (*(v8 + 16))
        {
          v15 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v15 = MEMORY[0x1E695E4C0];
        }

        v14 = *v15;
        goto LABEL_19;
      }

      if (!FigCFEqual())
      {
        return 4294954512;
      }

      v13 = *(v8 + 16);
      if (!v13)
      {
        v14 = 0;
        goto LABEL_13;
      }
    }

    v14 = CFRetain(v13);
LABEL_13:
    result = 0;
LABEL_19:
    *a4 = v14;
    return result;
  }

  FigTrackReaderGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    return 4294954514;
  }

  return v11(v10, @"UneditedTrackDuration", a3, a4);
}

uint64_t ttmlFormatReader_CopyTrackByIndex(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    ttmlFormatReader_CopyTrackByIndex_cold_1(&v12);
    return v12;
  }

  else
  {
    if (a3)
    {
      v10 = *DerivedStorage;
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      *a3 = v10;
    }

    if (a4)
    {
      *a4 = 1952807028;
    }

    result = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  return result;
}

uint64_t ttmlFormatReader_CopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1)
  {
    if (a3)
    {
      v8 = *DerivedStorage;
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *a3 = v8;
    }

    result = 0;
    if (a4)
    {
      *a4 = 1952807028;
    }
  }

  else
  {
    ttmlFormatReader_CopyTrackByID_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t ttmlFormatReader_initIsSDKVersionBeforeJazz()
{
  result = _CFExecutableLinkedOnOrAfter();
  sTTMLFormatReader_IsSDKVersionBeforeJazz = result == 0;
  return result;
}

void ttmlCaptionTrackReader_Finalize(uint64_t a1)
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

__CFString *ttmlCaptionTrackReader_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<TTMLCaptionTrackReader %p>", a1);
  return Mutable;
}

void ttmlCursorService_Finalize(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  if (v1)
  {

    CFRelease(v1);
  }
}

__CFString *ttmlCursorService_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<TTMLSampleCursorService %p>", a1);
  return Mutable;
}

uint64_t ttmlSampleCursorService_CreateCursorAtTime(const void *a1, __int128 *a2, void *a3, char *a4, char *a5)
{
  cf = 0;
  v9 = ttmlSampleCursorService_CreateCursorAtFirstSample(a1, &cf);
  v10 = cf;
  if (!v9 && (v12 = *a2, ttmlSampleCursor_MoveToTime(cf, &v12, a4, a5), a3))
  {
    *a3 = v10;
  }

  else if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

uint64_t ttmlSampleCursorService_CreateCursorNearTime(const void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, char *a6)
{
  v7 = *a2;
  v8 = *(a2 + 16);
  return ttmlSampleCursorService_CreateCursorAtTime(a1, &v7, a4, a5, a6);
}

uint64_t ttmlSampleCursorService_CreateCursorAtFirstSample(const void *a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  cf = 0;
  ttmlSampleCursorCreate(v5, *DerivedStorage, 0, &cf);
  v7 = v6;
  if (v6)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v7;
}

uint64_t ttmlSampleCursorService_CreateCursorAtLastSample(const void *a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  cf = 0;
  v6 = *DerivedStorage;
  Count = CFArrayGetCount(v6);
  ttmlSampleCursorCreate(v5, v6, Count - 1, &cf);
  v9 = v8;
  if (v8)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v9;
}

CFIndex ttmlSampleCursor_MoveToTime(uint64_t a1, CMTime *a2, char *a3, char *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage[1];
  Count = CFArrayGetCount(v8);
  ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
  v11 = CFArrayGetValueAtIndex(v8, Count - 1);
  memset(&v24, 0, sizeof(v24));
  CMSampleBufferGetPresentationTimeStamp(&v24, ValueAtIndex);
  memset(&v23, 0, sizeof(v23));
  CMSampleBufferGetPresentationTimeStamp(&lhs, v11);
  CMSampleBufferGetDuration(&rhs, v11);
  CMTimeAdd(&v23, &lhs, &rhs);
  lhs = *a2;
  rhs = v24;
  result = CMTimeCompare(&lhs, &rhs);
  if ((result & 0x80000000) != 0)
  {
    v17 = 0;
    *DerivedStorage = 0;
    v18 = 1;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  lhs = v23;
  rhs = *a2;
  if (CMTimeCompare(&lhs, &rhs) >= 1)
  {
    for (i = 0; ; Count = v14 - i)
    {
      v15 = i + Count;
      v14 = (i + Count) / 2 + i / 2;
      v16 = CFArrayGetValueAtIndex(v8, v14);
      memset(&lhs, 0, sizeof(lhs));
      CMSampleBufferGetPresentationTimeStamp(&lhs, v16);
      memset(&rhs, 0, sizeof(rhs));
      CMSampleBufferGetDuration(&time1, v16);
      v19 = lhs;
      CMTimeAdd(&rhs, &v19, &time1);
      time1 = *a2;
      v19 = lhs;
      if ((CMTimeCompare(&time1, &v19) & 0x80000000) == 0)
      {
        time1 = rhs;
        v19 = *a2;
        result = CMTimeCompare(&time1, &v19);
        if (result > 0)
        {
          v17 = 0;
          v18 = 0;
          *DerivedStorage = v14;
          if (!a3)
          {
            goto LABEL_12;
          }

LABEL_11:
          *a3 = v18;
          goto LABEL_12;
        }

        i = v14 + 1;
        v14 = v15;
      }
    }
  }

  result = CFArrayGetCount(v8);
  v18 = 0;
  *DerivedStorage = result - 1;
  v17 = 1;
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (a4)
  {
    *a4 = v17;
  }

  return result;
}

double ttmlSampleCursorCreate(uint64_t a1, CFArrayRef theArray, uint64_t a3, uint64_t *a4)
{
  if (theArray)
  {
    v13 = 0;
    if (CFArrayGetCount(theArray))
    {
      FigSampleCursorGetClassID();
      v8 = CMDerivedObjectCreate();
      if (v8)
      {
        ttmlSampleCursorCreate_cold_1(v8, &v13, &v14);
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v10 = CFRetain(theArray);
        *DerivedStorage = a3;
        DerivedStorage[1] = v10;
        *a4 = v13;
      }
    }

    else
    {
      ttmlSampleCursorCreate_cold_2(&v14);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954454, "< TTMLFormatReader >", 473, v4);
  }

  return result;
}

void ttmlSampleCursor_Finalize(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v1)
  {

    CFRelease(v1);
  }
}

__CFString *ttmlSampleCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<TTMLSampleCursor %p>{currentIndex:%ld}", a1, *DerivedStorage);
  return Mutable;
}

uint64_t ttmlSampleCursor_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      return 4294954512;
    }

    v7 = 290;
  }

  else
  {
    v7 = 289;
  }

  v9 = v4;
  v10 = v5;
  ttmlSampleCursor_CopyProperty_cold_1(v7, &v8);
  return v8;
}

uint64_t ttmlSampleCursor_Copy(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  FigSampleCursorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    ttmlSampleCursor_Copy_cold_1();
  }

  else
  {
    v6 = CMBaseObjectGetDerivedStorage();
    v7 = DerivedStorage[1];
    *v6 = *DerivedStorage;
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    v6[1] = v7;
    *a2 = 0;
  }

  return v5;
}

uint64_t ttmlSampleCursor_CompareInDecodeOrder(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage < *v3)
  {
    return -1;
  }

  else
  {
    return *DerivedStorage > *v3;
  }
}

uint64_t ttmlSampleCursor_GetStartTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 8), *DerivedStorage);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetPresentationTimeStamp(&v6, ValueAtIndex);
  *a2 = v6;
  return 0;
}

uint64_t ttmlSampleCursor_GetDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 8), *DerivedStorage);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetDuration(&v6, ValueAtIndex);
  *a2 = v6;
  return 0;
}

uint64_t ttmlSampleCursor_GetDependencyInfo(uint64_t a1, _BYTE *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

uint64_t ttmlSampleCursor_CreateSample(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 8), *DerivedStorage);
  *a3 = CFRetain(ValueAtIndex);
  return 0;
}

uint64_t ttmlSampleCursor_StepByTime(uint64_t a1, CMTime *a2)
{
  v9 = **&MEMORY[0x1E6960C70];
  v8 = v9;
  v7 = 0;
  ttmlSampleCursor_GetStartTime(a1, &v9);
  lhs = v9;
  v5 = *a2;
  CMTimeAdd(&v8, &lhs, &v5);
  lhs = v8;
  ttmlSampleCursor_MoveToTime(a1, &lhs, &v7 + 1, &v7);
  if (HIBYTE(v7) | v7)
  {
    return 4294954456;
  }

  else
  {
    return 0;
  }
}

uint64_t ttmlSampleCursor_CopyFormatDescription(const void *a1, CMFormatDescriptionRef *a2)
{
  formatDescriptionOut = 0;
  v3 = CFGetAllocator(a1);
  v4 = CMFormatDescriptionCreate(v3, 0x63706772u, 0, 0, &formatDescriptionOut);
  if (!a2 || v4)
  {
    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }
  }

  else
  {
    *a2 = formatDescriptionOut;
  }

  return v4;
}

uint64_t ttmlCaptionTrackReader_GetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 1952807028;
  }

  return 0;
}

uint64_t fpm_StallWarningProc(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    memset(v23, 0, sizeof(v23));
    memset(&v22, 0, sizeof(v22));
    memset(&v21, 0, sizeof(v21));
    v20 = **&MEMORY[0x1E6960C70];
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    os_retain(*(MutableBytePtr + 1070));
    voucher_adopt();
    if (CMTimebaseGetRate(*(MutableBytePtr + 3)) > 0.0)
    {
      FigPlayabilityMonitorGetPlayableRange(MutableBytePtr, v23, &v22);
      CMTimebaseGetTime(&v21, *(MutableBytePtr + 3));
      lhs = v22;
      rhs = v21;
      CMTimeSubtract(&time, &lhs, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      FigFormatReaderUtilityGetDuration(*(MutableBytePtr + 1), 1, &v20);
      time = v20;
      lhs = v21;
      v4 = 0.0;
      if (CMTimeCompare(&time, &lhs) >= 1)
      {
        lhs = v20;
        rhs = v21;
        CMTimeSubtract(&time, &lhs, &rhs);
        v4 = CMTimeGetSeconds(&time);
      }

      v5 = fmax(Seconds, 0.0);
      if (dword_1EAF16BF0)
      {
        LODWORD(rhs.value) = 0;
        HIBYTE(v18) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = rhs.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v8 = value;
        }

        else
        {
          v8 = value & 0xFFFFFFFE;
        }

        if (v8)
        {
          v9 = *(MutableBytePtr + 26);
          LODWORD(lhs.value) = 136316162;
          *(&lhs.value + 4) = "fpm_StallWarningProc";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = MutableBytePtr;
          HIWORD(lhs.epoch) = 1024;
          *v25 = v9;
          *&v25[4] = 2048;
          *&v25[6] = v4;
          v26 = 2048;
          v27 = v5;
          LODWORD(v18) = 48;
          _os_log_send_and_compose_impl(v8, 0, &time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<< FigPlayMonitor >> %s: [%p] playThroughState is %d durToPlayThrough %g durationAhead %g", &lhs, v18, LODWORD(rhs.value), *&rhs.timescale, *&rhs.epoch);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(MutableBytePtr + 26) != 3 && v4 > v5)
      {
        if (v5 >= 0.1)
        {
          if (dword_1EAF16BF0)
          {
            LODWORD(rhs.value) = 0;
            HIBYTE(v18) = 0;
            v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v16 = rhs.value;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v17 = v16;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFE;
            }

            if (v17)
            {
              LODWORD(lhs.value) = 136315394;
              *(&lhs.value + 4) = "fpm_StallWarningProc";
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = MutableBytePtr;
              LODWORD(v18) = 22;
              _os_log_send_and_compose_impl(v17, 0, &time, 128, &dword_1962D5000, v15, 0, "<< FigPlayMonitor >> %s: [%p] Calling fpm_updateCache to reschedule stall timer", &lhs, v18);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fpm_updateCache(MutableBytePtr);
        }

        else
        {
          *(MutableBytePtr + 13) = 3;
          if (dword_1EAF16BF0)
          {
            LODWORD(rhs.value) = 0;
            HIBYTE(v18) = 0;
            v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v11 = rhs.value;
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v12 = v11;
            }

            else
            {
              v12 = v11 & 0xFFFFFFFE;
            }

            if (v12)
            {
              LODWORD(lhs.value) = 136315650;
              *(&lhs.value + 4) = "fpm_StallWarningProc";
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = MutableBytePtr;
              HIWORD(lhs.epoch) = 2048;
              *v25 = v5;
              LODWORD(v18) = 32;
              _os_log_send_and_compose_impl(v12, 0, &time, 128, &dword_1962D5000, v10, 0, "<< FigPlayMonitor >> %s: [%p] sending kFigPlayabilityMonitorNotification_StallWarning durationAhead=%.2f s", &lhs, v18, *&rhs.value);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRetainProxyRetain();
          CMNotificationCenterGetDefaultLocalCenter();
          FigDeferNotificationToDispatchQueue();
        }
      }
    }

    v13 = voucher_adopt();
    os_release(v13);
    FigSimpleMutexUnlock();
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t fpm_prepareDataRateProfile(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fpm_prepareDataRateProfile_cold_2(&v10);
    return v10;
  }

  v3 = Mutable;
  if (*(a1 + 80) >= 1)
  {
    v4 = 0;
    v5 = 0;
    while (!FigCFArrayAppendInt32())
    {
      ++v5;
      v4 += 48;
      if (v5 >= *(a1 + 80))
      {
        goto LABEL_6;
      }
    }

    fpm_prepareDataRateProfile_cold_1(&v9);
    v6 = v9;
    goto LABEL_15;
  }

LABEL_6:
  if (FigFormatReaderUtilityEstablishCombinedDataRateProfileForTracks(*(a1 + 8), v3, (a1 + 336), 1024, (a1 + 8528)))
  {
    v6 = MGCopyAnswer();
    if (FigCFEqual())
    {
      v7 = 1;
    }

    else
    {
      if (*(a1 + 112) == 3)
      {
        goto LABEL_13;
      }

      v7 = 0;
    }

    *(a1 + 112) = v7;
LABEL_13:
    if (v6)
    {
      CFRelease(v6);
      v6 = 0;
    }

    goto LABEL_15;
  }

  v6 = 0;
  *(a1 + 8552) = 1;
LABEL_15:
  CFRelease(v3);
  return v6;
}

uint64_t FigPlayabilityMonitorCanReuse(void *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  FigSimpleMutexLock();
  if (a1[10] == a4 && a1[1] == a2 && a1[2] == a5)
  {
    if (a4 < 1)
    {
      v10 = 1;
      goto LABEL_5;
    }

    v12 = a1[11];
    v10 = 1;
    while (1)
    {
      v14 = *v12;
      v12 += 12;
      v13 = v14;
      v15 = *a3++;
      if (v13 != v15)
      {
        break;
      }

      if (!--a4)
      {
        goto LABEL_5;
      }
    }
  }

  v10 = 0;
LABEL_5:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigPlayabilityMonitorSetRenderPipelines(void *a1, uint64_t a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if (!a2)
  {
    a2 = a1[10];
    goto LABEL_5;
  }

  if (a1[10] == a2)
  {
LABEL_5:
    if (a2 < 1)
    {
LABEL_16:
      v6 = 1;
      goto LABEL_17;
    }

    v7 = 0;
    v8 = 32;
    while (1)
    {
      v9 = a1[11];
      v10 = *(v9 + v8);
      if (a3)
      {
        v11 = *(a3 + 8 * v7);
        *(v9 + v8) = v11;
        if (v11)
        {
          CFRetain(v11);
        }

        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(v9 + v8) = 0;
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      CFRelease(v10);
LABEL_12:
      ++v7;
      v8 += 48;
      if (v7 >= a1[10])
      {
        goto LABEL_16;
      }
    }
  }

  v6 = 0;
LABEL_17:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigPlayabilityMonitorSetPlaybackTimebase(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  if (v4 != a2)
  {
    if (v4)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v5 = *(a1 + 304);
      if (v5)
      {
        CMTimebaseRemoveTimerDispatchSource(*(a1 + 24), v5);
      }

      v6 = CFRetain(*(a1 + 24));
      FigSimpleMutexUnlock();
      CMTimebaseNotificationBarrier(v6);
      FigSimpleMutexLock();
      CFRelease(v6);
      if (*(a1 + 64) >= 1)
      {
        do
        {
          FigConditionVariableWaitRelative();
        }

        while (*(a1 + 64) > 0);
      }

      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = *(a1 + 304);
      if (v9)
      {
        CMTimebaseAddTimerDispatchSource(v8, v9);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }
  }

  FigSimpleMutexUnlock();
  return 1;
}