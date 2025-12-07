void figTTMLProfile_Finalize(uint64_t a1)
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

CFStringRef figTTMLProfile_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"profile: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLProfile_CopyChildNodeArray(const void *a1, __CFArray **a2)
{
  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 136);
    if (v7)
    {
      v8.length = CFArrayGetCount(*(DerivedStorage + 136));
    }

    else
    {
      v8.length = 0;
    }

    v8.location = 0;
    CFArrayAppendArray(Mutable, v7, v8);
    v9 = *(v6 + 144);
    if (v9)
    {
      v10.length = CFArrayGetCount(v9);
    }

    else
    {
      v10.length = 0;
    }

    v10.location = 0;
    CFArrayAppendArray(Mutable, v9, v10);
    v11 = 0;
    *a2 = Mutable;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
    v11 = v13;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v11;
}

uint64_t figTTMLProfile_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 15;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLStyling_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigManifoldCreateForMovieFragmentStream(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, CFTypeRef *a7)
{
  values = @"MovieFragmentManifoldMemoryPool";
  cf = 0;
  if (a2)
  {
    memset(v25, 0, sizeof(v25));
    v24 = 0;
    if (!FigAtomStreamInitWithBBuf())
    {
      FigAtomStreamGetCurrentAtomTypeAndDataLength();
    }

    v17 = 0;
    v20 = 4294951252;
    goto LABEL_20;
  }

  FigManifoldGetClassID();
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    v20 = v13;
    v17 = 0;
    goto LABEL_20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = cf;
  *(DerivedStorage + 40) = a3;
  *(DerivedStorage + 48) = a5;
  *(DerivedStorage + 56) = a4;
  *(DerivedStorage + 64) = a6 & 1;
  *(DerivedStorage + 65) = (a6 & 2) != 0;
  *(DerivedStorage + 288) = 0;
  v15 = FigReentrantMutexCreate();
  *(DerivedStorage + 24) = v15;
  if (!v15)
  {
    FigManifoldCreateForMovieFragmentStream_cold_3(v25);
    v17 = 0;
LABEL_18:
    v20 = LODWORD(v25[0]);
    goto LABEL_20;
  }

  v16 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69628C8], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = v16;
  if (!v16)
  {
    FigManifoldCreateForMovieFragmentStream_cold_2(v25);
    goto LABEL_18;
  }

  v18 = CMMemoryPoolCreate(v16);
  *(DerivedStorage + 16) = v18;
  if (!v18)
  {
    FigManifoldCreateForMovieFragmentStream_cold_1(v25);
    goto LABEL_18;
  }

  Empty = CMBlockBufferCreateEmpty(a1, 8u, 0, (DerivedStorage + 80));
  if (Empty)
  {
    v20 = Empty;
  }

  else
  {
    v20 = MovieInformationCreate(a1, 4, (DerivedStorage + 144));
    if (!v20)
    {
      *a7 = cf;
      cf = 0;
LABEL_11:
      CFRelease(v17);
      return v20;
    }
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    goto LABEL_11;
  }

  return v20;
}

uint64_t MovieFragmentManifoldInvalidate(const void *a1)
{
  CFRetain(a1);
  fragManifold_InvalidateGuts(a1);
  CFRelease(a1);
  return 0;
}

uint64_t MovieFragmentManifoldFinalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  fragManifold_InvalidateGuts(a1);

  return FigSimpleMutexDestroy();
}

__CFString *MovieFragmentManifoldCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v1 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"FigMovieFragmentManifold :");
  }

  return v1;
}

uint64_t MovieFragmentManifoldCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  ++*(DerivedStorage + 32);
  if (*DerivedStorage)
  {
    v8 = 0;
    Mutable = 0;
    v10 = 4294954511;
    goto LABEL_32;
  }

  if (!CFEqual(a2, @"FMFD_Asset"))
  {
    if (CFEqual(a2, @"FMFD_UnconsumedData"))
    {
      v22 = 0;
      v13 = CMBlockBufferCreateWithBufferReference(a3, *(DerivedStorage + 80), 0, *(DerivedStorage + 88), 0, &v22);
LABEL_10:
      v10 = v13;
      if (!v13)
      {
        *a4 = v22;
      }

      v8 = 0;
      Mutable = 0;
      goto LABEL_32;
    }

    if (!CFEqual(a2, @"FMFD_ParserState"))
    {
      if (!CFEqual(a2, @"FMFD_Type"))
      {
        if (CFEqual(a2, @"FMFD_IsCollectingMetaData"))
        {
          v10 = 0;
          v8 = 0;
          Mutable = 0;
          if (*(DerivedStorage + 304))
          {
            v21 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v21 = MEMORY[0x1E695E4C0];
          }

          *a4 = *v21;
          goto LABEL_32;
        }

        if (!CFEqual(a2, @"FMFD_TrackReferenceDictionary"))
        {
          v8 = 0;
          Mutable = 0;
          v10 = 4294954512;
          goto LABEL_32;
        }

        v22 = 0;
        v13 = MovieInformationCreateTrackReferenceDictionary(*MEMORY[0x1E695E480], *(DerivedStorage + 144), &v22);
        goto LABEL_10;
      }

      v11 = CFStringCreateWithCString(a3, "FMP4", 0x8000100u);
LABEL_30:
      v10 = 0;
      v8 = 0;
      Mutable = 0;
      goto LABEL_31;
    }

    LODWORD(v22) = 0;
    if (*(DerivedStorage + 138) || *(DerivedStorage + 112) == 2)
    {
      v19 = 2;
    }

    else
    {
      if (!*(DerivedStorage + 136) && !*(DerivedStorage + 137))
      {
        goto LABEL_25;
      }

      v19 = 1;
    }

    LODWORD(v22) = v19;
LABEL_25:
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v22);
    goto LABEL_30;
  }

  v12 = (DerivedStorage + 104);
  v11 = *(DerivedStorage + 104);
  if (v11)
  {
    Mutable = 0;
    v8 = 0;
LABEL_6:
    v11 = CFRetain(v11);
LABEL_7:
    v10 = 0;
LABEL_31:
    *a4 = v11;
    goto LABEL_32;
  }

  if (!*(DerivedStorage + 96))
  {
    Mutable = 0;
    v8 = 0;
    v11 = 0;
    v10 = 4294954513;
    goto LABEL_31;
  }

  LODWORD(v22) = 1450143565;
  v14 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"assetOption_RequiresInProcessOperation", *MEMORY[0x1E695E4D0]);
  v15 = CMByteStreamCreateForBlockBuffer();
  if (v15)
  {
    v10 = v15;
    v8 = 0;
  }

  else
  {
    v8 = CFNumberCreate(v14, kCFNumberSInt32Type, &v22);
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v17)
    {
      v10 = 4294954514;
      goto LABEL_32;
    }

    v18 = v17(CMBaseObject, *MEMORY[0x1E6960DC8], v8);
    if (!v18)
    {
      v18 = FigAssetCreateWithByteStream(a3, cf, 1, Mutable, (DerivedStorage + 104));
      if (!v18)
      {
        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    v10 = v18;
  }

LABEL_32:
  --*(DerivedStorage + 32);
  FigSimpleMutexUnlock();
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t MovieFragmentManifoldSetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 32);
  if (*DerivedStorage)
  {
    MovieFragmentManifoldSetProperty_cold_1(&v10);
    v8 = v10;
  }

  else if (CFEqual(a2, @"FMFD_ProhibitPrimingTrim"))
  {
    if (a3 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a3)))
    {
      Value = CFBooleanGetValue(a3);
      v8 = 0;
      *(DerivedStorage + 288) = Value;
    }

    else
    {
      v8 = 4294951256;
    }
  }

  else
  {
    v8 = 4294954512;
  }

  --*(DerivedStorage + 32);
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t fragManifold_InvalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 32);
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    fragManifold_EndAllTracks(a1, 4294954511);
    fragManifold_DisposeTracks(DerivedStorage);
    v3 = *(DerivedStorage + 144);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 144) = 0;
    }

    v4 = *(DerivedStorage + 80);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(DerivedStorage + 96);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(DerivedStorage + 104);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(DerivedStorage + 248);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 248) = 0;
    }

    v8 = *(DerivedStorage + 256);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 256) = 0;
    }

    free(*(DerivedStorage + 224));
    free(*(DerivedStorage + 232));
    v9 = *(DerivedStorage + 296);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 296) = 0;
    }

    v10 = *(DerivedStorage + 304);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 304) = 0;
    }

    v11 = *(DerivedStorage + 16);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 16) = 0;
    }
  }

  --*(DerivedStorage + 32);

  return FigSimpleMutexUnlock();
}

void fragManifold_EndAllTracks(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*(DerivedStorage + 160) && MovieInformationGetTrackCount(*(DerivedStorage + 144)) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      fragManifold_EndTrack(v4, (v4[20] + v5), a2);
      ++v6;
      v5 += 256;
    }

    while (MovieInformationGetTrackCount(v4[18]) > v6);
  }

  v7 = v4[34];
  if (v7)
  {
    fragManifold_EndTrack(v4, v7, a2);
  }

  v8 = v4[35];
  if (v8)
  {

    fragManifold_EndTrack(v4, v8, a2);
  }
}

void fragManifold_DisposeTracks(void *a1)
{
  if (a1[20])
  {
    fragManifold_UnprepareTracksForSampleEmission(a1);
    if (MovieInformationGetTrackCount(a1[18]) >= 1)
    {
      v2 = 0;
      v3 = 144;
      do
      {
        v4 = a1[20];
        v5 = *(v4 + v3 - 88);
        if (v5)
        {
          CFRelease(v5);
          v4 = a1[20];
          *(v4 + v3 - 88) = 0;
        }

        v6 = *(v4 + v3 - 80);
        if (v6)
        {
          CFRelease(v6);
          v4 = a1[20];
          *(v4 + v3 - 80) = 0;
        }

        v7 = *(v4 + v3 - 72);
        if (v7)
        {
          CFRelease(v7);
          *(a1[20] + v3 - 72) = 0;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        v8 = a1[20];
        v9 = *(v8 + v3);
        if (v9)
        {
          CFRelease(v9);
          v8 = a1[20];
          *(v8 + v3) = 0;
        }

        v10 = *(v8 + v3 + 8);
        if (v10)
        {
          CFRelease(v10);
          v8 = a1[20];
          *(v8 + v3 + 8) = 0;
        }

        v11 = *(v8 + v3 - 104);
        if (v11)
        {
          CFRelease(v11);
          *(a1[20] + v3 - 104) = 0;
        }

        ++v2;
        v3 += 256;
      }

      while (v2 < MovieInformationGetTrackCount(a1[18]));
    }

    v12 = a1[34];
    if (v12)
    {
      if (v12[8])
      {
        CFRelease(v12[8]);
        v12 = a1[34];
        v12[8] = 0;
      }

      a1[34] = 0;
      free(v12);
    }

    v13 = a1[35];
    if (v13)
    {
      if (v13[8])
      {
        CFRelease(v13[8]);
        v13 = a1[35];
        v13[8] = 0;
      }

      a1[35] = 0;
      free(v13);
    }

    v14 = a1[20];
    if (v14)
    {
      a1[20] = 0;

      free(v14);
    }
  }
}

void fragManifold_EndTrack(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    *(a2 + 3) = 0;
    v7 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v7 >= 1)
    {
      v8 = v7;
      do
      {
        FigSimpleMutexUnlock();
        --v8;
      }

      while (v8);
    }

    v3(*(a1 + 8), *a2, *(a2 + 4), a3);
    do
    {
      FigSimpleMutexLock();
      v9 = *(a1 + 32) + 1;
      *(a1 + 32) = v9;
    }

    while (v9 < v7);
  }
}

uint64_t fragManifold_UnprepareTracksForSampleEmission(uint64_t result)
{
  if (*(result + 160))
  {
    v1 = result;
    result = MovieInformationGetTrackCount(*(result + 144));
    if (result >= 1)
    {
      v2 = 0;
      for (i = 0; i < result; ++i)
      {
        v4 = v1[20];
        v5 = *(v4 + v2 + 40);
        if (v5)
        {
          MovieTrackDisposeFragments(v5);
          v4 = v1[20];
        }

        MovieSampleAccessorDispose(*(v4 + v2 + 168));
        *(v1[20] + v2 + 168) = 0;
        result = MovieInformationGetTrackCount(v1[18]);
        v2 += 256;
      }
    }

    *(v1[18] + 184) = 0;
    v1[22] = 0;
    v1[23] = 0;
  }

  return result;
}

uint64_t fragManifold_ObtainTrackByID(uint64_t *a1, int a2, void *a3)
{
  v6 = a1[34];
  if (v6 && *v6 == a2 || (v6 = a1[35]) != 0 && *v6 == a2)
  {
LABEL_11:
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (MovieInformationGetTrackCount(a1[18]) < 1)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = a1[20];
    if (v9)
    {
      if (*(v9 + v7) == a2)
      {
        break;
      }
    }

    ++v8;
    v7 += 256;
    if (MovieInformationGetTrackCount(a1[18]) <= v8)
    {
      goto LABEL_10;
    }
  }

  v6 = (v9 + v7);
  if (a3)
  {
LABEL_12:
    *a3 = v6;
  }

LABEL_13:
  if (v6)
  {
    return 0;
  }

  else
  {
    return 4294951254;
  }
}

uint64_t MovieFragmentManifoldInjectData(const void *a1, uint64_t a2, char a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    MovieFragmentManifoldInjectData_cold_3(v23);
    return v23[0];
  }

  v8 = DerivedStorage;
  CFRetain(a1);
  CFRetain(a4);
  FigSimpleMutexLock();
  ++*(v8 + 32);
  if (*v8)
  {
    MovieFragmentManifoldInjectData_cold_1(v23);
LABEL_46:
    v21 = v23[0];
    goto LABEL_40;
  }

  if (*(v8 + 1))
  {
    MovieFragmentManifoldInjectData_cold_2(v23);
    goto LABEL_46;
  }

  *(v8 + 1) = 1;
  if (a3)
  {
    v9 = ConsumeBufferedBytes(v8, *(v8 + 88));
    if (v9)
    {
      goto LABEL_42;
    }

    *(v8 + 72) = 0;
    fragManifold_UnprepareTracksForSampleEmission(v8);
    *(v8 + 112) = 0;
    *(v8 + 138) = 0;
  }

  v10 = CMGetAttachment(a4, @"FMFD_BufferDecryptor", 0);
  v11 = CMGetAttachment(a4, @"FMFD_BufferAudioDecryptor", 0);
  if (!FigCFEqual() || !FigCFEqual())
  {
    v12 = *(v8 + 248);
    *(v8 + 248) = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(v8 + 256);
    *(v8 + 256) = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(v8 + 264);
    *(v8 + 264) = 0;
    if (*(v8 + 248))
    {
      FigBasicAESCPECryptorGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        *(v8 + 264) = 1;
        if (MovieInformationGetTrackCount(*(v8 + 144)) >= 1)
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v9 = fragManifold_SetTrackLatestFormatDescription(v8, *(v8 + 160) + v15, *(*(v8 + 160) + v15 + 64));
            if (v9)
            {
              goto LABEL_42;
            }

            v9 = fragManifold_CallFormatDescriptionCallback(v8, (*(v8 + 160) + v15));
            if (v9)
            {
              goto LABEL_42;
            }

            ++v16;
            v15 += 256;
          }

          while (v16 < MovieInformationGetTrackCount(*(v8 + 144)));
        }
      }

      else if (*(v8 + 160) && MovieInformationGetTrackCount(*(v8 + 144)) >= 1)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = *(v8 + 160) + v17;
          *(v19 + 82) = 1;
          if (v14)
          {
            v9 = fragManifold_SetTrackLatestFormatDescription(v8, v19, *(v19 + 56));
            if (v9)
            {
              goto LABEL_42;
            }
          }

          ++v18;
          v17 += 256;
        }

        while (v18 < MovieInformationGetTrackCount(*(v8 + 144)));
      }
    }
  }

  if (CMBlockBufferGetDataLength(a4))
  {
    v9 = fragManifold_PushBytes(v8);
    if (!v9)
    {
      if ((a3 & 2) != 0 && (*(v8 + 88) || *(v8 + 176)))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_39;
    }

LABEL_42:
    v21 = v9;
    goto LABEL_40;
  }

LABEL_39:
  v21 = 0;
LABEL_40:
  *(v8 + 1) = 0;
  --*(v8 + 32);
  FigSimpleMutexUnlock();
  CFRelease(a4);
  CFRelease(a1);
  return v21;
}

uint64_t MovieFragmentManifoldNoteStreamEnd(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 32);
  if (*DerivedStorage)
  {
    MovieFragmentManifoldNoteStreamEnd_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    *(DerivedStorage + 2) = 1;
    fragManifold_EndAllTracks(a1, a2);
    v5 = 0;
  }

  --*(DerivedStorage + 32);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v5;
}

uint64_t ConsumeBufferedBytes(CMBlockBufferRef *blockBufferOut, CMBlockBufferRef a2)
{
  if (blockBufferOut[11] == a2)
  {
    v5 = blockBufferOut + 10;
    v4 = blockBufferOut[10];
    if (v4)
    {
      CFRelease(v4);
      *v5 = 0;
    }

    CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 8u, 0, blockBufferOut + 10);
  }

  else
  {
    blockBufferOuta = 0;
    v6 = blockBufferOut[10];
    CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 8u, 0, &blockBufferOuta);
    result = CMBlockBufferAppendBufferReference(blockBufferOuta, v6, a2, 0, 0);
    if (result)
    {
      return result;
    }

    blockBufferOut[10] = blockBufferOuta;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v8 = blockBufferOut[10];
  blockBufferOut[9] = (a2 + blockBufferOut[9]);
  DataLength = CMBlockBufferGetDataLength(v8);
  result = 0;
  blockBufferOut[11] = DataLength;
  return result;
}

uint64_t fragManifold_SelectEligibleTrackForEmitting(uint64_t *a1)
{
  if (a1[20])
  {
    TrackCount = MovieInformationGetTrackCount(a1[18]);
    if (TrackCount < 1)
    {
      return 0;
    }

    v3 = 0;
    v4 = a1[20];
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (*(v4 + 168))
      {
        if (*(v4 + 184) < v5)
        {
          v3 = v4;
          v5 = *(v4 + 184);
        }
      }

      v4 += 256;
      --TrackCount;
    }

    while (TrackCount);
    if (v3)
    {
      result = 0;
      a1[21] = v3;
      *(v3 + 248) = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fragManifold_SelectEligibleTrackForEmitting_cold_1(&v7);
    return v7;
  }

  return result;
}

CMTime *OUTLINED_FUNCTION_2_201(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, CMTime *rhs, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __int128 a53, __int128 rhsa, CMTime *lhs, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __int128 a61, CMTime *a62, uint64_t a63)
{
  rhsa = a61;
  lhs = a62;

  return CMTimeAdd((v64 - 160), &lhsa, &rhsa);
}

void *OUTLINED_FUNCTION_13_62(size_t a1)
{

  return malloc_type_calloc(a1, 0x100uLL, 0x10E00401C2CD5CEuLL);
}

uint64_t OUTLINED_FUNCTION_15_62(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *blockBufferOut, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CMBlockBufferCreateWithMemoryBlock(v66, 0, v65, v66, 0, 0, a1, 1u, &a65);
}

uint64_t OUTLINED_FUNCTION_19_49()
{
  --*(v0 + 32);

  return FigSimpleMutexUnlock();
}

void *OUTLINED_FUNCTION_21_42(uint64_t a1)
{
  *(v1 + 224) = a1;
  v3 = 8 * *(v1 + 216);

  return malloc_type_malloc(v3, 0x100004000313F17uLL);
}

CMTime *OUTLINED_FUNCTION_22_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CMTime *lhs, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, CMTime *a61, uint64_t a62, uint64_t a63)
{
  *(v66 - 128) = *(v65 + 96);
  *(v66 - 112) = *(v65 + 112);

  return CMTimeAdd(&a65, &lhsa, (v66 - 128));
}

uint64_t OUTLINED_FUNCTION_26_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(*(v65 + 168) + 168);
  a65 = 0;
  v68 = *v67;
  v69 = *(v67 + 8);

  return MovieSampleAccessorCreate(v68, v69, &a65);
}

uint64_t OUTLINED_FUNCTION_30_31(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, size_t a4, uint64_t a5, CMBlockBufferRef *a6)
{

  return CMBlockBufferCreateWithBufferReference(v6, a2, 0, a4, 0, a6);
}

__n128 OUTLINED_FUNCTION_32_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a43, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __n128 a44, uint64_t a45)
{
  result = a44;
  *(v45 - 160) = a44;
  *(v45 - 144) = a45;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_31()
{

  return CMBaseObjectGetVTable();
}

BOOL OUTLINED_FUNCTION_39_26(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, os_log_type_t type, int a62, int a63)
{

  return os_log_type_enabled(a1, type);
}

void FigMovieGetSampleDependencyFlagsFromSampleAttachments(uint64_t result, char *a2, _BYTE *a3, _BYTE *a4)
{
  if (a2)
  {
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      v7 |= 8u;
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      v7 |= 0x20u;
    }

    *a2 = v7;
  }

  if (a3)
  {
    FigCFDictionaryGetBooleanIfPresent();
    *a3 = 0;
  }

  if (a4)
  {
    FigCFDictionaryGetBooleanIfPresent();
    *a4 = 0;
  }
}

double FigMovieGetVideoDefaultTrackDimensionsFromFormatDescription(const opaqueCMFormatDescription *a1, int a2)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (!a2)
  {
    if (MediaSubType <= 1685480223)
    {
      if (MediaSubType == 1685468526)
      {
        return CMVideoFormatDescriptionGetDimensions(a1).width;
      }

      v8 = 13680;
    }

    else
    {
      if (MediaSubType == 1685480224 || MediaSubType == 1685483632)
      {
        return CMVideoFormatDescriptionGetDimensions(a1).width;
      }

      v8 = 25456;
    }

    if (MediaSubType != (v8 | 0x64760000))
    {
      v5 = a1;
      v6 = 0;
      goto LABEL_3;
    }

    return CMVideoFormatDescriptionGetDimensions(a1).width;
  }

  v5 = a1;
  v6 = 1;
LABEL_3:

  *&result = *&CMVideoFormatDescriptionGetPresentationDimensions(v5, 1u, v6);
  return result;
}

uint64_t FigMovieCreateContiguousBBufFromNonContiguousAudioSample(opaqueCMSampleBuffer *a1, const __CFAllocator *a2, CMBlockBufferRef *a3, const __CFAllocator *a4, uint64_t *a5, void *a6)
{
  v40 = 0;
  packetDescriptionsPointerOut = 0;
  blockBufferOut = 0;
  packetDescriptionsSizeOut = 0;
  if (a1)
  {
    if (a3)
    {
      if (a5)
      {
        if (a6)
        {
          FormatDescription = CMSampleBufferGetFormatDescription(a1);
          MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
          DataBuffer = CMSampleBufferGetDataBuffer(a1);
          if (MediaType == 1936684398)
          {
            v15 = DataBuffer;
            if (DataBuffer)
            {
              AudioStreamPacketDescriptionsPtr = isNonInterleavedPCMAudioFormatDescription(FormatDescription, &v40);
              if (AudioStreamPacketDescriptionsPtr)
              {
                goto LABEL_33;
              }

              if (!v40)
              {
                AudioStreamPacketDescriptionsPtr = CMBlockBufferCreateEmpty(a2, 0, 0, &blockBufferOut);
                if (!AudioStreamPacketDescriptionsPtr)
                {
                  AudioStreamPacketDescriptionsPtr = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(a1, &packetDescriptionsPointerOut, &packetDescriptionsSizeOut);
                  if (!AudioStreamPacketDescriptionsPtr)
                  {
                    if (packetDescriptionsSizeOut <= 0xF)
                    {
                      FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_4(&v41);
                    }

                    else
                    {
                      v17 = packetDescriptionsSizeOut >> 4;
                      v18 = 8 * (packetDescriptionsSizeOut >> 4);
                      v19 = MEMORY[0x19A8CC720](a4, v18, 1400899305, 0);
                      if (v19)
                      {
                        v20 = v19;
                        v34 = a3;
                        v35 = a5;
                        v36 = a6;
                        allocator = a4;
                        v21 = 0;
                        v22 = 0;
                        v23 = 0;
                        v24 = 0;
                        v25 = 0;
                        v26 = 1;
                        while (1)
                        {
                          mStartOffset = packetDescriptionsPointerOut[v21].mStartOffset;
                          mDataByteSize = packetDescriptionsPointerOut[v21].mDataByteSize;
                          if (!v22 || v23 != mStartOffset)
                          {
                            if (v24)
                            {
                              appended = CMBlockBufferAppendBufferReference(blockBufferOut, v15, v25, v24, 0);
                              if (appended)
                              {
                                v30 = appended;
                                goto LABEL_32;
                              }

                              v24 = 0;
                            }

                            v25 = mStartOffset;
                          }

                          v20[v22 / 8] = mDataByteSize;
                          if (v26)
                          {
                            if (*v20 != mDataByteSize)
                            {
                              v26 = 0;
                            }
                          }

                          else
                          {
                            v26 = 0;
                          }

                          v24 += mDataByteSize;
                          v23 = mStartOffset + mDataByteSize;
                          v22 += 8;
                          ++v21;
                          if (v18 == v22)
                          {
                            v30 = CMBlockBufferAppendBufferReference(blockBufferOut, v15, v25, v24, 0);
                            if (!v30)
                            {
                              *v34 = blockBufferOut;
                              if (v26)
                              {
                                v31 = 1;
                              }

                              else
                              {
                                v31 = v17;
                              }

                              *v35 = v31;
                              *v36 = v20;
                              return v30;
                            }

LABEL_32:
                            CFAllocatorDeallocate(allocator, v20);
                            goto LABEL_44;
                          }
                        }
                      }

                      FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_3(&v41);
                    }

                    goto LABEL_43;
                  }
                }

LABEL_33:
                v30 = AudioStreamPacketDescriptionsPtr;
                goto LABEL_44;
              }

              FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_2(&v41);
            }

            else
            {
              MTSidebandVideoPropertiesSetValue_cold_4(&v41);
            }
          }

          else
          {
            FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_1(&v41);
          }
        }

        else
        {
          FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_6(&v41);
        }
      }

      else
      {
        FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_7(&v41);
      }
    }

    else
    {
      FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_8(&v41);
    }
  }

  else
  {
    FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements_cold_1(&v41);
  }

LABEL_43:
  v30 = v41;
LABEL_44:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v30;
}

uint64_t isNonInterleavedPCMAudioFormatDescription(const opaqueCMFormatDescription *a1, _BYTE *a2)
{
  if (CMFormatDescriptionGetMediaType(a1) != 1936684398)
  {
    goto LABEL_5;
  }

  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  if (!MostCompatibleFormat)
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_color_cold_1(&v7);
    return v7;
  }

  if (MostCompatibleFormat->mASBD.mFormatID == 1819304813)
  {
    v5 = (LOBYTE(MostCompatibleFormat->mASBD.mFormatFlags) >> 5) & 1;
  }

  else
  {
LABEL_5:
    LOBYTE(v5) = 0;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t FigMovieIsNonInterleavedPCMAudioSample(opaqueCMSampleBuffer *a1, _BYTE *a2)
{
  if (a1)
  {
    if (a2)
    {
      FormatDescription = CMSampleBufferGetFormatDescription(a1);

      return isNonInterleavedPCMAudioFormatDescription(FormatDescription, a2);
    }

    else
    {
      FigTTMLSerializerCreateForByteStream_cold_4(&v5);
      return v5;
    }
  }

  else
  {
    FigMovieIsNonInterleavedPCMAudioSample_cold_2(&v6);
    return v6;
  }
}

uint64_t FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment(uint64_t a1, _WORD *a2, BOOL *a3, _BYTE *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v7 = FigCFDictionaryGetInt16IfPresent() != 0;
          FigCFDictionaryGetBooleanIfPresent();
          result = 0;
          *a2 = 0;
          *a3 = v7;
          *a4 = 0;
          return result;
        }

        FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment_cold_1(&v9);
      }

      else
      {
        FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment_cold_2(&v9);
      }
    }

    else
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_ZIndex_cold_1(&v9);
    }
  }

  else
  {
    FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment_cold_4(&v9);
  }

  return v9;
}

uint64_t FigMovieCopySeamIdentifierFromSampleAttachment(const __CFDictionary *a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigMovieCopySeamIdentifierFromSampleAttachment_cold_2(&v8);
    return v8;
  }

  if (!a2)
  {
    FigMovieCopySeamIdentifierFromSampleAttachment_cold_1(&v8);
    return v8;
  }

  if (CFDictionaryGetValueIfPresent(a1, *MEMORY[0x1E6962DD8], &cf))
  {
    v3 = cf == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    v5 = CFRetain(cf);
    result = 0;
    *a2 = v5;
  }

  return result;
}

uint64_t FigMovieGetSeamUUIDBytesFromSampleAttachmentArray(const __CFArray *a1, CFIndex a2, CFUUIDBytes *a3)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (FigMovieCopySeamIdentifierFromSampleAttachment(ValueAtIndex, &cf))
  {
    goto LABEL_3;
  }

  if (!cf)
  {
    return 0;
  }

  if (CFStringGetLength(cf) >= 36)
  {
    v7 = CFGetAllocator(cf);
    v8 = CFUUIDCreateFromString(v7, cf);
    v6 = v8;
    if (v8)
    {
      *a3 = CFUUIDGetUUIDBytes(v8);
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_4;
  }

LABEL_3:
  v5 = 0;
  v6 = 0;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment(uint64_t a1, _WORD *a2, BOOL *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (FigCFDictionaryGetInt16IfPresent())
        {
          FigCFDictionaryGetBooleanIfPresent();
        }

        result = 0;
        *a2 = 0;
        *a3 = 0;
      }

      else
      {
        FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t FigMovieGetVideoSyncSampleEntryFromSampleAttachment(uint64_t a1, _BYTE *a2, BOOL *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = FigCFDictionaryGetIntIfPresent() != 0;
        result = 0;
        *a2 = 0;
        *a3 = v5;
        return result;
      }

      FigMovieGetVideoSyncSampleEntryFromSampleAttachment_cold_2(&v7);
    }

    else
    {
      FigMovieGetVideoSyncSampleEntryFromSampleAttachment_cold_3(&v7);
    }
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FontStyle_cold_1(&v7);
  }

  return v7;
}

uint64_t FigMovieGetVideoTemporalLayerEntryFromSampleAttachment(const __CFDictionary *a1, uint64_t a2, char *a3)
{
  v17 = 0;
  v16 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6960438]);
        if (!Value)
        {
          v12 = 0;
          v14 = 0;
          goto LABEL_18;
        }

        if (FigCFDictionaryGetIntIfPresent())
        {
          if (FigCFDictionaryGetIntIfPresent())
          {
            if (FigCFDictionaryGetIntIfPresent())
            {
              if (FigCFDictionaryGetIntIfPresent())
              {
                v6 = CFDictionaryGetValue(Value, *MEMORY[0x1E69601A0]);
                if (v6 && (v7 = v6, v8 = CFGetTypeID(v6), v8 == CFDataGetTypeID()))
                {
                  if (CFDataGetLength(v7) == 4)
                  {
                    v9 = CFDictionaryGetValue(Value, *MEMORY[0x1E6960190]);
                    if (v9 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CFDataGetTypeID()))
                    {
                      if (CFDataGetLength(v10) == 6)
                      {
                        if (FigCFDictionaryGetIntIfPresent())
                        {
                          LOBYTE(Value) = 0;
                          v12 = *CFDataGetBytePtr(v7);
                          BytePtr = CFDataGetBytePtr(v10);
                          v16 = *BytePtr;
                          v17 = *(BytePtr + 2);
                          v14 = 1;
LABEL_18:
                          result = 0;
                          *a2 = Value;
                          *(a2 + 1) = 0;
                          *(a2 + 2) = v12;
                          *(a2 + 6) = v16;
                          *(a2 + 10) = v17;
                          *(a2 + 12) = 0;
                          *(a2 + 13) = 0;
                          *(a2 + 16) = 0;
                          *a3 = v14;
                          return result;
                        }

                        FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_4(&v18);
                      }

                      else
                      {
                        FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_2(&v18);
                      }
                    }

                    else
                    {
                      FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_5(&v18);
                    }
                  }

                  else
                  {
                    FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_1(&v18);
                  }
                }

                else
                {
                  FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_6(&v18);
                }
              }

              else
              {
                FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_8(&v18);
              }
            }

            else
            {
              FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_10(&v18);
            }
          }

          else
          {
            FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_12(&v18);
          }
        }

        else
        {
          FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_14(&v18);
        }
      }

      else
      {
        FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_15(&v18);
      }
    }

    else
    {
      FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_16(&v18);
    }
  }

  else
  {
    FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_17(&v18);
  }

  return v18;
}

uint64_t FigMetricErrorEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, char a5, const void *a6, CFTypeRef *a7)
{
  ensureMetricEventTrace();
  if (!a7)
  {
    FigMetricErrorEventCreateInternal_cold_1(v27);
    return v27[0];
  }

  FigMetricEventGetClassID();
  v14 = CMDerivedObjectCreate();
  v15 = 0;
  if (!v14)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v17 = FigSimpleMutexCreate();
    *(DerivedStorage + 72) = v17;
    if (v17)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 13;
      if (a3)
      {
        v18 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v18 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v18;
      v20 = *a2;
      *(DerivedStorage + 48) = *(a2 + 2);
      *(DerivedStorage + 32) = v20;
      if (a4)
      {
        v21 = CFRetain(a4);
      }

      else
      {
        v21 = 0;
      }

      *(DerivedStorage + 24) = v21;
      if (a6)
      {
        v22 = CFRetain(a6);
      }

      else
      {
        v22 = 0;
      }

      v14 = 0;
      *(DerivedStorage + 64) = v22;
      *(DerivedStorage + 56) = a5;
      *a7 = 0;
      return v14;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v26, v27[1]);
    v14 = v24;
    v15 = cf;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v14;
}

uint64_t mee_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexDestroy();
}

uint64_t mee_setImmutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t mee_isMutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v2;
}

CFTypeRef mee_copySessionID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t mee_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    mee_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t mee_getMediaTime@<X0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 32);
  *(a2 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t mee_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    mee_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

BOOL closedCaptionHasPrefix(const __CFString *a1, const __CFString *a2)
{
  Length = CFStringGetLength(a1);
  if (Length < CFStringGetLength(a2))
  {
    return 0;
  }

  v8.length = CFStringGetLength(a2);
  v8.location = 0;
  v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v8);
  v5 = CFStringCompare(v6, a2, 1uLL) == kCFCompareEqualTo;
  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

__n128 FigCaptionLayoutClearMAXCaptionSettings(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 48) = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 72) = 0;
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 80) = 0;
  }

  v12 = *(a1 + 88);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 88) = 0;
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 96) = 0;
  }

  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 120) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 104) = result;
  *(a1 + 136) = 0;
  return result;
}

void FigCaptionLayoutCopyMAXCaptionSystemSettings(uint64_t a1)
{
  v43 = kMACaptionAppearanceBehaviorUseValue;
  behavior[0] = kMACaptionAppearanceBehaviorUseValue;
  v41 = kMACaptionAppearanceBehaviorUseValue;
  v42 = 1;
  v39 = kMACaptionAppearanceBehaviorUseValue;
  v40 = kMACaptionAppearanceBehaviorUseValue;
  v37 = kMACaptionAppearanceBehaviorUseValue;
  v38 = kMACaptionAppearanceBehaviorUseValue;
  v2 = MACaptionAppearanceCopyForegroundColor(kMACaptionAppearanceDomainUser, behavior);
  cf = MACaptionAppearanceCopyBackgroundColor(kMACaptionAppearanceDomainUser, &v43);
  v35 = MACaptionAppearanceCopyStrokeColor();
  v34 = MACaptionAppearanceCopyWindowColor(kMACaptionAppearanceDomainUser, &v41);
  WindowRoundedCornerRadius = MACaptionAppearanceGetWindowRoundedCornerRadius(kMACaptionAppearanceDomainUser, 0);
  v4 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleDefault);
  v33 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleMonospacedWithSerif);
  v5 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleProportionalWithSerif);
  v6 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleMonospacedWithoutSerif);
  v7 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleProportionalWithoutSerif);
  v8 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleCasual);
  v9 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleCursive);
  v10 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleSmallCapital);
  ForegroundOpacity = MACaptionAppearanceGetForegroundOpacity(kMACaptionAppearanceDomainUser, 0);
  BackgroundOpacity = MACaptionAppearanceGetBackgroundOpacity(kMACaptionAppearanceDomainUser, &v40);
  WindowOpacity = MACaptionAppearanceGetWindowOpacity(kMACaptionAppearanceDomainUser, &v39);
  RelativeCharacterSize = MACaptionAppearanceGetRelativeCharacterSize(kMACaptionAppearanceDomainUser, &v38);
  TextEdgeStyle = MACaptionAppearanceGetTextEdgeStyle(kMACaptionAppearanceDomainUser, &v37);
  v15 = *a1;
  *a1 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 8);
  *(a1 + 8) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 16);
  *(a1 + 16) = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 24);
  *(a1 + 24) = v34;
  if (v34)
  {
    CFRetain(v34);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 48);
  *(a1 + 48) = v33;
  if (v33)
  {
    CFRetain(v33);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 56);
  *(a1 + 56) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 64);
  *(a1 + 64) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 72);
  *(a1 + 72) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 80);
  *(a1 + 80) = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 88);
  *(a1 + 88) = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 96);
  *(a1 + 96) = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  *(a1 + 32) = WindowRoundedCornerRadius;
  *(a1 + 120) = BackgroundOpacity;
  *(a1 + 128) = WindowOpacity;
  *(a1 + 104) = RelativeCharacterSize;
  *(a1 + 112) = ForegroundOpacity;
  v27 = v43;
  v28 = behavior[0];
  *(a1 + 136) = TextEdgeStyle;
  *(a1 + 144) = v28;
  v29 = v42;
  *(a1 + 152) = v27;
  *(a1 + 160) = v29;
  v30 = v41;
  *(a1 + 168) = v40;
  *(a1 + 176) = v30;
  v31 = v38;
  *(a1 + 184) = v39;
  *(a1 + 192) = v31;
  *(a1 + 200) = v37;
  if (v4)
  {
    CFRelease(v4);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

int64x2_t FigCaptionLayoutGetMAXSettingsForPreferringContentAsAuthored@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 104) = _Q0;
  *(a1 + 120) = _Q0;
  *(a1 + 136) = xmmword_196E73090;
  result = vdupq_n_s64(1uLL);
  *(a1 + 152) = result;
  *(a1 + 168) = result;
  *(a1 + 184) = result;
  *(a1 + 200) = 1;
  return result;
}

double FigCaptionLayoutCellSizeForRect(int a1, double a2, double a3, double a4, double a5)
{
  v5 = 16.0;
  if (a1 != 1)
  {
    v5 = 4.0;
  }

  v6 = 9.0;
  if (a1 != 1)
  {
    v6 = 3.0;
  }

  v7 = a5 * v5 / v6;
  if (v7 > a4)
  {
    v7 = v5 * (a4 * v6 / v5) / v6;
  }

  v8 = v7 * 0.800000012;
  v9 = 32.0;
  if (a1 == 1)
  {
    v9 = 42.0;
  }

  return v8 / v9;
}

CTFontRef FigCaptionLayoutCreateCTFontWithOptions(__CFString *a1, int a2, CGFloat a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v4 = a2 != 0;
  v5 = *MEMORY[0x1E6965808];
  v6 = @"CourierNewPSMT";
  if (a1)
  {
    v6 = a1;
  }

  values = v6;
  keys[0] = v5;
  v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = CTFontDescriptorCreateWithAttributes(v7);
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v8, v4, 3u);
  if (!CopyWithSymbolicTraits)
  {
    if (!v8)
    {
      v11 = CTFontCreateWithFontDescriptor(0, a3, 0);
      if (!v7)
      {
        return v11;
      }

      goto LABEL_11;
    }

    v12 = CFRetain(v8);
    v11 = CTFontCreateWithFontDescriptor(v12, a3, 0);
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_9;
  }

  v10 = CopyWithSymbolicTraits;
  v11 = CTFontCreateWithFontDescriptor(CopyWithSymbolicTraits, a3, 0);
  CFRelease(v10);
  if (v8)
  {
LABEL_9:
    CFRelease(v8);
  }

  if (v7)
  {
LABEL_11:
    CFRelease(v7);
  }

  return v11;
}

CGFloat FigCaptionLayoutStandardCaptionRect(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = 16.0;
  if (a1 == 1)
  {
    v10 = 9.0;
  }

  else
  {
    v9 = 4.0;
    v10 = 3.0;
  }

  v11 = a5 * v9 / v10;
  v12 = a5;
  if (v11 > a4)
  {
    v12 = a4 * v10 / v9;
    v11 = v9 * v12 / v10;
  }

  v13 = v12 * 0.800000012;
  v14 = v11 * 0.800000012;
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  Width = CGRectGetWidth(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = v14;
  v19.size.height = v13;
  v16 = a2 + (Width - CGRectGetWidth(v19)) * 0.5;
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetHeight(v20);
  v21.origin.x = v16;
  v21.origin.y = a3;
  v21.size.width = v14;
  v21.size.height = v13;
  CGRectGetHeight(v21);
  return v16;
}

double FigCaptionLayoutExpandedCaptionRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = CGRectGetWidth(*&a1) * 0.1;
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v9 = CGRectGetHeight(v16) * 0.1;
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;

  *&result = CGRectInset(*&v10, v8, v9);
  return result;
}

uint64_t cclayout_printCFDataRects(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFArrayGetTypeID())
  {
    if (a1)
    {
      Count = CFArrayGetCount(a1);
      result = fprintf(*MEMORY[0x1E69E9858], "numValues %d\n", Count);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          result = cclayout_printCFDataRects(ValueAtIndex);
        }
      }
    }

    else
    {
      return fprintf(*MEMORY[0x1E69E9858], "numValues %d\n");
    }
  }

  else
  {
    v7 = CFGetTypeID(a1);
    result = CFDataGetTypeID();
    if (v7 == result)
    {
      BytePtr = CFDataGetBytePtr(a1);
      v9 = *BytePtr;
      v10 = *(BytePtr + 1);
      v11 = *(BytePtr + 2);
      v12 = *(BytePtr + 3);
      v13 = *MEMORY[0x1E69E9858];
      v14.origin.x = *BytePtr;
      v14.origin.y = v10;
      v14.size.width = v11;
      v14.size.height = v12;
      CGRectGetMinX(v14);
      v15.origin.x = v9;
      v15.origin.y = v10;
      v15.size.width = v11;
      v15.size.height = v12;
      CGRectGetMinY(v15);
      v16.origin.x = v9;
      v16.origin.y = v10;
      v16.size.width = v11;
      v16.size.height = v12;
      CGRectGetMaxX(v16);
      v17.origin.x = v9;
      v17.origin.y = v10;
      v17.size.width = v11;
      v17.size.height = v12;
      CGRectGetMaxY(v17);
      v18.origin.x = v9;
      v18.origin.y = v10;
      v18.size.width = v11;
      v18.size.height = v12;
      CGRectGetWidth(v18);
      v19.origin.x = v9;
      v19.origin.y = v10;
      v19.size.width = v11;
      v19.size.height = v12;
      CGRectGetHeight(v19);
      return fprintf(v13, "Rect minX:%f minY:%f maxX:%f maxY:%f width:%f height:%f\n");
    }
  }

  return result;
}

CFAttributedStringRef FigCaptionLayoutCreateJoinedStringFromElementWithSeparator(CFArrayRef theArray, const __CFString *a2)
{
  v2 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v4 = *MEMORY[0x1E695E480];
  aStr = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFAttributedStringBeginEditing(aStr);
  if (Count < 1)
  {
    goto LABEL_74;
  }

  v5 = 0;
  v51 = v2;
  alloc = v4;
  v54 = Count;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    v7 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v8 = CFArrayGetCount(ValueAtIndex);
    }

    else
    {
      v8 = 0;
    }

    Mutable = CFAttributedStringCreateMutable(v4, 0);
    CFAttributedStringBeginEditing(Mutable);
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = CFArrayGetValueAtIndex(v7, i);
        Value = CFDictionaryGetValue(v11, @"S");
        v71.location = CFAttributedStringGetLength(Mutable);
        v71.length = 0;
        CFAttributedStringReplaceAttributedString(Mutable, v71, Value);
      }
    }

    CFAttributedStringEndEditing(Mutable);
    String = CFAttributedStringGetString(Mutable);
    Length = CFStringGetLength(String);
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
    theString = String;
    v67 = 0;
    v68 = Length;
    CharactersPtr = CFStringGetCharactersPtr(String);
    CStringPtr = 0;
    v65 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(String, 0x600u);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *buffer = 0u;
    v57 = 0u;
    v66 = CStringPtr;
    v69 = 0;
    v70 = 0;
    if (Length < 1)
    {
      v19 = 0;
      v31 = 0;
      goto LABEL_66;
    }

    v18 = 0;
    v19 = 0;
    v20 = 64;
    while (1)
    {
      v21 = v19 >= 4 ? 4 : v19;
      v22 = v68;
      if (v68 <= v19)
      {
        v24 = 0;
      }

      else
      {
        if (v65)
        {
          v23 = &v65[v67];
LABEL_22:
          v24 = v23[v19];
          goto LABEL_24;
        }

        if (!v66)
        {
          v25 = v69;
          if (v70 <= v19 || v69 > v19)
          {
            v27 = v21 + v18;
            v28 = v20 - v21;
            v29 = v19 - v21;
            v30 = v29 + 64;
            if (v29 + 64 >= v68)
            {
              v30 = v68;
            }

            v69 = v29;
            v70 = v30;
            if (v68 >= v28)
            {
              v22 = v28;
            }

            v72.location = v29 + v67;
            v72.length = v22 + v27;
            CFStringGetCharacters(theString, v72, buffer);
            v25 = v69;
          }

          v23 = &buffer[-v25];
          goto LABEL_22;
        }

        v24 = v66[v67 + v19];
      }

LABEL_24:
      if (!CFCharacterSetIsCharacterMember(Predefined, v24))
      {
        break;
      }

      ++v19;
      --v18;
      ++v20;
      if (Length == v19)
      {
        goto LABEL_41;
      }
    }

    if (Length == v19)
    {
LABEL_41:
      v31 = 0;
      v19 = Length;
      goto LABEL_66;
    }

    v31 = 0;
    v32 = -Length;
    v33 = Length + 64;
    v34 = Length;
    while (1)
    {
      v35 = v34 >= 5 ? 5 : v34;
      v36 = v68;
      if (v68 >= v34)
      {
        if (v65)
        {
          v37 = v65[v67 - 1 + v34];
        }

        else if (v66)
        {
          v37 = v66[v67 - 1 + v34];
        }

        else
        {
          v38 = v69;
          if (v70 < v34 || v69 >= v34)
          {
            v40 = v35 + v32;
            v41 = v33 - v35;
            v42 = v34 - v35;
            v43 = v42 + 64;
            if (v42 + 64 >= v68)
            {
              v43 = v68;
            }

            v69 = v42;
            v70 = v43;
            if (v68 >= v41)
            {
              v36 = v41;
            }

            v73.location = v42 + v67;
            v73.length = v36 + v40;
            CFStringGetCharacters(theString, v73, buffer);
            v38 = v69;
          }

          v37 = buffer[v34 - 1 - v38];
        }
      }

      else
      {
        v37 = 0;
      }

      if (!CFCharacterSetIsCharacterMember(Predefined, v37))
      {
        break;
      }

      ++v31;
      ++v32;
      --v33;
      if (!--v34)
      {
        v31 = Length;
        break;
      }
    }

    v2 = v51;
LABEL_66:
    v76.length = Length - (v19 + v31);
    v4 = alloc;
    v76.location = v19;
    v44 = CFAttributedStringCreateWithSubstring(alloc, Mutable, v76);
    if (v5)
    {
      Attributes = CFAttributedStringGetAttributes(Mutable, 0, 0);
      v46 = CFAttributedStringCreate(alloc, a2, Attributes);
      v47 = aStr;
      v74.location = CFAttributedStringGetLength(aStr);
      v74.length = 0;
      CFAttributedStringReplaceAttributedString(v47, v74, v46);
      if (v46)
      {
        CFRelease(v46);
      }
    }

    v48 = aStr;
    v75.location = CFAttributedStringGetLength(aStr);
    v75.length = 0;
    CFAttributedStringReplaceAttributedString(v48, v75, v44);
    if (v44)
    {
      CFRelease(v44);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    ++v5;
  }

  while (v5 != v54);
LABEL_74:
  v49 = aStr;
  CFAttributedStringEndEditing(aStr);
  return v49;
}

uint64_t FigCaptionLayoutDetectAndChooseAlignmentForCaptionElement(const __CFArray *a1)
{
  if (!a1)
  {
    return 2;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 2)
  {
    return 2;
  }

  v3 = Count;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 7;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    if (ValueAtIndex)
    {
      v9 = ValueAtIndex;
      v10 = CFArrayGetCount(ValueAtIndex);
      if (v10)
      {
        v11 = v10;
        v12 = CFArrayGetValueAtIndex(v9, 0);
        v23 = 0;
        if (cclayout_getLocationFromCommandData(v12, &v23, 0))
        {
          v13 = CFArrayGetValueAtIndex(v9, v11 - 1);
          v22 = 0;
          if (cclayout_getLocationFromCommandData(v13, &v22, 0))
          {
            Value = CFDictionaryGetValue(v13, @"S");
            Length = CFAttributedStringGetLength(Value);
            v16 = v23;
            v17 = (Length + v22 - 1);
            if (v4)
            {
              v18 = v7 & 0xFFFFFFFE;
              if (v5 == v23)
              {
                v18 = v7;
              }

              if (v6 == v17)
              {
                v7 = v18;
              }

              else
              {
                v7 = v18 & 0xFFFFFFFB;
              }
            }
          }

          else
          {
            v17 = v6;
            v16 = v5;
          }

          v6 = v17;
          v5 = v16;
        }
      }
    }

    ++v4;
  }

  while (v3 != v4);
  v20 = v7 & 2;
  if ((v7 & 4) != 0)
  {
    v20 = 4;
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (v7)
  {
    return v21;
  }

  else
  {
    return v20;
  }
}

double FigCaptionLayoutGetBackgroundPathRectFromDictionary(const __CFDictionary *a1)
{
  v1 = *(MEMORY[0x1E695F050] + 16);
  v3[0] = *MEMORY[0x1E695F050];
  v3[1] = v1;
  CFDictionaryApplyFunction(a1, cclayout_GetRectFromPathDictionaryApplier, v3);
  return *v3;
}

__CFString *FigCaptionLayoutCopyEffectiveFontNamePlusInfoAndCreateElementGeometryArrays(const void *a1, int a2, const __CFArray *a3, const __CFArray *a4, uint64_t a5, CFTypeRef cf, const void *a7, int a8, double a9, double a10, double a11, double a12, uint64_t a13, const __CFArray *a14, const __CFDictionary **a15, _BYTE *a16, double *a17, void *a18, void *a19, __CFArray **a20, double *a21, double *a22)
{
  v565 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v24 = CFRetain(cf);
  }

  else
  {
    v24 = 0;
  }

  if (a7)
  {
    cfa = CFRetain(a7);
  }

  else
  {
    cfa = 0;
  }

  if (a16)
  {
    v434 = *a16;
  }

  else
  {
    v434 = 0;
  }

  if (a17)
  {
    v25 = *a17;
  }

  else
  {
    v25 = 0.0;
  }

  TypographicBounds = v25;
  LODWORD(values) = -1;
  LODWORD(v545[0]) = -1;
  if (a3)
  {
    if (CFArrayGetCount(a3) && (ValueAtIndex = CFArrayGetValueAtIndex(a3, 0), (Value = CFDictionaryGetValue(ValueAtIndex, @"R")) != 0) && (v28 = Value, CFArrayGetCount(Value)) && (v29 = CFArrayGetValueAtIndex(v28, 0)) != 0 && (v30 = v29, CFArrayGetCount(v29)) && (v31 = CFArrayGetValueAtIndex(v30, 0)) != 0 && (v32 = CFDictionaryGetValue(v31, @"S")) != 0 && (CFAttributedStringGetAttributes(v32, 0, 0), FigCFDictionaryGetInt32IfPresent(), FigCFDictionaryGetInt32IfPresent(), (values - 1) <= 6))
    {
      v33 = (8 * (values - 1) + 48);
    }

    else
    {
      v33 = 40;
    }

    v34 = *(a13 + v33);
    v35 = a13;
  }

  else
  {
    v35 = a13;
    v34 = *(a13 + 40);
  }

  v36 = *(v35 + 104);
  if (!a4 || !CFArrayGetCount(a4))
  {
    if (!v34)
    {
      goto LABEL_29;
    }

LABEL_32:
    v37 = CTFontDescriptorCopyAttribute(v34, *MEMORY[0x1E6965808]);
    goto LABEL_33;
  }

  CFArrayGetValueAtIndex(a4, 0);
  FigCFDictionaryGetInt32IfPresent();
  if (v34)
  {
    goto LABEL_32;
  }

LABEL_29:
  if (!a1)
  {
    v433 = 0;
    goto LABEL_34;
  }

  v37 = CFRetain(a1);
LABEL_33:
  v433 = v37;
LABEL_34:
  v38 = v24;
  v39 = MEMORY[0x1E695E480];
  v40 = MEMORY[0x1E695F050];
  v41 = a13;
  if (v36 <= 0.0)
  {
    Mutable = 0;
    v444 = 0;
    v467 = *MEMORY[0x1E695F060];
    v451 = *(MEMORY[0x1E695F060] + 8);
    v351 = 0.0;
    goto LABEL_425;
  }

  v42 = a14;
  *&v449 = FigCaptionLayoutCellSizeForRect(0, a9, a10, a11, a12);
  Mutable = 0;
  v444 = 0;
  v427 = v43 * 0.8;
  v511 = *MEMORY[0x1E69659D8];
  v496 = *MEMORY[0x1E6965B48];
  v494 = *MEMORY[0x1E6965A28];
  color = *MEMORY[0x1E6965A18];
  name = *MEMORY[0x1E695F1C0];
  v465 = v43;
  v44 = v43 * -0.5;
  v452 = v40[3];
  v453 = v40[2];
  v45 = -1.0;
  allocator = *v39;
  v489 = *MEMORY[0x1E6965658];
  v46 = v36;
  v454 = v40[1];
  v455 = *v40;
  v456 = v44;
  do
  {
    v47 = floor(v46 * v427);
    if (v47 == 0.0)
    {
      v48 = 1.0;
    }

    else
    {
      v48 = v47;
    }

    v49 = v46;
    if (!v38)
    {
      goto LABEL_42;
    }

    if (CTFontGetSize(v38) != v48 || !FigCFEqual())
    {
      CFRelease(v38);
LABEL_42:
      if (cfa)
      {
        CFRelease(cfa);
      }

      CTFontWithOptions = FigCaptionLayoutCreateCTFontWithOptions(v433, 0, v48);
      *&values = CTFontWithOptions;
      v51 = FigCaptionLayoutCreateCTFontWithOptions(v433, 1, v48);
      SymbolicTraits = CTFontGetSymbolicTraits(CTFontWithOptions);
      v53 = CFDictionaryCreate(allocator, MEMORY[0x1E6965658], &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      v54 = CFAttributedStringCreate(allocator, @" ", v53);
      v55 = CTLineCreateWithAttributedString(v54);
      TypographicBounds = CTLineGetTypographicBounds(v55, 0, 0, 0);
      if (v55)
      {
        CFRelease(v55);
      }

      if (v54)
      {
        CFRelease(v54);
      }

      if (v53)
      {
        CFRelease(v53);
      }

      v41 = a13;
      if (values)
      {
        v56 = CFRetain(values);
        if (v51)
        {
LABEL_52:
          cfa = CFRetain(v51);
LABEL_55:
          if (values)
          {
            CFRelease(values);
          }

          if (v51)
          {
            CFRelease(v51);
          }

          v57 = (SymbolicTraits >> 10) & 1;
          v38 = v56;
          goto LABEL_60;
        }
      }

      else
      {
        v56 = 0;
        if (v51)
        {
          goto LABEL_52;
        }
      }

      cfa = 0;
      goto LABEL_55;
    }

    v57 = v434;
LABEL_60:
    v434 = v57;
    if (a8)
    {
      v58 = 1;
    }

    else
    {
      v58 = v57 == 0;
    }

    v59 = !v58;
    v60 = *&v449 > TypographicBounds;
    v61 = v49 * *&v449;
    v436 = v49;
    if (v49 >= 1.0)
    {
      v61 = *&v449;
    }

    if ((v59 & v60) != 0)
    {
      v62 = v61 - TypographicBounds;
    }

    else
    {
      v62 = 0.0;
    }

    if ((v59 & v60) == 0)
    {
      v61 = TypographicBounds;
    }

    v467 = v61;
    if (v444)
    {
      CFRelease(v444);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v63 = FigCaptionLayoutStandardCaptionRect(0, a9, a10, a11, a12);
    v447 = v64;
    v448 = v63;
    v445 = v66;
    v446 = v65;
    v67 = FigCaptionLayoutExpandedCaptionRect(a9, a10, a11, a12);
    v457 = v68;
    v458 = v67;
    v459 = v70;
    v460 = v69;
    if (a4)
    {
      Count = CFArrayGetCount(a4);
    }

    else
    {
      Count = 0;
    }

    v72 = a3;
    v73 = v456;
    v74 = v38;
    if (a3)
    {
      v72 = CFArrayGetCount(a3);
    }

    v451 = v436 * v465;
    if (Count >= v72)
    {
      v75 = v72;
    }

    else
    {
      v75 = Count;
    }

    v76 = allocator;
    v77 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(allocator, v75, MEMORY[0x1E695E9C0]);
    v444 = CFArrayCreateMutable(allocator, v75, v77);
    v438 = v75;
    v509 = v74;
    v441 = v62;
    if (v75 > 0)
    {
      v78 = 0;
      if (v434)
      {
        v79 = 1;
      }

      else
      {
        v79 = 3;
      }

      v437 = v79;
      do
      {
        CFArrayGetValueAtIndex(a4, v78);
        v450 = v78;
        v80 = CFArrayGetValueAtIndex(a3, v78);
        v81 = CFDictionaryGetValue(v80, @"R");
        *v540 = *MEMORY[0x1E695F050];
        *&v540[16] = *(MEMORY[0x1E695F050] + 16);
        v461 = v81;
        if (v81)
        {
          v82 = CFArrayGetCount(v81);
        }

        else
        {
          v82 = 0;
        }

        v83 = v74;
        v462 = v82;
        v463 = CFArrayCreateMutable(v76, v82, MEMORY[0x1E695E9C0]);
        if (v42)
        {
          rect = CFArrayGetCount(v42);
        }

        else
        {
          rect = 0;
        }

        if (v462 >= 1)
        {
          v84 = 0;
          while (1)
          {
            v464 = v84;
            v85 = CFArrayGetValueAtIndex(v461, v84);
            if (v85)
            {
              break;
            }

            v88 = CFArrayCreateMutable(v76, 0, MEMORY[0x1E695E9C0]);
LABEL_275:
            v172 = v88;
            CFArrayAppendValue(v463, v88);
            if (v172)
            {
              CFRelease(v172);
            }

            v84 = v464 + 1;
            if (v464 + 1 == v462)
            {
              goto LABEL_278;
            }
          }

          v469 = v85;
          v86 = CFArrayGetCount(v85);
          v87 = CFArrayCreateMutable(v76, v86, MEMORY[0x1E695E9C0]);
          v88 = v87;
          v468 = v86;
          if (v86 < 1)
          {
            goto LABEL_275;
          }

          v470 = v87;
          v89 = 0;
          while (1)
          {
            v472 = v89;
            theDict = CFArrayGetValueAtIndex(v469, v89);
            v90 = CFDictionaryGetValue(theDict, @"S");
            v543 = v62;
            Length = CFAttributedStringGetLength(v90);
            longestEffectiveRange.length = 0;
            longestEffectiveRange.location = 0;
            v532 = v90;
            MutableCopy = CFAttributedStringCreateMutableCopy(v76, Length, v90);
            CFAttributedStringBeginEditing(MutableCopy);
            aStr = MutableCopy;
            String = CFAttributedStringGetString(MutableCopy);
            v94 = CFStringCreateMutableCopy(v76, 0, String);
            v573.length = CFStringGetLength(v94);
            v573.location = 0;
            CFStringFindAndReplace(v94, @"’", @"'", v573, 0);
            v95 = FigCFStringFind();
            if (!FigCFStringFind())
            {
              goto LABEL_104;
            }

            if (v95)
            {
              break;
            }

            if (!FigCFStringFind())
            {
LABEL_122:
              v501 = 0;
              goto LABEL_126;
            }

LABEL_105:
            v96 = CFStringGetLength(v94);
            *&values = 0;
            *(&values + 1) = v96;
            v501 = CFStringCreateMutableCopy(allocator, 0, v94);
            CFStringTransform(v94, &values, @"[']Any-Publishing", 0);
            v97.length = *(&values + 1);
            if (*(&values + 1) < 1)
            {
              goto LABEL_120;
            }

            v98 = 0;
            v99 = 0;
            v100 = 1;
            do
            {
              if (CFStringGetCharacterAtIndex(v94, v98) == 8221 || CFStringGetCharacterAtIndex(v94, v98) == 8220)
              {
                ++v99;
              }

              v98 = v100;
              v97.length = *(&values + 1);
              v101 = *(&values + 1) <= v100++;
            }

            while (!v101);
            if (v99 == 2)
            {
              if (*(&values + 1) >= 1)
              {
                v102 = 0;
                v103 = 1;
                while (CFStringGetCharacterAtIndex(v94, v102) != 8220)
                {
                  if (CFStringGetCharacterAtIndex(v94, v102) == 8221)
                  {
                    v574.location = v102;
                    v574.length = 1;
                    CFStringFindAndReplace(v94, @"”", @"“", v574, 0);
                    break;
                  }

                  v102 = v103;
                  v101 = *(&values + 1) <= v103++;
                  if (v101)
                  {
                    break;
                  }
                }
              }

              v97 = values;
              v104 = aStr;
              v105 = v94;
            }

            else
            {
LABEL_120:
              v97.location = values;
              v104 = aStr;
              v105 = v501;
            }

            CFAttributedStringReplaceString(v104, v97, v105);
LABEL_126:
            if (FigCFRangeGetLimit() < Length)
            {
              v526 = v94;
              while (1)
              {
                if ((*&v554 = 0, v552 = 0u, v553 = 0u, values = 0u, v551 = 0, v549 = 0, v548 = 0u, v546 = 0, v547 = 0u, *v545 = 0u, Limit = FigCFRangeGetLimit(), v568.location = 0, v568.length = Length, AttributesAndLongestEffectiveRange = CFAttributedStringGetAttributesAndLongestEffectiveRange(v532, Limit, v568, &longestEffectiveRange), v108 = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, @"i"), v109 = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, @"u"), LODWORD(v541) = -1, valuePtr = -1, v110 = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, @"t"), *(v41 + 144) == 1) && v110 || (v110 = *v41) != 0)
                {
                  DeviceRGBColor = CFRetain(v110);
                }

                else
                {
                  DeviceRGBColor = cclayout_createDeviceRGBColor(1.0, 1.0, 1.0, 1.0);
                }

                v112 = DeviceRGBColor;
                Alpha = CGColorGetAlpha(DeviceRGBColor);
                v114 = *(v41 + 112);
                if (Alpha != v114)
                {
                  break;
                }

                if (v112)
                {
                  v115 = CFRetain(v112);
LABEL_136:
                  CFRelease(v112);
                  goto LABEL_138;
                }

                v115 = 0;
LABEL_138:
                v116 = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, @"b");
                if (v116)
                {
                  v117 = v116;
                  v118 = CGColorGetAlpha(v116);
                  if (*(v41 + 152) == 1)
                  {
                    v119 = v117;
                    goto LABEL_143;
                  }
                }

                else
                {
                  v118 = -1.0;
                }

                v119 = *(v41 + 8);
                if (!v119)
                {
                  v120 = cclayout_createDeviceRGBColor(0.0, 0.0, 0.0, 1.0);
                  goto LABEL_145;
                }

LABEL_143:
                v120 = CFRetain(v119);
LABEL_145:
                v121 = v120;
                if (*(v41 + 168) != 1 || v118 == v45)
                {
                  v118 = *(v41 + 120);
                }

                if (CGColorGetAlpha(v120) != v118)
                {
                  CopyWithAlpha = CGColorCreateCopyWithAlpha(v121, v118);
                  if (!v121)
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_152;
                }

                if (v121)
                {
                  CopyWithAlpha = CFRetain(v121);
LABEL_152:
                  CFRelease(v121);
                  goto LABEL_154;
                }

                CopyWithAlpha = 0;
LABEL_154:
                FigCFDictionaryGetInt32IfPresent();
                if (*(v41 + 200) != 1 || (v123 = v541, v541 == -1))
                {
                  v124 = *(v41 + 136) - 2;
                  if (v124 > 3)
                  {
                    v123 = 0;
                  }

                  else
                  {
                    v123 = dword_196E7C010[v124];
                  }
                }

                v125 = Length;
                valuePtr = v123;
                v126 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
                v127 = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, @"e");
                if (*(v41 + 160) == 1 && (v128 = v127) != 0)
                {
                  v129 = CGColorGetAlpha(v115);
                  v130 = CGColorCreateCopyWithAlpha(v128, v129);
                }

                else
                {
                  v131 = *(v41 + 16);
                  if (v131)
                  {
                    v130 = CFRetain(v131);
                  }

                  else
                  {
                    v132 = CGColorGetAlpha(v115);
                    v130 = cclayout_createDeviceRGBColor(0.0, 0.0, 0.0, v132);
                  }
                }

                v133 = v130;
                if (!v108 || (v134 = cfa, !CFBooleanGetValue(v108)))
                {
                  v134 = v509;
                }

                if (v109)
                {
                  if (CFBooleanGetValue(v109))
                  {
                    LODWORD(v541) = 1;
                    v109 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v541);
                  }

                  else
                  {
                    v109 = 0;
                  }
                }

                if (v543 == 0.0)
                {
                  v135 = 0;
                  v136 = 0;
                }

                else
                {
                  LODWORD(v541) = 0;
                  v135 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v541);
                  v136 = CFNumberCreate(allocator, kCFNumberCGFloatType, &v543);
                }

                CTFontGetSize(v134);
                MACaptionAppearanceGetStrokeWidth();
                v541 = v137;
                v138 = CFNumberCreate(allocator, kCFNumberCGFloatType, &v541);
                v139 = v138;
                if (v134)
                {
                  *&values = v489;
                  v545[0] = v134;
                  v140 = &v545[1];
                  p_values = (&values + 8);
                  v142 = 1;
                }

                else
                {
                  v142 = 0;
                  p_values = &values;
                  v140 = v545;
                }

                if (v115)
                {
                  p_values->location = v511;
                  *v140 = v115;
                  ++v142;
                }

                if (v109)
                {
                  *(&values + v142) = v496;
                  v545[v142++] = v109;
                }

                if (v135)
                {
                  *(&values + v142) = v494;
                  v545[v142++] = v135;
                }

                if (v136)
                {
                  *(&values + v142) = color;
                  v545[v142++] = v136;
                }

                if (CopyWithAlpha)
                {
                  *(&values + v142) = 0x1F0B1E578;
                  v545[v142++] = CopyWithAlpha;
                }

                if (v133)
                {
                  *(&values + v142) = 0x1F0B1E598;
                  v545[v142++] = v133;
                }

                if (v126)
                {
                  *(&values + v142) = 0x1F0B1E5B8;
                  v545[v142++] = v126;
                }

                if (v138)
                {
                  *(&values + v142) = 0x1F0B1E7F8;
                  v545[v142++] = v138;
                }

                v143 = CFDictionaryCreate(allocator, &values, v545, v142, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
                CFAttributedStringSetAttributes(aStr, longestEffectiveRange, v143, 0);
                if (v143)
                {
                  CFRelease(v143);
                }

                if (v135)
                {
                  CFRelease(v135);
                }

                if (v139)
                {
                  CFRelease(v139);
                }

                v41 = a13;
                if (v136)
                {
                  CFRelease(v136);
                }

                if (v109)
                {
                  CFRelease(v109);
                }

                v42 = a14;
                if (v126)
                {
                  CFRelease(v126);
                }

                if (v133)
                {
                  CFRelease(v133);
                }

                Length = v125;
                if (CopyWithAlpha)
                {
                  CFRelease(CopyWithAlpha);
                }

                v94 = v526;
                if (v115)
                {
                  CFRelease(v115);
                }

                if (FigCFRangeGetLimit() >= v125)
                {
                  goto LABEL_214;
                }
              }

              v115 = CGColorCreateCopyWithAlpha(v112, v114);
              if (!v112)
              {
                goto LABEL_138;
              }

              goto LABEL_136;
            }

LABEL_214:
            CFAttributedStringEndEditing(aStr);
            v76 = allocator;
            if (v94)
            {
              CFRelease(v94);
            }

            v83 = v509;
            if (v501)
            {
              CFRelease(v501);
            }

            v471 = CFDictionaryCreateMutableCopy(allocator, 0, theDict);
            if (rect >= 1)
            {
              for (i = 0; i != rect; ++i)
              {
                v145 = CFArrayGetValueAtIndex(v42, i);
                if (v145)
                {
                  v146 = v145;
                  if (CFDictionaryGetValue(v145, @"CMTextHighlightAttributeKey_StringToHighlight"))
                  {
                    v147 = *a15;
                    v148 = CFAttributedStringGetString(aStr);
                    v149 = CFDictionaryGetValue(v146, @"CMTextHighlightAttributeKey_CueID");
                    if (!v149 || CFStringCompare(v148, v149, 0) == kCFCompareEqualTo)
                    {
                      theDicta = v147;
                      v150 = CFDictionaryGetValue(v146, @"CMTextHighlightAttributeKey_StringToHighlight");
                      LODWORD(v545[0]) = 0;
                      values = 0u;
                      v551 = 0;
                      v151 = CGColorSpaceCreateWithName(name);
                      v152 = CFDictionaryGetValue(v146, @"CMTextHighlightAttributeKey_ForegroundColor");
                      for (j = 0; j != 4; ++j)
                      {
                        if (v152)
                        {
                          if (!FigCFArrayGetFloatAtIndex())
                          {
                            v155 = 0;
                            v162 = 0;
                            v171 = 0;
                            v156 = 0;
                            goto LABEL_252;
                          }

                          v154 = *v545;
                        }

                        else
                        {
                          v154 = dbl_196E7C030[j];
                        }

                        *(&values + j) = v154;
                      }

                      v502 = v151;
                      v155 = CGColorCreate(v151, &values);
                      v156 = CGColorCreateCopyWithAlpha(v155, 0.5);
                      v157 = CFDictionaryGetValue(v146, @"CMTextHighlightAttributeKey_BackgroundColor");
                      for (k = 0; k != 4; ++k)
                      {
                        if (v157)
                        {
                          if (!FigCFArrayGetFloatAtIndex())
                          {
                            v162 = 0;
                            v171 = 0;
                            v151 = v502;
                            goto LABEL_252;
                          }

                          v159 = *v545;
                        }

                        else
                        {
                          v159 = dbl_196E7C050[k];
                        }

                        *(&values + k) = v159;
                      }

                      v151 = v502;
                      v160 = v150;
                      v161 = CGColorCreate(v502, &values);
                      v162 = CGColorCreateCopyWithAlpha(v161, 0.7);
                      LODWORD(longestEffectiveRange.location) = 0;
                      FigCFDictionaryGetIntIfPresent();
                      LODWORD(v543) = -1;
                      FigCFDictionaryGetIntIfPresent();
                      v575.length = CFStringGetLength(v148);
                      v575.location = 0;
                      Results = CFStringCreateArrayWithFindResults(allocator, v148, v160, v575, SLODWORD(longestEffectiveRange.location));
                      if (Results)
                      {
                        v164 = Results;
                        v480 = i;
                        if (CFArrayGetCount(Results) >= 1)
                        {
                          v165 = 0;
                          do
                          {
                            v166 = CFArrayGetValueAtIndex(v164, v165);
                            v167 = v166;
                            v168 = LODWORD(v543) == -1 || (theDicta + v165) == SLODWORD(v543);
                            if (v168)
                            {
                              v169 = v155;
                            }

                            else
                            {
                              v169 = v156;
                            }

                            if (v168)
                            {
                              v170 = v161;
                            }

                            else
                            {
                              v170 = v162;
                            }

                            CFAttributedStringSetAttribute(aStr, *v166, v511, v169);
                            CFAttributedStringSetAttribute(aStr, *v167, @"b", v170);
                            ++v165;
                          }

                          while (v165 < CFArrayGetCount(v164));
                        }

                        v147 = (theDicta + CFArrayGetCount(v164));
                        CFRelease(v164);
                        v151 = v502;
                        i = v480;
                      }

                      else
                      {
                        v147 = theDicta;
                      }

                      v171 = v161;
LABEL_252:
                      v76 = allocator;
                      if (v151)
                      {
                        CFRelease(v151);
                      }

                      if (v155)
                      {
                        CFRelease(v155);
                      }

                      if (v156)
                      {
                        CFRelease(v156);
                      }

                      if (v171)
                      {
                        CFRelease(v171);
                      }

                      if (v162)
                      {
                        CFRelease(v162);
                      }

                      v42 = a14;
                    }

                    *a15 = v147;
                    v83 = v509;
                  }
                }
              }
            }

            CFDictionarySetValue(v471, @"S", aStr);
            if (aStr)
            {
              CFRelease(aStr);
            }

            CFArrayAppendValue(v470, v471);
            if (v471)
            {
              CFRelease(v471);
            }

            v89 = (v472 + 1);
            v41 = a13;
            if (v472 + 1 == v468)
            {
              v88 = v470;
              goto LABEL_275;
            }
          }

          v95 = 1;
LABEL_104:
          if (!v95)
          {
            goto LABEL_122;
          }

          goto LABEL_105;
        }

LABEL_278:
        FigCFDictionaryGetCGRectIfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        PixelRectForCellRect = cclayout_getPixelRectForCellRect(v463, v437, 1, a2, v173, v174, v175, v176, *v540, *&v540[8], *&v540[16], *&v540[24], v448, v447, v446, v445, v449, *&v465, v458, *&v457, *&v460, *&v459, *&v467, *&v451);
        v179 = v178;
        v181 = v180;
        v183 = v182;
        v576.origin.x = v458;
        v576.origin.y = v457;
        v576.size.height = v459;
        v576.size.width = v460;
        Width = CGRectGetWidth(v576);
        v503 = PixelRectForCellRect;
        v577.origin.x = PixelRectForCellRect;
        *&theDictb = v179;
        v577.origin.y = v179;
        v481 = v181;
        v577.size.width = v181;
        v473 = v183;
        v577.size.height = v183;
        if (Width >= CGRectGetWidth(v577))
        {
          v227 = v463;
          v229 = v457;
          v228 = v458;
          v231 = v459;
          v230 = v460;
        }

        else
        {
          v185 = v452;
          v186 = v453;
          v187 = v463;
          if (!v463 || (v188 = CFArrayGetCount(v463), v187 = v463, v188 < 1))
          {
LABEL_293:
            v581.origin.y = v457;
            v581.origin.x = v458;
            v581.size.height = v459;
            v581.size.width = v460;
            v204 = v187;
            v205 = CGRectGetWidth(v581);
            JoinedStringFromElementWithSeparator = FigCaptionLayoutCreateJoinedStringFromElementWithSeparator(v204, @" ");
            v207 = CTLineCreateWithAttributedString(JoinedStringFromElementWithSeparator);
            v208 = CFAttributedStringGetLength(JoinedStringFromElementWithSeparator);
            Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
            v210 = v76;
            v211 = JoinedStringFromElementWithSeparator;
            v534 = CFArrayCreateMutable(v210, 0, MEMORY[0x1E695E9C0]);
            v212 = CFAttributedStringGetString(JoinedStringFromElementWithSeparator);
            theString = v212;
            v561 = 0;
            v562 = v208;
            CharactersPtr = CFStringGetCharactersPtr(v212);
            CStringPtr = 0;
            v559 = CharactersPtr;
            if (!CharactersPtr)
            {
              CStringPtr = CFStringGetCStringPtr(v212, 0x600u);
            }

            v556 = 0u;
            v557 = 0u;
            v554 = 0u;
            v555 = 0u;
            v552 = 0u;
            v553 = 0u;
            values = 0u;
            v551 = 0;
            v560 = CStringPtr;
            v563 = 0;
            v564 = 0;
            if (v208 < 1)
            {
              v216 = 0;
              v217 = -1;
              v73 = v456;
              v218 = allocator;
LABEL_326:
              OffsetForStringIndex = CTLineGetOffsetForStringIndex(v207, v216, 0);
              if (CTLineGetOffsetForStringIndex(v207, v208, 0) - OffsetForStringIndex <= v205 || v217 == -1)
              {
                v239 = v534;
              }

              else
              {
                v570.length = v217 - v216;
                v570.location = v216;
                v238 = CFAttributedStringCreateWithSubstring(v218, v211, v570);
                v239 = v534;
                CFArrayAppendValue(v534, v238);
                if (v238)
                {
                  CFRelease(v238);
                }

                v216 = v217 + 1;
              }

              v240 = CTLineGetOffsetForStringIndex(v207, v216, 0);
              v83 = v509;
              if (CTLineGetOffsetForStringIndex(v207, v208, 0) - v240 != 0.0)
              {
                v571.length = v208 - v216;
                v571.location = v216;
                v241 = CFAttributedStringCreateWithSubstring(allocator, v211, v571);
                CFArrayAppendValue(v239, v241);
                if (v241)
                {
                  CFRelease(v241);
                }
              }

              v242 = v211;
              if (v207)
              {
                CFRelease(v207);
              }

              v76 = allocator;
              theDictc = v242;
              if (v239)
              {
                v243 = CFArrayGetCount(v239);
              }

              else
              {
                v243 = 0;
              }

              v244 = v437;
              CGRectGetMinY(*v540);
              v245 = CFArrayCreateMutable(allocator, v243, MEMORY[0x1E695E9C0]);
              v227 = v245;
              if (v243 < 1)
              {
                v255 = 0.0;
              }

              else
              {
                v528 = v245;
                v246 = 0;
                v247 = 0;
                for (aStrb = v243; aStrb != v246; v243 = aStrb)
                {
                  v248 = CFArrayGetValueAtIndex(v534, v246);
                  v249 = CFAttributedStringGetLength(v248);
                  v250 = CFArrayCreateMutable(v76, 0, MEMORY[0x1E695E9C0]);
                  v251 = MEMORY[0x1E695E9D8];
                  v252 = MEMORY[0x1E695E9E8];
                  v253 = CFDictionaryCreateMutable(v76, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v254 = CFDictionaryCreateMutable(v76, 0, v251, v252);
                  CFDictionarySetValue(v253, @"S", v248);
                  FigCFDictionarySetInt32();
                  FigCFDictionarySetInt32();
                  CFDictionarySetValue(v253, @"L", v254);
                  if (v254)
                  {
                    CFRelease(v254);
                  }

                  CFArrayAppendValue(v250, v253);
                  if (v253)
                  {
                    CFRelease(v253);
                  }

                  CFArrayAppendValue(v528, v250);
                  v83 = v509;
                  v76 = allocator;
                  if (v250)
                  {
                    CFRelease(v250);
                  }

                  if (v247 <= v249)
                  {
                    v247 = v249;
                  }

                  ++v246;
                }

                v255 = v247;
                v42 = a14;
                v244 = v437;
                v239 = v534;
                v227 = v528;
              }

              MinY = CGRectGetMinY(*v540);
              if (v239)
              {
                CFRelease(v239);
              }

              if (theDictc)
              {
                CFRelease(theDictc);
              }

              if (v463)
              {
                CFRelease(v463);
              }

              v231 = v459;
              v230 = v460;
              v229 = v457;
              v228 = v458;
              v232 = cclayout_getPixelRectForCellRect(v227, v244, 1, a2, v256, v257, v258, v259, 0.0, MinY, v255, v243, v448, v447, v446, v445, v449, *&v465, v458, *&v457, *&v460, *&v459, *&v467, *&v451);
              v41 = a13;
              goto LABEL_363;
            }

            v215 = 0;
            v216 = 0;
            v217 = -1;
            v73 = v456;
            v218 = allocator;
            while (2)
            {
              if (v215 < 0 || (v219 = v562, v562 <= v215))
              {
                v220 = 0;
              }

              else if (v559)
              {
                v220 = v559[v561 + v215];
              }

              else if (v560)
              {
                v220 = v560[v561 + v215];
              }

              else
              {
                if (v564 <= v215 || (v225 = v563, v563 > v215))
                {
                  v226 = v215 - 4;
                  if (v215 < 4)
                  {
                    v226 = 0;
                  }

                  if (v226 + 64 < v562)
                  {
                    v219 = v226 + 64;
                  }

                  v563 = v226;
                  v564 = v219;
                  v566.length = v219 - v226;
                  v566.location = v561 + v226;
                  CFStringGetCharacters(theString, v566, &values);
                  v225 = v563;
                }

                v220 = *(&values + v215 - v225);
              }

              if (CFCharacterSetIsCharacterMember(Predefined, v220))
              {
                v221 = CTLineGetOffsetForStringIndex(v207, v216, 0);
                v222 = CTLineGetOffsetForStringIndex(v207, v215, 0);
                v223 = v215;
                if (v222 - v221 > v205)
                {
                  if (v217 == -1)
                  {
                    v217 = v215;
                  }

                  v569.length = v217 - v216;
                  v569.location = v216;
                  v224 = CFAttributedStringCreateWithSubstring(v218, v211, v569);
                  CFArrayAppendValue(v534, v224);
                  if (v224)
                  {
                    CFRelease(v224);
                  }

                  v216 = v217 + 1;
                  v217 = -1;
                  v215 = v216;
                  v218 = allocator;
LABEL_311:
                  if (v215 >= v208)
                  {
                    goto LABEL_326;
                  }

                  continue;
                }
              }

              else
              {
                v223 = v217;
              }

              break;
            }

            ++v215;
            v217 = v223;
            goto LABEL_311;
          }

          v189 = 0;
          while (1)
          {
            v190 = CFArrayGetValueAtIndex(v187, v189);
            if (v190)
            {
              v191 = v190;
              v192 = CFArrayGetCount(v190);
              if (v192 >= 2)
              {
                break;
              }
            }

LABEL_292:
            ++v189;
            v187 = v463;
            if (v189 == v188)
            {
              goto LABEL_293;
            }
          }

          v193 = v192;
          v194 = 0;
          v195 = v185;
          v196 = v186;
          v197 = v454;
          v198 = v455;
          while (1)
          {
            recta = v198;
            aStra = *&v197;
            v527 = v196;
            v533 = v195;
            v199 = CFArrayGetValueAtIndex(v191, v194);
            LODWORD(values) = 0;
            LODWORD(v545[0]) = 0;
            v195 = v185;
            v200 = v186;
            v197 = v454;
            v198 = v455;
            if (cclayout_getLocationFromCommandData(v199, &values, v545))
            {
              v201 = CFDictionaryGetValue(v199, @"S");
              v195 = v185;
              v200 = v186;
              v197 = v454;
              v198 = v455;
              if (v201)
              {
                v202 = CFAttributedStringGetLength(v201);
                v195 = v185;
                v200 = v186;
                v197 = v454;
                v198 = v455;
                if (v202)
                {
                  v198 = (values - 1);
                  v197 = (LODWORD(v545[0]) - 1);
                  v200 = v202;
                  v195 = 1.0;
                }
              }
            }

            v578.origin.x = recta;
            *&v578.origin.y = aStra;
            v578.size.width = v527;
            v578.size.height = v533;
            if (!CGRectIsNull(v578))
            {
              v579.origin.x = recta;
              *&v579.origin.y = aStra;
              v579.size.width = v527;
              v579.size.height = v533;
              MaxX = CGRectGetMaxX(v579);
              v580.origin.x = v198;
              v580.origin.y = v197;
              v580.size.width = v200;
              v580.size.height = v195;
              if (MaxX < CGRectGetMinX(v580))
              {
                break;
              }
            }

            ++v194;
            v196 = v200;
            v185 = v452;
            v186 = v453;
            v45 = -1.0;
            v76 = allocator;
            if (v193 == v194)
            {
              goto LABEL_292;
            }
          }

          v227 = v463;
          v41 = a13;
          v73 = v456;
          v45 = -1.0;
          v76 = allocator;
          v229 = v457;
          v228 = v458;
          v231 = v459;
          v230 = v460;
        }

        v232 = v503;
        v233 = *&theDictb;
        v234 = v481;
        v235 = v473;
LABEL_363:
        v261 = cclayout_offsetRectToFitBoundary(v232, v233, v234, v235, v228, v229, v230, v231);
        v263 = v262;
        v265 = v264;
        v267 = v266;
        CFArrayAppendValue(Mutable, v227);
        if (v227)
        {
          CFRelease(v227);
        }

        v74 = v83;
        *&values = v261;
        *(&values + 1) = v263;
        v551.width = v265;
        v551.height = v267;
        v268 = CFDataCreateMutable(v76, 32);
        CFDataSetLength(v268, 32);
        v567.location = 0;
        v567.length = 32;
        CFDataReplaceBytes(v268, v567, &values, 32);
        CFArrayAppendValue(v444, v268);
        if (v268)
        {
          CFRelease(v268);
        }

        v78 = v450 + 1;
        v62 = v441;
        v76 = allocator;
      }

      while (v450 + 1 != v438);
    }

    if (v444)
    {
      v269 = CFRetain(v444);
    }

    else
    {
      v269 = 0;
    }

    v270 = v467 * -0.5;
    do
    {
      while (1)
      {
        if (v269)
        {
          v271 = CFArrayGetCount(v269);
          v272 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          if (v271 >= 1)
          {
            for (m = 0; m != v271; ++m)
            {
              v274 = CFArrayGetValueAtIndex(v269, m);
              v275 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
              CFArrayAppendValue(v275, v274);
              CFArrayAppendValue(v272, v275);
              if (v275)
              {
                CFRelease(v275);
              }
            }

            v41 = a13;
          }

          if (!v272)
          {
LABEL_407:
            v342 = 1;
            if (v269)
            {
              goto LABEL_411;
            }

            goto LABEL_412;
          }
        }

        else
        {
          v272 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          if (!v272)
          {
            goto LABEL_407;
          }
        }

LABEL_382:
        v276 = CFArrayGetCount(v272);
        v277 = v276;
        if (v276 > 1)
        {
          v278 = 0;
          v279 = v276 - 2;
          while (2)
          {
            v280 = v278;
            v281 = CFArrayGetValueAtIndex(v272, v278);
            v582.origin.x = cclayout_unionCFDataRects(v281);
            v583 = CGRectInset(v582, v270, v73);
            x = v583.origin.x;
            y = v583.origin.y;
            v284 = v583.size.width;
            height = v583.size.height;
            v286 = ++v278;
            do
            {
              v287 = CFArrayGetValueAtIndex(v272, v286);
              v584.origin.x = cclayout_unionCFDataRects(v287);
              v614 = CGRectInset(v584, v270, v73);
              v585.origin.x = x;
              v585.origin.y = y;
              v585.size.width = v284;
              v585.size.height = height;
              if (CGRectIntersectsRect(v585, v614))
              {
                if (v287)
                {
                  v288.length = CFArrayGetCount(v287);
                }

                else
                {
                  v288.length = 0;
                }

                v288.location = 0;
                CFArrayAppendArray(v281, v287, v288);
                CFArrayRemoveValueAtIndex(v272, v286);
                goto LABEL_382;
              }

              ++v286;
            }

            while (v286 < v277);
            if (v280 != v279)
            {
              continue;
            }

            break;
          }
        }

        v289 = CFArrayGetCount(v272);
        if (v289 < 1)
        {
          v342 = 1;
        }

        else
        {
          v290 = v289;
          v291 = 0;
          for (n = 0; n != v290; ++n)
          {
            v293 = CFArrayGetValueAtIndex(v272, n);
            if (v293)
            {
              v294 = v293;
              if (CFArrayGetCount(v293) >= 2)
              {
                v295 = CFArrayGetCount(v294);
                v535 = cclayout_unionCFDataRects(v294);
                v529 = v296;
                aStrc = v297;
                rectb = v298;
                if (v295 >= 2)
                {
                  for (ii = 1; ii != v295; ++ii)
                  {
                    v300 = CFArrayGetValueAtIndex(v294, ii - 1);
                    v301 = CFArrayGetValueAtIndex(v294, ii);
                    v302 = cclayout_unionCFDataRects(v300);
                    v304 = v303;
                    v306 = v305;
                    v308 = v307;
                    v309 = cclayout_unionCFDataRects(v301);
                    v313 = v309;
                    v314 = v310;
                    v315 = v311;
                    v316 = v312;
                    if (a2 == 1)
                    {
                      v586.origin.x = v302;
                      v586.origin.y = v304;
                      v586.size.width = v306;
                      v586.size.height = v308;
                      MaxY = CGRectGetMaxY(v586);
                      v587.origin.x = v313;
                      v587.origin.y = v314;
                      v587.size.width = v315;
                      v587.size.height = v316;
                      v318 = v465 + MaxY - CGRectGetMinY(v587);
                    }

                    else
                    {
                      v319 = CGRectGetMaxY(*&v309);
                      v588.origin.x = v302;
                      v588.origin.y = v304;
                      v588.size.width = v306;
                      v588.size.height = v308;
                      v318 = -(v465 + v319 - CGRectGetMinY(v588));
                    }

                    cclayout_offsetCFDataRects(v301, 0.0, v318);
                  }
                }

                v320 = cclayout_unionCFDataRects(v294);
                v322 = v321;
                v324 = v323;
                v326 = v325;
                v589.origin.x = v535;
                v589.origin.y = v529;
                *&v589.size.width = aStrc;
                v589.size.height = rectb;
                MidY = CGRectGetMidY(v589);
                v590.origin.x = v320;
                v590.origin.y = v322;
                v590.size.width = v324;
                v590.size.height = v326;
                v328 = CGRectGetMidY(v590);
                cclayout_offsetCFDataRects(v294, 0.0, MidY - v328);
                v329 = cclayout_unionCFDataRects(v294);
                v331 = v330;
                v333 = v332;
                v335 = v334;
                v591.origin.x = cclayout_offsetRectToFitBoundary(v329, v330, v332, v334, v458, v457, v460, v459);
                v336 = v591.origin.x;
                v337 = v591.origin.y;
                v338 = v591.size.width;
                v339 = v591.size.height;
                MinX = CGRectGetMinX(v591);
                v592.origin.x = v329;
                v592.origin.y = v331;
                v592.size.width = v333;
                v592.size.height = v335;
                v537 = MinX - CGRectGetMinX(v592);
                v593.origin.x = v336;
                v593.origin.y = v337;
                v593.size.width = v338;
                v593.size.height = v339;
                v340 = CGRectGetMinY(v593);
                v594.origin.x = v329;
                v594.origin.y = v331;
                v594.size.width = v333;
                v594.size.height = v335;
                v341 = CGRectGetMinY(v594);
                cclayout_offsetCFDataRects(v294, v537, v340 - v341);
                v291 = 1;
                v73 = v456;
                v45 = -1.0;
                v270 = v467 * -0.5;
              }
            }
          }

          v342 = v291 == 0;
        }

        CFRetain(v272);
        v41 = a13;
        if (v269)
        {
LABEL_411:
          CFRelease(v269);
        }

LABEL_412:
        if (v272)
        {
          break;
        }

        v269 = 0;
        if (v342)
        {
          goto LABEL_416;
        }
      }

      CFRelease(v272);
      v269 = v272;
    }

    while (!v342);
    CFRelease(v272);
LABEL_416:
    v595.origin.y = v457;
    v595.origin.x = v458;
    v595.size.height = v459;
    v595.size.width = v460;
    v596 = CGRectIntegral(v595);
    v343 = v596.origin.x;
    v344 = v596.origin.y;
    v345 = v596.size.width;
    v346 = v596.size.height;
    v615.origin.x = cclayout_unionCFDataRects(v444);
    v615.origin.y = v347;
    v615.size.width = v348;
    v615.size.height = v349;
    v597.origin.x = v343;
    v597.origin.y = v344;
    v597.size.width = v345;
    v597.size.height = v346;
    v350 = CGRectContainsRect(v597, v615);
    v46 = v436;
    if (!v350)
    {
      v46 = v436 + -0.1;
    }

    if (v350)
    {
      v38 = v509;
      v351 = v441;
      break;
    }

    v38 = v509;
    v351 = v441;
  }

  while (v46 > 0.0);
LABEL_425:
  v352 = floor(v451 * 0.2);
  v353 = 1.0;
  if (v352 != 0.0)
  {
    v353 = v352;
  }

  v354 = *(v41 + 32);
  v476 = v353;
  if (v354 >= v353)
  {
    v354 = v353;
  }

  v475 = v354;
  if (a4)
  {
    v355 = CFArrayGetCount(a4);
  }

  else
  {
    v355 = 0;
  }

  v356 = a3;
  if (a3)
  {
    v356 = CFArrayGetCount(a3);
  }

  if (v355 >= v356)
  {
    v355 = v356;
  }

  aStrd = *MEMORY[0x1E695E480];
  v477 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v474 = v355;
  if (v355 >= 1)
  {
    v357 = 0;
    v490 = *(MEMORY[0x1E695F050] + 16);
    v491 = *MEMORY[0x1E695F050];
    v510 = v38;
    v442 = v351;
    while (1)
    {
      v358 = v357;
      v359 = CFArrayGetValueAtIndex(a3, v357);
      namea = CFDictionaryGetValue(v359, @"R");
      v360 = CFArrayGetValueAtIndex(a4, v358);
      colora = CFDictionaryGetValue(v360, @"C");
      v361 = CFArrayGetValueAtIndex(Mutable, v358);
      v483 = v358;
      theDictd = CFArrayGetValueAtIndex(v444, v358);
      *v545 = v491;
      v546 = v490;
      LODWORD(v543) = 0;
      v362 = MEMORY[0x19A8CC720](aStrd, 148, 0x10600409A2A7F50, 0);
      *v362 = 0u;
      *(v362 + 16) = 0u;
      *(v362 + 32) = 0u;
      *(v362 + 48) = 0u;
      *(v362 + 64) = 0u;
      *(v362 + 80) = 0u;
      *(v362 + 96) = 0u;
      *(v362 + 112) = 0u;
      *(v362 + 128) = 0u;
      v482 = v362;
      *(v362 + 144) = 0;
      FigCFDictionaryGetCGRectIfPresent();
      FigCFDictionaryGetInt32IfPresent();
      if (v361)
      {
        v363 = CFArrayGetCount(v361);
      }

      else
      {
        v363 = 0;
      }

      BytePtr = CFDataGetBytePtr(theDictd);
      v598.origin.x = *BytePtr;
      v365 = BytePtr[1];
      v598.size.width = BytePtr[2];
      v598.size.height = BytePtr[3];
      v505 = *BytePtr;
      v598.origin.y = v365;
      v504 = v598.size.width;
      v499 = v598.size.height;
      v366 = CGRectGetWidth(v598);
      v367 = CFDictionaryCreateMutable(aStrd, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      longestEffectiveRange.location = 0;
      if (v363 >= 1)
      {
        v368 = 0;
        v369 = v505;
        v518 = v451;
        v498 = v361;
        v497 = v363;
        v495 = v365;
        do
        {
          v370 = CFArrayGetValueAtIndex(v361, v368);
          v371 = v370;
          if (!v368)
          {
            CFArrayGetValueAtIndex(v370, 0);
            FigCFDictionaryGetCGFloatIfPresent();
          }

          if (a2 == 1)
          {
            v372 = v365 + v368 * v451 + *&longestEffectiveRange.location;
          }

          else
          {
            v599.origin.x = v505;
            v599.origin.y = v365;
            v599.size.width = v504;
            v599.size.height = v499;
            v372 = v365 + CGRectGetHeight(v599) - (v368 + 1) * v451 - *&longestEffectiveRange.location;
          }

          v373 = v369;
          v374 = v366;
          v375 = v518;
          v600 = CGRectIntegral(*(&v372 - 1));
          v369 = v600.origin.x;
          v376 = v600.origin.y;
          v366 = v600.size.width;
          v518 = v600.size.height;
          allocatora = CGRectGetHeight(v600);
          if (v371)
          {
            v513 = CFArrayGetCount(v371);
            if (v513 >= 1)
            {
              v507 = v368;
              v508 = v366;
              v377 = 0;
              v378 = 0;
              v538 = 0;
              v379 = v369 - v467;
              v380 = 0.0;
              v506 = v369;
              v381 = v518;
              v512 = v371;
              do
              {
                rectc = v377;
                v382 = CFArrayGetValueAtIndex(v371, v377);
                v530 = CFDictionaryGetValue(v382, @"S");
                v383 = CFAttributedStringGetLength(v530);
                *(&values + 1) = 0;
                *&values = 0;
                FigCFDictionaryGetCGFloatIfPresent();
                v369 = v369 + 0.0;
                v384 = FigCFRangeGetLimit();
                if (v384 < FigCFRangeGetLimit())
                {
                  v385 = v379;
                  do
                  {
                    v386 = FigCFRangeGetLimit();
                    v572.location = 0;
                    v572.length = v383;
                    v387 = CFAttributedStringGetAttributesAndLongestEffectiveRange(v530, v386, v572, &values);
                    v388 = CFDictionaryGetValue(v387, @"d");
                    v389 = CFAttributedStringCreateWithSubstring(aStrd, v530, values);
                    v390 = CTLineCreateWithAttributedString(v389);
                    v391 = *(&values + 1);
                    v392 = CTLineGetOffsetForStringIndex(v390, 0, 0);
                    v393 = CTLineGetOffsetForStringIndex(v390, v391, 0);
                    v394 = CFAttributedStringGetString(v389);
                    CharacterAtIndex = CFStringGetCharacterAtIndex(v394, 0);
                    v396 = CFStringGetCharacterAtIndex(v394, *(&values + 1) - 1);
                    if (v388)
                    {
                      v397 = CFBooleanGetValue(v388);
                      v398 = v397 == 0;
                      LODWORD(v388) = v397 != 0;
                    }

                    else
                    {
                      v398 = 1;
                    }

                    v399 = CFDictionaryGetValue(v387, @"b");
                    v400 = v369 - v385;
                    if (v378 && v400 > 0.0)
                    {
                      if (v400 >= v467)
                      {
                        v401 = v467;
                      }

                      else
                      {
                        v401 = v369 - v385;
                      }

                      v601.origin.x = v385;
                      v601.origin.y = v376;
                      v601.size.width = v401;
                      v601.size.height = allocatora;
                      v602 = CGRectIntegral(v601);
                      cclayout_AddRectWithColorAsPath(v367, v538, v602.origin.x, v602.origin.y, v602.size.width, v602.size.height);
                      v603.origin.x = v385;
                      v603.origin.y = v376;
                      v603.size.width = v401;
                      v603.size.height = allocatora;
                      v379 = v385 + CGRectGetWidth(v603);
                      v400 = v369 - v379;
                    }

                    else
                    {
                      v379 = v385;
                      v385 = v380;
                    }

                    if (CharacterAtIndex == 32)
                    {
                      v402 = 0;
                    }

                    else
                    {
                      v402 = v388;
                    }

                    if (v402 == 1 && v400 > 0.0)
                    {
                      if (v400 >= v467)
                      {
                        v403 = v467;
                      }

                      else
                      {
                        v403 = v400;
                      }

                      v604.origin.x = v385;
                      v604.origin.y = v376;
                      v604.size.width = v403;
                      v604.size.height = allocatora;
                      v380 = v369 - CGRectGetWidth(v604);
                      v605.origin.x = v380;
                      v605.origin.y = v376;
                      v605.size.width = v403;
                      v381 = v518;
                      v605.size.height = allocatora;
                      v606 = CGRectIntegral(v605);
                      cclayout_AddRectWithColorAsPath(v367, v399, v606.origin.x, v606.origin.y, v606.size.width, v606.size.height);
                    }

                    else
                    {
                      v380 = v385;
                    }

                    v404 = v393 - v392;
                    v607.origin.x = v369;
                    v607.origin.y = v376;
                    v607.size.width = v404;
                    v607.size.height = v381;
                    v608 = CGRectIntegral(v607);
                    cclayout_AddRectWithColorAsPath(v367, v399, v608.origin.x, v608.origin.y, v608.size.width, v608.size.height);
                    if (!v398)
                    {
                      v609.origin.x = v369;
                      v609.origin.y = v376;
                      v609.size.width = v404;
                      v609.size.height = v381;
                      v379 = CGRectGetMaxX(v609);
                    }

                    v405 = v538;
                    if ((v388 & (v396 != 32)) != 0)
                    {
                      v405 = v399;
                    }

                    v538 = v405;
                    if ((v388 & (v396 != 32)) != 0)
                    {
                      v378 = 1;
                    }

                    if (v390)
                    {
                      CFRelease(v390);
                    }

                    if (v389)
                    {
                      CFRelease(v389);
                    }

                    v369 = v369 + v404;
                    v406 = FigCFRangeGetLimit();
                    v385 = v379;
                  }

                  while (v406 < FigCFRangeGetLimit());
                }

                v377 = rectc + 1;
                v371 = v512;
              }

              while (rectc + 1 != v513);
              v58 = v378 == 0;
              v41 = a13;
              v361 = v498;
              v363 = v497;
              v365 = v495;
              v366 = v508;
              v368 = v507;
              v369 = v506;
              if (!v58)
              {
                v610.origin.x = v379;
                v610.origin.y = v376;
                v610.size.width = v467;
                v610.size.height = allocatora;
                v611 = CGRectIntegral(v610);
                cclayout_AddRectWithColorAsPath(v367, v538, v611.origin.x, v611.origin.y, v611.size.width, v611.size.height);
              }
            }
          }

          ++v368;
        }

        while (v368 != v363);
      }

      values = v491;
      v551 = v490;
      CFDictionaryApplyFunction(v367, cclayout_GetRectFromPathDictionaryApplier, &values);
      v407 = *&values;
      v408 = *(&values + 1);
      v409 = v551;
      v612.origin.x = v505;
      v612.origin.y = v365;
      v612.size.width = v504;
      v612.size.height = v499;
      v410 = CGRectGetMinX(v612);
      v613.origin.x = v407;
      v613.origin.y = v408;
      v613.size = v409;
      v411 = CGRectGetMinX(v613);
      if (v363 >= 1)
      {
        v412 = v410 - v411;
        if (v412 > 0.0)
        {
          for (jj = 0; jj != v363; ++jj)
          {
            v414 = CFArrayGetValueAtIndex(v361, jj);
            if (v414)
            {
              v415 = v414;
              if (CFArrayGetCount(v414))
              {
                CFArrayGetValueAtIndex(v415, 0);
                *&values = 0;
                FigCFDictionaryGetCGFloatIfPresent();
                *&values = v412 + *&values;
                FigCFDictionarySetCGFloat();
              }
            }
          }
        }
      }

      values = v491;
      v551 = v490;
      CFDictionaryApplyFunction(v367, cclayout_GetRectFromPathDictionaryApplier, &values);
      *v531 = v551;
      *v539 = values;
      v416 = v546;
      *v482 = *v545;
      v482[1] = v416;
      v417 = CFDataGetBytePtr(theDictd);
      v418 = *(v417 + 1);
      v482[2] = *v417;
      v482[3] = v418;
      v482[4] = *v539;
      v482[5] = *v531;
      *(v482 + 12) = v367;
      v419 = namea;
      if (namea)
      {
        v419 = CFRetain(namea);
      }

      v351 = v442;
      *(v482 + 13) = v419;
      v420 = v361 ? CFRetain(v361) : 0;
      v38 = v510;
      *(v482 + 14) = v420;
      if (!colora)
      {
        break;
      }

      v421 = colora;
      v422 = CGColorGetAlpha(colora);
      if (*(v41 + 176) != 1)
      {
        goto LABEL_504;
      }

LABEL_505:
      if (*(v41 + 184) != 1 || v422 == -1.0)
      {
        v422 = *(v41 + 128);
      }

      if (CGColorGetAlpha(v421) == v422)
      {
        if (v421)
        {
          v423 = CFRetain(v421);
        }

        else
        {
          v423 = 0;
        }
      }

      else
      {
        v423 = CGColorCreateCopyWithAlpha(v421, v422);
      }

      *(v482 + 15) = v423;
      *(v482 + 16) = v476;
      *(v482 + 17) = v475;
      *(v482 + 36) = LODWORD(v543);
      CFArrayAppendValue(v477, v482);
      v357 = (v483 + 1);
      if (v483 + 1 == v474)
      {
        goto LABEL_514;
      }
    }

    v422 = -1.0;
LABEL_504:
    v421 = *(v41 + 24);
    goto LABEL_505;
  }

LABEL_514:
  if (a18)
  {
    if (v38)
    {
      v424 = CFRetain(v38);
    }

    else
    {
      v424 = 0;
    }

    *a18 = v424;
  }

  if (a19)
  {
    v425 = cfa;
    if (cfa)
    {
      v425 = CFRetain(cfa);
    }

    *a19 = v425;
  }

  *a20 = v477;
  if (a16)
  {
    *a16 = v434;
  }

  if (a17)
  {
    *a17 = TypographicBounds;
  }

  if (a22)
  {
    *a22 = v351;
  }

  if (a21)
  {
    *a21 = v467;
    a21[1] = v451;
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v444)
  {
    CFRelease(v444);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v433;
}

void FigCaptionLayoutReleaseCaptionElementArray(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        v7 = ValueAtIndex[12];
        if (v7)
        {
          CFRelease(v7);
        }

        v8 = ValueAtIndex[13];
        if (v8)
        {
          CFRelease(v8);
        }

        v9 = ValueAtIndex[14];
        if (v9)
        {
          CFRelease(v9);
        }

        v10 = ValueAtIndex[15];
        if (v10)
        {
          CFRelease(v10);
        }

        CFAllocatorDeallocate(v5, ValueAtIndex);
        ++v4;
      }

      while (v3 != v4);
    }

    CFRelease(a1);
  }
}

__CFArray *FigCaptionLayoutCopyCaptionElementArray(CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, 0);
  if (Mutable)
  {
    v5 = Count < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      v8 = MEMORY[0x19A8CC720](v3, 148, 0x10600409A2A7F50, 0);
      v8[36] = 0;
      *(v8 + 7) = 0u;
      *(v8 + 8) = 0u;
      *(v8 + 5) = 0u;
      *(v8 + 6) = 0u;
      *(v8 + 3) = 0u;
      *(v8 + 4) = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 2) = 0u;
      *v8 = 0u;
      v9 = *(ValueAtIndex + 1);
      *v8 = *ValueAtIndex;
      *(v8 + 1) = v9;
      v10 = *(ValueAtIndex + 3);
      *(v8 + 2) = *(ValueAtIndex + 2);
      *(v8 + 3) = v10;
      v11 = *(ValueAtIndex + 5);
      *(v8 + 4) = *(ValueAtIndex + 4);
      *(v8 + 5) = v11;
      v12 = *(ValueAtIndex + 12);
      if (v12)
      {
        v12 = CFRetain(v12);
      }

      *(v8 + 12) = v12;
      v13 = *(ValueAtIndex + 13);
      if (v13)
      {
        v13 = CFRetain(v13);
      }

      *(v8 + 13) = v13;
      v14 = *(ValueAtIndex + 14);
      if (v14)
      {
        v14 = CFRetain(v14);
      }

      *(v8 + 14) = v14;
      *(v8 + 15) = CGColorRetain(*(ValueAtIndex + 15));
      *(v8 + 8) = *(ValueAtIndex + 8);
      v8[36] = *(ValueAtIndex + 36);
      CFArrayAppendValue(Mutable, v8);
      ++v6;
    }

    while (Count != v6);
  }

  return Mutable;
}

double cclayout_getPixelRectForCellRect(CFArrayRef theArray, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, double a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = theArray;
  v28 = a12;
  v106 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v33 = Count;
    v103 = 0;
    v34 = 15;
    if (Count < 15)
    {
      v34 = Count;
    }

    v99 = v27;
    v101 = v34;
    if (a2 != 1)
    {
      v42 = 0.0;
      if ((a2 & 0xFFFFFFFE) == 2)
      {
        v86 = a2;
        v91 = a3;
        v87 = a4;
        v105 = 0;
        memset(v104, 0, sizeof(v104));
        v89 = Count;
        if (Count >= 1)
        {
          v43 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v27, v43);
            if (ValueAtIndex)
            {
              v45 = ValueAtIndex;
              v46 = CFArrayGetCount(ValueAtIndex);
              v110.origin.x = a9;
              v110.origin.y = a10;
              v110.size.width = a11;
              v110.size.height = v28;
              MinX = CGRectGetMinX(v110);
              if (v46 < 1)
              {
                v59 = 0.0;
                v27 = v99;
              }

              else
              {
                v48 = 0;
                v49 = 0;
                v50 = (MinX + 1.0);
                do
                {
                  v51 = CFArrayGetValueAtIndex(v45, v49);
                  if (cclayout_getLocationFromCommandData(v51, &v103, 0))
                  {
                    Value = CFDictionaryGetValue(v51, @"S");
                    Length = CFAttributedStringGetLength(Value);
                    v54 = CTLineCreateWithAttributedString(Value);
                    v55 = CFAttributedStringGetLength(Value);
                    OffsetForStringIndex = CTLineGetOffsetForStringIndex(v54, 0, 0);
                    v57 = CTLineGetOffsetForStringIndex(v54, v55, 0) - OffsetForStringIndex;
                    if (v49)
                    {
                      v58 = *&a23 * (v103 - v50);
                    }

                    else
                    {
                      v58 = 0.0;
                    }

                    FigCFDictionarySetCGFloat();
                    v50 = v103 + Length;
                    v48 = (v57 + v58 + v48);
                    if (v54)
                    {
                      CFRelease(v54);
                    }

                    v28 = a12;
                  }

                  ++v49;
                }

                while (v46 != v49);
                v59 = v48;
                v27 = v99;
              }
            }

            else
            {
              v111.origin.x = a9;
              v111.origin.y = a10;
              v111.size.width = a11;
              v111.size.height = v28;
              CGRectGetMinX(v111);
              v59 = 0.0;
            }

            *(v104 + v43) = v59;
            if (v42 <= v59)
            {
              v42 = v59;
            }

            ++v43;
          }

          while (v43 != v101);
        }

        if (v86 == 2)
        {
          v60 = FigCaptionLayoutDetectAndChooseAlignmentForCaptionElement(v27);
          v33 = v89;
          a4 = v87;
          a3 = v91;
          v61 = a13;
          if (v89 >= 1 && v60 != 1)
          {
            v62 = 0;
            do
            {
              v63 = CFArrayGetValueAtIndex(v27, v62);
              if (v63)
              {
                v64 = v63;
                if (CFArrayGetCount(v63))
                {
                  CFArrayGetValueAtIndex(v64, 0);
                  FigCFDictionarySetCGFloat();
                }
              }

              ++v62;
            }

            while (v101 != v62);
            v61 = a13;
          }
        }

        else
        {
          a4 = v87;
          a3 = v91;
          v61 = a13;
          v33 = v89;
        }

        goto LABEL_50;
      }

      goto LABEL_49;
    }

    if (Count >= 1)
    {
      v88 = Count;
      v90 = a3;
      v35 = 0;
      do
      {
        v36 = CFArrayGetValueAtIndex(v27, v35);
        if (v36)
        {
          v37 = v36;
          v38 = CFArrayGetCount(v36);
          v107.origin.x = a9;
          v107.origin.y = a10;
          v107.size.width = a11;
          v107.size.height = v28;
          CGRectGetMinX(v107);
          if (v38 >= 1)
          {
            for (i = 0; i != v38; ++i)
            {
              v40 = CFArrayGetValueAtIndex(v37, i);
              if (cclayout_getLocationFromCommandData(v40, &v103, 0))
              {
                v41 = CFDictionaryGetValue(v40, @"S");
                CFAttributedStringGetLength(v41);
                FigCFDictionarySetCGFloat();
                v27 = v99;
              }
            }
          }
        }

        else
        {
          v108.origin.x = a9;
          v108.origin.y = a10;
          v108.size.width = a11;
          v108.size.height = v28;
          CGRectGetMinX(v108);
        }

        ++v35;
      }

      while (v35 != v101);
      a3 = v90;
      v33 = v88;
    }

LABEL_19:
    v109.origin.x = a9;
    v109.origin.y = a10;
    v109.size.width = a11;
    v109.size.height = v28;
    v42 = *&a23 * CGRectGetWidth(v109);
LABEL_49:
    v61 = a13;
    goto LABEL_50;
  }

  v103 = 0;
  if (a2 == 1)
  {
    v33 = 0;
    goto LABEL_19;
  }

  v42 = 0.0;
  v61 = a13;
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_58;
  }

  if (a2 == 2)
  {
    FigCaptionLayoutDetectAndChooseAlignmentForCaptionElement(0);
  }

  v33 = 0;
LABEL_50:
  if (v33)
  {
    v65 = CFArrayGetValueAtIndex(v27, 0);
    if (v65)
    {
      v66 = v65;
      if (CFArrayGetCount(v65))
      {
        cclayout_getPixelRectForCellRect_cold_1(v66, a10);
      }
    }
  }

LABEL_58:
  v100 = v42;
  v112.origin.x = a9;
  v112.origin.y = a10;
  v112.size.width = a11;
  v112.size.height = v28;
  key = CGRectGetHeight(v112);
  v67 = MEMORY[0x1E695F050];
  v92 = *(MEMORY[0x1E695F050] + 8);
  v113.origin.x = a9;
  v113.origin.y = a10;
  v113.size.width = a11;
  v113.size.height = v28;
  v94 = *&a17 * CGRectGetWidth(v113);
  v114.origin.x = a9;
  v114.origin.y = a10;
  v114.size.width = a11;
  v114.size.height = v28;
  v68 = *&a18 * CGRectGetHeight(v114);
  v115.origin.x = a9;
  v115.origin.y = a10;
  v115.size.width = a11;
  v115.size.height = v28;
  v69 = v61 + CGRectGetMinX(v115) * *&a17;
  v70 = a9;
  v116.origin.x = a9;
  v116.origin.y = a10;
  v71 = a11;
  v116.size.width = a11;
  v116.size.height = v28;
  MinY = CGRectGetMinY(v116);
  v102 = v69;
  if (a4 == 1)
  {
    v73 = a14 + MinY * *&a18;
    v74 = v94;
  }

  else
  {
    v75 = a14 + (15.0 - MinY) * *&a18;
    v117.origin.x = v69;
    v117.origin.y = v92;
    v74 = v94;
    v117.size.width = v94;
    v117.size.height = v68;
    v73 = v75 - CGRectGetHeight(v117);
  }

  if (a3 != 2)
  {
    keya = *&a24 * key;
    if (a3 != 1)
    {
      if (a3 != 3)
      {
        return *v67;
      }

      v102 = a19;
    }

    v120.origin.x = v70;
    v120.origin.y = a10;
    v120.size.width = v71;
    v120.size.height = a12;
    if (CGRectGetMinY(v120) >= 7.0)
    {
      v81 = a19;
      if (a4 == 1)
      {
        CGRectGetMaxY(*&v81);
        v122.origin.x = v70;
        v122.origin.y = a10;
        v122.size.width = v71;
        v122.size.height = a12;
        CGRectGetMinY(v122);
        return v102;
      }

      CGRectGetMinY(*&v81);
      v124.origin.x = v70;
      v124.origin.y = a10;
      v124.size.width = v71;
      v124.size.height = a12;
      CGRectGetMinY(v124);
    }

    else
    {
      v77 = a19;
      if (a4 == 1)
      {
        CGRectGetMinY(*&v77);
        v121.origin.x = v70;
        v121.origin.y = a10;
        v121.size.width = v71;
        v121.size.height = a12;
        CGRectGetMinY(v121);
        return v102;
      }

      CGRectGetMaxY(*&v77);
      v123.origin.x = v70;
      v123.origin.y = a10;
      v123.size.width = v71;
      v123.size.height = a12;
      CGRectGetMinY(v123);
    }

    v76 = v102;
    v125.origin.x = v102;
    v125.origin.y = v92;
    v125.size.width = v100;
    v125.size.height = keya;
    CGRectGetHeight(v125);
    return v76;
  }

  v118.origin.x = v102;
  v118.origin.y = v73;
  v118.size.width = v74;
  v118.size.height = v68;
  v76 = v102 + (CGRectGetWidth(v118) - v100) * 0.5;
  v119.origin.x = v102;
  v119.origin.y = v73;
  v119.size.width = v74;
  v119.size.height = v68;
  CGRectGetHeight(v119);
  return v76;
}

double cclayout_offsetRectToFitBoundary(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v15 = a5;
  v44.origin.x = a5;
  v16 = a6;
  v44.origin.y = a6;
  v17 = a7;
  v44.size.width = a7;
  rect = a8;
  v44.size.height = a8;
  if (MinX >= CGRectGetMinX(v44))
  {
    v47.origin.x = v15;
    v18 = v16;
    v19 = v15;
    v47.origin.y = v18;
    v20 = v17;
    v47.size.width = v17;
    v47.size.height = rect;
    MaxX = CGRectGetMaxX(v47);
    v48.origin.x = a1;
    v48.origin.y = a2;
    v23 = a3;
    v22 = a4;
    v48.size.width = a3;
    v48.size.height = a4;
    v26 = CGRectGetMaxX(v48);
    v24 = 0.0;
    if (MaxX < v26)
    {
      v49.origin.x = a1;
      v49.origin.y = a2;
      v49.size.width = a3;
      v49.size.height = a4;
      v27 = CGRectGetMaxX(v49);
      v50.origin.x = v19;
      v50.origin.y = v18;
      v50.size.width = v20;
      v50.size.height = rect;
      v24 = -(v27 - CGRectGetMaxX(v50));
    }
  }

  else
  {
    v45.origin.x = v15;
    v18 = v16;
    v19 = v15;
    v45.origin.y = v18;
    v20 = v17;
    v45.size.width = v17;
    v45.size.height = rect;
    v21 = CGRectGetMinX(v45);
    v46.origin.x = a1;
    v46.origin.y = a2;
    v23 = a3;
    v22 = a4;
    v46.size.width = a3;
    v46.size.height = a4;
    v24 = v21 - CGRectGetMinX(v46);
  }

  dxa = v24;
  v51.origin.x = a1;
  v51.origin.y = a2;
  v51.size.width = v23;
  v51.size.height = v22;
  MinY = CGRectGetMinY(v51);
  v52.origin.x = v19;
  v52.origin.y = v18;
  v52.size.width = v20;
  v52.size.height = rect;
  if (MinY >= CGRectGetMinY(v52))
  {
    v55.origin.x = v19;
    v55.origin.y = v18;
    v55.size.width = v20;
    v55.size.height = rect;
    MaxY = CGRectGetMaxY(v55);
    v56.origin.x = a1;
    v56.origin.y = a2;
    v56.size.width = v23;
    v56.size.height = v22;
    v32 = CGRectGetMaxY(v56);
    v30 = 0.0;
    if (MaxY < v32)
    {
      v57.origin.x = a1;
      v57.origin.y = a2;
      v57.size.width = v23;
      v57.size.height = v22;
      v33 = CGRectGetMaxY(v57);
      v58.origin.x = v19;
      v58.origin.y = v18;
      v58.size.width = v20;
      v58.size.height = rect;
      v30 = -(v33 - CGRectGetMaxY(v58));
    }
  }

  else
  {
    v53.origin.x = v19;
    v53.origin.y = v18;
    v53.size.width = v20;
    v53.size.height = rect;
    v29 = CGRectGetMinY(v53);
    v54.origin.x = a1;
    v54.origin.y = a2;
    v54.size.width = v23;
    v54.size.height = v22;
    v30 = v29 - CGRectGetMinY(v54);
  }

  v34 = a1;
  v35 = a2;
  v36 = v23;
  v37 = v22;

  *&result = CGRectOffset(*&v34, dxa, v30);
  return result;
}

CGColorRef cclayout_createDeviceRGBColor(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v5 = CGColorCreate(v4, components);
  CGColorSpaceRelease(v4);
  return v5;
}

double cclayout_unionCFDataRects(const void *a1)
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v6 = CFGetTypeID(a1);
  if (v6 == CFArrayGetTypeID())
  {
    if (a1)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v18.origin.x = cclayout_unionCFDataRects(ValueAtIndex);
          v18.origin.y = v11;
          v18.size.width = v12;
          v18.size.height = v13;
          v16.origin.x = x;
          v16.origin.y = y;
          v16.size.width = width;
          v16.size.height = height;
          v17 = CGRectUnion(v16, v18);
          x = v17.origin.x;
          y = v17.origin.y;
          width = v17.size.width;
          height = v17.size.height;
        }
      }
    }
  }

  else
  {
    v14 = CFGetTypeID(a1);
    if (v14 == CFDataGetTypeID())
    {
      return *CFDataGetBytePtr(a1);
    }
  }

  return x;
}

void cclayout_offsetCFDataRects(void *a1, double a2, CGFloat a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFArrayGetTypeID())
  {
    if (a1)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          cclayout_offsetCFDataRects(ValueAtIndex, a2, a3);
        }
      }
    }
  }

  else
  {
    v11 = CFGetTypeID(a1);
    if (v11 == CFDataGetTypeID())
    {
      v14 = *CFDataGetBytePtr(a1);
      v12 = CGRectOffset(v14, a2, a3);
      v13.location = 0;
      v13.length = 32;
      CFDataReplaceBytes(a1, v13, &v12, 32);
    }
  }
}

void cclayout_AddRectWithColorAsPath(const __CFDictionary *a1, const void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  Mutable = CGPathCreateMutable();
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  CGPathAddRect(Mutable, 0, v15);
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CGPathAddPath(Value, 0, Mutable);
  }

  else
  {
    CFDictionaryAddValue(a1, a2, Mutable);
  }

  CGPathRelease(Mutable);
}

uint64_t FigTTMLTextCreate(const __CFAllocator *a1, uint64_t a2, __int128 *a3, CFTypeRef *a4)
{
  v8 = FigTTMLGetLibXMLAccess();
  if (v8)
  {
    v9 = v8;
    if (a4)
    {
      FigTTMLNodeGetClassID();
      v10 = CMDerivedObjectCreate();
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v12 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
        if (v12)
        {
          v10 = v12;
          v13 = 0;
        }

        else
        {
          v13 = (*(v9 + 80))(a2);
          v14 = CFStringCreateWithCString(a1, v13, 0x8000100u);
          if (FigTTMLNodeUseDefaultWhitespaceHandling(0))
          {
            v15 = FigTTMLCopyStringWithDefaultWhitespaceHandling(v14);
            if (v14)
            {
              CFRelease(v14);
            }
          }

          else
          {
            v15 = v14;
          }

          *(DerivedStorage + 136) = v15;
          v10 = FigTTMLSkipNode(a2, a3, *(DerivedStorage + 128));
          if (!v10)
          {
            *a4 = 0;
          }
        }
      }
    }

    else
    {
      FigTTMLSetCreate_cold_1(&v17);
      v13 = 0;
      v10 = v17;
    }

    (*(v9 + 112))(v13);
  }

  else
  {
    FigTTMLTextCreate_cold_2(&v17);
    return v17;
  }

  return v10;
}

uint64_t FigTTMLTextCopyContent(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 136);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    FigTTMLTextCopyContent_cold_1(&v7);
    return v7;
  }

  return result;
}

void figTTMLText_Finalize(uint64_t a1)
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

CFTypeRef figTTMLText_CopyDebugDesc(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 136);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t figTTMLText_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = CFGetAllocator(a1);
    *a2 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  }

  else
  {
    figTTMLText_CopyChildNodeArray_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12), vars0);
  }

  return 0;
}

uint64_t figTTMLText_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 14;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLBody_CopyChildNodeArray_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigVideoCompositorCreateCustom(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  FigVideoCompositorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 112) = 0;
  *(DerivedStorage + 88) = 1065353216;
  *(DerivedStorage + 160) = 0;
  *(DerivedStorage + 360) = 0x7FFFFFFFLL;
  *(DerivedStorage + 328) = 0x7FFFFFFFLL;
  v7 = FigSimpleMutexCreate();
  *(DerivedStorage + 16) = v7;
  if (!v7)
  {
    FigVideoCompositorCreateCustom_cold_7(&v16);
    return v16;
  }

  v8 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 168) = v8;
  if (!v8)
  {
    FigVideoCompositorCreateCustom_cold_6(&v16);
    return v16;
  }

  v9 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 192) = v9;
  if (!v9)
  {
    FigVideoCompositorCreateCustom_cold_5(&v16);
    return v16;
  }

  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 216) = v10;
  if (!v10)
  {
    FigVideoCompositorCreateCustom_cold_4(&v16);
    return v16;
  }

  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 296) = v11;
  if (!v11)
  {
    FigVideoCompositorCreateCustom_cold_3(&v16);
    return v16;
  }

  v12 = FigSemaphoreCreate();
  *(DerivedStorage + 312) = v12;
  if (!v12)
  {
    FigVideoCompositorCreateCustom_cold_2();
    return 0;
  }

  Mutable = CFSetCreateMutable(a1, 0, 0);
  *(DerivedStorage + 304) = Mutable;
  if (!Mutable)
  {
    FigVideoCompositorCreateCustom_cold_1(&v16);
    return v16;
  }

  v14 = 0;
  *a3 = 0;
  return v14;
}

uint64_t customVideoCompositor_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFSetApplyFunction(*(DerivedStorage + 304), customVideoCompositor_purgePendingFrame, a1);
  v3 = *(DerivedStorage + 304);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 56) = 0;
  }

  v6 = *(DerivedStorage + 72);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 72) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 80);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 80) = 0;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 32) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  v11 = *(DerivedStorage + 24);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 24) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v12 = *(DerivedStorage + 8);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 8) = 0;
  }

  v13 = *(DerivedStorage + 96);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 96) = 0;
  }

  v14 = *(DerivedStorage + 104);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 104) = 0;
  }

  v15 = *(DerivedStorage + 120);
  if (v15)
  {
    *(DerivedStorage + 120) = 0;
    free(v15);
  }

  v16 = *(DerivedStorage + 128);
  if (v16)
  {
    *(DerivedStorage + 128) = 0;
    free(v16);
  }

  v17 = *(DerivedStorage + 144);
  if (v17)
  {
    *(DerivedStorage + 144) = 0;
    free(v17);
  }

  v18 = *(DerivedStorage + 152);
  if (v18)
  {
    *(DerivedStorage + 152) = 0;
    free(v18);
  }

  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 16) = 0;
  }

  v19 = *(DerivedStorage + 168);
  if (v19)
  {
    dispatch_release(v19);
    *(DerivedStorage + 168) = 0;
  }

  v20 = *(DerivedStorage + 192);
  if (v20)
  {
    dispatch_release(v20);
    *(DerivedStorage + 192) = 0;
  }

  if (*(DerivedStorage + 216))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 216) = 0;
  }

  if (*(DerivedStorage + 296))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 296) = 0;
  }

  result = *(DerivedStorage + 312);
  if (result)
  {
    result = FigSemaphoreDestroy();
    *(DerivedStorage + 312) = 0;
  }

  return result;
}

__CFString *customVideoCompositor_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  cf = 0;
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositor_Custom %p retainCount: %ld allocator: %p ", a1, v4, v5);
  v6 = cvc_copyPerformanceDictionary(a1, &cf);
  v7 = cf;
  if (!v6 && cf)
  {
    CFStringAppendFormat(Mutable, 0, @", performanceDictionary %@", cf);
    v7 = cf;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t customVideoCompositor_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!CFEqual(a2, @"RenderDimensions"))
  {
    if (CFEqual(a2, @"RenderPixelAspectRatio"))
    {
      v8 = *(DerivedStorage + 32);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"RenderEdgeProcessingPixels"))
    {
      v8 = *(DerivedStorage + 40);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"DestinationPixelBufferDesiredAttributes"))
    {
      v8 = *(DerivedStorage + 48);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"DestinationPixelBufferDesiredYCbCrMatrix"))
    {
      v8 = *(DerivedStorage + 56);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"DestinationPixelBufferDesiredColorPrimaries"))
    {
      v8 = *(DerivedStorage + 72);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"DestinationPixelBufferDesiredTransferFunction"))
    {
      v8 = *(DerivedStorage + 64);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"SourcePixelBufferAttributes"))
    {
      v8 = *(DerivedStorage + 80);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"RenderScale"))
    {
      UInt32 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (DerivedStorage + 88));
      goto LABEL_30;
    }

    if (CFEqual(a2, @"CanApplyRenderScale"))
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a2, @"HighQualityRendering"))
      {
        if (CFEqual(a2, @"PixelBufferPoolSharingID"))
        {
          UInt32 = *(DerivedStorage + 96);
          if (!UInt32)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (!CFEqual(a2, @"CompositorInstanceID"))
          {
            if (!CFEqual(a2, @"SourceColorConformanceCapabilityLevel"))
            {
              if (CFEqual(a2, @"PerformanceDictionary"))
              {
                FigSimpleMutexUnlock();
                v9 = cvc_copyPerformanceDictionary(a1, a4);
                FigSimpleMutexLock();
              }

              else if (CFEqual(a2, @"SupportsSpatialSourceBuffers"))
              {
                v9 = 0;
                if (*(DerivedStorage + 118))
                {
                  v13 = MEMORY[0x1E695E4D0];
                }

                else
                {
                  v13 = MEMORY[0x1E695E4C0];
                }

                *a4 = *v13;
              }

              else
              {
                fig_log_get_emitter();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
                v9 = v14;
              }

              goto LABEL_20;
            }

            UInt32 = FigCFNumberCreateUInt32();
LABEL_30:
            v9 = 0;
            *a4 = UInt32;
            goto LABEL_20;
          }

          UInt32 = *(DerivedStorage + 104);
          if (!UInt32)
          {
            goto LABEL_30;
          }
        }

LABEL_29:
        UInt32 = CFRetain(UInt32);
        goto LABEL_30;
      }

      v12 = MEMORY[0x1E695E4D0];
      if (!*(DerivedStorage + 116))
      {
        v12 = MEMORY[0x1E695E4C0];
      }
    }

    UInt32 = *v12;
    if (!*v12)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v8 = *(DerivedStorage + 24);
LABEL_17:
  *a4 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = 0;
LABEL_20:
  FigSimpleMutexUnlock();
  return v9;
}

const void *customVideoCompositor_SetProperty(const void *a1, void *a2, const void *a3)
{
  values = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(@"RenderDimensions", a2))
  {
    cf.width = 0.0;
    cf.height = 0.0;
    if (a3)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(a3) && CGSizeMakeWithDictionaryRepresentation(a3, &cf) && cf.width > 0.0 && cf.height > 0.0)
      {
        v9 = *(DerivedStorage + 24);
        *(DerivedStorage + 24) = a3;
        CFRetain(a3);
        if (v9)
        {
          CFRelease(v9);
        }

        a3 = 0;
        goto LABEL_10;
      }
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&cf.width, LODWORD(cf.height), values);
    a3 = v11;
    goto LABEL_12;
  }

  if (CFEqual(@"RenderPixelAspectRatio", a2))
  {
    if (a3)
    {
      v12 = CFDictionaryGetTypeID();
      if (v12 == CFGetTypeID(a3))
      {
        Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6965EF0]);
        v14 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965F00]);
        LODWORD(cf.width) = 0;
        valuePtr = 0;
        if (Value)
        {
          v15 = v14;
          v16 = CFNumberGetTypeID();
          if (v16 == CFGetTypeID(Value))
          {
            CFNumberGetValue(Value, kCFNumberIntType, &cf);
            if (SLODWORD(cf.width) >= 1)
            {
              if (v15)
              {
                v17 = CFNumberGetTypeID();
                if (v17 == CFGetTypeID(v15))
                {
                  CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
                  if (valuePtr >= 1)
                  {
                    v18 = *(DerivedStorage + 32);
                    *(DerivedStorage + 32) = a3;
LABEL_64:
                    CFRetain(a3);
                    goto LABEL_65;
                  }
                }
              }
            }
          }
        }
      }

      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< CustomVideoCompositor >>>>", 799, v3);
      goto LABEL_46;
    }

    v18 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = 0;
LABEL_65:
    if (v18)
    {
      CFRelease(v18);
    }

    *(DerivedStorage + 117) = 1;
    goto LABEL_68;
  }

  if (CFEqual(@"RenderEdgeProcessingPixels", a2))
  {
    if (!a3)
    {
      v18 = *(DerivedStorage + 40);
      *(DerivedStorage + 40) = 0;
      goto LABEL_65;
    }

    v21 = CFArrayGetTypeID();
    if (v21 == CFGetTypeID(a3) && CFArrayGetCount(a3) == 4)
    {
      v22 = 0;
      while (1)
      {
        v23 = CFNumberGetTypeID();
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v22);
        if (v23 != CFGetTypeID(ValueAtIndex))
        {
          break;
        }

        if (++v22 == 4)
        {
          v18 = *(DerivedStorage + 40);
          *(DerivedStorage + 40) = a3;
          goto LABEL_64;
        }
      }
    }

    v28 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 4294954516, "<<<< CustomVideoCompositor >>>>", 807, v3);
LABEL_46:
    a3 = v20;
LABEL_47:
    FigSimpleMutexUnlock();
    return a3;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredAttributes", a2))
  {
    if (a3)
    {
      v25 = CFDictionaryGetTypeID();
      if (v25 != CFGetTypeID(a3))
      {
        v30 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 4294954516, "<<<< CustomVideoCompositor >>>>", 824, v3);
        goto LABEL_46;
      }
    }

    cf.width = 0.0;
    a3 = customVideoCompositor_copySuitablePixelBufferAttributes(a3, 1, &cf);
    if (!a3)
    {
      v26 = *(DerivedStorage + 48);
      width = cf.width;
      *(DerivedStorage + 48) = cf.width;
      if (width != 0.0)
      {
        CFRetain(*&width);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      if (width != 0.0)
      {
        CFRelease(*&width);
      }

      goto LABEL_10;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredYCbCrMatrix", a2))
  {
    if (a3)
    {
      v29 = CFStringGetTypeID();
      if (v29 == CFGetTypeID(a3))
      {
        v18 = *(DerivedStorage + 56);
        *(DerivedStorage + 56) = a3;
        goto LABEL_64;
      }

      v32 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 4294954516, "<<<< CustomVideoCompositor >>>>", 833, v3);
      goto LABEL_46;
    }

    v18 = *(DerivedStorage + 56);
    *(DerivedStorage + 56) = 0;
    goto LABEL_65;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredColorPrimaries", a2))
  {
    if (!a3)
    {
      v18 = *(DerivedStorage + 72);
      *(DerivedStorage + 72) = 0;
      goto LABEL_65;
    }

    v31 = CFStringGetTypeID();
    if (v31 == CFGetTypeID(a3))
    {
      v18 = *(DerivedStorage + 72);
      *(DerivedStorage + 72) = a3;
      goto LABEL_64;
    }

    v38 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 4294954516, "<<<< CustomVideoCompositor >>>>", 842, v3);
    goto LABEL_46;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredTransferFunction", a2))
  {
    if (!a3)
    {
      v18 = *(DerivedStorage + 64);
      *(DerivedStorage + 64) = 0;
      goto LABEL_65;
    }

    v33 = CFStringGetTypeID();
    if (v33 == CFGetTypeID(a3))
    {
      v18 = *(DerivedStorage + 64);
      *(DerivedStorage + 64) = a3;
      goto LABEL_64;
    }

    v42 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, 4294954516, "<<<< CustomVideoCompositor >>>>", 851, v3);
    goto LABEL_46;
  }

  if (CFEqual(@"SourcePixelBufferAttributes", a2))
  {
    if (!a3 || (v39 = CFDictionaryGetTypeID(), v39 == CFGetTypeID(a3)))
    {
      cf.width = 0.0;
      a3 = customVideoCompositor_copySuitablePixelBufferAttributes(a3, 0, &cf);
      v10 = 0;
      if (!a3)
      {
        v40 = *(DerivedStorage + 80);
        v41 = cf.width;
        *(DerivedStorage + 80) = cf.width;
        if (v41 != 0.0)
        {
          CFRetain(*&v41);
        }

        if (v40)
        {
          CFRelease(v40);
        }

        if (v41 != 0.0)
        {
          CFRelease(*&v41);
        }

        v10 = 1;
      }

LABEL_13:
      FigSimpleMutexUnlock();
      if (!v10)
      {
        return a3;
      }

      goto LABEL_69;
    }

    v47 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, 4294954516, "<<<< CustomVideoCompositor >>>>", 866, v3);
    goto LABEL_46;
  }

  if (CFEqual(@"RenderScale", a2))
  {
    LODWORD(cf.width) = 1065353216;
    if (!a3)
    {
      v44 = 1.0;
      goto LABEL_102;
    }

    v43 = CFGetTypeID(a3);
    if (v43 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a3, kCFNumberFloatType, &cf);
      v44 = *&cf.width;
      if (*&cf.width > 0.0)
      {
        goto LABEL_102;
      }

      v45 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, 4294954516, "<<<< CustomVideoCompositor >>>>", 878, v3);
    }

    else
    {
      v49 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, 4294954516, "<<<< CustomVideoCompositor >>>>", 882, v3);
    }

    a3 = v46;
    if (v46)
    {
      goto LABEL_12;
    }

    v44 = *&cf.width;
LABEL_102:
    a3 = 0;
    *(DerivedStorage + 88) = v44;
LABEL_10:
    v10 = 1;
    *(DerivedStorage + 117) = 1;
    goto LABEL_13;
  }

  if (!CFEqual(@"HighQualityRendering", a2))
  {
    if (CFEqual(@"ClientPID", a2))
    {
      if (a3)
      {
        v50 = CFGetTypeID(a3);
        if (v50 == CFNumberGetTypeID())
        {
          v51 = (DerivedStorage + 164);
LABEL_113:
          CFNumberGetValue(a3, kCFNumberSInt32Type, v51);
          goto LABEL_120;
        }

        goto LABEL_122;
      }

      *(DerivedStorage + 164) = 0;
      goto LABEL_120;
    }

    if (CFEqual(@"WorkerThreadPriority", a2))
    {
      if (a3)
      {
        v53 = CFGetTypeID(a3);
        if (v53 == CFNumberGetTypeID())
        {
          v51 = (DerivedStorage + 160);
          goto LABEL_113;
        }

LABEL_122:
        a3 = 0;
        goto LABEL_47;
      }

      *(DerivedStorage + 160) = 0;
LABEL_120:
      if (*(DerivedStorage + 168))
      {
        FigDispatchQueueSetPriorityAndClientPID();
      }

      goto LABEL_122;
    }

    if (CFEqual(@"CompositorInstanceID", a2))
    {
      if (a3)
      {
        v54 = CFGetTypeID(a3);
        if (v54 != CFNumberGetTypeID())
        {
          goto LABEL_122;
        }

        v55 = *(DerivedStorage + 104);
        *(DerivedStorage + 104) = a3;
LABEL_125:
        CFRetain(a3);
        goto LABEL_127;
      }

      v55 = *(DerivedStorage + 104);
      *(DerivedStorage + 104) = 0;
    }

    else
    {
      if (!CFEqual(@"PixelBufferPoolSharingID", a2))
      {
        if (!CFEqual(@"LoopTimeRange", a2))
        {
          if (CFEqual(@"SourceColorConformanceCapabilityLevel", a2))
          {
            if (!a3)
            {
              goto LABEL_47;
            }

            v56 = CFGetTypeID(a3);
            if (v56 == CFNumberGetTypeID())
            {
              CFNumberGetValue(a3, kCFNumberSInt32Type, (DerivedStorage + 112));
            }
          }

          else
          {
            if (!CFEqual(@"SupportsSpatialSourceBuffers", a2))
            {
              v59 = fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, 4294954512, "<<<< CustomVideoCompositor >>>>", 955, v3);
              goto LABEL_46;
            }

            if (!a3)
            {
              goto LABEL_47;
            }

            v57 = CFGetTypeID(a3);
            if (v57 == CFBooleanGetTypeID())
            {
              v58 = CFBooleanGetValue(a3);
              a3 = 0;
              *(DerivedStorage + 118) = v58;
              goto LABEL_47;
            }
          }
        }

        goto LABEL_122;
      }

      v55 = *(DerivedStorage + 96);
      *(DerivedStorage + 96) = a3;
      if (a3)
      {
        goto LABEL_125;
      }
    }

LABEL_127:
    if (v55)
    {
      CFRelease(v55);
    }

    goto LABEL_122;
  }

  if (a3)
  {
    v48 = CFBooleanGetTypeID();
    if (v48 != CFGetTypeID(a3))
    {
      v52 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, 4294954516, "<<<< CustomVideoCompositor >>>>", 902, v3);
      goto LABEL_46;
    }

    *(DerivedStorage + 116) = CFBooleanGetValue(a3);
  }

  else
  {
    *(DerivedStorage + 116) = 0;
  }

LABEL_68:
  FigSimpleMutexUnlock();
LABEL_69:
  v34 = CFGetAllocator(a1);
  v35 = CFDictionaryCreate(v34, &kFigVideoCompositorParameter_ChangedProperty, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v35)
  {
    v36 = v35;
    CMNotificationCenterGetDefaultLocalCenter();
    a3 = CMNotificationCenterPostNotification();
    CFRelease(v36);
  }

  else
  {
    customVideoCompositor_SetProperty_cold_1(&cf);
    return LODWORD(cf.width);
  }

  return a3;
}

uint64_t customVideoCompositor_purgePendingFrame(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 176);
  if (v4)
  {
    v4(*(DerivedStorage + 184), a1, 4294954790, 0, 0);
  }

  return FigSemaphoreSignal();
}

uint64_t cvc_copyPerformanceDictionary(uint64_t a1, const __CFDictionary **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a2)
  {
    return 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = 0.0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  keys[0] = @"NumberOfSourceFramesPassedThrough";
  v4 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (DerivedStorage + 320));
  keys[1] = @"TotalNumberOfPreProcessedLayers";
  values[1] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 352));
  if (*(DerivedStorage + 384) < 1)
  {
    v5 = 2;
  }

  else
  {
    v14 = (*(DerivedStorage + 360) / 1000000.0);
    *&v28 = 0x1F0B4DA98;
    *&v18 = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 368) / 1000000.0);
    *(&v28 + 1) = 0x1F0B4DAB8;
    *(&v18 + 1) = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 376) / (*(DerivedStorage + 384) * 1000000.0));
    *&v29 = 0x1F0B4DAD8;
    *&v19 = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v5 = 5;
  }

  if (*(DerivedStorage + 352) >= 1)
  {
    v14 = (*(DerivedStorage + 328) / 1000000.0);
    keys[v5] = @"MinPreprocessingTime";
    values[v5] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 336) / 1000000.0);
    keys[v5 + 1] = @"MaxPreprocessingTime";
    values[v5 + 1] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 344) / (*(DerivedStorage + 352) * 1000000.0));
    keys[v5 + 2] = @"AveragePreprocessingTime";
    values[v5 + 2] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v5 += 3;
  }

  if (*(DerivedStorage + 416) >= 1)
  {
    v14 = (*(DerivedStorage + 392) / 1000000.0);
    keys[v5] = @"MinBufferReadyingTime";
    values[v5] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 400) / 1000000.0);
    keys[v5 + 1] = @"MaxBufferReadyingTime";
    values[v5 + 1] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 408) / (*(DerivedStorage + 416) * 1000000.0));
    keys[v5 + 2] = @"AverageBufferReadyingTime";
    values[v5 + 2] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v5 += 3;
  }

  v7 = v5;
  v8 = CFDictionaryCreate(v4, keys, values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 248);
  if (v9)
  {
    v6 = v9(*(DerivedStorage + 288), &cf);
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  if (!v6)
  {
    v10 = cf;
    if (cf)
    {
      Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        CFDictionaryApplyFunction(v10, cvc_mergeDictionariesApplier, Mutable);
        CFDictionaryApplyFunction(v8, cvc_mergeDictionariesApplier, Mutable);
LABEL_17:
        if (v8)
        {
          CFRelease(v8);
        }

        v6 = 0;
        v8 = Mutable;
        goto LABEL_20;
      }

      if (cvc_copyPerformanceDictionary_cold_1(&v16))
      {
        goto LABEL_17;
      }

      v6 = v16;
    }
  }

LABEL_20:
  *a2 = v8;
  v12 = values;
  do
  {
    if (*v12)
    {
      CFRelease(*v12);
    }

    ++v12;
    --v7;
  }

  while (v7);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t customVideoCompositor_copySuitablePixelBufferAttributes(const void *a1, int a2, CFDictionaryRef *a3)
{
  resolvedDictionaryOut = 0;
  v5 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    customVideoCompositor_copySuitablePixelBufferAttributes_cold_3(&v18);
LABEL_15:
    v12 = 0;
    v15 = v18;
    goto LABEL_9;
  }

  v7 = MutableCopy;
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6966208]);
  CFDictionaryRemoveValue(v7, *MEMORY[0x1E69660B8]);
  CFDictionaryRemoveValue(v7, *MEMORY[0x1E6966060]);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    customVideoCompositor_copySuitablePixelBufferAttributes_cold_2(v7, &v18);
    goto LABEL_15;
  }

  v9 = Mutable;
  FigGetAlignmentForIOSurfaceOutput();
  PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
  if (PixelBufferAttributesWithIOSurfaceSupport)
  {
    v15 = PixelBufferAttributesWithIOSurfaceSupport;
    v12 = 0;
  }

  else
  {
    v11 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    v12 = v11;
    if (v11)
    {
      CFArrayAppendValue(v11, 0);
      CFArrayAppendValue(v12, v7);
      v13 = CFGetAllocator(a1);
      if (CVPixelBufferCreateResolvedAttributesDictionary(v13, v12, &resolvedDictionaryOut) && (v14 = FigCreatePixelBufferAttributesWithIOSurfaceSupport(), v14))
      {
        v15 = v14;
        if (resolvedDictionaryOut)
        {
          CFRelease(resolvedDictionaryOut);
        }
      }

      else
      {
        v15 = 0;
        *a3 = resolvedDictionaryOut;
        resolvedDictionaryOut = 0;
      }
    }

    else
    {
      customVideoCompositor_copySuitablePixelBufferAttributes_cold_1(&v18);
      v15 = v18;
    }
  }

  CFRelease(v7);
  CFRelease(v9);
LABEL_9:
  if (v12)
  {
    CFRelease(v12);
  }

  return v15;
}

uint64_t customVideoCompositor_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __customVideoCompositor_SetOutputCallback_block_invoke;
  block[3] = &unk_1E74999E0;
  block[6] = a2;
  block[7] = a3;
  block[4] = &v11;
  block[5] = DerivedStorage;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t customVideoCompositor_SetCustomCallbacks(void *a1, void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    __copy_assignment_8_8_t0w8_pa0_44030_8_pa0_33393_16_pa0_15098_24_pa0_21060_32_pa0_1898_40_pa0_17456_48_pa0_31433_56((DerivedStorage + 224), a2);
  }

  else
  {
    CFSetApplyFunction(*(DerivedStorage + 304), customVideoCompositor_purgePendingFrame, a1);
    CFSetRemoveAllValues(*(DerivedStorage + 304));
    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    *(DerivedStorage + 224) = 0u;
    *(DerivedStorage + 240) = 0u;
    *(DerivedStorage + 256) = 0u;
    *(DerivedStorage + 272) = 0u;
  }

  *(DerivedStorage + 288) = a3;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t customVideoCompositor_CompletePreroll(const void *a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v7 = *(DerivedStorage + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __customVideoCompositor_CompletePreroll_block_invoke;
  block[3] = &__block_descriptor_tmp_15_10;
  v10 = a2;
  v11 = a3;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v7, block);
  return 0;
}

uint64_t customVideoCompositor_SetCompletePrerollCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __customVideoCompositor_SetCompletePrerollCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_16_10;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v6, block);
  return 0;
}

uint64_t customVideoCompositor_RenderFrameFromWindow(const void *a1, const __CFDictionary *a2, const __CFDictionary *a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v74 = 0;
  v75 = 0;
  v73 = 0uLL;
  if (!a4 || (v14 = CFGetTypeID(a4), v14 != CFDictionaryGetTypeID()))
  {
    customVideoCompositor_RenderFrameFromWindow_cold_7(v71);
LABEL_92:
    v33 = 0;
    v32 = LODWORD(v71[0]);
    goto LABEL_79;
  }

  Value = CFDictionaryGetValue(a4, @"PassthroughSourceVideoTrackID");
  if (!Value)
  {
    FigSimpleMutexLock();
    Count = CFSetGetCount(*(DerivedStorage + 304));
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (Count > 1)
    {
      do
      {
        FigSimpleMutexUnlock();
        FigSemaphoreWaitRelative();
        FigSimpleMutexLock();
      }

      while (CFSetGetCount(*(DerivedStorage + 304)) > 1);
    }

    v22 = FigGetUpTimeNanoseconds();
    v23 = (v22 - UpTimeNanoseconds) / 1000;
    ++*(DerivedStorage + 384);
    v24 = *(DerivedStorage + 368);
    *(DerivedStorage + 376) += v23;
    v25 = *(DerivedStorage + 360);
    if (v25 >= v23)
    {
      v25 = (v22 - UpTimeNanoseconds) / 1000;
    }

    if (v24 > v23)
    {
      v23 = v24;
    }

    *(DerivedStorage + 360) = v25;
    *(DerivedStorage + 368) = v23;
    CFSetSetValue(*(DerivedStorage + 304), a6);
    FigSimpleMutexUnlock();
    v26 = CFDictionaryGetValue(a4, @"RequiredVideoTrackIDArray");
    if (FigCFDictionaryGetCount() < 1)
    {
      Mutable = 0;
    }

    else if (v26)
    {
      v64 = a6;
      v27 = CFArrayGetCount(v26);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v27, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v27 < 1)
      {
        a6 = v64;
      }

      else
      {
        cfa = a7;
        for (i = 0; i != v27; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v26, i);
          v31 = FigCFDictionaryGetValue();
          if (v31)
          {
            CFDictionarySetValue(Mutable, ValueAtIndex, v31);
          }
        }

        a6 = v64;
        a7 = cfa;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2);
    }

    v50 = CFDictionaryGetValue(a4, @"RequiredSampleDataTrackIDArray");
    if (FigCFDictionaryGetCount() < 1)
    {
      Copy = 0;
    }

    else if (v50)
    {
      v66 = a6;
      v51 = CFArrayGetCount(v50);
      Copy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v51, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v51 < 1)
      {
        a6 = v66;
      }

      else
      {
        cfb = a7;
        for (j = 0; j != v51; ++j)
        {
          v54 = CFArrayGetValueAtIndex(v50, j);
          v55 = FigCFDictionaryGetValue();
          if (v55)
          {
            CFDictionarySetValue(Copy, v54, v55);
          }
        }

        a6 = v66;
        a7 = cfb;
      }
    }

    else
    {
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a3);
    }

    FigSimpleMutexLock();
    v56 = *(DerivedStorage + 272);
    if (v56)
    {
      v58 = *(DerivedStorage + 288);
      *v71 = *a5;
      v72 = *(a5 + 16);
      v59 = v56(v58, Mutable, Copy, a4, v71, a6);
      v32 = 0;
      if (v59)
      {
        v60 = 0;
        v32 = v59;
        if (!Mutable)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }
    }

    else
    {
      v57 = *(DerivedStorage + 280);
      if (!v57)
      {
        customVideoCompositor_RenderFrameFromWindow_cold_6(v71);
        v60 = 0;
        v32 = LODWORD(v71[0]);
        if (!Mutable)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      v61 = *(DerivedStorage + 288);
      *v71 = *a5;
      v72 = *(a5 + 16);
      v32 = v57(v61, Mutable, Copy, a4, v71, a6, a7);
    }

    FigSimpleMutexUnlock();
    v60 = 1;
    if (!Mutable)
    {
LABEL_74:
      if (Copy)
      {
        CFRelease(Copy);
      }

      if ((v60 & 1) == 0)
      {
        FigSimpleMutexUnlock();
        FigSimpleMutexLock();
        CFSetRemoveValue(*(DerivedStorage + 304), a6);
        FigSimpleMutexUnlock();
        FigSemaphoreSignal();
      }

      goto LABEL_78;
    }

LABEL_73:
    CFRelease(Mutable);
    goto LABEL_74;
  }

  v16 = CFGetTypeID(Value);
  if (v16 != CFNumberGetTypeID())
  {
    customVideoCompositor_RenderFrameFromWindow_cold_1(v71);
    goto LABEL_92;
  }

  if (!FigCFDictionaryGetValueIfPresent())
  {
    v32 = 0;
LABEL_78:
    v33 = 0;
LABEL_79:
    CVPixelBufferPoolFlush(*(DerivedStorage + 8), 0);
    goto LABEL_80;
  }

  *v71 = *a5;
  v72 = *(a5 + 16);
  v17 = FigVCPGetTimedSampleAtTimeFromOrderedArray(v74);
  if (!v17)
  {
    customVideoCompositor_RenderFrameFromWindow_cold_5(v71);
    goto LABEL_92;
  }

  v18 = v17;
  if (FigVCPTimedSampleContainsPixelBuffer(v17))
  {
    PixelBuffer = FigVCPTimedSampleGetPixelBuffer(v18, &v73 + 1);
    if (PixelBuffer)
    {
LABEL_93:
      v32 = PixelBuffer;
      goto LABEL_78;
    }
  }

  else if (FigVCPTimedSampleContainsTaggedBufferGroup(v18))
  {
    PixelBuffer = FigVCPTimedSampleGetTaggedBufferGroup(v18, &v73);
    if (PixelBuffer)
    {
      goto LABEL_93;
    }
  }

  v33 = v73;
  if (v73 == 0)
  {
    customVideoCompositor_RenderFrameFromWindow_cold_4(v71);
    goto LABEL_92;
  }

  if (v73)
  {
    v71[0] = 0;
    v76 = 0;
    v34 = CFGetAllocator(a1);
    v35 = CMTaggedBufferGroupGetCount(v33);
    v36 = CFArrayCreateMutable(v34, 0, MEMORY[0x1E695E9C0]);
    if (v36)
    {
      v37 = v36;
      v38 = CFArrayCreateMutable(v34, 0, MEMORY[0x1E695E9C0]);
      if (v38)
      {
        v39 = v38;
        if (v35 < 1)
        {
LABEL_42:
          v33 = CFRetain(v33);
LABEL_43:
          v32 = 0;
          v71[0] = 0;
        }

        else
        {
          v63 = v34;
          v65 = a6;
          v40 = 0;
          v41 = 0;
          do
          {
            CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v33, v40);
            v43 = customVideoCompositor_copyPassthroughFrame(a1, CVPixelBufferAtIndex, &v76);
            if (v43)
            {
              v32 = v43;
              if (v76)
              {
                CFRelease(v76);
              }

              v33 = 0;
              a6 = v65;
              goto LABEL_44;
            }

            TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v33, v40);
            v45 = v76;
            CFArrayAppendValue(v37, v76);
            CFArrayAppendValue(v39, TagCollectionAtIndex);
            if (v45 != CVPixelBufferAtIndex)
            {
              v41 = 1;
            }

            if (v45)
            {
              CFRelease(v45);
              v76 = 0;
            }

            ++v40;
          }

          while (v35 != v40);
          a6 = v65;
          if (!v41)
          {
            goto LABEL_42;
          }

          v46 = MEMORY[0x19A8CF050](v63, v39, v37, v71);
          if (!v46)
          {
            v33 = v71[0];
            goto LABEL_43;
          }

          v32 = v46;
          v33 = 0;
        }

LABEL_44:
        CFRelease(v37);
        CFRelease(v39);
        if (v71[0])
        {
          CFRelease(v71[0]);
        }

        if (v32)
        {
          goto LABEL_79;
        }

LABEL_47:
        v47 = 0;
LABEL_49:
        ++*(DerivedStorage + 320);
        v49 = *(DerivedStorage + 168);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __customVideoCompositor_RenderFrameFromWindow_block_invoke;
        block[3] = &__block_descriptor_tmp_17_7;
        block[4] = DerivedStorage;
        block[5] = a6;
        block[6] = v47;
        block[7] = v33;
        dispatch_sync(v49, block);
        v32 = 0;
        goto LABEL_50;
      }

      customVideoCompositor_RenderFrameFromWindow_cold_2(v37, v77);
    }

    else
    {
      customVideoCompositor_RenderFrameFromWindow_cold_3(v77);
    }

    v33 = 0;
    v32 = v77[0];
    if (v77[0])
    {
      goto LABEL_79;
    }

    goto LABEL_47;
  }

  v48 = customVideoCompositor_copyPassthroughFrame(a1, *(&v73 + 1), &v75);
  v47 = v75;
  if (!v48)
  {
    goto LABEL_49;
  }

  v32 = v48;
LABEL_50:
  CVPixelBufferPoolFlush(*(DerivedStorage + 8), 0);
  if (v47)
  {
    CFRelease(v47);
  }

LABEL_80:
  if (v33)
  {
    CFRelease(v33);
  }

  return v32;
}

double customVideoCompositor_outputCustomFrameCommon(const void *a1, const void *a2, int a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v12 = CFSetContainsValue(*(DerivedStorage + 304), a2);
  FigSimpleMutexUnlock();
  if (v12)
  {
    if (a4)
    {
      CFRetain(a4);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v13 = *(DerivedStorage + 168);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __customVideoCompositor_outputCustomFrameCommon_block_invoke;
    v16[3] = &__block_descriptor_tmp_14_11;
    v17 = a3;
    v16[4] = a4;
    v16[5] = a1;
    v16[6] = a5;
    v16[7] = DerivedStorage;
    v16[8] = a2;
    dispatch_async(v13, v16);
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< CustomVideoCompositor >>>>", 2219, v5);
  }

  return result;
}

void __customVideoCompositor_outputCustomFrameCommon_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  if (v3)
  {
    customVideoCompositor_handleBufferGPUSynchronization(*(a1 + 40), v3);
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(a1 + 40);
      Count = CMTaggedBufferGroupGetCount(*(a1 + 48));
      if (Count >= 1)
      {
        v12 = Count;
        for (i = 0; i != v12; ++i)
        {
          CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v9, i);
          customVideoCompositor_handleBufferGPUSynchronization(v10, CVPixelBufferAtIndex);
        }
      }
    }
  }

  FigSimpleMutexLock();
  CFSetRemoveValue(*(*(a1 + 56) + 304), *(a1 + 64));
  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  v4 = *(a1 + 56);
  v5 = *(v4 + 176);
  if (v5)
  {
    v5(*(v4 + 184), *(a1 + 64), v2, *(a1 + 32), *(a1 + 48));
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t customVideoCompositor_handleBufferGPUSynchronization(uint64_t a1, void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = result;
    TypeID = CVPixelBufferGetTypeID();
    result = CFGetTypeID(a2);
    if (TypeID == result)
    {
      result = CVPixelBufferGetIOSurface(a2);
      if (result)
      {
        result = IOSurfaceNeedsBindAccel();
        if (result)
        {
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          IOSurfaceBindAccel();
          result = FigGetUpTimeNanoseconds();
          v7 = (result - UpTimeNanoseconds) / 1000;
          ++*(v4 + 416);
          v8 = *(v4 + 400);
          *(v4 + 408) += v7;
          v9 = *(v4 + 392);
          if (v9 >= v7)
          {
            v9 = (result - UpTimeNanoseconds) / 1000;
          }

          if (v8 > v7)
          {
            v7 = v8;
          }

          *(v4 + 392) = v9;
          *(v4 + 400) = v7;
        }
      }
    }
  }

  return result;
}

void *__copy_assignment_8_8_t0w8_pa0_44030_8_pa0_33393_16_pa0_15098_24_pa0_21060_32_pa0_1898_40_pa0_17456_48_pa0_31433_56(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  return result;
}

uint64_t customVideoCompositor_copyPassthroughFrame(const void *a1, __CVBuffer *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  size.width = 0.0;
  size.height = 0.0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  pixelBufferOut = 0;
  FigSimpleMutexLock();
  if (!CGSizeMakeWithDictionaryRepresentation(*(DerivedStorage + 24), &size))
  {
    customVideoCompositor_copyPassthroughFrame_cold_1(&v44);
    v25 = v44;
LABEL_64:
    FigSimpleMutexUnlock();
    v14 = 0;
    v13 = 0;
    goto LABEL_46;
  }

  v7 = FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture(0, *(DerivedStorage + 40), &v42, &v41, 0, &v40, size.width, size.height, *(DerivedStorage + 88));
  if (v7)
  {
    v25 = v7;
    goto LABEL_64;
  }

  v8 = *(DerivedStorage + 117);
  *(DerivedStorage + 117) = 0;
  v9 = *(DerivedStorage + 32);
  v35 = a3;
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  FigSimpleMutexUnlock();
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v13 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965D70], 0);
  v14 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965EF8], 0);
  v15 = CVPixelBufferGetWidth(a2);
  cf = v10;
  if (v15 == v42)
  {
    v16 = CVPixelBufferGetHeight(a2);
    if (v16 == v41 && FigVideoCompositorUtilityArePixelAspectRatiosEqual(v14, v10) && FigVideoCompositorUtilityAreCleanAperturesEqual(v13, Width, Height, v40, v42, v41))
    {
      if (a2)
      {
        v17 = CFRetain(a2);
      }

      else
      {
        v17 = 0;
      }

      MutableCopy = 0;
      goto LABEL_42;
    }
  }

  if (*DerivedStorage)
  {
    if (!v8)
    {
      v18 = (DerivedStorage + 8);
      if (*(DerivedStorage + 8))
      {
        MutableCopy = 0;
LABEL_35:
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v28 = CFGetAllocator(a1);
        v29 = CVPixelBufferPoolCreatePixelBuffer(v28, *v18, &pixelBufferOut);
        if (!v29)
        {
          v29 = VTPixelTransferSessionTransferImage(*DerivedStorage, a2, pixelBufferOut);
          if (!v29)
          {
            v30 = FigGetUpTimeNanoseconds();
            v31 = (v30 - UpTimeNanoseconds) / 1000;
            ++*(DerivedStorage + 352);
            v32 = *(DerivedStorage + 336);
            *(DerivedStorage + 344) += v31;
            v33 = *(DerivedStorage + 328);
            if (v33 >= v31)
            {
              v33 = (v30 - UpTimeNanoseconds) / 1000;
            }

            if (v32 > v31)
            {
              v31 = v32;
            }

            *(DerivedStorage + 328) = v33;
            *(DerivedStorage + 336) = v31;
            v17 = pixelBufferOut;
LABEL_42:
            v25 = 0;
            *v35 = v17;
            pixelBufferOut = 0;
            if (!MutableCopy)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }
        }

        v25 = v29;
        if (!MutableCopy)
        {
LABEL_44:
          v10 = cf;
          if (!cf)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_43:
        CFRelease(MutableCopy);
        goto LABEL_44;
      }

      v36 = v14;
      v22 = v13;
LABEL_21:
      v23 = *(DerivedStorage + 48);
      if (v23)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v23);
        if (MutableCopy)
        {
          v24 = FigCFDictionarySetInt32();
          if (v24 || (v24 = FigCFDictionarySetInt32(), v24) || !CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6966130]) && (v24 = FigCFDictionarySetInt32(), v24))
          {
            v25 = v24;
            CFRelease(MutableCopy);
            MutableCopy = 0;
            goto LABEL_32;
          }
        }

        else if (!customVideoCompositor_copyPassthroughFrame_cold_2(&v44))
        {
          v25 = v44;
          goto LABEL_32;
        }
      }

      else
      {
        MutableCopy = 0;
      }

      v26 = VTCreatePixelBufferPoolAttributesWithName();
      if (!v26)
      {
        CFGetAllocator(a1);
        v26 = VTBuildPixelBufferPools2();
        if (!v26)
        {
          v13 = v22;
          v14 = v36;
          goto LABEL_35;
        }
      }

      v25 = v26;
LABEL_32:
      v13 = v22;
      v14 = v36;
      if (!MutableCopy)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    goto LABEL_18;
  }

  v20 = CFGetAllocator(a1);
  v21 = VTPixelTransferSessionCreate(v20, DerivedStorage);
  if (!v21)
  {
    v21 = VTPixelTransferSessionSetProperty();
    if (!v21)
    {
LABEL_18:
      v21 = VTPixelTransferSessionSetProperty();
      if (!v21)
      {
        v21 = VTPixelTransferSessionSetProperty();
        if (!v21)
        {
          v36 = v14;
          v22 = v13;
          customVideoCompositor_copyPassthroughFrame_cold_3(DerivedStorage, &v44);
          v18 = v44;
          goto LABEL_21;
        }
      }
    }
  }

  v25 = v21;
  if (v10)
  {
LABEL_45:
    CFRelease(v10);
  }

LABEL_46:
  if (v40)
  {
    CFRelease(v40);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v25;
}

uint64_t remoteVideoCompositor_copyPixelBufferFromXPCObject(void *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = IOSurfaceLookupFromXPCObject(a1);
  if (!v3)
  {
    remoteVideoCompositor_copyPixelBufferFromXPCObject_cold_3(&v9);
    return v9;
  }

  v4 = v3;
  v5 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v3, 0, &cf);
  if (v5)
  {
    remoteVideoCompositor_copyPixelBufferFromXPCObject_cold_1(v5, &v9);
  }

  else
  {
    if (cf)
    {
      v6 = 0;
      *a2 = cf;
      cf = 0;
      goto LABEL_5;
    }

    remoteVideoCompositor_copyPixelBufferFromXPCObject_cold_2(&v9);
  }

  v6 = v9;
LABEL_5:
  CFRelease(v4);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

const void *FigVCPGetTimedSampleWithMatchingPTSFromAscendingPTSTimedSampleArray(const __CFArray *a1, uint64_t a2, CFIndex a3, CFIndex a4, CFIndex *a5)
{
  v7 = a3;
  memset(&v16, 0, sizeof(v16));
  FigVCPTimedSampleGetPTS(a2, a2, &v16, a3);
  if (v7 >= a4)
  {
LABEL_6:
    ValueAtIndex = 0;
  }

  else
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      memset(&v15, 0, sizeof(v15));
      FigVCPTimedSampleGetPTS(ValueAtIndex, v10, &v15, v11);
      time1 = v15;
      v13 = v16;
      if (!CMTimeCompare(&time1, &v13))
      {
        break;
      }

      time1 = v15;
      v13 = v16;
      if (CMTimeCompare(&time1, &v13) >= 1)
      {
        goto LABEL_6;
      }

      if (a4 == ++v7)
      {
        ValueAtIndex = 0;
        v7 = a4;
        break;
      }
    }
  }

  *a5 = v7;
  return ValueAtIndex;
}

uint64_t remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples(void *a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_cold_5(v32);
    return LODWORD(v32[0]);
  }

  v6 = Mutable;
  cf = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (!cf)
  {
    remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_cold_4(v6, v32);
    return LODWORD(v32[0]);
  }

  if (!a1)
  {
    goto LABEL_35;
  }

  count = xpc_array_get_count(a1);
  if (count)
  {
    v7 = 0;
    v28 = a1;
    v27 = v6;
    theDict = a2;
    while (1)
    {
      dictionary = xpc_array_get_dictionary(a1, v7);
      xpc_dictionary_get_uint64(dictionary, "TrackID");
      FigCFArrayAppendInt32();
      array = xpc_dictionary_get_array(dictionary, "TimedSamples");
      if (a2)
      {
        v10 = array;
        UInt64 = FigCFNumberCreateUInt64();
        if (UInt64)
        {
          v12 = UInt64;
          Value = CFDictionaryGetValue(a2, UInt64);
          v14 = Value;
          if (Value)
          {
            v15 = CFArrayGetCount(Value);
          }

          else
          {
            v15 = 0;
          }

          v16 = remoteVideoCompositor_copyTimedSampleArrayFromXPCArray(v10);
          v17 = v16;
          if (v16)
          {
            v18 = CFArrayGetCount(v16);
            if (v15)
            {
LABEL_13:
              v19 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              if (v19)
              {
                v20 = v19;
                if (v18 >= 1)
                {
                  v21 = 0;
                  v22 = 0;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v17, v21);
                    if (FigVCPTimedSampleContainsNULL(ValueAtIndex))
                    {
                      v32[0] = 0;
                      v24 = FigVCPGetTimedSampleWithMatchingPTSFromAscendingPTSTimedSampleArray(v14, ValueAtIndex, v22, v15, v32);
                      if (v24)
                      {
                        CFArrayAppendValue(v20, v24);
                        v22 = v32[0] + 1;
                      }

                      else
                      {
                        CFArrayAppendValue(v20, ValueAtIndex);
                        v22 = v32[0];
                      }
                    }

                    else
                    {
                      CFArrayAppendValue(v20, ValueAtIndex);
                    }

                    ++v21;
                  }

                  while (v18 != v21);
                }

                a2 = theDict;
                CFDictionarySetValue(theDict, v12, v20);
                CFRelease(v12);
                v25 = 0;
                v6 = v27;
              }

              else
              {
                remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_cold_1(v32);
                v25 = LODWORD(v32[0]);
                v20 = v12;
                a2 = theDict;
              }

LABEL_25:
              CFRelease(v20);
              if (v17)
              {
                CFRelease(v17);
              }

              if (v25)
              {
                goto LABEL_37;
              }

              goto LABEL_28;
            }
          }

          else
          {
            v18 = 0;
            if (v15)
            {
              goto LABEL_13;
            }
          }

          a2 = theDict;
          CFDictionarySetValue(theDict, v12, v17);
          v25 = 0;
          v20 = v12;
          goto LABEL_25;
        }

        remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_cold_2(v32);
      }

      else
      {
        remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_cold_3(v32);
      }

      v25 = LODWORD(v32[0]);
      if (LODWORD(v32[0]))
      {
        goto LABEL_37;
      }

LABEL_28:
      ++v7;
      a1 = v28;
      if (v7 == count)
      {
        CFArrayGetCount(v6);
LABEL_35:
        FigCFDictionaryApplyBlock();
        FigCFArrayApplyBlock();
        break;
      }
    }
  }

  v25 = 0;
LABEL_37:
  CFRelease(v6);
  CFRelease(cf);
  return v25;
}

uint64_t FigVideoCompositorRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {

      return remoteVideoCompositor_GetObjectID(a1, a2);
    }

    else
    {
      FigVideoCompositorRemoteGetObjectID_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigVideoCompositorRemoteGetObjectID_cold_2(&v4);
    return v4;
  }
}

uint64_t remoteVideoCompositor_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteVideoCompositor_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      remoteVideoCompositor_GetObjectID_cold_2(&v7);
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

void __remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_block_invoke(uint64_t a1, void *value)
{
  v6.length = *(a1 + 40);
  v6.location = 0;
  if (!CFArrayContainsValue(*(a1 + 32), v6, value))
  {
    v4 = *(a1 + 48);

    CFArrayAppendValue(v4, value);
  }
}

uint64_t remoteVideoCompositor_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 9) = 1;
  return result;
}

void __HandleRenderFrameMessage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v5(v2, v3, v4, 0);
  }

  v6 = *(a1 + 32);

  CFRelease(v6);
}

CFMutableDictionaryRef remoteVideoCompositor_deepCopySourceTimedSamplesForTrackIDs(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionaryApplyBlock();
  }

  else
  {
    remoteVideoCompositor_deepCopySourceTimedSamplesForTrackIDs_cold_1();
  }

  return Mutable;
}

void __HandleRenderFrameFromWindowMessage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v5(v2, v3, v4, 0);
  }

  v6 = *(a1 + 32);

  CFRelease(v6);
}

void __remoteVideoCompositor_deepCopySourceTimedSamplesForTrackIDs_block_invoke(uint64_t a1, const void *a2, CFArrayRef theArray)
{
  Copy = CFArrayCreateCopy(*(a1 + 32), theArray);
  CFDictionarySetValue(*(a1 + 40), a2, Copy);
  if (Copy)
  {

    CFRelease(Copy);
  }
}

void *remoteVideoCompositor_clonePendingFrame(uint64_t a1, void *a2)
{
  result = MEMORY[0x19A8CC720](a1, 8, 0x100004000313F17, 0);
  *result = *a2;
  return result;
}

__CFString *remoteVideoCompositor_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositorRemote %p retainCount: %ld%s allocator: %p, ObjectID: %016llx>", a1, v5, v6, v7, *DerivedStorage);
  return Mutable;
}

uint64_t remoteVideoCompositor_SetCustomCallbacks(uint64_t a1, void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10[1] = 0;
  FigSimpleMutexLock();
  if (a2)
  {
    __copy_assignment_8_8_t0w8_pa0_44030_8_pa0_33393_16_pa0_15098_24_pa0_21060_32_pa0_1898_40_pa0_17456_48_pa0_31433_56((DerivedStorage + 24), a2);
    *(DerivedStorage + 88) = a3;
    FigSimpleMutexUnlock();
    v7 = 0;
  }

  else
  {
    *(DerivedStorage + 72) = 0u;
    *(DerivedStorage + 56) = 0u;
    *(DerivedStorage + 40) = 0u;
    *(DerivedStorage + 24) = 0u;
    *(DerivedStorage + 88) = a3;
    FigSimpleMutexUnlock();
    v10[0] = 0;
    ObjectID = remoteVideoCompositor_GetObjectID(a1, v10);
    if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
    {
      v7 = ObjectID;
    }

    else
    {
      v7 = FigXPCRemoteClientSendSyncMessage();
      if (!v7)
      {
        FigSimpleMutexLock();
        CFDictionaryRemoveAllValues(*(DerivedStorage + 104));
        FigSimpleMutexUnlock();
      }
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

__n128 OUTLINED_FUNCTION_7_112@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v1[4] = *a1;
  v3 = a1[1].n128_u64[0];
  v1[5].n128_u64[0] = v3;
  v1[8] = result;
  v1[9].n128_u64[0] = v3;
  v1[2] = result;
  v1[3].n128_u64[0] = v3;
  *v1 = result;
  v1[1].n128_u64[0] = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_8_93()
{
  result = v0[8];
  v0[4] = result;
  v0[5].n128_u64[0] = v0[9].n128_u64[0];
  return result;
}

uint64_t FigWarehouseRenderPipelineCreate(const __CFAllocator *a1, const void *a2, CMTime *a3, const __CFDictionary *a4, void **a5)
{
  v42 = *MEMORY[0x1E69E9840];
  value = 0;
  refcon = 0;
  memset(&v37, 0, sizeof(v37));
  CMTimeMake(&rhs, 1, 1);
  lhs = *a3;
  CMTimeAdd(&v37, &lhs, &rhs);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a5)
  {
    FigWarehouseRenderPipelineCreate_cold_10(&rhs);
    goto LABEL_56;
  }

  if (!a2)
  {
    FigWarehouseRenderPipelineCreate_cold_9(&rhs);
    goto LABEL_56;
  }

  if ((a3->flags & 0x1D) != 1)
  {
    FigWarehouseRenderPipelineCreate_cold_1(&rhs);
    goto LABEL_56;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v10 |= 4u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 88))
  {
    v10 |= 8u;
  }

  *&rhs.timescale = 0;
  rhs.value = v10;
  if (warehouse_RenderPipeline_getVTableWithOptionalMethods_sWarehouseRenderPipelineVTableSetupOnce != -1)
  {
    FigWarehouseRenderPipelineCreate_cold_2();
  }

  dispatch_sync_f(sWarehouseRenderPipelineVTableQueue, &rhs, warehouse_RenderPipeline_getVTableWithOptionalMethodsWork);
  FigRenderPipelineGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    goto LABEL_47;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 192) = 0;
  if (a4 && CFDictionaryGetValueIfPresent(a4, @"LoggingID", &value))
  {
    CFStringGetCString(value, (DerivedStorage + 192), 16, 0x600u);
  }

  *(DerivedStorage + 8) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  epoch = a3->epoch;
  *(DerivedStorage + 52) = *&a3->value;
  *(DerivedStorage + 68) = epoch;
  *(DerivedStorage + 76) = v37;
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v11 = CMBufferQueueCreate(a1, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 16));
  if (v11)
  {
LABEL_47:
    value_low = v11;
    goto LABEL_40;
  }

  Mutable = CFArrayCreateMutable(a1, 1024, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 112) = Mutable;
  if (!Mutable)
  {
    FigWarehouseRenderPipelineCreate_cold_8(&rhs);
    goto LABEL_56;
  }

  v16 = CFArrayCreateMutable(a1, 1024, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 120) = v16;
  if (!v16)
  {
    FigWarehouseRenderPipelineCreate_cold_7(&rhs);
    goto LABEL_56;
  }

  CFRetain(a2);
  *(DerivedStorage + 144) = a2;
  FigRenderPipelineGetFigBaseObject();
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v11 = v19(v18, @"SourceSampleBufferQueue", a1, DerivedStorage + 152);
    if (v11)
    {
      goto LABEL_47;
    }

    FigRenderPipelineGetFigBaseObject();
    v21 = v20;
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v22)
    {
      v22(v21, @"WarehouseRetransmissionAvailable", *MEMORY[0x1E695E4D0]);
    }

    v23 = FigSimpleMutexCreate();
    *(DerivedStorage + 104) = v23;
    if (!v23)
    {
      FigWarehouseRenderPipelineCreate_cold_6(&rhs);
      goto LABEL_56;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v25 = CFArrayCreateMutable(AllocatorForMedia, 4, &kFigWarehouseUpcomingTransitionArrayCallbacks);
    *(DerivedStorage + 128) = v25;
    if (!v25)
    {
      FigWarehouseRenderPipelineCreate_cold_5(&rhs);
      goto LABEL_56;
    }

    FigActivitySchedulerCreateForNewThread(a1, 3, @"com.apple.coremedia.warehouse", (DerivedStorage + 40));
    if (v11)
    {
      goto LABEL_47;
    }

    v26 = *(DerivedStorage + 40);
    v27 = refcon;
    v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v28)
    {
      v11 = v28(v26, warehouse_deliverSampleBuffersUpToHighWaterLevel, v27);
      if (!v11)
      {
        *(DerivedStorage + 48) = 1;
        v29 = *(DerivedStorage + 16);
        rhs = **&MEMORY[0x1E6960CC0];
        v11 = CMBufferQueueInstallTrigger(v29, warehouse_dataBecameReady, refcon, 7, &rhs, (DerivedStorage + 160));
        if (!v11)
        {
          v30 = *(DerivedStorage + 152);
          rhs = *a3;
          v11 = CMBufferQueueInstallTrigger(v30, warehouse_downstreamBufferQueueLowWater, refcon, 2, &rhs, (DerivedStorage + 168));
          if (!v11)
          {
            v31 = *(DerivedStorage + 152);
            rhs = v37;
            v11 = CMBufferQueueInstallTrigger(v31, 0, refcon, 2, &rhs, (DerivedStorage + 176));
            if (!v11)
            {
              if (qword_1ED4CBCE8 != -1)
              {
                FigWarehouseRenderPipelineCreate_cold_3();
              }

              v32 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _MergedGlobals_148);
              *(DerivedStorage + 184) = v32;
              if (v32)
              {
                dispatch_set_context(v32, refcon);
                dispatch_source_set_event_handler_f(*(DerivedStorage + 184), warehouse_wakeUpAndCheckTheTimebase);
                dispatch_resume(*(DerivedStorage + 184));
                CMNotificationCenterGetDefaultLocalCenter();
                v11 = FigNotificationCenterAddWeakListener();
                if (!v11)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  v11 = FigNotificationCenterAddWeakListener();
                  if (!v11)
                  {
                    if (dword_1EAF17C98)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    value_low = 0;
                    *a5 = refcon;
                    return value_low;
                  }
                }

                goto LABEL_47;
              }

              FigWarehouseRenderPipelineCreate_cold_4(&rhs);
LABEL_56:
              value_low = LODWORD(rhs.value);
              goto LABEL_40;
            }
          }
        }
      }

      goto LABEL_47;
    }
  }

  value_low = 4294954514;
LABEL_40:
  if (refcon)
  {
    CFRelease(refcon);
  }

  if (value_low && dword_1EAF17C98)
  {
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return value_low;
}

void warehouse_deliverSampleBuffersUpToHighWaterLevel(uint64_t a1)
{
  v96 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = CMBaseObjectGetDerivedStorage();
  v74 = a1;
  if (CMBufferQueueTestTrigger(*(v3 + 152), *(v3 + 176)))
  {
    key = *MEMORY[0x1E6960518];
    do
    {
      v4 = CMBufferQueueDequeueIfDataReadyAndRetain(*(DerivedStorage + 16));
      if (!v4)
      {
        break;
      }

      v5 = v4;
      NumSamples = CMSampleBufferGetNumSamples(v4);
      if (CMBufferQueueEnqueue(*(DerivedStorage + 152), v5))
      {
        FigSimpleMutexUnlock();
        CFRelease(v5);
        return;
      }

      if (*(DerivedStorage + 136))
      {
        CMGetAttachment(v5, key, 0);
        v7 = FigCFEqual();
        v8 = *(DerivedStorage + 136);
        if (v7)
        {
          if (v8)
          {
            CFRelease(v8);
            *(DerivedStorage + 136) = 0;
          }

          v8 = 0;
          LOBYTE(v7) = NumSamples == 0;
        }

        if (v7)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        CFArrayAppendValue(*(DerivedStorage + 112), v5);
        Count = CFArrayGetCount(*(DerivedStorage + 112));
        *&v86.value = *MEMORY[0x1E6960C70];
        v10 = *(MEMORY[0x1E6960C70] + 16);
        v86.epoch = v10;
        *&v85.value = *&v86.value;
        v85.epoch = v10;
        v75 = *&v86.value;
        *&time2.value = *&v86.value;
        time2.epoch = v10;
        if (Count >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 112), 0);
          v12 = CFArrayGetValueAtIndex(*(DerivedStorage + 112), Count - 1);
          CMSampleBufferGetOutputPresentationTimeStamp(&v86, ValueAtIndex);
          CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v12);
          CMSampleBufferGetOutputDuration(&rhs, v12);
          CMTimeAdd(&v85, &lhs, &rhs);
          lhs = v85;
          rhs = v86;
          CMTimeSubtract(&time2, &lhs, &rhs);
        }

        v13 = CFArrayGetCount(*(DerivedStorage + 120));
        *&v83.value = v75;
        v83.epoch = v10;
        *&v82.value = v75;
        v82.epoch = v10;
        *&v81.value = v75;
        v81.epoch = v10;
        v14 = v13 - 1;
        if (v13 >= 1)
        {
          v15 = CFArrayGetValueAtIndex(*(DerivedStorage + 120), 0);
          v16 = CFArrayGetValueAtIndex(*(DerivedStorage + 120), v14);
          CMSampleBufferGetOutputPresentationTimeStamp(&v83, v15);
          CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v16);
          CMSampleBufferGetOutputDuration(&rhs, v16);
          CMTimeAdd(&v82, &lhs, &rhs);
          lhs = v82;
          rhs = v83;
          CMTimeSubtract(&v81, &lhs, &rhs);
        }

        if (dword_1EAF17C98)
        {
          LODWORD(v80.value) = 0;
          LOBYTE(type.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        a1 = v74;
        goto LABEL_28;
      }

LABEL_20:
      if (dword_1EAF17C98)
      {
        LODWORD(v86.value) = 0;
        LOBYTE(v85.value) = 0;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v86.value;
        value_low = LOBYTE(v85.value);
        if (os_log_type_enabled(v18, v85.value))
        {
          v21 = value;
        }

        else
        {
          v21 = value & 0xFFFFFFFE;
        }

        if (v21)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v5);
          Seconds = CMTimeGetSeconds(&lhs);
          LODWORD(rhs.value) = 136316418;
          *(&rhs.value + 4) = "warehouse_deliverSampleBuffersUpToHighWaterLevel";
          LOWORD(rhs.flags) = 2082;
          *(&rhs.flags + 2) = DerivedStorage + 192;
          HIWORD(rhs.epoch) = 2048;
          v89 = a1;
          v90 = 2048;
          v91 = v5;
          v92 = 1024;
          v93 = NumSamples;
          v94 = 2048;
          v95 = Seconds;
          LODWORD(v65) = 58;
          _os_log_send_and_compose_impl(v21, 0, &lhs, 128, &dword_1962D5000, v18, value_low, "<<<< Warehouse RP >>>> %s: %{public}s (%p) discarding %p [%d samples] opts %1.3f", &rhs, v65);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_28:
      CFRelease(v5);
      v23 = CMBaseObjectGetDerivedStorage();
    }

    while (CMBufferQueueTestTrigger(*(v23 + 152), *(v23 + 176)));
  }

  v24 = CMBaseObjectGetDerivedStorage();
  memset(&v86, 0, sizeof(v86));
  CMTimebaseGetTime(&v86, *(v24 + 24));
  memset(&v85, 0, sizeof(v85));
  v25 = *(v24 + 32);
  lhs = v86;
  FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData(v25, &lhs, &v85);
  v26 = *(v24 + 112);
  if (!v26)
  {
    v33 = 0;
    goto LABEL_43;
  }

  v27 = CFArrayGetCount(v26);
  if (v27 < 1)
  {
    goto LABEL_41;
  }

  v28 = v27;
  v29 = 0;
  v30 = 0;
  v31 = *MEMORY[0x1E6960550];
  do
  {
    v32 = CFArrayGetValueAtIndex(*(v24 + 112), v29);
    if (CMSampleBufferGetNumSamples(v32) < 1)
    {
      if (CMGetAttachment(v32, v31, 0))
      {
        break;
      }

      ++v29;
      continue;
    }

    memset(&lhs, 0, sizeof(lhs));
    CMSampleBufferGetOutputPresentationTimeStamp(&rhs, v32);
    CMSampleBufferGetOutputDuration(&time2, v32);
    CMTimeAdd(&lhs, &rhs, &time2);
    if ((v85.flags & 1) == 0)
    {
      break;
    }

    rhs = lhs;
    time2 = v85;
    if ((CMTimeCompare(&rhs, &time2) & 0x80000000) == 0)
    {
      break;
    }

    v30 = ++v29;
  }

  while (v29 != v28);
  if (v30 >= 1)
  {
    v100.location = 0;
    v100.length = v30;
    CFArrayAppendArray(*(v24 + 120), *(v24 + 112), v100);
    v97.location = 0;
    v97.length = v30;
    CFArrayReplaceValues(*(v24 + 112), v97, 0, 0);
    v33 = 1;
    goto LABEL_43;
  }

LABEL_41:
  v33 = 0;
LABEL_43:
  v76 = CMBaseObjectGetDerivedStorage();
  v34 = *(v76 + 120);
  v70 = v24;
  if (!v34)
  {
    v50 = 0;
    goto LABEL_78;
  }

  v35 = CFArrayGetCount(v34);
  if (v35 < 1)
  {
    v45 = 1;
LABEL_69:
    v50 = 0;
    if (v35 && v45)
    {
      CFArrayRemoveAllValues(*(v76 + 120));
      v50 = 1;
    }

    goto LABEL_78;
  }

  v68 = v33;
  v36 = 0;
  v69 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v67 = v35;
  v40 = v35;
  v72 = *MEMORY[0x1E69604E8];
  v71 = *MEMORY[0x1E69604F0];
  while (1)
  {
    v41 = v40--;
    v42 = CFArrayGetValueAtIndex(*(v76 + 120), v40);
    v43 = CMSampleBufferGetNumSamples(v42);
    v38 += v43;
    if (v36)
    {
      goto LABEL_49;
    }

    v44 = v43;
    CMGetAttachment(v42, v72, 0);
    LODWORD(v37) = FigCFNumberGetSInt32();
    CMGetAttachment(v42, v71, 0);
    if (v37)
    {
      v37 = v37;
LABEL_49:
      if (v38 >= v37)
      {
        if (v67 >= v41)
        {
          v99.location = 0;
          v99.length = v40;
          CFArrayReplaceValues(*(v76 + 120), v99, 0, 0);
          v50 = 1;
        }

        else
        {
          v50 = 0;
        }

        goto LABEL_77;
      }

      v45 = 0;
      v36 = 1;
      goto LABEL_51;
    }

    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v42, 0);
    if (SampleAttachmentsArray)
    {
      break;
    }

    v36 = 0;
    v37 = 0;
    v39 += v44;
LABEL_63:
    v45 = 1;
LABEL_51:
    if (v41 <= 1)
    {
      if (v69)
      {
        v45 = 0;
      }

      v33 = v68;
      v35 = v67;
      goto LABEL_69;
    }
  }

  if (v44 < 1)
  {
    v36 = 0;
    v37 = 0;
    goto LABEL_63;
  }

  v47 = SampleAttachmentsArray;
  v66 = v44 + v39;
  v48 = v44 + 1;
  v49 = v69;
  while (1)
  {
    CFArrayGetValueAtIndex(v47, v48 - 2);
    LOWORD(lhs.value) = 0;
    if (FigCFDictionaryGetInt16IfPresent())
    {
      break;
    }

LABEL_59:
    ++v39;
    if (--v48 <= 1)
    {
      v69 = v49;
      v36 = 0;
      v37 = 0;
      v45 = 1;
      v39 = v66;
      goto LABEL_51;
    }
  }

  if (v39 < SLOWORD(lhs.value))
  {
    v49 = 1;
    goto LABEL_59;
  }

  v50 = v67 >= v41;
  if (v67 >= v41)
  {
    v98.location = 0;
    v98.length = v40;
    CFArrayReplaceValues(*(v76 + 120), v98, 0, 0);
  }

LABEL_77:
  v33 = v68;
LABEL_78:
  v77 = *MEMORY[0x1E6960C70];
  *&time2.value = *MEMORY[0x1E6960C70];
  v51 = *(MEMORY[0x1E6960C70] + 16);
  time2.epoch = v51;
  if (CFArrayGetCount(*(v70 + 112)) >= 1)
  {
    v52 = CFArrayGetValueAtIndex(*(v70 + 112), 0);
    memset(&lhs, 0, sizeof(lhs));
    CMSampleBufferGetOutputPresentationTimeStamp(&rhs, v52);
    CMSampleBufferGetOutputDuration(&v83, v52);
    CMTimeAdd(&lhs, &rhs, &v83);
    v53 = *(v70 + 32);
    rhs = lhs;
    FigSpeedRampMapTimeFromSourceToTargetUsingMappingArrayData(v53, &rhs, &time2);
  }

  v54 = *(v70 + 24);
  v55 = *(v70 + 184);
  lhs = time2;
  CMTimebaseSetTimerDispatchSourceNextFireTime(v54, v55, &lhs, 0);
  if ((v33 | v50) == 1)
  {
    v56 = CFArrayGetCount(*(v70 + 112));
    *&v83.value = v77;
    v83.epoch = v51;
    *&v82.value = v77;
    v82.epoch = v51;
    *&v81.value = v77;
    v81.epoch = v51;
    v57 = v56 - 1;
    if (v56 >= 1)
    {
      v58 = CFArrayGetValueAtIndex(*(v70 + 112), 0);
      v59 = CFArrayGetValueAtIndex(*(v70 + 112), v57);
      CMSampleBufferGetOutputPresentationTimeStamp(&v83, v58);
      CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v59);
      CMSampleBufferGetOutputDuration(&rhs, v59);
      CMTimeAdd(&v82, &lhs, &rhs);
      lhs = v82;
      rhs = v83;
      CMTimeSubtract(&v81, &lhs, &rhs);
    }

    v60 = CFArrayGetCount(*(v70 + 120));
    *&v80.value = v77;
    v80.epoch = v51;
    *&type.value = v77;
    type.epoch = v51;
    *&v78.value = v77;
    v78.epoch = v51;
    v61 = v60 - 1;
    if (v60 >= 1)
    {
      v62 = CFArrayGetValueAtIndex(*(v70 + 120), 0);
      v63 = CFArrayGetValueAtIndex(*(v70 + 120), v61);
      CMSampleBufferGetOutputPresentationTimeStamp(&v80, v62);
      CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v63);
      CMSampleBufferGetOutputDuration(&rhs, v63);
      CMTimeAdd(&type, &lhs, &rhs);
      lhs = type;
      rhs = v80;
      CMTimeSubtract(&v78, &lhs, &rhs);
    }

    if (dword_1EAF17C98)
    {
      v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  FigSimpleMutexUnlock();
}

uint64_t warehouse_dataBecameReady(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v2 = *(result + 40);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 16);
    result = VTable + 16;
    v5 = *(v4 + 16);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

uint64_t warehouse_downstreamBufferQueueLowWater(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v2 = *(result + 40);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 16);
    result = VTable + 16;
    v5 = *(v4 + 16);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

uint64_t warehouseRenderPipelineTimerQueueSetupOnce(uint64_t *a1)
{
  result = FigDispatchQueueCreateWithPriority();
  *a1 = result;
  return result;
}

uint64_t warehouse_wakeUpAndCheckTheTimebase(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v2 = *(result + 40);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 16);
    result = VTable + 16;
    v5 = *(v4 + 16);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

void warehouse_reflectNotificationFromDownstreamRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v153 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v106 = *MEMORY[0x1E6960C70];
    v107 = *(MEMORY[0x1E6960C70] + 16);
    FigCFDictionaryGetCMTimeIfPresent();
    if ((BYTE12(v106) & 0x1D) != 1)
    {
      return;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf = 0;
    if (dword_1EAF17C98)
    {
      LODWORD(v116.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = *(DerivedStorage + 24);
    if (v8)
    {
      memset(&v116, 0, sizeof(v116));
      CMTimebaseGetTime(&v116, v8);
      memset(&type, 0, sizeof(type));
      v9 = *(DerivedStorage + 32);
      *time = v116;
      FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData(v9, time, &type);
      *time = v106;
      *&time[16] = v107;
      time2 = type;
      if (CMTimeCompare(time, &time2) < 0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(v113.value) = 0;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    FigSimpleMutexLock();
    v11 = *(DerivedStorage + 144);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v12)
    {
      *time = v106;
      *&time[16] = v107;
      v12(v11, time);
    }

    v13 = *(DerivedStorage + 112);
    if (v13)
    {
      Count = CFArrayGetCount(v13);
      if (Count >= 1)
      {
        v15 = Count;
        v16 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v16);
          NumSamples = CMSampleBufferGetNumSamples(ValueAtIndex);
          if (NumSamples)
          {
            v19 = NumSamples;
            memset(&v110, 0, sizeof(v110));
            CMSampleBufferGetOutputDuration(&v110, ValueAtIndex);
            memset(&v109, 0, sizeof(v109));
            CMSampleBufferGetOutputPresentationTimeStamp(&v109, ValueAtIndex);
            memset(&v108, 0, sizeof(v108));
            *time = v109;
            time2 = v110;
            CMTimeAdd(&v108, time, &time2);
            *time = v106;
            *&time[16] = v107;
            time2 = v108;
            if (CMTimeCompare(time, &time2) <= 0)
            {
              break;
            }
          }

          if (v15 == ++v16)
          {
            goto LABEL_19;
          }
        }

        v98 = a2;
        v21 = CMSampleBufferGetNumSamples(ValueAtIndex);
        memset(&time2, 0, sizeof(time2));
        CMSampleBufferGetOutputPresentationTimeStamp(&time2, ValueAtIndex);
        memset(&v116, 0, sizeof(v116));
        v22 = CMGetAttachment(ValueAtIndex, *MEMORY[0x1E6960560], 0);
        CMTimeMakeFromDictionary(&v116, v22);
        v23 = MEMORY[0x1E6960CC0];
        if ((v116.flags & 0x1D) != 1)
        {
          v116 = **&MEMORY[0x1E6960CC0];
        }

        memset(&type, 0, sizeof(type));
        *time = time2;
        rhs = v116;
        CMTimeSubtract(&type, time, &rhs);
        memset(&rhs, 0, sizeof(rhs));
        *time = v106;
        *&time[16] = v107;
        v113 = type;
        CMTimeSubtract(&rhs, time, &v113);
        *v120 = 0;
        v118 = 0u;
        v119 = 0u;
        memset(time, 0, sizeof(time));
        if (CMSampleBufferGetSampleTimingInfo(ValueAtIndex, 0, time))
        {
          goto LABEL_101;
        }

        v113 = rhs;
        v112 = *v23;
        if (CMTimeCompare(&v113, &v112) < 0)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v93, v94, v95);
          if (v52)
          {
            goto LABEL_101;
          }

          v24 = 0;
        }

        else if (rhs.value * *&time[8] / (*time * rhs.timescale) >= v21)
        {
          v24 = v21 - 1;
        }

        else
        {
          v24 = rhs.value * *&time[8] / (*time * rhs.timescale);
        }

        CMGetAttachment(ValueAtIndex, *MEMORY[0x1E69604E8], 0);
        SInt32 = FigCFNumberGetSInt32();
        v26 = SInt32;
        v27 = SInt32;
        if (v24 < SInt32)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 10, MEMORY[0x1E695E9C0]);
          AllocatorForMedia = FigGetAllocatorForMedia();
          if (!CMSampleBufferCreateCopy(AllocatorForMedia, ValueAtIndex, &cf))
          {
            v29 = v27 - v24;
            *time = v106;
            *&time[16] = v107;
            warehouse_setTrimAttachmentToTrimUntilTime(cf, time);
            v104 = Mutable;
            v96 = v15;
            if (dword_1EAF17C98)
            {
              LODWORD(v116.value) = 0;
              LOBYTE(type.value) = 0;
              v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = v116.value;
              value_low = LOBYTE(type.value);
              if (os_log_type_enabled(v30, type.value))
              {
                v33 = value;
              }

              else
              {
                v33 = value & 0xFFFFFFFE;
              }

              if (v33)
              {
                *time = v106;
                *&time[16] = v107;
                Seconds = CMTimeGetSeconds(time);
                CMSampleBufferGetOutputPresentationTimeStamp(time, ValueAtIndex);
                v35 = CMTimeGetSeconds(time);
                CMSampleBufferGetOutputDuration(time, ValueAtIndex);
                v36 = CMTimeGetSeconds(time);
                v37 = cf;
                v99 = CMSampleBufferGetNumSamples(cf);
                CMSampleBufferGetOutputPresentationTimeStamp(time, cf);
                v38 = CMTimeGetSeconds(time);
                CMSampleBufferGetOutputDuration(time, cf);
                v39 = CMTimeGetSeconds(time);
                LODWORD(time2.value) = 136318210;
                *(&time2.value + 4) = "warehouse_retransmitSampleBuffersFromTime";
                LOWORD(time2.flags) = 2082;
                *(&time2.flags + 2) = DerivedStorage + 192;
                HIWORD(time2.epoch) = 2048;
                v136 = v98;
                v137 = 2048;
                v138 = Seconds;
                v139 = 2048;
                *v140 = ValueAtIndex;
                *&v140[8] = 1024;
                *&v140[10] = v19;
                v141 = 2048;
                v142 = v35;
                v143 = 2048;
                v144 = v36;
                v145 = 2048;
                *v146 = v37;
                *&v146[8] = 1024;
                *&v146[10] = v99;
                v147 = 2048;
                v148 = v38;
                v149 = 2048;
                v150 = v39;
                v151 = 1024;
                v152 = v29;
                LODWORD(v94) = 120;
                _os_log_send_and_compose_impl(v33, 0, time, 128, &dword_1962D5000, v30, value_low, "<<<< Warehouse RP >>>> %s: %{public}s (%p) retransmit from %1.3f: priming not satisfied within starting sbuf %p (%d samples, OPTS %1.3f dur %1.3f), copied and trimmed as sbuf %p (%d samples, OPTS %1.3f dur %1.3f), walking back for priming (%d more packets wanted)...", &time2, v94);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              Mutable = v104;
            }

            CFArrayAppendValue(Mutable, cf);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (v16 && v29 >= 1)
            {
              v53 = v16;
              do
              {
                v54 = v53 - 1;
                v55 = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v53 - 1);
                v56 = CMSampleBufferGetNumSamples(v55);
                v57 = v56;
                if (v29 >= v56)
                {
                  v58 = v56;
                }

                else
                {
                  v58 = v29;
                }

                v59 = FigGetAllocatorForMedia();
                if (v57 < 1)
                {
                  if (CMSampleBufferCreateCopy(v59, v55, &cf))
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  v156.location = v57 - v58;
                  v156.length = v58;
                  if (CMSampleBufferCopySampleBufferForRange(v59, v55, v156, &cf))
                  {
                    goto LABEL_20;
                  }

                  warehouse_setTrimAttachmentToTrimWholeDuration(cf);
                }

                v29 -= v58;
                if (dword_1EAF17C98)
                {
                  LODWORD(v116.value) = 0;
                  LOBYTE(type.value) = 0;
                  v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v61 = v116.value;
                  v62 = LOBYTE(type.value);
                  v101 = v60;
                  if (os_log_type_enabled(v60, type.value))
                  {
                    v63 = v61;
                  }

                  else
                  {
                    v63 = v61 & 0xFFFFFFFE;
                  }

                  if (v63)
                  {
                    CMSampleBufferGetOutputPresentationTimeStamp(time, v55);
                    v64 = CMTimeGetSeconds(time);
                    CMSampleBufferGetOutputDuration(time, v55);
                    v65 = CMTimeGetSeconds(time);
                    v66 = cf;
                    v67 = CMSampleBufferGetNumSamples(cf);
                    CMSampleBufferGetOutputPresentationTimeStamp(time, cf);
                    v68 = CMTimeGetSeconds(time);
                    CMSampleBufferGetOutputDuration(time, cf);
                    v69 = CMTimeGetSeconds(time);
                    LODWORD(time2.value) = 136317954;
                    *(&time2.value + 4) = "warehouse_retransmitSampleBuffersFromTime";
                    LOWORD(time2.flags) = 2082;
                    *(&time2.flags + 2) = DerivedStorage + 192;
                    HIWORD(time2.epoch) = 2048;
                    v136 = v98;
                    v137 = 2048;
                    v138 = *&v55;
                    v139 = 1024;
                    *v140 = v57;
                    *&v140[4] = 2048;
                    *&v140[6] = v64;
                    v141 = 2048;
                    v142 = v65;
                    v143 = 2048;
                    v144 = *&v66;
                    v145 = 1024;
                    *v146 = v67;
                    *&v146[4] = 2048;
                    *&v146[6] = v68;
                    v147 = 2048;
                    v148 = v69;
                    v149 = 1024;
                    LODWORD(v150) = v29;
                    LODWORD(v94) = 110;
                    _os_log_send_and_compose_impl(v63, 0, time, 128, &dword_1962D5000, v101, v62, "<<<< Warehouse RP >>>> %s: %{public}s (%p) sbuf %p from warehouse (%d samples, OPTS %1.3f dur %1.3f) copied and trimmed-out for priming as sbuf %p (%d samples, OPTS %1.3f dur %1.3f) (%d more packets wanted)...", &time2, v94);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v54 = v53 - 1;
                  Mutable = v104;
                }

                CFArrayInsertValueAtIndex(Mutable, 0, cf);
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (v53 <= 1)
                {
                  break;
                }

                v53 = v54;
              }

              while (v29 > 0);
            }

            v70 = CFArrayGetCount(*(DerivedStorage + 120));
            if (v29 >= 1 && v70 >= 1)
            {
              v72 = v70;
              while (1)
              {
                v73 = CFArrayGetValueAtIndex(*(DerivedStorage + 120), v72 - 1);
                v74 = CMSampleBufferGetNumSamples(v73);
                v75 = v74;
                v76 = v29 >= v74 ? v74 : v29;
                v77 = FigGetAllocatorForMedia();
                v157.location = v75 - v76;
                v157.length = v76;
                if (CMSampleBufferCopySampleBufferForRange(v77, v73, v157, &cf))
                {
                  goto LABEL_20;
                }

                warehouse_setTrimAttachmentToTrimWholeDuration(cf);
                v29 -= v76;
                if (dword_1EAF17C98)
                {
                  LODWORD(v116.value) = 0;
                  LOBYTE(type.value) = 0;
                  v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v79 = v116.value;
                  v80 = LOBYTE(type.value);
                  v103 = v78;
                  if (os_log_type_enabled(v78, type.value))
                  {
                    v81 = v79;
                  }

                  else
                  {
                    v81 = v79 & 0xFFFFFFFE;
                  }

                  if (v81)
                  {
                    CMSampleBufferGetOutputPresentationTimeStamp(time, v73);
                    v82 = CMTimeGetSeconds(time);
                    CMSampleBufferGetOutputDuration(time, v73);
                    v83 = CMTimeGetSeconds(time);
                    v84 = cf;
                    v102 = CMSampleBufferGetNumSamples(cf);
                    CMSampleBufferGetOutputPresentationTimeStamp(time, cf);
                    v85 = CMTimeGetSeconds(time);
                    CMSampleBufferGetOutputDuration(time, cf);
                    v86 = CMTimeGetSeconds(time);
                    LODWORD(time2.value) = 136317954;
                    *(&time2.value + 4) = "warehouse_retransmitSampleBuffersFromTime";
                    LOWORD(time2.flags) = 2082;
                    *(&time2.flags + 2) = DerivedStorage + 192;
                    HIWORD(time2.epoch) = 2048;
                    v136 = v98;
                    v137 = 2048;
                    v138 = *&v73;
                    v139 = 1024;
                    *v140 = v75;
                    *&v140[4] = 2048;
                    *&v140[6] = v82;
                    v141 = 2048;
                    v142 = v83;
                    v143 = 2048;
                    v144 = *&v84;
                    v145 = 1024;
                    *v146 = v102;
                    *&v146[4] = 2048;
                    *&v146[6] = v85;
                    v147 = 2048;
                    v148 = v86;
                    v149 = 1024;
                    LODWORD(v150) = v29;
                    LODWORD(v94) = 110;
                    _os_log_send_and_compose_impl(v81, 0, time, 128, &dword_1962D5000, v103, v80, "<<<< Warehouse RP >>>> %s: %{public}s (%p) sbuf %p from catchup (%d samples, OPTS %1.3f dur %1.3f) copied and trimmed-out for priming as sbuf %p (%d samples, OPTS %1.3f dur %1.3f) (%d more packets wanted)...", &time2, v94);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  Mutable = v104;
                }

                CFArrayInsertValueAtIndex(Mutable, 0, cf);
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (v72 >= 2)
                {
                  --v72;
                  if (v29 > 0)
                  {
                    continue;
                  }
                }

                break;
              }
            }

            v87 = CFArrayGetCount(Mutable);
            if (v87 < 1)
            {
              v15 = v96;
            }

            else
            {
              v88 = v87;
              v89 = 0;
              v15 = v96;
              do
              {
                v90 = CFArrayGetValueAtIndex(Mutable, v89);
                CMBufferQueueEnqueue(*(DerivedStorage + 152), v90);
                ++v89;
              }

              while (v88 != v89);
            }

            goto LABEL_102;
          }

LABEL_20:
          FigSimpleMutexUnlock();
          if (cf)
          {
            CFRelease(cf);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return;
        }

        v40 = v24 - SInt32;
        v41 = FigGetAllocatorForMedia();
        v155.length = v19 - v40;
        v155.location = v24 - v27;
        if (!CMSampleBufferCopySampleBufferForRange(v41, ValueAtIndex, v155, &cf))
        {
          *time = v106;
          *&time[16] = v107;
          warehouse_setTrimAttachmentToTrimUntilTime(cf, time);
          CMBufferQueueEnqueue(*(DerivedStorage + 152), cf);
          if (dword_1EAF17C98)
          {
            v97 = v15;
            LODWORD(v116.value) = 0;
            LOBYTE(type.value) = 0;
            v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v43 = v116.value;
            v44 = LOBYTE(type.value);
            v105 = v42;
            if (os_log_type_enabled(v42, type.value))
            {
              v45 = v43;
            }

            else
            {
              v45 = v43 & 0xFFFFFFFE;
            }

            if (v45)
            {
              *time = v106;
              *&time[16] = v107;
              v46 = CMTimeGetSeconds(time);
              CMSampleBufferGetOutputPresentationTimeStamp(time, ValueAtIndex);
              v47 = CMTimeGetSeconds(time);
              CMSampleBufferGetOutputDuration(time, ValueAtIndex);
              v48 = CMTimeGetSeconds(time);
              v49 = cf;
              v100 = CMSampleBufferGetNumSamples(cf);
              CMSampleBufferGetOutputPresentationTimeStamp(time, cf);
              v50 = CMTimeGetSeconds(time);
              CMSampleBufferGetOutputDuration(time, cf);
              v51 = CMTimeGetSeconds(time);
              *time = 136318722;
              *&time[4] = "warehouse_retransmitSampleBuffersFromTime";
              *&time[12] = 2082;
              *&time[14] = DerivedStorage + 192;
              *&time[22] = 2048;
              *&time[24] = v98;
              LOWORD(v118) = 2048;
              *(&v118 + 2) = v46;
              WORD5(v118) = 1024;
              HIDWORD(v118) = v26;
              LOWORD(v119) = 2048;
              *(&v119 + 2) = ValueAtIndex;
              WORD5(v119) = 1024;
              HIDWORD(v119) = v19;
              *v120 = 2048;
              *&v120[2] = v47;
              v121 = 2048;
              v122 = v48;
              v123 = 1024;
              v124 = v40;
              v125 = 1024;
              v126 = v19;
              v127 = 2048;
              v128 = v49;
              v129 = 1024;
              v130 = v100;
              v131 = 2048;
              v132 = v50;
              v133 = 2048;
              v134 = v51;
              LODWORD(v94) = 132;
              _os_log_send_and_compose_impl(v45, 0, &time2, 128, &dword_1962D5000, v105, v44, "<<<< Warehouse RP >>>> %s: %{public}s (%p) retransmit from %1.3f: satisfied priming (%d packets) within starting sbuf %p (%d samples, OPTS %1.3f dur %1.3f), copied range %d..<%d and trimmed as sbuf %p (%d samples, OPTS %1.3f dur %1.3f)", time, v94);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v15 = v97;
          }

          if (cf)
          {
            CFRelease(cf);
            Mutable = 0;
            cf = 0;
            goto LABEL_102;
          }

LABEL_101:
          Mutable = 0;
LABEL_102:
          v91 = v16 + 1;
          if (v16 + 1 < v15)
          {
            do
            {
              v92 = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v91);
              CMBufferQueueEnqueue(*(DerivedStorage + 152), v92);
              ++v91;
            }

            while (v15 != v91);
          }

          goto LABEL_20;
        }
      }
    }

LABEL_19:
    Mutable = 0;
    goto LABEL_20;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
}