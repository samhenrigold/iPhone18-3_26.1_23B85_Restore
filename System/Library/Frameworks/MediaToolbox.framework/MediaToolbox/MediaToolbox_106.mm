CFIndex sapl_loadMediaPlaylist(uint64_t a1)
{
  v17 = 0;
  v18 = 0;
  cf = 0;
  if (*(a1 + 272))
  {
    v2 = 0;
    v3 = 1;
    goto LABEL_11;
  }

  if (*(a1 + 120))
  {
    goto LABEL_6;
  }

  if (!*(a1 + 240))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, cf, v17);
    goto LABEL_28;
  }

  sapl_copyCurrentMediaRequest(a1, &cf);
  if (cf)
  {
    goto LABEL_5;
  }

  NextAlternate = sapl_findNextAlternate(a1, &v18);
  if (NextAlternate || ((PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v18)) == 0 ? (v8 = 0) : (v8 = CFRetain(PlaylistAlternateURL)), (v17 = v8, *(a1 + 80)) && (NextAlternate = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a1 + 16), &v17), NextAlternate)))
  {
LABEL_28:
    v2 = NextAlternate;
    goto LABEL_7;
  }

  *(a1 + 208) = 2;
  URLForCacheLookup = FigAlternateGetURLForCacheLookup(v18);
  StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(v18);
  FigAlternateGetPeakBitRate(v18);
  v3 = 1;
  v11 = OUTLINED_FUNCTION_298();
  Playlist = sapl_loadPlaylist(v11, v12, URLForCacheLookup, 1, StableStreamIdentifier, v13);
  if (Playlist)
  {
    v2 = Playlist;
    goto LABEL_9;
  }

LABEL_5:
  if (*(a1 + 272))
  {
LABEL_6:
    v2 = 0;
LABEL_7:
    v3 = 1;
    goto LABEL_9;
  }

  v2 = 0;
  v3 = 0;
  OUTLINED_FUNCTION_2_44();
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  if (v17)
  {
    CFRelease(v17);
  }

  if ((v3 & 1) == 0)
  {
    sapl_waitForSemaphore(a1);
  }

  v4 = *(a1 + 280);
  if (v4)
  {
    return CFErrorGetCode(v4);
  }

  return v2;
}

uint64_t sapl_loadSessionData(uint64_t a1)
{
  v23 = 0;
  value = 0;
  cf = 0;
  if (*(a1 + 120))
  {
    v17 = 0;
  }

  else
  {
    if (*(a1 + 344))
    {
      v17 = 0;
    }

    else
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Queue = FigMediaRequestSchedulerCreate(AllocatorForMedia, *(a1 + 128), *(a1 + 40), *(a1 + 48), *(a1 + 168), 0, *(a1 + 56), *(a1 + 160), *(a1 + 144), *(a1 + 184), *(a1 + 152), a1, sapl_loadSessionData_outputCallbacks, *(a1 + 136), &v23);
      if (Queue)
      {
LABEL_35:
        v17 = Queue;
      }

      else
      {
        v4 = *(a1 + 240);
        if (v4)
        {
          v5 = 0;
          v6 = 0;
          v7 = MEMORY[0x1E695E9C0];
          while (1)
          {
            SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(v4);
            if (SessionDataSpecifiers)
            {
              SessionDataSpecifiers = CFArrayGetCount(SessionDataSpecifiers);
            }

            if (v6 >= SessionDataSpecifiers)
            {
              break;
            }

            v9 = FigMultivariantPlaylistGetSessionDataSpecifiers(*(a1 + 240));
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v6);
            if (FigSessionDataSpecifierGetURL(ValueAtIndex))
            {
              if (*(a1 + 80))
              {
                URL = FigSessionDataSpecifierGetURL(ValueAtIndex);
                if (URL)
                {
                  URL = CFRetain(URL);
                }

                cf = URL;
                Queue = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a1 + 16), &cf);
                if (Queue)
                {
                  goto LABEL_35;
                }

                FigSessionDataSpecifierSetURL(ValueAtIndex, cf);
              }

              Queue = FigMediaRequestSchedulerAddResourceToReadQueue(v23, ValueAtIndex);
              if (Queue)
              {
                goto LABEL_35;
              }

              v5 = 1;
            }

            else
            {
              if (!*(a1 + 336))
              {
                v12 = FigGetAllocatorForMedia();
                Mutable = CFArrayCreateMutable(v12, 0, v7);
                *(a1 + 336) = Mutable;
                if (!Mutable)
                {
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
                  goto LABEL_35;
                }
              }

              Identifier = FigSessionDataSpecifierGetIdentifier(ValueAtIndex);
              v15 = FigSessionDataSpecifierGetValue(ValueAtIndex);
              Language = FigSessionDataSpecifierGetLanguage(ValueAtIndex);
              Queue = FigHLSSessionDataCopyMetadataEntry(Identifier, v15, Language, 0, &value);
              if (Queue)
              {
                goto LABEL_35;
              }

              CFArrayAppendValue(*(a1 + 336), value);
              if (value)
              {
                CFRelease(value);
                value = 0;
              }
            }

            ++v6;
            v4 = *(a1 + 240);
          }

          if (v5)
          {
            OUTLINED_FUNCTION_2_44();
            v17 = FigMediaRequestSchedulerStart(v23);
            if (!v17)
            {
              FigSimpleMutexUnlock();
              dispatch_semaphore_wait(*(a1 + 224), 0xFFFFFFFFFFFFFFFFLL);
              FigSimpleMutexLock();
            }
          }

          else
          {
            v17 = 0;
            *(a1 + 344) = 1;
          }
        }

        else
        {
          v17 = 4294954513;
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v17;
}

uint64_t sapl_copyCurrentMediaRequest(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    FigSimpleMutexLock();
    v4 = *(v3 + 192);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    result = FigSimpleMutexUnlock();
    *a2 = v5;
  }

  return result;
}

uint64_t sapl_loadPlaylist(uint64_t HasOnlyAudioOnly, const void *a2, const __CFURL *a3, int a4, const void *a5, uint64_t a6)
{
  cf[25] = *MEMORY[0x1E69E9840];
  *v40 = 0;
  cf[0] = 0;
  v12 = HasOnlyAudioOnly + 128;
  v39 = *(HasOnlyAudioOnly + 104);
  if (*(HasOnlyAudioOnly + 128))
  {
    goto LABEL_10;
  }

  v13 = *(HasOnlyAudioOnly + 40);
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (v13)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, *(HasOnlyAudioOnly + 40));
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v16 = MutableCopy;
  if (!MutableCopy)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
    v20 = v35;
    if (!v35)
    {
      goto LABEL_10;
    }

LABEL_41:
    v25 = 0;
    goto LABEL_34;
  }

  FigCFDictionarySetInt64();
  v17 = *(HasOnlyAudioOnly + 32);
  v18 = *(HasOnlyAudioOnly + 136);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v19)
  {
    v20 = v19(v17, v18, v16, v12);
  }

  else
  {
    v20 = 4294954514;
  }

  CFRelease(v16);
  if (v20)
  {
    goto LABEL_41;
  }

LABEL_10:
  if (!*(HasOnlyAudioOnly + 160))
  {
    *(HasOnlyAudioOnly + 160) = FigCopyCommonMemoryPool();
  }

  if (*(HasOnlyAudioOnly + 248))
  {
    v21 = *(HasOnlyAudioOnly + 240);
    if (v21)
    {
      Alternates = FigMultivariantPlaylistGetAlternates(v21);
      v23 = FigAlternateSelectionUtility_AlternateListHasOnlyAudioOnly(Alternates);
      v24 = v23;
      if (v23)
      {
        a6 = 0;
      }

      else
      {
        a6 = a6;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    *(HasOnlyAudioOnly + 184) |= 4uLL;
  }

  if (!*(HasOnlyAudioOnly + 144))
  {
    v28 = 0;
    v25 = 0;
LABEL_27:
    v27 = a2;
    goto LABEL_28;
  }

  if (!a4)
  {
    v25 = 0;
    v28 = 1;
    goto LABEL_27;
  }

  v25 = FigCFHTTPCreateURLString(a3);
  if (!v25)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
LABEL_43:
    v20 = v30;
    goto LABEL_34;
  }

  if (!FigStreamingCacheCreateMediaStream(*(HasOnlyAudioOnly + 144), v24, v25, a5, a6, 0, v40))
  {
    v28 = 2;
    goto LABEL_27;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v27 = a2;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v28 = 2;
LABEL_28:
  v29 = FigGetAllocatorForMedia();
  v30 = FigMediaRequestCreateForPlaylist(v29, v27, a3, *(HasOnlyAudioOnly + 144), *v40, v28, *(HasOnlyAudioOnly + 128), *(HasOnlyAudioOnly + 40), *(HasOnlyAudioOnly + 48), 0, 0, v39 | 7u, 0, *(HasOnlyAudioOnly + 56), *(HasOnlyAudioOnly + 160), *(HasOnlyAudioOnly + 88), HasOnlyAudioOnly, *(HasOnlyAudioOnly + 184), sapl_loadPlaylist_outputCallbacks, *(HasOnlyAudioOnly + 136), cf);
  if (v30)
  {
    goto LABEL_43;
  }

  sapl_setCurrentMediaRequest(HasOnlyAudioOnly, cf[0]);
  v31 = cf[0];
  v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v32)
  {
    v20 = 4294954514;
    goto LABEL_34;
  }

  v30 = v32(v31);
  if (v30)
  {
    goto LABEL_43;
  }

  v33 = *(HasOnlyAudioOnly + 88);
  if (v33)
  {
    CFRelease(v33);
    v20 = 0;
    *(HasOnlyAudioOnly + 88) = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_34:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v20;
}

uint64_t sapl_appendToUnpublishedPlaylistRequestEvents(uint64_t a1, const __CFData *a2, const void *a3, const void *a4, char a5, char a6)
{
  v10 = a2;
  v29 = 0;
  if (a2)
  {
    FigGetAllocatorForMedia();
    if (*(*(OUTLINED_FUNCTION_6_25() + 8) + 48))
    {
      v12 = OUTLINED_FUNCTION_187_1();
      v13(v12);
    }

    FigGetAllocatorForMedia();
    if (*(*(OUTLINED_FUNCTION_6_25() + 8) + 48))
    {
      v14 = OUTLINED_FUNCTION_187_1();
      v15(v14);
    }

    FigGetAllocatorForMedia();
    if (*(*(OUTLINED_FUNCTION_6_25() + 8) + 48))
    {
      v16 = OUTLINED_FUNCTION_187_1();
      v17(v16);
    }

    FigCFDictionaryGetInt64IfPresent();
    FigCFDictionaryGetInt64IfPresent();
    FigGetAllocatorForMedia();
    if (*(*(OUTLINED_FUNCTION_6_25() + 8) + 48))
    {
      v18 = OUTLINED_FUNCTION_187_1();
      v19(v18);
    }

    v10 = FigCFHTTPCreateAddressString(0);
  }

  v20 = 1986618469;
  v21 = *(a1 + 240);
  if (v21)
  {
    Alternates = FigMultivariantPlaylistGetAlternates(v21);
    if (FigAlternateSelectionUtility_AlternateListHasOnlyAudioOnly(Alternates))
    {
      v20 = 1936684398;
    }

    else
    {
      v20 = 1986618469;
    }
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  FigMetricHLSPlaylistRequestEventCreate(AllocatorForMedia, a3, v10, 0, 0, a6, a4, 0, 0.0, 0.0, 0.0, 0.0, v20, a5, &v29);
  v24 = v29;
  if (!v29)
  {
    goto LABEL_20;
  }

  Mutable = *(a1 + 384);
  if (Mutable)
  {
LABEL_19:
    CFArrayAppendValue(Mutable, v24);
LABEL_20:
    v27 = 0;
    goto LABEL_21;
  }

  v26 = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(v26, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 384) = Mutable;
  if (Mutable)
  {
    v24 = v29;
    goto LABEL_19;
  }

  v27 = 4294954510;
LABEL_21:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v27;
}

uint64_t sapl_findNextAlternate(uint64_t a1, uint64_t *a2)
{
  cf = 0;
  cf2 = 0;
  v20 = 0;
  v21 = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E50, 4294947716, "StreamingAssetPropertyLoader", 918, v2);
    goto LABEL_23;
  }

  v5 = *(a1 + 208);
  Alternates = FigMultivariantPlaylistGetAlternates(*(a1 + 240));
  if (!Alternates || (v7 = Alternates, CFArrayGetCount(Alternates) <= 0))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E50, 4294947715, "StreamingAssetPropertyLoader", 921, v2);
    goto LABEL_23;
  }

  v8 = *(a1 + 144);
  if (!v8)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v9 = 0;
  if (*(a1 + 152) || v5 == 2)
  {
    goto LABEL_18;
  }

  LongestContiguousMediaStreamInCacheAtTime = FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime(v8, 0, &v21, &cf2, &cf, &v20, 0.0);
  if (LongestContiguousMediaStreamInCacheAtTime)
  {
LABEL_23:
    v16 = LongestContiguousMediaStreamInCacheAtTime;
    v9 = 0;
    goto LABEL_28;
  }

  if (!cf2 || CFArrayGetCount(v7) < 1)
  {
    goto LABEL_17;
  }

  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
    URLForCacheLookup = FigAlternateGetURLForCacheLookup(ValueAtIndex);
    v9 = FigCFHTTPCreateURLString(URLForCacheLookup);
    if (CFEqual(v9, cf2))
    {
      break;
    }

    if (cf)
    {
      FigAlternateGetStableStreamIdentifier(ValueAtIndex);
      if (FigCFEqual())
      {
        break;
      }
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (++v11 >= CFArrayGetCount(v7))
    {
      goto LABEL_17;
    }
  }

  *(a1 + 216) = v11;
  if (ValueAtIndex)
  {
    goto LABEL_27;
  }

LABEL_18:
  for (i = *(a1 + 216); i < CFArrayGetCount(v7); ++i)
  {
    v15 = CFArrayGetValueAtIndex(v7, i);
    if (!FigAlternateIsIFrameOnly(v15))
    {
      *(a1 + 216) = i;
      break;
    }
  }

  v17 = FigCFArrayGetValueAtIndex();
  if (v17)
  {
    ValueAtIndex = v17;
LABEL_27:
    v16 = 0;
    *a2 = ValueAtIndex;
    goto LABEL_28;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, cf);
  v16 = v19;
LABEL_28:
  if (cf2)
  {
    CFRelease(cf2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v16;
}

void sapl_threadAbortAction(uint64_t a1)
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  sapl_copyCurrentMediaRequest(a1, cf);
  if (dword_1EAF16E58)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = cf[0];
  if (cf[0])
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(v2);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

void sapl_sessionDataSchedulerDidProduceDataOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, OpaqueCMBlockBuffer *a7, int a8)
{
  MutableCopy = v9;
  v69 = 0;
  message = 0;
  blockBufferOut = 0;
  FigSimpleMutexLock();
  v17 = &unk_1EAF16000;
  if (!a8)
  {
    OUTLINED_FUNCTION_1_43();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, v63, v65);
    goto LABEL_96;
  }

  if (a4)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(a4, @"FHRP_HTTPResponseHeaders", AllocatorForMedia, &message);
      if (message)
      {
        v69 = CFHTTPMessageCopyAllHeaderFields(message);
      }
    }
  }

  else if (a5)
  {
    FigCustomURLResponseInfoCopyHTTPHeaders();
  }

  v20 = FigGetAllocatorForMedia();
  v21 = FigGetAllocatorForMedia();
  DataLength = CMBlockBufferGetDataLength(a7);
  if (!CMBlockBufferCreateContiguous(v20, a7, v21, 0, 0, DataLength, 0, &blockBufferOut))
  {
    v23 = v69;
    theArray = 0;
    cf = 0;
    value = 0;
    FigGetAllocatorForMedia();
    if (FigCreateCFDataWithBlockBufferNoCopy())
    {
      v26 = 0;
      goto LABEL_65;
    }

    v24 = cf;
    anURL = 0;
    if (FigSessionDataSpecifierGetFormatType(a2) == 2)
    {
      v25 = FigGetAllocatorForMedia();
      v26 = OUTLINED_FUNCTION_5_32(v25);
      if (!v26)
      {
        goto LABEL_65;
      }

LABEL_25:
      if (*(a3 + 288) || (v29 = FigGetAllocatorForMedia(), v30 = CFArrayCreateMutable(v29, 0, MEMORY[0x1E695E9C0]), (*(a3 + 288) = v30) != 0))
      {
        v31 = *(a3 + 264);
        if (v31)
        {
          PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(v31);
        }

        else
        {
          PlaylistActiveDurationSecs = 0.0;
        }

        Identifier = FigSessionDataSpecifierGetIdentifier(a2);
        FigSessionDataSpecifierGetURL(a2);
        v34 = OUTLINED_FUNCTION_298();
        if (FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntry(v34, v35, v36, v23, v37, 0, PlaylistActiveDurationSecs))
        {
          goto LABEL_65;
        }

        if (theArray && CFArrayGetCount(theArray) >= 1)
        {
          if (*(a3 + 80))
          {
            v38 = theArray;
            anURL = 0;
            if (theArray)
            {
              v39 = FigGetAllocatorForMedia();
              Mutable = CFArrayCreateMutable(v39, 0, MEMORY[0x1E695E9C0]);
              if (Mutable)
              {
                if (CFArrayGetCount(v38) < 1)
                {
                  OUTLINED_FUNCTION_0_48();
                  goto LABEL_73;
                }

                v64 = v26;
                v66 = a3;
                v41 = 0;
                Identifier = @"URL";
                v67 = Mutable;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v38, v41);
                  v43 = CFDictionaryGetValue(ValueAtIndex, @"ChapterMetadataItems");
                  v44 = FigGetAllocatorForMedia();
                  MutableCopy = CFDictionaryCreateMutableCopy(v44, 0, ValueAtIndex);
                  if (!MutableCopy)
                  {
                    v8 = 0;
                    v17 = 0;
                    v26 = v64;
                    goto LABEL_70;
                  }

                  CFArrayAppendValue(Mutable, MutableCopy);
                  v45 = FigGetAllocatorForMedia();
                  v17 = CFArrayCreateMutable(v45, 0, MEMORY[0x1E695E9C0]);
                  if (!v17)
                  {
                    break;
                  }

                  CFDictionarySetValue(MutableCopy, @"ChapterMetadataItems", v17);
                  if (CFArrayGetCount(v43) >= 1)
                  {
                    for (i = 0; i < CFArrayGetCount(v43); ++i)
                    {
                      v47 = CFArrayGetValueAtIndex(v43, i);
                      v48 = CFDictionaryGetValue(v47, @"URL");
                      v49 = FigGetAllocatorForMedia();
                      v8 = CFDictionaryCreateMutableCopy(v49, 0, v47);
                      if (!v8)
                      {
LABEL_69:
                        v26 = v64;
                        Mutable = v67;
                        goto LABEL_70;
                      }

                      if (v48)
                      {
                        v50 = FigGetAllocatorForMedia();
                        anURL = CFURLCreateWithString(v50, v48, 0);
                        if (!anURL)
                        {
                          goto LABEL_69;
                        }

                        URL = FigSessionDataSpecifierGetURL(a2);
                        if (FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(URL, &anURL))
                        {
                          Identifier = 0;
                          LODWORD(a2) = 0;
                          v26 = v64;
                          Mutable = v67;
LABEL_73:
                          if (anURL)
                          {
                            CFRelease(anURL);
                          }

                          if (Mutable)
                          {
                            CFRelease(Mutable);
                          }

                          if (MutableCopy)
                          {
                            CFRelease(MutableCopy);
                          }

                          if (v17)
                          {
                            CFRelease(v17);
                          }

                          if (v8)
                          {
                            CFRelease(v8);
                          }

                          if (a2 && Identifier)
                          {
                            FigCFArrayAppendArray();
                          }

LABEL_86:
                          if (value)
                          {
                            CFRelease(value);
                          }

                          if (Identifier)
                          {
                            CFRelease(Identifier);
                          }

                          if (theArray)
                          {
                            CFRelease(theArray);
                          }

                          if (v26)
                          {
                            CFRelease(v26);
                          }

                          if (cf)
                          {
                            CFRelease(cf);
                          }

                          goto LABEL_96;
                        }

                        v52 = CFURLGetString(anURL);
                        CFDictionarySetValue(v8, @"URL", v52);
                        if (anURL)
                        {
                          CFRelease(anURL);
                          anURL = 0;
                        }
                      }

                      CFArrayAppendValue(v17, v8);
                      CFRelease(v8);
                    }
                  }

                  CFRelease(v17);
                  CFRelease(MutableCopy);
                  ++v41;
                  Mutable = v67;
                  if (v41 >= CFArrayGetCount(v38))
                  {
                    OUTLINED_FUNCTION_0_48();
                    v26 = v64;
                    goto LABEL_73;
                  }
                }

                v8 = 0;
                v26 = v64;
LABEL_70:
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v64, v66);
              }

              else
              {
                v8 = 0;
                v17 = 0;
                MutableCopy = 0;
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v63, v65);
              }

              Identifier = 0;
              LODWORD(a2) = v61 == 0;
              goto LABEL_73;
            }
          }

          else
          {
            FigCFArrayAppendArray();
          }

LABEL_65:
          Identifier = 0;
          goto LABEL_86;
        }

        if (FigSessionDataSpecifierIsLocalizedRenditionNameMetadata(a2))
        {
          Identifier = *(a3 + 312);
          *(a3 + 312) = v26;
          if (!v26)
          {
LABEL_54:
            if (!Identifier)
            {
              goto LABEL_86;
            }

            CFRelease(Identifier);
            goto LABEL_65;
          }

LABEL_53:
          CFRetain(v26);
          goto LABEL_54;
        }

        if (FigSessionDataSpecifierIsCustomMediaSelectionSchemeMetadata(a2))
        {
          Identifier = *(a3 + 360);
          *(a3 + 360) = v26;
          if (!v26)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }

        if (*(a3 + 336) || (v53 = FigGetAllocatorForMedia(), v54 = CFArrayCreateMutable(v53, 0, MEMORY[0x1E695E9C0]), (*(a3 + 336) = v54) != 0))
        {
          FigSessionDataSpecifierGetIdentifier(a2);
          Language = FigSessionDataSpecifierGetLanguage(a2);
          FigSessionDataSpecifierGetURL(a2);
          v56 = OUTLINED_FUNCTION_298();
          if (!FigHLSSessionDataCopyMetadataEntry(v56, v57, Language, v58, v59))
          {
            CFArrayAppendValue(*(a3 + 336), value);
          }

          goto LABEL_65;
        }
      }

      OUTLINED_FUNCTION_1_43();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_65;
    }

    if (FigSessionDataSpecifierGetFormatType(a2) == 1)
    {
LABEL_14:
      v27 = FigCFHTTPCreatePropertyListFromJSON(v24, &anURL);
      v26 = anURL;
      if (v27)
      {
        goto LABEL_65;
      }

      goto LABEL_25;
    }

    if (FigSessionDataSpecifierGetFormatType(a2) == 3)
    {
      if (v24)
      {
        goto LABEL_18;
      }
    }

    else
    {
      FigSessionDataSpecifierGetIdentifier(a2);
      if (!FigCFEqual())
      {
        if (FigSessionDataSpecifierGetFormatType(a2))
        {
          v26 = anURL;
          goto LABEL_25;
        }

        v60 = FigGetAllocatorForMedia();
        v28 = OUTLINED_FUNCTION_5_32(v60);
        anURL = v28;
        if (!v28)
        {
          goto LABEL_14;
        }

LABEL_19:
        v26 = v28;
        goto LABEL_25;
      }

      if (v24)
      {
LABEL_18:
        v28 = CFRetain(v24);
        goto LABEL_19;
      }
    }

    v26 = 0;
    goto LABEL_25;
  }

LABEL_96:
  FigSimpleMutexUnlock();
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (message)
  {
    CFRelease(message);
  }
}

void FigStreamingAssetPropertyLoaderCreate_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

uint64_t sapl_playlistDidFail_cold_1(uint64_t *a1, uint64_t a2, const void *a3)
{
  URLForCacheLookup = FigAlternateGetURLForCacheLookup(*a1);
  StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(*a1);
  PeakBitRate = FigAlternateGetPeakBitRate(*a1);
  return sapl_loadPlaylist(a2, a3, URLForCacheLookup, 1, StableStreamIdentifier, PeakBitRate);
}

intptr_t sapl_playlistDidFail_cold_2(uint64_t a1, int a2)
{
  v4 = *(a1 + 208);
  AllocatorForMedia = FigGetAllocatorForMedia();
  result = CFErrorCreate(AllocatorForMedia, @"CoreMediaErrorDomain", a2, 0);
  v7 = 280;
  if (v4 == 1)
  {
    v7 = 256;
  }

  *(a1 + v7) = result;
  if (*(a1 + 232) >= 1)
  {
    v8 = 0;
    do
    {
      result = dispatch_semaphore_signal(*(a1 + 224));
      ++v8;
    }

    while (v8 < *(a1 + 232));
  }

  *(a1 + 232) = 0;
  return result;
}

void FigPlaybackItemLogCreateW3CLogData_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a3 = v5;

  CFRelease(a2);
}

uint64_t FigAlternateSetStartupScore(uint64_t a1, double a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(DerivedStorage + 216) = a2;
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t FigAlternateSetLastKnownValueForIsFullyCached(uint64_t a1, char a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(DerivedStorage + 236) = a2;
    FigSimpleMutexUnlock();
  }

  return 0;
}

void FigAlternateHasNonRectangularProjection(__CFArray *a1)
{
  if (a1)
  {
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
    v2 = 0;
    v3 = *MEMORY[0x1E6960668];
    v4 = *(MEMORY[0x1E6960668] + 8);
    v5 = *MEMORY[0x1E6960670];
    v6 = *(MEMORY[0x1E6960670] + 8);
    v7 = *MEMORY[0x1E6960660];
    v8 = *(MEMORY[0x1E6960660] + 8);
    v9 = *MEMORY[0x1E6960678];
    v10 = *(MEMORY[0x1E6960678] + 8);
    do
    {
      if (VideoLayoutTags)
      {
        Count = CFArrayGetCount(VideoLayoutTags);
      }

      else
      {
        Count = 0;
      }

      if (v2 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v2);
      *&tagBuffer.category = 0;
      tagBuffer.value = 0;
      numberOfTagsCopied = 0;
      CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_ProjectionType, &tagBuffer, 1, &numberOfTagsCopied);
      *&v15.category = v3;
      v15.value = v4;
      if (CMTagEqualToTag(tagBuffer, v15))
      {
        break;
      }

      *&v16.category = v5;
      v16.value = v6;
      if (CMTagEqualToTag(tagBuffer, v16))
      {
        break;
      }

      *&v17.category = v7;
      v17.value = v8;
      if (CMTagEqualToTag(tagBuffer, v17))
      {
        break;
      }

      *&v18.category = v9;
      v18.value = v10;
      ++v2;
    }

    while (!CMTagEqualToTag(tagBuffer, v18));
    OUTLINED_FUNCTION_207_0();
  }
}

uint64_t FigAlternateGetRankingScoreOrPeakBWWithVideoCodecScore(uint64_t result, int a2, _DWORD *a3)
{
  if (result)
  {
    v5 = result;
    PeakBitRate = FigAlternateGetPeakBitRate(result);
    if (a2)
    {
      result = CMBaseObjectGetDerivedStorage();
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      result = FigAlternateGetBestVideoFormat(v5);
      if (!a3)
      {
        return result;
      }
    }
  }

  else
  {
    PeakBitRate = 0;
    if (!a3)
    {
      return result;
    }
  }

  *a3 = PeakBitRate;
  return result;
}

uint64_t FigAlternateHasSupplementalVideoFormat(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(CMBaseObjectGetDerivedStorage() + 72);
  if (v3)
  {
    switch(a2)
    {
      case 1:
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_7_18(DerivedStorage);
        if (*(DerivedStorage + 328))
        {
          v3 = *(DerivedStorage + 327);
        }

        else
        {
          v9 = FigSimpleMutexUnlock();
          v3 = OUTLINED_FUNCTION_8_17(v9, @"cdm4");
          v10 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_7_18(v10);
          *(v10 + 327) = v3;
          *(v10 + 328) = DerivedStorage;
        }

        goto LABEL_16;
      case 2:
        v5 = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_7_18(v5);
        if (*(v5 + 326))
        {
          v3 = *(v5 + 325);
        }

        else
        {
          v7 = FigSimpleMutexUnlock();
          v3 = OUTLINED_FUNCTION_8_17(v7, @"db4h");
          v8 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_7_18(v8);
          *(v8 + 325) = v3;
          *(v8 + 326) = v5;
        }

        goto LABEL_16;
      case 3:
        v4 = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_7_18(v4);
        if (*(v4 + 324))
        {
          v3 = *(v4 + 323);
        }

        else
        {
          v11 = FigSimpleMutexUnlock();
          v3 = OUTLINED_FUNCTION_8_17(v11, @"db1p");
          v12 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_7_18(v12);
          *(v12 + 323) = v3;
          *(v12 + 324) = v4;
        }

LABEL_16:
        FigSimpleMutexUnlock();
        return v3;
    }

    return 0;
  }

  return v3;
}

const __CFDictionary *FigAlternateMightHaveDummyAudioGroup(const __CFDictionary *result)
{
  if (result)
  {
    result = *(CMBaseObjectGetDerivedStorage() + 176);
    if (result)
    {
      if (CFDictionaryContainsKey(result, *MEMORY[0x1E6962B98]))
      {
        return 0;
      }

      else
      {
        CMBaseObjectGetDerivedStorage();
        return (FigCFEqual() != 0);
      }
    }
  }

  return result;
}

const void *FigAlternateGetStableStreamIdentifierForMediaSubstream(uint64_t a1, int a2, const void *a3)
{
  if (!a1)
  {
    return 0;
  }

  switch(a2)
  {
    case 1935832172:
      v4 = 192;
      break;
    case 1936684398:
      v4 = 176;
      break;
    case 1986618469:
      v4 = 184;
      break;
    default:
      return 0;
  }

  v5 = *(CMBaseObjectGetDerivedStorage() + v4);
  if (!v5)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v5, a3);
  if (!Value)
  {
    return 0;
  }

  v7 = *MEMORY[0x1E6962BA8];

  return CFDictionaryGetValue(Value, v7);
}

uint64_t FigAlternateHasAudioFormat(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    switch(a2)
    {
      case 1:
        return fa_CodecsIncludeAudioFormatChoice(result, 1633772320) || fa_CodecsIncludeAudioFormatChoice(v2, 1633772392) || fa_CodecsIncludeAudioFormatChoice(v2, 1633772400) || fa_CodecsIncludeAudioFormatChoice(v2, 778924083) || fa_CodecsIncludeAudioFormatChoice(v2, 1970495843) || fa_CodecsIncludeAudioFormatChoice(v2, 778924082) || fa_CodecsIncludeAudioFormatChoice(v2, 778924081) != 0;
      case 2:
        v3 = 1718378851;
        goto LABEL_16;
      case 3:
        v3 = 1869641075;
        goto LABEL_16;
      case 4:
        v3 = 1634492771;
        goto LABEL_16;
      case 5:
        v3 = 1633889587;
        goto LABEL_16;
      case 6:
        v3 = 1700998451;
        goto LABEL_16;
      case 7:

        return FigAlternateHasAudioFormatID(result, 1700997939);
      case 8:
        v3 = 1634754915;
LABEL_16:

        result = fa_CodecsIncludeAudioFormatChoice(result, v3);
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

void fa_getDeclaredAudioInfo(const void *a1@<X0>, const void *a2@<X1>, __int128 *a3@<X8>)
{
  *a3 = 0uLL;
  *(a3 + 2) = 0;
  if (!a2 || !a1)
  {
    goto LABEL_53;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFDictionaryGetCount() < 1 || (v7 = CFDictionaryGetValue(*(DerivedStorage + 472), a2)) == 0)
  {
    FigSimpleMutexUnlock();
    v9 = *(CMBaseObjectGetDerivedStorage() + 16);
    v10 = CMBaseObjectGetDerivedStorage();
    v11 = *(v10 + 176);
    if (v11)
    {
      v12 = CFGetTypeID(*(v10 + 176));
      if (v12 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v11, a2);
        if (Value)
        {
          v14 = Value;
          v15 = CFGetTypeID(Value);
          if (v15 == CFDictionaryGetTypeID())
          {
            v16 = CFDictionaryGetValue(v14, *MEMORY[0x1E6962B68]);
            v17 = v16;
            if (!v16)
            {
              goto LABEL_45;
            }

            v18 = CFGetTypeID(v16);
            if (v18 == CFStringGetTypeID())
            {
              v19 = *MEMORY[0x1E695E480];
              ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v17, @"/");
              if (ArrayBySeparatingStrings)
              {
                v17 = ArrayBySeparatingStrings;
                if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
                {
                  v30 = 0;
                  goto LABEL_50;
                }

                v21 = OUTLINED_FUNCTION_173_0();
                ValueAtIndex = CFArrayGetValueAtIndex(v21, v22);
                *a3 = CFStringGetIntValue(ValueAtIndex);
                if (CFArrayGetCount(v17) >= 2)
                {
                  v24 = CFArrayGetValueAtIndex(v17, 1);
                  if (FigAlternateHasAudioFormatID(a1, 1700998451) && FigCFStringFind())
                  {
                    v25 = 1;
                    *(a3 + 1) = 1;
                    goto LABEL_26;
                  }

                  if (v9)
                  {
                    if (FigAlternateHasAudioFormatID(a1, 1634754915))
                    {
                      location = CFStringFind(v24, @"OA", 0).location;
                      if (location != -1)
                      {
                        v42.length = location;
                        v42.location = 0;
                        v27 = CFStringCreateWithSubstring(v19, v24, v42);
                        if (v27)
                        {
                          v28 = v27;
                          *(a3 + 2) = CFStringGetIntValue(v27);
                          CFRelease(v28);
                        }
                      }
                    }
                  }
                }

                v25 = 0;
LABEL_26:
                if (CFArrayGetCount(v17) > 2)
                {
                  LODWORD(v39) = 0;
                  v29 = CFArrayGetValueAtIndex(v17, 2);
                  v30 = CFStringCreateArrayBySeparatingStrings(v19, v29, @",");
                  v31 = 0;
                  if (!v30)
                  {
                    goto LABEL_29;
                  }

LABEL_28:
                  for (i = CFArrayGetCount(v30); ; i = 0)
                  {
                    if (v31 >= i)
                    {
                      goto LABEL_46;
                    }

                    CFArrayGetValueAtIndex(v30, v31);
                    if (FigCFStringFind())
                    {
                      break;
                    }

                    if (FigCFStringFind())
                    {
                      v25 |= 8u;
                      goto LABEL_35;
                    }

                    if (FigCFStringFind())
                    {
                      v25 |= 4u;
                      *(a3 + 1) = v25;
                      if (FigCFStringGetIntAfterString())
                      {
                        *(a3 + 4) = v39;
                      }
                    }

                    else if (FigCFStringGetIntAfterString())
                    {
                      *(a3 + 3) = v39;
                    }

                    else if (FigCFStringGetIntAfterString())
                    {
                      *(a3 + 5) = v39;
                    }

LABEL_36:
                    ++v31;
                    if (v30)
                    {
                      goto LABEL_28;
                    }

LABEL_29:
                    ;
                  }

                  v25 |= 2u;
LABEL_35:
                  *(a3 + 1) = v25;
                  goto LABEL_36;
                }

LABEL_45:
                v30 = 0;
LABEL_46:
                v39 = *a3;
                v40 = *(a3 + 2);
                v33 = CMBaseObjectGetDerivedStorage();
                FigSimpleMutexLock();
                if ((*(v33 + 472) || (v34 = CFGetAllocator(a1), Mutable = CFDictionaryCreateMutable(v34, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v33 + 472) = Mutable) != 0)) && (v36 = CFGetAllocator(a1), (v37 = CFDataCreate(v36, &v39, 24)) != 0))
                {
                  v38 = v37;
                  CFDictionarySetValue(*(v33 + 472), a2, v37);
                  FigSimpleMutexUnlock();
                  CFRelease(v38);
                  if (!v17)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  FigSimpleMutexUnlock();
                  if (!v17)
                  {
LABEL_51:
                    if (v30)
                    {
                      CFRelease(v30);
                    }

                    goto LABEL_53;
                  }
                }

LABEL_50:
                CFRelease(v17);
                goto LABEL_51;
              }
            }
          }
        }
      }
    }

LABEL_53:
    OUTLINED_FUNCTION_207_0();
    return;
  }

  v41.location = 0;
  v41.length = 24;
  CFDataGetBytes(v7, v41, a3);
  OUTLINED_FUNCTION_207_0();

  FigSimpleMutexUnlock();
}

const void *FigAlternateGetAudioBitDepth(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 176);
    if (!v6)
    {
      return 0;
    }

    v7 = CFGetTypeID(*(DerivedStorage + 176));
    if (v7 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    result = CFDictionaryGetValue(v6, a2);
    if (!result)
    {
      return result;
    }

    v8 = CFGetTypeID(result);
    if (v8 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    FigCFDictionaryGetInt32IfPresent();
    return 0;
  }

  return result;
}

double FigAlternateGetAudioSampleRate(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = *(DerivedStorage + 176);
      if (v4)
      {
        v5 = CFGetTypeID(*(DerivedStorage + 176));
        if (v5 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v4, a2);
          if (Value)
          {
            v7 = CFGetTypeID(Value);
            if (v7 == CFDictionaryGetTypeID())
            {
              FigCFDictionaryGetDoubleIfPresent();
            }
          }
        }
      }
    }
  }

  return 0.0;
}

uint64_t FigAlternateGetAudioInstreamID(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 176);
  if (!v4)
  {
    return 0;
  }

  v5 = CFGetTypeID(*(DerivedStorage + 176));
  if (v5 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v4, a2);
  if (!Value)
  {
    return 0;
  }

  v7 = CFGetTypeID(Value);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return FigCFDictionaryGetValue();
}

uint64_t FigAlternateGetSpecializedAudioChannelUsage(const void *a1, const void *a2)
{
  v6 = 0;
  v2 = 1;
  if (a2)
  {
    FigAlternateGetAudioChannelCount(a1, a2, &v6);
    if ((v6 & 4) != 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    if ((v6 & 8) != 0)
    {
      v4 = 4;
    }

    else
    {
      v4 = v3;
    }

    if ((v6 & 2) != 0)
    {
      return 3;
    }

    else
    {
      return v4;
    }
  }

  return v2;
}

uint64_t FigAlternateCreateWithSerializedRepresentation(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  bzero(&__src[1], 0xC8uLL);
  v5 = FigCFDictionaryGetValue();
  __src[0] = FigCFDictionaryGetValue();
  v6 = FigCFDictionaryGetValue();
  __src[4] = FigCFDictionaryGetValue();
  __src[7] = FigCFDictionaryGetValue();
  __src[5] = FigCFDictionaryGetValue();
  __src[9] = FigCFDictionaryGetValue();
  __src[11] = FigCFDictionaryGetValue();
  __src[13] = FigCFDictionaryGetValue();
  __src[18] = FigCFDictionaryGetValue();
  __src[21] = FigCFDictionaryGetValue();
  __src[22] = FigCFDictionaryGetValue();
  __src[23] = FigCFDictionaryGetValue();
  __src[24] = FigCFDictionaryGetValue();
  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  CGSizeMakeWithDictionaryRepresentation(DictionaryValue, &__src[19]);
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetDoubleIfPresent();
  FigCFDictionaryGetDoubleIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  value[0] = 0;
  v8 = FigCFDictionaryGetValue();
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(v8);
    v11 = *MEMORY[0x1E695E480];
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        if (CFArrayGetCount(v9) >= 1)
        {
          v13 = 0;
          do
          {
            ValueAtIndex = FigCFArrayGetValueAtIndex();
            AllocatorForMedia = FigGetAllocatorForMedia();
            if (MEMORY[0x19A8D32E0](ValueAtIndex, AllocatorForMedia, value))
            {
              break;
            }

            CFArrayAppendValue(Mutable, value[0]);
            if (value[0])
            {
              CFRelease(value[0]);
              value[0] = 0;
            }

            ++v13;
          }

          while (v13 < CFArrayGetCount(v9));
          if (value[0])
          {
            CFRelease(value[0]);
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
      }
    }
  }

  else
  {
    Mutable = 0;
    v11 = *MEMORY[0x1E695E480];
  }

  __src[16] = Mutable;
  FigCFDictionaryGetBooleanIfPresent();
  memcpy(value, __src, sizeof(value));
  v16 = FigAlternateCreate(v11, 0, v5, v24, v6, v23, SHIDWORD(v25), v25, value, a4);
  if (__src[16])
  {
    CFRelease(__src[16]);
  }

  return v16;
}

CFMutableStringRef figAlternateCopyDesc(__CFString *cf)
{
  if (cf)
  {
    v86 = *(CMBaseObjectGetDerivedStorage() + 32);
    v2 = *(CMBaseObjectGetDerivedStorage() + 8);
    v3 = *(CMBaseObjectGetDerivedStorage() + 48);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = *(DerivedStorage + 160);
    v6 = *(DerivedStorage + 168);
    v7 = *(CMBaseObjectGetDerivedStorage() + 24);
    IsAudioOnly = FigAlternateIsAudioOnly(cf);
    v9 = *(CMBaseObjectGetDerivedStorage() + 88);
    v10 = *(CMBaseObjectGetDerivedStorage() + 80);
    v87 = *(CMBaseObjectGetDerivedStorage() + 96);
    v89 = *(CMBaseObjectGetDerivedStorage() + 16);
    v90 = *(CMBaseObjectGetDerivedStorage() + 72);
    v11 = *(CMBaseObjectGetDerivedStorage() + 152);
    if (!v11)
    {
      v11 = @".";
    }

    v92 = v11;
    if (*(CMBaseObjectGetDerivedStorage() + 132) == -1)
    {
      VideoRangeString = 0;
    }

    else
    {
      VideoRangeString = FigAlternateGetVideoRangeString(cf);
    }

    if (*(CMBaseObjectGetDerivedStorage() + 128) < -1)
    {
      HDCPString = 0;
    }

    else
    {
      HDCPString = FigAlternateGetHDCPString(cf);
    }

    v14 = *(CMBaseObjectGetDerivedStorage() + 56);
    v13 = *(CMBaseObjectGetDerivedStorage() + 120);
    v16 = *(CMBaseObjectGetDerivedStorage() + 64);
    VideoLayoutString = FigAlternateGetVideoLayoutString(cf);
    v15 = v7 == 0;
    v17 = IsAudioOnly == 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v87 = 0;
    VideoRangeString = 0;
    v89 = 0;
    v90 = 0;
    HDCPString = 0;
    VideoLayoutString = 0;
    v92 = 0;
    v13 = 0;
    v86 = 0;
    v3 = 0;
    v2 = 0;
    v5 = 0.0;
    v6 = 0.0;
    v14 = 0.0;
    v15 = 1;
    v16 = 0.0;
    v17 = 1;
  }

  v18 = CFGetAllocator(cf);
  Mutable = CFStringCreateMutable(v18, 0);
  if (Mutable)
  {
    v20 = OUTLINED_FUNCTION_173_0();
    CFStringAppendFormat(v20, v21, v22, v86, cf);
    if (v2 >= 1)
    {
      v23 = "";
      if (v3 > 0)
      {
        v23 = "/Avg";
      }

      v85 = v23;
      v24 = OUTLINED_FUNCTION_173_0();
      CFStringAppendFormat(v24, v25, v26, v85, v2);
      if (v3 >= 1)
      {
        v27 = OUTLINED_FUNCTION_173_0();
        CFStringAppendFormat(v27, v28, v29, v3);
      }

      v30 = OUTLINED_FUNCTION_173_0();
      CFStringAppendFormat(v30, v31, v32);
    }

    if (v5 <= 2.22044605e-16 && v6 <= 2.22044605e-16)
    {
      if (!v15)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v76 = OUTLINED_FUNCTION_173_0();
      CFStringAppendFormat(v76, v77, v78, *&v5, *&v6);
      if (!v15)
      {
LABEL_56:
        v79 = OUTLINED_FUNCTION_173_0();
        CFStringAppendFormat(v79, v80, v81);
        if (!v17)
        {
LABEL_57:
          v82 = OUTLINED_FUNCTION_173_0();
          CFStringAppendFormat(v82, v83, v84);
          if (!v9)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        if (!v9)
        {
LABEL_28:
          if (v10)
          {
            v37 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v37, v38, v39, v10);
          }

          if (v87)
          {
            v40 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v40, v41, v42, v87);
          }

          if (v89)
          {
            v43 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v43, v44, v45, v89);
          }

          if (v90)
          {
            v46 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v46, v47, v48, v90);
          }

          if (VideoRangeString)
          {
            v49 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v49, v50, v51, VideoRangeString);
          }

          if (HDCPString)
          {
            v52 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v52, v53, v54, HDCPString);
          }

          if (v14 > 2.22044605e-16)
          {
            v55 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v55, v56, v57, *&v14);
          }

          if (!FigCFEqual())
          {
            v58 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v58, v59, v60, v92);
          }

          if (v16 != -1.0)
          {
            v61 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v61, v62, v63, *&v16);
          }

          if (VideoLayoutString)
          {
            v64 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v64, v65, v66, VideoLayoutString);
          }

          if (v13)
          {
            Length = CFStringGetLength(v13);
            MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v13);
            if (Length > CFStringGetLength(@"...") + 16)
            {
              v93.length = Length - 16;
              v93.location = 9;
              CFStringReplace(MutableCopy, v93, @"...");
            }

            v69 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v69, v70, v71, MutableCopy);
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }
          }

          v72 = OUTLINED_FUNCTION_173_0();
          CFStringAppendFormat(v72, v73, v74);
          return Mutable;
        }

LABEL_27:
        v34 = OUTLINED_FUNCTION_173_0();
        CFStringAppendFormat(v34, v35, v36, v9);
        goto LABEL_28;
      }
    }

    if (!v17)
    {
      goto LABEL_57;
    }

    goto LABEL_26;
  }

  return Mutable;
}

CFMutableDictionaryRef FigAlternateCopyAsSerializedRepresentation(__CFArray *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetBoolean();
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(DerivedStorage[10]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetInt64();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetDouble();
  FigCFDictionarySetDouble();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if (Mutable)
  {
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
    if (VideoLayoutTags)
    {
      v9 = VideoLayoutTags;
      if (CFArrayGetCount(VideoLayoutTags) >= 1)
      {
        v10 = FigGetAllocatorForMedia();
        v11 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
        if (v11)
        {
          v12 = v11;
          if (CFArrayGetCount(v9) < 1)
          {
LABEL_10:
            FigCFDictionarySetValue();
          }

          else
          {
            v13 = 0;
            while (1)
            {
              ValueAtIndex = FigCFArrayGetValueAtIndex();
              v15 = FigGetAllocatorForMedia();
              v16 = MEMORY[0x19A8D3280](ValueAtIndex, v15);
              if (!v16)
              {
                break;
              }

              v17 = v16;
              CFArrayAppendValue(v12, v16);
              CFRelease(v17);
              if (++v13 >= CFArrayGetCount(v9))
              {
                goto LABEL_10;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_10();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
          }

          CFRelease(v12);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
        }
      }
    }
  }

  FigCFDictionarySetBoolean();
  if (a2)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  FigSimpleMutexUnlock();
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  return Mutable;
}

uint64_t FigAlternateCopyAsXPCObject(uint64_t a1, void *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = xpc_dictionary_create(0, 0, 0);
    if (!v4)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
      v20 = v22;
      goto LABEL_18;
    }

    v5 = v4;
    xpc_dictionary_set_double(v4, "AltRankingScore", *(DerivedStorage + 64));
    xpc_dictionary_set_double(v5, "AltFrameRate", *(DerivedStorage + 56));
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 160));
    FigXPCMessageSetCFDictionary();
    xpc_dictionary_set_int64(v5, "AltHDCP", *(DerivedStorage + 128));
    xpc_dictionary_set_int64(v5, "AltVideoRange", *(DerivedStorage + 132));
    xpc_dictionary_set_uint64(v5, "AltAllowedCPC", *(DerivedStorage + 136));
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltAllowedAOCP", v7);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltHasDeclaredVideoLayoutTags", v8);
    xpc_dictionary_set_int64(v5, "AltAlternateIndex", *(DerivedStorage + 28));
    xpc_dictionary_set_int64(v5, "AltZeroIndexedAlternateIndex", *(DerivedStorage + 32));
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    xpc_dictionary_set_int64(v5, "AlternateDeclaredPeakBitRate", *(DerivedStorage + 8));
    xpc_dictionary_set_int64(v5, "AltAverageBitRate", *(DerivedStorage + 48));
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltAudioGroupIsSynthesized", v9);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltVideoGroupIsSynthesized", v10);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltSubtitlesGroupIsSynthesized", v11);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltClosedCaptionGroupIsSynthesized", v12);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltIFrameOnly", v13);
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    v14 = CMBaseObjectGetDerivedStorage();
    v15 = *(v14 + 144);
    if (!v15 || CFArrayGetCount(*(v14 + 144)) < 1)
    {
      goto LABEL_15;
    }

    empty = xpc_array_create_empty();
    if (empty)
    {
      if (CFArrayGetCount(v15) < 1)
      {
        FigXPCRelease();
LABEL_13:
        xpc_dictionary_set_value(v5, "AltVideoLayoutTags", empty);
LABEL_14:
        FigXPCRelease();
LABEL_15:
        *a2 = v5;
        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }

        goto LABEL_17;
      }

      v17 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v15, v17);
        v18 = FigTagCollectionCopyAsXPCDictionary();
        if (!v18)
        {
          break;
        }

        v19 = v18;
        xpc_array_append_value(empty, v18);
        xpc_release(v19);
        if (++v17 >= CFArrayGetCount(v15))
        {
          goto LABEL_10;
        }
      }
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
LABEL_10:
    FigXPCRelease();
    if (!empty)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_17:
  v20 = 0;
LABEL_18:
  FigXPCRelease();
  return v20;
}

uint64_t FigAlternateCopyAsXPCObjectWithContext(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = 0;
  v5 = FigAlternateCopyAsXPCObject(a1, &v20);
  if (!v5)
  {
    if (a1)
    {
      v6 = *(CMBaseObjectGetDerivedStorage() + 176);
      v9 = v20;
      if (v6)
      {
        OUTLINED_FUNCTION_10_15(v6, v7, v8, "AltAudioGroupLocatorMap", "AltAudioGroupID", @"FASP_AudioGroups");
      }

      v10 = *(CMBaseObjectGetDerivedStorage() + 184);
      if (v10)
      {
        OUTLINED_FUNCTION_10_15(v10, v11, v12, "AltVideoGroupLocatorMap", "AltVideoGroupID", @"FASP_VideoGroups");
      }

      v13 = *(CMBaseObjectGetDerivedStorage() + 192);
      if (v13)
      {
        OUTLINED_FUNCTION_10_15(v13, v14, v15, "AltSubtitleGroupLocatorMap", "AltSubtitleGroupID", @"FASP_SubtitleGroups");
      }

      v16 = *(CMBaseObjectGetDerivedStorage() + 200);
      if (v16)
      {
        OUTLINED_FUNCTION_10_15(v16, v17, v18, "AltClosedCaptionGroupLocatorMap", "AltClosedCaptionGroupID", @"FASP_ClosedCaptionGroups");
      }
    }

    else
    {
      v9 = v20;
    }

    *a3 = v9;
  }

  FigXPCRelease();
  return v5;
}

void fa_serializeMediaGroupLocatorMapToXPCDict(const __CFDictionary *a1, void *a2, CFMutableDictionaryRef *a3, const char *a4, uint64_t a5, void *a6)
{
  theDict = 0;
  if (CFDictionaryGetCount(a1) < 1)
  {
    v12 = 0;
  }

  else
  {
    if (fa_ensureSerializationContextAndCopyMediaGroupForCache(a3, a6, &theDict))
    {
      v12 = 0;
      v14 = theDict;
    }

    else
    {
      Count = CFDictionaryGetCount(a1);
      v12 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(a1, 0, v12);
      Value = CFDictionaryGetValue(*v12, *MEMORY[0x1E6962B90]);
      v14 = theDict;
      if (Value)
      {
        v15 = Value;
        if (!theDict || !CFDictionaryContainsKey(theDict, Value))
        {
          v16 = FigStreamPlaylistParserCopySerializedRepresentationForMediaGroupAsXPCObject(v15, a1);
          if (v16)
          {
            xpc_dictionary_set_value(a2, a4, v16);
          }

          if (v14)
          {
            CFDictionarySetValue(v14, v15, *MEMORY[0x1E695E738]);
          }
        }

        FigXPCMessageSetCFString();
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  FigXPCRelease();

  free(v12);
}

uint64_t FigAlternateCopyArrayOfAlternatesAsXPCObject(const __CFArray *a1, void *a2)
{
  cf = 0;
  value = 0;
  empty = xpc_array_create_empty();
  if (empty)
  {
    if (!a1 || (Count = CFArrayGetCount(a1), Count < 1))
    {
LABEL_9:
      v13 = 0;
      *a2 = empty;
      goto LABEL_10;
    }

    v6 = Count;
    v7 = 0;
    while (1)
    {
      v8 = OUTLINED_FUNCTION_331_0();
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
      v11 = FigAlternateCopyAsXPCObjectWithContext(ValueAtIndex, &cf, &value);
      if (v11)
      {
        break;
      }

      v12 = value;
      xpc_array_append_value(empty, value);
      if (v12)
      {
        value = 0;
        xpc_release(v12);
      }

      if (v6 == ++v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, value, v17);
  }

  v13 = v11;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v13;
}

uint64_t FigAlternateCreateWithXPCObject(void *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v41 = 0;
  dict = 0;
  if (!a1)
  {
    v37 = 0;
    goto LABEL_33;
  }

  v5 = *MEMORY[0x1E695E480];
  if (_MergedGlobals_36 != -1)
  {
    dispatch_once_f(&_MergedGlobals_36, 0, RegisterFigAlternateType);
  }

  v6 = CMDerivedObjectCreate();
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = OUTLINED_FUNCTION_331_0();
    v6 = fa_deserializeAndCopyMediaGroupLocatorMap(v8, v9, v10, v11, v12, v13);
    if (!v6)
    {
      v14 = OUTLINED_FUNCTION_331_0();
      v6 = fa_deserializeAndCopyMediaGroupLocatorMap(v14, v15, v16, v17, v18, v19);
      if (!v6)
      {
        v20 = OUTLINED_FUNCTION_331_0();
        v6 = fa_deserializeAndCopyMediaGroupLocatorMap(v20, v21, v22, v23, v24, v25);
        if (!v6)
        {
          v26 = OUTLINED_FUNCTION_331_0();
          v6 = fa_deserializeAndCopyMediaGroupLocatorMap(v26, v27, v28, v29, v30, v31);
          if (!v6)
          {
            v6 = FigXPCMessageCopyCFURL();
            if (!v6)
            {
              v6 = FigXPCMessageCopyCFURL();
              if (!v6)
              {
                v6 = FigXPCMessageCopyCFString();
                if (!v6)
                {
                  v6 = FigXPCMessageCopyCFString();
                  if (!v6)
                  {
                    v6 = FigXPCMessageCopyCFString();
                    if (!v6)
                    {
                      v6 = FigXPCMessageCopyCFString();
                      if (!v6)
                      {
                        v6 = FigXPCMessageCopyCFString();
                        if (!v6)
                        {
                          v6 = FigXPCMessageCopyCFString();
                          if (!v6)
                          {
                            v6 = FigXPCMessageCopyCFString();
                            if (!v6)
                            {
                              v6 = FigXPCMessageCopyCFString();
                              if (!v6)
                              {
                                *(DerivedStorage + 8) = xpc_dictionary_get_int64(a1, "AlternateDeclaredPeakBitRate");
                                *(DerivedStorage + 48) = xpc_dictionary_get_int64(a1, "AltAverageBitRate");
                                *(DerivedStorage + 112) = xpc_dictionary_get_BOOL(a1, "AltAudioGroupIsSynthesized");
                                *(DerivedStorage + 113) = xpc_dictionary_get_BOOL(a1, "AltVideoGroupIsSynthesized");
                                *(DerivedStorage + 114) = xpc_dictionary_get_BOOL(a1, "AltSubtitlesGroupIsSynthesized");
                                *(DerivedStorage + 115) = xpc_dictionary_get_BOOL(a1, "AltClosedCaptionGroupIsSynthesized");
                                *(DerivedStorage + 24) = xpc_dictionary_get_BOOL(a1, "AltIFrameOnly");
                                *(DerivedStorage + 56) = xpc_dictionary_get_double(a1, "AltFrameRate");
                                *(DerivedStorage + 128) = xpc_dictionary_get_int64(a1, "AltHDCP");
                                *(DerivedStorage + 132) = xpc_dictionary_get_int64(a1, "AltVideoRange");
                                *(DerivedStorage + 64) = xpc_dictionary_get_double(a1, "AltRankingScore");
                                *(DerivedStorage + 136) = xpc_dictionary_get_uint64(a1, "AltAllowedCPC");
                                *(DerivedStorage + 116) = xpc_dictionary_get_BOOL(a1, "AltAllowedAOCP");
                                *(DerivedStorage + 28) = xpc_dictionary_get_int64(a1, "AltAlternateIndex");
                                *(DerivedStorage + 32) = xpc_dictionary_get_int64(a1, "AltZeroIndexedAlternateIndex");
                                FigXPCMessageCopyCFDictionary();
                                CGSizeMakeWithDictionaryRepresentation(0, (DerivedStorage + 160));
                                value = xpc_dictionary_get_value(a1, "AltVideoLayoutTags");
                                if (FigXPCArrayGetCount())
                                {
                                  Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
                                  if (Mutable)
                                  {
                                    if (xpc_array_get_count(value))
                                    {
                                      v34 = 0;
                                      while (1)
                                      {
                                        xpc_array_get_value(value, v34);
                                        if (FigTagCollectionCreateFromXPCDictionary())
                                        {
                                          break;
                                        }

                                        CFArrayAppendValue(Mutable, 0);
                                        if (++v34 >= xpc_array_get_count(value))
                                        {
                                          v35 = 0;
                                          goto LABEL_26;
                                        }
                                      }

                                      v35 = Mutable;
                                      Mutable = 0;
LABEL_26:
                                      if (v35)
                                      {
                                        CFRelease(v35);
                                      }
                                    }
                                  }

                                  else
                                  {
                                    fig_log_get_emitter();
                                    OUTLINED_FUNCTION_0_4();
                                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
                                  }
                                }

                                else
                                {
                                  Mutable = 0;
                                }

                                *(DerivedStorage + 144) = Mutable;
                                *(DerivedStorage + 117) = xpc_dictionary_get_BOOL(a1, "AltHasDeclaredVideoLayoutTags");
                                v36 = FigSimpleMutexCreate();
                                *(DerivedStorage + 488) = v36;
                                if (v36)
                                {
                                  v37 = 0;
                                  *(DerivedStorage + 216) = 0xFFEFFFFFFFFFFFFFLL;
                                  *(DerivedStorage + 228) = *(DerivedStorage + 8);
                                  *a3 = v41;
                                  v41 = 0;
                                  goto LABEL_31;
                                }

                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_0_4();
                                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", dict, cf, v41);
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
    }
  }

  v37 = v6;
LABEL_31:
  if (dict)
  {
    CFRelease(dict);
  }

LABEL_33:
  if (v41)
  {
    CFRelease(v41);
  }

  return v37;
}

uint64_t fa_deserializeAndCopyMediaGroupLocatorMap(void *a1, CFMutableDictionaryRef *a2, const char *a3, uint64_t a4, void *a5, void *key)
{
  value = 0;
  keya = 0;
  theDict = 0;
  v9 = fa_ensureSerializationContextAndCopyMediaGroupForCache(a2, key, &theDict);
  if (v9)
  {
    v15 = v9;
    v10 = theDict;
  }

  else
  {
    FigXPCMessageCopyCFString();
    v10 = theDict;
    if (keya)
    {
      if (theDict && CFDictionaryContainsKey(theDict, keya))
      {
        v11 = CFDictionaryGetValue(v10, keya);
        v12 = v11;
        if (v11)
        {
          CFRetain(v11);
        }

        goto LABEL_12;
      }

      v13 = xpc_dictionary_get_value(a1, a3);
      if (!v13)
      {
        v12 = 0;
LABEL_12:
        v15 = 0;
        *a5 = v12;
        value = 0;
        goto LABEL_13;
      }

      MediaGroupFromXPCDictionary = FigStreamPlaylistParserCreateMediaGroupFromXPCDictionary(v13, 0, &value);
      if (!MediaGroupFromXPCDictionary)
      {
        v12 = value;
        if (v10)
        {
          CFDictionarySetValue(v10, keya, value);
          v12 = value;
        }

        goto LABEL_12;
      }

      v15 = MediaGroupFromXPCDictionary;
    }

    else
    {
      v15 = 0;
    }
  }

LABEL_13:
  if (v10)
  {
    CFRelease(v10);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (keya)
  {
    CFRelease(keya);
  }

  return v15;
}

uint64_t FigAlternateCreateArrayOfAlternatesFromXPCObject(void *a1, __CFArray **a2)
{
  cf = 0;
  value = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    count = xpc_array_get_count(a1);
    if (count < 1)
    {
LABEL_8:
      v13 = 0;
      *a2 = Mutable;
      Mutable = 0;
      goto LABEL_9;
    }

    v6 = count;
    v7 = 0;
    while (1)
    {
      v8 = OUTLINED_FUNCTION_331_0();
      v10 = xpc_array_get_value(v8, v9);
      v11 = FigAlternateCreateWithXPCObject(v10, &cf, &value);
      if (v11)
      {
        break;
      }

      v12 = value;
      CFArrayAppendValue(Mutable, value);
      if (v12)
      {
        CFRelease(v12);
        value = 0;
      }

      if (v6 == ++v7)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, value, v17);
  }

  v13 = v11;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v13;
}

double FigAlternateHasAudioFormatID_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigAlternateGetMaxAudioSampleRate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigAlternateGetMaxAudioChannelCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigAlternateGetMaxPlayableAudioChannelCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigAlternateHasBinauralAudio_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigAlternateCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fa_ensureSerializationContextAndCopyMediaGroupForCache_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fa_ensureSerializationContextAndCopyMediaGroupForCache_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figPlaybackBoss_durationChanged(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v50 = *MEMORY[0x1E6960C70];
  v51 = *(MEMORY[0x1E6960C70] + 16);
  if (!*(a2 + 16))
  {
    *(a2 + 148) = 1;
    FigSimpleMutexLock();
    if (!*(a2 + 136) && *(a2 + 432) == 1886151033)
    {
      v3 = *(a2 + 120);
      if (v3)
      {
        EffectiveRate = CMTimebaseGetEffectiveRate(v3);
      }

      else
      {
        EffectiveRate = 1.0;
      }

      bossScheduleReachedEndCallbackForRate(a2, EffectiveRate);
    }

    FigSimpleMutexUnlock();
    bossGetContentDuration(a2, &v50);
    v5 = FigSimpleMutexLock();
    if (*(a2 + 848))
    {
      v14 = OUTLINED_FUNCTION_25_7(v5, v6, v7, v8, v9, v10, v11, v12, v43, v44, v45, v47, v48, v49, SBYTE2(v49), SBYTE3(v49), SHIDWORD(v49));
      if (os_log_type_enabled(v14, BYTE3(v49)))
      {
        v15 = HIDWORD(v49);
      }

      else
      {
        v15 = HIDWORD(v49) & 0xFFFFFFFE;
      }

      if (v15)
      {
        v52 = 136315394;
        v53 = "figPlaybackBoss_durationChanged";
        v54 = 2048;
        v55[0] = a2;
        LODWORD(v44) = 22;
        v43 = &v52;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v16, v17, v18, v19, v20, v14, BYTE3(v49), v21);
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a2 + 80) >= 1)
    {
      v22 = 0;
      *&v13 = 136315650;
      v46 = v13;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 72), v22);
        v24 = ValueAtIndex[23];
        if (v24)
        {
          if (*(ValueAtIndex + 192))
          {
            v56 = v50;
            v57 = v51;
            v25 = FigSnippetEditCursorServiceSetTrackDuration(v24, &v56);
            if (v25)
            {
              v33 = v25;
              v34 = OUTLINED_FUNCTION_25_7(v25, v26, v27, v28, v29, v30, v31, v32, v43, v44, v46, *(&v46 + 1), v48, v49, SBYTE2(v49), SBYTE3(v49), SHIDWORD(v49));
              v35 = os_log_type_enabled(v34, BYTE3(v49));
              if (OUTLINED_FUNCTION_28_1(v35))
              {
                v52 = v46;
                v53 = "figPlaybackBoss_durationChanged";
                v54 = 1024;
                LODWORD(v55[0]) = v22;
                WORD2(v55[0]) = 1024;
                *(v55 + 6) = v33;
                OUTLINED_FUNCTION_108();
                v42 = _os_log_send_and_compose_impl(v38, v39, v40, v41, &dword_1962D5000, v34, BYTE3(v49), "<<<< Boss >>>> %s: FigSnippetEditCursorServiceSetTrackDuration failed on track #%d: err = %d", &v52, 24, v46);
              }

              else
              {
                v42 = 0;
              }

              OUTLINED_FUNCTION_21_6(qword_1EAF16E70, v36, v37, v42, v42 != &v56);
            }
          }
        }

        ++v22;
      }

      while (v22 < *(a2 + 80));
    }

    FigSimpleMutexUnlock();
  }
}

void figPlaybackBoss_formatReaderPropertyChanged(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    *(a2 + 148) = 1;
  }
}

uint64_t bossBuildMentorForTrack(uint64_t a1, uint64_t a2, const __CFAllocator *a3, const __CFDictionary *a4)
{
  v369 = *MEMORY[0x1E69E9840];
  *(a2 + 368) = 0;
  v9 = a2 + 372;
  CMTimeMake(__src, 1, 10);
  *v9 = *__src;
  *(v9 + 16) = *&__src[16];
  Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a2 + 280) = Mutable;
  if (!Mutable)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v277, v281, v285);
    return v154;
  }

  v11 = MEMORY[0x1E6960C70];
  v12 = MEMORY[0x1E695E4D0];
  v293 = v4;
  if (a4)
  {
    rhs = **&MEMORY[0x1E6960C70];
    LODWORD(v347.value) = 0;
    v13 = CFDictionaryGetValue(a4, @"gdrCount");
    if (v13)
    {
      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 == CFNumberGetTypeID())
      {
        *(a2 + 240) = CFRetain(v14);
      }
    }

    v16 = CFDictionaryGetValue(a4, @"BossTrack_BonusAudioPrimingPacketCountAtStart");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CFNumberGetTypeID())
      {
        *(a2 + 248) = CFRetain(v17);
      }
    }

    v19 = *MEMORY[0x1E695E4C0];
    if (v19 == CFDictionaryGetValue(a4, @"BossTrack_TrimSampleBufferDurations"))
    {
      *(a2 + 272) = 1;
    }

    v20 = CFDictionaryGetValue(a4, @"BossTrack_SampleBufferCryptor");
    if (v20)
    {
      CFDictionarySetValue(*(a2 + 280), @"SampleBufferCryptor", v20);
    }

    if (FigCFDictionaryGetCMTimeIfPresent())
    {
      OUTLINED_FUNCTION_29();
      if (v127)
      {
        *(a2 + 288) = rhs;
      }
    }

    *(a2 + 312) = 1065353216;
    FigCFDictionaryGetFloat32IfPresent();
    if (FigCFDictionaryGetCMTimeIfPresent())
    {
      OUTLINED_FUNCTION_29();
      if (v127)
      {
        OUTLINED_FUNCTION_31_6((a2 + 316));
      }
    }

    if (FigCFDictionaryGetCMTimeIfPresent())
    {
      OUTLINED_FUNCTION_29();
      if (v127)
      {
        OUTLINED_FUNCTION_31_6((a2 + 340));
      }
    }

    v21 = *v12;
    if (v21 == CFDictionaryGetValue(a4, @"BossTrack_SendSampleReferenceSampleBuffers"))
    {
      *(a2 + 364) = 1;
    }

    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
    v23 = MEMORY[0x1E6960CC0];
    if (Int32IfPresent)
    {
      FigCFDictionarySetInt32();
    }

    if (v21 == CFDictionaryGetValue(a4, @"BossTrack_RoundUpStartPTS"))
    {
      *(a2 + 424) = 1;
    }

    if (v19 == CFDictionaryGetValue(a4, @"BossTrack_EnableForStepping"))
    {
      *(a2 + 89) = 0;
    }

    *__src = *v23;
    v24 = *(v23 + 2);
    *&__src[24] = *__src;
    *&__src[16] = v24;
    *&__src[40] = v24;
    *&__src[48] = *__src;
    *&__src[72] = *__src;
    *&__src[64] = v24;
    *&__src[88] = v24;
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    if (!FigCFDictionaryGetCMTimeIfPresent())
    {
      *&__src[48] = *__src;
      *&__src[64] = *&__src[16];
    }

    if (!FigCFDictionaryGetCMTimeIfPresent())
    {
      *&__src[72] = *&__src[24];
      *&__src[88] = *&__src[40];
    }

    *(a2 + 428) = *__src;
    *(a2 + 444) = *&__src[16];
    *(a2 + 452) = *&__src[24];
    *(a2 + 468) = *&__src[40];
    *(a2 + 476) = *&__src[48];
    *(a2 + 492) = *&__src[64];
    *(a2 + 516) = *&__src[88];
    *(a2 + 500) = *&__src[72];
    memcpy(__dst, __src, 0x60uLL);
    *(a2 + 425) = !FigVideoCompositionTimeWindowDurationIsZero(__dst);
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    Mutable = *(a2 + 280);
  }

  else
  {
    v21 = *MEMORY[0x1E695E4D0];
    v23 = MEMORY[0x1E6960CC0];
  }

  CFDictionarySetValue(Mutable, @"OptimizeSampleCursorIPCForPower", v21);
  v25 = *(a1 + 849);
  queueOut = 0;
  cf = 0;
  v342 = 0;
  v343 = 0;
  v341 = 0;
  OUTLINED_FUNCTION_35_5();
  if (v127)
  {
    v27 = @"AudioEarlyDumpBefore";
  }

  else
  {
    if (v26 != 1986618469)
    {
      goto LABEL_49;
    }

    v27 = @"VideoEarlyDumpBefore";
  }

  v28 = CFPreferencesCopyValue(v27, @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v28)
  {
    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 == CFStringGetTypeID())
    {
      v31 = CFStringCompare(v29, @"decode", 1uLL);
      CFRelease(v29);
      if (v31 == kCFCompareEqualTo)
      {
        FigSampleBufferConsumerCreateThatDiscards((a2 + 96));
        goto LABEL_47;
      }
    }

    else
    {
      CFRelease(v29);
    }
  }

LABEL_49:
  FigRenderPipelineGetFigBaseObject();
  v35 = v34;
  v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v36)
  {
    v36(v35, @"SourceSampleBufferQueue", a3, &cf);
  }

  FigRenderPipelineGetFigBaseObject();
  v38 = v37;
  v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v39)
  {
    v39(v38, @"SourceSampleBufferConsumer", a3, &v343);
  }

  if (!v343)
  {
    __dst[0] = *v11;
    memset(&rhs, 0, sizeof(rhs));
    CMTimeMake(&rhs, 1, 1);
    memset(&v347, 0, sizeof(v347));
    CMTimeMake(&v347, 1, 2);
    v61 = *(a2 + 72);
    if (v61 == 1936684398)
    {
      v62 = CMTimeMake(__src, 4, 1);
      OUTLINED_FUNCTION_14_13(v62, v63, v64, v65, v66, v67, v68, v69, v70, v277, v281, v285, v289, v4, v297, v302, v307, v311, *(&v311 + 1), v317, v321, value, value_8, v331, v335, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v340, v341, v342, v343, queueOut, cf, v346, v347.value, *&v347.timescale, v347.epoch, v348, v71, *__src);
      v72 = CMTimeMake(__src, 2, 1);
      v60 = OUTLINED_FUNCTION_34_7(v72, v73, v74, v75, v76, v77, v78, v79, v279, v283, v287, v291, v295, v299, v304, v309, v313, v316, v319, v323, valueb, value_8b, v333, v337, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v340, v341, v342, v343, queueOut, cf, v346, v347.value, *&v347.timescale, v347.epoch, v348, *__src);
      v61 = *(a2 + 72);
    }

    MEMORY[0x19A8D3660](&sReadModelSpecificPlaybackTuningOnce, bossReadModelSpecificPlaybackTuning, v60);
    if (sModelSpecificPlaybackTuning)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(sModelSpecificPlaybackTuning))
      {
        v285 = (v61 >> 8);
        v289 = v61;
        v277 = (v61 >> 24);
        v281 = (v61 << 8 >> 24);
        v81 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%c%c%c%c");
        v82 = CFDictionaryGetValue(sModelSpecificPlaybackTuning, v81);
        if (v82 || (v82 = CFDictionaryGetValue(sModelSpecificPlaybackTuning, @"Default")) != 0)
        {
          v83 = v82;
          v84 = CFDictionaryGetTypeID();
          if (v84 == CFGetTypeID(v83))
          {
            v85 = CFDictionaryGetValue(v83, @"SampleBufferQueueLowWaterLevelMilliseconds");
            v86 = CFDictionaryGetValue(v83, @"SampleBufferQueueHighWaterLevelMilliseconds");
            LODWORD(valuePtr.value) = 0;
            if (v85)
            {
              v87 = CFNumberGetTypeID();
              v127 = v87 == CFGetTypeID(v85);
              v23 = MEMORY[0x1E6960CC0];
              if (v127)
              {
                CFNumberGetValue(v85, kCFNumberIntType, &valuePtr);
                v88 = CMTimeMake(__src, SLODWORD(valuePtr.value), 1000);
                OUTLINED_FUNCTION_34_7(v88, v89, v90, v91, v92, v93, v94, v95, v277, v281, v285, v289, v293, v297, v302, v307, v311, *(&v311 + 1), v317, v321, value, value_8, v331, v335, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v340, v341, v342, v343, queueOut, cf, v346, v347.value, *&v347.timescale, v347.epoch, v348, *__src);
              }
            }

            if (v86)
            {
              v96 = CFNumberGetTypeID();
              if (v96 == CFGetTypeID(v86))
              {
                CFNumberGetValue(v86, kCFNumberIntType, &valuePtr);
                v97 = CMTimeMake(__src, SLODWORD(valuePtr.value), 1000);
                OUTLINED_FUNCTION_14_13(v97, v98, v99, v100, v101, v102, v103, v104, v105, v277, v281, v285, v289, v293, v297, v302, v307, v311, *(&v311 + 1), v317, v321, value, value_8, v331, v335, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v340, v341, v342, v343, queueOut, cf, v346, v347.value, *&v347.timescale, v347.epoch, v348, v106, *__src);
              }
            }
          }
        }

        if (v81)
        {
          CFRelease(v81);
        }
      }
    }

    if (FigCFDictionaryGetCMTimeIfPresent())
    {
      OUTLINED_FUNCTION_29();
      if (v127)
      {
        rhs = __dst[0];
      }
    }

    if (FigCFDictionaryGetCMTimeIfPresent())
    {
      OUTLINED_FUNCTION_29();
      if (v127)
      {
        OUTLINED_FUNCTION_32_6(v107, v108, v109, v110, v111, v112, v113, v114, v277, v281, v285, v289, v293, v297, v302, v307, v311, *(&v311 + 1), v317, v321, value, value_8, v331, v335, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v340, v341, v342, v343, queueOut, cf, v346, v347.value, *&v347.timescale, v347.epoch, v348, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v350, *v351, *&v351[8], *&v351[16], *&v351[24], v352, v353, *&__dst[0].value);
      }
    }

    *__src = 0;
    FigTrackReaderGetFigBaseObject();
    v116 = v115;
    v117 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v117)
    {
      v117(v116, @"HasSeamSamples", *MEMORY[0x1E695E480], __src);
      v118 = *__src;
      if (*__src)
      {
        CFRelease(*__src);
      }
    }

    else
    {
      v118 = 0;
    }

    if (v118 == v21)
    {
      memset(__src, 0, 24);
      CMTimeMake(__src, 1, 1);
      OUTLINED_FUNCTION_20_5(rhs.epoch, v277, v281, v285, v289, v293, v297, v302, v307, v311, v317, v321, rhs.value, *&rhs.timescale, v331, v335, *&valuePtr.value, valuePtr.epoch, v340, v341, v342, v343, queueOut, cf, v346, v347.value, *&v347.timescale, v347.epoch, v348, *__src, *&__src[16]);
      rhs = valuePtr;
      OUTLINED_FUNCTION_20_5(v347.epoch, v280, v284, v288, v292, v296, v300, v305, v310, v314, v320, v324, v347.value, *&v347.timescale, v334, v338, *&valuePtr.value, valuePtr.epoch, v340, v341, v342, v343, queueOut, cf, v346, v347.value, *&v347.timescale, v347.epoch, v348, *__src, *&__src[16]);
      v347 = valuePtr;
    }

    *__src = rhs;
    valuePtr = v347;
    FigSampleBufferConsumerCreateForBufferQueue(cf, __src, &valuePtr.value, &v343);
    v33 = v120;
    if (v120)
    {
      goto LABEL_91;
    }
  }

  if (!v25)
  {
    v33 = 0;
    v119 = cf;
    cf = 0;
    *(a2 + 96) = v343;
    *(a2 + 104) = v119;
    v343 = 0;
    goto LABEL_93;
  }

  memset(__src, 0, 24);
  CMTimeMake(__src, 6, 2);
  memset(__dst, 0, 24);
  CMTimeMake(__dst, 5, 2);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v32 = CMBufferQueueCreate(a3, 0, CallbacksForUnsortedSampleBuffers, &queueOut);
  if (!v32)
  {
    OUTLINED_FUNCTION_14_13(queueOut, v41, v42, v43, v44, v45, v46, v47, v48, v277, v281, v285, v289, v293, v297, v302, v307, v311, *(&v311 + 1), v317, v321, value, value_8, v331, v335, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v340, v341, v342, v343, queueOut, cf, v346, v347.value, *&v347.timescale, v347.epoch, v348, v49, *__src);
    OUTLINED_FUNCTION_32_6(v50, v51, v52, v53, v54, v55, v56, v57, v278, v282, v286, v290, v294, v298, v303, v308, v312, v315, v318, v322, valuea, value_8a, v332, v336, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v340, v341, v342, v343, queueOut, cf, v346, v347.value, *&v347.timescale, v347.epoch, v348, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v350, *v351, *&v351[8], *&v351[16], *&v351[24], v352, v353, *&__dst[0].value);
    FigSampleBufferConsumerCreateForBufferQueue(v58, &rhs.value, &v347.value, &v342);
    if (!v32)
    {
      v33 = FigMediaProcessorCreateForMakingDataReady(a3, queueOut, v343, *(a2 + 120), 0, &v341);
      if (!v33)
      {
        v59 = queueOut;
        queueOut = 0;
        *(a2 + 96) = v342;
        *(a2 + 104) = v59;
        *(a2 + 112) = v341;
        v341 = 0;
        v342 = 0;
      }

      goto LABEL_91;
    }
  }

LABEL_47:
  v33 = v32;
LABEL_91:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_93:
  if (queueOut)
  {
    CFRelease(queueOut);
  }

  if (v343)
  {
    CFRelease(v343);
  }

  if (v342)
  {
    CFRelease(v342);
  }

  if (v341)
  {
    CFRelease(v341);
  }

  if (v33)
  {
    return v33;
  }

  v121 = *(a1 + 129);
  rhs.value = 0;
  v347.value = 0;
  v306 = *v23;
  *__src = *v23;
  v301 = *(v23 + 2);
  *&__src[16] = v301;
  FigRenderPipelineGetFigBaseObject();
  v123 = v122;
  v124 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v124)
  {
    if (!v124(v123, @"PipelineLatency", a3, &v347))
    {
      if (v347.value)
      {
        CMTimeMakeFromDictionary(__src, v347.value);
        if (v347.value)
        {
          CFRelease(v347.value);
          v347.value = 0;
        }
      }
    }
  }

  if (*(a2 + 364))
  {
    FigSampleGeneratorCreateForFormatReaderProducingByteReferenceSampleBuffers(a3, *(a1 + 40), *(a2 + 32), *(a1 + 120), 0, &rhs);
    if (!v125)
    {
LABEL_109:
      v33 = 0;
      *(a2 + 40) = CFRetain(rhs.value);
      goto LABEL_110;
    }
  }

  else
  {
    v145 = *(a1 + 120);
    if (v121)
    {
      v146 = *(a2 + 32);
      v147 = *(a1 + 48);
      v148 = *(a1 + 56);
      __dst[0] = *__src;
      v125 = FigSampleGeneratorCreateForTrackReaderUsingScheduledIO(a3, v146, v147, v148, v145, __dst, 2, &rhs);
      if (!v125)
      {
        goto LABEL_109;
      }
    }

    else
    {
      FigSampleGeneratorCreateForFormatReaderUsingByteStreams(a3, *(a1 + 40), *(a2 + 32), *(a1 + 48), v145, 2, &rhs);
      if (!v125)
      {
        goto LABEL_109;
      }
    }
  }

  v33 = v125;
LABEL_110:
  if (rhs.value)
  {
    CFRelease(rhs.value);
  }

  if (v33)
  {
    return v33;
  }

  OUTLINED_FUNCTION_35_5();
  v127 = v127 || v126 == 1751216244;
  if (v127)
  {
    valuePtr.value = 0;
    LODWORD(cf) = 0;
    LODWORD(queueOut) = 0;
    if (!a4 || (v128 = CFDictionaryGetValue(a4, @"iTunesGaplessInfo")) == 0 || (v129 = CFGetTypeID(v128), v129 != CFDictionaryGetTypeID()))
    {
      v134 = 0;
      v135 = 1;
      goto LABEL_145;
    }

    v130 = FigCFDictionaryGetInt32IfPresent();
    Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
    v132 = FigCFDictionaryGetInt32IfPresent();
    v133 = FigCFDictionaryGetInt32IfPresent();
    v134 = 0;
    v135 = 1;
    if (v132 && v133)
    {
      if (FigCFDictionaryGetInt32IfPresent())
      {
        if (!Int64IfPresent)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v347.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value_low = LOBYTE(v347.value);
          v138 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v347.value);
          if (OUTLINED_FUNCTION_28_1(v138))
          {
            OUTLINED_FUNCTION_19_9();
            OUTLINED_FUNCTION_9_16();
            _os_log_send_and_compose_impl(v139, v140, v141, v142, v143, os_log_and_send_and_compose_flags_and_os_log_type, value_low, v144);
          }

          OUTLINED_FUNCTION_16();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_144;
      }

      if (*(a1 + 132))
      {
LABEL_144:
        v134 = (v130 | Int64IfPresent) != 0;
        v135 = Int64IfPresent == 0;
        goto LABEL_145;
      }

      LODWORD(rhs.value) = 0;
      LOBYTE(v347.value) = 0;
      v155 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v156 = LOBYTE(v347.value);
      v157 = os_log_type_enabled(v155, v347.value);
      if (OUTLINED_FUNCTION_109_0(v157))
      {
        OUTLINED_FUNCTION_19_9();
        OUTLINED_FUNCTION_9_16();
        _os_log_send_and_compose_impl(v158, v159, v160, v161, v162, v155, v156, v163);
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524(v272, v273, v274, v275, v276);
      v134 = 0;
    }

LABEL_145:
    AudioMentorNew(*(a2 + 48), *(a2 + 40), *(a2 + 96), *(a2 + 280), (a2 + 128));
    v33 = v164;
    if (v164 || !v134)
    {
LABEL_180:
      if (v33)
      {
        return v33;
      }

      v149 = *MEMORY[0x1E695E480];
      goto LABEL_182;
    }

    LODWORD(v343) = 0;
    memset(__dst, 0, 96);
    *__src = 0;
    v165 = *MEMORY[0x1E695E480];
    FigTrackReaderGetFigBaseObject();
    v167 = v166;
    v168 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v168)
    {
      v169 = v168(v167, @"TrackFormatDescriptionArray", v165, __src);
      if (!v169)
      {
        if (*__src)
        {
          if (CFArrayGetCount(*__src))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*__src, 0);
            if (ValueAtIndex)
            {
              v171 = CFRetain(ValueAtIndex);
            }

            else
            {
              v171 = 0;
            }

            v33 = 0;
            goto LABEL_156;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954513, "<<<< Boss >>>>", 7056, v293);
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954513, "<<<< Boss >>>>", 7053, v293);
        }
      }

      v33 = v169;
      v171 = 0;
    }

    else
    {
      v171 = 0;
      v33 = 4294954514;
    }

LABEL_156:
    if (*__src)
    {
      CFRelease(*__src);
    }

    if (!v33)
    {
      v172 = queueOut;
      CMTimeMake(__dst, 0, queueOut);
      if (v135)
      {
        *&__dst[1].value = *MEMORY[0x1E6960C88];
        v173 = *(MEMORY[0x1E6960C88] + 16);
      }

      else
      {
        CMTimeMake(__src, valuePtr.value, v172);
        *&__dst[1].value = *__src;
        v173 = *&__src[16];
      }

      __dst[1].epoch = v173;
      CMTimeMake(__src, 0, v172);
      __dst[2] = *__src;
      __dst[3] = __dst[1];
      v174 = cf;
      if (cf <= 0)
      {
        LODWORD(v347.value) = 0;
        LOBYTE(v342) = 0;
        v175 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v176 = v342;
        v177 = os_log_type_enabled(v175, v342);
        if (OUTLINED_FUNCTION_28_1(v177))
        {
          LODWORD(rhs.value) = 136315394;
          *(&rhs.value + 4) = "bossCreateAudioAndGaplessMentorForTrack";
          LOWORD(rhs.flags) = 1024;
          *(&rhs.flags + 2) = cf;
          OUTLINED_FUNCTION_13_8();
          OUTLINED_FUNCTION_9_16();
          v186 = _os_log_send_and_compose_impl(v180, v181, v182, v183, v184, v175, v176, v185);
        }

        else
        {
          v186 = 0;
        }

        v174 = 1;
        OUTLINED_FUNCTION_21_6(qword_1EAF16E70, v178, v179, v186, v186 != __src);
        LODWORD(cf) = 1;
      }

      if (v174 < 0)
      {
        LODWORD(v343) = 0 / v174;
        *(a2 + 256) = CFNumberCreate(v165, kCFNumberSInt32Type, &v343);
      }

      if (dword_1EAF16E78)
      {
        LODWORD(v347.value) = 0;
        LOBYTE(v342) = 0;
        v187 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v188 = v347.value;
        v189 = v342;
        if (os_log_type_enabled(v187, v342))
        {
          v190 = v188;
        }

        else
        {
          v190 = v188 & 0xFFFFFFFE;
        }

        if (v190)
        {
          LODWORD(rhs.value) = 136317186;
          *(&rhs.value + 4) = "bossCreateAudioAndGaplessMentorForTrack";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = a1;
          HIWORD(rhs.epoch) = 2082;
          v356 = a1 + 850;
          v357 = 2048;
          v358 = __dst[0].value;
          v359 = 2048;
          v360 = __dst[1].value;
          v361 = 2048;
          v362 = __dst[2].value;
          v363 = 2048;
          v364 = __dst[3].value;
          v365 = 1024;
          v366 = v343;
          v367 = 1024;
          v368 = 0;
          OUTLINED_FUNCTION_13_8();
          OUTLINED_FUNCTION_9_16();
          _os_log_send_and_compose_impl(v191, v192, v193, v194, v195, v187, v189, v196);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v33 = EditMentorNewWithChildAudioMentorAndSingleEditSegment(*(a2 + 128), &__dst[0].value, (a2 + 136));
      OUTLINED_FUNCTION_0_50();
      v197 = CFStringCreateWithFormat(v165, 0, @"GAPLESS (%c%c%c%c)");
      EditMentorSetDebugName(*(a2 + 136), v197);
      if (v197)
      {
        CFRelease(v197);
      }
    }

    if (v171)
    {
      CFRelease(v171);
    }

    goto LABEL_180;
  }

  *__src = 0;
  v149 = *MEMORY[0x1E695E480];
  FigRenderPipelineGetFigBaseObject();
  v151 = v150;
  v152 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v152)
  {
    v152(v151, @"SupportsSavingFrames", v149, __src);
  }

  v153 = *__src;
  if (*__src == v21)
  {
    CFDictionarySetValue(*(a2 + 280), @"SpeculativelySaveFrames", v21);
    v153 = *__src;
  }

  if (v153)
  {
    CFRelease(v153);
  }

  VideoMentorNew(*(a2 + 48), *(a2 + 40), *(a2 + 96), *(a2 + 280), (a2 + 144));
  if (v154)
  {
    return v154;
  }

LABEL_182:
  FigTrackReaderGetFigBaseObject();
  v199 = v198;
  v200 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v200)
  {
    v200(v199, @"EditCursorService", v149, a2 + 56);
  }

  v201 = *(a2 + 128);
  if (v201)
  {
    v202 = *(a2 + 56);
    if (*(a2 + 136))
    {
      v203 = EditMentorNewWithChildEditMentor(*(a2 + 136), v202, 0, (a2 + 152));
    }

    else
    {
      v203 = EditMentorNewWithChildAudioMentor(v201, v202, (a2 + 152));
    }
  }

  else
  {
    v203 = EditMentorNewWithChildVideoMentor(*(a2 + 144), *(a2 + 56), (a2 + 152));
  }

  v33 = v203;
  if (!v203)
  {
    OUTLINED_FUNCTION_0_50();
    v206 = OUTLINED_FUNCTION_29_7(v204, v205, @"PRIMARY (%c%c%c%c)");
    EditMentorSetDebugName(*(a2 + 152), v206);
    if (v206)
    {
      CFRelease(v206);
    }

    *(a2 + 216) = *(a2 + 152);
    FigTrackReaderGetFigBaseObject();
    v208 = v207;
    v209 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v209)
    {
      v209(v208, @"SecondaryEditCursorService", v149, a2 + 64);
    }

    v210 = *(a2 + 64);
    if (v210)
    {
      v154 = EditMentorNewWithChildEditMentor(*(a2 + 216), v210, 0, (a2 + 160));
      if (v154)
      {
        return v154;
      }

      OUTLINED_FUNCTION_0_50();
      v213 = OUTLINED_FUNCTION_29_7(v211, v212, @"SUPER (%c%c%c%c)");
      EditMentorSetDebugName(*(a2 + 160), v213);
      if (v213)
      {
        CFRelease(v213);
      }

      *(a2 + 216) = *(a2 + 160);
    }

    if ((*(a1 + 212) & 1) != 0 && (*(a1 + 236) & 1) != 0 && !*(a1 + 240) && (*(a1 + 224) & 0x8000000000000000) == 0)
    {
      v214 = *(a1 + 216);
      *__src = *(a1 + 200);
      *&__src[16] = v214;
      *&__src[32] = *(a1 + 232);
      v154 = FigLoopingEditCursorServiceCreate(v149, __src, (a2 + 168));
      if (v154)
      {
        return v154;
      }

      v154 = EditMentorNewWithChildEditMentor(*(a2 + 216), *(a2 + 168), 0, (a2 + 176));
      if (v154)
      {
        return v154;
      }

      OUTLINED_FUNCTION_0_50();
      v217 = OUTLINED_FUNCTION_29_7(v215, v216, @"LOOPING (%c%c%c%c)");
      EditMentorSetDebugName(*(a2 + 176), v217);
      if (v217)
      {
        CFRelease(v217);
      }

      *(a2 + 216) = *(a2 + 176);
    }

    if (!*(a2 + 128))
    {
      goto LABEL_214;
    }

    *__src = *MEMORY[0x1E6960C68];
    *&__src[16] = *(MEMORY[0x1E6960C68] + 16);
    v154 = FigSnippetEditCursorServiceCreate(v149, __src, (a2 + 184));
    if (!v154)
    {
      *(a2 + 192) = 0;
      v154 = EditMentorNewWithChildEditMentor(*(a2 + 216), *(a2 + 184), 1, (a2 + 200));
      if (!v154)
      {
        OUTLINED_FUNCTION_0_50();
        v220 = OUTLINED_FUNCTION_29_7(v218, v219, @"SNIPPET (%c%c%c%c)");
        EditMentorSetDebugName(*(a2 + 200), v220);
        if (v220)
        {
          CFRelease(v220);
        }

        *(a2 + 216) = *(a2 + 200);
LABEL_214:
        if (*(a2 + 144))
        {
          v221 = (a2 + 524);
          if (*(a2 + 536))
          {
            memset(&__dst[1], 0, 72);
            *&__dst[0].value = *v221;
            __dst[0].epoch = *(a2 + 540);
            v222 = *(a2 + 560);
          }

          else
          {
            v222 = *(a2 + 560);
            if ((v222 & 1) == 0)
            {
              goto LABEL_217;
            }

            memset(&__dst[1], 0, 72);
            *&__dst[0].value = v306;
            __dst[0].epoch = v301;
          }

          if (v222)
          {
            *__src = *(a2 + 548);
            *&__src[16] = *(a2 + 564);
            *&rhs.value = *v221;
            rhs.epoch = *(a2 + 540);
            CMTimeSubtract(&__dst[1], __src, &rhs);
          }

          else
          {
            __dst[1] = **&MEMORY[0x1E6960C88];
          }

          __dst[2] = __dst[0];
          __dst[3] = __dst[1];
          if (dword_1EAF16E78)
          {
            LODWORD(v347.value) = 0;
            LOBYTE(valuePtr.value) = 0;
            v223 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v224 = os_log_type_enabled(v223, valuePtr.value);
            if (OUTLINED_FUNCTION_115_1(v224))
            {
              LODWORD(rhs.value) = 136316418;
              *(&rhs.value + 4) = "bossBuildMentorForTrack";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = a1;
              HIWORD(rhs.epoch) = 2048;
              v356 = __dst[0].value;
              v357 = 2048;
              v358 = __dst[1].value;
              v359 = 2048;
              v360 = __dst[2].value;
              v361 = 2048;
              v362 = __dst[3].value;
              OUTLINED_FUNCTION_13_8();
              OUTLINED_FUNCTION_9_16();
              OUTLINED_FUNCTION_448(v225, v226, v227, v228, v229, v230, v231, v232);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414(v233, v234, v235, v236, v237);
          }

          v33 = EditMentorNewWithChildEditMentorAndSingleEditSegment(*(a2 + 216), &__dst[0].value, (a2 + 208));
          OUTLINED_FUNCTION_0_50();
          v240 = OUTLINED_FUNCTION_29_7(v238, v239, @"TRIM (%c%c%c%c)");
          EditMentorSetDebugName(*(a2 + 208), v240);
          if (v240)
          {
            CFRelease(v240);
          }

          *(a2 + 216) = *(a2 + 208);
          goto LABEL_230;
        }

LABEL_217:
        v33 = 0;
LABEL_230:
        if (dword_1EAF16E78)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v347.value) = 0;
          v241 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v242 = LOBYTE(v347.value);
          v243 = os_log_type_enabled(v241, v347.value);
          if (OUTLINED_FUNCTION_109_0(v243))
          {
            v244 = *(a2 + 24);
            v245 = *(a2 + 72);
            v246 = HIBYTE(v245);
            v247 = BYTE2(v245);
            v248 = BYTE1(v245);
            v249 = v245;
            if (*(a2 + 89))
            {
              v250 = "enableForStepping";
            }

            else
            {
              v250 = "disableForStepping";
            }

            v251 = *(a2 + 216);
            v252 = *(a2 + 200);
            v253 = *(a2 + 176);
            v254 = *(a2 + 152);
            v255 = *(a2 + 160);
            v256 = *(a2 + 128);
            v257 = *(a2 + 136);
            v258 = "audioMentor";
            if (!v256)
            {
              v258 = "videoMentor";
              v256 = *(a2 + 144);
            }

            *__src = 136319234;
            *&__src[4] = "bossBuildMentorForTrack";
            *&__src[12] = 2048;
            *&__src[14] = a1;
            *&__src[22] = 2082;
            *&__src[24] = a1 + 850;
            *&__src[32] = 1024;
            *&__src[34] = v244;
            *&__src[38] = 1024;
            *&__src[40] = v246;
            *&__src[44] = 1024;
            *&__src[46] = v247;
            *&__src[50] = 1024;
            *&__src[52] = v248;
            *&__src[56] = 1024;
            *&__src[58] = v249;
            *&__src[62] = 2082;
            *&__src[64] = v250;
            *&__src[72] = 2048;
            *&__src[74] = v251;
            *&__src[82] = 2048;
            *&__src[84] = v252;
            *&__src[92] = 2048;
            *&__src[94] = v253;
            *&__src[102] = 2048;
            v350 = v255;
            *v351 = 2048;
            *&v351[2] = v254;
            *&v351[10] = 2048;
            *&v351[12] = v257;
            *&v351[20] = 2082;
            *&v351[22] = v258;
            *&v351[30] = 2048;
            v352 = v256;
            LODWORD(v281) = 152;
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl(v259, v260, v261, v262, v263, v264, v242, v265, __src, v281);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_524(v266, v267, v268, v269, v270);
        }

        return v33;
      }
    }

    return v154;
  }

  return v33;
}

uint64_t bossAddNotificationListenersForTrack(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  result = FigNotificationCenterAddWeakListeners();
  if (!result)
  {
    *(a2 + 421) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterAddWeakListeners();
    if (!result)
    {
      *(a2 + 422) = 1;
      if (*(a2 + 112))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        result = FigNotificationCenterAddWeakListeners();
        if (!result)
        {
          *(a2 + 423) = 1;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t FigPlaybackBossSetVideoCompositionProcessor(uint64_t a1, const void *a2)
{
  if (*(a1 + 476) && *(a1 + 600))
  {
    bossRemoveVideoCompositionProcessorNotificationListenersForSeekForBoss(a1);
  }

  if (*(a1 + 600))
  {
    bossRemoveVideoCompositionProcessorNotificationListenersForPrerollForBoss(a1);
    v4 = *(a1 + 600);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 600) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 600);
  if (*(a1 + 476))
  {
    if (!v5)
    {
      return 0;
    }

    bossAddVideoCompositionProcessorNotificationListenersForSeekForBoss(a1);
    v5 = *(a1 + 600);
  }

  if (v5)
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    if (!OUTLINED_FUNCTION_38_4(DefaultLocalCenter, v7, &bossNotificationsFromVideoCompositionProcessorForPreroll, v8, *(a1 + 600), v9, *(a1 + 32)))
    {
      *(a1 + 789) = a2;
    }
  }

  return 0;
}

uint64_t bossAddVideoCompositionProcessorNotificationListenersForSeekForBoss(uint64_t a1)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  result = OUTLINED_FUNCTION_38_4(DefaultLocalCenter, v4, &bossNotificationsFromVideoCompositionProcessorForSeek, v5, *(a1 + 600), v6, *(a1 + 32));
  if (!result)
  {
    *(a1 + 790) = v1;
  }

  return result;
}

void figPlaybackBossPostSeekDidComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  if (dword_1EAF16E78)
  {
    v10 = OUTLINED_FUNCTION_126(qword_1EAF16E70, a2, a3, a4, a5, a6, a7, a8, v27, v28, v29, *v30, v30[2], 0, 0);
    v11 = os_log_type_enabled(v10, type);
    if (OUTLINED_FUNCTION_115_1(v11))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v20, v21, v22, v23, v24);
  }

  if (v9)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v26 = Mutable;
      if (!FigCFDictionarySetInt32() && (!v8 || !FigCFDictionarySetInt32()))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      CFRelease(v26);
    }
  }
}

void figPlaybackBoss_MentorPrerollComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    if (!*(v7 + 16))
    {
      FigSimpleMutexLock();
      FigSimpleMutexLock();
      FigSimpleMutexLock();
      if (*(v8 + 848))
      {
        OUTLINED_FUNCTION_26_9();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v10 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
        if (OUTLINED_FUNCTION_115_1(v10))
        {
          v44 = 136315394;
          v45 = "figPlaybackBoss_MentorPrerollComplete";
          v46 = 2048;
          v47 = v8;
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, v16, type, v17, &v44, 22);
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414(v18, v19, v20, v21, v22);
      }

      if (a5)
      {
        Value = CFDictionaryGetValue(a5, @"MentorPrerollComplete_Order");
        FigCFDictionaryGetInt32IfPresent();
      }

      else
      {
        Value = 0;
      }

      if (dword_1EAF16E78)
      {
        OUTLINED_FUNCTION_26_9();
        v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(v24, type))
        {
          v25 = v43;
        }

        else
        {
          v25 = v43 & 0xFFFFFFFE;
        }

        if (v25)
        {
          FigMentorPrerollCompletionReasonGetDescription(0);
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_448(v26, v27, v28, v29, v30, v31, v32, v33);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!*(v8 + 16) && *(a2 + 224) == Value && *(a2 + 237))
      {
        v34 = *(v8 + 544);
        if (v34)
        {
          CFRetain(*(v8 + 544));
        }

        *(a2 + 237) = 0;
        v35 = *(v8 + 80);
        if (v35 >= 1 && (v36 = *(v8 + 72)) != 0)
        {
          Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v36);
        }

        else
        {
          Copy = 0;
        }

        FigSimpleMutexUnlock();
        FigSimpleMutexUnlock();
        if (v35 < 1)
        {
LABEL_38:
          if (!*(v8 + 16))
          {
            *(v8 + 609) = 0;
            figPlaybackBoss_waitForCompletionOfPhase1AndStartPhase2(v8, v34);
            if (!v34)
            {
LABEL_41:
              FigSimpleMutexUnlock();
              if (Copy)
              {
                CFRelease(Copy);
              }

              goto LABEL_20;
            }

LABEL_40:
            CFRelease(v34);
            goto LABEL_41;
          }
        }

        else
        {
          v38 = 0;
          while (!*(CFArrayGetValueAtIndex(Copy, v38) + 237))
          {
            if (v35 == ++v38)
            {
              for (i = 0; i != v35; ++i)
              {
                v40 = *(CFArrayGetValueAtIndex(Copy, i) + 5);
                if (v40)
                {
                  v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                  if (v41)
                  {
                    v41(v40);
                  }
                }
              }

              goto LABEL_38;
            }
          }
        }

        if (!v34)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
    }

LABEL_20:
    CFRelease(v8);
  }
}

void figPlaybackBoss_waitForCompletionOfPhase1AndStartPhase2(uint64_t a1, uint64_t a2)
{
  v92 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    return;
  }

  FigSimpleMutexLock();
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    OUTLINED_FUNCTION_4_37();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v6, v7, v8, v9, v10, v11, v12, v87, v88, v89, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_109_0(v13))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v14, v15, v16, v17, v18, v19, v2, v20);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524(v21, v22, v23, v24, v25);
  }

  if (!FigCFEqual())
  {
    if (dword_1EAF16E78)
    {
      OUTLINED_FUNCTION_4_37();
      v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(v46, BYTE3(type)))
      {
        v47 = HIDWORD(type);
      }

      else
      {
        v47 = HIDWORD(type) & 0xFFFFFFFE;
      }

      if (v47)
      {
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v48, v49, v50, v51, v52, v46, BYTE3(type), v53);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_24;
  }

  if (*(a1 + 608))
  {
LABEL_24:
    FigSimpleMutexUnlock();
    goto LABEL_25;
  }

  v26 = *(a1 + 609);
  FigSimpleMutexUnlock();
  if (v26)
  {
LABEL_25:
    FigSimpleMutexUnlock();
    return;
  }

  if (*(a1 + 432) == 1886154860)
  {
    v27 = MEMORY[0x1E6960C70];
    bossStopTimebaseAndAudioContext(a1, 0, MEMORY[0x1E6960C70]);
    ++*(a1 + 728);
    OUTLINED_FUNCTION_29();
    if (v28)
    {
      v2 = a1 + 452;
      v29 = *(a1 + 120);
      time = *(a1 + 452);
      CMTimebaseSetTime(v29, &time);
      *(a1 + 452) = *v27;
      *(a1 + 468) = *(v27 + 16);
    }

    bossReplaceMainQueuesWithSideQueuesAndSwitchMentorsToMainQueues(a1);
  }

  FigSimpleMutexUnlock();
  if (dword_1EAF16E78)
  {
    OUTLINED_FUNCTION_4_37();
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v38 = OUTLINED_FUNCTION_116_0(v30, v31, v32, v33, v34, v35, v36, v37, v87, v88, v89, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_109_0(v38))
    {
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v39, v40, v41, v42, v43, v44, v2, v45);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v54, v55, v56, v57, v58);
  }

  if (!*(a1 + 16))
  {
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      OUTLINED_FUNCTION_4_37();
      v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v67 = OUTLINED_FUNCTION_116_0(v59, v60, v61, v62, v63, v64, v65, v66, v87, v88, v89, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (OUTLINED_FUNCTION_109_0(v67))
      {
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v68, v69, v70, v71, v72, v73, v2, v74);
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524(v75, v76, v77, v78, v79);
    }

    if (!FigCFEqual() || *(a1 + 80) < 1)
    {
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
LABEL_44:
      figPlaybackBossPrerollCompleted(a1, 0, a2);
      return;
    }

    v80 = 0;
    v81 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v80);
      v83 = ValueAtIndex;
      ValueAtIndex[238] = 1;
      v84 = *(ValueAtIndex + 10);
      if (v84 && (v85 = *(ValueAtIndex + 28), (v86 = *(*(CMBaseObjectGetVTable() + 16) + 56)) != 0) && !v86(v84, v85))
      {
        v81 = 1;
      }

      else
      {
        v83[238] = 0;
      }

      ++v80;
    }

    while (*(a1 + 80) > v80);
    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();
    if (!v81)
    {
      goto LABEL_44;
    }
  }
}

BOOL bossShouldExtendEndTime(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  valuePtr[0] = 0;
  v2 = *(a1 + 560);
  if (!v2)
  {
    return 0;
  }

  CFNumberGetValue(v2, kCFNumberSInt32Type, valuePtr);
  v3 = valuePtr[0] != -12935 && valuePtr[0] != -1001;
  v4 = valuePtr[0] == -12935 || valuePtr[0] == -1001;
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_109_0(v6))
    {
      v7 = "WILL";
      v22 = "bossShouldExtendEndTime";
      v23 = 2048;
      valuePtr[1] = 136316162;
      if (v3)
      {
        v7 = "will NOT";
      }

      v24 = a1;
      v25 = 2082;
      v26 = a1 + 850;
      v27 = 1024;
      v28 = valuePtr[0];
      v29 = 2080;
      v30 = v7;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v8, v9, v10, v11, v12, v13, 0, v14);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v15, v16, v17, v18, v19);
  }

  return v4;
}

void figPlaybackBoss_VideoCompositionProcessorPrerollComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *Value)
{
  if (a2 && !*(a2 + 16))
  {
    FigSimpleMutexLock();
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, @"VideoCompositionProcessor_Order");
    }

    FigSimpleMutexLock();
    if (dword_1EAF16E78)
    {
      v14 = OUTLINED_FUNCTION_126(qword_1EAF16E70, v7, v8, v9, v10, v11, v12, v13, v28, v29, v30, *v31, v31[2], 0, 0);
      if (os_log_type_enabled(v14, type))
      {
        v15 = v33;
      }

      else
      {
        v15 = v33 & 0xFFFFFFFE;
      }

      if (v15)
      {
        FigCFEqual();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v16, v17, v18, v19, v20, v21, type, v22);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v23, v24, v25, v26, v27);
    }

    if (!*(a2 + 16) && FigCFEqual() && *(a2 + 608))
    {
      *(a2 + 608) = 0;
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      figPlaybackBoss_waitForCompletionOfPhase1AndStartPhase2(a2, Value);
    }

    else
    {
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
    }
  }
}

double bossScheduleAdvanceForOverlappedPlaybackCallbackForTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    v10 = OUTLINED_FUNCTION_126(qword_1EAF16E70, a2, a3, a4, a5, a6, a7, a8, v25, v26, v27, *v28, v28[2], 0, 0);
    if (os_log_type_enabled(v10, type))
    {
      v11 = v30;
    }

    else
    {
      v11 = v30 & 0xFFFFFFFE;
    }

    if (v11)
    {
      OUTLINED_FUNCTION_36_5();
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 368))
  {
    goto LABEL_11;
  }

  v20 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 32));
  *(a1 + 368) = v20;
  if (!v20)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
  }

  dispatch_set_context(v20, a1);
  dispatch_source_set_event_handler_f(*(a1 + 368), figPlaybackBossAdvanceForOverlappedPlaybackWithContext);
  dispatch_resume(*(a1 + 368));
  if (!CMTimebaseAddTimerDispatchSource(*(a1 + 120), *(a1 + 368)))
  {
LABEL_11:
    v22 = *a2;
    *(a1 + 392) = *(a2 + 2);
    *(a1 + 376) = v22;
    OUTLINED_FUNCTION_36_5();
    CMTimebaseSetTimerDispatchSourceNextFireTime(v23, v24, &time, 1u);
  }

  return result;
}

uint64_t bossUsingEditCursorServiceArrayFindEditSegmentContainingTrackTime(uint64_t *a1, int a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v26 = 0;
  memset(__src, 0, sizeof(__src));
  memset(v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  v11 = *a1;
  *&time[0].start.value = *a3;
  time[0].start.epoch = *(a3 + 16);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
    v14 = 4294954514;
LABEL_15:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, v14, "<<<< Boss >>>>", 5409, v5);
    goto LABEL_16;
  }

  *&range[0].start.value = *&time[0].start.value;
  range[0].start.epoch = time[0].start.epoch;
  v13 = v12(v11, range, &v26);
  if (v13 == -12521)
  {
    goto LABEL_13;
  }

  v14 = v13;
  if (v13)
  {
    goto LABEL_15;
  }

  v15 = v26;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v16)
  {
    v14 = 4294954514;
    goto LABEL_20;
  }

  v14 = v16(v15, __src);
  if (v14)
  {
LABEL_20:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, v14, "<<<< Boss >>>>", 5415, v5);
    goto LABEL_16;
  }

  if (a4)
  {
    *a4 = 1;
  }

  OUTLINED_FUNCTION_29();
  if (!v17 || (*&time[0].start.value = *a3, time[0].start.epoch = *(a3 + 16), range[0] = __src[1], CMTimeClampToRange(v20, &time[0].start, range), range[0] = __src[1], time[0] = __src[0], CMTimeMapTimeFromRangeToRange(&v23, v20, range, time), a2 < 2))
  {
    if (a5)
    {
LABEL_12:
      memcpy(a5, __src, 0x60uLL);
    }

LABEL_13:
    v14 = 0;
    goto LABEL_16;
  }

  range[0].start = v23;
  EditSegmentContainingTrackTime = bossUsingEditCursorServiceArrayFindEditSegmentContainingTrackTime(a1 + 1, 1, range, 0, v24);
  if (!EditSegmentContainingTrackTime)
  {
    memcpy(time, __src, sizeof(time));
    memcpy(v20, v24, sizeof(v20));
    bossCombineEditSegments(time, v20, range);
    memcpy(__src, range, sizeof(__src));
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = EditSegmentContainingTrackTime;
LABEL_16:
  if (v26)
  {
    CFRelease(v26);
  }

  return v14;
}

uint64_t bossUsingEditCursorServiceArrayFindNextNonEmptyTrackTime(uint64_t *a1, int a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v52[0] = 0;
  memset(__src, 0, sizeof(__src));
  if (!a2)
  {
    v17 = 0;
    v26 = *a3;
    *(a6 + 16) = *(a3 + 2);
    *a6 = v26;
    goto LABEL_35;
  }

  v14 = *a1;
  OUTLINED_FUNCTION_33_7();
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v15)
  {
    v17 = 4294954514;
    goto LABEL_33;
  }

  *&range[0].start.value = *&time.start.value;
  range[0].start.epoch = time.start.epoch;
  v16 = v15(v14, range, v52);
  if (v16 == -12521)
  {
    v17 = 0;
    goto LABEL_35;
  }

  v17 = v16;
  if (v16)
  {
LABEL_33:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, LODWORD(__dst[0].value));
    goto LABEL_35;
  }

  v18 = v52[0];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v19)
  {
    goto LABEL_44;
  }

  v20 = v19(v18, __src);
  if (v20)
  {
LABEL_43:
    v17 = v20;
    goto LABEL_35;
  }

  if ((a4 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_6_27();
  if (OUTLINED_FUNCTION_27_6(__src[1].start.epoch, v33, v34, __dst[0].value, *&__dst[0].timescale, __dst[0].epoch, __dst[1].value, *&__dst[1].timescale, __dst[1].epoch, __dst[2].value, *&__dst[2].timescale, __dst[2].epoch, __dst[3].value, *&__dst[3].timescale, __dst[3].epoch, time2[0].start.value, *&time2[0].start.timescale, time2[0].start.epoch, time2[0].duration.value, *&time2[0].duration.timescale, time2[0].duration.epoch, time2[1].start.value, *&time2[1].start.timescale, time2[1].start.epoch, time2[1].duration.value, *&time2[1].duration.timescale, time2[1].duration.epoch, __src[1].start.value, *&__src[1].start.timescale, time.start.epoch, time.duration.value, *&time.duration.timescale, time.duration.epoch, v38, v39, v40, v41, v42, v43, v44, v45.value, *&v45.timescale, v45.epoch, range[0].start.value))
  {
    goto LABEL_9;
  }

  v28 = v52[0];
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v29)
  {
LABEL_44:
    v17 = 4294954514;
    goto LABEL_35;
  }

  v20 = v29(v28, 0xFFFFFFFFLL);
  if (v20)
  {
    goto LABEL_43;
  }

  v30 = v52[0];
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v31)
  {
    goto LABEL_44;
  }

  v20 = v31(v30, __src);
  if (v20)
  {
    goto LABEL_43;
  }

LABEL_9:
  HIDWORD(v34) = a2 - 1;
  while (1)
  {
    if (a4 < 1)
    {
      memset(&time, 0, 24);
      OUTLINED_FUNCTION_16_10();
      CMTimeRangeGetEnd(&time.start, range);
      OUTLINED_FUNCTION_6_27();
      *&time2[0].start.value = *&time.start.value;
      time2[0].start.epoch = time.start.epoch;
      if (CMTimeCompare(&range[0].start, &time2[0].start) >= 1)
      {
        *a3 = *&time.start.value;
        *(a3 + 2) = time.start.epoch;
      }

      if ((*(a5 + 12) & 0x1D) == 1)
      {
        OUTLINED_FUNCTION_6_27();
        *&time2[0].start.value = *a5;
        time2[0].start.epoch = *(a5 + 16);
        if (CMTimeCompare(&range[0].start, &time2[0].start) < 1)
        {
LABEL_50:
          v17 = 4294954776;
          goto LABEL_35;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_27();
      if ((OUTLINED_FUNCTION_27_6(__src[1].start.epoch, v33, v34, __dst[0].value, *&__dst[0].timescale, __dst[0].epoch, __dst[1].value, *&__dst[1].timescale, __dst[1].epoch, __dst[2].value, *&__dst[2].timescale, __dst[2].epoch, __dst[3].value, *&__dst[3].timescale, __dst[3].epoch, time2[0].start.value, *&time2[0].start.timescale, time2[0].start.epoch, time2[0].duration.value, *&time2[0].duration.timescale, time2[0].duration.epoch, time2[1].start.value, *&time2[1].start.timescale, time2[1].start.epoch, time2[1].duration.value, *&time2[1].duration.timescale, time2[1].duration.epoch, __src[1].start.value, *&__src[1].start.timescale, time.start.epoch, time.duration.value, *&time.duration.timescale, time.duration.epoch, v38, v39, v40, v41, v42, v43, v44, v45.value, *&v45.timescale, v45.epoch, range[0].start.value) & 0x80000000) != 0)
      {
        *a3 = *&__src[1].start.value;
        *(a3 + 2) = __src[1].start.epoch;
      }

      if ((*(a5 + 12) & 0x1D) == 1)
      {
        OUTLINED_FUNCTION_6_27();
        if ((OUTLINED_FUNCTION_27_6(*(a5 + 16), v33, v34, __dst[0].value, *&__dst[0].timescale, __dst[0].epoch, __dst[1].value, *&__dst[1].timescale, __dst[1].epoch, __dst[2].value, *&__dst[2].timescale, __dst[2].epoch, __dst[3].value, *&__dst[3].timescale, __dst[3].epoch, time2[0].start.value, *&time2[0].start.timescale, time2[0].start.epoch, time2[0].duration.value, *&time2[0].duration.timescale, time2[0].duration.epoch, time2[1].start.value, *&time2[1].start.timescale, time2[1].start.epoch, time2[1].duration.value, *&time2[1].duration.timescale, time2[1].duration.epoch, *a5, *(a5 + 8), time.start.epoch, time.duration.value, *&time.duration.timescale, time.duration.epoch, v38, v39, v40, v41, v42, v43, v44, v45.value, *&v45.timescale, v45.epoch, range[0].start.value) & 0x80000000) == 0)
        {
          goto LABEL_50;
        }
      }
    }

    if ((__src[0].start.flags & 0x1D) == 1)
    {
      break;
    }

LABEL_21:
    v21 = v52[0];
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v22)
    {
      goto LABEL_44;
    }

    v20 = v22(v21, a4);
    if (v20)
    {
      goto LABEL_43;
    }

    v23 = v52[0];
    v24 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v24)
    {
      goto LABEL_44;
    }

    v17 = v24(v23, __src);
    if (v17)
    {
      goto LABEL_35;
    }
  }

  memset(&start, 0, sizeof(start));
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_16_10();
  CMTimeClampToRange(&time2[0].start, &time.start, range);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_15_11();
  CMTimeMapTimeFromRangeToRange(&v50, &time2[0].start, range, &time);
  if (a4 < 1)
  {
    start = __src[0].start;
  }

  else
  {
    range[0] = __src[0];
    CMTimeRangeGetEnd(&start, range);
  }

  v47 = 0uLL;
  v48 = 0;
  memset(range, 0, sizeof(range));
  time.start = v50;
  time2[0].start = start;
  NextNonEmptyTrackTime = bossUsingEditCursorServiceArrayFindNextNonEmptyTrackTime(a1 + 1, SHIDWORD(v34), &time.start.value, a4, time2, &v47, range);
  v17 = NextNonEmptyTrackTime;
  if (NextNonEmptyTrackTime)
  {
    if (NextNonEmptyTrackTime != -12520)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  if (a6)
  {
    *&time2[0].start.value = v47;
    time2[0].start.epoch = v48;
    OUTLINED_FUNCTION_15_11();
    CMTimeClampToRange(&v45, &time2[0].start, &time);
    OUTLINED_FUNCTION_15_11();
    time2[0] = __src[1];
    CMTimeMapTimeFromRangeToRange(__dst, &v45, &time, time2);
    *a6 = __dst[0];
  }

  if (a7)
  {
    if (a2 < 2)
    {
      p_time = __src;
    }

    else
    {
      memcpy(time2, __src, sizeof(time2));
      memcpy(__dst, range, sizeof(__dst));
      bossCombineEditSegments(time2, __dst, &time);
      p_time = &time;
    }

    memcpy(a7, p_time, 0x60uLL);
  }

LABEL_35:
  if (v52[0])
  {
    CFRelease(v52[0]);
  }

  return v17;
}

uint64_t bossGetPresentationTimeAfterSteppingInNormalEditSegment(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, CMTime *a6)
{
  v28 = **&MEMORY[0x1E6960C70];
  v27 = v28;
  v26 = v28;
  *&v23.start.value = *a3;
  v23.start.epoch = *(a3 + 16);
  v11 = *(a2 + 64);
  *&range.start.value = *(a2 + 48);
  *&range.start.epoch = v11;
  *&range.duration.timescale = *(a2 + 80);
  CMTimeClampToRange(&v25, &v23.start, &range);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  v14 = *(a2 + 32);
  *&range.start.value = *(a2 + 48);
  *&range.start.epoch = v12;
  *&range.duration.timescale = v13;
  v15 = *(a2 + 16);
  *&v23.start.value = *a2;
  *&v23.start.epoch = v15;
  *&v23.duration.timescale = v14;
  CMTimeMapTimeFromRangeToRange(&v28, &v25, &range, &v23);
  range.start = v28;
  PresentationTimeAfterSampleCursorStepping = bossGetPresentationTimeAfterSampleCursorStepping(a1, &range.start, a4, a5, &v27);
  if (!PresentationTimeAfterSampleCursorStepping)
  {
    OUTLINED_FUNCTION_30_6();
    *&v23.start.value = *a2;
    v23.start.epoch = *(a2 + 16);
    if ((CMTimeCompare(&range.start, &v23.start) & 0x80000000) == 0)
    {
      v17 = *(a2 + 16);
      *&range.start.value = *a2;
      *&range.start.epoch = v17;
      *&range.duration.timescale = *(a2 + 32);
      CMTimeRangeGetEnd(&v23.start, &range);
      OUTLINED_FUNCTION_30_6();
      if (CMTimeCompare(&range.start, &v23.start) <= 0)
      {
        v18 = *(a2 + 16);
        *&range.start.value = *a2;
        *&range.start.epoch = v18;
        v19 = *(a2 + 48);
        *&range.duration.timescale = *(a2 + 32);
        *&v25.value = *&v27.value;
        v20 = *(a2 + 64);
        v21 = *(a2 + 80);
        *&v23.start.value = v19;
        *&v23.start.epoch = v20;
        v25.epoch = v27.epoch;
        *&v23.duration.timescale = v21;
        CMTimeMapTimeFromRangeToRange(&v26, &v25, &range, &v23);
      }
    }
  }

  *a6 = v26;
  return PresentationTimeAfterSampleCursorStepping;
}

uint64_t FigPlaybackBossSetTrackList_cold_1(void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return FigSimpleMutexUnlock();
}

opaqueCMBufferQueue *FigPlaybackBossPrerollAndScheduleGaplessStart_cold_1(CFArrayRef *a1, CMBufferRef *a2, CFIndex *a3)
{
  v6 = 0;
  do
  {
    result = *(CFArrayGetValueAtIndex(*a1, v6) + 13);
    if (result)
    {
      result = CMBufferQueueEnqueue(result, *a2);
    }

    ++v6;
  }

  while (*a3 > v6);
  return result;
}

void figPlaybackBoss_MentorStopping_cold_3()
{
  cf = 0;
  sampleBufferOut = 0;
  FigRenderPipelineGetFigBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v3 = *MEMORY[0x1E695E480];
    if (!v2(v1, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], &cf) && !CMSampleBufferCreateReady(v3, 0, 0, 0, 0, 0, 0, 0, &sampleBufferOut))
    {
      CMSetAttachment(sampleBufferOut, *MEMORY[0x1E6962DF8], *MEMORY[0x1E695E4D0], 1u);
      CMBufferQueueEnqueue(cf, sampleBufferOut);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }
}

uint64_t FigReportingStatsCreate(void *a1)
{
  OUTLINED_FUNCTION_4_5();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_4_5();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    return 4294955296;
  }

  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x200400FA965B2uLL);
  if (v2 && (v3 = OUTLINED_FUNCTION_383(), Mutable = CFDictionaryCreateMutable(v3, v4, v5, v6), (*v2 = Mutable) != 0) && (v8 = OUTLINED_FUNCTION_383(), v12 = CFDictionaryCreateMutable(v8, v9, v10, v11), (v2[1] = v12) != 0) && (v13 = OUTLINED_FUNCTION_383(), v17 = CFDictionaryCreateMutable(v13, v14, v15, v16), (v2[2] = v17) != 0) && (v18 = OUTLINED_FUNCTION_383(), v21 = CFDictionaryCreateMutable(v18, v19, v20, 0), (v2[5] = v21) != 0) && (v22 = OUTLINED_FUNCTION_383(), v26 = CFDictionaryCreateMutable(v22, v23, v24, v25), (v2[3] = v26) != 0) && (v27 = OUTLINED_FUNCTION_383(), v31 = CFDictionaryCreateMutable(v27, v28, v29, v30), (v2[4] = v31) != 0) && (v32 = OUTLINED_FUNCTION_383(), v35 = CFSetCreateMutable(v32, v33, v34), (v2[6] = v35) != 0))
  {
    result = 0;
    *a1 = v2;
  }

  else
  {
    FigReportingStatsDestroy(v2);
    return 4294955295;
  }

  return result;
}

void FigReportingStatsDestroy(uint64_t a1)
{
  if (a1)
  {
    FigReportingStatsResetAll(a1);
    if (*a1)
    {
      CFRelease(*a1);
    }

    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

uint64_t FigReportingStatsSetValue(uint64_t a1, void *key, uint64_t a3)
{
  v10 = 0;
  valuePtr = a3;
  if (key)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      if (CFSetContainsValue(v5, key))
      {
        return 0;
      }
    }
  }

  result = frs_validateAndGetStatsDataDictionary(a1, key, 0x1010u, &v10, 0);
  if (!result || result == -12005)
  {
    if (!v10)
    {
      return 4294955294;
    }

    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, &valuePtr);
    if (!v7)
    {
      return 4294955295;
    }

    v8 = v7;
    v9 = v10;
    CFDictionarySetValue(*(a1 + 40), key, 0x1010);
    CFDictionarySetValue(v9, key, v8);
    CFRelease(v8);
    return 0;
  }

  return result;
}

uint64_t frs_validateAndGetStatsDataDictionary(uint64_t a1, void *key, unsigned int a3, const __CFDictionary **a4, unsigned int *a5)
{
  v5 = 4294955296;
  if (a1 && key)
  {
    v7 = a1;
    v8 = *(a1 + 40);
    if (!v8 || !*v7 || !*(v7 + 16) || !*(v7 + 8) || !*(v7 + 24) || !*(v7 + 32))
    {
      return 4294955294;
    }

    v10 = CFDictionaryContainsKey(v8, key);
    if (v10)
    {
      Value = CFDictionaryGetValue(*(v7 + 40), key);
      v12 = Value;
      v5 = 0;
      if (a3 && Value != a3)
      {
        return 4294955287;
      }
    }

    else
    {
      v5 = 4294955291;
      v12 = a3;
      if (!a3)
      {
        return v5;
      }
    }

    switch(v12)
    {
      case 0x1010u:
        break;
      case 0x1011u:
        v7 += 8;
        break;
      case 0x1012u:
        v7 += 16;
        break;
      case 0x1013u:
        v7 += 24;
        break;
      case 0x1014u:
        v7 += 32;
        break;
      default:
        return 4294955287;
    }

    v13 = *v7;
    if (!v13)
    {
      return 4294955287;
    }

    if (v10 && !CFDictionaryContainsKey(v13, key))
    {
      return 4294955292;
    }

    else
    {
      if (a4)
      {
        *a4 = v13;
      }

      if (a5)
      {
        *a5 = v12;
      }
    }
  }

  return v5;
}

uint64_t FigReportingStatsAddToCountValue(uint64_t a1, void *key, uint64_t a3)
{
  theDict = 0;
  v16 = a3;
  valuePtr = 0;
  if (key)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      if (CFSetContainsValue(v6, key))
      {
        return 0;
      }
    }
  }

  StatsDataDictionary = frs_validateAndGetStatsDataDictionary(a1, key, 0x1013u, &theDict, 0);
  v8 = StatsDataDictionary;
  if (!StatsDataDictionary || StatsDataDictionary == -12005)
  {
    if (theDict)
    {
      if (StatsDataDictionary == -12005)
      {
        v8 = 0;
        goto LABEL_11;
      }

      Value = CFDictionaryGetValue(theDict, key);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
        v16 = valuePtr + a3;
LABEL_11:
        v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v16);
        if (!v10)
        {
          return 4294955295;
        }

        v11 = v10;
        v12 = theDict;
        CFDictionarySetValue(*(a1 + 40), key, 0x1013);
        CFDictionarySetValue(v12, key, v11);
        CFRelease(v11);
        return v8;
      }
    }

    return 4294955294;
  }

  return v8;
}

uint64_t FigReportingStatsSetCFTypeValue(uint64_t a1, void *key, const void *a3)
{
  v9 = 0;
  if (!a3)
  {
    return 0;
  }

  if (key)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      if (CFSetContainsValue(v6, key))
      {
        return 0;
      }
    }
  }

  result = frs_validateAndGetStatsDataDictionary(a1, key, 0x1012u, &v9, 0);
  if (!result || result == -12005)
  {
    v8 = v9;
    if (!v9)
    {
      return 4294955294;
    }

    CFDictionarySetValue(*(a1 + 40), key, 0x1012);
    CFDictionarySetValue(v8, key, a3);
    return 0;
  }

  return result;
}

uint64_t FigReportingStatsUpdateSampleValue(uint64_t a1, void *key, uint64_t a3)
{
  theDict = 0;
  if (key)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      if (CFSetContainsValue(v6, key))
      {
        return 0;
      }
    }
  }

  StatsDataDictionary = frs_validateAndGetStatsDataDictionary(a1, key, 0x1011u, &theDict, 0);
  v8 = StatsDataDictionary;
  if (!StatsDataDictionary || StatsDataDictionary == -12005)
  {
    if (!theDict)
    {
      return 4294955294;
    }

    if (StatsDataDictionary != -12005)
    {
      Value = CFDictionaryGetValue(theDict, key);
      FigReportingDataSampleValueUpdateValue(Value, a3);
      return v8;
    }

    if (_MergedGlobals_37 != -1)
    {
      dispatch_once_f(&_MergedGlobals_37, &qword_1ED4CA7A8, frsdv_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      FigUserCrashWithMessage("[FigReportingStats assert]: { refOut != NULL } : Failed to allocate CFRuntime instance");
    }

    v10 = FigSimpleMutexCreate();
    Instance[2] = v10;
    if (!v10)
    {
      FigUserCrashWithMessage("[FigReportingStats assert]: { storage->mutex != NULL } : Failed to set up FigSimpleMutex");
    }

    FigReportingDataSampleValueUpdateValue(Instance, a3);
    v11 = theDict;
    CFDictionarySetValue(*(a1 + 40), key, 0x1011);
    CFDictionarySetValue(v11, key, Instance);
    CFRelease(Instance);
    return 0;
  }

  return v8;
}

uint64_t FigReportingStatsResetArray(uint64_t a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    if (CFSetContainsValue(v4, theString))
    {
      return 0;
    }
  }

  ArrayNameFromKey = fsrm_createArrayNameFromKey(theString);
  if (!ArrayNameFromKey)
  {
    return 4294955295;
  }

  v6 = ArrayNameFromKey;
  CFSetRemoveValue(*(a1 + 48), ArrayNameFromKey);
  v7 = OUTLINED_FUNCTION_298();
  StatsDataDictionary = frs_validateAndGetStatsDataDictionary(v7, v8, 0x1014u, v9, v10);
  CFRelease(v6);
  return StatsDataDictionary;
}

void FigReportingStatsResetValue(uint64_t a1, void *key)
{
  theDict = 0;
  if (!key || (v4 = *(a1 + 56)) == 0 || !CFSetContainsValue(v4, key))
  {
    v5 = 0;
    if (!frs_validateAndGetStatsDataDictionary(a1, key, 0, &theDict, &v5))
    {
      if (theDict)
      {
        CFDictionaryRemoveValue(theDict, key);
        CFDictionaryRemoveValue(*(a1 + 40), key);
      }
    }
  }
}

void frs_resetAll(CFMutableDictionaryRef *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      CFDictionaryRemoveAllValues(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFDictionaryRemoveAllValues(v3);
    }

    if (*a1)
    {
      CFDictionaryRemoveAllValues(*a1);
    }

    v4 = a1[3];
    if (v4)
    {
      CFDictionaryRemoveAllValues(v4);
    }

    v5 = a1[2];
    if (v5)
    {
      CFDictionaryRemoveAllValues(v5);
    }

    v6 = a1[4];
    if (v6)
    {
      CFDictionaryRemoveAllValues(v6);
    }

    v7 = a1[6];
    if (v7)
    {

      CFSetRemoveAllValues(v7);
    }
  }
}

uint64_t FigReportingStatsCopyAsCFTypeAndSetInDictionary(uint64_t a1, void *a2, const void *a3)
{
  theDict = 0;
  v55 = 0;
  result = 4294955296;
  if (a2)
  {
    if (a3)
    {
      result = frs_validateAndGetStatsDataDictionary(a1, a2, 0, &theDict, &v55);
      if (!result)
      {
        if (theDict)
        {
          if (v55)
          {
            Value = CFDictionaryGetValue(theDict, a2);
            if (Value)
            {
              valuePtr = 0;
              v8 = Value;
              switch(v55)
              {
                case 0x1010u:
                case 0x1013u:
                  if (CFGetRetainCount(a2) <= 0)
                  {
                    v52 = CFGetRetainCount(a2);
                    FigUserCrashWithMessage("fra_createAndAddStatValue was passed a freed key %@ at address %p with ref count %ld. Refer to rdar://139674152", a2, a2, v52);
                  }

                  if (CFGetRetainCount(v8) <= 0)
                  {
                    v53 = CFGetRetainCount(v8);
                    FigUserCrashWithMessage("fra_createAndAddStatValue was passed a freed value %@ at address %p, with ref count %ld. Refer to rdar://139674152", v8, v8, v53);
                  }

                  if (CFGetRetainCount(a3) <= 0)
                  {
                    v54 = CFGetRetainCount(a3);
                    FigUserCrashWithMessage("fra_createAndAddStatValue was passed a freed dictionary %@ at address %p with ref count %ld. Refer to rdar://139674152", a3, a3, v54);
                  }

                  OUTLINED_FUNCTION_298();
                  FigCFDictionaryGetValue();
                  CFNumberGetValue(v8, kCFNumberLongLongType, &valuePtr);
                  OUTLINED_FUNCTION_298();
                  FigCFDictionarySetInt64();
                  break;
                case 0x1011u:
                  v9 = FigSimpleMutexLock();
                  v11 = OUTLINED_FUNCTION_4_38(v9, v10, @"%@%s");
                  if (v11)
                  {
                    v13 = v11;
                    OUTLINED_FUNCTION_5_33(v11, v12, v8[3]);
                    CFRelease(v13);
                  }

                  else
                  {
                    v18 = FigUserCrashWithMessage("[FigReportingStats assert]: { key != NULL } : Failed to allocate key name for %@%s", a2, "Last");
                    v14 = OUTLINED_FUNCTION_3_33(v18, v19, v8[3]);
                  }

                  v20 = OUTLINED_FUNCTION_4_38(v14, v15, @"%@%s");
                  if (v20)
                  {
                    v22 = v20;
                    OUTLINED_FUNCTION_5_33(v20, v21, v8[4]);
                    CFRelease(v22);
                  }

                  else
                  {
                    v25 = FigUserCrashWithMessage("[FigReportingStats assert]: { key != NULL } : Failed to allocate key name for %@%s", a2, "Min");
                    v23 = OUTLINED_FUNCTION_3_33(v25, v26, v8[4]);
                  }

                  v27 = OUTLINED_FUNCTION_4_38(v23, v24, @"%@%s");
                  if (v27)
                  {
                    v29 = v27;
                    OUTLINED_FUNCTION_5_33(v27, v28, v8[5]);
                    CFRelease(v29);
                  }

                  else
                  {
                    v32 = FigUserCrashWithMessage("[FigReportingStats assert]: { key != NULL } : Failed to allocate key name for %@%s", a2, "Max");
                    v30 = OUTLINED_FUNCTION_3_33(v32, v33, v8[5]);
                  }

                  v34 = OUTLINED_FUNCTION_4_38(v30, v31, @"%@%s");
                  if (v34)
                  {
                    v36 = v34;
                    OUTLINED_FUNCTION_5_33(v34, v35, v8[6]);
                    CFRelease(v36);
                  }

                  else
                  {
                    v39 = FigUserCrashWithMessage("[FigReportingStats assert]: { key != NULL } : Failed to allocate key name for %@%s", a2, "Mean");
                    v37 = OUTLINED_FUNCTION_3_33(v39, v40, v8[6]);
                  }

                  v41 = OUTLINED_FUNCTION_4_38(v37, v38, @"%@%s");
                  if (v41)
                  {
                    v43 = v41;
                    OUTLINED_FUNCTION_5_33(v41, v42, v8[7]);
                    CFRelease(v43);
                  }

                  else
                  {
                    v46 = FigUserCrashWithMessage("[FigReportingStats assert]: { key != NULL } : Failed to allocate key name for %@%s", a2, "_Var");
                    v44 = OUTLINED_FUNCTION_3_33(v46, v47, v8[7]);
                  }

                  v48 = OUTLINED_FUNCTION_4_38(v44, v45, @"%@%s");
                  if (v48)
                  {
                    v49 = v48;
                    FigCFDictionarySetInt64();
                    CFRelease(v49);
                  }

                  else
                  {
                    v50 = FigUserCrashWithMessage("[FigReportingStats assert]: { key != NULL } : Failed to allocate key name for %@%s", a2, "_Count");
                    OUTLINED_FUNCTION_3_33(v50, v51, v8[8]);
                  }

                  FigSimpleMutexUnlock();
                  break;
                case 0x1012u:
                  v16 = OUTLINED_FUNCTION_298();
                  CFDictionarySetValue(v16, v17, v8);
                  break;
                default:
                  return 0;
              }

              return 0;
            }

            else
            {
              return 4294955294;
            }
          }

          else
          {
            return 4294955292;
          }
        }

        else
        {
          return 4294955291;
        }
      }
    }
  }

  return result;
}

uint64_t FigReportingStatsCopyArrayAndSetInDictionary(uint64_t a1, const __CFString *a2, __CFDictionary *a3)
{
  cf = 0;
  value = 0;
  v3 = 4294955296;
  if (a2 && a3)
  {
    v6 = frs_copyArrayForKey(a1, a2, 0, &value, &cf);
    v7 = cf;
    if (!v6)
    {
      if (!cf)
      {
        goto LABEL_11;
      }

      if (!value)
      {
        goto LABEL_10;
      }

      if (CFSetGetValue(*(a1 + 48), value))
      {
        Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v7);
        if (!Copy)
        {
          v3 = 4294955295;
          goto LABEL_10;
        }

        v9 = Copy;
        CFDictionarySetValue(a3, value, Copy);
        CFRelease(v9);
      }

      v3 = 0;
LABEL_10:
      CFRelease(v7);
      goto LABEL_11;
    }

    v3 = v6;
    if (cf)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  if (value)
  {
    CFRelease(value);
  }

  return v3;
}

uint64_t frs_copyArrayForKey(uint64_t a1, CFStringRef theString, int a3, __CFString **a4, CFMutableArrayRef *a5)
{
  theDict = 0;
  ArrayNameFromKey = fsrm_createArrayNameFromKey(theString);
  if (!ArrayNameFromKey)
  {
    return 4294955295;
  }

  v10 = ArrayNameFromKey;
  StatsDataDictionary = frs_validateAndGetStatsDataDictionary(a1, ArrayNameFromKey, 0x1014u, &theDict, 0);
  v12 = StatsDataDictionary;
  if (!StatsDataDictionary || StatsDataDictionary == -12005)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, v10);
      v14 = Value;
      if (!a3 || Value)
      {
        goto LABEL_9;
      }

      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v14 = Mutable;
        v16 = theDict;
        CFDictionarySetValue(*(a1 + 40), v10, 0x1014);
        CFDictionarySetValue(v16, v10, v14);
        CFRelease(v14);
        v12 = 0;
LABEL_9:
        if (a4)
        {
          CFRetain(v10);
          *a4 = v10;
        }

        if (v14)
        {
          CFRetain(v14);
        }

        *a5 = v14;
        goto LABEL_14;
      }

      v12 = 4294955295;
    }

    else
    {
      v12 = 4294955294;
    }
  }

LABEL_14:
  CFRelease(v10);
  return v12;
}

uint64_t FigReportingStatsCopyAsCFTypeAndAppendToArray(uint64_t a1, __CFString *theString)
{
  cf = 0;
  theDict = 0;
  v12 = 0;
  v11 = 0;
  if (!theString)
  {
LABEL_25:
    StatsDataDictionary = 4294955296;
    goto LABEL_9;
  }

  v4 = *(a1 + 56);
  if (v4 && CFSetContainsValue(v4, theString))
  {
    StatsDataDictionary = 0;
  }

  else
  {
    v5 = frs_copyArrayForKey(a1, theString, 1, &cf, &v12);
    v6 = v12;
    if (!v5)
    {
      if (v12)
      {
        StatsDataDictionary = frs_validateAndGetStatsDataDictionary(a1, theString, 0, &theDict, &v11);
        if (!StatsDataDictionary)
        {
          if (theDict)
          {
            if (v11)
            {
              Value = CFDictionaryGetValue(theDict, theString);
              v10 = v11;
              valuePtr = 0;
              if (!Value)
              {
                v10 = 0;
              }

              switch(v10)
              {
                case 0x1010u:
                case 0x1013u:
                  CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
                  goto LABEL_21;
                case 0x1011u:
                  FigSimpleMutexLock();
                  FigSimpleMutexUnlock();
LABEL_21:
                  FigCFArrayAppendInt64();
                  goto LABEL_23;
                case 0x1012u:
                  CFArrayAppendValue(v6, Value);
LABEL_23:
                  CFSetSetValue(*(a1 + 48), cf);
                  StatsDataDictionary = 0;
                  break;
                default:
                  CFArrayAppendValue(v6, @"-");
                  StatsDataDictionary = 4294955291;
                  break;
              }

              goto LABEL_8;
            }

            StatsDataDictionary = 4294955292;
          }

          else
          {
            StatsDataDictionary = 4294955291;
          }
        }

        CFArrayAppendValue(v6, @"-");
LABEL_8:
        CFRelease(v6);
        goto LABEL_9;
      }

      goto LABEL_25;
    }

    StatsDataDictionary = v5;
    if (v12)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return StatsDataDictionary;
}

uint64_t frs_getIntValue(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v8 = 0;
  theDict = 0;
  if (!a4)
  {
    return 4294955296;
  }

  result = frs_validateAndGetStatsDataDictionary(a1, a2, a3, &theDict, 0);
  if (!result)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, a2);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberLongLongType, &v8);
        result = 0;
        *a4 = v8;
      }

      else
      {
        return 4294955292;
      }
    }

    else
    {
      return 4294955291;
    }
  }

  return result;
}

uint64_t FigReportingStatsGetCFTypeValue(uint64_t a1, void *a2, void *a3)
{
  theDict = 0;
  if (!a3)
  {
    return 4294955296;
  }

  result = frs_validateAndGetStatsDataDictionary(a1, a2, 0x1012u, &theDict, 0);
  if (!result)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, a2);
      result = 0;
      *a3 = Value;
    }

    else
    {
      return 4294955291;
    }
  }

  return result;
}

uint64_t FigReportingStatsGetArrayCount(uint64_t a1, const __CFString *a2, CFIndex *a3)
{
  theArray = 0;
  *a3 = 0;
  v4 = frs_copyArrayForKey(a1, a2, 0, 0, &theArray);
  v5 = theArray;
  if (!v4)
  {
    *a3 = CFArrayGetCount(theArray);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

void FigReportingStatsCopy(void *a1, const __CFDictionary **a2)
{
  if (a1 && a2)
  {
    v9 = a1;
    v10 = 0;
    v4 = a2[1];
    if (v4 && a1[1])
    {
      OUTLINED_FUNCTION_0_51(v4, 4113, v9, 0);
    }

    if (*a2 && *a1)
    {
      OUTLINED_FUNCTION_0_51(*a2, 4112, v9, v10);
    }

    v5 = a2[3];
    if (v5 && a1[3])
    {
      OUTLINED_FUNCTION_0_51(v5, 4115, v9, v10);
    }

    v6 = a2[2];
    if (v6 && a1[2])
    {
      OUTLINED_FUNCTION_0_51(v6, 4114, v9, v10);
    }

    v7 = a2[4];
    if (v7 && a1[4])
    {
      OUTLINED_FUNCTION_0_51(v7, 4116, v9, v10);
    }

    v8 = a2[7];
    if (v8)
    {
      frs_mergeFrozenKeys(a1, v8);
    }
  }
}

uint64_t FigReportingStatsFreezeKeys(uint64_t a1, CFSetRef theSet)
{
  if (!a1)
  {
    return 4294955296;
  }

  if (!theSet)
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    frs_mergeFrozenKeys(a1, theSet);
    return 0;
  }

  else
  {
    MutableCopy = CFSetCreateMutableCopy(*MEMORY[0x1E695E480], 0, theSet);
    result = 0;
    *(a1 + 56) = MutableCopy;
  }

  return result;
}

void frs_removeKeysSetApplier_cold_1(const __CFString *a1, CFMutableSetRef *a2)
{
  ArrayNameFromKey = fsrm_createArrayNameFromKey(a1);
  if (ArrayNameFromKey)
  {
    v4 = ArrayNameFromKey;
    CFSetRemoveValue(*a2, ArrayNameFromKey);

    CFRelease(v4);
  }
}

void FigTTMLDocumentWriterStateStartElement_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  CFRelease(a1);
}

uint64_t FigUserExperienceSetCurrentRank(const void *a1, int a2)
{
  if (a1)
  {
    CFRetain(a1);
    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v6[2] = __FigUserExperienceSetCurrentRank_block_invoke;
    v6[3] = &__block_descriptor_44_e5_v8__0l;
    v6[4] = a1;
    v7 = a2;
    dispatch_async(v4, v6);
  }

  return 0;
}

uint64_t FigUserExperienceReportRateChange(void *a1, int a2, int a3)
{
  if (a1)
  {
    CFRetain(a1);
    v6 = a1[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __FigUserExperienceReportRateChange_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a1;
    block[5] = a1;
    v9 = a3;
    v10 = a2;
    dispatch_async(v6, block);
  }

  return 0;
}

id *fus_completeVariantGuts(id *result, int a2, unint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = result[6] + result[12];
    result = [result[3] addStreamTierSwitch:(result[11] - v5) / 1000000000.0 end:(a3 - v5) / 1000000000.0 quality:a2 / 100.0 weight:1.0];
    v4[11] = a3;
  }

  return result;
}

uint64_t FigUserExperienceReportStall(const void *a1)
{
  if (a1)
  {
    CFRetain(a1);
    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v4[2] = __FigUserExperienceReportStall_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = a1;
    v4[5] = a1;
    dispatch_async(v2, v4);
  }

  return 0;
}

uint64_t FigUserExperienceReportVariantCompleted(const void *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    CFRetain(a1);
    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v8[2] = __FigUserExperienceReportVariantCompleted_block_invoke;
    v8[3] = &__block_descriptor_60_e5_v8__0l;
    v9 = a2;
    v8[4] = a1;
    v8[5] = a1;
    v8[6] = a3;
    dispatch_async(v6, v8);
  }

  return 0;
}

void __FigUserExperienceReportVariantCompleted_block_invoke(uint64_t a1)
{
  fus_completeVariantGuts(*(a1 + 32), *(a1 + 56), *(*(a1 + 40) + 88) + 1000000 * *(a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigUserExperienceReportSessionEnd(const void *a1)
{
  if (a1)
  {
    CFRetain(a1);
    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v4[2] = __FigUserExperienceReportSessionEnd_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = a1;
    v4[5] = a1;
    dispatch_async(v2, v4);
  }

  return 0;
}

CFMutableDictionaryRef FigGaplessInfoCreateDefaultEnhanced(const opaqueCMFormatDescription *a1)
{
  if (!a1)
  {
    return 0;
  }

  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  if (!MostCompatibleFormat)
  {
    return 0;
  }

  DefaultNumAudioPrimingFrames = figi_GetDefaultNumAudioPrimingFrames(MostCompatibleFormat->mASBD.mFormatID);
  if (!DefaultNumAudioPrimingFrames)
  {
    return 0;
  }

  v4 = MEMORY[0x1E6960C70];

  return FigGaplessInfoCreateEnhanced_CorrectingWithUneditedDuration(a1, v4, DefaultNumAudioPrimingFrames, 0, 0);
}

double FigGaplessInfoGetGaplessSourceTimeRange(const opaqueCMFormatDescription *a1, CFTypeRef cf)
{
  v2 = *(MEMORY[0x1E6960C98] + 16);
  v22 = *MEMORY[0x1E6960C98];
  *v23 = v2;
  *&v23[16] = *(MEMORY[0x1E6960C98] + 32);
  *timescale = 0;
  if (cf)
  {
    v3 = cf;
    v4 = 0;
  }

  else
  {
    DefaultEnhanced = FigGaplessInfoCreateDefaultEnhanced(a1);
    v3 = DefaultEnhanced;
    v4 = DefaultEnhanced;
    if (!DefaultEnhanced)
    {
      goto LABEL_12;
    }
  }

  v5 = CFGetTypeID(v3);
  DefaultEnhanced = CFDictionaryGetTypeID();
  if (v5 == DefaultEnhanced)
  {
    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
    DefaultEnhanced = FigCFDictionaryGetInt32IfPresent();
    if (Int32IfPresent)
    {
      if (DefaultEnhanced)
      {
        HIDWORD(v20) = 0;
        if (FigCFDictionaryGetInt32IfPresent())
        {
          CMTimeMake(&v22, SHIDWORD(v20), timescale[0]);
        }

        value = 0;
        DefaultEnhanced = FigCFDictionaryGetInt64IfPresent();
        if (DefaultEnhanced)
        {
          DefaultEnhanced = CMTimeMake(&v18, value, timescale[0]);
          v14 = *&v18.value;
          *&v23[8] = v18;
        }
      }
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_12:
  *&result = OUTLINED_FUNCTION_1_45(DefaultEnhanced, v7, v8, v9, v10, v11, v12, v13, v14, v18.value, *&v18.timescale, v18.epoch, value, v20, *timescale, v22, *v23, v15).n128_u64[0];
  return result;
}

uint64_t FigGaplessInfoGetTrackGaplessSourceTimeRange(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&v43.start.value = *MEMORY[0x1E6960C98];
  *&v43.start.epoch = v4;
  *&v43.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v5 = *&v43.duration.timescale;
  HIDWORD(v42) = 0;
  v40 = 0;
  cf = 0;
  v38 = 0;
  theArray = 0;
  *a3 = *&v43.start.value;
  a3[1] = v4;
  a3[2] = v5;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v13)
  {
    goto LABEL_17;
  }

  v16 = v13(a2, 0, &v42 + 4);
  if (v16)
  {
    goto LABEL_39;
  }

  if (HIDWORD(v42) != 1936684398)
  {
    goto LABEL_32;
  }

  v17 = *MEMORY[0x1E695E480];
  FigTrackReaderGetFigBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v20(v19, @"EditsExcludePrimingAndRemainderDuration", v17, &cf);
    v21 = cf;
  }

  else
  {
    v21 = 0;
  }

  if (v21 != *MEMORY[0x1E695E4D0])
  {
    FigTrackReaderGetFigBaseObject();
    v23 = v22;
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24 && !v24(v23, @"GaplessSourceTimeRange", v17, &v40))
    {
      CMTimeRangeMakeFromDictionary(&v43, v40);
      goto LABEL_32;
    }

    FigTrackReaderGetFigBaseObject();
    v26 = v25;
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v27)
    {
      v16 = v27(v26, @"TrackFormatDescriptionArray", v17, &theArray);
      if (!v16)
      {
        if (theArray && CFArrayGetCount(theArray) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
          FigFormatReaderGetFigBaseObject();
          v30 = v29;
          v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v31)
          {
            v36 = v31(v30, @"iTunesGaplessInfo", v17, &v38);
            v32 = 0;
            if (!v36 && v38)
            {
              v32 = FigGaplessInfoCopyAndEnhance_CorrectingWithTrackReader(ValueAtIndex, a2, v38);
            }
          }

          else
          {
            v32 = 0;
          }

          v14.n128_f64[0] = FigGaplessInfoGetGaplessSourceTimeRange(ValueAtIndex, v32);
          goto LABEL_33;
        }

LABEL_32:
        v32 = 0;
LABEL_33:
        v33 = 0;
        goto LABEL_18;
      }

LABEL_39:
      v33 = v16;
      v32 = 0;
LABEL_18:
      v21 = cf;
      if (!cf)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_17:
    v32 = 0;
    v33 = 4294954514;
    goto LABEL_18;
  }

  v32 = 0;
  v33 = 0;
  if (v21)
  {
LABEL_19:
    CFRelease(v21);
  }

LABEL_20:
  if (v40)
  {
    CFRelease(v40);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v34 = v38;
  if (v38)
  {
    CFRelease(v38);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (!v33)
  {
    OUTLINED_FUNCTION_1_45(v34, v6, v7, v8, v9, v10, v11, v12, v14, v37, v38, theArray, v40, cf, v42, *&v43.start.value, *&v43.start.epoch, v15);
  }

  return v33;
}

uint64_t FigGaplessInfoGetTrackDuration(uint64_t a1, uint64_t a2, int a3, CMTime *a4)
{
  v22 = 0;
  duration = **&MEMORY[0x1E6960CC0];
  v5 = FigTrackReaderCreateSegmentData(a1, a2, a3, &v22);
  v6 = v22;
  if (!v5)
  {
    if (v22)
    {
      v7 = CFGetTypeID(v22);
      if (v7 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(v6);
        v9 = Length - 96;
        if (Length >= 0x60)
        {
          v10 = Length;
          BytePtr = CFDataGetBytePtr(v6);
          v12 = *(BytePtr + 4);
          *&v20.start.value = *(BytePtr + 3);
          *&v20.start.epoch = v12;
          *&v20.duration.timescale = *(BytePtr + 5);
          if (v9 >= 0x60)
          {
            v13 = &BytePtr[96 * (v10 / 0x60)];
            v14 = *(BytePtr + 4);
            *&range.start.value = *(BytePtr + 3);
            *&range.start.epoch = v14;
            *&range.duration.timescale = *(BytePtr + 5);
            v15 = *(v13 - 3);
            v16 = *(v13 - 1);
            *&v18.start.epoch = *(v13 - 2);
            *&v18.duration.timescale = v16;
            *&v18.start.value = v15;
            CMTimeRangeGetUnion(&v20, &range, &v18);
          }

          duration = v20.duration;
        }
      }
    }

    *a4 = duration;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

double FigGaplessInfoGetDefaultAudioPrimingFrameCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigGaplessInfoGetDefaultAudioPrimingDuration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigGaplessInfoGetDefaultAudioPrimingDuration_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigTrackReaderCreateSegmentData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTrackReaderCreateSegmentData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigGaplessInfoAdjustEditSegmentAccordingtoGaplessAudioTimeRange_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigGaplessInfoCreateSegmentDataForTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigGaplessInfoCreateSegmentDataForTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferConsumerCreateForFrameSilo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferConsumerCreateForFrameSilo_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figAudioQueueRenderPipelineSetRateAndAnchorTime()
{
  OUTLINED_FUNCTION_10_17();
  v114 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v139 = *MEMORY[0x1E69E9840];
  *(&v117 + 1) = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_9_17(DerivedStorage);
  if (dword_1EAF16ED8)
  {
    LODWORD(value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*v0 && !*(v0 + 66))
  {
    if (v9 == 0.0)
    {
      OUTLINED_FUNCTION_2_45();
      faqrp_stopTimebaseAndAudioQueue(v11, &time);
      *(v0 + 101) = 1;
      faqrp_updateTimePitchBypass(v11);
    }

    else
    {
      *(v0 + 101) = v9 == 1.0;
      faqrp_updateTimePitchBypass(v11);
      if (*(v0 + 64))
      {
        faqrp_stopTimebaseAndAudioQueue(v11, MEMORY[0x1E6960C70]);
      }

      FigAudioQueueSetParameter(*(v0 + 40), 2, v7);
      *(v0 + 160) = v7;
      if (*(v0 + 64))
      {
        v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &v117 + 4);
        FigAudioQueueSetProperty(*(v0 + 40), @"TimebaseRate", v14);
        CFRelease(v14);
        CMTimebaseSetRate(*(v0 + 112), *(&v117 + 1));
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_2_45();
      faqrp_primeAudioChain(v11, &time, v9);
      value = *v5;
      flags = *(v5 + 12);
      timescale = *(v5 + 8);
      epoch = *(v5 + 16);
      *type = *v3;
      v17 = *(v3 + 12);
      LODWORD(v123) = *(v3 + 8);
      v18 = *(v3 + 16);
      v19 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      if (*v19)
      {
        goto LABEL_4;
      }

      v26 = v19;
      if ((flags & 0x1D) != 1)
      {
        v19 = CMTimebaseGetTime(&time, *(v19 + 112));
        value = time.value;
        flags = time.flags;
        timescale = time.timescale;
        epoch = time.epoch;
      }

      OUTLINED_FUNCTION_0_53(v19, *(v26 + 112), v20, v21, v22, v23, v24, v25, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, lhs.value, *&lhs.timescale, lhs.epoch, v119, v120, cf, *type, v123, value);
      OUTLINED_FUNCTION_6_28();
      v112 = v18;
      rhs.epoch = v18;
      if (faqrp_createPendingStartInfo(v11, v27, &time.value, &rhs.value, 1, &cf, v9))
      {
        v29 = cf;
        if (!cf)
        {
          goto LABEL_4;
        }

        goto LABEL_50;
      }

      FigSimpleMutexLock();
      v28 = *(v26 + 120);
      v29 = cf;
      *(v26 + 120) = cf;
      if (v29)
      {
        CFRetain(v29);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      HIDWORD(v103) = v17 & 0x1D;
      *(v26 + 109) = HIDWORD(v103) == 1;
      FigSimpleMutexUnlock();
      faqrp_updateFAQDiscardSampleBuffersProperty(v11, *(v26 + 109));
      *(v26 + 64) = 1;
      if (dword_1EAF16ED8)
      {
        v106 = v29;
        v109 = epoch;
        HIDWORD(v120) = 0;
        BYTE3(v120) = 0;
        v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v38 = HIDWORD(v120);
        v39 = BYTE3(v120);
        v100 = v37;
        v40 = os_log_type_enabled(v37, BYTE3(v120));
        if (v40)
        {
          v48 = v38;
        }

        else
        {
          v48 = v38 & 0xFFFFFFFE;
        }

        if (v48)
        {
          if (v11)
          {
            v40 = CMBaseObjectGetDerivedStorage();
            v49 = (v40 + 164);
          }

          else
          {
            v49 = "";
          }

          v50 = *(v26 + 112);
          OUTLINED_FUNCTION_0_53(v40, v41, v42, v43, v44, v45, v46, v47, p_rhs, v94, v49, v100, v103, v106, v109, v112, v115, v117, lhs.value, *&lhs.timescale, lhs.epoch, v119, v120, cf, *type, v123, value);
          time.epoch = v109;
          Seconds = CMTimeGetSeconds(&time);
          time.value = *type;
          OUTLINED_FUNCTION_5_34();
          time.epoch = v112;
          v52 = CMTimeGetSeconds(&time);
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(&rhs, HostTimeClock);
          lhs.value = *type;
          lhs.timescale = v123;
          lhs.flags = v17;
          lhs.epoch = v112;
          CMTimeSubtract(&time, &lhs, &rhs);
          CMTimeGetSeconds(&time);
          LODWORD(rhs.value) = 136316674;
          OUTLINED_FUNCTION_3_34();
          v127 = v97;
          v128 = v54;
          v129 = v50;
          v130 = v54;
          v131 = Seconds;
          v132 = v54;
          v133 = v52;
          v134 = v54;
          v135 = v55;
          LODWORD(v94) = 72;
          p_rhs = &rhs;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v56, v57, v58, v59, v60, v100, v39, v61);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v29 = v106;
        epoch = v109;
      }

      OUTLINED_FUNCTION_0_53(*(v26 + 40), v30, v31, v32, v33, v34, v35, v36, p_rhs, v94, v97, v100, v103, v106, v109, v112, v115, v117, lhs.value, *&lhs.timescale, lhs.epoch, v119, v120, cf, *type, v123, value);
      OUTLINED_FUNCTION_6_28();
      rhs.epoch = v113;
      if (FigAudioQueueStart2(v62, &time, &rhs, faqrp_startTimebaseAtAnchorAudioTimeStamp, v29, 0, v9))
      {
        *(v26 + 64) = 0;
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v95, v98);
        if (!v29)
        {
          goto LABEL_4;
        }

        goto LABEL_50;
      }

      if (HIDWORD(v104) == 1)
      {
        v63 = CMTimebaseCopySource(*(v26 + 112));
        memset(&lhs, 0, sizeof(lhs));
        CMClockGetHostTimeClock();
        time.value = *type;
        OUTLINED_FUNCTION_5_34();
        time.epoch = v113;
        CMSyncConvertTime(&lhs, &time, v64, v63);
        if (v63)
        {
          CFRelease(v63);
        }

        if (dword_1EAF16ED8)
        {
          v107 = v29;
          v110 = epoch;
          HIDWORD(v120) = 0;
          BYTE3(v120) = 0;
          v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v73 = HIDWORD(v120);
          v74 = BYTE3(v120);
          if (os_log_type_enabled(v72, BYTE3(v120)))
          {
            v75 = v73;
          }

          else
          {
            v75 = v73 & 0xFFFFFFFE;
          }

          if (v75)
          {
            if (v11)
            {
              v76 = (CMBaseObjectGetDerivedStorage() + 164);
            }

            else
            {
              v76 = "";
            }

            v116 = v76;
            v77 = *(v26 + 112);
            time.value = value;
            time.timescale = timescale;
            time.flags = flags;
            time.epoch = v110;
            v78 = CMTimeGetSeconds(&time);
            time = lhs;
            v79 = CMTimeGetSeconds(&time);
            time.value = *type;
            OUTLINED_FUNCTION_5_34();
            time.epoch = v113;
            CMTimeGetSeconds(&time);
            LODWORD(rhs.value) = 136316930;
            OUTLINED_FUNCTION_3_34();
            v127 = v116;
            v128 = v80;
            v129 = v77;
            v130 = v80;
            v131 = v9;
            v132 = v80;
            v133 = v78;
            v134 = v80;
            v135 = v79;
            v136 = v80;
            v137 = v81;
            LODWORD(v95) = 82;
            v92 = &rhs;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v82, v83, v84, v85, v86, v72, v74, v87);
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v29 = v107;
          epoch = v110;
        }

        OUTLINED_FUNCTION_0_53(*(v26 + 112), v65, v66, v67, v68, v69, v70, v71, v92, v95, v98, v101, v104, v107, v110, v113, v116, v117, lhs.value, *&lhs.timescale, lhs.epoch, v119, v120, cf, *type, v123, value);
        time.epoch = epoch;
        rhs = lhs;
        CMTimebaseSetRateAndAnchorTime(v88, v89, &time, &rhs);
      }

      if (v29)
      {
LABEL_50:
        CFRelease(v29);
      }
    }
  }

LABEL_4:
  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_451_0();
}

uint64_t figAudioQueueRenderPipelineStartOffline(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_9_17(DerivedStorage);
  if (*(v2 + 66))
  {
    v5 = *a2;
    *(v2 + 84) = *(a2 + 2);
    *(v2 + 68) = v5;
    v6 = *(v2 + 40);
    v9 = *a2;
    started = FigAudioQueueStartOffline(v6, &v9);
    if (started)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9.value, v9.timescale, LODWORD(v9.epoch));
    }
  }

  else
  {
    started = 4294954444;
  }

  FigSimpleMutexUnlock();
  return started;
}

uint64_t figAudioQueueRenderPipelineStopOffline(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_9_17(DerivedStorage);
  if (*(v1 + 66))
  {
    v3 = FigAudioQueueStopOffline(*(v1 + 40));
    if (v3)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
    }
  }

  else
  {
    v3 = 4294954444;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t figAudioQueueRenderPipelineReset(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_9_17(DerivedStorage);
  v3 = CMBufferQueueReset(*(v1 + 32));
  if (!v3)
  {
    v3 = FigAudioQueueResetOffline(*(v1 + 40));
  }

  v4 = v3;
  FigSimpleMutexUnlock();
  return v4;
}

void faqrp_transitionCallback()
{
  OUTLINED_FUNCTION_10_17();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v29 = *MEMORY[0x1E69E9840];
  v8 = FigCFWeakReferenceTableCopyValue();
  FigCFWeakReferenceTableRemoveValue();
  memset(&v26, 0, sizeof(v26));
  if (!v8)
  {
LABEL_24:
    OUTLINED_FUNCTION_451_0();
    return;
  }

  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 128), v7);
    if (Value)
    {
      v13 = CFDictionaryGetValue(Value, @"TransitionTimebase");
      if (v13)
      {
        v14 = v13;
        if (FigCFDictionaryGetCFIndexIfPresent())
        {
          if (!FigCFDictionaryGetValue())
          {
            v16 = 0;
            goto LABEL_16;
          }

          v15 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v15)
          {
            v16 = v15;
LABEL_16:
            CFRetain(v14);
            CFDictionaryRemoveValue(*(DerivedStorage + 128), v7);
            v17 = CMTimebaseCopySource(v14);
            HostTimeClock = CMClockGetHostTimeClock();
            time = *v3;
            CMSyncConvertTime(&v26, &time, HostTimeClock, v17);
            memset(&v24, 0, sizeof(v24));
            CMSyncGetTime(&v24, v17);
            if (dword_1EAF16ED8)
            {
              *type = 0;
              v22 = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            time = *v5;
            lhs = v26;
            if (!CMTimebaseSetRateAndAnchorTime(v14, v1, &time, &lhs))
            {
              faqrp_setTimebase(v8, v14);
            }

            FigSimpleMutexUnlock();
            CFRelease(v14);
            if (v17)
            {
              CFRelease(v17);
            }

            CFRelease(v8);
            if (v16)
            {
              CFRelease(v16);
            }

            goto LABEL_24;
          }

          if (dword_1EAF16ED8)
          {
            LODWORD(rhs.value) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v16 = 0;
        goto LABEL_16;
      }
    }
  }

  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_451_0();

  CFRelease(v10);
}

uint64_t figAudioQueueRenderPipelineSetPropertiesToUpdateAtTransition_cold_1(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 66))
  {
    v10 = -12852;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryApplyFunction(a3, figAudioQueueRenderPipelineConvertRPPropertyKeyToFAQPropertyKey, Mutable);
    Count = FigCFDictionaryGetCount();
    if (!Mutable || Count)
    {
      v10 = FigAudioQueueSetPropertiesToUpdateAtTransition(*(DerivedStorage + 40), a2, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      CFRelease(Mutable);
      v10 = FigAudioQueueSetPropertiesToUpdateAtTransition(*(DerivedStorage + 40), a2, 0);
    }
  }

  *a4 = v10;

  return FigSimpleMutexUnlock();
}

BOOL FigPlaybackTimerScheduleForTimebaseTimeWithTeardownHandlers_cold_3(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t _figCSSParser_consume_a_simple_block(const void *a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  value = 0;
  v36 = 0;
  cf = 0;
  if (a1 && a2 && a3 && a4)
  {
    v8 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v10 = OUTLINED_FUNCTION_3_35();
      CurrentInputToken = FigCSSTokenWalkerGetCurrentInputToken(v10, v11, v12);
      if (!CurrentInputToken)
      {
        v14 = v38;
        v15 = v37;
        *a3 = 0;
        *a4 = 0;
        v16 = CFGetAllocator(a1);
        CurrentInputToken = FigCSSSimpleBlockParserNodeCreate(v16, &v36);
        if (!CurrentInputToken)
        {
          CurrentInputToken = FigCSSSimpleBlockParserNodeSetAssociatedToken(v36, v14);
          if (!CurrentInputToken)
          {
            v17 = CFGetAllocator(a1);
            v18 = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
            if (v18)
            {
              v19 = v18;
              switch(v15)
              {
                case 16:
                  v20 = 17;
                  break;
                case 18:
                  v20 = 19;
                  break;
                case 20:
                  v20 = 21;
                  break;
                default:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_1_11();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, cf, value);
                  goto LABEL_33;
              }

              v21 = FigCSSSimpleBlockParserNodeSetValue(v36, v18);
              if (!v21)
              {
                v22 = OUTLINED_FUNCTION_3_35();
                FigCSSTokenWalkerConsumeNextInputToken(v22, v23, v24);
                if (!v21)
                {
                  v25 = v37;
                  while (v25 != 1 && v25 != v20)
                  {
                    FigCSSTokenWalkerReconsumeInputToken(a2);
                    if (!v21)
                    {
                      v21 = _figCSSParser_consume_a_component_value(a1, a2, &cf, &value);
                      if (!v21)
                      {
                        CFArrayAppendValue(v19, value);
                        if (cf)
                        {
                          CFRelease(cf);
                          cf = 0;
                        }

                        if (value)
                        {
                          CFRelease(value);
                          value = 0;
                        }

                        v27 = OUTLINED_FUNCTION_3_35();
                        FigCSSTokenWalkerConsumeNextInputToken(v27, v28, v29);
                        v25 = v37;
                        if (!v21)
                        {
                          continue;
                        }
                      }
                    }

                    goto LABEL_33;
                  }

                  v30 = 0;
                  *a4 = v36;
                  v36 = 0;
                  goto LABEL_34;
                }
              }

LABEL_33:
              v30 = v21;
LABEL_34:
              CFRelease(v19);
              goto LABEL_35;
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_11();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v30 = CurrentInputToken;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v30 = v32;
    Mutable = 0;
  }

LABEL_35:
  if (v36)
  {
    CFRelease(v36);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v30;
}

uint64_t _figCSSParser_consume_a_component_value(const void *a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  v40 = 0;
  v41 = 0;
  v39 = 0;
  if (!a1 || !a3 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_56;
  }

  *a3 = 0;
  *a4 = 0;
  v7 = OUTLINED_FUNCTION_4_39();
  FigCSSTokenWalkerConsumeNextInputToken(v7, v8, v9);
  if (CurrentInputToken)
  {
LABEL_56:
    v32 = CurrentInputToken;
LABEL_57:
    v33 = 0;
    goto LABEL_46;
  }

  HIDWORD(v12) = v44 - 16;
  LODWORD(v12) = v44 - 16;
  v11 = v12 >> 1;
  if (v11 < 3)
  {
    v13 = CFGetAllocator(a1);
    CurrentInputToken = FigCSSComponentValueParserNodeCreate(v13, &v39);
    if (!CurrentInputToken)
    {
      CurrentInputToken = _figCSSParser_consume_a_simple_block(a1, a2, &v41, &v40);
      if (!CurrentInputToken)
      {
        v14 = FigCSSComponentValueParserNodeSetSimpleBlock(v39, v40);
        goto LABEL_34;
      }
    }

    goto LABEL_56;
  }

  if (v11 != 8)
  {
    v34 = CFGetAllocator(a1);
    CurrentInputToken = FigCSSComponentValueParserNodeCreate(v34, &v39);
    if (!CurrentInputToken)
    {
      v35 = OUTLINED_FUNCTION_4_39();
      CurrentInputToken = FigCSSTokenWalkerGetCurrentInputToken(v35, v36, v37);
      if (!CurrentInputToken)
      {
        v14 = FigCSSComponentValueParserNodeSetPreservedToken(v39, v46);
LABEL_34:
        v32 = v14;
        if (!v14)
        {
          v33 = 0;
LABEL_45:
          *a4 = v39;
          v39 = 0;
          goto LABEL_46;
        }

        goto LABEL_57;
      }
    }

    goto LABEL_56;
  }

  v15 = CFGetAllocator(a1);
  CurrentInputToken = FigCSSComponentValueParserNodeCreate(v15, &v39);
  if (CurrentInputToken)
  {
    goto LABEL_56;
  }

  value = 0;
  v44 = 0;
  cf = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v40, v41);
LABEL_59:
    v32 = v19;
    Mutable = 0;
    goto LABEL_28;
  }

  v16 = OUTLINED_FUNCTION_2_46();
  v19 = FigCSSTokenWalkerGetCurrentInputToken(v16, v17, v18);
  if (v19)
  {
    goto LABEL_59;
  }

  v20 = v46;
  v21 = CFGetAllocator(a1);
  v19 = FigCSSFunctionParserNodeCreate(v21, &v44);
  if (v19)
  {
    goto LABEL_59;
  }

  v19 = FigCSSFunctionParserNodeSetName(v44, v20);
  if (v19)
  {
    goto LABEL_59;
  }

  v22 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v40, v41);
LABEL_27:
    v32 = v24;
LABEL_28:
    if (v44)
    {
      CFRelease(v44);
    }

    v33 = 0;
    goto LABEL_37;
  }

  v24 = FigCSSFunctionParserNodeSetValue(v44, Mutable);
  if (v24)
  {
    goto LABEL_27;
  }

  v25 = OUTLINED_FUNCTION_2_46();
  FigCSSTokenWalkerConsumeNextInputToken(v25, v26, v27);
  if (v24)
  {
    goto LABEL_27;
  }

  v28 = v45;
  while ((v28 & 0xFFFFFFEF) != 1)
  {
    FigCSSTokenWalkerReconsumeInputToken(a2);
    if (!v24)
    {
      v24 = _figCSSParser_consume_a_component_value(a1, a2, &cf, &value);
      if (!v24)
      {
        CFArrayAppendValue(Mutable, value);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        v29 = OUTLINED_FUNCTION_2_46();
        FigCSSTokenWalkerConsumeNextInputToken(v29, v30, v31);
        v28 = v45;
        if (!v24)
        {
          continue;
        }
      }
    }

    goto LABEL_27;
  }

  v32 = 0;
  v33 = v44;
  v44 = 0;
LABEL_37:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v32)
  {
    v32 = FigCSSComponentValueParserNodeSetFunctionNode(v39, v33);
    if (!v32)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v32;
}

void FigCSSParserCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserProduceStyleSheet_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserProduceStyleSheet_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserProduceStyleSheet_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserProduceStyleSheet_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserProduceStyleSheet_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserProduceStyleSheet_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserProduceStyleSheet_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserProduceStyleSheet_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserProduceStyleSheet_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL FigCSSParserProduceStyleSheet_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void FigCSSParserProduceStyleSheet_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSParserProduceStyleSheet_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_consume_an_at_rule_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_consume_an_at_rule_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_consume_an_at_rule_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_consume_an_at_rule_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_util_serializeComponentValueNodeArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_util_serializeComponentValueNodeArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_util_serializeComponentValueNodeArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_util_serializeComponentValueNodeArray_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_util_serializeComponentValueNodeArray_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigVideoRenderPipelineCreateWithVisualContext(const __CFAllocator *a1, int a2, int a3, int a4, int a5, uint64_t a6, void *a7, CFDictionaryRef theDict, uint64_t a9)
{
  values = 0;
  v42 = a7;
  value = 0;
  if (theDict && (CFDictionaryGetValueIfPresent(theDict, @"LoggingID", &value), value))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    if (!Mutable)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, value, values);
LABEL_26:
      v27 = v14;
      goto LABEL_21;
    }
  }

  else
  {
    Mutable = 0;
  }

  FigImageQueueCreateForCoreVideoWithOptions(0, Mutable, &values);
  if (v14)
  {
    goto LABEL_26;
  }

  if (a7)
  {
    v15 = *MEMORY[0x1E695E4D0];
    if (v15 == CFDictionaryGetValue(a7, @"LimitImageQueueCapacityToOneFrame"))
    {
      FigImageQueueGetFigBaseObject();
      v29 = v28;
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v30)
      {
        v30(v29, @"FigImageQueueProperty_LimitCapacityToOneFrame", v15);
      }
    }
  }

  v16 = values;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    v27 = 4294954514;
    goto LABEL_21;
  }

  v14 = v17(v16, a6, 0);
  if (v14)
  {
    goto LABEL_26;
  }

  v18 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
  if (!a7)
  {
    v31 = OUTLINED_FUNCTION_0_54();
    FigVideoRenderPipelineCreateWithFigImageQueueArray(v31, v32, v33, v34, v35, v36, 0, theDict, v39);
    v27 = v37;
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = CFArrayCreate(a1, &v42, 1, MEMORY[0x1E695E9C0]);
  v20 = OUTLINED_FUNCTION_0_54();
  FigVideoRenderPipelineCreateWithFigImageQueueArray(v20, v21, v22, v23, v24, v25, v19, theDict, v39);
  v27 = v26;
  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
LABEL_20:
    CFRelease(v18);
  }

LABEL_21:
  if (values)
  {
    CFRelease(values);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v27;
}

uint64_t FigVideoRenderPipelineCreateWithVisualContextGroup(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, int a5, const __CFArray *a6, const __CFArray *a7, uint64_t a8, CFDictionaryRef theDict, void *a10)
{
  value = 0;
  v49 = 0;
  v16 = MEMORY[0x1E695E480];
  if (theDict && (CFDictionaryGetValueIfPresent(theDict, @"LoggingID", &value), value))
  {
    Mutable = CFDictionaryCreateMutable(*v16, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    if (!Mutable)
    {
LABEL_31:
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v35 = v36;
      v21 = 0;
      v20 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    Mutable = 0;
  }

  v44 = a2;
  if (!a6)
  {
    goto LABEL_31;
  }

  Count = CFArrayGetCount(a6);
  if (Count <= 0)
  {
    goto LABEL_31;
  }

  v19 = Count;
  if (!a7 || Count != CFArrayGetCount(a7))
  {
    goto LABEL_31;
  }

  v43 = a3;
  v20 = CFArrayCreateMutable(a1, v19, MEMORY[0x1E695E9C0]);
  if (v20)
  {
    v21 = CFArrayCreateMutable(a1, v19, MEMORY[0x1E695E9C0]);
    if (v21)
    {
      v45 = v20;
      v22 = 0;
      while (1)
      {
        FigImageQueueCreateForCoreVideoWithOptions(0, Mutable, &v49);
        if (v23)
        {
          break;
        }

        v24 = Mutable;
        ValueAtIndex = CFArrayGetValueAtIndex(a6, v22);
        v26 = v49;
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v27)
        {
          v35 = 4294954514;
          goto LABEL_29;
        }

        TagsWithCategory = v27(v26, ValueAtIndex, 0);
        if (TagsWithCategory)
        {
          goto LABEL_43;
        }

        CFArrayAppendValue(v45, v49);
        CFArrayGetValueAtIndex(a7, v22);
        TagsWithCategory = FigTagCollectionGetTagsWithCategory();
        if (TagsWithCategory)
        {
          goto LABEL_43;
        }

        FigTagGetSInt64Value();
        SInt64 = FigCFNumberCreateSInt64();
        if (!SInt64)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, v10);
LABEL_43:
          v35 = TagsWithCategory;
LABEL_29:
          Mutable = v24;
          goto LABEL_30;
        }

        v30 = SInt64;
        if (a8)
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v32 = MutableCopy;
        if (!MutableCopy)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, v10);
          v35 = v38;
          CFRelease(v30);
          goto LABEL_29;
        }

        CFDictionarySetValue(MutableCopy, @"DemuxLayerID", v30);
        CFArrayAppendValue(v21, v32);
        CFRelease(v30);
        if (v49)
        {
          CFRelease(v49);
          v49 = 0;
        }

        CFRelease(v32);
        ++v22;
        Mutable = v24;
        if (v19 == v22)
        {
          v20 = v45;
          FigVideoRenderPipelineCreateWithFigImageQueueArray(a1, v44, v43, a4, v33, v45, v21, theDict, a10);
          goto LABEL_26;
        }
      }

      v35 = v23;
LABEL_30:
      v20 = v45;
    }

    else
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, v42);
LABEL_26:
      v35 = v34;
    }
  }

  else
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, v42);
    v35 = v39;
    v21 = 0;
  }

LABEL_32:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v35;
}

uint64_t figVideoRenderPipelineUpdateImageQueues(uint64_t a1, const __CFArray *a2)
{
  v59[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  theArray = 0;
  v53 = 0;
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, &v57);
  if (!theArray || (v6 = CFArrayGetCount(theArray), v6 < 1))
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_66;
  }

  v7 = v6;
  v8 = FigCFCopyCompactDescription();
  if (dword_1EAF16EF8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  FigSimpleMutexLock();
  if (Count < 1)
  {
    videopipelineRemoveListenersOnFirstImageQueue(a1);
    v10 = 0;
    Mutable = 0;
  }

  else
  {
    v12 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable || (v14 = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0])) == 0)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, v47, v48);
      v11 = v45;
      FigSimpleMutexUnlock();
      v10 = 0;
      goto LABEL_64;
    }

    v10 = v14;
    v15 = 0;
    v16 = *MEMORY[0x1E695E738];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v15);
      v60.location = 0;
      v60.length = v7;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v60, ValueAtIndex);
      if (FirstIndexOfValue == -1)
      {
        CFArrayAppendValue(v10, v16);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListeners();
      }

      else
      {
        v19 = CFArrayGetValueAtIndex(v57, FirstIndexOfValue);
        CFArrayAppendValue(v10, v19);
      }

      CFArrayAppendValue(Mutable, ValueAtIndex);
      if (!v15)
      {
        videopipelineAddListenersToFirstImageQueue(a1, ValueAtIndex);
      }

      ++v15;
    }

    while (Count != v15);
  }

  for (i = 0; i != v7; ++i)
  {
    FigCFArrayGetValueAtIndex();
    if (!FigCFArrayContainsValue())
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
      FigCFArrayRemoveLastElementOfValue();
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v21 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  FigSimpleMutexUnlock();
  v23 = *(DerivedStorage + 40);
  if (v23 && CFArrayGetCount(v23) == 1)
  {
    ImageQueueConfigurationArray = FigImageQueueArrayCreateImageQueueConfigurationArray(Mutable, *MEMORY[0x1E695E480], v10, &cf);
    if (!ImageQueueConfigurationArray)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 40), 0);
      v25 = cf;
      FigImageQueueGetFigBaseObject();
      v27 = v26;
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v28)
      {
        v28(v27, @"FigImageQueueProperty_ImageQueueConfigurationArrayForFanout", v25);
      }

LABEL_57:
      v41 = MEMORY[0x1E695E4D0];
      if (!*(DerivedStorage + 88))
      {
        v41 = MEMORY[0x1E695E4C0];
      }

      FigImageQueueArraySetProperty(*(DerivedStorage + 40), @"PreventDisplaySleepDuringVideoPlayback", *v41);
      v42 = *(DerivedStorage + 96);
      if (v42)
      {
        FigImageQueueArraySetProperty(*(DerivedStorage + 40), @"VideoEnhancementMode", v42);
      }

      v59[0] = 0;
      figVideoRenderPipelineCopyMaxFanOutDisplayLayerSize(a1, v59);
      v43 = v59[0];
      if (v59[0])
      {
        VMC2SetProperty(*(DerivedStorage + 16), @"DisplayLayerSize", v59[0]);
        CFRelease(v43);
      }

      videopipelineConfigureAV1FilmGrainModeAsAppropriateForImageQueues(a1);
      v11 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    ImageQueueConfigurationArray = figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID(a1, &v55, &v54, &v53);
    if (!ImageQueueConfigurationArray)
    {
      v29 = v53;
      if (v53)
      {
        v30 = CFArrayGetCount(v53);
        if (v30 >= 1)
        {
          v31 = v30;
          v32 = 0;
          v50 = v54;
          v51 = v55;
          v49 = *MEMORY[0x1E695E480];
          do
          {
            LODWORD(v59[0]) = 0;
            CFArrayGetValueAtIndex(v29, v32);
            FigCFDictionaryGetInt32IfPresent();
            for (j = 0; ; ++j)
            {
              v34 = *(DerivedStorage + 48);
              if (v34)
              {
                v34 = CFArrayGetCount(v34);
              }

              if (j >= v34)
              {
                break;
              }

              CFArrayGetValueAtIndex(*(DerivedStorage + 48), j);
              v58 = 0;
              if (FigCFDictionaryGetInt32IfPresent() && v58 == LODWORD(v59[0]))
              {
                v35 = CFArrayGetValueAtIndex(v51, v32);
                v36 = CFArrayGetValueAtIndex(v50, v32);
                ImageQueueConfigurationArray = FigImageQueueArrayCreateImageQueueConfigurationArray(v35, v49, v36, &cf);
                if (ImageQueueConfigurationArray)
                {
                  goto LABEL_81;
                }

                CFArrayGetValueAtIndex(*(DerivedStorage + 40), j);
                v37 = cf;
                FigImageQueueGetFigBaseObject();
                v39 = v38;
                v40 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v40)
                {
                  v40(v39, @"FigImageQueueProperty_ImageQueueConfigurationArrayForFanout", v37);
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                break;
              }
            }

            ++v32;
          }

          while (v32 != v31);
        }
      }

      goto LABEL_57;
    }
  }

LABEL_81:
  v11 = ImageQueueConfigurationArray;
LABEL_64:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_66:
  if (v57)
  {
    CFRelease(v57);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

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

  return v11;
}

uint64_t figVideoRenderPipelineReset(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBufferQueueReset(*(DerivedStorage + 8));
  if (v4)
  {
    return v4;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    VMC2Reset(v5, a2);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(DerivedStorage + 32);
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v9)
    {
      v9(v8, a2);
    }
  }

  return v7;
}

void figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_9(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  CFRelease(a1);
}

uint64_t audioRendererServer_handleMessageWithReply(_xpc_connection_s *a1, void *a2, void *a3)
{
  v40 = 0;
  v38 = 0;
  v39 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v8 = OUTLINED_FUNCTION_195_0();
  uint64 = xpc_dictionary_get_uint64(v8, v9);
  v11 = audioRenderer_lookupAndRetainSampleBufferAudioRendererByObjectIDForConnection(a1, uint64, &v38);
  if (v11)
  {
    goto LABEL_3;
  }

  if (v40 == 778268793)
  {
    v15 = v38;
    v30 = FigXPCHandleStdCopyPropertyMessage();
    goto LABEL_35;
  }

  if (v40 == 779314548)
  {
    v15 = v38;
    v30 = FigXPCHandleStdSetPropertyMessage();
LABEL_35:
    CMTime = v30;
    if (!v15)
    {
      return CMTime;
    }

    goto LABEL_16;
  }

  if (v40 != 1633775732)
  {
    if (v40 != 1701736821)
    {
      if (v40 != 1718383464)
      {
        if (v40 == 1718838900)
        {
          v21 = v38;
          memset(bytes, 0, sizeof(bytes));
          *&v42 = 0;
          CMTime = FigXPCMessageGetCMTime();
          if (!CMTime)
          {
            v22 = xpc_dictionary_get_uint64(a2, "completionID");
            v23 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040AB73632BuLL);
            v24 = v23;
            if (v23)
            {
              *v23 = v22;
              v25 = OUTLINED_FUNCTION_195_0();
              v24[1] = xpc_dictionary_get_uint64(v25, v26);
              v24[2] = FigXPCRetain();
              if (v21)
              {
                v27 = CFRetain(v21);
              }

              else
              {
                v27 = 0;
              }

              v24[3] = v27;
            }

            else
            {
              fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, v39);
            }

            v45 = *bytes;
            v46 = v42;
            v36 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v36)
            {
              v43 = v45;
              *&v44 = v46;
              v36(v21, &v43, audioRendererServer_flushFromTimeCompletionCallback, v24);
            }

            else
            {
              audioRendererServer_flushFromTimeCompletionCallback(-12782, v24);
            }
          }
        }

        else if (v40 == 1752659007)
        {
          v12 = v38;
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v13)
          {
            v14 = v13(v12) != 0;
          }

          else
          {
            v14 = 1;
          }

          xpc_dictionary_set_BOOL(a3, "isAboveHighWaterResponse", v14);
          CMTime = 0;
        }

        else
        {
          CMTime = 4294951138;
        }

        goto LABEL_15;
      }

      v28 = v38;
      v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v29)
      {
        CMTime = 4294954514;
        goto LABEL_15;
      }

      v11 = v29(v28);
LABEL_3:
      CMTime = v11;
      goto LABEL_15;
    }

    v17 = v38;
    *&v43 = 0;
    *bytes = 0;
    BlockBufferData = FigXPCMessageCreateBlockBufferData();
    if (!BlockBufferData)
    {
      BlockBufferData = FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer();
      if (!BlockBufferData)
      {
        v19 = *bytes;
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v20)
        {
          CMTime = 4294954514;
LABEL_41:
          if (*bytes)
          {
            CFRelease(*bytes);
          }

          goto LABEL_48;
        }

        BlockBufferData = v20(v17, v19);
      }
    }

    CMTime = BlockBufferData;
    goto LABEL_41;
  }

  v31 = v38;
  *&v43 = 0;
  v32 = xpc_dictionary_get_uint64(a2, "audioProcessingTapID");
  if (v32)
  {
    v33 = MTAudioProcessingTapXPCServerCopyTapForID(v32, &v43);
    if (v33)
    {
LABEL_46:
      CMTime = v33;
      goto LABEL_48;
    }

    v34 = v43;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v35)
  {
    v33 = v35(v31, @"AudioProcessingTap", v34);
    goto LABEL_46;
  }

  CMTime = 4294954514;
LABEL_48:
  if (v43)
  {
    CFRelease(v43);
  }

LABEL_15:
  v15 = v38;
  if (v38)
  {
LABEL_16:
    CFRelease(v15);
  }

  return CMTime;
}

uint64_t audioRendererServer_handleMessageNoReply(uint64_t a1, void *a2)
{
  v10 = 0;
  cf[0] = 0;
  cf[1] = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  uint64 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v6 = audioRenderer_lookupAndRetainSampleBufferAudioRendererByObjectIDForConnection(a1, uint64, cf);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 4294951138;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v7;
}

uint64_t audioRendererServer_flushFromTimeCompletionCallback(int a1, uint64_t a2)
{
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_uint64(0, "completionID", *a2);
    xpc_dictionary_set_int64(0, "completionStatus", a1);
    xpc_connection_send_message(*(a2 + 16), 0);
  }

  audioRendererServer_destroyFlushFromTimeCompletionCallbackContext(a2);
  return FigXPCRelease();
}

void FigSampleBufferAudioRendererServerRetainAudioRendererForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void audioRenderer_lookupAndRetainSampleBufferAudioRendererByObjectIDForConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigCaptionRendererSessionSetMasterClock(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_25_8();
      OUTLINED_FUNCTION_9_18();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetCALayerDevice(uint64_t a1, void *a2)
{
  if (!a1 || !*(a1 + 168))
  {
    return 0;
  }

  v4 = *(a1 + 584);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, *(a1 + 248));
  }

  else
  {
    Value = 0;
  }

  v6 = FigCaptionRendererCALayerOutputCreate(onUserEvent, onViewportChanged, drawInContext, a1, a2, Value, *MEMORY[0x1E695E480], (a1 + 64));
  if (v6)
  {
    v18 = v6;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v18;
  }

  *(a1 + 624) = FigCaptionRendererCALayerOutputGetOrientation(*(a1 + 64));
  *(a1 + 628) = FigCaptionRendererCALayerOutputGetDisplayScale(*(a1 + 64));
  v7 = *(a1 + 64);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v8(v7);
    OUTLINED_FUNCTION_31_7();
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v10 = *(ProtocolVTable + 16)) == 0)
  {
    v18 = 4294954508;
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v18;
  }

  if (!*(v10 + 96))
  {
    v18 = 4294954514;
    goto LABEL_20;
  }

  v11 = OUTLINED_FUNCTION_5_35();
  v13 = v12(v11);
  if (v13)
  {
    v18 = v13;
    goto LABEL_20;
  }

  if (!*(a1 + 584))
  {
    return 0;
  }

  ProtocolID = FigCaptionRendererOutputNodeProtocolGetProtocolID();
  v15 = OUTLINED_FUNCTION_2_9(ProtocolID);
  if (!v15 || (v16 = *(v15 + 16)) == 0)
  {
    v18 = 4294954508;
    goto LABEL_20;
  }

  v17 = *(v16 + 56);
  if (!v17)
  {
    v18 = 4294954514;
    goto LABEL_20;
  }

  v18 = v17(Value);
  if (v18)
  {
    goto LABEL_20;
  }

  return v18;
}

uint64_t FigCaptionRendererSessionSetCGContextDevice(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_19_10();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLegibleOutputDevice(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_19_10();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetPlayer(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 | *(a1 + 72) && *(a1 + 168))
  {
    OUTLINED_FUNCTION_9_18();
    dispatch_sync_f(v2, v3, v4);
  }

  return 0;
}

double setPlayerDo_0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(*a1 + 72) == v2)
  {
    return result;
  }

  v4 = (v1 + 56);
  v3 = *(v1 + 56);
  if (!v3)
  {
    if (FigCaptionRendererNotificationInputCreate(onCaptionInput, onRegionInput, onTextHighlightArray, v1, *MEMORY[0x1E695E480], (v1 + 56)))
    {
      goto LABEL_28;
    }

    v3 = *v4;
  }

  if (FigCaptionRendererNotificationInputSetPlayer(v3, v2))
  {
    goto LABEL_28;
  }

  if (*(v1 + 72))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_10_18();
    CMNotificationCenterRemoveListener();
    v5 = *(v1 + 72);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 72) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (*(v1 + 72))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_10_18();
    CMNotificationCenterAddListener();
    FigSimpleMutexLock();
    *(v1 + 1363) = 0;
    FigSimpleMutexUnlock();
    v16 = FigCaptionRendererTriggerCreate(0, *(v1 + 1368), onTriggerEvent, onTriggerTimeUpdate, v1, (v1 + 48));
    if (!v16)
    {
      v14 = &v16;
      v15 = v1;
      fcrSessionStartDo(&v14);
      if (v16)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_376();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
      }

      return result;
    }

    goto LABEL_28;
  }

  v7 = OUTLINED_FUNCTION_2_47();
  *v7 = CFRetain(v1);
  v8 = *(v1 + 72);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  v7[1] = v8;
  playbackItemChangedCallbackDo(v7);
  v9 = OUTLINED_FUNCTION_26_10();
  if (!v9)
  {
LABEL_28:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v10 = v9;
  v11 = *v4;
  if (*v4)
  {
    v11 = CFRetain(v11);
  }

  v10[1] = v11;
  v12 = *(v1 + 48);
  if (v12)
  {
    v12 = CFRetain(v12);
  }

  v10[2] = v12;
  *v10 = CFRetain(v1);

  fcrSessionStopDo(v10);
  return result;
}

uint64_t FigCaptionRendererSessionSetCaptionArray(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_25_8();
      OUTLINED_FUNCTION_9_18();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetCaptionSample(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_12_15();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionNotificationInputSetCaptionSample(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionStart(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionStop(void *a1)
{
  if (a1 && a1[21])
  {
    v2 = OUTLINED_FUNCTION_26_10();
    v3 = a1[7];
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    v2[1] = v3;
    v4 = a1[6];
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    v2[2] = v4;
    v5 = CFRetain(a1);
    OUTLINED_FUNCTION_34_8(v5);
    OUTLINED_FUNCTION_39_3();
    dispatch_async_f(v6, v7, v8);
  }

  return 0;
}

double FigCaptionRendererSessionSetTime(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      if (*(a1 + 168))
      {
        OUTLINED_FUNCTION_9_18();
        dispatch_sync_f(v1, v2, v3);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetCaptionCacheRange(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_12_15();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

double FigCaptionRendererSessionSetRate(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      if (*(a1 + 168))
      {
        OUTLINED_FUNCTION_9_18();
        dispatch_sync_f(v1, v2, v3);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double FigCaptionRendererSessionGetRate(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    if (OUTLINED_FUNCTION_17_8(a1))
    {
      OUTLINED_FUNCTION_9_18();
      dispatch_sync_f(v2, v3, v4);
      return 0.0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_Viewport(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_6_29();
  v6 = v5;
  FigSimpleMutexLock();
  if (!*(v6 + 1363))
  {
    *(v6 + 776) = v4;
    *(v6 + 784) = v3;
    *(v6 + 792) = v2;
    *(v6 + 800) = v1;
    FigSimpleMutexUnlock();
    return 0;
  }

  v7 = FigSimpleMutexUnlock();
  v11 = *(v6 + 168);
  if (v11)
  {
    OUTLINED_FUNCTION_13_9(v7, v8, v9, v10);
    v21 = v6;
    OUTLINED_FUNCTION_7_19();
    dispatch_sync_f(v11, v12, v13);
  }

  v14 = *(v6 + 248);
  ProtocolID = FigCaptionRendererNodeProtocolGetProtocolID();
  v16 = OUTLINED_FUNCTION_2_9(ProtocolID);
  if (!v16 || (v17 = *(v16 + 16)) == 0)
  {
    v19 = -12788;
LABEL_11:
    v23 = v19;
LABEL_12:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    return v23;
  }

  v18 = *(v17 + 96);
  if (!v18)
  {
    v19 = -12782;
    goto LABEL_11;
  }

  result = v18(v14, v4, v3, v2, v1);
  v23 = result;
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_VideoSize(uint64_t result, double a2, double a3)
{
  if (result)
  {
    OUTLINED_FUNCTION_43_6(result);
    if (*(v3 + 1363))
    {
      v6 = FigSimpleMutexUnlock();
      v10 = *(v3 + 168);
      if (v10)
      {
        OUTLINED_FUNCTION_13_9(v6, v7, v8, v9);
        OUTLINED_FUNCTION_35_6();
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v10, v11, v12);
        return 0;
      }
    }

    else
    {
      *(v3 + 808) = a2;
      *(v3 + 816) = a3;
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_Gravity(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = *(result + 168);
    if (v4)
    {
      OUTLINED_FUNCTION_13_9(result, a2, a3, a4);
      OUTLINED_FUNCTION_35_6();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v4, v5, v6);
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_Overscan(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = *(result + 168);
    if (v4)
    {
      OUTLINED_FUNCTION_13_9(result, a2, a3, a4);
      OUTLINED_FUNCTION_35_6();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v4, v5, v6);
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererSessionGetLayoutContext_Overscan(uint64_t a1, _BYTE *a2)
{
  if (a1)
  {
    v2 = *(a1 + 168);
    if (v2)
    {
      bzero(v7, 0xA8uLL);
      OUTLINED_FUNCTION_9_18();
      dispatch_sync_f(v2, v4, v5);
      *a2 = v7[153];
    }
  }

  return 0;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_VideoRelativeToViewport(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_43_6(v6);
    if (*(v1 + 1363))
    {
      v7 = FigSimpleMutexUnlock();
      v11 = *(v1 + 168);
      if (v11)
      {
        OUTLINED_FUNCTION_13_9(v7, v8, v9, v10);
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v11, v12, v13);
        return 0;
      }
    }

    else
    {
      *(v1 + 824) = v5;
      *(v1 + 832) = v4;
      *(v1 + 840) = v3;
      *(v1 + 848) = v2;
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_CaptionsAvoidanceMargins(uint64_t result, __int128 *a2)
{
  if (result)
  {
    v3 = result;
    FigSimpleMutexLock();
    if (*(v3 + 1363))
    {
      v4 = FigSimpleMutexUnlock();
      v8 = *(v3 + 168);
      if (v8)
      {
        OUTLINED_FUNCTION_13_9(v4, v5, v6, v7);
        OUTLINED_FUNCTION_35_6();
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v8, v9, v10);
        return 0;
      }
    }

    else
    {
      v11 = *a2;
      v12 = a2[1];
      v13 = a2[3];
      *(v3 + 888) = a2[2];
      *(v3 + 904) = v13;
      *(v3 + 856) = v11;
      *(v3 + 872) = v12;
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererSessionUpdateLegibleOutputContext(void *a1, uint64_t a2)
{
  if (!a1 || !a1[21])
  {
    return 0;
  }

  v4 = a1[31];
  ProtocolID = FigCaptionRendererNodeProtocolGetProtocolID();
  v6 = OUTLINED_FUNCTION_2_9(ProtocolID);
  if (!v6 || (v7 = *(v6 + 16)) == 0)
  {
    updated = 4294954508;
    goto LABEL_9;
  }

  v8 = *(v7 + 232);
  if (!v8)
  {
    updated = 4294954514;
    goto LABEL_9;
  }

  v9 = v8(v4, 1);
  if (v9)
  {
    updated = v9;
    goto LABEL_9;
  }

  v10 = a1[8];
  if (!v10)
  {
    return 0;
  }

  updated = FigCaptionRendererCGOutputUpdateCGContext(v10, a2);
  if (updated)
  {
LABEL_9:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return updated;
}

uint64_t FigCaptionRendererSessionUpdateCGContext(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 168))
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  updated = FigCaptionRendererCGOutputUpdateCGContext(v2, a2);
  if (updated)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  }

  return updated;
}

uint64_t FigCaptionRendererSessionClear(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_43_6(v2);
    v3 = *(v1 + 1363);
    FigSimpleMutexUnlock();
    if (v3)
    {
      result = *(v1 + 168);
      if (result)
      {
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v4, v5, v6);
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void clearDo(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    purgeOutOfRangeCaptionCache(*a1, MEMORY[0x1E6960C70]);
    v3 = *(v2 + 248);
    ProtocolID = FigCaptionRendererNodeProtocolGetProtocolID();
    v5 = OUTLINED_FUNCTION_39_5(ProtocolID);
    if (v5 && (v6 = *(v5 + 16)) != 0)
    {
      v7 = *(v6 + 56);
      if (v7)
      {
        v8 = v7(v3);
        if (v8)
        {
          LODWORD(v16) = v8;
        }

        else
        {
          v9 = *(v2 + 584);
          if (!v9)
          {
            goto LABEL_11;
          }

          Value = CFDictionaryGetValue(v9, *(v2 + 248));
          v11 = FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v12 = OUTLINED_FUNCTION_39_5(v11);
          if (v12 && (v13 = *(v12 + 16)) != 0)
          {
            v14 = *(v13 + 56);
            if (v14)
            {
              v15 = v14(Value);
              if (!v15)
              {
LABEL_11:
                v16 = *(v2 + 64);
                if (!v16)
                {
                  goto LABEL_17;
                }

                if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                {
                  v17 = OUTLINED_FUNCTION_5_35();
                  LODWORD(v16) = v18(v17);
                  if (!v16)
                  {
                    goto LABEL_17;
                  }
                }

                else
                {
                  LODWORD(v16) = -12782;
                }

                goto LABEL_16;
              }

              LODWORD(v16) = v15;
            }

            else
            {
              LODWORD(v16) = -12782;
            }
          }

          else
          {
            LODWORD(v16) = -12788;
          }
        }
      }

      else
      {
        LODWORD(v16) = -12782;
      }
    }

    else
    {
      LODWORD(v16) = -12788;
    }

LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_17;
  }

  LODWORD(v16) = 0;
LABEL_17:
  v19 = a1[5];
  if (v19)
  {
    *v19 = v16;
  }
}

uint64_t FigCaptionRendererSessionClearForRLO(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_43_6(result);
    v2 = *(v1 + 1363);
    FigSimpleMutexUnlock();
    if (v2)
    {
      result = *(v1 + 168);
      if (result)
      {
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v3, v4, v5);
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetHiddenCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && !*(a1 + 1376) && !*(a1 + 1384))
  {
    *(a1 + 1376) = a2;
    *(a1 + 1384) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  return 0;
}

double FigCaptionRendererSessionSetOptions(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 168))
      {
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v2, v3, v4);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}