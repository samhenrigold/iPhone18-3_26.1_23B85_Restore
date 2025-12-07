uint64_t metadw_processPlaylistCommon(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(a2 + 112);
  v6 = CMBaseObjectGetDerivedStorage();
  v80 = 0;
  v81.value = 0;
  cf = 0;
  v79 = 0;
  ParamsAsDict = FigCFHTTPCopyQueryParamsAsDict(*(a2 + 24), &cf);
  if (ParamsAsDict)
  {
LABEL_94:
    DoesNotExistAndAddToQueue = ParamsAsDict;
    goto LABEL_95;
  }

  DoesNotExistAndAddToQueue = FigStreamPlaylistParse(v5, 0, 0, &v80, 0, 0, 1, *(v6 + 218), 0, 0, *(v6 + 392), cf, &v81, &v79);
  if (*(a2 + 16) == 1)
  {
    v9 = *(v6 + 392);
    if (v81.value)
    {
      PlaylistVariables = FigMultivariantPlaylistGetPlaylistVariables(v81.value);
      *(v6 + 392) = PlaylistVariables;
      if (PlaylistVariables)
      {
        CFRetain(PlaylistVariables);
      }

      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *(v6 + 392) = 0;
      if (v9)
      {
LABEL_7:
        CFRelease(v9);
      }
    }
  }

  if (!DoesNotExistAndAddToQueue)
  {
    if (*(a2 + 16) == 1 || v79 && FigMediaPlaylistHasEndTag(v79))
    {
      DoesNotExistAndAddToQueue = 0;
      value = v81.value;
      v75 = v79;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v69, v70, v71);
    goto LABEL_94;
  }

LABEL_95:
  value = 0;
  v75 = 0;
LABEL_13:
  v72 = value;
  if (cf)
  {
    CFRelease(cf);
  }

  if (DoesNotExistAndAddToQueue)
  {
    goto LABEL_88;
  }

  v12 = v72;
  if (!v72 || (v13 = FigMultivariantPlaylistGetContentKeySpecifiers(v72), v14 = metadw_processCryptKeysFromPlaylist(a1, a2, v13), !v14))
  {
    v15 = v75;
    if (v75 && (ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(v75), v17 = metadw_processCryptKeysFromPlaylist(a1, a2, ContentKeySpecifiers), v17))
    {
LABEL_99:
      DoesNotExistAndAddToQueue = v17;
    }

    else
    {
      v18 = CMBaseObjectGetDerivedStorage();
      if (v75 && !*(v18 + 217))
      {
        v19 = 0;
        v20 = 0;
        for (i = 0; ; ++i)
        {
          MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v15);
          if (MediaSegmentSpecifiers)
          {
            MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
          }

          if (i >= MediaSegmentSpecifiers)
          {
            v38 = *(*(a2 + 40) + 24);
            CMTimeMake(&v81, v20, 1);
            v39 = OUTLINED_FUNCTION_198_0();
            v15 = v75;
            FigStreamingAssetProgressMonitorUpdateExpectedMediaBytesToDownload(v39, v40, v38, v41, v19, v42);
            goto LABEL_49;
          }

          v23 = FigMediaPlaylistGetMediaSegmentSpecifiers(v15);
          ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
          if (FigMediaSegmentSpecifierGetBytesToRead(ValueAtIndex))
          {
            v19 += FigMediaSegmentSpecifierGetBytesToRead(ValueAtIndex);
            goto LABEL_47;
          }

          v25 = *(a2 + 16);
          if (v25 == 4)
          {
            v27 = v19 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) * 30.0;
LABEL_39:
            v19 = v27;
            goto LABEL_47;
          }

          if (v25 == 3)
          {
            break;
          }

          if (v25 == 2)
          {
            v26 = (FigAlternateGetAverageBitRate(*(*(a2 + 40) + 16)) * 0.95);
            if (!v26)
            {
              v26 = (FigAlternateGetPeakBitRate(*(*(a2 + 40) + 16)) * 0.7);
            }

            v27 = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) * v26 * 0.125 + v19;
            goto LABEL_39;
          }

LABEL_47:
          v20 = (FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) + v20);
        }

        HasLosslessAudio = FigAlternateHasLosslessAudio(*(*(a2 + 40) + 16));
        v29 = *(a2 + 48);
        v30 = *(*(a2 + 40) + 16);
        if (HasLosslessAudio)
        {
          AudioSampleRate = FigAlternateGetAudioSampleRate(v30, v29);
          AudioBitDepth = FigAlternateGetAudioBitDepth(*(*(a2 + 40) + 16), *(a2 + 48));
          if (AudioSampleRate && AudioBitDepth)
          {
            v33 = v19 + ((AudioSampleRate * AudioBitDepth) * 0.125) * FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
LABEL_46:
            v19 = v33;
            v15 = v75;
            goto LABEL_47;
          }

          TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
          v36 = v19;
          v37 = 131072.0;
        }

        else
        {
          AudioChannelCount = FigAlternateGetAudioChannelCount(v30, v29, 0);
          TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
          v36 = v19;
          if (AudioChannelCount >= 3)
          {
            v33 = v36 + TimeInSeconds * 52428.8008;
            goto LABEL_46;
          }

          v37 = 16384.0;
        }

        v33 = v36 + TimeInSeconds * v37;
        goto LABEL_46;
      }

LABEL_49:
      DoesNotExistAndAddToQueue = 0;
      if (*(DerivedStorage + 160) && v15)
      {
        CMBaseObjectGetDerivedStorage();
        DateEntryArray = FigMediaPlaylistGetDateEntryArray(v75);
        v44 = 0;
        v73 = DateEntryArray;
        allocator = *MEMORY[0x1E695E480];
        v76 = a1;
        if (!DateEntryArray)
        {
          goto LABEL_53;
        }

LABEL_52:
        for (j = CFArrayGetCount(DateEntryArray); ; j = 0)
        {
          if (v44 >= j)
          {
            DoesNotExistAndAddToQueue = 0;
            goto LABEL_88;
          }

          v46 = CFArrayGetValueAtIndex(DateEntryArray, v44);
          TypeID = CFDictionaryGetTypeID();
          if (TypeID != CFGetTypeID(v46))
          {
            OUTLINED_FUNCTION_2_40();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v69, v70, v71);
            goto LABEL_99;
          }

          v77 = v44;
          v48 = CMBaseObjectGetDerivedStorage();
          CFDictionaryGetValue(v46, @"TaggedRangeMetadataKey_Class");
          if (FigCFEqual())
          {
            v49 = CFDictionaryGetValue(v46, @"TaggedRangeMetadataKey_MetadataArray");
            if (v49)
            {
              break;
            }
          }

LABEL_81:
          v44 = v77 + 1;
          if (DateEntryArray)
          {
            goto LABEL_52;
          }

LABEL_53:
          ;
        }

        v50 = v49;
        if (CFArrayGetCount(v49) < 1)
        {
          v52 = 0;
          v53 = 0;
LABEL_72:
          if (v53 | v52)
          {
            if (*(v48 + 400) || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(v48 + 400) = Mutable) != 0))
            {
              if (v53)
              {
                v57 = CFURLCreateWithString(allocator, v53, 0);
                metadw_appendUniqueInterstitialURL(v76, v57);
                DoesNotExistAndAddToQueue = 0;
                if (!v57)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                if (!v52)
                {
                  goto LABEL_81;
                }

                v57 = CFURLCreateWithString(allocator, v52, 0);
                OUTLINED_FUNCTION_27_4();
                DoesNotExistAndAddToQueue = metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(v58, v59, v60, v61, v62, v63, v64, 1);
                if (!v57)
                {
                  goto LABEL_78;
                }
              }

              CFRelease(v57);
LABEL_78:
              if (DoesNotExistAndAddToQueue)
              {
                goto LABEL_88;
              }

              goto LABEL_81;
            }
          }
        }

        else
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          do
          {
            v54 = CFArrayGetValueAtIndex(v50, v51);
            CFDictionaryGetValue(v54, @"key");
            if (FigCFEqual())
            {
              if (v53)
              {
                goto LABEL_85;
              }

              v53 = CFDictionaryGetValue(v54, @"value");
            }

            else
            {
              CFDictionaryGetValue(v54, @"key");
              if (FigCFEqual())
              {
                if (v52)
                {
LABEL_85:
                  OUTLINED_FUNCTION_2_40();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                  DoesNotExistAndAddToQueue = v65;
                  DateEntryArray = v73;
                  goto LABEL_78;
                }

                v52 = CFDictionaryGetValue(v54, @"value");
              }
            }

            ++v51;
          }

          while (v51 < CFArrayGetCount(v50));
          if (!v53)
          {
            DateEntryArray = v73;
            goto LABEL_72;
          }

          DateEntryArray = v73;
          if (!v52)
          {
            goto LABEL_72;
          }
        }

        OUTLINED_FUNCTION_2_40();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        DoesNotExistAndAddToQueue = v66;
        goto LABEL_78;
      }
    }

LABEL_88:
    v67 = v75;
    v12 = v72;
    if (!v72)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  DoesNotExistAndAddToQueue = v14;
  v67 = v75;
LABEL_89:
  CFRelease(v12);
LABEL_90:
  if (v67)
  {
    CFRelease(v67);
  }

  return DoesNotExistAndAddToQueue;
}

uint64_t metadw_parseJSONDataIntoAssetList(uint64_t a1, CMBlockBufferRef sourceBuffer)
{
  theArray = 0;
  PropertyListsFromJSONBlockBuffer = FigInterstitialCreatePropertyListsFromJSONBlockBuffer(sourceBuffer, &theArray, 0, 0, 0, 0);
  v4 = theArray;
  if (PropertyListsFromJSONBlockBuffer)
  {
    v8 = PropertyListsFromJSONBlockBuffer;
    if (!theArray)
    {
      return v8;
    }

    goto LABEL_9;
  }

  v5 = 0;
  if (!theArray)
  {
    goto LABEL_4;
  }

LABEL_3:
  for (i = CFArrayGetCount(v4); v5 < i; i = 0)
  {
    OUTLINED_FUNCTION_198_0();
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    metadw_appendUniqueInterstitialURL(a1, ValueAtIndex);
    ++v5;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_4:
    ;
  }

  v8 = 0;
  v4 = theArray;
  if (theArray)
  {
LABEL_9:
    CFRelease(v4);
  }

  return v8;
}

void metadw_contentKeyRequestDidSucceed(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = FigCFDictionaryGetValue();
  v17 = 0;
  ++*(DerivedStorage + 376);
  if (Value)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(Value, @"FHRP_HTTPFinalURL", AllocatorForMedia, &v17);
    }
  }

  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_24_5();
  metadw_publishMediaResourceRequestEvent(v12, v13, v14, v15, v16, 0, 0, a3, 0);
  metadw_checkIfDownloadIsComplete(a1);
}

void metadw_checkIfDownloadIsComplete(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 256) <= 2u)
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 360) == *(DerivedStorage + 352) && !*(DerivedStorage + 272))
    {
      *(DerivedStorage + 272) = 1;
      v4 = CMBaseObjectGetDerivedStorage();
      v5 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v5)
      {
        v6 = v5;
        v7 = OUTLINED_FUNCTION_7_15();
        if (v7)
        {
          v8 = v7;
          if (a1)
          {
            v9 = CFRetain(a1);
          }

          else
          {
            v9 = 0;
          }

          *v8 = v9;
          v8[1] = v6;
          dispatch_async_f(*(v4 + 136), v8, metadw_sendDidFinishLoadingPlaylistsCallbackCallbackOnCallbackQueue);
        }

        else
        {
          OUTLINED_FUNCTION_303();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, v40);
          if (v37)
          {
            CFRelease(v6);
          }
        }
      }
    }

    if (*(v3 + 368) == *(v3 + 376) && *(v3 + 360) == *(v3 + 352))
    {
      if (dword_1EAF16DD8)
      {
        OUTLINED_FUNCTION_147();
        v17 = OUTLINED_FUNCTION_126(qword_1EAF16DD0, v10, v11, v12, v13, v14, v15, v16, v38, v39, v40, *v41, v41[2], v41[3], v41[4]);
        v18 = os_log_type_enabled(v17, type);
        if (OUTLINED_FUNCTION_115_1(v18))
        {
          OUTLINED_FUNCTION_139();
          OUTLINED_FUNCTION_0_40();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v17, type, v24);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v25, v26, v27, v28, v29);
      }

      *(v3 + 256) = 3;
      FigStreamingAssetProgressMonitorMarkInitialEstimationOfExpectedBytesAsComplete(*(v3 + 264));
      v30 = CMBaseObjectGetDerivedStorage();
      v31 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v31)
      {
        v32 = v31;
        v33 = OUTLINED_FUNCTION_7_15();
        if (v33)
        {
          v34 = v33;
          if (a1)
          {
            v35 = CFRetain(a1);
          }

          else
          {
            v35 = 0;
          }

          *v34 = v35;
          v34[1] = v32;
          dispatch_async_f(*(v30 + 136), v34, metadw_sendDownloadSucceededCallbackOnCallbackQueue);
        }

        else
        {
          OUTLINED_FUNCTION_303();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, v40);
          if (v36)
          {
            CFRelease(v32);
          }
        }
      }
    }
  }
}

void metadw_httpReadCallback(uint64_t a1, int a2, uint64_t a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, char a7, uint64_t a8)
{
  v70 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v61 = 0;
  cf = 0;
  v15 = metadw_copyMetadataDownloaderFromRetainProxy(a3, &v61);
  v16 = v61;
  if (v15)
  {
    goto LABEL_30;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 240))
  {
    if (*(DerivedStorage + 256) != 1)
    {
      goto LABEL_28;
    }

    Value = CFDictionaryGetValue(*(DerivedStorage + 336), a2);
    if (Value)
    {
      v19 = Value;
      v58 = a4;
      v20 = Value[11];
      if (v20 == a1)
      {
        if (a8)
        {
          v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v21)
          {
            v21(a1, @"FHRP_ErrorReturned", *MEMORY[0x1E695E480], &cf);
            if (cf)
            {
              metadw_transitionToTerminalState(v16, cf);
              goto LABEL_26;
            }
          }

LABEL_25:
          metadw_transitionToTerminalStateWithOSStatus(v16, a8);
LABEL_26:
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_28;
        }

        v22 = a7 & 2;
        v23 = *(Value + 4);
        if ((v23 - 1) < 4)
        {
          v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v25)
          {
            v25(v20, @"FHRP_HTTPResponseHeaders", *MEMORY[0x1E695E480], &v60);
          }

          v26 = OUTLINED_FUNCTION_198_0();
          v29 = metadw_handlePlaylistFileData(v26, v27, v58, a5, a6, v28, v22);
          if (v29)
          {
            a8 = v29;
            goto LABEL_25;
          }

          if ((*(v19 + 4) - 2) > 2)
          {
            OUTLINED_FUNCTION_24_5();
          }

          OUTLINED_FUNCTION_26_7();
          v33 = metadw_publishMediaResourceRequestEvent(v16, a1, v30, 0, v31, v32, 0, 0, v55);
        }

        else
        {
          if (v23 != 6)
          {
            OUTLINED_FUNCTION_21_4();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, v56, v57);
            a8 = v24;
LABEL_23:
            if (v22)
            {
              if (dword_1EAF16DD8)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v38 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                if (OUTLINED_FUNCTION_115_1(v38))
                {
                  v39 = *(DerivedStorage + 152);
                  v40 = v19[3];
                  v62 = 136315906;
                  v63 = "metadw_httpReadCallback";
                  v64 = 2048;
                  v65 = v16;
                  v66 = 2114;
                  v67 = v39;
                  v68 = 2112;
                  v69 = v40;
                  LODWORD(v56) = 42;
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v41, v42, v43, v44, v45, os_log_and_send_and_compose_flags_and_os_log_type, 0, v46, &v62, v56);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_414(v47, v48, v49, v50, v51);
              }

              v52 = OUTLINED_FUNCTION_198_0();
              metadw_clearHTTPRequestState(v52, v53);
              OUTLINED_FUNCTION_29_5();
              goto LABEL_28;
            }

            if (a8)
            {
              goto LABEL_25;
            }

            goto LABEL_28;
          }

          v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v34)
          {
            v34(v20, @"FHRP_HTTPResponseHeaders", *MEMORY[0x1E695E480], &v60);
          }

          v35 = OUTLINED_FUNCTION_198_0();
          v33 = metadw_handleAssetListJSONFileData(v35, v36, v58, a5, a6, v22);
        }

        a8 = v33;
        if (v33)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }
  }

  OUTLINED_FUNCTION_21_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  a8 = v54;
  if (v54)
  {
    goto LABEL_25;
  }

LABEL_28:
  if (v60)
  {
    CFRelease(v60);
  }

LABEL_30:
  if (v16)
  {
    CFRelease(v16);
  }
}

uint64_t metadw_handlePlaylistFileData(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3, size_t a4, size_t a5, __CFHTTPMessage *a6, int a7)
{
  v41 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (a3)
  {
    v15 = (a2 + 112);
    v14 = *(a2 + 112);
    if (!v14)
    {
      Empty = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, (a2 + 112));
      if (Empty)
      {
        return Empty;
      }

      v14 = *v15;
    }

    Empty = CMBlockBufferAppendBufferReference(v14, a3, a4, a5, 0);
    if (Empty)
    {
      return Empty;
    }

    if (!FigStreamingPlaylistVerifyM3UPlaylist(*v15, &v41) && v41)
    {
      return 4294951694;
    }
  }

  if (!a7)
  {
    return 0;
  }

  Empty = metadw_processPlaylistCommon(a1, a2);
  if (Empty)
  {
    return Empty;
  }

  v19 = CMBaseObjectGetDerivedStorage();
  cf.isa = 0;
  cf.info = 0;
  v20 = FigCFHTTPCreateURLString(*(a2 + 24));
  if (!v20)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, UpTimeNanoseconds, DerivedStorage);
    v17 = v36;
    v26 = v40;
    if (v36)
    {
      return v17;
    }

    goto LABEL_29;
  }

  v21 = v20;
  if (a6 && (DataLength = CMBlockBufferGetDataLength(*(a2 + 112)), CacheForStream = FigCFHTTPCreateCacheHeaders(v21, DataLength, a6, 0, &cf), CacheForStream))
  {
LABEL_42:
    v17 = CacheForStream;
LABEL_43:
    v26 = DerivedStorage;
  }

  else
  {
    switch(*(a2 + 16))
    {
      case 1:
        v24 = FigStreamingCacheSetMasterPlaylist(*(v19 + 24), *(a2 + 112), cf.isa);
        goto LABEL_20;
      case 2:
      case 3:
      case 4:
        CacheForStream = metadw_createCacheForStream(a1, a2, &cf.info);
        if (CacheForStream)
        {
          goto LABEL_42;
        }

        v24 = FigStreamingCacheMediaStreamSetPlaylist(*(v19 + 24), cf.info, *(a2 + 112), cf.isa);
LABEL_20:
        v17 = v24;
        if (v24)
        {
          goto LABEL_43;
        }

        goto LABEL_24;
      case 5:
      case 6:
        OUTLINED_FUNCTION_429();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, UpTimeNanoseconds, DerivedStorage);
        v17 = v25;
        goto LABEL_24;
      default:
        v17 = 0;
LABEL_24:
        v26 = DerivedStorage;
        *(a2 + 136) = 1;
        v27 = *(a2 + 112);
        if (v27)
        {
          CFRelease(v27);
          *(a2 + 112) = 0;
        }

        break;
    }
  }

  CFRelease(v21);
  if (cf.isa)
  {
    CFRelease(cf.isa);
  }

  if (!v17)
  {
LABEL_29:
    if (*(a2 + 16) == 1 && *(v26 + 416) && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v28 = OUTLINED_FUNCTION_19_6();
      v29(v28);
    }

    if (*(v26 + 416) && *(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v30 = OUTLINED_FUNCTION_19_6();
      v31(v30);
    }

    v32 = *(a2 + 16);
    v33 = *(CMBaseObjectGetDerivedStorage() + 416);
    if (v33)
    {
      if ((v32 - 2) <= 2)
      {
        v34 = *off_1E7481420[v32 - 2];
        if (v34)
        {
          v35 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v35)
          {
            v35(v33, 0x1F0B64618, v34, 1);
          }
        }
      }
    }

    return 0;
  }

  return v17;
}

uint64_t metadw_handleAssetListJSONFileData(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3, size_t a4, size_t a5, int a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    if (!a6)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v13 = *(a2 + 112);
  if (!v13)
  {
    result = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, (a2 + 112));
    if (result)
    {
      return result;
    }

    v13 = *(a2 + 112);
  }

  result = CMBlockBufferAppendBufferReference(v13, a3, a4, a5, 0);
  if (a6 && !result)
  {
LABEL_9:
    v15 = *(a2 + 112);
    if (v15)
    {
      result = metadw_parseJSONDataIntoAssetList(a1, v15);
      if (!result)
      {
        v16 = *(DerivedStorage + 24);
        v17 = CFURLGetString(*(a2 + 24));
        v18 = *(a2 + 112);

        return FigStreamingCacheSetInterstitialAssetList(v16, v17, v18);
      }

      return result;
    }

    return 0;
  }

  return result;
}

void metadw_customURLReadCallback(uint64_t a1, const void *a2, uint64_t a3, OpaqueCMBlockBuffer *a4, char a5, unint64_t a6)
{
  v7 = v6;
  v67 = *MEMORY[0x1E69E9840];
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  cf = 0;
  if (metadw_copyMetadataDownloaderFromRetainProxy(a1, &v58))
  {
    goto LABEL_59;
  }

  v12 = v58;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240) || (Value = CFDictionaryGetValue(*(DerivedStorage + 344), a2)) == 0)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    ResourceRequestForMetadataItem = v49;
    a4 = 0;
    goto LABEL_45;
  }

  v15 = Value;
  v16 = *(DerivedStorage + 256);
  if (v16 == 1 || v16 == 3 && Value[4] == 5)
  {
    HTTPStatusCode = FigCustomURLResponseInfoGetHTTPStatusCode();
    if ((!HTTPStatusCode || HTTPStatusCode == -17360) && !FigCFHTTPCreateCFErrorFromHTTPStatusCode(v56, &cf))
    {
      if (a6 | cf)
      {
        if (a6)
        {
          v18 = a6;
        }

        else
        {
          v18 = cf;
        }

        v19 = CFRetain(v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = v15[4];
      if ((v20 - 1) >= 4)
      {
        if (v20 == 6)
        {
          v46 = OUTLINED_FUNCTION_198_0();
          metadw_handleAssetListJSONFileData(v46, v47, a4, 0, 0, a5 & 1);
          OUTLINED_FUNCTION_23_6();
          if (v48)
          {
            goto LABEL_37;
          }
        }

        else
        {
          OUTLINED_FUNCTION_429();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v52, v53);
          OUTLINED_FUNCTION_23_6();
        }

        goto LABEL_35;
      }

      if (v19)
      {
        a4 = 0;
        v7 = 0;
        goto LABEL_63;
      }

      if ((a5 & 1) != 0 && dword_1EAF16DD8)
      {
        v53 = a4;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v22 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_16_1(v22))
        {
          v23 = *(DerivedStorage + 152);
          v24 = *(v15 + 3);
          v59 = 136315906;
          v60 = "metadw_customURLReadCallback";
          v61 = 2048;
          v62 = v12;
          v63 = 2114;
          v64 = v23;
          v65 = 2112;
          v66 = v24;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v25, v26, v27, v28, v29, os_log_and_send_and_compose_flags_and_os_log_type, 0, v30, &v59, 42);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v32, v33, v34, v35, v36);
        v19 = 0;
      }

      if (!FigCustomURLResponseInfoCopyRequestInfo())
      {
        v37 = FigCustomURLResponseInfoCopyHTTPHeaders();
        if (!v37 || v37 == -17360)
        {
          if ((a5 & 1) != 0 && FigCFHTTPIsStatusCodeRedirect(v56))
          {
            v38 = FigCFHTTPCopyRedirectLocationFromHTTPHeaders(v55);
            a4 = v38;
            if (v38)
            {
              v39 = *(v15 + 3);
              *(v15 + 3) = v38;
              CFRetain(v38);
              if (v39)
              {
                CFRelease(v39);
              }

              v40 = OUTLINED_FUNCTION_198_0();
              ResourceRequestForMetadataItem = metadw_createResourceRequestForMetadataItem(v40, v41);
              v7 = 0;
              if (!ResourceRequestForMetadataItem)
              {
                goto LABEL_35;
              }

LABEL_48:
              metadw_transitionToTerminalStateWithOSStatus(v12, ResourceRequestForMetadataItem);
              goto LABEL_49;
            }

            OUTLINED_FUNCTION_429();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v52, v53);
            ResourceRequestForMetadataItem = v50;
LABEL_45:
            v7 = 0;
            if (!ResourceRequestForMetadataItem)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          }

          v7 = FigCFHTTPCreateHTTPMessageFromHTTPResponseHeaders(v55);
          v42 = OUTLINED_FUNCTION_198_0();
          ResourceRequestForMetadataItem = metadw_handlePlaylistFileData(v42, v43, a4, 0, 0, v7, a5 & 1);
          a4 = 0;
          if (ResourceRequestForMetadataItem)
          {
            goto LABEL_48;
          }

LABEL_35:
          if (a5)
          {
            v44 = OUTLINED_FUNCTION_198_0();
            metadw_clearCustomURLRequestState(v44, v45);
            OUTLINED_FUNCTION_29_5();
            ResourceRequestForMetadataItem = 0;
          }

LABEL_37:
          if (!v19)
          {
            if (!ResourceRequestForMetadataItem)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          }

LABEL_63:
          metadw_transitionToTerminalState(v12, v19);
          CFRelease(v19);
          goto LABEL_49;
        }
      }
    }

    OUTLINED_FUNCTION_23_6();
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_23_6();
LABEL_49:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v7)
  {
    CFRelease(v7);
  }

LABEL_59:
  if (v58)
  {
    CFRelease(v58);
  }
}

void metadw_pauseDispatch(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DD8)
  {
    OUTLINED_FUNCTION_147();
    v11 = OUTLINED_FUNCTION_126(qword_1EAF16DD0, v4, v5, v6, v7, v8, v9, v10, v35, v37, v39, *v41, v41[2], v41[3], v41[4]);
    v19 = OUTLINED_FUNCTION_34_5(v11, v12, v13, v14, v15, v16, v17, v18, v36, v38, v40, v42, v43, v44, v45);
    if (OUTLINED_FUNCTION_16_1(v19))
    {
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_61_5(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v28, v29, v30, v31, v32);
  }

  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v37, v39);
    v33 = v34;
    if (v34)
    {
      metadw_transitionToTerminalStateWithOSStatus(*a1, v34);
    }
  }

  else
  {
    if (*(DerivedStorage + 256) <= 1u)
    {
      *(DerivedStorage + 256) = 2;
      metadw_cancelResourceRequestForMetadataItems(v2);
    }

    v33 = 0;
  }

  *(a1 + 6) = v33;
}

void metadw_stopDispatch(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DD8)
  {
    OUTLINED_FUNCTION_147();
    v11 = OUTLINED_FUNCTION_126(qword_1EAF16DD0, v4, v5, v6, v7, v8, v9, v10, v35, v37, v39, *v41, v41[2], v41[3], v41[4]);
    v19 = OUTLINED_FUNCTION_34_5(v11, v12, v13, v14, v15, v16, v17, v18, v36, v38, v40, v42, v43, v44, v45);
    if (OUTLINED_FUNCTION_16_1(v19))
    {
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_61_5(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v28, v29, v30, v31, v32);
  }

  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v37, v39);
    v33 = v34;
    if (v34)
    {
      metadw_transitionToTerminalStateWithOSStatus(*a1, v34);
    }
  }

  else
  {
    if (*(DerivedStorage + 256) <= 2u)
    {
      *(DerivedStorage + 256) = 5;
      metadw_cancelResourceRequestForMetadataItems(v2);
    }

    v33 = 0;
  }

  *(a1 + 6) = v33;
}

BOOL metadw_configureMediaSelectionsForAlternateDispatch_cold_3(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t FigWriteHLSfMP4SecurityInfoIncludingAtomHeader(int a1, unsigned int a2, unsigned int a3, unsigned int a4, const __CFData *a5, void *a6, size_t *a7, size_t a8, void *a9)
{
  theBuffer = 0;
  BlockBufferContainingHLSfMP4SecurityInfo = hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo(a1, a2, a3, a4, a5, a6, a8, &theBuffer);
  v12 = theBuffer;
  if (BlockBufferContainingHLSfMP4SecurityInfo)
  {
    goto LABEL_7;
  }

  v13 = a9;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (a7)
  {
    *a7 = DataLength;
  }

  if (a9)
  {
    if (DataLength > a8)
    {
      OUTLINED_FUNCTION_2_41();
      FigSignalErrorAtGM(v16);
    }

    else
    {
      BlockBufferContainingHLSfMP4SecurityInfo = CMBlockBufferCopyDataBytes(v12, 0, DataLength, a9);
    }

LABEL_7:
    v13 = BlockBufferContainingHLSfMP4SecurityInfo;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t FigCreateHLSfMP4SecurityInfoData(int a1, int a2, unsigned int a3, unsigned int a4, const __CFData *a5, void *a6, __CFData **a7)
{
  theBuffer = 0;
  if (a2 == 1869641075)
  {
    v8 = 1332770163;
  }

  else
  {
    v8 = a2;
  }

  if (a2 == 1718378851)
  {
    v9 = 1716281667;
  }

  else
  {
    v9 = v8;
  }

  BlockBufferContainingHLSfMP4SecurityInfo = hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo(a1, v9, a3, a4, a5, a6, 0, &theBuffer);
  v11 = theBuffer;
  if (BlockBufferContainingHLSfMP4SecurityInfo)
  {
    goto LABEL_15;
  }

  v12 = CMBlockBufferGetDataLength(theBuffer) - 8;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v12);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_2_41();
    FigSignalErrorAtGM(v18);
LABEL_15:
    v16 = BlockBufferContainingHLSfMP4SecurityInfo;
    goto LABEL_11;
  }

  v14 = Mutable;
  CFDataSetLength(Mutable, v12);
  MutableBytePtr = CFDataGetMutableBytePtr(v14);
  v16 = CMBlockBufferCopyDataBytes(v11, 8uLL, v12, MutableBytePtr);
  if (v16)
  {
    CFRelease(v14);
  }

  else
  {
    *a7 = v14;
  }

LABEL_11:
  if (v11)
  {
    CFRelease(v11);
  }

  return v16;
}

uint64_t FigParseHLSfMP4SecurityInfoAndCopyIV(int a1, uint64_t a2, uint64_t a3, int *a4, _DWORD *a5, _DWORD *a6, _OWORD *a7, void *a8)
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  *cf = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  LODWORD(v28) = a1;
  v13 = FigAtomStreamInitWithMemoryBlock();
  if (v13)
  {
    goto LABEL_32;
  }

  hlsfmp4_ParseChildAtoms(&v21, 3, &hlsfmp4_parse_sinf_atomDispatch, &v28);
  if (v13)
  {
    goto LABEL_32;
  }

  v14 = DWORD1(v28);
  if (!DWORD1(v28))
  {
    goto LABEL_31;
  }

  v15 = DWORD2(v28);
  if (v28 == 1986618469)
  {
    if (DWORD2(v28))
    {
      v16 = HIDWORD(v28);
      if (HIDWORD(v28) + DWORD2(v28) == 10)
      {
        if (!a4)
        {
          goto LABEL_8;
        }

LABEL_21:
        if (DWORD1(v28) == 1716281667)
        {
          v14 = 1718378851;
        }

        else if (DWORD1(v28) == 1332770163)
        {
          v14 = 1869641075;
        }

        *a4 = v14;
        if (!a5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    goto LABEL_31;
  }

  if (DWORD2(v28) || (v15 = HIDWORD(v28)) != 0)
  {
LABEL_31:
    OUTLINED_FUNCTION_429();
    OUTLINED_FUNCTION_0_42();
    FigSignalErrorAtGM(v20, v21, v22, v23, v24, v25, v26, v27);
LABEL_32:
    v18 = v13;
    goto LABEL_25;
  }

  v16 = 0;
  if (a4)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (a5)
  {
LABEL_9:
    *a5 = v15;
  }

LABEL_10:
  if (a6)
  {
    *a6 = v16;
  }

  if (a7)
  {
    *a7 = v29;
  }

  if (a8)
  {
    v17 = cf[0];
    if (cf[0])
    {
      v17 = CFRetain(cf[0]);
    }

    v18 = 0;
    *a8 = v17;
  }

  else
  {
    v18 = 0;
  }

LABEL_25:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v18;
}

double hlsfmp4_parse_frma(uint64_t a1)
{
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_0_42();
    return FigSignalErrorAtGM(v2);
  }

  return result;
}

double hlsfmp4_parse_schm(uint64_t a1)
{
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_0_42();
    return FigSignalErrorAtGM(v2, 0);
  }

  return result;
}

double hlsfmp4_ParseChildAtoms(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v20 = 0;
  v9 = (a3 + 8);
  while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    if (a2 >= 1)
    {
      v11 = 0;
      v12 = v9;
      v13 = v9;
      while (*(v13 - 2))
      {
        ++v11;
        v13 += 2;
        v12 += 2;
        if (a2 == v11)
        {
          goto LABEL_12;
        }
      }

      v14 = 1 << v11;
      if ((*(v13 - 4) & 1) != 0 && (v14 & v8) != 0)
      {
        OUTLINED_FUNCTION_376();
        OUTLINED_FUNCTION_0_42();
        return FigSignalErrorAtGM(v19, 0);
      }

      if ((*v13)(a1, a4))
      {
        return result;
      }

      v8 |= v14;
    }

LABEL_12:
    if (FigAtomStreamAdvanceToNextAtom())
    {
      if (a2 >= 1)
      {
        v15 = 0;
        v16 = (a3 + 4);
        do
        {
          v17 = *v16;
          v16 += 16;
          if ((v17 & 2) != 0 && ((v8 >> v15) & 1) == 0)
          {
            OUTLINED_FUNCTION_376();
            OUTLINED_FUNCTION_0_42();
            result = FigSignalErrorAtGM(v18, v20);
          }

          ++v15;
        }

        while (a2 != v15);
      }

      return result;
    }
  }

  return result;
}

double hlsfmp4_parse_cspn(uint64_t a1)
{
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_0_42();
    return FigSignalErrorAtGM(v2, 0, 0);
  }

  return result;
}

double hlsfmp4_parse_tenc(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = 0uLL;
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    FigAtomStreamGetCurrentAtomVersionAndFlags();
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_0_42();
    return FigSignalErrorAtGM(v3);
  }

  return result;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_41();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_41();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigWriteHLSfMP4SecurityInfoPlaceholderIncludingAtomHeader_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_41();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCreateHLSfMP4SecurityInfoPlaceholderData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_41();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void videoMentorDebugDumpGraph(uint64_t *a1, const char *a2)
{
  v4 = OUTLINED_FUNCTION_265();
  Mutable = CFSetCreateMutable(v4, v5, v6);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = OUTLINED_FUNCTION_265();
    v11 = CFDictionaryCreateMutable(v9, v10, 0, 0);
    if (v11)
    {
      v12 = v11;
      v13 = fopen(a2, "w+");
      if (v13)
      {
        v14 = v13;
        fwrite("digraph dependencyGraph {\n", 0x1AuLL, 1uLL, v13);
        fwrite("node [ style = filled ]\n", 0x18uLL, 1uLL, v14);
        videoMentorDebugDumpGraphNode(v14, v8, v12, *a1);
        fwrite("}\n", 2uLL, 1uLL, v14);
        fclose(v14);
      }

      CFRelease(v8);
    }

    else
    {
      v12 = v8;
    }

    CFRelease(v12);
  }
}

void videoMentorThreadForwardPlayback(uint64_t a1, const void *a2, CMTime *a3, CMTime *a4, CMTime *Mutable, int a6, int a7, int a8, float a9, float a10, char a11, int a12, char a13, char a14, char a15, char a16, char a17, char a18, CFArrayRef *a19, uint64_t a20, char a21, char a22, char *cf)
{
  LODWORD(v359) = a8;
  v367 = a3;
  value = v23;
  v409 = a4;
  v410[0] = a2;
  v407 = 0;
  v408 = 0;
  v405 = 0;
  v406 = 0;
  v404 = 0;
  v403 = 1;
  v402 = 0;
  v400 = *MEMORY[0x1E6960C80];
  v401 = *(MEMORY[0x1E6960C80] + 16);
  v398 = *MEMORY[0x1E6960C70];
  v32 = *(MEMORY[0x1E6960C70] + 16);
  v399 = v32;
  v396 = v398;
  v397 = v32;
  v395 = 0;
  v394 = 0;
  *&v393.value = v398;
  v393.epoch = v32;
  v33 = a10 == 1.0 || a9 == 0.0;
  v34 = !v33;
  HIDWORD(v359) = v34;
  v392 = 0;
  v390 = v398;
  v391 = v32;
  v384 = 0;
  *&v389[12] = 0u;
  v385 = v398;
  v386 = v32;
  v387 = v398;
  v388 = v32;
  *&v389[16] = v32;
  *v389 = v398;
  v389[25] = 0;
  v382 = 0;
  v383 = 0;
  *&v381.value = v398;
  v381.epoch = v32;
  *&v380.value = v398;
  v380.epoch = v32;
  *&v379.value = v398;
  v379.epoch = v32;
  v364 = v398;
  *&v378.value = v398;
  v378.epoch = v32;
  v35 = MEMORY[0x1E695FF58];
  v36 = *MEMORY[0x1E695FF58];
  v37 = (a6 & 0xFFFFFFFD) == 1 && v36 == 1;
  ++*(a1 + 924);
  if (v37)
  {
    kdebug_trace();
    v36 = *v35;
  }

  v38 = cf;
  if (v36 == 1)
  {
    kdebug_trace();
  }

  *(a1 + 492) = *(a1 + 488) != 0;
  *(a1 + 524) = 0;
  *(a1 + 496) = a6;
  *(a1 + 500) = a7;
  v39 = *(a1 + 512);
  *(a1 + 512) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  HIDWORD(v361) = a13;
  v40 = v367;
  if (v39)
  {
    CFRelease(v39);
  }

  v363 = a20;
  HIDWORD(v366) = a15;
  v41 = &unk_1EAF16000;
  if (!a16 || (time1 = *v367, time2 = *(a1 + 404), CMTimeCompare(&time1, &time2)))
  {
    OUTLINED_FUNCTION_12_12();
    goto LABEL_22;
  }

  v40 = &unk_1EAF16000;
  v41 = cf;
  v38 = v23;
  value = *(a1 + 528);
  if (!value)
  {
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_48_5();
    goto LABEL_22;
  }

  LODWORD(v361) = a16;
  v42 = v410[0];
  if (v410[0])
  {
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_48_5();
    goto LABEL_23;
  }

  v103 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v103)
  {
    LODWORD(v42) = -12782;
    goto LABEL_144;
  }

  LODWORD(v42) = v103(value, v410);
  if (v42)
  {
LABEL_144:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v267, v273, v278);
    OUTLINED_FUNCTION_8_15();
    v88 = 0;
LABEL_145:
    v38 = cf;
    goto LABEL_87;
  }

  if (!*(*(OUTLINED_FUNCTION_54_5() + 16) + 168))
  {
    OUTLINED_FUNCTION_8_15();
    LODWORD(v42) = -12782;
    v88 = 1;
    goto LABEL_145;
  }

  value = v23;
  v38 = cf;
  v104 = OUTLINED_FUNCTION_10_13();
  v108 = v105(v104);
  if (v108)
  {
    goto LABEL_148;
  }

  OUTLINED_FUNCTION_38_3();
  if (!v33)
  {
    v87 = 0;
    LODWORD(v42) = 0;
    v88 = 1;
    goto LABEL_150;
  }

  v41 = &unk_1EAF16000;
  LODWORD(allocator) = 0;
  v106 = *(a1 + 380);
  v40 = v367;
  v367->epoch = *(a1 + 396);
  *&v367->value = v106;
  v393 = *(a1 + 380);
  OUTLINED_FUNCTION_33_6();
LABEL_22:
  v42 = v410[0];
  if (v410[0])
  {
    goto LABEL_23;
  }

  time1 = *v40;
  CursorForPresentationTimeStamp = videoMentorCreateCursorForPresentationTimeStamp(a1, a13, &time1.value, v410);
  if (CursorForPresentationTimeStamp)
  {
    goto LABEL_67;
  }

  v42 = v410[0];
  if (!a21)
  {
    OUTLINED_FUNCTION_33_6();
    goto LABEL_23;
  }

  memset(&time1, 0, sizeof(time1));
  memset(&time2, 0, sizeof(time2));
  v89 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v89)
  {
    LODWORD(v42) = -12782;
    goto LABEL_140;
  }

  LODWORD(v42) = v89(v42, &time1);
  if (v42)
  {
LABEL_140:
    OUTLINED_FUNCTION_4_33();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_29();
  if (!v33)
  {
LABEL_79:
    OUTLINED_FUNCTION_4_33();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_148:
    LODWORD(v42) = v108;
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_5_29();
  if (OUTLINED_FUNCTION_23_7(v90, v91, v92, v93, v94, v95, v96, v97, v267, v273, v278, v281, v285, v288, v291, v294, v297, v300, v303, v306, v309, v311, v313, v316, v319, v322, v324, v327, v330, v332, v335, v337, v339, v342, v345, v348, v350, v352, allocator, v359, v361, a20, v364, *(&v364 + 1), v365, v366, v367, v368, v369.value, *&v369.timescale, v369.epoch, v370, v371.value, *&v371.timescale, v371.epoch, v372, *&rhs.value, rhs.epoch, v374, lhs.value))
  {
    PresentationTimeStamp = FigSampleCursorStepInPresentationOrderAndReportStepsTaken(v410[0], 1, 0);
    if (PresentationTimeStamp || (PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(v410[0], &time2)) != 0)
    {
      LODWORD(v42) = PresentationTimeStamp;
      OUTLINED_FUNCTION_4_33();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_141:
      OUTLINED_FUNCTION_8_15();
      v87 = 0;
      v88 = 1;
      goto LABEL_88;
    }

    OUTLINED_FUNCTION_29();
    if (!v33)
    {
      goto LABEL_79;
    }

    *v40 = time2;
  }

  OUTLINED_FUNCTION_33_6();
  v42 = v410[0];
LABEL_23:
  OUTLINED_FUNCTION_29();
  if (v33)
  {
    goto LABEL_25;
  }

  v86 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v86)
  {
    LODWORD(v42) = -12782;
    goto LABEL_73;
  }

  LODWORD(v42) = v86(v42, v40);
  if (v42)
  {
LABEL_73:
    OUTLINED_FUNCTION_4_33();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_29();
  if (!v33)
  {
    OUTLINED_FUNCTION_4_33();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_67;
  }

  v42 = v410[0];
LABEL_25:
  OUTLINED_FUNCTION_19_7(v43, v44, v45, v46, v47, v48, v49, v50, v51, v267, v273, v278, v281, v285, v288, v291, v294, v297, v300, v303, v306, v309, v311, v313, v316, v319, v322, v324, v327, v330, v332, v335, v337, v339, v342, v345, v348, v350, v352, allocator, v359, v361, v363, v52);
  v53 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v53)
  {
LABEL_71:
    LODWORD(v42) = -12782;
    goto LABEL_86;
  }

  v54 = v53(v42, &time1);
  if (v54)
  {
LABEL_471:
    LODWORD(v42) = v54;
    goto LABEL_86;
  }

  v55 = *(*(OUTLINED_FUNCTION_54_5() + 16) + 8);
  if (!v55)
  {
    LODWORD(v42) = -12782;
    goto LABEL_85;
  }

  v42 = v55(v42, &v407);
  if (v42)
  {
LABEL_85:
    OUTLINED_FUNCTION_4_33();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_86;
  }

  *&time2.value = v364;
  time2.epoch = v32;
  if (!*(*(OUTLINED_FUNCTION_29_6() + 16) + 168))
  {
LABEL_146:
    LODWORD(v42) = -12782;
    goto LABEL_147;
  }

  LODWORD(v346) = a22;
  v343 = a19;
  LODWORD(v336) = a18;
  LODWORD(v338) = a17;
  HIDWORD(v338) = a14;
  HIDWORD(v336) = a12;
  LODWORD(v340) = a11;
  v353 = value;
  while (1)
  {
    v56 = OUTLINED_FUNCTION_10_13();
    v58 = v57(v56);
    if (v58)
    {
      LODWORD(v42) = v58;
      goto LABEL_147;
    }

    OUTLINED_FUNCTION_38_3();
    if (!v33)
    {
      break;
    }

    v68 = *(*(OUTLINED_FUNCTION_29_6() + 16) + 40);
    if (!v68)
    {
      goto LABEL_71;
    }

    v54 = v68(v42, &time2);
    value = v353;
    if (v54)
    {
      goto LABEL_471;
    }

    OUTLINED_FUNCTION_37_4();
    rhs = time1;
    if (CMTimeCompare(&lhs, &rhs) < 0)
    {
      OUTLINED_FUNCTION_37_4();
      if ((OUTLINED_FUNCTION_23_7(v69, v70, v71, v72, v73, v74, v75, v76, v268, v274, v279, v282, v286, v289, v292, v295, v298, v301, v304, v307, v310, v312, v314, v317, v320, v323, v325, v328, v331, v333, v336, v338, v340, v343, v346, v349, v351, v353, allocatora, v360, v362, v363, v364, *(&v364 + 1), v365, v366, v367, v368, v369.value, *&v369.timescale, v369.epoch, v370, v371.value, *&v371.timescale, v371.epoch, v372, *&rhs.value, rhs.epoch, v374, lhs.value) & 0x80000000) == 0)
      {
        if (v405)
        {
          CFRelease(v405);
          v405 = 0;
        }

        v77 = *(*(OUTLINED_FUNCTION_29_6() + 16) + 8);
        if (!v77)
        {
          LODWORD(v42) = -12782;
          goto LABEL_147;
        }

        v78 = v77(v42, &v405);
        if (v78)
        {
          LODWORD(v42) = v78;
LABEL_147:
          OUTLINED_FUNCTION_4_33();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_86:
          v88 = v365;
          OUTLINED_FUNCTION_8_15();
LABEL_87:
          v87 = 0;
          goto LABEL_88;
        }

        time1 = time2;
      }
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
    {
      break;
    }

    value = v410[0];
    v351 = v407;
    v79 = *(CMBaseObjectGetVTable() + 16);
    if (v79)
    {
      v42 = v79;
      if (!value)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v42 = 0;
      if (!value)
      {
LABEL_48:
        v80 = 0;
        goto LABEL_49;
      }
    }

    v80 = *(CMBaseObjectGetVTable() + 16);
LABEL_49:
    if (v42 == v80)
    {
      v82 = *(v42 + 80);
      v42 += 80;
      v81 = v82;
      if (v82)
      {
        if (v81(v351, value, 1))
        {
          break;
        }
      }
    }

    if (*(a1 + 116))
    {
      LODWORD(v42) = -1;
      goto LABEL_86;
    }

    *&time2.value = v364;
    time2.epoch = v32;
    value = v353;
    if (!*(*(OUTLINED_FUNCTION_29_6() + 16) + 168))
    {
      goto LABEL_146;
    }
  }

  v83 = v407;
  if (v407)
  {
    CFRelease(v407);
    v407 = 0;
  }

  v84 = v405;
  v42 = HIDWORD(v362);
  v334 = v38;
  if (v405)
  {
    if (v365)
    {
      v85 = v353;
      if (v410[0])
      {
        CFRelease(v410[0]);
        v84 = v405;
      }
    }

    else
    {
      v85 = v353;
    }

    v410[0] = v84;
    v405 = 0;
    OUTLINED_FUNCTION_33_6();
  }

  else
  {
    v85 = v353;
  }

  if (!allocatora)
  {
    goto LABEL_172;
  }

  OUTLINED_FUNCTION_19_7(v83, v59, v60, v61, v62, v63, v64, v65, v66, v268, v274, v279, v282, v286, v289, v292, v295, v298, v301, v304, v307, v310, v312, v314, v317, v320, v323, v325, v328, v331, v334, v336, v338, v340, v343, v346, v349, v351, v353, allocatora, v360, v362, v363, v67);
  v109 = *(*(OUTLINED_FUNCTION_54_5() + 16) + 40);
  if (!v109)
  {
    LODWORD(v42) = -12782;
    goto LABEL_212;
  }

  LODWORD(v42) = v109(v42, &time1);
  if (v42)
  {
LABEL_212:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v268, v274, v279);
    goto LABEL_213;
  }

  OUTLINED_FUNCTION_29();
  if (!v33)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v41 + 446), 4294967294, "<<<< VideoMentor >>>>", 7221, v85);
    goto LABEL_237;
  }

  time2 = *v40;
  OUTLINED_FUNCTION_5_29();
  if (CMTimeCompare(&time2, &lhs) < 0)
  {
    time2 = *v40;
    OUTLINED_FUNCTION_5_29();
    FigSimpleMutexLock();
    v110 = *(a1 + 64);
    if (v110)
    {
      v110(*(a1 + 72), v334, 0, &time2, &lhs);
    }

    v111 = FigSimpleMutexUnlock();
    OUTLINED_FUNCTION_47_3(v111, v112, v113, v114, v115, v116, v117, v118, v268, v274, v279, v282, v286, v289, v292, v295, v298, v301, v304, v307, v310, v312, v314, v317, v320, v323, v325, v328, v331, v334, v336, v338, v340, v343, v346, v349, v351, v353, allocatorb, v360, v362, v363, v364, *(&v364 + 1), v365, v366, v367, v368, v369.value, *&v369.timescale, v369.epoch, v370, v371.value, *&v371.timescale, v371.epoch, v372, time2.value, *&time2.timescale, time2.epoch, v374, *&lhs.value);
    if (!videoMentorEnqueueTimestampIntervalMarker(a1, &rhs.value, &v371.value))
    {
      v40 = v367;
      goto LABEL_171;
    }

    OUTLINED_FUNCTION_0_43();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v264, v265, "<<<< VideoMentor >>>>", 7235, v266);
LABEL_237:
    LODWORD(v42) = v141;
LABEL_213:
    OUTLINED_FUNCTION_8_15();
    v87 = 0;
    v88 = v365;
    v38 = v334;
    goto LABEL_88;
  }

LABEL_171:
  v42 = HIDWORD(v362);
LABEL_172:
  v393 = *v40;
  value = v409;
  if (v409)
  {
    HIDWORD(v362) = 0;
    v42 = v409;
    v38 = v334;
    goto LABEL_174;
  }

  OUTLINED_FUNCTION_29();
  v38 = v334;
  if (!v33)
  {
    HIDWORD(v362) = 0;
LABEL_245:
    v122 = Mutable;
    OUTLINED_FUNCTION_44_6();
    v138 = v33;
LABEL_248:
    HIDWORD(v331) = v138;
    goto LABEL_252;
  }

  memset(&time1, 0, sizeof(time1));
  time2 = *Mutable;
  LODWORD(v42) = videoMentorCreateCursorForPresentationTimeStamp(a1, v42, &time2.value, &v409);
  if (v42)
  {
    goto LABEL_74;
  }

  v139 = FigSampleCursorGetPresentationTimeStamp(v409, &time1);
  if (v139)
  {
    goto LABEL_218;
  }

  OUTLINED_FUNCTION_29();
  if (!v33)
  {
    OUTLINED_FUNCTION_0_43();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_67:
    LODWORD(v42) = CursorForPresentationTimeStamp;
LABEL_74:
    OUTLINED_FUNCTION_8_15();
    v87 = 0;
    v88 = v365;
    goto LABEL_88;
  }

  time2 = time1;
  lhs = *Mutable;
  if (!CMTimeCompare(&time2, &lhs))
  {
    v139 = FigSampleCursorStepInPresentationOrderAndReportStepsTaken(v409, -1, 0);
    if (v139)
    {
LABEL_218:
      LODWORD(v42) = v139;
      OUTLINED_FUNCTION_0_43();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_74;
    }
  }

  v42 = v409;
  HIDWORD(v362) = 1;
  if (!v409)
  {
    goto LABEL_245;
  }

LABEL_174:
  OUTLINED_FUNCTION_29();
  if (!v33)
  {
    v140 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v140)
    {
      LODWORD(v42) = v140(v42, Mutable);
      if (!v42)
      {
        OUTLINED_FUNCTION_29();
        if (!v33)
        {
          OUTLINED_FUNCTION_0_43();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v268, v274, v279);
LABEL_243:
          LODWORD(v42) = v127;
          goto LABEL_233;
        }

        v42 = v409;
        goto LABEL_176;
      }
    }

    else
    {
      LODWORD(v42) = -12782;
    }

    goto LABEL_232;
  }

LABEL_176:
  OUTLINED_FUNCTION_44_6();
  v120 = v33;
  if (v119 || !v42)
  {
    HIDWORD(v331) = v120;
    v122 = Mutable;
    goto LABEL_252;
  }

  v121 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v121)
  {
    LODWORD(v42) = -12782;
    goto LABEL_232;
  }

  LODWORD(v42) = v121(v42, &v406);
  if (v42)
  {
LABEL_232:
    OUTLINED_FUNCTION_0_43();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_233;
  }

  v122 = Mutable;
  v42 = v406;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 168))
  {
LABEL_249:
    LODWORD(v42) = -12782;
    goto LABEL_250;
  }

  while (2)
  {
    v123 = OUTLINED_FUNCTION_10_13();
    v125 = v124(v123);
    if (v125)
    {
      LODWORD(v42) = v125;
      goto LABEL_250;
    }

    OUTLINED_FUNCTION_38_3();
    if (!v33)
    {
      break;
    }

    OUTLINED_FUNCTION_14_11();
    v127 = videoMentorCursorIsInPlayRange(v126, &time1, &time2, &v395);
    if (v127)
    {
      goto LABEL_243;
    }

    if (v395)
    {
      if (v404)
      {
        CFRelease(v404);
        v404 = 0;
      }

      v128 = v406;
      v129 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v129)
      {
        LODWORD(v42) = -12782;
LABEL_250:
        OUTLINED_FUNCTION_1_40();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_233:
        OUTLINED_FUNCTION_8_15();
LABEL_234:
        v88 = v365;
LABEL_235:
        v87 = HIDWORD(v362);
        goto LABEL_88;
      }

      v130 = v129(v128, &v404);
      if (v130)
      {
        LODWORD(v42) = v130;
        goto LABEL_250;
      }

      goto LABEL_203;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 80))
    {
      v131 = v406;
      Mutable = v409;
      v132 = *(CMBaseObjectGetVTable() + 16);
      v133 = v132 ? v132 : 0;
      v134 = Mutable ? *(CMBaseObjectGetVTable() + 16) : 0;
      if (v133 != v134 || (v136 = *(v133 + 80), v42 = v133 + 80, (v135 = v136) == 0) || !v135(v131, Mutable, 1))
      {
        if (*(a1 + 116))
        {
          OUTLINED_FUNCTION_8_15();
          LODWORD(v42) = -1;
          goto LABEL_234;
        }

LABEL_203:
        v42 = v406;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 168))
        {
          goto LABEL_249;
        }

        continue;
      }
    }

    break;
  }

  if (v406)
  {
    CFRelease(v406);
    v406 = 0;
  }

  v137 = v404;
  if (!v404)
  {
    v138 = 1;
    goto LABEL_248;
  }

  if (!value && v409)
  {
    CFRelease(v409);
    v137 = v404;
  }

  v409 = v137;
  v404 = 0;
  HIDWORD(v331) = 1;
  HIDWORD(v362) = 1;
LABEL_252:
  if (*v343)
  {
    if (CFArrayGetCount(*v343) < 1 || (v142 = *(*(OUTLINED_FUNCTION_54_5() + 16) + 8)) == 0 || v142(v42, &v407))
    {
      OUTLINED_FUNCTION_8_15();
    }

    else
    {
      OUTLINED_FUNCTION_8_15();
      lhs.value = 0;
      allocatorc = *MEMORY[0x1E695E480];
      do
      {
        CachedVideoFrameForCursor = videoMentorGetCachedVideoFrameForCursor(a1, v407, *v343, v38);
        if (!CachedVideoFrameForCursor)
        {
          break;
        }

        v153 = CachedVideoFrameForCursor;
        OUTLINED_FUNCTION_19_7(CachedVideoFrameForCursor, v144, v145, v146, v147, v148, v149, v150, v151, v268, v274, v279, v282, v286, v289, v292, v295, v298, v301, v304, v307, v310, v312, v314, v317, v320, v323, v325, v328, v331, v334, v336, v338, v340, v343, v346, v349, v351, v353, allocatorc, v360, v362, v363, v152);
        v154 = *(*(OUTLINED_FUNCTION_29_6() + 16) + 8);
        if (!v154 || v154(v42, &lhs) || !*(*(OUTLINED_FUNCTION_29_6() + 16) + 176))
        {
          break;
        }

        v155 = OUTLINED_FUNCTION_10_13();
        v157 = !v156(v155) && v394 == 1;
        if (!v157 || FigSampleCursorCopy(v407, &v405) || FigSampleCursorGetPresentationTimeStamp(v407, &time1))
        {
          break;
        }

        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(allocatorc, 0, MEMORY[0x1E695E9C0]);
        }

        if (!value)
        {
          value = CFArrayCreateMutable(allocatorc, 0, MEMORY[0x1E695E9C0]);
        }

        CFArrayAppendValue(Mutable, v153);
        CFArrayAppendValue(value, lhs.value);
        if (lhs.value)
        {
          CFRelease(lhs.value);
          lhs.value = 0;
        }

        v393 = time1;
        v42 = v410[0];
        v410[0] = v405;
        if (v405)
        {
          CFRetain(v405);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        if (v405)
        {
          CFRelease(v405);
          v405 = 0;
        }

        OUTLINED_FUNCTION_14_11();
      }

      while (CMTimeCompare(&time1, &time2) < 0);
      if (lhs.value)
      {
        CFRelease(lhs.value);
        lhs.value = 0;
      }

      if (v407)
      {
        CFRelease(v407);
        v407 = 0;
      }

      if (v405)
      {
        CFRelease(v405);
        v405 = 0;
      }
    }

    if (*v343)
    {
      CFRelease(*v343);
      *v343 = 0;
    }
  }

  else
  {
    Mutable = 0;
    value = 0;
  }

  videoMentorDependencyStateStartNewOrder(a1, (a1 + 744));
  if (v158 || ((FigSimpleMutexLock(), OUTLINED_FUNCTION_24_6(), v344 = a1 + 296, *&v380.value = *(a1 + 296), OUTLINED_FUNCTION_27_5(*(a1 + 312)), v378 = *(a1 + 344), v329 = (a1 + 344), FigSimpleMutexUnlock(), HIBYTE(v370) = 0, v159 = fabsf(v24 * a10) > a9, (v360 & 0x100000000) == 0) ? (v160 = v340) : (v160 = v159), time1 = v393, time2 = *v367, lhs = *v122, allocatord = v122, rhs = v379, v371 = v378, v369 = v381, LODWORD(v351) = v160, (v158 = videoMentorDependencyStateCopyCursorForDecodeWalk(a1, a1 + 744, 2, v38, v360, &time1, &time2, &lhs, v160, &rhs, &v371, &v369, v410[0], v362, MEMORY[0x1E6960C70], &v370 + 7, 0, &v403, &v402, &v408)) != 0))
  {
    LODWORD(v42) = v158;
    goto LABEL_234;
  }

  v168 = HIBYTE(v370);
  LODWORD(v360) = HIBYTE(v370) == 0;
  if (v362 | v338)
  {
    LODWORD(v338) = 0;
  }

  else
  {
    time1 = *v367;
    videoMentorEnqueueEditBoundaryMarker(a1, v334, &time1);
    v168 = HIBYTE(v370);
    LODWORD(v338) = 1;
  }

  if (v168)
  {
    for (i = *(a1 + 552); i; i = *i)
    {
      if (v408)
      {
        v170 = v408;
        v171 = i[1];
        v172 = *(CMBaseObjectGetVTable() + 16);
        v173 = v172 ? v172 : 0;
        v174 = *(CMBaseObjectGetVTable() + 16);
        v175 = v174 ? v174 : 0;
        if (v173 != v175 || !*(v173 + 32) || (*(v175 + 32))(v171, v170) != -1)
        {
          continue;
        }
      }

      OUTLINED_FUNCTION_3_29(i[1], v161, v162, v163, v164, v165, v166, v167, v269, v275, v280, v283, v287, v290, v293, v296, v299, v302, v305, v308, v310, v312, v314, v317, v320, v323, v325, v329, v331, v334, v336, v338, v340, v344, v346, v349, v351, v353, allocatord, v360, v362, v363, v364, *(&v364 + 1), v365, v366, v367);
      v177 = videoMentorCursorIsInPlayRange(v176, &time1, &time2, &v395);
      if (v177)
      {
        goto LABEL_454;
      }

      if (v395)
      {
        OUTLINED_FUNCTION_3_29(v177, i[1], v162, v163, v403, v402, v166, v167, v269, v275, v280, v283, v287, v290, v293, v296, v299, v302, v305, v308, v310, v312, v314, v317, v320, v323, v325, v329, v331, v334, v336, v338, v340, v344, v346, v349, v351, v353, allocatord, v360, v362, v363, v364, *(&v364 + 1), v365, v366, v367);
        v284 = MEMORY[0x1E6960C70];
        v178 = OUTLINED_FUNCTION_36_4();
        LODWORD(v177) = videoMentorThreadGenerateAndEnqueueFrame(v178, v179, 0, 2, v180, v181, 0, v182, v270, v276, &time2.value, v284, v334);
        if (v177)
        {
          goto LABEL_454;
        }

        LODWORD(v360) = 0;
        v403 = 0;
      }
    }
  }

  videoMentorResetSavedListAndEnqueueMarker(a1);
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v184 = Count;
      v185 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v185);
        v187 = CFArrayGetValueAtIndex(value, v185);
        OUTLINED_FUNCTION_3_29(v187, v187, v188, v189, v403, v190, v191, v192, v269, v275, v280, v283, v287, v290, v293, v296, v299, v302, v305, v308, v310, v312, v314, v317, v320, v323, v325, v329, v331, v334, v336, v338, v340, v344, v346, v349, v351, v353, allocatord, v360, v362, v363, v364, *(&v364 + 1), v365, v366, v367);
        LODWORD(v177) = videoMentorThreadResendCachedSampleBuffer(a1, v193, ValueAtIndex, 0, v194, 0, SHIDWORD(v338), &time1.value, &time2.value, MEMORY[0x1E6960C70], v334);
        if (v177)
        {
          break;
        }

        v403 = 0;
        if (v184 == ++v185)
        {
          goto LABEL_325;
        }
      }

LABEL_454:
      LODWORD(v42) = v177;
LABEL_452:
      v88 = v365;
      v38 = v334;
      goto LABEL_235;
    }

LABEL_325:
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (!v408)
  {
    LODWORD(v42) = 0;
    goto LABEL_339;
  }

  if (!HIDWORD(v331))
  {
    v326 = 0;
LABEL_342:
    OUTLINED_FUNCTION_44_6();
    v197 = !v33;
    HIDWORD(v323) = v197;
    goto LABEL_346;
  }

  if (!v409)
  {
    v326 = -1;
    goto LABEL_342;
  }

  v326 = FigSampleCursorCompareInDecodeOrder_0(v408, v409);
  OUTLINED_FUNCTION_44_6();
  v196 = !v33;
  HIDWORD(v323) = v196;
  if (!v195 && v326 == 1)
  {
    goto LABEL_336;
  }

LABEL_346:
  HIDWORD(v312) = 0;
  v321 = (a1 + 560);
  v318 = @"EagerlyFetchSampleDependencyAttributes";
  v315 = *MEMORY[0x1E695E4D0];
  v347 = *MEMORY[0x1E6960CC0];
  v341 = *(MEMORY[0x1E6960CC0] + 16);
  while (2)
  {
    BYTE6(v368) = 0;
    v369.value = 0;
    memset(&time1, 0, sizeof(time1));
    *&time2.value = v347;
    time2.epoch = v341;
    v394 = 0;
    FigSimpleMutexLock();
    OUTLINED_FUNCTION_24_6();
    *&v380.value = *v344;
    OUTLINED_FUNCTION_27_5(*(v344 + 16));
    v378 = *v329;
    FigSimpleMutexUnlock();
    v198 = fabsf(v24 * a10) > a9;
    v199 = v351;
    if ((v360 & 0x100000000) != 0)
    {
      v199 = v198;
    }

    LODWORD(v351) = v199;
    if (*(a1 + 116))
    {
      LODWORD(v42) = -1;
      goto LABEL_451;
    }

    v200 = FigSampleCursorGetPresentationTimeStamp(v408, &time1);
    if (v200)
    {
      LODWORD(v42) = v200;
      OUTLINED_FUNCTION_1_40();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v269, v275, v280);
      goto LABEL_451;
    }

    OUTLINED_FUNCTION_29();
    if (!v33)
    {
      goto LABEL_352;
    }

    lhs = v393;
    OUTLINED_FUNCTION_25_6(v408, v201, v202, v203, v204, v205, v206, v207, v269, v275, v280, v283, v287, v290, v293, v296, v299, v302, v305, v308, v310, v312, v315, v318, v321, v323, v326, v329, v331, v334, v336, v338, v341, v344, v347, *(&v347 + 1), v351, v353, allocatord);
    refreshed = videoMentorCursorIsInPlayRange(v208, &lhs, &rhs, &v395);
    if (refreshed)
    {
      goto LABEL_450;
    }

    LODWORD(v362) = v395;
    HIBYTE(v368) = v395;
    if ((v331 & 0x100000000) == 0)
    {
      v218 = 1;
      while (1)
      {
        refreshed = OUTLINED_FUNCTION_22_7(refreshed, v209, v210, v211, v212, v213, v214, v215, v269, v275, v280, v283, v287, v290, v293, v296, v299, v302, v305, v308, v310, v312, v315, v318, v321, v323, v326, v329, v331, v334, v336, v338, v341, v344, v347, *(&v347 + 1), v351, v353, allocatord, v360, v362, v363, v364, *(&v364 + 1), v365, v366, v367, v368);
        if (refreshed)
        {
          break;
        }

        if (v369.value)
        {
          v219 = *(v369.value + 76);
          if (v219 == 2)
          {
            v220 = *(v369.value + 56);
            if (v220 && (*(v220 + 58) || *(v220 + 56)))
            {
              goto LABEL_389;
            }
          }

          else if (v219 == 1)
          {
            goto LABEL_389;
          }
        }

        if (v383)
        {
          CFRelease(v383);
          v383 = 0;
        }

        lhs = v379;
        rhs = v378;
        v371 = v381;
        LODWORD(refreshed) = videoMentorDependencyStateFillRefreshGroupsUntil(a1, a1 + 744, v408, v334, v351, &lhs, &rhs, &v371, v218, &v383);
        if (refreshed)
        {
          break;
        }

        v221 = v383;
        if (v383)
        {
          if (v382)
          {
            CFRelease(v382);
            v382 = 0;
          }

          LODWORD(refreshed) = videoMentorDependencyStateAddSamplesToGraph(a1, a1 + 744, v334, v221, v351, &v382, 0);
          if (refreshed)
          {
            break;
          }

          v222 = CFArrayGetCount(v382);
          if (v222 >= 1)
          {
            v223 = v222;
            Mutable = 0;
            do
            {
              v224 = CFArrayGetValueAtIndex(v382, Mutable);
              if (v224[17] == 1)
              {
                v224[17] = 0;
              }

              Mutable = (Mutable + 1);
            }

            while (v223 != Mutable);
          }
        }

        v225 = CFArrayGetCount(*(a1 + 760));
        if (v225 >= 1)
        {
          v226 = v225;
          Mutable = 0;
          do
          {
            v227 = CFArrayGetValueAtIndex(*(a1 + 760), Mutable);
            if (!v227[56])
            {
              value = v227;
              videoMentorRefreshGroupClassifyNodes(v227);
              videoMentorAddRefreshGroupToProcess(a1 + 744, value);
            }

            Mutable = (Mutable + 1);
          }

          while (v226 != Mutable);
        }

        refreshed = videoMentorDependencyStateProcessRefreshGroups((a1 + 744));
        if (!*(a1 + 832) && !*(a1 + 777) && v218++ < 9)
        {
          continue;
        }

LABEL_389:
        LODWORD(refreshed) = OUTLINED_FUNCTION_22_7(refreshed, v209, v210, v211, v212, v213, v214, v215, v269, v275, v280, v283, v287, v290, v293, v296, v299, v302, v305, v308, v310, v312, v315, v318, v321, v323, v326, v329, v331, v334, v336, v338, v341, v344, v347, *(&v347 + 1), v351, v353, allocatord, v360, v362, v363, v364, *(&v364 + 1), v365, v366, v367, v368);
        if (refreshed)
        {
          break;
        }

        value = v369.value;
        if (v369.value)
        {
          v229 = *(v369.value + 76);
          if (!v229)
          {
            lhs.value = 1;
            *&lhs.timescale = v369.value;
            videoMentorDependencyStateExecuteAction((a1 + 744), &lhs);
            v229 = *(value + 19);
          }

          if (v229 == 2)
          {
            BYTE6(v368) = 1;
            OUTLINED_FUNCTION_29();
            if (v33)
            {
              lhs = *(value + 80);
              rhs = *(value + 128);
              CMTimeSubtract(&time2, &lhs, &rhs);
            }

            v230 = v360;
            if (v351)
            {
              v230 = 1;
            }

            LODWORD(v360) = v230;
          }

          goto LABEL_408;
        }

        goto LABEL_336;
      }

LABEL_450:
      LODWORD(v42) = refreshed;
LABEL_451:
      OUTLINED_FUNCTION_8_15();
      goto LABEL_452;
    }

    BYTE6(v368) = v395;
    if (!HIDWORD(v336))
    {
      if (v351)
      {
        if (!v395)
        {
          goto LABEL_430;
        }

        OUTLINED_FUNCTION_5_29();
        OUTLINED_FUNCTION_46_3();
        LODWORD(v360) = 1;
        LODWORD(refreshed) = videoMentorSimulateIFramesOnly(v231, &lhs, &rhs, v321, 1, &v368 + 6, &v402);
        if (refreshed)
        {
          goto LABEL_450;
        }

        value = 0;
      }

      else
      {
        if (!v395 || !v402)
        {
          LODWORD(refreshed) = videoMentorSimulateFrame(v408, &v392, &v390, &v368 + 6, &v402);
          if (refreshed)
          {
            goto LABEL_450;
          }
        }

        value = 0;
        LODWORD(v351) = 0;
      }

LABEL_408:
      if (!HIDWORD(v366) || !v362)
      {
        goto LABEL_412;
      }

      if (!HIDWORD(v336))
      {
        videoMentorUpdateUpcomingOutputPTSRangeAnnouncement(a1, v408, v409, v334, &v400, &v398, &v396);
        LODWORD(v362) = 1;
        goto LABEL_412;
      }

LABEL_411:
      videoMentorPostMinAndMaxUpcomingOutputPTS(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
      goto LABEL_412;
    }

    if (!v395 && v389[25])
    {
      LODWORD(v362) = 0;
      value = 0;
      OUTLINED_FUNCTION_43_5(refreshed, v209, v210, v211, v212, v213, v214, v215, v216, v269, v275, v280, v283, v287, v290, v293, v296, v299, v302, v305, v308, v310, v312, v315, v318, v321, v323, v326, v329, v331, v334, v336, v338, v341, v344, v347, *(&v347 + 1), v351, v353, allocatord, v360, v362, v363, v217);
      goto LABEL_412;
    }

    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_46_3();
    v371 = v380;
    refreshed = videoMentorSimulateSyncFrameClustersOnly(v251, &lhs, &rhs, &v371, SHIDWORD(v336), &v368 + 6, &v368 + 7, &v402, &v384);
    if (refreshed)
    {
      goto LABEL_450;
    }

    value = 0;
    v261 = v360;
    if (!v402)
    {
      v261 = 1;
    }

    LODWORD(v360) = v261;
    LODWORD(v362) = HIBYTE(v368);
    OUTLINED_FUNCTION_43_5(refreshed, v252, v253, v254, v255, v256, v257, v258, v259, v272, v275, v280, v283, v287, v290, v293, v296, v299, v302, v305, v308, v310, v312, v315, v318, v321, v323, v326, v329, v331, v334, v336, v338, v341, v344, v347, *(&v347 + 1), v351, v353, allocatord, v360, v362, v363, v260);
    if (HIDWORD(v366) && v362)
    {
      goto LABEL_411;
    }

LABEL_412:
    if (!BYTE6(v368))
    {
      v234 = 0;
      goto LABEL_428;
    }

    if (!(v362 | v338))
    {
      OUTLINED_FUNCTION_11_14(v367);
      videoMentorEnqueueEditBoundaryMarker(a1, v334, &lhs);
      v232 = 1;
      LODWORD(v338) = 1;
LABEL_423:
      v233 = 1;
      goto LABEL_424;
    }

    if (!v362)
    {
      v232 = 1;
      goto LABEL_423;
    }

    if (v336)
    {
      if (HIDWORD(v312))
      {
        v232 = 0;
        if (++HIDWORD(v312) == 2)
        {
          v233 = 3;
        }

        else
        {
          v233 = 0;
        }
      }

      else
      {
        v232 = 0;
        v233 = 5;
        HIDWORD(v312) = 1;
      }
    }

    else
    {
      v232 = 0;
      v233 = 0;
    }

LABEL_424:
    FigSampleCursorGetFigBaseObject();
    CMBaseObjectSetProperty(v235, v318, v315);
    OUTLINED_FUNCTION_11_14(v367);
    OUTLINED_FUNCTION_25_6(v236, v237, v238, v239, v240, v241, v242, v243, v269, v275, v280, v283, v287, v290, v293, v296, v299, v302, v305, v308, v310, v312, v315, v318, v321, v323, v326, v329, v331, v334, v336, v338, v341, v344, v347, *(&v347 + 1), v351, v353, allocatord);
    v371 = time2;
    v244 = OUTLINED_FUNCTION_36_4();
    LODWORD(refreshed) = videoMentorThreadGenerateAndEnqueueFrame(v244, v245, v233, 0, v246, v247, 0, v248, v271, v277, &rhs.value, &v371.value, v334);
    if (refreshed)
    {
      goto LABEL_450;
    }

    v403 = 0;
    LODWORD(v360) = 0;
    if ((v232 & 1) == 0)
    {
      *v321 = time1;
    }

    v234 = 1;
LABEL_428:
    if ((v331 & 0x100000000) == 0)
    {
      videoMentorUpdateDecoderState(a1, value, v234);
      videoMentorDependencyStateForgetObsoleteRefreshGroups(a1 + 744, value);
      v369.value = 0;
    }

LABEL_430:
    if (FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v408, 1, &v394))
    {
LABEL_352:
      OUTLINED_FUNCTION_1_40();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_450;
    }

    OUTLINED_FUNCTION_38_3();
    if (v33)
    {
      v249 = HIDWORD(v331);
      if (!v409)
      {
        v249 = 0;
      }

      if (v249 == 1)
      {
        v326 = FigSampleCursorCompareInDecodeOrder_0(v408, v409);
      }

      v250 = BYTE4(v323);
      if (v326 != 1)
      {
        v250 = 1;
      }

      if ((v250 & 1) == 0)
      {
        goto LABEL_336;
      }

      continue;
    }

    break;
  }

  if ((v331 & 0x100000000) != 0)
  {
    if (v409 && FigSampleCursorCompareInDecodeOrder_0(v408, v409))
    {
      goto LABEL_468;
    }

LABEL_336:
    LODWORD(v42) = 0;
  }

  else
  {
    if (*(a1 + 832) && !FigSampleCursorCompareInDecodeOrder_0(*(a1 + 824), v408))
    {
      goto LABEL_336;
    }

LABEL_468:
    OUTLINED_FUNCTION_1_40();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v269, v275, v280);
    LODWORD(v42) = v263;
  }

  videoMentorEnqueueDrainAfterDecodingMarker(a1);
LABEL_339:
  v88 = v365;
  v38 = v334;
  v87 = HIDWORD(v362);
LABEL_150:
  if (v363 && !v42)
  {
    LODWORD(v42) = audioMentorEnqueueBufferConsumedMarker(a1, v363);
    v363 = 0;
  }

  OUTLINED_FUNCTION_8_15();
  ++*(a1 + 928);
LABEL_88:
  if (*(a1 + 492))
  {
    videoMentorPostCollectorCoherenceConduitNotification(a1);
    *(a1 + 492) = 0;
  }

  if (HIDWORD(v366) && (v42 + 1) <= 1)
  {
    videoMentorPostMinAndMaxUpcomingOutputPTS(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
  }

  videoMentorThreadFinishPreroll(a1, 0, v38);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!*a1)
  {
    v99 = &kMentorNotification_StoppingDueToCompletion;
    if (v42)
    {
      v99 = &kMentorNotification_StoppingDueToError;
    }

    if (v42 == -1)
    {
      v100 = 0;
    }

    else
    {
      v100 = v42;
    }

    if (v42 == -1)
    {
      v99 = &kMentorNotification_ResettingDueToModeSwitch;
    }

    v101 = FigMentorNotificationPayloadCreate(*v99, v38, v100, *(a1 + 520), v363, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v101)
    {
      CFRelease(v101);
    }
  }

  if (v88 && v410[0])
  {
    CFRelease(v410[0]);
    v410[0] = 0;
  }

  if (v87 && v409)
  {
    CFRelease(v409);
    v409 = 0;
  }

  if (v408)
  {
    CFRelease(v408);
    v408 = 0;
  }

  if (v407)
  {
    CFRelease(v407);
    v407 = 0;
  }

  if (v406)
  {
    CFRelease(v406);
    v406 = 0;
  }

  if (v405)
  {
    CFRelease(v405);
    v405 = 0;
  }

  if (v404)
  {
    CFRelease(v404);
    v404 = 0;
  }

  videoMentorThrottlingStateFree(a1 + 584);
  v102 = *(a1 + 512);
  if (v102)
  {
    CFRelease(v102);
    *(a1 + 512) = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v383)
  {
    CFRelease(v383);
  }

  if (v382)
  {
    CFRelease(v382);
  }
}

opaqueCMSampleBuffer *videoMentorGetCachedVideoFrameForCursor(void *a1, const void *a2, CFArrayRef theArray, uint64_t a4)
{
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&v42.start.value = *MEMORY[0x1E6960C98];
  *&v42.start.epoch = v4;
  *&v42.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v34 = *MEMORY[0x1E6960C70];
  *&v40.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v40.epoch = v5;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v11 = Count;
      if (!videoMentorGetCursorPTSRange(a2, &v42))
      {
        start = v42.start;
        range = v42;
        CMTimeRangeGetEnd(&v40, &range);
        FigSimpleMutexLock();
        v12 = a1[8];
        if (v12)
        {
          v12(a1[9], a4, 0, &start, &v40);
        }

        FigSimpleMutexUnlock();
        if (v11 >= 1)
        {
          for (i = 0; v11 != i; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            *&range.start.value = v34;
            range.start.epoch = v5;
            if (!ValueAtIndex)
            {
              break;
            }

            v15 = ValueAtIndex;
            v16 = CFGetTypeID(ValueAtIndex);
            if (v16 != CMSampleBufferGetTypeID())
            {
              break;
            }

            PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&range.start, v15);
            OUTLINED_FUNCTION_660(PresentationTimeStamp, v18, v19, v20, v21, v22, v23, v24, v34, *(&v34 + 1), time2.value, *&time2.timescale, time2.epoch, v36, time1.value, *&time1.timescale, time1.epoch, v38, *&range.start.value);
            time2 = start;
            v25 = CMTimeCompare(&time1, &time2);
            if ((v25 & 0x80000000) == 0)
            {
              OUTLINED_FUNCTION_660(v25, v26, v27, v28, v29, v30, v31, v32, v34, *(&v34 + 1), time2.value, *&time2.timescale, time2.epoch, v36, time1.value, *&time1.timescale, time1.epoch, v38, *&range.start.value);
              time2 = v40;
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                return v15;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

double videoMentorDependencyStateStartNewOrder(void *a1, uint64_t *a2)
{
  videoMentorDependencyStateReset(a2);
  if (!videoMentorFrameNodeCreate(a1, *MEMORY[0x1E695E480], -1, 0, a2))
  {
    v6 = *a2;
    *(v6 + 64) = 0;
    *(v6 + 68) = 0x200000001;
    *(v6 + 76) = 2;
    v7 = OUTLINED_FUNCTION_383();
    Mutable = CFDictionaryCreateMutable(v7, v8, v9, v10);
    a2[1] = Mutable;
    if (Mutable)
    {
      v12 = OUTLINED_FUNCTION_383();
      v15 = CFArrayCreateMutable(v12, v13, v14);
      a2[2] = v15;
      if (v15)
      {
        v16 = OUTLINED_FUNCTION_383();
        v19 = CFArrayCreateMutable(v16, v17, v18);
        a2[8] = v19;
        if (v19)
        {
          v20 = OUTLINED_FUNCTION_383();
          v23 = CFArrayCreateMutable(v20, v21, v22);
          a2[12] = v23;
          if (v23)
          {
            return result;
          }

          v24 = 4886;
        }

        else
        {
          v24 = 4883;
        }
      }

      else
      {
        v24 = 4880;
      }
    }

    else
    {
      v24 = 4878;
    }

    v25 = qword_1EAF16DF0;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 4294954463, "<<<< VideoMentor >>>>", v24, v2);
  }

  return result;
}

uint64_t videoMentorDependencyStateCopyCursorForDecodeWalk(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, __n128 *a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, char a14, uint64_t *a15, uint64_t a16, uint64_t a17, char *a18, _BYTE *a19, void *a20)
{
  v244 = a4;
  HIDWORD(v243) = a3;
  v278 = *MEMORY[0x1E69E9840];
  v263 = 0;
  v264 = 0;
  theSet = 0;
  v262 = 0;
  v259 = 0;
  v260 = 0;
  v258 = 0;
  v25 = *(MEMORY[0x1E6960C98] + 16);
  v254 = *MEMORY[0x1E6960C98];
  v255 = v25;
  v256 = *(MEMORY[0x1E6960C98] + 32);
  OUTLINED_FUNCTION_29();
  v240 = v27;
  v241 = v26;
  v233 = v28;
  v236 = v29;
  if (v34)
  {
    OUTLINED_FUNCTION_40_3(MEMORY[0x1E6960CC0]);
    *v272 = *a15;
    v30 = OUTLINED_FUNCTION_9_14();
    v32 = CMTimeCompare(v30, v31);
    LODWORD(v242) = v32 >> 31;
    v27 = v240;
    v26 = v241;
    v33 = v32 >= 0;
  }

  else
  {
    LODWORD(v242) = 0;
    v33 = 1;
  }

  HIDWORD(v239) = a5;
  v34 = a5 == 1 || *(a1 + 528) == 0;
  v35 = !v34;
  if (v27)
  {
    *v27 = 0;
  }

  if (v26)
  {
    *v26 = 0;
  }

  if (a18)
  {
    *a18 = 0;
  }

  if (a19)
  {
    *a19 = 1;
  }

  v234 = a18;
  if (a20)
  {
    *a20 = 0;
  }

  v238 = a20;
  v36 = *(a1 + 536);
  if (v36)
  {
    videoMentorGetCursorPTSRange(v36, &v254);
  }

  v275 = v254;
  v276 = v255;
  v277 = v256;
  *v272 = *a6;
  v37 = OUTLINED_FUNCTION_9_14();
  v39 = CMTimeRangeContainsTime(v37, v38) && ((~DWORD1(v256) & 5) != 0 || v255 == *(a6 + 16));
  *v272 = *a6;
  v40 = OUTLINED_FUNCTION_35_4();
  videoMentorRemapTime(v40, v244, 0, v41, v42);
  *(a2 + 36) = v275;
  *(a2 + 52) = v276;
  v43 = *a8;
  *(a2 + 120) = a8[1].n128_u64[0];
  *(a2 + 104) = v43;
  *v272 = *a8;
  v44 = OUTLINED_FUNCTION_35_4();
  videoMentorRemapTime(v44, v244, 0, v45, v46);
  *(a2 + 128) = v275;
  *(a2 + 144) = v276;
  v47 = v33 & v35;
  HIDWORD(v235) = v39;
  if (HIDWORD(v243) == 1)
  {
    v48 = v47 & v39;
  }

  else
  {
    v48 = 0;
  }

  if (HIDWORD(v243) == 1 && v47)
  {
    v265 = *a6;
    v266 = *(a6 + 16);
    v49 = (a1 + 552);
    while (1)
    {
      v49 = *v49;
      if (!v49)
      {
        break;
      }

      v50 = *(v49 + 2);
      v275 = *(v49 + 1);
      v276 = v50;
      v277 = *(v49 + 3);
      *v272 = v265;
      v51 = OUTLINED_FUNCTION_9_14();
      if (CMTimeRangeContainsTime(v51, v52))
      {
        v48 = 1;
        break;
      }
    }
  }

  v53 = a13;
  if (v242)
  {
    v54 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v54)
    {
      goto LABEL_256;
    }

    NodeForCursor = v54(a13, &v260);
    if (NodeForCursor)
    {
      goto LABEL_116;
    }

    v56 = v260;
    v57 = *a15;
    v58 = *(a15 + 2);
    memset(v272, 0, 24);
    v59 = CMTimeMake(v272, -v57, v58);
    OUTLINED_FUNCTION_47_3(v59, v60, v61, v62, v63, v64, v65, v66, v214, v215, v216, v217, v218, v220, v222, v224, v226, v228, v231, v233, a18, v235, v236, a20, v239, v240, v241, v242, v243, v244, v245, v247, v248, v250, v251, *(&v251 + 1), v252, v253, v254, *(&v254 + 1), v255, *(&v255 + 1), v256, *(&v256 + 1), v257, v258, v259, v260, theSet, v262, v263, v264, v265, *(&v265 + 1), v266, v267, v268, v269, v270, cf, *v272);
    v67 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (!v67)
    {
      goto LABEL_256;
    }

    v275 = v265;
    *&v276 = v266;
    NodeForCursor = v67(v56, &v275);
    if (NodeForCursor)
    {
      v68 = NodeForCursor == -12840;
    }

    else
    {
      v68 = 1;
    }

    if (!v68)
    {
      goto LABEL_116;
    }

    v232 = a19;
    v69 = v260;
    v70 = a1;
    v71 = 0;
  }

  else
  {
    v70 = a1;
    v69 = a13;
    v232 = a19;
    v71 = a19;
  }

  v72 = videoMentorCopySyncCursorForCursor(v70, v69, &v264, v71);
  if (v72)
  {
    goto LABEL_257;
  }

  if (v47)
  {
    v73 = v264;
    v74 = *(CMBaseObjectGetVTable() + 16);
    if (v74)
    {
      v75 = v74;
      if (!v73)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v75 = 0;
      if (!v73)
      {
        goto LABEL_56;
      }
    }

    v76 = *(CMBaseObjectGetVTable() + 16);
    if (v76)
    {
      v77 = v76;
LABEL_57:
      if (v75 == v77 && *(v75 + 32))
      {
        v86 = OUTLINED_FUNCTION_15_9();
        v87(v86, v73);
      }

      goto LABEL_58;
    }

LABEL_56:
    v77 = 0;
    goto LABEL_57;
  }

LABEL_58:
  v78 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v78)
  {
    goto LABEL_256;
  }

  NodeForCursor = v78(a13, a2 + 24);
  if (NodeForCursor)
  {
    goto LABEL_116;
  }

  v79 = v264;
  v80 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v80)
  {
    goto LABEL_256;
  }

  NodeForCursor = v80(v79, a2 + 80);
  if (NodeForCursor)
  {
    goto LABEL_116;
  }

  v81 = a9;
  OUTLINED_FUNCTION_26_8();
  v225 = v83;
  v227 = v82;
  v223 = v84;
  if (v34)
  {
    v85 = CFRetain(a13);
    v263 = v85;
LABEL_115:
    v121 = OUTLINED_FUNCTION_625();
    NodeForCursor = videoMentorDependencyStateAddSamplesToGraph(v121, v122, v244, v85, v81, 0, v123);
    if (NodeForCursor)
    {
      goto LABEL_116;
    }

    v124 = OUTLINED_FUNCTION_625();
    NodeForCursor = videoMentorDependencyStateGetNodeForCursor(v124, v125, v53, v244, 0, v126);
    if (NodeForCursor)
    {
      goto LABEL_116;
    }

    v127 = v258;
    if (!v258)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294954460, "<<<< VideoMentor >>>>", 5061, v233);
      goto LABEL_116;
    }

    if (!v242)
    {
      OUTLINED_FUNCTION_26_8();
      if (v34 && *(v127 + 76) != 2)
      {
        *&v275 = 1;
        *(&v275 + 1) = v127;
        videoMentorDependencyStateExecuteAction(a2, &v275);
      }

LABEL_149:
      if (!theSet)
      {
LABEL_191:
        v143 = HIDWORD(v239);
        goto LABEL_192;
      }

      v143 = HIDWORD(v239);
      if (CFSetGetCount(theSet) < 1)
      {
LABEL_192:
        v213 = HIDWORD(v235);
LABEL_193:
        v179 = v240;
        v180 = v241;
        if (v143 == 2)
        {
          if (v48)
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 48))
            {
              PendingSampleBufferCount = FigSampleBufferConsumerGetPendingSampleBufferCount(*(a1 + 24));
            }

            else
            {
              PendingSampleBufferCount = 0;
            }

            if (PendingSampleBufferCount <= 0)
            {
              v187 = *(a1 + 24);
              v188 = *MEMORY[0x1E6960410];
              v189 = *MEMORY[0x1E695E4D0];
              v275 = *a6;
              *&v276 = *(a6 + 16);
              FigSampleBufferConsumerSetAttachmentOnPendingSampleBuffersInPTSRange(v187, v188, v189, MEMORY[0x1E6960C80], &v275);
              v48 = 1;
              v181 = 0;
              if (v232)
              {
                *v232 = 1;
              }
            }

            else
            {
              v48 = 0;
              v181 = 1;
            }

            v179 = v240;
            v180 = v241;
LABEL_215:
            if (v179)
            {
              *v179 = v48;
            }

            if (HIDWORD(v243) == 1)
            {
              v190 = v181;
            }

            else
            {
              v190 = 1;
            }

            if (v190)
            {
              v191 = 0;
            }

            else
            {
              v191 = v213;
            }

            if (v181)
            {
              v192 = *(a1 + 24);
              v193 = *(*(CMBaseObjectGetVTable() + 16) + 72);
              if (v193)
              {
                v193(v192);
              }

              videoMentorResetSavedListAndEnqueueMarker(a1);
              *(a1 + 544) = -2;
              v194 = *(a1 + 528);
              if (v194)
              {
                CFRelease(v194);
                *(a1 + 528) = 0;
              }

              v195 = MEMORY[0x1E6960C70];
              v196 = *(a1 + 536);
              if (v196)
              {
                CFRelease(v196);
                *(a1 + 536) = 0;
              }

              *(a1 + 560) = *v195;
              *(a1 + 576) = *(v195 + 16);
              v180 = v241;
            }

            if (v180)
            {
              *v180 = v191;
            }

            if (v259)
            {
              CFRelease(v259);
              v259 = 0;
            }

            if (v191)
            {
              if (v238)
              {
LABEL_237:
                v197 = 0;
                goto LABEL_238;
              }

LABEL_270:
              v72 = 0;
              goto LABEL_257;
            }

            if (v234)
            {
              if (v143)
              {
                if (v213 & v48)
                {
                  *v234 = 0;
                  if (!v238)
                  {
                    goto LABEL_270;
                  }

                  goto LABEL_249;
                }

                v198 = 1;
              }

              else
              {
                v198 = 0;
              }

              *v234 = v198;
            }

            if (!v238)
            {
              goto LABEL_270;
            }

            if (!v48)
            {
              v197 = v264;
              if (v264)
              {
                NodeForCursor = FigSampleCursorCopy(v264, &v259);
                if (NodeForCursor)
                {
                  goto LABEL_116;
                }

                v197 = v259;
              }

              goto LABEL_238;
            }

LABEL_249:
            *&v275 = 0;
            v199 = *(a1 + 528);
            v200 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v200)
            {
              goto LABEL_256;
            }

            NodeForCursor = v200(v199, &v259);
            if (NodeForCursor)
            {
              goto LABEL_116;
            }

            v201 = v259;
            v202 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            if (!v202)
            {
LABEL_256:
              v72 = 4294954514;
              goto LABEL_257;
            }

            NodeForCursor = v202(v201, 1, &v275);
            if (NodeForCursor)
            {
              goto LABEL_116;
            }

            v197 = v259;
            if (v275 != 1 && v259)
            {
              CFRelease(v259);
              goto LABEL_237;
            }

LABEL_238:
            v72 = 0;
            *v238 = v197;
            v259 = 0;
            goto LABEL_257;
          }
        }

        else
        {
          if (v143 != 1)
          {
            v181 = 0;
            if (v143)
            {
              v48 = 0;
            }

            goto LABEL_215;
          }

          v48 = 0;
        }

        v181 = 1;
        goto LABEL_215;
      }

      v144 = v264;
      v145 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v145)
      {
        goto LABEL_256;
      }

      NodeForCursor = v145(v144, &v259);
      if (NodeForCursor)
      {
        goto LABEL_116;
      }

      v229 = v81;
      v146 = *(CMBaseObjectGetVTable() + 16);
      if (v146)
      {
        v147 = v146;
      }

      else
      {
        v147 = 0;
      }

      if (v53 && (v148 = *(CMBaseObjectGetVTable() + 16)) != 0)
      {
        v149 = v148;
      }

      else
      {
        v149 = 0;
      }

      if (v147 == v149)
      {
        if (*(v147 + 32))
        {
          v177 = OUTLINED_FUNCTION_15_9();
          if (v178(v177, v53) == 1)
          {
            v48 = 1;
            v213 = HIDWORD(v235);
            goto LABEL_193;
          }
        }
      }

      *&v251 = 0;
      if (*(a1 + 116))
      {
        v72 = 0xFFFFFFFFLL;
        goto LABEL_257;
      }

      OUTLINED_FUNCTION_26_8();
      if (v34)
      {
LABEL_186:
        v173 = OUTLINED_FUNCTION_625();
        NodeForCursor = videoMentorDependencyStateGetNodeForCursor(v173, v174, v175, v244, 0, v176);
        if (!NodeForCursor)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294954460, "<<<< VideoMentor >>>>", 5165, v233);
        }
      }

      else
      {
        v150 = 1;
        while (1)
        {
          v151 = OUTLINED_FUNCTION_625();
          NodeForCursor = videoMentorDependencyStateGetNodeForCursor(v151, v152, v153, v244, 0, v154);
          if (NodeForCursor)
          {
            break;
          }

          if (v85)
          {
            CFRelease(v85);
            v263 = 0;
          }

          OUTLINED_FUNCTION_40_3(v223);
          OUTLINED_FUNCTION_11_14(v225);
          OUTLINED_FUNCTION_41_3(v227);
          v155 = OUTLINED_FUNCTION_625();
          NodeForCursor = videoMentorDependencyStateFillRefreshGroupsUntil(v155, v156, v157, v244, v229, v158, v159, v160, v150, &v263);
          if (NodeForCursor)
          {
            break;
          }

          v85 = v263;
          if (v263)
          {
            if (v262)
            {
              CFRelease(v262);
              v262 = 0;
            }

            v161 = OUTLINED_FUNCTION_625();
            NodeForCursor = videoMentorDependencyStateAddSamplesToGraph(v161, v162, v244, v85, v229, v163, 0);
            if (NodeForCursor)
            {
              break;
            }

            Count = CFArrayGetCount(v262);
            if (Count >= 1)
            {
              v165 = Count;
              for (i = 0; i != v165; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v262, i);
                if (ValueAtIndex[17] == 1)
                {
                  ValueAtIndex[17] = 0;
                }
              }
            }
          }

          v168 = CFArrayGetCount(*(a2 + 16));
          v169 = v168;
          if (v168 > 10000)
          {
            LODWORD(v265) = 0;
            LOBYTE(cf) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v184 = v265;
            v185 = cf;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, cf))
            {
              v186 = v184;
            }

            else
            {
              v186 = v184 & 0xFFFFFFFE;
            }

            if (v186)
            {
              *v272 = 136315906;
              *&v272[4] = "videoMentorDependencyStateCopyCursorForDecodeWalk";
              *&v272[12] = 1024;
              *&v272[14] = -12836;
              *&v272[18] = 2080;
              *&v272[20] = "videoMentorDependencyStateCopyCursorForDecodeWalk";
              v273 = 1024;
              v274 = v169;
              _os_log_send_and_compose_impl(v186, 0, &v275, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v185, "<<<< VideoMentor >>>> %s: Unexpected VideoMentor state in mediaplaybackd (err = %d): %s handles %d refresh groups.", v272, 34, v216, v217);
            }

            OUTLINED_FUNCTION_16();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            NodeForCursor = videoMentorReportIssueWithRefreshNode(0);
            break;
          }

          if (v168 >= 1)
          {
            for (j = 0; v169 != j; ++j)
            {
              v171 = CFArrayGetValueAtIndex(*(a2 + 16), j);
              if (!v171[56])
              {
                v172 = v171;
                NodeForCursor = videoMentorRefreshGroupClassifyNodes(v171);
                if (NodeForCursor)
                {
                  goto LABEL_116;
                }

                videoMentorAddRefreshGroupToProcess(a2, v172);
              }
            }
          }

          videoMentorDependencyStateProcessRefreshGroups(a2);
          if (++v150 == 10)
          {
            goto LABEL_186;
          }
        }
      }

LABEL_116:
      v72 = NodeForCursor;
      goto LABEL_257;
    }

    v128 = v260;
    *v272 = 0;
    v129 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v129)
    {
LABEL_144:
      v72 = 4294954514;
      goto LABEL_146;
    }

    v130 = v129(v128, v272);
    if (v130)
    {
LABEL_292:
      v72 = v130;
      goto LABEL_146;
    }

    do
    {
      v131 = *(CMBaseObjectGetVTable() + 16);
      if (v131)
      {
        v132 = v131;
      }

      else
      {
        v132 = 0;
      }

      if (v53 && (v133 = *(CMBaseObjectGetVTable() + 16)) != 0)
      {
        v134 = v133;
      }

      else
      {
        v134 = 0;
      }

      if (v132 == v134)
      {
        if (*(v132 + 32))
        {
          v135 = OUTLINED_FUNCTION_15_9();
          if (v136(v135, v53) == 1)
          {
            v72 = 0;
            goto LABEL_146;
          }
        }
      }

      *&v265 = 0;
      *&v251 = 0;
      v137 = OUTLINED_FUNCTION_625();
      v130 = videoMentorDependencyStateGetNodeForCursor(v137, v138, v139, v244, 0, v140);
      if (v130)
      {
        goto LABEL_292;
      }

      if (v265 && *(v265 + 76) != 2)
      {
        *&v275 = 1;
        *(&v275 + 1) = v265;
        videoMentorDependencyStateExecuteAction(a2, &v275);
      }

      v141 = *v272;
      v142 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v142)
      {
        goto LABEL_144;
      }

      v130 = v142(v141, 1, &v251);
      if (v130)
      {
        goto LABEL_292;
      }
    }

    while (v251 == 1);
    VTable = CMBaseObjectGetVTable();
    if (*(VTable + 16))
    {
      v205 = *(VTable + 16);
    }

    else
    {
      v205 = 0;
    }

    v230 = v81;
    if (v53)
    {
      v208 = v53;
      v209 = *(CMBaseObjectGetVTable() + 16);
      if (v209)
      {
        v210 = v209;
        goto LABEL_285;
      }
    }

    else
    {
      v208 = 0;
    }

    v210 = 0;
LABEL_285:
    if (v205 == v210 && *(v205 + 32))
    {
      v211 = OUTLINED_FUNCTION_15_9();
      v53 = v208;
      v212(v211, v208);
      v72 = 0;
    }

    else
    {
      v72 = 0;
      v53 = v208;
    }

    v81 = v230;
LABEL_146:
    if (*v272)
    {
      CFRelease(*v272);
    }

    if (v72)
    {
      goto LABEL_257;
    }

    goto LABEL_149;
  }

  OUTLINED_FUNCTION_41_3(v236);
  v275 = *v88;
  *&v276 = *(v88 + 16);
  *v272 = *v89;
  *&v272[16] = *(v89 + 16);
  v251 = *v90;
  v252 = *(v90 + 16);
  v91 = OUTLINED_FUNCTION_625();
  NodeForCursor = videoMentorDependencyStateFillRefreshGroupsUntil(v91, v92, a13, v244, a9, v93, v94, v95, 1, &v263);
  if (NodeForCursor)
  {
    goto LABEL_116;
  }

  v96 = v263;
  if (!v263)
  {
    if (v79)
    {
      CFRelease(v79);
      v264 = 0;
    }

    goto LABEL_191;
  }

  if (!a14)
  {
    goto LABEL_72;
  }

  v97 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v97)
  {
    goto LABEL_256;
  }

  NodeForCursor = v97(a13, &v265);
  if (NodeForCursor)
  {
    goto LABEL_116;
  }

LABEL_72:
  v251 = v265;
  v252 = v266;
  v246 = *a8;
  v249 = a8[1].n128_u64[0];
  v270 = 0;
  cf = 0;
  v98 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v98)
  {
LABEL_98:
    v72 = 4294954514;
    goto LABEL_99;
  }

  v99 = v98(v79, &v270);
  if (v99)
  {
LABEL_291:
    v72 = v99;
LABEL_99:
    v81 = a9;
LABEL_109:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_111;
  }

  v100 = 0;
  v237 = 0;
  v219 = *MEMORY[0x1E695E480];
  do
  {
    v101 = *(CMBaseObjectGetVTable() + 16);
    if (v101)
    {
      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    v103 = *(CMBaseObjectGetVTable() + 16);
    if (v103)
    {
      v104 = v103;
    }

    else
    {
      v104 = 0;
    }

    if (v102 == v104)
    {
      if (*(v102 + 32))
      {
        v105 = OUTLINED_FUNCTION_15_9();
        if (v106(v105, v96) == 1)
        {
          goto LABEL_107;
        }
      }
    }

    v268 = 0;
    v269 = 0;
    v107 = OUTLINED_FUNCTION_625();
    v99 = videoMentorDependencyStateGetNodeForCursor(v107, v108, v109, v244, 1, v110);
    if (v99)
    {
      goto LABEL_291;
    }

    v111 = v268;
    if (!*(v268 + 56))
    {
      HIBYTE(v267) = 0;
      v275 = v251;
      *&v276 = v252;
      *v272 = v246;
      *&v272[16] = v249;
      v114 = videoMentorCursorIsInPlayRange(v270, &v275, v272, &v267 + 7);
      if (v114)
      {
        v72 = v114;
        v221 = v53;
        v115 = v232;
      }

      else
      {
        if (HIBYTE(v267))
        {
          goto LABEL_86;
        }

        if (v237)
        {
          goto LABEL_95;
        }

        v221 = v53;
        v115 = v232;
        v116 = videoMentorRefreshGroupCreate(v219, MEMORY[0x1E6960C70], &cf);
        if (!v116)
        {
          v100 = cf;
          *(cf + 58) = 1;
          v53 = v221;
LABEL_95:
          videoMentorRefreshGroupAddNode(v100, v111);
          v237 = v100;
          goto LABEL_86;
        }

        v72 = v116;
      }

      v232 = v115;
      v53 = v221;
      goto LABEL_99;
    }

LABEL_86:
    v112 = v270;
    v113 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (!v113)
    {
      goto LABEL_98;
    }

    v99 = v113(v112, 1, &v269);
    if (v99)
    {
      goto LABEL_291;
    }
  }

  while (v269 == 1);
  v117 = CMBaseObjectGetVTable();
  if (*(v117 + 16))
  {
    v118 = *(v117 + 16);
  }

  else
  {
    v118 = 0;
  }

  v119 = *(CMBaseObjectGetVTable() + 16);
  if (v119)
  {
    v120 = v119;
  }

  else
  {
    v120 = 0;
  }

  if (v118 == v120 && *(v118 + 32))
  {
    v206 = OUTLINED_FUNCTION_15_9();
    v207(v206, v96);
  }

LABEL_107:
  v81 = a9;
  if (v100)
  {
    CFArrayInsertValueAtIndex(*(a2 + 16), 0, v100);
    v72 = 0;
    goto LABEL_109;
  }

  v72 = 0;
LABEL_111:
  if (v270)
  {
    CFRelease(v270);
  }

  if (!v72)
  {
    v85 = v263;
    goto LABEL_115;
  }

LABEL_257:
  if (v260)
  {
    CFRelease(v260);
  }

  if (v264)
  {
    CFRelease(v264);
  }

  if (v263)
  {
    CFRelease(v263);
  }

  if (v259)
  {
    CFRelease(v259);
  }

  if (theSet)
  {
    CFRelease(theSet);
  }

  if (v262)
  {
    CFRelease(v262);
  }

  return v72;
}

uint64_t videoMentorThreadResendCachedSampleBuffer(uint64_t a1, const void *a2, opaqueCMSampleBuffer *a3, int a4, int a5, int a6, int a7, __int128 *a8, __int128 *a9, __int128 *a10, const void *a11)
{
  sampleBufferOut = 0;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  if (videoMentorThreadWaitForOutputQueueToDropBelowHighWater(a1, a11))
  {
    return 0xFFFFFFFFLL;
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v20)
  {
    return 4294954514;
  }

  v21 = v20(a2, &sampleTimingArray.decodeTimeStamp);
  if (v21)
  {
    return v21;
  }

  v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v22)
  {
    return 4294954514;
  }

  v21 = v22(a2, &sampleTimingArray);
  if (v21)
  {
    return v21;
  }

  v23 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v23)
  {
    return 4294954514;
  }

  v21 = v23(a2, &sampleTimingArray.presentationTimeStamp);
  if (v21)
  {
    return v21;
  }

  v36 = 0;
  CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x1E695E480], a3, 1, &sampleTimingArray, &sampleBufferOut);
  v29 = a1;
  v24 = a4 == 1;
  if (!a7)
  {
    v24 = 0;
  }

  LOBYTE(v36) = v24;
  if (a7)
  {
    v25 = a4 == 0;
  }

  else
  {
    v25 = 0;
  }

  BYTE1(v36) = v25;
  v30 = *a8;
  v31 = *(a8 + 2);
  v32 = *a9;
  v33 = *(a9 + 2);
  v34 = *a10;
  v35 = *(a10 + 2);
  BYTE2(v36) = a6;
  videoMentorRemapSBufTiming(&v29, a11, sampleBufferOut);
  if (a6)
  {
    CMSetAttachment(sampleBufferOut, *MEMORY[0x1E6960520], *MEMORY[0x1E695E4D0], 1u);
  }

  v19 = videoMentorThreadSendSampleBuffer(a1, sampleBufferOut, a2, a4, 3, a5, 0, 0);
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  return v19;
}

uint64_t videoMentorDependencyStateGetNodeForCursor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  OUTLINED_FUNCTION_21_5();
  v12 = v11;
  bzero(v17, 0xA8uLL);
  *a6 = 0;
  v18 = v8;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v13)
  {
    return 4294954514;
  }

  result = v13(v8, &v19);
  if (result)
  {
    return result;
  }

  Value = CFDictionaryGetValue(*(v6 + 8), v17);
  v16 = Value;
  v20 = Value;
  if (a5 && !Value)
  {
    result = videoMentorFrameNodeCreate(v12, *MEMORY[0x1E695E480], v8, v7, &v20);
    if (result)
    {
      return result;
    }

    v16 = v20;
    CFDictionarySetValue(*(v6 + 8), v20, v20);
    if (v16)
    {
      CFRelease(v16);
    }
  }

  result = 0;
  *a6 = v16;
  return result;
}

double videoMentorPostCollectorCoherenceConduitNotification(uint64_t a1)
{
  if (*(a1 + 488))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v4 = Mutable;
      FigCFDictionarySetInt32();
      v5 = *(a1 + 24);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v6)
      {
        v6(v5, *MEMORY[0x1E6962E58], v4, 0);
      }

      CFRelease(v4);
    }

    else
    {
      v8 = qword_1EAF16DF0;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954463, "<<<< VideoMentor >>>>", 3809, v1);
    }
  }

  return result;
}

uint64_t videoMentorRefreshGroupClassifyNodes(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(*(a1 + 40));
  v3 = Count;
  if (Count > 10000)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), 0);
    return videoMentorReportIssueWithRefreshNode(ValueAtIndex);
  }

  if (Count < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = CFArrayGetValueAtIndex(*(a1 + 40), v5);
    if (v6[19] == 1)
    {
      goto LABEL_49;
    }

    v7 = v6;
    result = videoMentorFrameNodeDetermineIfIsLeaf(v6, a1);
    if (result)
    {
      return result;
    }

    if (v7[17] == 1)
    {
      v8 = OUTLINED_FUNCTION_30_5();
      CFArrayAppendValue(v8, v7);
      if (CFArrayGetCount(v8) >= 1)
      {
        do
        {
          v9 = OUTLINED_FUNCTION_9_2();
          v11 = CFArrayGetValueAtIndex(v9, v10);
          v12 = CFArrayGetCount(v11[4]);
          if (v12 >= 1)
          {
            v13 = v12;
            for (i = 0; i != v13; ++i)
            {
              v15 = CFArrayGetValueAtIndex(v11[4], i);
              if (*(v15 + 7) == a1 && !v15[17])
              {
                v15[17] = 1;
                CFArrayAppendValue(v8, v15);
              }
            }
          }

          v16 = OUTLINED_FUNCTION_9_2();
          CFArrayRemoveValueAtIndex(v16, v17);
        }

        while (CFArrayGetCount(v8) > 0);
      }

      CFRelease(v8);
    }

    v18 = OUTLINED_FUNCTION_30_5();
    CFArrayAppendValue(v18, v7);
    if (CFArrayGetCount(v18) < 1)
    {
      v46 = 2;
      goto LABEL_40;
    }

    v19 = v3;
    while (1)
    {
      v20 = OUTLINED_FUNCTION_9_2();
      v22 = CFArrayGetValueAtIndex(v20, v21);
      v23 = v22[2];
      if (v23)
      {
        break;
      }

LABEL_32:
      v34 = OUTLINED_FUNCTION_9_2();
      CFArrayRemoveValueAtIndex(v34, v35);
      if (CFArrayGetCount(v18) <= 0)
      {
        v46 = 2;
        goto LABEL_38;
      }
    }

    v24 = v22;
    v25 = *(a1 + 64);
    v26 = *(CMBaseObjectGetVTable() + 16);
    if (v26)
    {
      v27 = v26;
      if (!v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v27 = 0;
      if (!v25)
      {
        goto LABEL_26;
      }
    }

    v28 = *(CMBaseObjectGetVTable() + 16);
    if (v28)
    {
      v29 = v28;
      goto LABEL_27;
    }

LABEL_26:
    v29 = 0;
LABEL_27:
    if (v27 == v29 && *(v27 + 32) && (*(v29 + 32))(v23, v25) == -1)
    {
      goto LABEL_32;
    }

    v30 = CFArrayGetCount(v24[4]);
    if (v30 < 1)
    {
      goto LABEL_32;
    }

    v31 = v30;
    v32 = 0;
    while (1)
    {
      v33 = CFArrayGetValueAtIndex(v24[4], v32);
      if (v33[7] == a1)
      {
        break;
      }

      CFArrayAppendValue(v18, v33);
      if (v31 == ++v32)
      {
        goto LABEL_32;
      }
    }

    v46 = 1;
LABEL_38:
    v3 = v19;
LABEL_40:
    CFRelease(v18);
    v7[18] = v46;
    v36 = OUTLINED_FUNCTION_30_5();
    CFArrayAppendValue(v36, v7);
    if (CFArrayGetCount(v36) >= 1)
    {
      do
      {
        v37 = OUTLINED_FUNCTION_9_2();
        v39 = CFArrayGetValueAtIndex(v37, v38);
        v40 = CFArrayGetCount(v39[3]);
        if (v40 >= 1)
        {
          v41 = v40;
          for (j = 0; j != v41; ++j)
          {
            v43 = CFArrayGetValueAtIndex(v39[3], j);
            if (*(v43 + 7) == a1 && !v43[18])
            {
              v43[18] = 1;
              CFArrayAppendValue(v36, v43);
            }
          }
        }

        v44 = OUTLINED_FUNCTION_9_2();
        CFArrayRemoveValueAtIndex(v44, v45);
      }

      while (CFArrayGetCount(v36) > 0);
    }

    CFRelease(v36);
LABEL_49:
    if (++v5 == v3)
    {
      return 0;
    }
  }
}

uint64_t videoMentorCursorIsInPlayRange(const void *a1, uint64_t a2, CMTime *a3, _BYTE *a4)
{
  v7 = *(MEMORY[0x1E6960C98] + 16);
  *&v12.start.value = *MEMORY[0x1E6960C98];
  *&v12.start.epoch = v7;
  *&v12.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  *a4 = 0;
  CursorPTSRange = videoMentorGetCursorPTSRange(a1, &v12);
  if (!CursorPTSRange)
  {
    *&v10.start.value = *&v12.start.value;
    v10.start.epoch = v12.start.epoch;
    time2 = *a3;
    if (CMTimeCompare(&v10.start, &time2) < 0)
    {
      v10 = v12;
      CMTimeRangeGetEnd(&time2, &v10);
      *&v10.start.value = *a2;
      v10.start.epoch = *(a2 + 16);
      if (CMTimeCompare(&v10.start, &time2) < 0)
      {
        *a4 = 1;
      }
    }
  }

  return CursorPTSRange;
}

void videoMentorDependencyStateExecuteAction(const void **a1, int *a2)
{
  v4 = *(a2 + 1);
  v5 = *a2;
  if (*a2 != 2)
  {
    if (v5 != 1)
    {
      if (!v5 && *(v4 + 76) != 1)
      {
        *(v4 + 76) = 1;
        v6 = *(v4 + 56);
        if (v6)
        {
          --*(v6 + 80);
          *(v6 + 57) = 0;
        }

        Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(v4 + 32));
        if (CFArrayGetCount(Copy) >= 1)
        {
          OUTLINED_FUNCTION_417_0();
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Copy, v2);
            videoMentorFrameNodeRemoveDependentNode(ValueAtIndex, v4, 1);
            if (!*(ValueAtIndex + 19))
            {
              v10 = *(ValueAtIndex + 7);
              if (v10)
              {
                v34 = ValueAtIndex;
                v33 = 2;
                if (!*(v10 + 56))
                {
                  CFArrayAppendValue(*(v10 + 48), &v33);
                  videoMentorAddRefreshGroupToProcess(a1, *(ValueAtIndex + 7));
                }
              }
            }

            OUTLINED_FUNCTION_377_0();
          }

          while (!v9);
        }

        if (Copy)
        {
          CFRelease(Copy);
        }
      }

      goto LABEL_59;
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v12 = Mutable;
      CFArrayAppendValue(Mutable, v4);
      if (CFArrayGetCount(v12) >= 1)
      {
        do
        {
          v13 = OUTLINED_FUNCTION_383();
          v15 = CFArrayGetValueAtIndex(v13, v14);
          v16 = OUTLINED_FUNCTION_383();
          CFArrayRemoveValueAtIndex(v16, v17);
          if (*(v15 + 19) != 2 && v15 != *a1)
          {
            *(v15 + 19) = 2;
            v18 = *(v15 + 7);
            if (v18)
            {
              v18[10] = vadd_s32(v18[10], 0x1FFFFFFFFLL);
            }

            if (CFArrayGetCount(*(v15 + 4)) >= 1)
            {
              OUTLINED_FUNCTION_417_0();
              do
              {
                v19 = CFArrayGetValueAtIndex(*(v15 + 4), v2);
                if (v19[19] != 2)
                {
                  CFArrayAppendValue(v12, v19);
                }

                OUTLINED_FUNCTION_377_0();
              }

              while (!v9);
            }

            if (CFArrayGetCount(*(v15 + 3)) >= 1)
            {
              OUTLINED_FUNCTION_417_0();
              do
              {
                v20 = *(CFArrayGetValueAtIndex(*(v15 + 3), v2) + 7);
                if (v20)
                {
                  videoMentorAddRefreshGroupToProcess(a1, v20);
                }

                OUTLINED_FUNCTION_377_0();
              }

              while (!v9);
            }

            v21 = *(v15 + 7);
            if (v21)
            {
              videoMentorAddRefreshGroupToProcess(a1, v21);
            }
          }
        }

        while (CFArrayGetCount(v12) > 0);
      }

      OUTLINED_FUNCTION_52_4();

      CFRelease(v22);
      return;
    }

LABEL_59:
    OUTLINED_FUNCTION_52_4();
    return;
  }

  if ((*(v4 + 76) - 1) < 2 || *(v4 + 68) == 2)
  {
    goto LABEL_59;
  }

  *(v4 + 68) = 0;
  videoMentorFrameNodeDetermineIfIsLeaf(v4, *(v4 + 56));
  if (*(v4 + 68) == 2)
  {
    Count = CFArrayGetCount(*(v4 + 32));
    if (Count >= 1)
    {
      v25 = Count;
      for (i = 0; i != v25; ++i)
      {
        v27 = CFArrayGetValueAtIndex(*(v4 + 32), i);
        if (!*(v27 + 19))
        {
          v28 = v27;
          v29 = v27[7];
          if (v29)
          {
            v34 = v27;
            v33 = 2;
            if (!*(v29 + 56))
            {
              CFArrayAppendValue(*(v29 + 48), &v33);
              videoMentorAddRefreshGroupToProcess(a1, v28[7]);
            }
          }
        }
      }
    }

    videoMentorAddRefreshGroupToProcess(a1, *(v4 + 56));
    goto LABEL_59;
  }

  if (CFArrayGetCount(*(v4 + 24)) != 1 || !*(CFArrayGetValueAtIndex(*(v4 + 24), 0) + 7))
  {
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_52_4();

  videoMentorAddRefreshGroupToProcess(v30, v31);
}

uint64_t videoMentorSimulateSyncFrameClustersOnly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, uint64_t a9)
{
  OUTLINED_FUNCTION_21_5();
  v16 = v15;
  v58 = 0;
  cf = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v17)
    {
      v18 = v17(v16, &v58 + 1, 0, 0, &v58);
      if (!v18)
      {
        v19 = HIBYTE(v58);
        goto LABEL_16;
      }
    }

    else
    {
      v18 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v18, "<<<< VideoMentor >>>>", 5979, v10);
    goto LABEL_31;
  }

  LOBYTE(v55) = 0;
  LOBYTE(v52) = 0;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v20)
  {
    v18 = 4294954514;
    goto LABEL_28;
  }

  v18 = v20(v16, &v55, &v52, 0);
  if (v18)
  {
LABEL_28:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v18, "<<<< VideoMentor >>>>", 5984, v10);
    goto LABEL_31;
  }

  v21 = v55 - 66;
  if (v21 > 0xE || ((1 << v21) & 0x4081) == 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, v46, v48);
    goto LABEL_53;
  }

  if (v52)
  {
    v22 = 0;
  }

  else
  {
    v22 = v55 == 73;
  }

  v19 = v22;
  HIBYTE(v58) = v19;
  LOBYTE(v58) = v55 == 66;
LABEL_16:
  if (v19)
  {
    if ((*(a9 + 16) & 1) == 0 || (v55 = *(a9 + 4), v56 = *(a9 + 20), OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_268(v23, v44, v46, v48, v50, v52, *(&v52 + 1), v53, v54, v55) <= 0))
    {
      *a6 = 1;
      *a8 = 1;
      *(a9 + 76) = videoMentorSyncFrameIsOpenGOP();
      v26 = OUTLINED_FUNCTION_51_4();
      *(a9 + 44) = v27;
      *(a9 + 28) = v26;
      if (!*a7)
      {
        goto LABEL_67;
      }

      *a9 = 1;
      v28 = OUTLINED_FUNCTION_51_4();
      *(a9 + 68) = v29;
      *(a9 + 52) = v28;
      if (a5 < 2)
      {
        goto LABEL_47;
      }

      v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v30)
      {
        v18 = 4294954514;
        goto LABEL_31;
      }

      v31 = v30(v16, &cf);
      if (!v31)
      {
        v32 = cf;
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 176);
        if (v33)
        {
          v33(v32, (a5 - 1), 0);
        }

        v34 = cf;
        v35 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v35)
        {
          v35(v34, a9 + 52);
        }

        goto LABEL_47;
      }

LABEL_53:
      v18 = v31;
      goto LABEL_31;
    }
  }

  if (*(a9 + 77))
  {
    if (*a9 >= a5)
    {
      *a6 = 0;
      *a7 = 0;
      if (v58)
      {
        goto LABEL_67;
      }

      *a8 = 0;
      *(a9 + 76) = 0;
    }

    else
    {
      v55 = *(a9 + 28);
      v56 = *(a9 + 44);
      OUTLINED_FUNCTION_20_4();
      if (OUTLINED_FUNCTION_268(v24, v44, v46, v48, v50, v52, *(&v52 + 1), v53, v54, v55) > 0 || (OUTLINED_FUNCTION_6_22(), OUTLINED_FUNCTION_268(*(a9 + 68), v45, v47, v49, v51, *(a9 + 52), *(a9 + 60), v53, v54, v55) > 0))
      {
        if (v58)
        {
          goto LABEL_58;
        }

        if (*(a9 + 76))
        {
          OUTLINED_FUNCTION_6_22();
          if ((OUTLINED_FUNCTION_268(*(a9 + 44), v45, v47, v49, v51, *(a9 + 28), *(a9 + 36), v53, v54, v55) & 0x80000000) != 0)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_60;
      }

      *a6 = 1;
      *a7 = 1;
      ++*a9;
    }

    goto LABEL_65;
  }

  if (*(a9 + 76))
  {
    OUTLINED_FUNCTION_6_22();
    if ((OUTLINED_FUNCTION_268(*(a9 + 44), v44, v46, v48, v50, *(a9 + 28), *(a9 + 36), v53, v54, v55) & 0x80000000) != 0)
    {
      goto LABEL_58;
    }
  }

  if (!*a7 || !*a8)
  {
    if (v58)
    {
LABEL_58:
      v18 = 0;
      *a6 = 0;
LABEL_61:
      *a7 = 0;
      goto LABEL_31;
    }

LABEL_60:
    v18 = 0;
    *a6 = 1;
    goto LABEL_61;
  }

  *a6 = 1;
  *a7 = 1;
  *a9 = 1;
  v36 = OUTLINED_FUNCTION_51_4();
  *(a9 + 44) = v37;
  *(a9 + 28) = v36;
  v38 = OUTLINED_FUNCTION_51_4();
  *(a9 + 68) = v39;
  *(a9 + 52) = v38;
LABEL_47:
  OUTLINED_FUNCTION_29();
  if (v22 && (v55 = *v9, v56 = *(v9 + 2), OUTLINED_FUNCTION_268(*(MEMORY[0x1E6960CC0] + 16), v44, v46, v48, v50, *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), v53, v54, v55) >= 1))
  {
    if (*(a9 + 16))
    {
      v52 = *(a9 + 4);
      v40 = *(a9 + 20);
    }

    else
    {
      OUTLINED_FUNCTION_20_4();
    }

    v53 = v40;
  }

  else
  {
    v52 = *(a9 + 28);
    v53 = *(a9 + 44);
  }

  OUTLINED_FUNCTION_31_5();
  CMTimeAdd(v43, v41, v42);
  *(a9 + 4) = v55;
  *(a9 + 20) = v56;
LABEL_65:
  if (*a7)
  {
    v18 = 0;
    *(a9 + 77) = 1;
    goto LABEL_31;
  }

LABEL_67:
  v18 = 0;
LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

double videoMentorUpdateUpcomingOutputPTSRangeAnnouncement(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v55 = 0uLL;
  v56 = 0;
  v53 = 0uLL;
  v54 = 0;
  v49 = *MEMORY[0x1E6960C88];
  v50 = *(MEMORY[0x1E6960C88] + 16);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v13 || v13(a2, &v53) || (OUTLINED_FUNCTION_29(), !v14) || (v15 = *(*(CMBaseObjectGetVTable() + 16) + 40)) == 0 || v15(a2, &v55) || (BYTE12(v55) & 0x1D) != 1)
  {
    OUTLINED_FUNCTION_39_4();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v51 = v55;
  v52 = v56;
  v47 = *a7;
  v48 = a7[2];
  if ((BYTE12(v47) & 0x1D) == 1 && (v45 = v53, v46 = v54, (OUTLINED_FUNCTION_268(a7[2], v31, v34, v36, v38, *a7, a7[1], v40, v43, v53) & 0x80000000) != 0))
  {
    v51 = *a6;
    v52 = *(a6 + 16);
    v25 = 1;
  }

  else
  {
    if (!FigSampleCursorImplementsGetMinimumUpcomingPresentationTime(a2) || (v16 = OUTLINED_FUNCTION_42_5(), FigSampleCursorGetMinimumUpcomingPresentationTime(v16, v17, v18, v19)))
    {
      v20 = OUTLINED_FUNCTION_42_5();
      if (FigSampleCursorUtilityGetMinimumUpcomingPresentationTime(v20, v21, v22, v23))
      {
        return result;
      }
    }

    v25 = 0;
  }

  FigSimpleMutexLock();
  v26 = a1[8];
  if (v26)
  {
    if ((BYTE12(v55) & 0x1D) == 1)
    {
      v26(a1[9], a4, 0, &v55, &v49);
    }

    if ((v25 & 1) == 0)
    {
      OUTLINED_FUNCTION_29();
      if (v14)
      {
        (a1[8])(a1[9], a4, 0, &v51, &v49);
      }
    }
  }

  FigSimpleMutexUnlock();
  v41 = *(a5 + 16);
  v32 = v55;
  OUTLINED_FUNCTION_31_5();
  CMTimeMaximum(v29, v27, v28);
  *a5 = v45;
  v30 = v46;
  *(a5 + 16) = v46;
  v45 = *a5;
  v46 = v30;
  if (OUTLINED_FUNCTION_268(v52, v32, *(&v32 + 1), v36, v38, v51, *(&v51 + 1), v41, v43, v45) <= 0)
  {
    v51 = *MEMORY[0x1E6960C70];
    v52 = *(MEMORY[0x1E6960C70] + 16);
    v47 = v51;
    v48 = v52;
  }

  OUTLINED_FUNCTION_6_22();
  if (OUTLINED_FUNCTION_268(v52, v33, v35, v37, v39, v51, *(&v51 + 1), v42, v44, v45))
  {
    v45 = v51;
    v46 = v52;
    videoMentorPostMinAndMaxUpcomingOutputPTS(a1, &v45, MEMORY[0x1E6960C70]);
    *a6 = v51;
    *(a6 + 16) = v52;
    result = *&v47;
    *a7 = v47;
    a7[2] = v48;
  }

  return result;
}

void videoMentorThrottlingStateHandleDiscontinuity()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v50 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = 0;
  *&v45.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v45.epoch = v5;
  *&v44.value = *&v45.value;
  v44.epoch = v5;
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v37 = *&v45.value;
  *&v43.value = *&v45.value;
  v43.epoch = v5;
  v42 = 0;
  v6 = *v3;
  if (v6)
  {
    CFRelease(v6);
    *v4 = 0;
  }

  OUTLINED_FUNCTION_29();
  if (v18)
  {
    OUTLINED_FUNCTION_50_3();
    if (OUTLINED_FUNCTION_28_7(*(MEMORY[0x1E6960CC0] + 16), v22, v25, v27, v30, v32, v35, v37, *(&v37 + 1), *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, time2.value, *&time2.timescale, time2.epoch, v40, time.start.value) >= 1)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v7)
      {
        if (!v7(v1, &v47))
        {
          v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v8)
          {
            if (!v8(v1, &v46))
            {
              while (1)
              {
                v9 = *(*(OUTLINED_FUNCTION_55_5() + 16) + 40);
                if (!v9 || v9(v2, &v44))
                {
                  break;
                }

                if (v46)
                {
                  *&time.start.timescale = *&v44.timescale;
                  time.start.epoch = v44.epoch;
                  if ((OUTLINED_FUNCTION_28_7(v45.epoch, v23, v26, v28, v31, v33, v36, v37, *(&v37 + 1), v45.value, *&v45.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, time2.value, *&time2.timescale, time2.epoch, v40, v44.value) & 0x80000000) == 0)
                  {
                    goto LABEL_19;
                  }

                  if (v46)
                  {
                    CFRelease(v46);
                    v46 = 0;
                  }
                }

                v10 = *(*(OUTLINED_FUNCTION_55_5() + 16) + 8);
                if (!v10 || v10(v2, &v46))
                {
                  break;
                }

                v45 = v44;
LABEL_19:
                if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
                {
                  goto LABEL_32;
                }

                v11 = *(OUTLINED_FUNCTION_55_5() + 16);
                if (v11)
                {
                  v12 = v11;
                  if (!v1)
                  {
                    goto LABEL_24;
                  }
                }

                else
                {
                  v12 = 0;
                  if (!v1)
                  {
LABEL_24:
                    v13 = 0;
                    goto LABEL_25;
                  }
                }

                v13 = *(CMBaseObjectGetVTable() + 16);
LABEL_25:
                if (v12 != v13 || (v15 = *(v12 + 80)) == 0 || !v15(v2, v1, 1))
                {
                  v14 = *(*(OUTLINED_FUNCTION_55_5() + 16) + 168);
                  if (!v14 || v14(v2, 1, &v42))
                  {
                    break;
                  }

                  if (v42 == 1)
                  {
                    continue;
                  }
                }

LABEL_32:
                v29 = *(MEMORY[0x1E6960C98] + 16);
                v34 = *MEMORY[0x1E6960C98];
                v24 = *(MEMORY[0x1E6960C98] + 32);
                do
                {
                  *&time.start.value = v34;
                  *&time.start.epoch = v29;
                  *&time.duration.timescale = v24;
                  if (videoMentorGetCursorPTSRange(v46, &time))
                  {
                    break;
                  }

                  range = time;
                  CMTimeRangeGetEnd(&time2, &range);
                  *&range.start.value = *(v4 + 104);
                  range.start.epoch = *(v4 + 120);
                  if (CMTimeCompare(&range.start, &time2) < 0)
                  {
                    break;
                  }

                  v16 = v46;
                  v17 = *(*(CMBaseObjectGetVTable() + 16) + 176);
                  if (!v17)
                  {
                    break;
                  }

                  v18 = !v17(v16, 1, &v42) && v42 == 1;
                }

                while (v18);
                epoch = v45.epoch;
                *v4 = v46;
                v46 = 0;
                *&time.start.value = *&v45.value;
                time.start.epoch = epoch;
                if ((OUTLINED_FUNCTION_28_7(*(v0 + 16), v24, *(&v24 + 1), v29, *(&v29 + 1), v34, *(&v34 + 1), v37, *(&v37 + 1), *v0, *(v0 + 8), range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, time2.value, *&time2.timescale, time2.epoch, v40, v45.value) & 0x80000000) != 0)
                {
                  v45 = *v0;
                }

                *&range.start.value = *(v4 + 8);
                range.start.epoch = *(v4 + 24);
                time2 = v45;
                CMTimeSubtract(&time.start, &range.start, &time2);
                value = time.start.value;
                timescale = time.start.timescale;
                if ((time.start.flags & 0x1D) == 1)
                {
                  time.start.value = value;
                  time.start.timescale = timescale;
                  Seconds = CMTimeGetSeconds(&time.start);
                  OUTLINED_FUNCTION_50_3();
                  if (Seconds / CMTimeGetSeconds(&time.start) < 2147483650.0)
                  {
                    OUTLINED_FUNCTION_6_22();
                    CMTimeMultiply(&time.start, &range.start, v21);
                    *&range.start.value = *(v4 + 8);
                    range.start.epoch = *(v4 + 24);
                    CMTimeSubtract(&v43, &range.start, &time.start);
                  }
                }

                break;
              }
            }
          }
        }
      }
    }
  }

  *(v4 + 8) = v43;
  *(v4 + 32) = v37;
  *(v4 + 48) = v5;
  *(v4 + 152) = 0;
  videoMentorThrottlingStateClearSelectedCursors(v4);
  if (v46)
  {
    CFRelease(v46);
    v46 = 0;
  }

  if (v47)
  {
    CFRelease(v47);
  }
}

void videoMentorDependencyStateReset_cold_1(const void *a1, CFTypeRef *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Mutable;
    CFArrayAppendValue(Mutable, a1);
    if (CFArrayGetCount(v5) >= 1)
    {
      do
      {
        v6 = OUTLINED_FUNCTION_265();
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        v9 = OUTLINED_FUNCTION_265();
        CFArrayRemoveValueAtIndex(v9, v10);
        Count = CFArrayGetCount(ValueAtIndex[3]);
        OUTLINED_FUNCTION_53_3(Count);
        v12 = CFArrayGetCount(ValueAtIndex[5]);
        OUTLINED_FUNCTION_53_3(v12);
        CFArrayRemoveAllValues(ValueAtIndex[3]);
        CFArrayRemoveAllValues(ValueAtIndex[5]);
        CFArrayRemoveAllValues(ValueAtIndex[4]);
        CFArrayRemoveAllValues(ValueAtIndex[6]);
      }

      while (CFArrayGetCount(v5) > 0);
    }

    CFRelease(v5);
  }

  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }
}

void videoMentorResetSavedListAndEnqueueMarker_cold_1(CMAttachmentBearerRef *a1, uint64_t a2, void **a3)
{
  if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, a1))
  {
    CMSetAttachment(*a1, *MEMORY[0x1E6962E08], *MEMORY[0x1E695E4D0], 1u);
    v6 = *(a2 + 24);
    v7 = *a1;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      if (!v8(v6, v7))
      {
        ++*(a2 + 912);
        v9 = *a3;
        *a3 = 0;
        if (v9)
        {
          do
          {
            v10 = *v9;
            videoMentorSavedFrameDestroy(v9);
            v9 = v10;
          }

          while (v10);
        }
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void videoMentorRefreshGroupCreate_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a3 = v5;

  CFRelease(a2);
}

CFIndex videoMentorFrameNodeCopyUndeterminedParentNodes_cold_1(__CFArray *a1, __CFSet *a2)
{
  do
  {
    v5 = OUTLINED_FUNCTION_265();
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
    v8 = OUTLINED_FUNCTION_265();
    CFArrayRemoveValueAtIndex(v8, v9);
    if (CFArrayGetCount(ValueAtIndex[4]) >= 1)
    {
      OUTLINED_FUNCTION_417_0();
      do
      {
        v10 = CFArrayGetValueAtIndex(ValueAtIndex[4], v2);
        if (!v10[19])
        {
          v11 = v10;
          if (!CFSetContainsValue(a2, v10))
          {
            CFSetSetValue(a2, v11);
            CFArrayAppendValue(a1, v11);
          }
        }

        OUTLINED_FUNCTION_377_0();
      }

      while (!v12);
    }

    result = CFArrayGetCount(a1);
  }

  while (result > 0);
  return result;
}

double inspectorInspectBytePair(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, __CFString *a5)
{
  v10 = *a2;
  if (v10 <= 0xF)
  {
    if (*a2 && *(a1 + 16) == 2)
    {
      if (a3 > 1)
      {
        if (!a5)
        {
LABEL_8:
          *a4 = 1;
          *(a4 + 4) = 0x7874646100000002;
          *(a4 + 12) = 0;
          *(a1 + 16) = 2;
          *&result = 2020893793;
          *(a1 + 8) = 2020893793;
          return result;
        }

        v30 = 0;
        *cStr = 0;
        __sprintf_chk(cStr, 0, 5uLL, "%02x%02x", v10, a2[1]);
        v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
        if (v11)
        {
          v13 = v11;
          CFStringAppend(a5, v11);
          CFRelease(v13);
          goto LABEL_8;
        }

        return result;
      }

LABEL_81:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    if (!a3)
    {
      goto LABEL_81;
    }

    if (a5)
    {
      cStr[2] = 0;
      *cStr = 0;
      __sprintf_chk(cStr, 0, 3uLL, "%02x", v10);
      v19 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
      if (!v19)
      {
        return result;
      }

LABEL_23:
      v20 = v19;
      CFStringAppend(a5, v19);
      CFRelease(v20);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (v10 > 0x1F)
  {
    if ((v10 & 0x80) != 0)
    {
      return result;
    }

    if (!a3)
    {
      goto LABEL_81;
    }

    if (a5)
    {
      *cStr = bswap32(kUTF16StandardCharacters[*a2 - 32]) >> 16;
      v19 = OUTLINED_FUNCTION_3_30(*MEMORY[0x1E695E480], cStr);
      if (!v19)
      {
        return result;
      }

      goto LABEL_23;
    }

LABEL_24:
    *a4 = 1;
    *(a4 + 4) = *(a1 + 16);
    result = *(a1 + 8);
    *(a4 + 8) = result;
    if (a3 != 1)
    {
      return inspectorInspectBytePair(a1, a2 + 1, a3 - 1, a4, a5);
    }

    return result;
  }

  if (a3 <= 1)
  {
    goto LABEL_81;
  }

  v14 = a2[1];
  v15 = v10 & 0x17;
  v16 = v14 & 0xF0;
  if (v15 == 16 && v16 == 32)
  {
    if (a5)
    {
      v17 = a5;
      v18 = 16;
      goto LABEL_39;
    }

    goto LABEL_46;
  }

  if (v15 == 23 && (v14 - 45) <= 2u)
  {
    if (a5)
    {
      v17 = a5;
      v18 = 23;
LABEL_39:
      if (inspectorAppendMnemonicForBackgroundAndForegroundAttributeCode(v17, v18, v14))
      {
        return result;
      }
    }

LABEL_46:
    v24 = *(a1 + 16);
LABEL_47:
    *a4 = 1;
    if ((v10 & 8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    *(a4 + 4) = v24;
    *(a4 + 8) = 1668314222;
    *(a4 + 12) = v25;
    *(a1 + 12) = v25;
    *(a1 + 16) = v24;
    *(a1 + 8) = 1668314222;
    return result;
  }

  if (v15 == 17 && v16 == 32)
  {
    if (!a5)
    {
      goto LABEL_46;
    }

    v22 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &inspectorAppendMnemonicForMidRowCode_kMidRowMnemonics[6 * v14 - 192], 0);
    if (!v22)
    {
      return result;
    }

LABEL_45:
    v23 = v22;
    CFStringAppend(a5, v22);
    CFRelease(v23);
    goto LABEL_46;
  }

  if (v15 == 17 && v16 == 48)
  {
    if (!a5)
    {
      goto LABEL_46;
    }

    *cStr = bswap32(kUTF16SpecialCharacters[v14 - 48]) >> 16;
    v22 = OUTLINED_FUNCTION_3_30(*MEMORY[0x1E695E480], cStr);
    if (!v22)
    {
      return result;
    }

    goto LABEL_45;
  }

  if ((v10 & 0x16) == 0x14 && v16 == 32)
  {
    if (a5 && inspectorAppendMnemonicForMiscControlCode(a5, v15, v14))
    {
      return result;
    }

    if (v10)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    goto LABEL_47;
  }

  if (v15 == 23 && (v14 - 33) <= 2u)
  {
    if (a5 && inspectorAppendMnemonicForMiscControlCode(a5, 23, v14))
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v14 >= 64)
  {
    if (a5 && inspectorAppendMnemonicForPreambleAddressCode(a5, v15, v14))
    {
      return result;
    }

    goto LABEL_46;
  }

  if ((v10 & 0x16) != 0x12 || (v14 & 0xE0) != 0x20)
  {
    if (a5)
    {
      v30 = 0;
      *cStr = 0;
      __sprintf_chk(cStr, 0, 5uLL, "%02x%02x", v10, v14);
      v27 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
      if (!v27)
      {
        return result;
      }

      v28 = v27;
      CFStringAppend(a5, v27);
      CFRelease(v28);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 4) = 0;
    return result;
  }

  if (!a5 || !inspectorAppendMnemonicForExtendedCharacterCode(a5, v15, v14))
  {
    goto LABEL_46;
  }

  return result;
}

uint64_t inspectorAppendMnemonicForBackgroundAndForegroundAttributeCode(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 23)
  {
    if (a3 > 0x2F)
    {
      return 4294950734;
    }

    v4 = &inspectorAppendMnemonicForBackgroundAndForegroundAttributeCode_kAttributeMnemonics2[6 * a3 - 270];
  }

  else
  {
    if (a2 == 16)
    {
      if (a3 <= 0x2F)
      {
        v4 = &inspectorAppendMnemonicForBackgroundAndForegroundAttributeCode_kAttributeMnemonics1[8 * a3 - a3 - 224];
        goto LABEL_8;
      }

      return 4294950734;
    }

    v4 = 0;
  }

LABEL_8:
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0);
  if (!v5)
  {
    return 4294950736;
  }

  OUTLINED_FUNCTION_4_34(v5);
  CFRelease(v3);
  return 0;
}

uint64_t inspectorAppendMnemonicForMiscControlCode(uint64_t a1, int a2, unsigned int a3)
{
  if ((a2 & 0xFE) == 0x14)
  {
    if (a3 <= 0x2F)
    {
      v4 = &inspectorAppendMnemonicForMiscControlCode_kMiscMnemonics1[6 * a3 - 192];
      goto LABEL_8;
    }

    return 4294950734;
  }

  if (a2 == 23)
  {
    if (a3 > 0x23)
    {
      return 4294950734;
    }

    v4 = &inspectorAppendMnemonicForMiscControlCode_kMiscMnemonics2[6 * a3 - 198];
  }

  else
  {
    v4 = 0;
  }

LABEL_8:
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0);
  if (!v5)
  {
    return 4294950736;
  }

  OUTLINED_FUNCTION_4_34(v5);
  CFRelease(v3);
  return 0;
}

uint64_t inspectorAppendMnemonicForPreambleAddressCode(__CFString *a1, int a2, int a3)
{
  switch(a2)
  {
    case 16:
      if ((a3 & 0xE0) == 0x40)
      {
        v4 = a3 - 64;
      }

      else
      {
        v4 = 0;
      }

      if ((a3 & 0xE0) == 0x40)
      {
        v5 = 11;
      }

      else
      {
        v5 = 0;
      }

      break;
    case 17:
      OUTLINED_FUNCTION_0_44();
      if (v37 ^ v38 | v36)
      {
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      if (v37 ^ v38 | v36)
      {
        v21 = 0;
      }

      v23 = 2 * v40;
      v24 = v39 - 64;
      v25 = 1;
      goto LABEL_63;
    case 18:
      OUTLINED_FUNCTION_0_44();
      if (v17 ^ v18 | v16)
      {
        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      if (v17 ^ v18 | v16)
      {
        v21 = 0;
      }

      v23 = 4 * v22;
      v24 = v19 - 64;
      v25 = 3;
      goto LABEL_63;
    case 19:
      OUTLINED_FUNCTION_0_44();
      if (v27 ^ v28 | v26)
      {
        v12 = 0;
      }

      else
      {
        v12 = v30;
      }

      if (v27 ^ v28 | v26)
      {
        v13 = 0;
      }

      else
      {
        v13 = 13;
      }

      v14 = v29 - 64;
      v15 = 12;
      goto LABEL_50;
    case 20:
      OUTLINED_FUNCTION_0_44();
      if (v7 ^ v8 | v6)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      if (v7 ^ v8 | v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = 15;
      }

      v14 = v9 - 64;
      v15 = 14;
      goto LABEL_50;
    case 21:
      OUTLINED_FUNCTION_0_44();
      if (v42 ^ v43 | v41)
      {
        v12 = 0;
      }

      else
      {
        v12 = v45;
      }

      if (v42 ^ v43 | v41)
      {
        v13 = 0;
      }

      else
      {
        v13 = 6;
      }

      v14 = v44 - 64;
      v15 = 5;
      goto LABEL_50;
    case 22:
      OUTLINED_FUNCTION_0_44();
      if (v47 ^ v48 | v46)
      {
        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      if (v47 ^ v48 | v46)
      {
        v21 = 0;
      }

      v23 = 8 * v50;
      v24 = v49 - 64;
      v25 = 7;
LABEL_63:
      if (v20 == 64)
      {
        v4 = v24;
      }

      else
      {
        v4 = v21;
      }

      if (v20 == 64)
      {
        v5 = v25;
      }

      else
      {
        v5 = v23;
      }

      break;
    case 23:
      OUTLINED_FUNCTION_0_44();
      if (v32 ^ v33 | v31)
      {
        v12 = 0;
      }

      else
      {
        v12 = v35;
      }

      if (v32 ^ v33 | v31)
      {
        v13 = 0;
      }

      else
      {
        v13 = 10;
      }

      v14 = v34 - 64;
      v15 = 9;
LABEL_50:
      if (v10 == 64)
      {
        v4 = v14;
      }

      else
      {
        v4 = v12;
      }

      if (v10 == 64)
      {
        v5 = v15;
      }

      else
      {
        v5 = v13;
      }

      break;
    default:
      v4 = 0;
      v5 = 0;
      break;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 4294950736;
  }

  v52 = Mutable;
  CFStringAppendFormat(Mutable, 0, @"{Row:%02d,Col:%s}", v5, &inspectorAppendMnemonicForPreambleAddressCode_kPACMnemonics[5 * v4]);
  CFStringAppend(a1, v52);
  CFRelease(v52);
  return 0;
}

uint64_t inspectorAppendMnemonicForExtendedCharacterCode(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a3 - 32;
  v8 = 0;
  if (a2 == 19)
  {
    if (a3 <= 0x3F)
    {
      v5 = kUTF16ExtendedCharacters2[v4];
      goto LABEL_7;
    }

    return 4294950734;
  }

  if (a2 != 18)
  {
    goto LABEL_8;
  }

  if (a3 > 0x3F)
  {
    return 4294950734;
  }

  v5 = kUTF16ExtendedCharacters1[v4];
LABEL_7:
  v8 = bswap32(v5) >> 16;
LABEL_8:
  v6 = OUTLINED_FUNCTION_3_30(*MEMORY[0x1E695E480], &v8);
  if (!v6)
  {
    return 4294950736;
  }

  OUTLINED_FUNCTION_4_34(v6);
  CFRelease(v3);
  return 0;
}

void FigCEA608DataInspectorCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataInspectorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataInspectorInspectBytePair_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataInspectorInspectBytePair_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataInspectorInspectBytePair_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataInspectorInspectBytePair_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA608DataInspectorInspectBytePair_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigAudioQueueTimingShimNewOutput(const AudioStreamBasicDescription *a1, void (__cdecl *a2)(void *, AudioQueueRef, AudioQueueBufferRef), void *a3, __CFRunLoop *a4, const __CFString *a5, UInt32 a6, const void *a7, __int128 *a8, uint64_t *a9)
{
  outAQ = 0;
  inData = 0;
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v14 = a1;
  fig_note_initialize_category_with_default_work_cf();
  v15 = AudioQueueNewOutput(a1, a2, a3, a4, a5, a6, &outAQ);
  if (v15)
  {
    goto LABEL_24;
  }

  if (a7)
  {
    v16 = *(CMBaseObjectGetVTable() + 16);
    if (!v16)
    {
      Instance = 0;
      v22 = 4294948075;
      goto LABEL_17;
    }

    v17 = *(v16 + 16);
    if (!v17)
    {
      Instance = 0;
      v22 = 4294948071;
      goto LABEL_17;
    }

    v15 = v17(a7, @"FAS_AudioSessionID", *MEMORY[0x1E695E480], &cf);
    if (v15 || (inData = FigCFNumberGetSInt32()) != 0 && (v15 = AudioQueueSetProperty(outAQ, 0x72736573u, &inData, 4u), v15))
    {
LABEL_24:
      v22 = v15;
LABEL_13:
      Instance = 0;
      goto LABEL_17;
    }
  }

  MEMORY[0x19A8D3660](&sRegisterFigAudioQueueTimingShimTypeOnce, registerFigAudioQueueTimingShimType);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v19 = FigDispatchQueueCreateWithPriority();
    if (v19)
    {
      v20 = v19;
      *(Instance + 52) = v14->mSampleRate;
      v21 = *a8;
      *(Instance + 44) = *(a8 + 2);
      *(Instance + 28) = v21;
      *(Instance + 16) = outAQ;
      outAQ = 0;
      if (a7)
      {
        CFRetain(a7);
      }

      v22 = 0;
      *(Instance + 24) = -12948;
      *(Instance + 56) = a7;
      *(Instance + 64) = v20;
      *a9 = Instance;
      goto LABEL_13;
    }

    v22 = 4294954510;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, a8);
    v22 = v23;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (outAQ)
  {
    AudioQueueDispose(outAQ, 0);
  }

  return v22;
}

uint64_t FigAudioQueueTimingShimDispose(AudioQueueRef *a1, Boolean a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!a1[2])
  {
    return 4294954511;
  }

  faqts_waitAudioQueueStartSynchronous(a1);
  if (dword_1EAF16E18)
  {
    v14 = OUTLINED_FUNCTION_126(qword_1EAF16E10, v7, v8, v9, v10, v11, v12, v13, v31, v33, v35, *v37, v37[2], 0, 0);
    if (OUTLINED_FUNCTION_116_0(v14, v15, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v39, type, v41))
    {
      v22 = v4;
    }

    else
    {
      v22 = v4 & 0xFFFFFFFE;
    }

    if (v22)
    {
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl(v23, v24, v25, v26, v27, v2, v3, v28);
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v29 = AudioQueueDispose(a1[2], a2);
  a1[2] = 0;
  CFRelease(a1);
  return v29;
}

uint64_t FigAudioQueueTimingShimFlush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294954516;
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
    return 4294954511;
  }

  if (dword_1EAF16E18)
  {
    v12 = OUTLINED_FUNCTION_5_30(v11, a2, a3, a4, a5, a6, a7, a8, v28, v30, v32, v34, SBYTE2(v34), SBYTE3(v34), SHIDWORD(v34));
    v20 = OUTLINED_FUNCTION_180_0(v12, v13, v14, v15, v16, v17, v18, v19, v29, v31, v33, v35, v36, v37, v38);
    if (OUTLINED_FUNCTION_124_0(v20))
    {
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v8, v9, v26);
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = *(a1 + 16);
  }

  return AudioQueueFlush(v11);
}

uint64_t FigAudioQueueTimingShimReset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294954516;
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
    return 4294954511;
  }

  if (dword_1EAF16E18)
  {
    v12 = OUTLINED_FUNCTION_5_30(v11, a2, a3, a4, a5, a6, a7, a8, v28, v30, v32, v34, SBYTE2(v34), SBYTE3(v34), SHIDWORD(v34));
    v20 = OUTLINED_FUNCTION_180_0(v12, v13, v14, v15, v16, v17, v18, v19, v29, v31, v33, v35, v36, v37, v38);
    if (OUTLINED_FUNCTION_124_0(v20))
    {
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v8, v9, v26);
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = *(a1 + 16);
  }

  return AudioQueueReset(v11);
}

uint64_t FigAudioQueueTimingShimPause(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!*(a1 + 16))
  {
    return 4294954511;
  }

  started = faqts_waitAudioQueueStartSynchronous(a1);
  if (dword_1EAF16E18)
  {
    v12 = OUTLINED_FUNCTION_5_30(started, v5, v6, v7, v8, v9, v10, v11, v28, v30, v32, v34, SBYTE2(v34), SBYTE3(v34), SHIDWORD(v34));
    v20 = OUTLINED_FUNCTION_180_0(v12, v13, v14, v15, v16, v17, v18, v19, v29, v31, v33, v35, v36, v37, v38);
    if (OUTLINED_FUNCTION_124_0(v20))
    {
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v1, v2, v26);
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = AudioQueuePause(*(a1 + 16));
  if (!result)
  {
    *(a1 + 24) = -12948;
  }

  return result;
}

uint64_t FigAudioQueueTimingShimPrime(uint64_t a1, uint64_t inNumberOfFramesToPrepare, UInt32 *outNumberOfFramesPrepared, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294954516;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    return 4294954511;
  }

  v11 = inNumberOfFramesToPrepare;
  if (dword_1EAF16E18)
  {
    v12 = OUTLINED_FUNCTION_126(qword_1EAF16E10, inNumberOfFramesToPrepare, outNumberOfFramesPrepared, a4, a5, a6, a7, a8, v21, v22, v23, *v24, v24[2], 0, 0);
    if (os_log_type_enabled(v12, type))
    {
      v13 = v26;
    }

    else
    {
      v13 = v26 & 0xFFFFFFFE;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl(v14, v15, v16, v17, v18, v12, type, v19);
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = *(a1 + 16);
  }

  return AudioQueuePrime(v9, v11, outNumberOfFramesPrepared);
}

uint64_t FigAudioQueueTimingShimGetIncrementedSampleTime(CMTime *a1, double *a2, double *a3)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!a1->epoch)
  {
    return 4294954511;
  }

  if (!a3)
  {
    return 4294954516;
  }

  memset(v18, 0, sizeof(v18));
  faqts_convertTimingShimTimeStampToAQTimeStamp(a1, a2, v18);
  *v18 = *v18 + 1.0;
  v6 = faqts_convertAQTimeStampToTimingShimTimeStamp(a1, v18, v17);
  OUTLINED_FUNCTION_16_9(v6, v7, v8, v9, v10, v11, v12, v13, v14, v17[0], v17[1], v15, v17[2]);
  result = 0;
  if (*a3 == *a2)
  {
    *a3 = *a3 + 1.0;
  }

  return result;
}

void FigAudioQueueTimingShimConvertTimingShimTimeToAQTime()
{
  OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960C70]);
  if (v0)
  {
    v8 = OUTLINED_FUNCTION_7_16(v0, v1, v2, v3, v4, v5, v6, v7, v27, v31, v33, v35, v37, v39, v41, v43, v45);
    v16 = OUTLINED_FUNCTION_12_13(v8, v9, v10, v11, v12, v13, v14, v15, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46);
    v19 = faqts_convertTimingShimTimeStampToAQTimeStamp(v16, v17, v18);
    OUTLINED_FUNCTION_19_8(v19, v20, v21, v22, v23, v24, v25, v26, v29);
  }
}

uint64_t FigAudioQueueTimingShimStartAsyncWithPerfCallback(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!*(a1 + 16))
  {
    return 4294954511;
  }

  if (a2)
  {
    v13 = a1 + 72;
    faqts_convertTimingShimTimeStampToAQTimeStamp(a1, a2, v17);
    v14 = v17[1];
    *(a1 + 72) = v17[0];
    *(a1 + 88) = v14;
    v15 = v17[3];
    *(a1 + 104) = v17[2];
    *(a1 + 120) = v15;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 136) = v13;
  faqts_audioQueueStartAsync(a1, a4, a5, a3, a6, a7);
  return 0;
}

uint64_t FigAudioQueueTimingShimStartWithPerfCallback(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!*(a1 + 16))
  {
    return 4294954511;
  }

  if (a2)
  {
    v9 = a1 + 72;
    faqts_convertTimingShimTimeStampToAQTimeStamp(a1, a2, v13);
    v10 = v13[1];
    *(a1 + 72) = v13[0];
    *(a1 + 88) = v10;
    v11 = v13[3];
    *(a1 + 104) = v13[2];
    *(a1 + 120) = v11;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 136) = v9;
  faqts_audioQueueStartAsync(a1, 0, 0, a3, a4, a5);

  return faqts_waitAudioQueueStartSynchronous(a1);
}

uint64_t FigAudioQueueTimingShimStop(uint64_t a1, Boolean a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!*(a1 + 16))
  {
    return 4294954511;
  }

  faqts_waitAudioQueueStartSynchronous(a1);
  if (dword_1EAF16E18)
  {
    v14 = OUTLINED_FUNCTION_126(qword_1EAF16E10, v7, v8, v9, v10, v11, v12, v13, v30, v32, v34, *v36, v36[2], 0, 0);
    if (OUTLINED_FUNCTION_116_0(v14, v15, v16, v17, v18, v19, v20, v21, v31, v33, v35, v37, v38, type, v40))
    {
      v22 = v4;
    }

    else
    {
      v22 = v4 & 0xFFFFFFFE;
    }

    if (v22)
    {
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl(v23, v24, v25, v26, v27, v2, v3, v28);
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = AudioQueueStop(*(a1 + 16), a2);
  if (!result)
  {
    *(a1 + 24) = -12948;
  }

  return result;
}

uint64_t FigAudioQueueTimingShimGetParameter(uint64_t a1, AudioQueueParameterID a2, AudioQueueParameterValue *a3)
{
  if (!a1)
  {
    return 4294954516;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    return AudioQueueGetParameter(v3, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimSetParameter(uint64_t a1, AudioQueueParameterID a2, AudioQueueParameterValue a3)
{
  if (!a1)
  {
    return 4294954516;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    return AudioQueueSetParameter(v3, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimGetProperty(uint64_t a1, AudioQueuePropertyID a2, void *a3, UInt32 *a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    return AudioQueueGetProperty(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimSetProperty(uint64_t a1, AudioQueuePropertyID a2, const void *a3, UInt32 a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    return AudioQueueSetProperty(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimAddPropertyListener(uint64_t a1, AudioQueuePropertyID a2, void (__cdecl *a3)(void *, AudioQueueRef, AudioQueuePropertyID), void *a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    return AudioQueueAddPropertyListener(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimRemovePropertyListener(uint64_t a1, AudioQueuePropertyID a2, void (__cdecl *a3)(void *, AudioQueueRef, AudioQueuePropertyID), void *a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    return AudioQueueRemovePropertyListener(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimAllocateBufferWithMemory(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (*(a1 + 16))
  {
    return MEMORY[0x1EEDB4228]();
  }

  return OUTLINED_FUNCTION_6_23();
}

uint64_t FigAudioQueueTimingShimAllocateBuffer(uint64_t a1, UInt32 a2, AudioQueueBufferRef *a3)
{
  if (!a1)
  {
    return 4294954516;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    return AudioQueueAllocateBuffer(v3, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimFreeBuffer(uint64_t a1, AudioQueueBuffer *a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    return AudioQueueFreeBuffer(v2, a2);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

void FigAudioQueueTimingShimGetCurrentTime(CMTime *a1, AudioQueueTimelineRef inTimeline, int a3, _OWORD *a4, Boolean *outTimelineDiscontinuity, _OWORD *a6)
{
  v6 = a4[1];
  *&outTimeStamp.mSampleTime = *a4;
  *&outTimeStamp.mRateScalar = v6;
  v7 = a4[3];
  *&outTimeStamp.mSMPTETime.mSubframes = a4[2];
  *&outTimeStamp.mSMPTETime.mHours = v7;
  if (a1)
  {
    epoch = a1->epoch;
    if (epoch)
    {
      if (a3)
      {
        if (faqts_waitAudioQueueStartSynchronous(a1))
        {
          return;
        }

        epoch = a1->epoch;
      }

      if (!AudioQueueGetCurrentTime(epoch, inTimeline, &outTimeStamp, outTimelineDiscontinuity))
      {
        if (a6)
        {
          v13 = *&outTimeStamp.mRateScalar;
          *a6 = *&outTimeStamp.mSampleTime;
          a6[1] = v13;
          v14 = *&outTimeStamp.mSMPTETime.mHours;
          a6[2] = *&outTimeStamp.mSMPTETime.mSubframes;
          a6[3] = v14;
        }

        faqts_convertAQTimeStampToTimingShimTimeStamp(a1, &outTimeStamp, v24);
        OUTLINED_FUNCTION_16_9(0, v15, v16, v17, v18, v19, v20, v21, v22, v24[0], v24[1], v23, v24[2]);
      }
    }
  }
}

uint64_t FigAudioQueueTimingShimScheduleParameters(uint64_t a1, double *a2, uint64_t a3, unsigned int *a4, float *a5)
{
  memset(v27, 0, 64);
  if (a1)
  {
    if (*(a1 + 16))
    {
      v7 = a3;
      faqts_convertTimingShimTimeStampToAQTimeStamp(a1, a2, v27);
      v9 = v7;
      v19 = malloc_type_calloc(v7, 4uLL, 0x100004052888210uLL);
      if (v7)
      {
        v11 = v19;
        v10 = a4;
        do
        {
          v12 = *v10++;
          v13 = (1 << v12) & 0x8001440;
          if (v12 > 0x1B || v13 == 0)
          {
            v15 = *a5;
          }

          else
          {
            v26 = 1;
            v25 = 0u;
            v24 = 0u;
            v23 = 0u;
            v22 = *a2 + (*a5 * *(a1 + 52));
            faqts_convertTimingShimTimeStampToAQTimeStamp(a1, &v22, v21);
            v15 = (v21[0] - *v27) / *(a1 + 52);
          }

          *v11++ = v15;
          ++a5;
          --v9;
        }

        while (v9);
      }

      v16 = v19;
      v17 = AudioQueueScheduleParameters();
    }

    else
    {
      v16 = 0;
      v17 = 4294954511;
    }
  }

  else
  {
    v16 = 0;
    v17 = 4294954516;
  }

  free(v16);
  return v17;
}

uint64_t FigAudioQueueTimingShimEnqueueBufferWithParameters(CMTime *a1, AudioQueueBuffer *a2, UInt32 a3, const AudioStreamPacketDescription *a4, UInt32 a5, UInt32 a6, UInt32 a7, const AudioQueueParameterEvent *a8, uint64_t a9, _OWORD *a10)
{
  if (!a1)
  {
    return 4294954516;
  }

  epoch = a1->epoch;
  if (!epoch)
  {
    return 4294954511;
  }

  memset(v25, 0, 64);
  memset(&v24, 0, sizeof(v24));
  if (a9)
  {
    inStartTime = v25;
    faqts_convertTimingShimTimeStampToAQTimeStamp(a1, a9, v25);
    epoch = a1->epoch;
  }

  else
  {
    inStartTime = 0;
  }

  result = AudioQueueEnqueueBufferWithParameters(epoch, a2, a3, a4, a5, a6, a7, a8, inStartTime, &v24);
  if (a10)
  {
    if (!result)
    {
      faqts_convertAQTimeStampToTimingShimTimeStamp(a1, &v24, v23);
      result = 0;
      v21 = v23[1];
      *a10 = v23[0];
      a10[1] = v21;
      v22 = v23[3];
      a10[2] = v23[2];
      a10[3] = v22;
    }
  }

  return result;
}

uint64_t FigAudioQueueTimingShimGetAudioQueueLatency(uint64_t a1, OpaqueCMClock *a2, int a3, CMTime *a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6960C70];
  *&v43.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v43.epoch = v5;
  if (!a1)
  {
    return 4294954516;
  }

  if (!*(a1 + 16))
  {
    return 4294954511;
  }

  v41 = v4;
  v10 = FigPreferAudioSessionClock();
  v11 = MEMORY[0x1E6960CC0];
  clock = a2;
  if (v10)
  {
    outData.value = 0;
    LODWORD(ioDataSize.value) = 8;
    Property = AudioQueueGetProperty(*(a1 + 16), 0x7164646Cu, &outData, &ioDataSize);
    if (!Property)
    {
      CMTimeMakeWithSeconds(&v43, *&outData.value, 1000000000);
      if (dword_1EAF16E18)
      {
        LODWORD(v53.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v53.value;
        value_low = LOBYTE(type.value);
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
        {
          v16 = value;
        }

        else
        {
          v16 = value & 0xFFFFFFFE;
        }

        if (v16)
        {
          OUTLINED_FUNCTION_14_12(v43.epoch, v35, v36, v38, a2, v41, *(&v41 + 1), v43.value, *&v43.timescale, v43.epoch, v44, v45, v46, v47, v48, v49.value, *&v49.timescale, v49.epoch, v50, type.value, *&type.timescale, type.epoch, v52, v53.value, *&v53.timescale, v53.epoch, v54, ioDataSize.value, *&ioDataSize.timescale, ioDataSize.epoch, v56, *&value_4, v58, outData.value, *&outData.timescale, outData.epoch, v60, *&rhs.mSampleTime, rhs.mHostTime, *&rhs.mRateScalar, rhs.mWordClockTime, *&rhs.mSMPTETime.mSubframes, *&rhs.mSMPTETime.mType, *&rhs.mSMPTETime.mHours, *&rhs.mFlags, v62, v63, v43.value, *&v43.timescale, *&lhs[0].mRateScalar);
          LODWORD(rhs.mSampleTime) = 136315650;
          OUTLINED_FUNCTION_11_15();
          rhs.mWordClockTime = v17;
          LODWORD(v37) = 32;
          _os_log_send_and_compose_impl(v16, 0, lhs, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< FAQ TIMING SHIM >>>> %s: (%p) current (possibly dynamic) latency: %.3f", &rhs, v37, v39);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = MEMORY[0x1E6960CC0];
      }
    }
  }

  else
  {
    HIDWORD(v58) = 0;
    value_4 = NAN;
    HIDWORD(v56) = 0;
    *&outData.value = v41;
    outData.epoch = v5;
    *&ioDataSize.value = v41;
    ioDataSize.epoch = v5;
    *&v53.value = v41;
    v53.epoch = v5;
    type = **&MEMORY[0x1E6960CC0];
    *&v49.value = v41;
    v49.epoch = v5;
    LODWORD(v48) = 0;
    v47 = *"trsnptuo";
    AudioDevice = CMAudioDeviceClockGetAudioDevice(a2, 0, &v58 + 1, 0);
    if (AudioDevice)
    {
      goto LABEL_44;
    }

    if (!FigAudioDeviceSupportsPresentationTime())
    {
      Property = 4294949375;
      goto LABEL_22;
    }

    AudioDevice = faqts_getAudioQueueLatency(a1, &v53);
    if (AudioDevice || (AudioDevice = FigAudioDeviceGetCurrentDynamicLatency(), AudioDevice) || (HIDWORD(v48) = 8, AudioDevice = OUTLINED_FUNCTION_15_10(HIDWORD(v58), &v47, v19, v20, &v48 + 1, &value_4), AudioDevice))
    {
LABEL_44:
      Property = AudioDevice;
    }

    else
    {
      LODWORD(v46) = 0;
      v45 = *"tlwhptuo";
      HIDWORD(v48) = 4;
      if (!OUTLINED_FUNCTION_15_10(HIDWORD(v58), &v45, v21, v22, &v48 + 1, &v56 + 4))
      {
        CMTimeMake(&ioDataSize, HIDWORD(v56), value_4);
        *&lhs[0].mSampleTime = *&v53.value;
        *&lhs[0].mRateScalar = v53.epoch;
        *&rhs.mSampleTime = *&ioDataSize.value;
        *&rhs.mRateScalar = ioDataSize.epoch;
        CMTimeSubtract(&type, lhs, &rhs);
      }

      *&lhs[0].mSampleTime = *&outData.value;
      *&lhs[0].mRateScalar = outData.epoch;
      *&rhs.mSampleTime = *&type.value;
      *&rhs.mRateScalar = type.epoch;
      CMTimeAdd(&v49, lhs, &rhs);
      if (dword_1EAF16E18)
      {
        HIDWORD(v44) = 0;
        BYTE3(v44) = 0;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      Property = 0;
      v43 = v49;
    }
  }

LABEL_22:
  if (Property && faqts_getAudioQueueLatency(a1, &v43))
  {
    memset(lhs, 0, 64);
    memset(&rhs, 0, sizeof(rhs));
    outData = *v11;
    CurrentTime = AudioQueueDeviceGetCurrentTime(*(a1 + 16), lhs);
    if (!CurrentTime)
    {
      if ((~lhs[0].mFlags & 3) != 0)
      {
LABEL_43:
        v43 = outData;
        goto LABEL_23;
      }

      LODWORD(v53.value) = 0;
      LODWORD(type.value) = 0;
      LODWORD(v47) = 0;
      LODWORD(v45) = 0;
      if (CMAudioDeviceClockGetAudioDevice(clock, 0, &v53, 0))
      {
        goto LABEL_49;
      }

      ioDataSize.value = 0x6F75747073746D23;
      ioDataSize.timescale = 0;
      LODWORD(v49.value) = 4;
      CurrentTime = OUTLINED_FUNCTION_15_10(v53.value, &ioDataSize, v28, v29, &v49, &type);
      if (CurrentTime)
      {
        return CurrentTime;
      }

      ioDataSize.value = 0x676C6F626C746E63;
      ioDataSize.timescale = 0;
      LODWORD(v49.value) = 4;
      if (OUTLINED_FUNCTION_15_10(type.value, &ioDataSize, v30, v31, &v49, &v47) || (ioDataSize.value = 0x6F7574706C746E63, ioDataSize.timescale = 0, LODWORD(v49.value) = 4, OUTLINED_FUNCTION_15_10(v53.value, &ioDataSize, v32, v33, &v49, &v45)))
      {
LABEL_49:
        OUTLINED_FUNCTION_8_16();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        return Property;
      }

      lhs[0].mSampleTime = lhs[0].mSampleTime + (v45 + v47);
      lhs[0].mFlags = 1;
      rhs.mFlags = 2;
      CurrentTime = AudioQueueDeviceTranslateTime(*(a1 + 16), lhs, &rhs);
      if (!CurrentTime)
      {
        if ((rhs.mFlags & 2) != 0)
        {
          v34 = FigHostTimeToNanoseconds();
          CMTimeMake(&outData, v34, 1000000000);
        }

        goto LABEL_43;
      }
    }

    return CurrentTime;
  }

LABEL_23:
  LODWORD(rhs.mSampleTime) = 0;
  v42 = *&v11->value;
  *&lhs[0].mSampleTime = *&v11->value;
  v24 = *&v11->epoch;
  lhs[0].mRateScalar = v24;
  if (!FigPreferAudioSessionClock() && !faqts_getAudioDeviceScreenLatencyFromDevice(@"AirTunes", &rhs))
  {
    mSampleTime_low = LODWORD(rhs.mSampleTime);
    if (!a3 || LODWORD(rhs.mSampleTime))
    {
LABEL_29:
      CMTimeMake(lhs, mSampleTime_low, 1000);
      *&rhs.mSampleTime = *&lhs[0].mSampleTime;
      rhs.mRateScalar = lhs[0].mRateScalar;
      *&outData.value = v42;
      *&outData.epoch = v24;
      if (CMTimeCompare(&rhs, &outData))
      {
        outData = v43;
        *&ioDataSize.value = *&lhs[0].mSampleTime;
        ioDataSize.epoch = *&lhs[0].mRateScalar;
        CMTimeSubtract(&rhs, &outData, &ioDataSize);
        *&v43.value = *&rhs.mSampleTime;
        v43.epoch = *&rhs.mRateScalar;
      }

      goto LABEL_31;
    }

    if (!faqts_getAudioDeviceScreenLatencyFromDevice(@"Nero", &rhs))
    {
      mSampleTime_low = LODWORD(rhs.mSampleTime);
      goto LABEL_29;
    }
  }

LABEL_31:
  Property = 0;
  *a4 = v43;
  return Property;
}

uint64_t faqts_getAudioQueueLatency(uint64_t a1, CMTime *a2)
{
  outData = 0.0;
  ioDataSize = 8;
  Property = AudioQueueGetProperty(*(a1 + 16), 0x71646C73u, &outData, &ioDataSize);
  if (!Property)
  {
    CMTimeMakeWithSeconds(&v5, outData, 1000000000);
    *a2 = v5;
  }

  return Property;
}

BOOL editMentorNewWithChildAudioVideoEditOrCallbacksMentorAndSingleEditSegmentOrTrack_cold_1(uint64_t a1, void *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  v6 = v5;
  *a3 = v5;
  EditMentorDispose(a2);
  return v6 == 0;
}

uint64_t FigSampleBufferRenderSynchronizerCreateRemoteWithOptions(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    v9 = 0;
    v5 = 4294950926;
    goto LABEL_16;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  cf[0] = MEMORY[0x1E69E9820];
  cf[1] = 0x40000000;
  cf[2] = __synchronizerRemote_ensureClientEstablished_block_invoke;
  cf[3] = &unk_1E7481528;
  cf[4] = &v15;
  if (qword_1ED4CA758 != -1)
  {
    dispatch_once(&qword_1ED4CA758, cf);
  }

  v5 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  if (v5)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  cf[0] = 0;
  FigSampleBufferRenderSynchronizerGetClassID();
  OnlyTimebase = CMDerivedObjectCreate();
  if (OnlyTimebase || (DerivedStorage = CMBaseObjectGetDerivedStorage(), HostTimeClock = CMClockGetHostTimeClock(), OnlyTimebase = CMTimebaseCreateWithSourceClock(a1, HostTimeClock, (DerivedStorage + 16)), OnlyTimebase) || (OnlyTimebase = CMTimebaseCreateWithSourceTimebase(a1, *(DerivedStorage + 16), (DerivedStorage + 24)), OnlyTimebase) || (OnlyTimebase = CMTimebaseCreateReadOnlyTimebase(), OnlyTimebase))
  {
    v5 = OnlyTimebase;
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_15;
  }

  v9 = cf[0];
  v10 = FigXPCCreateBasicMessage();
  if (!v10)
  {
    v10 = FigXPCMessageSetCFDictionary();
    if (!v10)
    {
      v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v5)
      {
        goto LABEL_16;
      }

      uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
      v12 = CMBaseObjectGetDerivedStorage();
      FigXPCRemoteClientAssociateObject();
      *(v12 + 8) = uint64;
      CMBaseObjectGetDerivedStorage();
      cf[0] = 0;
      if (!FigXPCCreateBasicMessage())
      {
        FigXPCRemoteClientSendAsyncMessage();
      }

      FigXPCRelease();
      v5 = 0;
      *a3 = v9;
      goto LABEL_15;
    }
  }

  v5 = v10;
LABEL_16:
  FigXPCRelease();
  FigXPCRelease();
  if (v9)
  {
    CFRelease(v9);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t synchronizerRemote_handleClientMessage(uint64_t a1, uint64_t a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t synchronizerRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    FigXPCRemoteClientDisassociateObject();
    if (!*DerivedStorage && !FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t synchronizerRemote_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v8 = 0;
  ObjectID = synchronizerRemote_getObjectID(a1, &v8);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdCopyPropertyMessage();
  }

  v6 = ObjectID;
  if (a4)
  {
    *a4 = 0;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t synchronizerRemote_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  ObjectID = synchronizerRemote_getObjectID(a1, &v6);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdSetPropertyMessage();
  }

  v4 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t synchronizerRemote_SetRateAndTime(uint64_t a1, __int128 *a2, float a3)
{
  v8 = 0;
  if (a1)
  {
    ObjectID = synchronizerRemote_getObjectID(a1, &v8);
    if (ObjectID)
    {
      v6 = ObjectID;
    }

    else
    {
      v5 = FigXPCCreateBasicMessage();
      if (v5 || (xpc_dictionary_set_double(0, "rate", a3), v5 = FigXPCMessageSetCMTime(), v5))
      {
        v6 = v5;
      }

      else
      {
        v6 = FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  else
  {
    v6 = 4294950926;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t synchronizerRemote_CopyReadOnlyTimebase(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950926;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRetain(v5);
    v6 = *(v4 + 32);
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t synchronizerRemote_SetRateAndAnchorTime(uint64_t a1, float a2, uint64_t a3, __int128 *a4)
{
  v9 = 0;
  if (a1)
  {
    ObjectID = synchronizerRemote_getObjectID(a1, &v9);
    if (ObjectID)
    {
      v7 = ObjectID;
    }

    else
    {
      v6 = FigXPCCreateBasicMessage();
      if (v6 || (xpc_dictionary_set_double(0, "rate", a2), OUTLINED_FUNCTION_1_42(), v6 = FigXPCMessageSetCMTime(), v6) || (v6 = FigXPCMessageSetCMTime(), v6))
      {
        v7 = v6;
      }

      else
      {
        v7 = FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  else
  {
    v7 = 4294950926;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t synchronizerRemote_ConvertTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v4 = 4294950926;
  if (a1 && a4)
  {
    ObjectID = synchronizerRemote_getObjectID(a1, &v7);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        FigXPCMessageSetUInt32();
        OUTLINED_FUNCTION_1_42();
        ObjectID = FigXPCMessageSetCMTime();
        if (!ObjectID)
        {
          ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (!ObjectID)
          {
            ObjectID = FigXPCMessageGetCMTime();
          }
        }
      }
    }

    v4 = ObjectID;
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t synchronizerRemote_sendMessageWithAudioRendererPayload(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (a1)
  {
    ObjectID = synchronizerRemote_getObjectID(a1, &v5);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigSampleBufferAudioRendererGetRemoteObjectID();
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(0, "audioRendererObjectID", 0);
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v3 = ObjectID;
  }

  else
  {
    v3 = 4294950926;
  }

  FigXPCRelease();
  return v3;
}

void synchronizerRemote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigAudioFileFormatReaderCreateFromStream(const void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  FigFormatReaderGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  inPropertyData = 0;
  outDataSize[0] = 0;
  v49[0] = 0;
  LODWORD(dataPointerOut) = 0;
  if (qword_1ED4CA770 != -1)
  {
    dispatch_once_f(&qword_1ED4CA770, 0, RegisterFigAudioFileInfoType);
  }

  ioDataSize[0] = 0;
  isWritable[0] = 0;
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, 0, isWritable[0]);
    v27 = v44;
    v24 = 0;
    v21 = 0;
    goto LABEL_25;
  }

  v9 = Instance;
  *(Instance + 16) = FigReentrantMutexCreate();
  *(v9 + 24) = CFRetain(a1);
  OUTLINED_FUNCTION_9_15();
  *(v9 + 112) = AudioFileGetGlobalInfoSize(v10, v11, v12, v13) == 0;
  AudioFileInfos = FigDetermineAudioFileTypeHintAndCreateAudioFileInfos(a1, v14, 0, 0);
  Property = AudioFileOpenWithCallbacks(v9, AudioFile_FigReadProc, 0, AudioFile_FigGetSizeProc, 0, AudioFileInfos, (v9 + 32));
  if (Property)
  {
    goto LABEL_65;
  }

  ioDataSize[0] = 4;
  Property = AudioFileGetProperty(*(v9 + 32), 0x66666D74u, ioDataSize, (v9 + 40));
  if (Property)
  {
    goto LABEL_65;
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    AudioFileSetProperty(*(v9 + 32), 0x61616770u, 4u, &inPropertyData);
  }

  ioDataSize[0] = 40;
  Property = AudioFileGetProperty(*(v9 + 32), 0x64666D74u, ioDataSize, (v9 + 48));
  if (Property)
  {
    goto LABEL_65;
  }

  v17 = *(v9 + 48);
  if (v17 <= 0.0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, 0, isWritable[0]);
LABEL_65:
    v27 = Property;
    v21 = 0;
LABEL_66:
    v24 = 0;
    goto LABEL_67;
  }

  *(v9 + 88) = v17;
  v18 = *(v9 + 68);
  if (v18)
  {
    v19 = v17 / 2;
    v20 = v18 - (v18 & v19);
    if ((v18 & v19) == 0)
    {
      v20 = 0;
    }

    *(v9 + 96) = (v20 + v19) / v18;
  }

  v21 = 0;
  if (AudioFileGetPropertyInfo(*(v9 + 32), 0x6D676963u, outDataSize, isWritable) || !outDataSize[0])
  {
    goto LABEL_19;
  }

  v21 = malloc_type_malloc(outDataSize[0], 0x49D8F5A5uLL);
  if (!v21)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, 0, isWritable[0]);
    goto LABEL_69;
  }

  v22 = AudioFileGetProperty(*(v9 + 32), 0x6D676963u, outDataSize, v21);
  if (v22)
  {
LABEL_69:
    v27 = v22;
    goto LABEL_66;
  }

LABEL_19:
  PropertyInfo = AudioFileGetPropertyInfo(*(v9 + 32), 0x636D6170u, v49, isWritable);
  v24 = 0;
  v25 = v49[0];
  if (PropertyInfo || !v49[0])
  {
LABEL_23:
    v27 = CMAudioFormatDescriptionCreate(*MEMORY[0x1E695E480], (v9 + 48), v25, v24, outDataSize[0], v21, 0, (v9 + 104));
    if (!v27)
    {
      *DerivedStorage = v9;
      goto LABEL_25;
    }

    goto LABEL_67;
  }

  v24 = malloc_type_malloc(v49[0], 0x1B64FC67uLL);
  v26 = AudioFileGetProperty(*(v9 + 32), 0x636D6170u, v49, v24);
  if (!v26)
  {
    v25 = v49[0];
    goto LABEL_23;
  }

  v27 = v26;
LABEL_67:
  CFRelease(v9);
LABEL_25:
  free(v21);
  free(v24);
  if (v27)
  {
    goto LABEL_63;
  }

  v28 = *DerivedStorage;
  *ioDataSize = 0;
  FigTrackReaderGetClassID();
  v29 = CMDerivedObjectCreate();
  if (v29)
  {
    v27 = v29;
    goto LABEL_63;
  }

  v30 = CMBaseObjectGetDerivedStorage();
  if (v28)
  {
    v31 = CFRetain(v28);
  }

  else
  {
    v31 = 0;
  }

  *v30 = v31;
  DerivedStorage[1] = *ioDataSize;
  if ((*(*DerivedStorage + 56) - 778924081) <= 2)
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v33)
    {
      v33(CMBaseObject, 0x1F0B330B8, *MEMORY[0x1E695E4D0]);
    }
  }

  v34 = *DerivedStorage;
  *outDataSize = 0;
  *ioDataSize = 0;
  inPropertyData = 8;
  if (AudioFileGetProperty(*(v34 + 32), 0x6964336Fu, &inPropertyData, outDataSize))
  {
    dataPointerOut = 0;
    *v49 = 0;
    *(v34 + 216) = -1;
    v35 = *(v34 + 24);
    v36 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v36)
    {
      v37 = v36(v35, 3, 0, ioDataSize, v49);
      if (v37)
      {
LABEL_71:
        v27 = v37;
LABEL_55:
        if (*ioDataSize)
        {
          CFRelease(*ioDataSize);
        }

        if (!v27)
        {
          goto LABEL_58;
        }

LABEL_63:
        CFRelease(cf);
        return v27;
      }

      if (*v49 == 3)
      {
        CMBlockBufferGetDataPointer(*ioDataSize, 0, 0, 0, &dataPointerOut);
        if (*dataPointerOut == 73 && dataPointerOut[1] == 68 && dataPointerOut[2] == 51)
        {
          v27 = 0;
          *(v34 + 216) = 0;
          goto LABEL_55;
        }
      }

      if (*(v34 + 216) != -1)
      {
        goto LABEL_53;
      }

      SizeProc = AudioFile_FigGetSizeProc(v34);
      if (SizeProc < 129)
      {
        goto LABEL_53;
      }

      v39 = SizeProc;
      *isWritable = 0;
      if (*ioDataSize)
      {
        CFRelease(*ioDataSize);
      }

      *ioDataSize = 0;
      v40 = *(v34 + 24);
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v41)
      {
        v42 = v39 - 128;
        v37 = v41(v40, 3, v42, ioDataSize, v49);
        if (!v37)
        {
          if (*v49 == 3)
          {
            CMBlockBufferGetDataPointer(*ioDataSize, 0, 0, 0, isWritable);
            if (**isWritable == 84 && *(*isWritable + 1) == 65 && *(*isWritable + 2) == 71)
            {
              *(v34 + 216) = v42;
            }
          }

LABEL_53:
          v27 = 0;
          goto LABEL_55;
        }

        goto LABEL_71;
      }
    }

    v27 = 4294954514;
    goto LABEL_55;
  }

  *(v34 + 216) = *outDataSize;
LABEL_58:
  v27 = 0;
  *a4 = cf;
  return v27;
}

double FigAudioFileTrackReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v8 = *DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"TrackFormatDescriptionArray"))
  {
    v11 = *(v8 + 104);
    v10 = (v8 + 104);
    if (!v11)
    {
      return result;
    }

    v12 = CFArrayCreate(a3, v10, 1, MEMORY[0x1E695E9C0]);
    goto LABEL_11;
  }

  if (CFEqual(a2, @"TrackTimescale"))
  {
    LODWORD(valuePtr.value) = *(v8 + 88);
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
LABEL_11:
    *a4 = v12;
    return result;
  }

  if (CFEqual(a2, @"TrackEnabled"))
  {
    v13 = MEMORY[0x1E695E4D0];
LABEL_10:
    v12 = CFRetain(*v13);
    goto LABEL_11;
  }

  if (CFEqual(a2, @"TrackDuration"))
  {
    if (*(v8 + 32))
    {
      memset(&valuePtr, 0, sizeof(valuePtr));
      GetAudioFilePacketTableInfo(v8);
      if (*(v8 + 179))
      {
        v14 = *(v8 + 184);
        goto LABEL_17;
      }

      if (!GetAudioFilePacketAndFrameCount(v8))
      {
        DefaultEnhanced = FigGaplessInfoCreateDefaultEnhanced(*(v8 + 104));
        LODWORD(v43) = 0;
        v14 = *(v8 + 136);
        if (FigCFDictionaryGetInt32IfPresent())
        {
          v14 &= ~(v14 >> 63);
        }

        if (DefaultEnhanced)
        {
          CFRelease(DefaultEnhanced);
        }

LABEL_17:
        v15 = CMTimeMake(&valuePtr, v14, *(v8 + 88));
        v12 = OUTLINED_FUNCTION_6_24(v15, v16, v17, v18, v19, v20, v21, v22, v43, v44, *&valuePtr.value, valuePtr.epoch);
        if (v12)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    if (!CFEqual(a2, @"UneditedTrackDuration"))
    {
      if (CFEqual(a2, @"UneditedSampleCount"))
      {
        if (*(v8 + 32) && !GetAudioFilePacketAndFrameCount(v8))
        {
          v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v8 + 128));
          goto LABEL_11;
        }

        return result;
      }

      if (CFEqual(a2, @"LoudnessInfo"))
      {
        v31 = OUTLINED_FUNCTION_2_42();
        Property = AudioFileGetProperty(v31, 0x6C6F7564u, v32, v33);
        v12 = 0;
        if (!Property)
        {
          goto LABEL_11;
        }

        return result;
      }

      if (CFEqual(a2, @"HasAudioSampleDependencyInformation"))
      {
        HasSampleDependencies = AudioFileHasSampleDependencies(v8);
      }

      else
      {
        if (!CFEqual(a2, @"IndicatesContentProtection"))
        {
          if (CFEqual(a2, @"UsesAudibleDRM"))
          {
            LODWORD(valuePtr.value) = 0;
            v37 = OUTLINED_FUNCTION_2_42();
            AudioFileGetProperty(v37, 0x61756462u, v38, v39);
            v13 = MEMORY[0x1E695E4C0];
            goto LABEL_10;
          }

          if (CFEqual(a2, @"AudibleContentIsAuthorized"))
          {
            LODWORD(valuePtr.value) = 0;
            if (*(v8 + 40) == 1635083362)
            {
              v40 = OUTLINED_FUNCTION_2_42();
              if (AudioFileGetProperty(v40, 0x61757468u, v41, v42))
              {
                LODWORD(valuePtr.value) = 0;
              }
            }

            v13 = MEMORY[0x1E695E4C0];
            goto LABEL_10;
          }

          return result;
        }

        HasSampleDependencies = IndicatesContentProtection(v8);
      }

      v13 = MEMORY[0x1E695E4D0];
      if (!HasSampleDependencies)
      {
        v13 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_10;
    }

    if (*(v8 + 32))
    {
      memset(&valuePtr, 0, sizeof(valuePtr));
      if (!GetAudioFilePacketAndFrameCount(v8))
      {
        v23 = CMTimeMake(&valuePtr, *(v8 + 136), *(v8 + 88));
        v12 = OUTLINED_FUNCTION_6_24(v23, v24, v25, v26, v27, v28, v29, v30, v43, v44, *&valuePtr.value, valuePtr.epoch);
        if (v12)
        {
          goto LABEL_11;
        }

LABEL_18:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  return result;
}

CFMutableDictionaryRef CreateGaplessInfoDictionary_0(uint64_t a1)
{
  v8 = **&MEMORY[0x1E6960C70];
  GetAudioFilePacketTableInfo(a1);
  if (!*(a1 + 179))
  {
    return 0;
  }

  GetAudioFilePacketAndFrameCount(a1);
  if (!*(a1 + 116))
  {
    return 0;
  }

  CMTimeMake(&v8, *(a1 + 136), *(a1 + 88));
  v2 = *(a1 + 104);
  v3 = *(a1 + 192);
  v4 = *(a1 + 196);
  v5 = *(a1 + 184);
  v7 = v8;
  return FigGaplessInfoCreateEnhanced_CorrectingWithUneditedDuration(v2, &v7.value, v3, v4, v5);
}

void CreateChaptersFromAudioFileChapterList(uint64_t a1)
{
  v4 = 0;
  FigSimpleMutexLock();
  v1 = OUTLINED_FUNCTION_10_14();
  AudioFileGetPropertyInfo(v1, v2, v3, 0);
  FigSimpleMutexUnlock();
  free(0);
}

uint64_t GetAudioFilePacketAndFrameCount(uint64_t a1)
{
  outPropertyData = 0;
  if (!*(a1 + 116))
  {
    ioDataSize = 8;
    Property = AudioFileGetProperty(*(a1 + 32), 0x70636E74u, &ioDataSize, &outPropertyData);
    if (Property)
    {
      return Property;
    }

    FigSimpleMutexLock();
    v4 = outPropertyData;
    *(a1 + 128) = outPropertyData;
    v5 = *(a1 + 68);
    if (v5)
    {
      v6 = v4 * v5;
    }

    else
    {
      v15 = 0;
      PacketData = MapPacketNumberToFrameNumber_0(a1, v4 - 1, &v15);
      if (PacketData || (OUTLINED_FUNCTION_9_15(), PacketData = AudioFileReadPacketData(v8, v9, v10, v11, v12, v13, 0), PacketData))
      {
        v1 = PacketData;
        goto LABEL_10;
      }

      v6 = v15;
    }

    *(a1 + 136) = v6;
    v1 = 0;
    *(a1 + 116) = 1;
LABEL_10:
    FigSimpleMutexUnlock();
    return v1;
  }

  return 0;
}

uint64_t FigAudioFileCursorService_createCursorAtPresentationTimeStamp(uint64_t a1, __int128 *a2, void *a3, BOOL *a4, char *a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  v16 = 0;
  FigSimpleMutexLock();
  createFigAudioPacketAccessor_0(v9, &v16);
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v11 = v16;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = *a2;
    v13 = moveToSampleAtPTS_0(DerivedStorage, v9, &v15, a4, a5);
    if (v13)
    {
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      *a3 = v11;
    }
  }

  FigSimpleMutexUnlock();
  return v13;
}

uint64_t FigAudioFileCursorService_createCursorAtFirstSampleInDecodeOrder(uint64_t a1, uint64_t *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = 0;
  FigSimpleMutexLock();
  createFigAudioPacketAccessor_0(v3, &v8);
  v5 = v4;
  if (!v4)
  {
    v6 = v8;
    *(CMBaseObjectGetDerivedStorage() + 8) = 0;
    *a2 = v6;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigAudioFileCursorService_createCursorAtLastSampleInDecodeOrder(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v9 = 0;
  FigSimpleMutexLock();
  createFigAudioPacketAccessor_0(v3, &v9);
  if (v4)
  {
    AudioFilePacketAndFrameCount = v4;
  }

  else
  {
    v5 = v9;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    AudioFilePacketAndFrameCount = GetAudioFilePacketAndFrameCount(v3);
    if (AudioFilePacketAndFrameCount)
    {
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      *(DerivedStorage + 8) = v3[16] - 1;
      *a2 = v5;
    }
  }

  FigSimpleMutexUnlock();
  return AudioFilePacketAndFrameCount;
}

double createFigAudioPacketAccessor_0(void *a1, uint64_t *a2)
{
  if (!GetAudioFilePacketAndFrameCount(a1))
  {
    if (a1[16])
    {
      FigSampleCursorGetClassID();
      if (CMDerivedObjectCreate())
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0, v7);
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *DerivedStorage = CFRetain(a1);
        DerivedStorage[1] = 0;
        *a2 = 0;
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

uint64_t moveToSampleAtPTS_0(void *a1, uint64_t a2, CMTime *a3, BOOL *a4, char *a5)
{
  flags = a3->flags;
  v11 = flags & 9;
  if (v11 == 9)
  {
    value = 0;
  }

  else if ((flags & 0x1D) == 1)
  {
    memset(&outPropertyData, 0, sizeof(outPropertyData));
    v13 = *(*a1 + 88);
    v21 = *a3;
    CMTimeConvertScale(&outPropertyData, &v21, v13, kCMTimeRoundingMethod_RoundTowardZero);
    value = outPropertyData.value;
  }

  else
  {
    value = 0x7FFFFFFFFFFEA06FLL;
  }

  v14 = *(a2 + 68);
  if (!v14)
  {
    *&outPropertyData.timescale = 0;
    outPropertyData.epoch = 0;
    outPropertyData.value = value;
    LODWORD(v21.value) = 24;
    result = AudioFileGetProperty(*(a2 + 32), 0x6672706Bu, &v21, &outPropertyData);
    if (value < 0 || result != 1885563711)
    {
      if (result)
      {
        return result;
      }

      v16 = 0;
      v17 = *&outPropertyData.timescale;
      goto LABEL_11;
    }

    result = GetAudioFilePacketAndFrameCount(a2);
    if (result)
    {
      return result;
    }

    v20 = *(a2 + 128);
    v17 = v20 - 1;
    if (v20 <= 0)
    {
      v17 = 0;
    }

    goto LABEL_29;
  }

  if (GetAudioFilePacketAndFrameCount(a2) || !*(a2 + 116) || (v17 = value / v14, *(a2 + 128) <= value / v14))
  {
    result = GetAudioFilePacketAndFrameCount(a2);
    if (result)
    {
      return result;
    }

    v17 = *(a2 + 128) - 1;
LABEL_29:
    v16 = 1;
    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:
  a1[1] = v17;
  if (a4)
  {
    v19 = v11 == 9 || a3->value < 0;
    *a4 = v19;
  }

  result = 0;
  if (a5)
  {
    *a5 = v16;
  }

  return result;
}

uint64_t fafc_GetDependencyInfo(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  ioDataSize = 16;
  v4 = *DerivedStorage;
  outPropertyData = DerivedStorage[1];
  result = AudioFileGetProperty(*(v4 + 32), 0x706B6470u, &ioDataSize, &outPropertyData);
  if (!result)
  {
    v6 = HIDWORD(v9);
    *a2 = v9 != 0;
    *(a2 + 4) = v6;
  }

  return result;
}

uint64_t FigAudioFileCursor_getDependencyInfo(uint64_t a1, char *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  v10 = *CMBaseObjectGetDerivedStorage();
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

  if (!a2)
  {
    return 0;
  }

  *a2 = 1;
  result = AudioFileHasSampleDependencies(v10);
  if (result)
  {
    v14 = 0;
    result = fafc_GetDependencyInfo(a1, &v14);
    if (!result)
    {
      if (v14)
      {
        v12 = HIDWORD(v14) == 0;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      *a2 = v13;
    }
  }

  return result;
}

uint64_t FigAudioFileCursor_createSampleBuffer(uint64_t a1, uint64_t a2, CMSampleBufferRef *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v7 = 0;
  }

  v8 = *DerivedStorage;
  sbuf = 0;
  dataBuffer = 0;
  memset(&v48, 0, sizeof(v48));
  cf = 0;
  *ioNumPackets = 0;
  FigSimpleMutexLock();
  v9 = DerivedStorage[1];
  if (v7)
  {
    v10 = *(v7 + 8);
    if (v10 < v9)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v43, v44);
      goto LABEL_57;
    }

    v11 = v10 - v9 + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = PacketToPTS(v8, DerivedStorage[1], &v48);
  if (v12)
  {
LABEL_57:
    v39 = v12;
    goto LABEL_54;
  }

  ioNumPackets[1] = v11;
  v13 = *(v8 + 64);
  v14 = MEMORY[0x1E695E480];
  if (v13)
  {
    epoch = v13 * v11;
LABEL_17:
    v21 = *v14;
    v22 = MEMORY[0x19A8CC720](*v14, epoch, 3939191739, 0);
    if (!v22)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v43, v44);
      goto LABEL_60;
    }

    if (*(v8 + 68) && *(v8 + 64) || (v12 = ensureAllocationOfPacketDescriptions(v8, ioNumPackets[1]), !v12))
    {
      ioNumPackets[0] = epoch;
      PacketData = AudioFileReadPacketData(*(v8 + 32), 0, ioNumPackets, *(v8 + 168), v9, &ioNumPackets[1], v22);
      if (!PacketData)
      {
        PacketData = CMBlockBufferCreateWithMemoryBlock(v21, v22, epoch, v21, 0, 0, ioNumPackets[0], 0, &dataBuffer);
        if (!PacketData)
        {
          v24 = *(v8 + 104);
          v25 = *(v8 + 168);
          outPropertyData = v48;
          v26 = CMAudioSampleBufferCreateWithPacketDescriptions(v21, dataBuffer, 1u, 0, 0, v24, ioNumPackets[1], &outPropertyData, v25, &sbuf);
          if (v26)
          {
            v39 = v26;
LABEL_46:
            if (sbuf)
            {
              CFRelease(sbuf);
            }

            goto LABEL_48;
          }

          if (AudioFileHasSampleDependencies(v8))
          {
            v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v27)
            {
LABEL_43:
              v39 = 4294954514;
              goto LABEL_44;
            }

            v28 = v27(a1, &cf);
            if (v28)
            {
LABEL_62:
              v39 = v28;
LABEL_44:
              if (cf)
              {
                CFRelease(cf);
              }

              goto LABEL_46;
            }

            if (ioNumPackets[1])
            {
              v29 = 0;
              do
              {
                SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
                if (SampleAttachmentsArray)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, v29);
                  if (ValueAtIndex)
                  {
                    v32 = ValueAtIndex;
                    outPropertyData.value = 0;
                    FigSampleCursorGetFigBaseObject();
                    v34 = v33;
                    v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v35)
                    {
                      if (!v35(v34, @"SampleDependencyAttributes", 0, &outPropertyData) && outPropertyData.value)
                      {
                        CFDictionaryApplyFunction(outPropertyData.value, appendAttributesToDictionary_Applier, v32);
                        CFRelease(outPropertyData.value);
                      }
                    }
                  }
                }

                v36 = cf;
                v37 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                if (!v37)
                {
                  goto LABEL_43;
                }

                v28 = v37(v36, 1, 0);
                if (v28)
                {
                  goto LABEL_62;
                }
              }

              while (++v29 < ioNumPackets[1]);
            }

            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }
          }

          v38 = dataBuffer;
          *a3 = sbuf;
          if (v38)
          {
            CFRelease(v38);
          }

          v39 = 0;
          goto LABEL_54;
        }
      }

LABEL_60:
      v39 = PacketData;
      goto LABEL_49;
    }

    goto LABEL_57;
  }

  ioDataSize = 24;
  outPropertyData.value = v9;
  *&outPropertyData.timescale = v11;
  outPropertyData.epoch = 0;
  if (AudioFileGetProperty(*(*DerivedStorage + 32), 0x70727562u, &ioDataSize, &outPropertyData))
  {
    v12 = ensureAllocationOfPacketDescriptions(v8, ioNumPackets[1]);
    if (v12)
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_9_15();
    v12 = AudioFileReadPacketData(v16, v17, v18, v19, v9, v20, 0);
    if (v12)
    {
      goto LABEL_57;
    }

    if (ioNumPackets[1])
    {
      epoch = *(*(v8 + 168) + 16 * (ioNumPackets[1] - 1)) - **(v8 + 168) + *(*(v8 + 168) + 16 * (ioNumPackets[1] - 1) + 12);
      goto LABEL_16;
    }

LABEL_53:
    v39 = 4294954456;
    goto LABEL_54;
  }

  epoch = outPropertyData.epoch;
  ioNumPackets[1] = outPropertyData.timescale;
  if (!outPropertyData.timescale)
  {
    goto LABEL_53;
  }

LABEL_16:
  if (!HIDWORD(epoch))
  {
    goto LABEL_17;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v43, v44);
  v39 = v41;
LABEL_48:
  v22 = 0;
LABEL_49:
  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  if (v22)
  {
    CFAllocatorDeallocate(*v14, v22);
  }

LABEL_54:
  FigSimpleMutexUnlock();
  return v39;
}

uint64_t FigAudioFileCursor_stepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v14, 0, sizeof(v14));
  v13 = 0;
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_7_17();
  if (v5 >= v6)
  {
    v9 = 4294954456;
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
    v7 = PacketToPTS(v4, v5, &v15);
    if (v7 || (lhs = v15, v11 = *a2, CMTimeAdd(&v14, &lhs, &v11), v8 = *DerivedStorage, lhs = v14, v7 = moveToSampleAtPTS_0(DerivedStorage, v8, &lhs, &v13 + 1, &v13), v7))
    {
      v9 = v7;
    }

    else if (HIBYTE(v13) | v13)
    {
      v9 = 4294954456;
    }

    else
    {
      v9 = 0;
    }
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigAudioFileCursor_copySampleLocation(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *DerivedStorage;
  v26 = 0;
  v27 = 0;
  v25 = 1;
  FigSimpleMutexLock();
  if (!*(v10 + 120))
  {
    outPropertyData = 0;
    ioDataSize = 8;
    Property = AudioFileGetProperty(*(v10 + 32), 0x646F6666u, &ioDataSize, &outPropertyData);
    if (Property)
    {
      v20 = Property;
      goto LABEL_20;
    }

    *(v10 + 120) = 1;
    *(v10 + 144) = outPropertyData;
  }

  v12 = *(v10 + 64);
  if (v12)
  {
    v26 = DerivedStorage[1] * v12;
    HIDWORD(v27) = v12;
  }

  else
  {
    OUTLINED_FUNCTION_9_15();
    PacketData = AudioFileReadPacketData(v13, v14, v15, v16, v17, v18, 0);
    if (PacketData == 1869627199)
    {
      v20 = 4294954455;
    }

    else
    {
      v20 = PacketData;
    }

    if (v20)
    {
      goto LABEL_20;
    }
  }

  if (a2)
  {
    *a2 = *(v10 + 144) + v26;
  }

  if (a3)
  {
    *a3 = HIDWORD(v27);
  }

  if (a4)
  {
    v21 = *(v10 + 24);
    if (v21)
    {
      v21 = CFRetain(v21);
    }

    *a4 = v21;
  }

  v20 = 0;
  if (a5)
  {
    *a5 = 0;
  }

LABEL_20:
  FigSimpleMutexUnlock();
  return v20;
}

uint64_t FigAudioFileCursor_stepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  FigSimpleMutexLock();
  v7 = DerivedStorage[1];
  OUTLINED_FUNCTION_7_17();
  if (v7 >= v8)
  {
    AudioFilePacketAndFrameCount = 4294954456;
    v9 = v7;
  }

  else
  {
    v9 = v7 + a2;
    if (a2 >= 1)
    {
      if (GetAudioFilePacketAndFrameCount(v6) || !*(v6 + 116) || *(v6 + 128) <= v9)
      {
        AudioFilePacketAndFrameCount = GetAudioFilePacketAndFrameCount(v6);
        if (AudioFilePacketAndFrameCount)
        {
          goto LABEL_7;
        }

        v9 = *(v6 + 128) - 1;
      }

      else
      {
        AudioFilePacketAndFrameCount = 0;
      }
    }

    else
    {
      AudioFilePacketAndFrameCount = 0;
      v9 &= ~(v9 >> 63);
    }
  }

  if (a3)
  {
    *a3 = v9 - v7;
  }

  DerivedStorage[1] = v9;
LABEL_7:
  FigSimpleMutexUnlock();
  return AudioFilePacketAndFrameCount;
}

uint64_t PacketToPTS(uint64_t a1, int64_t a2, CMTime *a3)
{
  value = 0;
  v5 = MapPacketNumberToFrameNumber_0(a1, a2, &value);
  if (!v5)
  {
    CMTimeMake(&v7, value, *(a1 + 88));
    *a3 = v7;
  }

  return v5;
}

void FigAudioFileFormatReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double EnsureMetadataReaderCreated_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigAudioFileTrackReaderCopySampleCursorService_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigAudioFileCursor_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigAudioFileCursor_copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void ensureAllocationOfPacketDescriptions_cold_1(_WORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigTTMLDocumentWriterAddText(uint64_t a1, uint64_t a2)
{
  result = FigCaptionDataCreate();
  if (!result)
  {
    return FigTTMLDocumentWriterAddCaptionData(a1, 0);
  }

  return result;
}

uint64_t FigSampleCursorUtilityGetMinimumUpcomingPresentationTime(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4)
{
  v34 = 0;
  v33 = **&MEMORY[0x1E6960C70];
  v32 = v33;
  v30 = v33;
  v29 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_8;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    goto LABEL_52;
  }

  v10 = v9(a1, &v34);
  if (v10)
  {
LABEL_8:
    v4 = v10;
    goto LABEL_53;
  }

  v11 = *(*(OUTLINED_FUNCTION_3_31() + 16) + 48);
  if (!v11 || v11(v4, &v32) || (OUTLINED_FUNCTION_29(), !v13) || (v14 = *(*(OUTLINED_FUNCTION_3_31() + 16) + 40)) == 0 || v14(v4, &v33) || (OUTLINED_FUNCTION_29(), !v13))
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_0_46();
LABEL_7:
    FigSignalErrorAtGM(v12);
    goto LABEL_8;
  }

  v31 = v33;
  v15 = v34;
  v30 = v32;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v16)
  {
    while (1)
    {
      v10 = v16(v15, 1, &v29);
      if (v10)
      {
        goto LABEL_8;
      }

      if (v29 != 1)
      {
        goto LABEL_48;
      }

      if (a2)
      {
        v17 = *(OUTLINED_FUNCTION_3_31() + 16);
        v18 = v17 ? v17 : 0;
        v19 = *(CMBaseObjectGetVTable() + 16);
        v20 = v19 ? v19 : 0;
        if (v18 == v20 && *(v18 + 32) && (*(v20 + 32))(v4, a2) == 1)
        {
          goto LABEL_48;
        }
      }

      v21 = *(*(OUTLINED_FUNCTION_3_31() + 16) + 40);
      if (!v21 || v21(v4, &v33) || (v33.flags & 0x1D) != 1 || (time1 = v33, v27 = v31, CMTimeCompare(&time1, &v27) < 0) && ((v31 = v33, v4 = v34, (v24 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) || v24(v4, &v30) || (v30.flags & 0x1D) != 1))
      {
        OUTLINED_FUNCTION_239();
        OUTLINED_FUNCTION_0_46();
        goto LABEL_7;
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 80) || ((v22 = *(OUTLINED_FUNCTION_3_31() + 16)) == 0 ? (v23 = 0) : (v23 = v22), v23 == *(CMBaseObjectGetVTable() + 16) && (v25 = *(v23 + 80)) != 0 && v25(v4, a1, 1)))
      {
LABEL_48:
        if (a3)
        {
          *a3 = v31;
        }

        v4 = 0;
        if (a4)
        {
          *a4 = v30;
        }

        goto LABEL_53;
      }

      v15 = v34;
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      v4 = 4294954514;
      if (!v16)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_52:
  v4 = 4294954514;
LABEL_53:
  if (v34)
  {
    CFRelease(v34);
  }

  return v4;
}

uint64_t FigSampleCursorUtilityGetPresentationTimeRange(const void *a1, _OWORD *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  memset(&v27, 0, sizeof(v27));
  value = 0;
  timescale = 0;
  v26 = 0;
  v25 = **&MEMORY[0x1E6960C70];
  v24 = 0;
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&v23.start.value = *MEMORY[0x1E6960C98];
  *&v23.start.epoch = v4;
  *&v23.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v5 = CFGetTypeID(a1);
  MEMORY[0x19A8D3660](&FigSampleCursorGetClassID_sRegisterFigSampleCursorTypeOnce, RegisterFigSampleCursorType);
  if (v5 != CMBaseClassGetCFTypeID())
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_28;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6(a1, &v27);
  if (v7)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_29();
  if (!v18)
  {
    OUTLINED_FUNCTION_0_46();
LABEL_27:
    FigSignalErrorAtGM(v19);
    goto LABEL_28;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    goto LABEL_14;
  }

  v7 = v8(a1, &v26);
  if (v7)
  {
    goto LABEL_28;
  }

  v9 = v26;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v10)
  {
    goto LABEL_14;
  }

  v7 = v10(v9, 1, &v24);
  if (v7)
  {
    goto LABEL_28;
  }

  if (v24 != 1)
  {
    value = *MEMORY[0x1E6960C88];
    flags = *(MEMORY[0x1E6960C88] + 12);
    timescale = *(MEMORY[0x1E6960C88] + 8);
    epoch = *(MEMORY[0x1E6960C88] + 16);
    goto LABEL_21;
  }

  v11 = v26;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v12)
  {
LABEL_14:
    v15 = 4294954514;
    goto LABEL_15;
  }

  v7 = v12(v11, &v25);
  if (!v7)
  {
    lhs = v25;
    v20 = v27;
    CMTimeSubtract(&start, &lhs, &v20);
    value = start.value;
    flags = start.flags;
    timescale = start.timescale;
    epoch = start.epoch;
LABEL_21:
    v18 = (flags & 0x1D) == 1 || (flags & 5) == 5;
    if (v18)
    {
      start = v27;
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      CMTimeRangeMake(&v23, &start, &lhs);
      v15 = 0;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_0_46();
    goto LABEL_27;
  }

LABEL_28:
  v15 = v7;
LABEL_15:
  if (a2)
  {
    v16 = *&v23.start.epoch;
    *a2 = *&v23.start.value;
    a2[1] = v16;
    a2[2] = *&v23.duration.timescale;
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v15;
}

uint64_t globalRoutingRegistry_handleClientMessage(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  uint64 = xpc_dictionary_get_uint64(a2, "RemoteClientID");
  if (!uint64)
  {
    return 4294951145;
  }

  v6 = uint64;
  if (FigXPCServerGetConnectionRefcon())
  {
    return 4294951138;
  }

  v7 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  v9 = v7;
  if (!v7)
  {
    v10 = 4294951146;
    goto LABEL_6;
  }

  *v7 = v6;
  v10 = FigXPCServerSetConnectionRefcon();
  if (!v10)
  {
    return 4294951138;
  }

LABEL_6:
  globalRoutingRegistry_disposeConnectionState(v9, v8);
  return v10;
}

uint64_t snippetCursorService_CreateCursorAtTrackTime(const void *a1, CMTime *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  CFGetAllocator(a1);
  FigEditCursorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    *v8 = a1;
    CFRetain(a1);
    FigSimpleMutexLock();
    if ((*(DerivedStorage + 60) & 0x1D) == 1)
    {
      memset(&v14, 0, sizeof(v14));
      v9 = *(DerivedStorage + 56);
      v13 = *a2;
      CMTimeConvertScale(&v14, &v13, v9, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
      v10 = v14.value / *(DerivedStorage + 48);
      if (v10 < 0)
      {
        v10 = 0;
      }

      else
      {
        v11 = *(DerivedStorage + 80);
        if (v10 >= v11)
        {
          v10 = v11 - 1;
        }
      }

      v8[1] = v10;
    }

    else
    {
      v8[1] = 0;
    }

    FigSimpleMutexUnlock();
    *a3 = v15;
  }

  return v7;
}

uint64_t snippetCursor_Copy(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  FigEditCursorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    v6 = CMBaseObjectGetDerivedStorage();
    v7 = *DerivedStorage;
    v8 = *(DerivedStorage + 8);
    *v6 = *DerivedStorage;
    v6[1] = v8;
    CFRetain(v7);
    *a2 = 0;
  }

  return v5;
}

void snippetCursor_GetEditSegment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

CFIndex FigStreamingAssetLoaderRequestSessionKeys(uint64_t a1)
{
  cf = 0;
  theArray = 0;
  v9 = 1;
  v10 = 0;
  v11 = 0;
  v12 = sapl_didUpdateContentKeyBossToNewBoss;
  v8 = 0;
  FigGetAllocatorForMedia();
  v1 = OUTLINED_FUNCTION_298();
  v5 = FigStreamingAssetLoaderCopyProperty(v1, v2, v3, v4);
  if (v5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

CFIndex sapl_loadMultivariantPlaylist(uint64_t a1)
{
  cf = 0;
  v12 = 0;
  if (*(a1 + 248))
  {
    v7 = 0;
    v5 = 1;
    goto LABEL_14;
  }

  sapl_copyCurrentMediaRequest(a1, &cf);
  if (cf)
  {
    goto LABEL_30;
  }

  v2 = *(a1 + 96);
  if (!v2 || *(a1 + 264))
  {
    v10 = *(a1 + 16);
    v4 = v10 ? CFRetain(v10) : 0;
    v12 = v4;
  }

  else
  {
    Param = FigCFHTTPCreateURLWithQueryParam(*(a1 + 16), @"_HLS_primary_id=", v2, &v12);
    if (Param)
    {
      v7 = Param;
      goto LABEL_10;
    }

    v4 = v12;
  }

  v5 = 1;
  *(a1 + 208) = 1;
  Playlist = sapl_loadPlaylist(a1, v4, *(a1 + 24), 0, 0, 0);
  if (Playlist)
  {
    v7 = Playlist;
  }

  else
  {
LABEL_30:
    if (*(a1 + 248))
    {
      v7 = 0;
LABEL_10:
      v5 = 1;
      goto LABEL_12;
    }

    v7 = 0;
    v5 = 0;
    OUTLINED_FUNCTION_2_44();
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_14:
  if (v12)
  {
    CFRelease(v12);
  }

  if ((v5 & 1) == 0)
  {
    sapl_waitForSemaphore(a1);
  }

  v8 = *(a1 + 256);
  if (v8)
  {
    return CFErrorGetCode(v8);
  }

  return v7;
}