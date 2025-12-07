void segPumpTrySpeculativeRead()
{
  OUTLINED_FUNCTION_428_1();
  v1 = v0;
  NextSegment = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v4 + 80);
  FigRetainProxyRetain();
  *v1 = 0;
  if (NextSegment && *(v7 + 296) && !*(v5 + 405) && !*(v5 + 256))
  {
    v16 = *(v5 + 880);
    while (1)
    {
      if (!*(segPumpGetMediaFilePrivateData(NextSegment, v9, v10, v11, v12, v13, v14, v15) + 99))
      {
        if (*(*(v5 + 696) + 8) == NextSegment)
        {
          v21 = NextSegment;
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_118_0();
        if (segPumpCanAddSegmentToCache(v17, v18, v19, v20))
        {
          break;
        }
      }

      NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
      if (!NextSegment)
      {
        goto LABEL_10;
      }
    }

    v21 = *(*(v5 + 696) + 8);
LABEL_13:
    if (NextSegment != v21)
    {
      OUTLINED_FUNCTION_118_0();
      if (!segPumpCheckCachedVariantsAndRequestSwitch(v22, v23, v24, 0) && !FigRetainProxyIsInvalidated() && *(v5 + 80) == v8 && v16 == *(v5 + 880))
      {
        PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(NextSegment);
        if (PreviousSegment)
        {
          v33 = *(segPumpGetMediaFilePrivateData(PreviousSegment, v26, v27, v28, v29, v30, v31, v32) + 4);
        }

        else
        {
          v33 = 0;
        }

        *(v5 + 104) = v33;
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(NextSegment, v26, v27, v28, v29, v30, v31, v32);
        v35 = 0;
        v36 = v7 + 392;
        while (1)
        {
          if (v35 != *v5)
          {
            if (*(*v36 + 16))
            {
              v37 = *(*v36 + 104);
              v38 = MediaFilePrivateData[4];
              if (v37 < v38 - (3 * FigMediaPlaylistGetTargetDuration(*(v5 + 56))))
              {
                break;
              }
            }
          }

          ++v35;
          v36 += 16;
          if (v35 == 3)
          {
            if (*(*(v5 + 696) + 8))
            {
              v39 = *(v5 + 256);
              OUTLINED_FUNCTION_265_0();
              segPumpCancelMediaFileReadAndResetData(v40, v41, v42, v43);
              v44 = *(v5 + 256);
              *(v5 + 256) = v39;
              if (v39)
              {
                CFRetain(v39);
              }

              if (v44)
              {
                CFRelease(v44);
              }
            }

            v45 = OUTLINED_FUNCTION_373();
            if (!segPumpReadMediaFile(v45, v46, NextSegment, 0, 0, 1, 0, 0))
            {
              *v1 = 1;
            }

            break;
          }
        }
      }
    }
  }

LABEL_10:
  FigRetainProxyRelease();
  OUTLINED_FUNCTION_439_1();
}

uint64_t segPumpResetCryptKeyRequestDataForCustomURLRequestID(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_152_1();
  result = segPumpGetCryptKeyCommonData(v3, v4, v5);
  if (!result)
  {
    v7 = 88;
    if (MEMORY[0x58] == a2)
    {
      v8 = 104;
      v9 = 96;
    }

    else
    {
      v7 = 128;
      if (MEMORY[0x80] != a2)
      {
        return result;
      }

      v8 = 144;
      v9 = 136;
    }

    *v7 = 0;
    *v9 = 0;
    *v8 = 0;
  }

  return result;
}

void segPumpCryptMemoryRequestCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, void *a6)
{
  OUTLINED_FUNCTION_179_1();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v10)
  {
    StreamFromCryptHTTPRequest = segPumpGetStreamFromCryptHTTPRequest(v22, a2, a3);
    if (StreamFromCryptHTTPRequest)
    {
      if (*(StreamFromCryptHTTPRequest + 248))
      {
        v12 = *(StreamFromCryptHTTPRequest + 656);
        if (v12)
        {
          goto LABEL_7;
        }

        blockBufferOut = (StreamFromCryptHTTPRequest + 656);
        v14 = 2 * FigContentKeySpecifierGetCryptKeySize(*(StreamFromCryptHTTPRequest + 248));
        FigGetAllocatorForMedia();
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_156_0();
        if (!CMBlockBufferCreateWithMemoryBlock(v15, v16, v17, v18, v19, v20, v14, 1u, blockBufferOut))
        {
          v12 = *blockBufferOut;
          if (!*blockBufferOut)
          {
            v21 = 0;
            goto LABEL_8;
          }

LABEL_7:
          v21 = CFRetain(v12);
LABEL_8:
          *a5 = v21;
          *a6 = 0;
        }
      }
    }
  }

  FigRetainProxyUnlockMutex();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t segPumpGetStreamForKeyRequestID(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a1 + 392;
  while (1)
  {
    v5 = *(v4 + v3);
    if (*(v5 + 248))
    {
      break;
    }

LABEL_3:
    v3 += 16;
    if (v3 == 48)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_152_1();
  if (!segPumpGetCryptKeyCommonData(v6, v7, v8))
  {
    if (MEMORY[0x20] == a2 || MEMORY[0x28] == a2)
    {
      return v5;
    }

    goto LABEL_3;
  }

  return 0;
}

void segPumpPublishContentKeyRequestEvent(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  OUTLINED_FUNCTION_370_1();
  v10 = v9;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0.0;
  v32 = 0.0;
  OUTLINED_FUNCTION_411_1();
  if (v11)
  {
    Value = FigCFDictionaryGetValue();
    BooleanValue = FigCFDictionaryGetBooleanValue();
    a5 = FigCFDictionaryGetBooleanValue();
    if (Value)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(Value, @"FHRP_HTTPFinalURL", AllocatorForMedia, &v35);
      }

      v16 = FigGetAllocatorForMedia();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(Value, @"FHRP_RemoteIPAddress", v16, theData);
      }

      if (theData[0])
      {
        BytePtr = CFDataGetBytePtr(theData[0]);
        Length = CFDataGetLength(theData[0]);
        v20 = FigCFHTTPCreateAddressStringFromSockaddr(BytePtr, Length);
      }

      else
      {
        v20 = 0;
      }

      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_203_0();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v21 = OUTLINED_FUNCTION_259_0();
        v22(v21);
      }

      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_203_0();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v23 = OUTLINED_FUNCTION_259_0();
        v24(v23);
      }

      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_203_0();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v25 = OUTLINED_FUNCTION_259_0();
        v26(v25);
      }

      FigCFDictionaryGetInt64IfPresent();
      FigCFDictionaryGetInt64IfPresent();
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    BooleanValue = 0;
  }

  v27 = FigGetAllocatorForMedia();
  if (*v6 > 2uLL)
  {
    v28 = 0;
  }

  else
  {
    v28 = dword_196E7291C[*v6];
  }

  if (!FigMetricContentKeyRequestEventCreate(v27, v35, v20, 0, 0, BooleanValue == *MEMORY[0x1E695E4D0], a4, cf, v32, v31, *&theData[2], *&theData[1], v28, a5 == *MEMORY[0x1E695E4D0], v5, &v36))
  {
    segPumpPublishMetricEvent(v10, v36);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (theData[0])
  {
    CFRelease(theData[0]);
  }

  if (v36)
  {
    CFRelease(v36);
  }
}

uint64_t segPumpSetNetworkReadsContributeToNetworkHistory(uint64_t result, int a2)
{
  if (*(result + 8216) != a2)
  {
    v3 = result;
    *(result + 8216) = a2;
    v4 = *(result + 9224);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }
    }

    return segPumpSetupNetworkHistory(v3);
  }

  return result;
}

void segPumpSetMediaSegmentCache()
{
  OUTLINED_FUNCTION_158_1();
  v35 = v2;
  v36 = v3;
  OUTLINED_FUNCTION_370_1();
  v33 = 0;
  cf[0] = 0;
  v5 = *(v4 + 296);
  v6 = v5;
  if (v5)
  {
    if (v0)
    {
LABEL_3:
      v7 = CFRetain(v0);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v1 + 304);
    if (v0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  *(v1 + 296) = v7;
  if (v5)
  {
    if (segPumpRemoveStreamingCacheListeners(*v1))
    {
      goto LABEL_41;
    }

    if (!*(v1 + 296))
    {
      goto LABEL_8;
    }

LABEL_50:
    if (segPumpAddStreamingCacheListeners(*v1))
    {
      goto LABEL_41;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_140_0();
      if (FigStreamingCacheCopyMasterPlaylist(v6, v29, v30))
      {
        goto LABEL_41;
      }

      if (cf[0])
      {
        if (FigStreamingCacheSetMasterPlaylist(*(v1 + 296), cf[0], v33))
        {
          goto LABEL_41;
        }

        if (v33)
        {
          CFRelease(v33);
          v33 = 0;
        }

        CFRelease(cf[0]);
        cf[0] = 0;
      }
    }

    goto LABEL_8;
  }

  if (v7)
  {
    goto LABEL_50;
  }

LABEL_8:
  for (i = 392; i != 440; i += 16)
  {
    v9 = *(v1 + i);
    if (!*(v1 + 296) || (v10 = *(v9 + 56)) == 0 || (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v10)) == 0 || CFArrayGetCount(MediaSegmentSpecifiers) < 1 || !*(v1 + 296))
    {
LABEL_17:
      *(v9 + 64) = 0;
LABEL_18:
      CMTimeMakeWithSeconds(&v32, fmax(*(v9 + 120), 0.0), 1000);
      v12 = OUTLINED_FUNCTION_182_1();
      segPumpCalculateStreamDurationAndBytesCached(v12, v13, v14, v15);
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (v33)
      {
        CFRelease(v33);
        v33 = 0;
      }

      continue;
    }

    if (*(v1 + 8896))
    {
      if (!*(v1 + 8212) || *(v1 + 392) != v9)
      {
        goto LABEL_17;
      }
    }

    else if (!*(v1 + 8213))
    {
      goto LABEL_17;
    }

    if (*(v9 + 64) && v6 && FigStreamingCacheMediaStreamCopyPlaylist(v6, *(v9 + 64), cf, &v33))
    {
      goto LABEL_41;
    }

    CacheForStream = segPumpCreateCacheForStream();
    if (CacheForStream != -15642)
    {
      if (CacheForStream)
      {
        goto LABEL_41;
      }

      if (cf[0])
      {
        segPumpSetPlaylistForStreamCache(*(v1 + 296), v9, cf[0], v33);
        if (v23)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_18;
    }
  }

  if (*(v1 + 8227))
  {
    segPumpMarkCurrentAlternatePersistentInCache(v1, 1, v16, v17, v18, v19, v20, v21, v31, v32.value, SWORD2(v32.value), SBYTE6(v32.value), SHIBYTE(v32.value), *&v32.timescale, v32.epoch, v33, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6]);
  }

  if (*(v1 + 9752))
  {
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v24 = OUTLINED_FUNCTION_188();
      v26 = v25(v24);
      if (v5)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v26 = 0;
    if (v5)
    {
LABEL_38:
      if (v5 != v0 && !v26)
      {
        v27 = OUTLINED_FUNCTION_298();
        FigStreamingCacheClearExclusiveWriter(v27, v28);
      }
    }
  }

LABEL_41:
  if (v33)
  {
    CFRelease(v33);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  OUTLINED_FUNCTION_156_1();
}

void segPumpReadNextCryptKeyForAllStreams()
{
  OUTLINED_FUNCTION_187();
  do
  {
    if (*(*(v0 + 392) + 16))
    {
      v2 = OUTLINED_FUNCTION_177();
      segPumpReadNextCryptKeyForStream(v2, v3, v4);
      if (v5)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_383_0();
  }

  while (!v1);
}

void segPumpMarkCurrentAlternatePersistentInCache(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(a1 + 8227) = a2;
  if (*(a1 + 296))
  {
    OUTLINED_FUNCTION_845();
    a22 = v23;
    a23 = v24;
    v26 = v25;
    v28 = v27;
    v29 = 0;
    v30 = v27 + 392;
    v31 = *MEMORY[0x1E695E4D0];
    v32 = *MEMORY[0x1E695E4C0];
    while (1)
    {
      v33 = *(v30 + v29);
      if (*(v33 + 16))
      {
        v34 = *(v33 + 64);
        if (v34)
        {
          if (v26)
          {
            v35 = *(v28 + 296);
            v36 = v31;
          }

          else
          {
            a13 = 0;
            if (FigStreamingCacheMediaStreamIsComplete(*(v28 + 296), v34, &a13))
            {
              goto LABEL_14;
            }

            if (a13)
            {
              goto LABEL_11;
            }

            v35 = *(v28 + 296);
            v34 = *(v33 + 64);
            v36 = v32;
          }

          if (FigStreamingCacheMediaStreamSetPersistent(v35, v34, v36))
          {
            goto LABEL_14;
          }
        }
      }

LABEL_11:
      v29 += 16;
      if (v29 == 48)
      {
LABEL_14:
        OUTLINED_FUNCTION_843();
        return;
      }
    }
  }
}

void segPumpSetShouldStoreCryptKeysInCache(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (*(v18 + 329) != v19)
  {
    v20 = v18;
    *(v18 + 329) = v19;
    if (v19)
    {
      for (i = 0; ; ++i)
      {
        Count = *(v20 + 7888);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v20 + 7888), i);
        if (!ValueAtIndex[154] && *(ValueAtIndex + 9))
        {
          FigGetAllocatorForMedia();
          if (*(*(OUTLINED_FUNCTION_356_1() + 8) + 48))
          {
            v24 = OUTLINED_FUNCTION_373();
            v25(v24);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_652();
}

double segPumpSetRequiresCryptKeysForMediaDelivery(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, int a10, int a11, int a12)
{
  if (*(a1 + 330) != a2)
  {
    if (*(a1 + 8868))
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a9, a10, a12);
    }

    else
    {
      *(a1 + 330) = a2;
    }
  }

  return result;
}

uint64_t segPumpRTCReportingUpdatePumpClientName(uint64_t result)
{
  if (*(result + 9656))
  {
    if (*(result + 9232))
    {
      VTable = CMBaseObjectGetVTable();
      v2 = *(VTable + 16);
      result = VTable + 16;
      if (*(v2 + 48))
      {
        OUTLINED_FUNCTION_606();

        return v3();
      }
    }
  }

  return result;
}

double segPumpSetNetworkHistory()
{
  OUTLINED_FUNCTION_629();
  v2 = v0 + 0x2000;
  if (!*(v0 + 8868))
  {
    v3 = v0;
    v4 = *(v0 + 88);
    *(v0 + 88) = v1;
    if (v1)
    {
      CFRetain(v1);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v6 = (v3 + 96);
    v5 = *(v3 + 96);
    if (v5)
    {
      CFRelease(v5);
      *v6 = 0;
    }

    v7 = *(v3 + 9224);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 9224) = 0;
    }

    if (segPumpSetHTTPRequestOptionsValue(v3, @"FHRP_NetworkHistory", *(v3 + 88)))
    {
      goto LABEL_31;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v10 = Mutable;
      FigCFDictionarySetValue();
      v11 = FigGetAllocatorForMedia();
      if (!FigNetworkPredictionArbiterCreate(v11, *(v3 + 88), v10, (v3 + 96)))
      {
        Value = FigCFDictionaryGetValue();
        if (!Value || (v13 = CFRetain(Value)) == 0)
        {
          v13 = FigCFHTTPCopyClientBundleIdentifier(*(v3 + 9072));
        }

        v14 = *v6;
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v15)
        {
          v15(v14, 0x1F0B63598, v13);
        }

        v16 = *(v3 + 96);
        v17 = *(v3 + 9232);
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v18)
        {
          v18(v16, 0x1F0B635F8, v17);
        }

        if (*(v2 + 1593))
        {
          if (*(v3 + 88) && (v19 = FigGetAllocatorForMedia(), (v20 = CFStringCreateWithFormat(v19, 0, @"%@", *(v3 + 8944))) != 0))
          {
            v21 = v20;
            v22 = *(v3 + 9224);
            if (v22)
            {
              CFRelease(v22);
              *(v3 + 9224) = 0;
            }

            FigBandwidthPeriodicReporterCreate(*(v3 + 56), 1000000000 * *(v3 + 144), v21, *v3, &segPumpEnsureBandwidthPeriodicReporterIfEnabled_bandwidthPeriodicReportingCallbacks, *(v3 + 88), (v3 + 9224));
            CFRelease(v21);
          }

          else
          {
            OUTLINED_FUNCTION_239();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }

        v23 = *(v3 + 9776);
        if (v23)
        {
          FigCMCDHeaderVendorSetNetworkHistory(v23, *(v3 + 88));
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      CFRelease(v10);
LABEL_31:
      OUTLINED_FUNCTION_320();
      return result;
    }
  }

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_320();

  return FigSignalErrorAtGM(v25);
}

void segPumpSetMaxPipelinedConnections(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (v3 >= 256)
  {
    v4 = 256;
  }

  else
  {
    v4 = v3;
  }

  v5 = (a1 + 400);
  v6 = 3;
  while (1)
  {
    segPumpStreamSetReadAheadConnectionCountMax(*(v5 - 1), v4);
    if (v7)
    {
      break;
    }

    segPumpStreamSetReadAheadConnectionCountMax(*v5, v4);
    if (v8)
    {
      break;
    }

    v5 += 2;
    if (!--v6)
    {
      *(a1 + 8396) = v4;
      return;
    }
  }
}

uint64_t segPumpSetRTCReportingAgent(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_369();
  if (!*(v4 + 9232))
  {
    v2[1154] = v3;
    CFRetain(v3);
    goto LABEL_18;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return 4294954514;
  }

  v5 = OUTLINED_FUNCTION_266();
  result = v6(v5);
  if (result)
  {
    return result;
  }

  if (!v2[1154])
  {
    return 4294955296;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return 4294954514;
  }

  v8 = OUTLINED_FUNCTION_266();
  result = v9(v8);
  if (result)
  {
    return result;
  }

  if (!v2[1154])
  {
    return 4294955296;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return 4294954514;
  }

  v10 = OUTLINED_FUNCTION_266();
  result = v11(v10);
  if (result)
  {
    return result;
  }

  if (!v2[1154])
  {
    return 4294955296;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return 4294954514;
  }

  v12 = OUTLINED_FUNCTION_266();
  result = v13(v12);
  if (result)
  {
    return result;
  }

  v14 = v2[1154];
  v2[1154] = v3;
  CFRetain(v3);
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_18:
  v15 = v2[1153];
  if (!v15 || (result = FigBandwidthPeriodicReporterSetReportingAgent(v15, v3), !result))
  {
    if (v2[12] && *(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v16 = OUTLINED_FUNCTION_308();
      v17(v16);
    }

    result = v2[1165];
    if (result)
    {
      v18 = FigRCLCopyConfigurationGroupName(result);
      v19 = v2[1154];
      if (v19)
      {
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v20)
        {
          v20(v19, 0x1F0B64538, 0x1F0B1C5B8, v18, 0);
        }
      }

      if (v18)
      {
        CFRelease(v18);
      }

      return 0;
    }
  }

  return result;
}

void segPumpResetContentKeyState(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, __int128 a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type, int a19, int a20, uint64_t a21, int a22, __int16 a23, __int16 a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_415();
  v56 = v55;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v81 = v56;
  v58 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v58, v59);
  v80 = v60;
  if (!v60)
  {
    for (i = 392; i != 440; i += 16)
    {
      segPumpCancelCryptReadAndResetData();
    }

    for (j = 0; ; ++j)
    {
      Count = *(DerivedStorage + 7888);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (j >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 7888), j);
      if (ValueAtIndex[6] == 1)
      {
        v65 = ValueAtIndex;
        if (dword_1EAF16A30)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v67 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_288_1(v67))
          {
            OUTLINED_FUNCTION_76_1();
            OUTLINED_FUNCTION_333_0();
            OUTLINED_FUNCTION_359_1();
            OUTLINED_FUNCTION_82_1();
            OUTLINED_FUNCTION_361_1();
            OUTLINED_FUNCTION_108();
            OUTLINED_FUNCTION_282();
            _os_log_send_and_compose_impl(v68, v69, v70, v71, v72, v73, v74, "<SEGPUMP> %s: %{public}@: resetting %@");
          }

          OUTLINED_FUNCTION_9_1();
          OUTLINED_FUNCTION_454(v75, v76, v77, v78, v79);
        }

        *(v65 + 88) = 0;
        *(v65 + 104) = 0;
        *(v65 + 96) = 0;
        *(v65 + 128) = 0;
        *(v65 + 136) = 0;
        *(v65 + 32) = 0;
        *(v65 + 40) = 0;
        *(v65 + 144) = 0;
        *(v65 + 151) = 0;
        CryptKeyReleaseAndClearVideoDecryptor(v65);
        CryptKeyReleaseAndClearAudioDecryptor(v65);
      }
    }
  }

  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v81, v80);
  OUTLINED_FUNCTION_355();
}

uint64_t segPumpAddStreamingCacheListeners(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_187();
    FigRetainProxyGetOwner();
    CMBaseObjectGetDerivedStorage();
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_10_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = OUTLINED_FUNCTION_311(os_log_and_send_and_compose_flags_and_os_log_type, v3, v4, v5, v6, v7, v8, v9, v23, v24, v25, v26, SBYTE2(v26), BYTE3(v26), SHIDWORD(v26));
      if (OUTLINED_FUNCTION_115_1(v10))
      {
        OUTLINED_FUNCTION_53_0();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, v16, v1, v17);
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v18, v19, v20, v21, v22);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_186();
    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

void segPumpBandwidthReportingPerformPredictionCallback()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_369();
  v419 = *MEMORY[0x1E69E9840];
  v404 = 0;
  cf = 0;
  FigGetUpTimeNanoseconds();
  OUTLINED_FUNCTION_112_0();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (v1)
  {
    segPumpUnlockAndSendAllPendingNotifications(v0);
  }

  else
  {
    segPumpMakeNetworkPredictionInput(v404, v406);
    v2 = *&v406[8];
    v3 = v410;
    v4 = v411;
    memcpy(__dst, v412, sizeof(__dst));
    v416 = v413;
    v417 = v414;
    v418 = v415;
    v5 = *(v404 + 8328);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        if (!FigAlternateGetAverageBitRate(v6))
        {
          FigAlternateGetPeakBitRate(*(*(v404 + 8328) + 8));
        }
      }
    }

    VTable = CMBaseObjectGetVTable();
    v16 = *(VTable + 16);
    v15 = VTable + 16;
    v17 = *(v16 + 8);
    if (v17)
    {
      *v406 = 0;
      *&v406[8] = v2;
      OUTLINED_FUNCTION_7_0();
      v410 = v3;
      v411 = v4;
      OUTLINED_FUNCTION_130_1(v406, v277, v298, v313, v322, v331, v340, v349, v358, v367, v376, v385, v394);
      v18 = OUTLINED_FUNCTION_0_1();
      v15 = v17(v18);
      if (!v15)
      {
        v19 = OUTLINED_FUNCTION_344_1(v15, 0x1F0B64AB8, v9, v10, v11, v12, v13, v14, v277);
        v28 = OUTLINED_FUNCTION_192_1(v19, 0x1F0B64AD8, v20, v21, v22, v23, v24, v25, v26, v27, v278, *&v298);
        v15 = OUTLINED_FUNCTION_194_0(v28, 0x1F0B64AF8, v29, v30, v31, v32, v33, v34, v35, v36, v279, v299, *&v313);
      }
    }

    v37 = OUTLINED_FUNCTION_138_0(v15, v8, v9, v10, v11, v12, v13, v14, v277, v298, v313, v322, v331, v340, v349, v358, v367, v376, v385, v394, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404);
    v46 = *(v37 + 16);
    v45 = v37 + 16;
    v47 = *(v46 + 8);
    if (v47)
    {
      *v406 = 1;
      *&v406[8] = v2;
      OUTLINED_FUNCTION_7_0();
      v410 = v3;
      v411 = v4;
      OUTLINED_FUNCTION_130_1(v406, v280, v300, v314, v323, v332, v341, v350, v359, v368, v377, v386, v395);
      v48 = OUTLINED_FUNCTION_0_1();
      v45 = v47(v48);
      if (!v45)
      {
        v49 = OUTLINED_FUNCTION_344_1(v45, 0x1F0B64B38, v39, v40, v41, v42, v43, v44, v280);
        v58 = OUTLINED_FUNCTION_192_1(v49, 0x1F0B64B58, v50, v51, v52, v53, v54, v55, v56, v57, v281, *&v300);
        v45 = OUTLINED_FUNCTION_194_0(v58, 0x1F0B64B78, v59, v60, v61, v62, v63, v64, v65, v66, v282, v301, *&v314);
      }
    }

    v67 = OUTLINED_FUNCTION_138_0(v45, v38, v39, v40, v41, v42, v43, v44, v280, v300, v314, v323, v332, v341, v350, v359, v368, v377, v386, v395, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404);
    v76 = *(v67 + 16);
    v75 = v67 + 16;
    v77 = *(v76 + 8);
    if (v77)
    {
      *v406 = 2;
      *&v406[8] = v2;
      OUTLINED_FUNCTION_7_0();
      v410 = v3;
      v411 = v4;
      OUTLINED_FUNCTION_130_1(v406, v283, v302, v315, v324, v333, v342, v351, v360, v369, v378, v387, v396);
      v78 = OUTLINED_FUNCTION_0_1();
      v75 = v77(v78);
      if (!v75)
      {
        v79 = OUTLINED_FUNCTION_344_1(v75, 0x1F0B64BB8, v69, v70, v71, v72, v73, v74, v283);
        v88 = OUTLINED_FUNCTION_192_1(v79, 0x1F0B64BD8, v80, v81, v82, v83, v84, v85, v86, v87, v284, *&v302);
        v75 = OUTLINED_FUNCTION_194_0(v88, 0x1F0B64BF8, v89, v90, v91, v92, v93, v94, v95, v96, v285, v303, *&v315);
      }
    }

    v97 = OUTLINED_FUNCTION_138_0(v75, v68, v69, v70, v71, v72, v73, v74, v283, v302, v315, v324, v333, v342, v351, v360, v369, v378, v387, v396, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404);
    v106 = *(v97 + 16);
    v105 = v97 + 16;
    v107 = *(v106 + 8);
    if (v107)
    {
      *v406 = 4;
      *&v406[8] = v2;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v108, v109, v110, v111, v112, v113, v114, v115, xmmword_196E72850, v116, v286, v304, v316, v325, v334, v343, v352, v361, v370, v379, v388, v397, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404, cf, v406[0], *&v406[8], v407, v408, v409, v117, v410);
      v118 = OUTLINED_FUNCTION_0_1();
      v105 = v107(v118);
      if (!v105)
      {
        v119 = OUTLINED_FUNCTION_344_1(v105, 0x1F0B64C38, v99, v100, v101, v102, v103, v104, v286);
        v128 = OUTLINED_FUNCTION_192_1(v119, 0x1F0B64C58, v120, v121, v122, v123, v124, v125, v126, v127, v287, *&v304);
        v105 = OUTLINED_FUNCTION_194_0(v128, 0x1F0B64C78, v129, v130, v131, v132, v133, v134, v135, v136, v288, v305, *&v316);
      }
    }

    v137 = OUTLINED_FUNCTION_138_0(v105, v98, v99, v100, v101, v102, v103, v104, v286, v304, v316, v325, v334, v343, v352, v361, v370, v379, v388, v397, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404);
    v146 = *(v137 + 16);
    v145 = v137 + 16;
    v147 = *(v146 + 8);
    if (v147)
    {
      *v406 = 3;
      *&v406[8] = v2;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v148, v149, v150, v151, v152, v153, v154, v155, xmmword_196E72850, v156, v289, v306, v317, v326, v335, v344, v353, v362, v371, v380, v389, v398, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404, cf, v406[0], *&v406[8], v407, v408, v409, v157, v410);
      v158 = OUTLINED_FUNCTION_0_1();
      v145 = v147(v158);
      if (!v145)
      {
        v159 = OUTLINED_FUNCTION_344_1(v145, 0x1F0B64CB8, v139, v140, v141, v142, v143, v144, v289);
        v168 = OUTLINED_FUNCTION_192_1(v159, 0x1F0B64CD8, v160, v161, v162, v163, v164, v165, v166, v167, v290, *&v306);
        OUTLINED_FUNCTION_194_0(v168, 0x1F0B64CF8, v169, v170, v171, v172, v173, v174, v175, v176, v291, v307, *&v317);
        FigCFDictionarySetInt64();
        FigCFDictionarySetInt64();
        v145 = FigCFDictionarySetInt64();
      }
    }

    v177 = OUTLINED_FUNCTION_138_0(v145, v138, v139, v140, v141, v142, v143, v144, v289, v306, v317, v326, v335, v344, v353, v362, v371, v380, v389, v398, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404);
    v186 = *(v177 + 16);
    v185 = v177 + 16;
    v187 = *(v186 + 8);
    if (v187)
    {
      *v406 = 5;
      *&v406[8] = v2;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v188, v189, v190, v191, v192, v193, v194, v195, xmmword_196E72850, v196, v292, v308, v318, v327, v336, v345, v354, v363, v372, v381, v390, v399, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404, cf, v406[0], *&v406[8], v407, v408, v409, v197, v410);
      v198 = OUTLINED_FUNCTION_0_1();
      v185 = v187(v198);
      if (!v185)
      {
        v199 = OUTLINED_FUNCTION_344_1(v185, 0x1F0B64D38, v179, v180, v181, v182, v183, v184, v292);
        v208 = OUTLINED_FUNCTION_192_1(v199, 0x1F0B64D58, v200, v201, v202, v203, v204, v205, v206, v207, v293, *&v308);
        v185 = OUTLINED_FUNCTION_194_0(v208, 0x1F0B64D78, v209, v210, v211, v212, v213, v214, v215, v216, v294, v309, *&v318);
      }
    }

    v217 = OUTLINED_FUNCTION_138_0(v185, v178, v179, v180, v181, v182, v183, v184, v292, v308, v318, v327, v336, v345, v354, v363, v372, v381, v390, v399, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404);
    v226 = *(v217 + 16);
    v225 = v217 + 16;
    v227 = *(v226 + 8);
    if (v227)
    {
      *v406 = xmmword_196E728A0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v228, v229, v230, v231, v232, v233, v234, v235, xmmword_196E72850, v236, v295, v310, v319, v328, v337, v346, v355, v364, v373, v382, v391, v400, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404, cf, v406[0], *&v406[8], v407, v408, v409, v237, v410);
      v238 = OUTLINED_FUNCTION_0_1();
      v225 = v227(v238);
      if (!v225)
      {
        v225 = OUTLINED_FUNCTION_344_1(v225, 0x1F0B64DB8, v219, v220, v221, v222, v223, v224, v295);
      }
    }

    v239 = OUTLINED_FUNCTION_138_0(v225, v218, v219, v220, v221, v222, v223, v224, v295, v310, v319, v328, v337, v346, v355, v364, v373, v382, v391, v400, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404);
    v248 = *(v239 + 16);
    v247 = v239 + 16;
    v249 = *(v248 + 8);
    if (v249)
    {
      *v406 = xmmword_196E728A0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v250, v251, v252, v253, v254, v255, v256, v257, xmmword_196E72850, v258, v296, v311, v320, v329, v338, v347, v356, v365, v374, v383, v392, v401, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404, cf, v406[0], *&v406[8], v407, v408, v409, v259, v410);
      v260 = OUTLINED_FUNCTION_0_1();
      v247 = v249(v260);
      if (!v247)
      {
        v247 = FigCFDictionarySetDouble();
      }
    }

    v261 = *(*(OUTLINED_FUNCTION_138_0(v247, v240, v241, v242, v243, v244, v245, v246, v296, v311, v320, v329, v338, v347, v356, v365, v374, v383, v392, v401, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404) + 16) + 8);
    if (v261)
    {
      *v406 = xmmword_196E728B0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v262, v263, v264, v265, v266, v267, v268, v269, xmmword_196E72850, v270, v297, v312, v321, v330, v339, v348, v357, v366, v375, v384, v393, v402, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v404, cf, v406[0], *&v406[8], v407, v408, v409, v271, v410);
      v272 = OUTLINED_FUNCTION_0_1();
      if (!v261(v272))
      {
        FigCFDictionarySetDouble();
      }
    }

    FigNetworkInterfaceReporterGetPredictedWirelessThroughput();
    SInt64 = FigCFNumberCreateSInt64();
    v274 = OUTLINED_FUNCTION_515();
    CFDictionarySetValue(v274, v275, v276);
    segPumpUnlockAndSendAllPendingNotifications(v0);
    if (SInt64)
    {
      CFRelease(SInt64);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_191();
}

double segPumpStreamSetReadAheadConnectionCountMax(uint64_t a1, uint64_t a2)
{
  if (a2 <= 0)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_187();
  v6 = *(v5 + 776);
  if (v6 >= v7)
  {
    return result;
  }

  v8 = *(v3 + 768);
  v9 = malloc_type_calloc(v2, 8uLL, 0x2004093837F09uLL);
  if (v9)
  {
    v10 = v9;
    memcpy(v9, v8, 8 * v6);
    *(v3 + 768) = v10;
    *(v3 + 776) = v2;
    free(v8);
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t segPumpClientNeedsMore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a9 = 0;
  a10 = 0;
  v23 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v23, v24);
  if (!v25)
  {
    v26 = *(DerivedStorage + 392 + 16 * v21);
    v27 = OUTLINED_FUNCTION_298();
    segPumpStreamNeedsMore(v27, v28, v26);
    if (!v29)
    {
      if (segPumpGetDeliveredTimeStamp(*(DerivedStorage + 392 + 16 * v21 + 8), &a10))
      {
        if (segPumpGetDeliveredTimeStamp(v26, &a9))
        {
          OUTLINED_FUNCTION_291_1();
          if (!(v35 ^ v36 | v34))
          {
            v37 = OUTLINED_FUNCTION_69_0();
            segPumpStreamNeedsMore(v37, v38, v39);
          }
        }
      }

      segPumpUpdateBufferingDoneState(DerivedStorage);
    }
  }

  OUTLINED_FUNCTION_652();

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v30, v31);
}

void segPumpSetCurrentAlternate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *a23, _DWORD *a24, _DWORD *a25, uint64_t a26)
{
  OUTLINED_FUNCTION_193();
  v768 = v27;
  v29 = v28;
  v851 = v30;
  v32 = v31;
  HIDWORD(v847) = v33;
  v861 = v34;
  v36 = v35;
  v38 = v37;
  v807 = a25;
  v899 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LODWORD(v774) = segPumpStreamBitRateRequiredForStream(DerivedStorage, *(DerivedStorage + 392));
  v886 = 0;
  OUTLINED_FUNCTION_400_1();
  LODWORD(v855) = v32;
  LODWORD(v41) = v40 & (v32 >> 2);
  segPumpAPILockAndEnsureAPIStatus(v38, 1);
  if (v42)
  {
    goto LABEL_516;
  }

  if (!*(DerivedStorage + 8280))
  {
    OUTLINED_FUNCTION_45_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v669, v675, v683);
LABEL_516:
    v67 = v42;
    OUTLINED_FUNCTION_176_0();
    goto LABEL_453;
  }

  if (*(*(DerivedStorage + 392) + 856))
  {
    OUTLINED_FUNCTION_178_1(MEMORY[0x1E6960C70], *MEMORY[0x1E6960C70]);
  }

  v44 = &off_196E72000;
  v821 = v38;
  if ((v855 & 8) == 0 || !*(DerivedStorage + 7880) || !FigCFEqual())
  {
    v45 = 8280;
    if (*(DerivedStorage + 7880))
    {
      for (i = 400; i != 448; i += 16)
      {
        v44 = *(DerivedStorage + i);
        if (v44[2])
        {
          OUTLINED_FUNCTION_266();
          v43 = segPumpStopConcurrentStream();
          v44[118] = -1;
        }
      }

      *(DerivedStorage + 7880) = 0;
    }

    v793 = v29;
    v835 = DerivedStorage + 392;
    v38 = DerivedStorage + 8280;
    HIDWORD(v839) = v41;
    if ((v41 & 1) == 0)
    {
      *(*(DerivedStorage + 392) + 136) = -1;
      *(*(DerivedStorage + 408) + 136) = -1;
      *(*(DerivedStorage + 424) + 136) = -1;
      if ((v855 & 0x20) != 0)
      {
        if (*(DerivedStorage + 8432))
        {
          v46 = 0;
          v41 = DerivedStorage + 8440;
          v43.n128_u64[0] = 136316162;
          *v872 = v43;
          v45 = DerivedStorage + 392;
          do
          {
            v44 = *v45;
            v47 = **v45;
            v48 = v41 + 40 * v47;
            if (*(v48 + 24))
            {
              *(v44 + 17) = *v48;
              v44[19] = *(v41 + 40 * v47 + 16);
              if (dword_1EAF16A30)
              {
                OUTLINED_FUNCTION_145_0();
                OUTLINED_FUNCTION_150_1();
                i = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v49 = os_log_type_enabled(i, type[0]);
                if (OUTLINED_FUNCTION_16_1(v49))
                {
                  OUTLINED_FUNCTION_76_1();
                  LODWORD(cf.value) = v872[0];
                  OUTLINED_FUNCTION_248_1();
                  HIWORD(cf.epoch) = 1024;
                  *v889 = v46;
                  *&v889[4] = 2048;
                  *&v889[6] = v50;
                  *&v889[14] = 2048;
                  *&v889[16] = v51;
                  OUTLINED_FUNCTION_23_1();
                  OUTLINED_FUNCTION_24_1();
                  OUTLINED_FUNCTION_190_0();
                  _os_log_send_and_compose_impl(v52, v53, v54, v55, v56, v57, v58, "<SEGPUMP> %s: %{public}@: recovering stream %d at seq %lld offset %lld");
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0(v59, v60, v61, v62, v63);
              }
            }

            ++v46;
            v45 += 16;
          }

          while (v46 != 3);
        }
      }
    }

    if (v36)
    {
      HasAudio = DerivedStorage + 8296;
      v65 = DerivedStorage + 392;
      while (1)
      {
        HasAudio = *HasAudio;
        if (!HasAudio)
        {
          break;
        }

        if (CFEqual(*(HasAudio + 8), v36))
        {
          OUTLINED_FUNCTION_45_1();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v669, v675, v683);
          v67 = v66;
          OUTLINED_FUNCTION_176_0();
LABEL_29:
          OUTLINED_FUNCTION_303_1();
          goto LABEL_453;
        }
      }

      LODWORD(v41) = HIDWORD(v839);
      do
      {
        v38 = *v38;
        if (!v38)
        {
          goto LABEL_99;
        }
      }

      while (!CFEqual(*(v38 + 8), v36));
      v68 = *(v38 + 8);
LABEL_92:
      if (!v68 || (LODWORD(v748) = FigAlternateGetPeakBitRate(v68), v748 <= 0))
      {
LABEL_99:
        OUTLINED_FUNCTION_45_1();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_100:
        v67 = v170;
        LODWORD(key) = 0;
        v872[0] = 0;
LABEL_101:
        v843 = 0;
        i = 0;
LABEL_102:
        v38 = v821;
        goto LABEL_453;
      }

      if (*(DerivedStorage + 8408) && !FigCFEqual())
      {
        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_145_0();
          OUTLINED_FUNCTION_150_1();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v162 = OUTLINED_FUNCTION_245_1(os_log_and_send_and_compose_flags_and_os_log_type, v155, v156, v157, v158, v159, v160, v161, v669, v675, v683, v687, v694, v701, v707, v714, v721, v728, v734, v741, v748, v754, v761, v768, v774, v780, v787, v793, v799, v807, v811, v816, v821, key, v829, v835, v839, v843, v847, v851, v855, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
          if (OUTLINED_FUNCTION_124_0(v162))
          {
            OUTLINED_FUNCTION_76_1();
            LODWORD(cf.value) = 136315394;
            OUTLINED_FUNCTION_225_1();
            OUTLINED_FUNCTION_2_1();
            OUTLINED_FUNCTION_44_0();
            _os_log_send_and_compose_impl(v163, v164, v165, v166, v167, v168, HasAudio, v169);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_345_0(v171, v172, v173, v174, v175);
        }

        segPumpClearSuggestedAlternate(DerivedStorage, 0);
      }

      HDCPLevel = FigAlternateGetHDCPLevel(v68);
      if (HDCPLevel == -2)
      {
        v177 = -1;
      }

      else
      {
        v177 = HDCPLevel;
      }

      HIDWORD(v708) = v177;
      LODWORD(v865[0]) = FigAlternateIsIFrameOnly(v68);
      PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v68);
      if (PlaylistAlternateURL)
      {
        v886 = CFRetain(PlaylistAlternateURL);
        if (v886)
        {
          if (*(DerivedStorage + 328))
          {
            v170 = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(DerivedStorage + 320), &v886);
            if (v170)
            {
              goto LABEL_100;
            }
          }
        }
      }

      else
      {
        v886 = 0;
      }

      i = v886;
      if (HIDWORD(v847))
      {
        v179 = v861;
        if (v886)
        {
          CFRetain(v886);
        }

        URLForCacheLookup = FigAlternateGetURLForCacheLookup(v68);
        StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(v68);
        v781 = 0;
        v843 = i;
        i = 0;
      }

      else
      {
        v179 = v861;
        if (v886)
        {
          CFRetain(v886);
        }

        *(&StableStreamIdentifier + 1) = FigAlternateGetURLForCacheLookup(v68);
        v781 = FigAlternateGetStableStreamIdentifier(v68);
        URLForCacheLookup = 0;
        *&StableStreamIdentifier = 0;
        v843 = 0;
      }

      v180 = *(DerivedStorage + 8576);
      if (v180)
      {
        CFRelease(v180);
        *(DerivedStorage + 8576) = 0;
      }

      v181 = *(DerivedStorage + 8584);
      if (v181)
      {
        CFRelease(v181);
        *(DerivedStorage + 8584) = 0;
      }

      v182 = *(DerivedStorage + 8592);
      if (v182)
      {
        CFRelease(v182);
        *(DerivedStorage + 8592) = 0;
      }

      if (v179)
      {
        Count = CFArrayGetCount(v179);
        if (Count >= 1)
        {
          v184 = Count;
          v830 = i;
          v872[0] = 0;
          v735 = 0;
          v742 = 0;
          v185 = 0;
          v186 = 0;
          LODWORD(v41) = 1986618469;
          key = @"MediaSelectionOptionsPersistentID";
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v179, v186);
            if (!CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType"))
            {
              goto LABEL_191;
            }

            v898[0] = 0;
            cf.value = 0;
            rhs.value = 0;
            *type = 0;
            if (!FigCFStringGetOSTypeValue())
            {
              goto LABEL_358;
            }

            v188 = *type == 1986618469 || LODWORD(v865[0]) == 0;
            if (!v188 || *type == 1668047728)
            {
              goto LABEL_191;
            }

            Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
            v191 = Value;
            if (Value)
            {
              v192 = CFGetTypeID(Value);
              if (v192 == CFNumberGetTypeID())
              {
                v185 = 1;
              }

              else
              {
                v191 = 0;
              }
            }

            switch(*type)
            {
              case 0x76696465:
                v193 = *(DerivedStorage + 8576);
                *(DerivedStorage + 8576) = v191;
                if (v191)
                {
                  goto LABEL_147;
                }

                break;
              case 0x736F756E:
                if (HIDWORD(v847) && !v191)
                {
LABEL_358:
                  OUTLINED_FUNCTION_45_1();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_359:
                  v67 = v194;
                  LODWORD(key) = 0;
                  OUTLINED_FUNCTION_303_1();
                  i = v830;
                  goto LABEL_453;
                }

                v193 = *(DerivedStorage + 8584);
                *(DerivedStorage + 8584) = v191;
                if (v191)
                {
LABEL_147:
                  CFRetain(v191);
                }

                break;
              case 0x7362746C:
                v193 = *(DerivedStorage + 8592);
                *(DerivedStorage + 8592) = v191;
                if (v191)
                {
                  goto LABEL_147;
                }

                break;
              default:
                goto LABEL_358;
            }

            if (v193)
            {
              CFRelease(v193);
            }

            FigAlternateGetRenditionInfoForMediaType(v68, *type, *(DerivedStorage + 8576), *(DerivedStorage + 8584), *(DerivedStorage + 8592), 0, &rhs, v898, &cf);
            if (v898[0])
            {
              CFRetain(v898[0]);
              if (v898[0])
              {
                if (*(DerivedStorage + 328))
                {
                  v194 = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(DerivedStorage + 320), v898);
                  if (v194)
                  {
                    goto LABEL_359;
                  }
                }
              }
            }

            if (*type == 1986618469)
            {
              v179 = v861;
              if (!v191)
              {
                if (v830)
                {
                  CFRelease(v830);
                }

                v781 = 0;
                v830 = 0;
                goto LABEL_187;
              }

              if (HIDWORD(v847))
              {
                goto LABEL_187;
              }

              v197 = v898[0];
              if (v898[0])
              {
                CFRetain(v898[0]);
                if (v830)
                {
                  CFRelease(v830);
                }

                *(&StableStreamIdentifier + 1) = cf.value;
                v781 = rhs.value;
                v195 = v872[0];
                v830 = v197;
                goto LABEL_180;
              }
            }

            else
            {
              v179 = v861;
              if (*type != 1936684398)
              {
                if (*type == 1935832172)
                {
                  v195 = v898[0];
                  if (v898[0])
                  {
                    CFRetain(v898[0]);
                  }

                  if (v872[0])
                  {
                    CFRelease(v872[0]);
                  }

                  v735 = cf.value;
                  v742 = rhs.value;
                  goto LABEL_188;
                }

                goto LABEL_187;
              }

              if (!v191)
              {
                if (v843)
                {
                  CFRelease(v843);
                }

                URLForCacheLookup = 0;
                *&StableStreamIdentifier = 0;
                v843 = 0;
LABEL_187:
                v195 = v872[0];
                goto LABEL_188;
              }

              v196 = v898[0];
              if (v898[0])
              {
                CFRetain(v898[0]);
                if (v843)
                {
                  CFRelease(v843);
                }

                URLForCacheLookup = cf.value;
                *&StableStreamIdentifier = rhs.value;
                v195 = v872[0];
                v843 = v196;
                goto LABEL_180;
              }
            }

            v195 = v872[0];
LABEL_180:
            v179 = v861;
LABEL_188:
            if (v898[0])
            {
              CFRelease(v898[0]);
            }

            v872[0] = v195;
LABEL_191:
            if (v184 == ++v186)
            {
              v198 = v185 != 0;
              LODWORD(v41) = HIDWORD(v839);
              i = v830;
              v65 = v835;
              goto LABEL_194;
            }
          }
        }
      }

      v198 = 0;
      v735 = 0;
      v742 = 0;
      v872[0] = 0;
LABEL_194:
      if (!(v843 | i))
      {
        OUTLINED_FUNCTION_45_1();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v669, v675, v683);
        v67 = v653;
        LODWORD(key) = 0;
        goto LABEL_101;
      }

      HIDWORD(v755) = v198;
      if (i)
      {
        v199 = 3;
      }

      else
      {
        v199 = 2;
      }

      if (i)
      {
        v200 = 1;
      }

      else
      {
        v200 = v843 == 0;
      }

      v201 = HIDWORD(v847);
      if (!v200)
      {
        v201 = 1;
      }

      LODWORD(v708) = v201;
      if (!v843)
      {
        v199 = i != 0;
      }

      if (v872[0])
      {
        v202 = v199 | 4;
      }

      else
      {
        v202 = v199;
      }

      *&v695 = a24;
      *a24 = v202;
      v203 = *(DerivedStorage + 9232);
      if (v203)
      {
        v204 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v204)
        {
          v204(v203, 0x1F0B64538, 0x1F0B66AF8, v202, 0);
        }
      }

      v205 = *(DerivedStorage + 8328);
      if (v205)
      {
        CFEqual(*(v205 + 8), v68);
        OUTLINED_FUNCTION_786();
      }

      else
      {
        v206 = 1;
      }

      HIDWORD(v847) = v206;
      v207 = *(*v65 + 8);
      if (i | v207)
      {
        v208 = FigCFHTTPCompareURLs(i, v207) == 0;
      }

      else
      {
        v208 = 0;
      }

      v209 = *(*(DerivedStorage + 408) + 8);
      if (v843 | v209)
      {
        v210 = FigCFHTTPCompareURLs(v843, v209) == 0;
      }

      else
      {
        v210 = 0;
      }

      v211 = *(*(DerivedStorage + 424) + 8);
      if (v872[0] | v211)
      {
        v214 = FigCFHTTPCompareURLs(v872[0], v211);
        v215 = v208 | 2;
        if (!v210)
        {
          v215 = v208;
        }

        v212 = v214 == 0;
        if (v214)
        {
          v213 = v215;
        }

        else
        {
          v213 = v215 | 4;
        }
      }

      else
      {
        v212 = 0;
        if (v210)
        {
          v213 = v208 | 2;
        }

        else
        {
          v213 = v208;
        }
      }

      v688 = @"bytePumpStats";
      v216 = *(DerivedStorage + 8328);
      HIDWORD(v695) = v212;
      HIDWORD(v787) = v210;
      if (v216)
      {
        FigAlternateGetVideoGroupIDString(*(v216 + 8));
        FigAlternateGetVideoGroupIDString(*(v38 + 8));
        OUTLINED_FUNCTION_171_1();
        FigCFEqual();
        OUTLINED_FUNCTION_786();
        LODWORD(v755) = v217;
        v218 = *(DerivedStorage + 8328);
        if (v218)
        {
          FigAlternateGetAudioGroupIDString(*(v218 + 8));
          FigAlternateGetAudioGroupIDString(*(v38 + 8));
          OUTLINED_FUNCTION_171_1();
          LODWORD(v41) = FigCFEqual() == 0;
          v219 = *(DerivedStorage + 8328);
          if (v219)
          {
            FigAlternateGetSubtitleGroupIDString(*(v219 + 8));
            FigAlternateGetSubtitleGroupIDString(*(v38 + 8));
            OUTLINED_FUNCTION_171_1();
            v220 = FigCFEqual() == 0;
            v221 = *(DerivedStorage + 8328);
            HIDWORD(v748) = v220;
            if (v221 && *(DerivedStorage + 296))
            {
              v222 = FigAlternateGetLastKnownValueForIsFullyCached(*(v221 + 8)) == 0;
              goto LABEL_239;
            }
          }

          else
          {
            HIDWORD(v748) = 1;
          }

LABEL_238:
          v222 = 1;
LABEL_239:
          if (*(DerivedStorage + 296))
          {
            IsFullyCached = FigAlternateGetLastKnownValueForIsFullyCached(*(v38 + 8));
          }

          else
          {
            IsFullyCached = 0;
          }

          LODWORD(key) = v213;
          DWORD2(v695) = (v855 >> 4) & 1;
          v817 = (DerivedStorage + 0x2000);
          *(DerivedStorage + 8400) = (v855 & 0x10) != 0;
          if ((*v851 & 0x8000000000000000) != 0)
          {
            OUTLINED_FUNCTION_178_1(MEMORY[0x1E6960CC0], *MEMORY[0x1E6960CC0]);
          }

          v224 = a23;
          HIDWORD(v799) = v855 & 1;
          v762 = DerivedStorage + 408;
          v831 = i;
          v812 = a23;
          HIDWORD(v774) = v208;
          if (dword_1EAF16A30)
          {
            OUTLINED_FUNCTION_145_0();
            OUTLINED_FUNCTION_150_1();
            v213 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v213, type[0]);
            OUTLINED_FUNCTION_46();
            if (a23)
            {
              OUTLINED_FUNCTION_76_1();
              if (v152)
              {
                v234 = &stru_1F0B1AFB8;
              }

              else
              {
                v234 = v233;
              }

              *v898 = OUTLINED_FUNCTION_364_1(v225, v226, v227, v228, v229, v230, v231, v232, v669, v675, v683, 0x1F0B64538, a24, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, a23, v817, v821, key, i, v835, v839, v843, v847, v851);
              v898[2] = *(v235 + 16);
              Seconds = CMTimeGetSeconds(v898);
              *v898 = *v793;
              v898[2] = *(v793 + 16);
              v208 = HIDWORD(v774);
              CMTimeGetSeconds(v898);
              LODWORD(cf.value) = 136317186;
              OUTLINED_FUNCTION_225_1();
              LOWORD(cf.flags) = 2114;
              if (HIDWORD(v839))
              {
                v239 = "true";
              }

              else
              {
                v239 = v237;
              }

              *(&cf.flags + 2) = v234;
              HIWORD(cf.epoch) = 1024;
              if (LODWORD(v865[0]))
              {
                v240 = "true";
              }

              else
              {
                v240 = v237;
              }

              *v889 = v748;
              if (IsFullyCached)
              {
                v237 = "true";
              }

              *&v889[4] = 2048;
              *&v889[6] = Seconds;
              *&v889[14] = 2048;
              *&v889[16] = v238;
              v890 = 1024;
              v891 = v855 & 1;
              v892 = 2082;
              v893 = v239;
              v894 = 2082;
              v895 = v240;
              v896 = 2082;
              v897 = v237;
              OUTLINED_FUNCTION_23_1();
              OUTLINED_FUNCTION_108();
              OUTLINED_FUNCTION_448(v241, v242, v243, v244, v245, v246, v247, v248);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0(v249, v250, v251, v252, v253);
            i = v831;
            v224 = v812;
          }

          v254 = BYTE4(v847) | v208;
          if (((HIDWORD(v847) | v208 | HIDWORD(v787)) & 1) == 0)
          {
            LODWORD(v768) = 0;
            v857 = 0;
            OUTLINED_FUNCTION_303_1();
            v256 = v835;
LABEL_406:
            if (*(DerivedStorage + 288) != HIDWORD(v708))
            {
              v499 = *(DerivedStorage + 272);
              if (v499)
              {
                CFRelease(v499);
                *(DerivedStorage + 272) = 0;
              }

              v500 = *(DerivedStorage + 280);
              if (v500)
              {
                CFRelease(v500);
                *(DerivedStorage + 280) = 0;
              }

              *(DerivedStorage + 288) = HIDWORD(v708);
            }

            if (HIDWORD(v695))
            {
              if (v224)
              {
                v545 = v793;
                if (v224[2].flags)
                {
                  v545 = &v224[2];
                }
              }

              else
              {
                v545 = v793;
              }

              *v898 = *v545;
              v898[2] = v545[2];
              if (v872[0])
              {
                MediaSegmentSpecifiers = *(*(DerivedStorage + 424) + 56);
                if (MediaSegmentSpecifiers && (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(MediaSegmentSpecifiers)) != 0 && (MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers), MediaSegmentSpecifiers > 0))
                {
                  v555 = 0;
                }

                else
                {
                  v555 = *(v256 + 16 * *(DerivedStorage + 8600));
                }

                *&cf.value = OUTLINED_FUNCTION_364_1(MediaSegmentSpecifiers, v287, *(DerivedStorage + 424), v555, v290, v291, v292, v293, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851);
                cf.epoch = *(v556 + 16);
                OUTLINED_FUNCTION_363_1(v898);
                v557 = OUTLINED_FUNCTION_163_1();
                v67 = segPumpSetAlternateForStream(v557, v558, v559, v560, v872[0], v735, v742, SHIDWORD(v799), 1, &cf, &rhs);
              }

              else
              {
                OUTLINED_FUNCTION_191_1();
                v546 = OUTLINED_FUNCTION_177();
                v67 = segPumpStopStream(v546, v547, 0);
                OUTLINED_FUNCTION_26_1();
                segPumpStreamUpdateIndexFile(v548, v549, v550, v551, v552, v553);
              }

              if (v67)
              {
                goto LABEL_443;
              }
            }

            if (DWORD2(v695))
            {
              v501 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              HIBYTE(v883) = 0;
              v38 = 392;
              LODWORD(v41) = 1;
              *&v294 = 136316162;
              *v865 = v294;
              while (1)
              {
                v502 = *(DerivedStorage + v38);
                v503 = *(v502 + 64);
                if (v503)
                {
                  FigStreamingCacheMediaStreamIsComplete(*(DerivedStorage + 296), v503, type);
                  FigStreamingCacheMediaStreamIsWritableToDisk(*(DerivedStorage + 296), *(v502 + 64), &v883 + 7);
                  if (type[0] || !HIBYTE(v883))
                  {
                    *v695 &= ~(1 << v501);
                    if (dword_1EAF16A30)
                    {
                      LODWORD(rhs.value) = 0;
                      BYTE6(v883) = 0;
                      v504 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v505 = os_log_type_enabled(v504, OS_LOG_TYPE_DEFAULT);
                      if (OUTLINED_FUNCTION_16_1(v505))
                      {
                        OUTLINED_FUNCTION_76_1();
                        LODWORD(cf.value) = v865[0];
                        OUTLINED_FUNCTION_248_1();
                        HIWORD(cf.epoch) = 2048;
                        *v889 = v506;
                        *&v889[8] = 1024;
                        *&v889[10] = v501;
                        *&v889[14] = 2080;
                        *&v889[16] = v507;
                        OUTLINED_FUNCTION_23_1();
                        OUTLINED_FUNCTION_24_1();
                        OUTLINED_FUNCTION_190_0();
                        _os_log_send_and_compose_impl(v508, v509, v510, v511, v512, v513, v514, "<SEGPUMP> %s: %{public}@:%ld: %d forgoing delivery due to cache %s");
                      }

                      OUTLINED_FUNCTION_9_1();
                      OUTLINED_FUNCTION_238_0(v515, v516, v517, v518, v519);
                    }

                    v520 = OUTLINED_FUNCTION_517();
                    v522 = segPumpStopStream(v520, v521, 0);
                    if (v522)
                    {
                      v67 = v522;
                      OUTLINED_FUNCTION_303_1();
LABEL_442:
                      i = v831;
LABEL_443:
                      v529 = v857;
                      if (!v857)
                      {
LABEL_453:
                        if (a26)
                        {
                          v542 = 0;
                          v543 = DerivedStorage + 400;
                          v146 = v807;
                          do
                          {
                            if (!v41 || (v544 = *v543, !*(*v543 + 16)))
                            {
                              v544 = *(v543 - 8);
                            }

                            *(a26 + v542) = *(v544 + 72);
                            v542 += 4;
                            v543 += 16;
                          }

                          while (v542 != 12);
                        }

                        else
                        {
                          v146 = v807;
                        }

                        v145 = v843;
                        v144 = v872[0];
                        goto LABEL_462;
                      }

                      goto LABEL_450;
                    }

                    v523 = *(v502 + 16);
                    if (v523)
                    {
                      CFRelease(v523);
                      *(v502 + 16) = 0;
                    }
                  }
                }

                ++v501;
                v38 += 16;
                if (v501 == 3)
                {
                  OUTLINED_FUNCTION_303_1();
                  v256 = v835;
                  break;
                }
              }
            }

            if (!*(DerivedStorage + 9760))
            {
              v67 = 0;
              goto LABEL_442;
            }

            for (j = 0; j != 3; ++j)
            {
              if (*(*v256 + 16))
              {
                v525 = *(*v256 + 56);
                if (!v525)
                {
                  break;
                }

                v526 = FigMediaPlaylistGetMediaSegmentSpecifiers(v525);
                if (!v526 || CFArrayGetCount(v526) < 1)
                {
                  break;
                }
              }

              v256 += 16;
            }

            v527 = *MEMORY[0x1E695E4D0];
            v528 = *MEMORY[0x1E695E4C0];
            v529 = v857;
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v530 = OUTLINED_FUNCTION_198_0();
              v532 = v531(v530);
              if (!v532)
              {
                v533 = *(DerivedStorage + 9760);
                if (*(DerivedStorage + 8600) || !*(*v762 + 16))
                {
                  v527 = v528;
                }

                v534 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                i = v831;
                if (v534)
                {
                  v67 = v534(v533, @"AfmfpbProperty_HasUnmuxedVideo", v527);
                  if (!v857)
                  {
                    goto LABEL_453;
                  }
                }

                else
                {
                  v67 = 4294954514;
                  if (!v857)
                  {
                    goto LABEL_453;
                  }
                }

                goto LABEL_450;
              }

              v67 = v532;
            }

            else
            {
              v67 = 4294954514;
            }

            i = v831;
            if (!v857)
            {
              goto LABEL_453;
            }

LABEL_450:
            valid = MoveAlternateFromValidList(v38, v529, v768, 0);
            if (!valid)
            {
              segPumpUpdateAlternateSelectionBossNetworkErrorFilter(DerivedStorage, v768, v536, v537, v538, v539, v540, v541, v669, v675, v683, SBYTE2(v683), BYTE3(v683), SHIDWORD(v683), v688, v695, v708, SWORD2(v708), SHIWORD(v708), URLForCacheLookup, StableStreamIdentifier, v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851, v857, v861, v865[0], v865[1], v872[0], v872[1], v879, v883);
            }

            v67 = valid;
            goto LABEL_453;
          }

          if (IsFullyCached)
          {
            v255 = 1;
          }

          else
          {
            v255 = v222;
          }

          if (((v255 | HIDWORD(v847) ^ 1 | v755 | v41 | HIDWORD(v748) | HIDWORD(v755)) & 1) == 0 || (v256 = v835, (v255 & 1) == 0) && (LODWORD(v865[0]) != 0) | v755 & 1)
          {
            v67 = 4294950461;
            goto LABEL_29;
          }

          if (v855)
          {
            goto LABEL_271;
          }

          v257 = 0;
          v258 = 0;
          v259 = 392;
          do
          {
            v260 = *(DerivedStorage + v259);
            if (*(v260 + 16) && *(v260 + 96) == 0.0)
            {
              break;
            }

            v257 = v258 > 1;
            v259 += 16;
            ++v258;
          }

          while (v258 != 3);
          if (v257)
          {
LABEL_271:
            LODWORD(v41) = HIDWORD(v839);
            if ((v799 & 0x100000000) == 0)
            {
              v898[0] = 0;
              OUTLINED_FUNCTION_278_0();
              if (*(v261 + 1185))
              {
                OUTLINED_FUNCTION_45_1();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v669, v675, v683);
LABEL_529:
                v67 = v331;
                goto LABEL_102;
              }

              OUTLINED_FUNCTION_265_0();
              segPumpGetSafeNetworkBandwidth(v262, v263, v264, v265);
              HIDWORD(v799) = v748 <= v774;
            }
          }

          else if (dword_1EAF16A30)
          {
            OUTLINED_FUNCTION_145_0();
            OUTLINED_FUNCTION_150_1();
            v266 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v274 = OUTLINED_FUNCTION_235_0(v266, v267, v268, v269, v270, v271, v272, v273, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851, v855, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
            if (OUTLINED_FUNCTION_109_0(v274))
            {
              if (DerivedStorage)
              {
                OUTLINED_FUNCTION_164_1();
              }

              LODWORD(v41) = HIDWORD(v839);
              LODWORD(cf.value) = 136315394;
              OUTLINED_FUNCTION_225_1();
              OUTLINED_FUNCTION_2_1();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl(v275, v276, v277, v278, v279, v280, v213, v281);
            }

            else
            {
              LODWORD(v41) = HIDWORD(v839);
            }

            OUTLINED_FUNCTION_21_1();
            HIDWORD(v799) = 1;
            OUTLINED_FUNCTION_42_1(v282, v283, v284, v285, v286);
            i = v831;
          }

          else
          {
            HIDWORD(v799) = 1;
            LODWORD(v41) = HIDWORD(v839);
          }

          OUTLINED_FUNCTION_400_1();
          if ((v295 & HIDWORD(v847)) != 1)
          {
            goto LABEL_295;
          }

          if (!v817[168])
          {
            goto LABEL_295;
          }

          OUTLINED_FUNCTION_278_0();
          if (*(v296 + 860))
          {
            goto LABEL_295;
          }

          FigGetUpTimeNanoseconds();
          OUTLINED_FUNCTION_278_0();
          v299 = *(DerivedStorage + 8);
          v300 = 1000000000 * v299;
          v301 = v299 > 0xA;
          v302 = 10000000000;
          if (v301)
          {
            v302 = v300;
          }

          if (v297 - *(v298 + 432) > v302)
          {
            v856 = *(DerivedStorage + 8328);
            if (*(v298 + 472))
            {
              OUTLINED_FUNCTION_145_0();
              OUTLINED_FUNCTION_150_1();
              v303 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_436_1(v303, v304, v305, v306, v307, v308, v309, v310, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851, v856, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
              OUTLINED_FUNCTION_40();
              if (i)
              {
                OUTLINED_FUNCTION_76_1();
                if (v152)
                {
                  v312 = &stru_1F0B1AFB8;
                }

                else
                {
                  v312 = v311;
                }

                FigAlternateGetPlaylistAlternateURL(*(v857 + 8));
                LODWORD(cf.value) = 136315650;
                OUTLINED_FUNCTION_34_1();
                *(&cf.flags + 2) = v312;
                HIWORD(cf.epoch) = v313;
                *v889 = v314;
                OUTLINED_FUNCTION_23_1();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl(v315, v316, v317, v318, v319, v320, v213, v321);
              }

              i = v831;
              OUTLINED_FUNCTION_21_1();
              LODWORD(v768) = 1;
              *&v294 = OUTLINED_FUNCTION_108_1(v469, 0, v470, v471, v472);
            }

            else
            {
              OUTLINED_FUNCTION_145_0();
              OUTLINED_FUNCTION_150_1();
              v440 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_436_1(v440, v441, v442, v443, v444, v445, v446, v447, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851, v856, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
              OUTLINED_FUNCTION_40();
              if (i)
              {
                OUTLINED_FUNCTION_76_1();
                if (v152)
                {
                  v449 = &stru_1F0B1AFB8;
                }

                else
                {
                  v449 = v448;
                }

                FigAlternateGetPlaylistAlternateURL(*(v857 + 8));
                LODWORD(cf.value) = 136315650;
                OUTLINED_FUNCTION_34_1();
                *(&cf.flags + 2) = v449;
                HIWORD(cf.epoch) = v450;
                *v889 = v451;
                OUTLINED_FUNCTION_23_1();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl(v452, v453, v454, v455, v456, v457, v213, v458);
              }

              i = v831;
              OUTLINED_FUNCTION_16();
              *&v294 = OUTLINED_FUNCTION_414(v473, v474, v475, v476, v477);
              LODWORD(v768) = 0;
            }

            v224 = v812;
            if ((v41 & 1) == 0)
            {
              goto LABEL_379;
            }
          }

          else
          {
LABEL_295:
            LODWORD(v768) = 0;
            v857 = 0;
            if ((v41 & 1) == 0)
            {
LABEL_379:
              for (k = 0; k != 3; ++k)
              {
                v479 = *(v256 + 16 * k);
                if (*(v479 + 776) >= 1)
                {
                  v480 = 0;
                  do
                  {
                    v481 = OUTLINED_FUNCTION_266();
                    segPumpStreamCancelReadAheadAndResetDataAtIndex(v481, v482, 0);
                    ++v480;
                  }

                  while (v480 < *(v479 + 776));
                }
              }

              for (m = 392; m != 440; m += 16)
              {
                segPumpStreamCancelPreloadReadAndResetData(DerivedStorage, *(DerivedStorage + m));
              }

              for (n = 392; n != 440; n += 16)
              {
                segPumpStreamCancelPreloadMapReadAndResetData(DerivedStorage, *(DerivedStorage + n));
              }

              if (*(DerivedStorage + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 8))
              {
                OUTLINED_FUNCTION_305();
                v485();
              }

              v486 = *(DerivedStorage + 8432);
              if (v486)
              {
                CFRelease(v486);
                *(DerivedStorage + 8432) = 0;
              }

              v817[272] = 0;
              v817[312] = 0;
              v817[352] = 0;
              v487 = *(DerivedStorage + 8328);
              if (v487 && !v857 && !LODWORD(v865[0]) && !*(DerivedStorage + 184) && v748 > v774)
              {
                *(DerivedStorage + 8432) = CFRetain(*(v487 + 8));
              }

LABEL_297:
              v322 = *(DerivedStorage + 8336);
              TargetDuration = v861;
              *(DerivedStorage + 8336) = v861;
              if (v861)
              {
                TargetDuration = CFRetain(v861);
              }

              if (v322)
              {
                CFRelease(v322);
              }

              v324 = *(DerivedStorage + 9744);
              if (v324)
              {
                VTable = CMBaseObjectGetVTable();
                v326 = *(VTable + 8);
                TargetDuration = (VTable + 8);
                v327 = *(v326 + 56);
                if (v327)
                {
                  TargetDuration = v327(v324, @"AlternateFilterMonitorProperty_SelectedMedia", v861);
                }
              }

              if (LODWORD(v865[0]))
              {
                LODWORD(key) = (i != 0) & BYTE4(v774);
                if ((v254 & 1) == 0)
                {
                  v67 = 0;
                  v38 = v821;
                  goto LABEL_443;
                }

                if (!*(*v762 + 16) || (v328 = OUTLINED_FUNCTION_273_1(), v331 = segPumpStopStream(v328, v329, v330), !v331))
                {
                  v332 = v793;
                  if (!*(*(DerivedStorage + 424) + 16) || (v333 = OUTLINED_FUNCTION_273_1(), v331 = segPumpStopStream(v333, v334, v335), !v331))
                  {
                    segPumpClearStatistics(DerivedStorage);
                    segPumpUpdateCurrentAlternate(DerivedStorage, v38);
                    v817[704] = 1;
                    if ((v847 & 0x100000000) == 0)
                    {
                      v817[705] = 1;
                    }

                    *(*(DerivedStorage + 392) + 896) = *(*(DerivedStorage + 392) + 1064);
                    OUTLINED_FUNCTION_26_1();
                    segPumpStreamUpdateIndexFile(v336, v337, v338, v339, v340, @".");
                    OUTLINED_FUNCTION_26_1();
                    segPumpStreamUpdateIndexFile(v341, v342, v343, v344, v345, @".");
                    v352 = *(*(DerivedStorage + 392) + 56);
                    v38 = v821;
                    if (v352)
                    {
                      v352 = FigMediaPlaylistGetMediaSegmentSpecifiers(v352);
                      if (v352)
                      {
                        v352 = CFArrayGetCount(v352);
                        if (v352 >= 1)
                        {
                          v817[705] = 0;
                          v817[760] = 0;
                        }
                      }
                    }

                    v353 = OUTLINED_FUNCTION_364_1(v352, v346, *(DerivedStorage + 392), v347, v348, v349, v350, v351, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851);
                    OUTLINED_FUNCTION_178_1(v354, v353);
                    cf = *v332;
                    v676 = v355;
                    v356 = OUTLINED_FUNCTION_163_1();
                    v67 = OUTLINED_FUNCTION_446_0(v356, v357, v358, 0, v359, v360, v361, v362, 1, v676, &cf, v689, v696, v702, v709, v716, v723, v729, v736, v743, v749, v756, v763, v769, v775, v782, v788, v794, v800, v805);
                    ++*(*(DerivedStorage + 408) + 72);
                    ++*(*(DerivedStorage + 424) + 72);
                    goto LABEL_453;
                  }
                }

                goto LABEL_529;
              }

              if (v817[704])
              {
                v817[704] = 0;
              }

              if (v224)
              {
                if (*(v851 + 12))
                {
                  LODWORD(v294) = key;
                  v363 = vcnt_s8(*&v294);
                  v363.i16[0] = vaddlv_u8(v363);
                  if (v363.i32[0] >= 2u)
                  {
                    for (ii = 0; ii != 3; ++ii)
                    {
                      if ((key >> ii))
                      {
                        v365 = &v224[ii];
                        if (*(v365 + 12))
                        {
                          v366 = *(v256 + 16 * ii);
                          *v898 = *v851;
                          v898[2] = *(v851 + 16);
                          OUTLINED_FUNCTION_363_1(v365);
                          CMTimeAdd(&cf, v898, &rhs);
                          *v898 = cf;
                          *&v294 = CMTimeGetSeconds(v898);
                          TargetDuration = *(v366 + 56);
                          if (TargetDuration)
                          {
                            v367 = *&v294;
                            for (jj = 0; ; ++jj)
                            {
                              TargetDuration = FigMediaPlaylistGetMediaSegmentSpecifiers(TargetDuration);
                              if (TargetDuration)
                              {
                                TargetDuration = CFArrayGetCount(TargetDuration);
                              }

                              if (jj >= TargetDuration)
                              {
                                goto LABEL_333;
                              }

                              v369 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v366 + 56));
                              v370 = CFArrayGetValueAtIndex(v369, jj);
                              if (FigMediaSegmentSpecifierIsDiscontinuity(v370))
                              {
                                if (FigMediaSegmentSpecifierGetDiscontinuityDomain(v370) == *(v366 + 304))
                                {
                                  break;
                                }
                              }

                              TargetDuration = *(v366 + 56);
                            }

                            v378 = vabdd_f64(v367, *(segPumpGetMediaFilePrivateData(v370, v371, v372, v373, v374, v375, v376, v377) + 4));
                            TargetDuration = FigMediaPlaylistGetTargetDuration(*(v366 + 56));
                            v224 = v812;
                            if (v378 < (TargetDuration >> 1))
                            {
                              v224 = 0;
                              break;
                            }
                          }

                          else
                          {
LABEL_333:
                            v224 = v812;
                          }
                        }
                      }
                    }
                  }
                }
              }

              if ((v41 & 1) == 0)
              {
                segPumpClearStatistics(DerivedStorage);
                TargetDuration = segPumpUpdateCurrentAlternate(DerivedStorage, v38);
                *(DerivedStorage + 8600) = v708 != 0;
              }

              v379 = *v762;
              v380 = *(*v762 + 16);
              if (v708)
              {
                v38 = v821;
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_145_0();
                  OUTLINED_FUNCTION_150_1();
                  v381 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v389 = OUTLINED_FUNCTION_245_1(v381, v382, v383, v384, v385, v386, v387, v388, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851, v857, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
                  if (OUTLINED_FUNCTION_124_0(v389))
                  {
                    OUTLINED_FUNCTION_76_1();
                    LODWORD(cf.value) = 136315394;
                    OUTLINED_FUNCTION_225_1();
                    OUTLINED_FUNCTION_2_1();
                    OUTLINED_FUNCTION_44_0();
                    _os_log_send_and_compose_impl(v390, v391, v392, v393, v394, v395, v379, v396);
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_345_0(v403, v404, v405, v406, v407);
                }

                if (HIDWORD(v787))
                {
                  v459 = 408;
                  v460 = 392;
                  if (v380)
                  {
                    v460 = 408;
                  }

                  if (v41)
                  {
                    v459 = 416;
                  }

                  OUTLINED_FUNCTION_208_0(TargetDuration, v287, *(DerivedStorage + v459), *(DerivedStorage + v460), v290, v291, v292, v293, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851);
                  cf = *v793;
                  v678 = v461;
                  v671 = v462;
                  v463 = OUTLINED_FUNCTION_163_1();
                  v468 = segPumpSetAlternateForStream(v463, v464, v465, v466, v843, URLForCacheLookup, StableStreamIdentifier, v467, v671, v678, &cf);
                  if (v468)
                  {
                    v67 = v468;
                    goto LABEL_442;
                  }
                }

                i = v831;
                if (v41)
                {
                  goto LABEL_405;
                }

                ++*(*(DerivedStorage + 392) + 72);
                v408 = OUTLINED_FUNCTION_273_1();
                TargetDuration = segPumpStopStream(v408, v409, v410);
                if (!TargetDuration)
                {
                  OUTLINED_FUNCTION_26_1();
                  segPumpStreamUpdateIndexFile(v411, v412, v413, v414, v415, v416);
LABEL_405:
                  v817[35] = 0;
                  goto LABEL_406;
                }

LABEL_533:
                v67 = TargetDuration;
                goto LABEL_443;
              }

              v397 = *v256;
              v398 = *(*v256 + 16);
              v38 = v821;
              if (!HIDWORD(v787))
              {
                goto LABEL_351;
              }

              v399 = v793;
              if (v224)
              {
                v399 = v224 + 1;
                if ((v224[1].flags & 1) == 0)
                {
                  v399 = v793;
                }
              }

              v294 = *&v399->value;
              rhs = *v399;
              if (v380)
              {
                v400 = v379;
              }

              else
              {
                v400 = v397;
              }

              v401 = BYTE4(v774);
              if (v843)
              {
                OUTLINED_FUNCTION_208_0(TargetDuration, v287, v288, v289, v290, v291, v292, v293, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851);
                cf = rhs;
                v679 = v564;
                v672 = v565;
                OUTLINED_FUNCTION_100_0();
                TargetDuration = segPumpSetAlternateForStream(v566, v567, v568, v400, v843, URLForCacheLookup, StableStreamIdentifier, v569, v672, v679, &cf);
                i = v831;
                if (TargetDuration)
                {
                  goto LABEL_533;
                }

                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_367_1();
                  v577 = OUTLINED_FUNCTION_268_0(qword_1EAF16A28, v570, v571, v572, v573, v574, v575, v576, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851, v857, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, SWORD2(v883), SBYTE6(v883), SHIBYTE(v883), rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
                  v585 = OUTLINED_FUNCTION_236_0(v577, v578, v579, v580, v581, v582, v583, v584, v673, v680, v685, v691, v698, v704, v711, v718, v725, v731, v738, v745, v751, v758, v765, v771, v777, v784, v790, v796, v802, v809, v814, v819, v823, keyb, v833, v837, v841, v845, v849, v853, v859, v863, v867, v870, v874, v877, v881, v883, SWORD2(v883), SBYTE6(v883), HIBYTE(v883), rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, *type);
                  if (OUTLINED_FUNCTION_109_0(v585))
                  {
                    OUTLINED_FUNCTION_76_1();
                    LODWORD(cf.value) = 136315906;
                    OUTLINED_FUNCTION_35_1();
                    HIWORD(cf.epoch) = 1024;
                    *v889 = v586;
                    *&v889[4] = 1024;
                    *&v889[6] = v41;
                    OUTLINED_FUNCTION_23_1();
                    OUTLINED_FUNCTION_38();
                    _os_log_send_and_compose_impl(v587, v588, v589, v590, v591, v592, v398, v593);
                    OUTLINED_FUNCTION_402_1();
                  }

                  OUTLINED_FUNCTION_21_1();
                  v402 = 1;
                  OUTLINED_FUNCTION_42_1(v648, v649, v650, v651, v652);
                  v67 = 0;
                  goto LABEL_352;
                }

                v67 = 0;
                v402 = 1;
              }

              else
              {
                if (v41)
                {
LABEL_351:
                  v67 = 0;
                  v402 = 1;
LABEL_352:
                  i = v831;
                  goto LABEL_402;
                }

                i = v831;
                if ((v774 & 0x100000000) != 0)
                {
                  if (dword_1EAF16A30)
                  {
                    OUTLINED_FUNCTION_367_1();
                    v424 = OUTLINED_FUNCTION_268_0(qword_1EAF16A28, v417, v418, v419, v420, v421, v422, v423, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, 0, v847, v851, v857, v861, v398, v865[1], v872[0], v872[1], v879, v883, SWORD2(v883), SBYTE6(v883), SHIBYTE(v883), rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
                    v432 = OUTLINED_FUNCTION_236_0(v424, v425, v426, v427, v428, v429, v430, v431, v670, v677, v684, v690, v697, v703, v710, v717, v724, v730, v737, v744, v750, v757, v764, v770, v776, v783, v789, v795, v801, v808, v813, v818, v822, keya, v832, v836, v840, v844, v848, v852, v858, v862, v866, v869, v873, v876, v880, v883, SWORD2(v883), SBYTE6(v883), HIBYTE(v883), rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, *type);
                    if (OUTLINED_FUNCTION_109_0(v432))
                    {
                      OUTLINED_FUNCTION_76_1();
                      LODWORD(cf.value) = 136315394;
                      OUTLINED_FUNCTION_225_1();
                      OUTLINED_FUNCTION_2_1();
                      OUTLINED_FUNCTION_38();
                      _os_log_send_and_compose_impl(v433, v434, v435, v436, v437, v438, v398, v439);
                      OUTLINED_FUNCTION_402_1();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_524(v488, v489, v490, v491, v492);
                    i = v831;
                    v398 = v865[0];
                  }

                  v67 = 0;
                  OUTLINED_FUNCTION_191_1();
                }

                else
                {
                  if (dword_1EAF16A30)
                  {
                    OUTLINED_FUNCTION_367_1();
                    v646 = OUTLINED_FUNCTION_268_0(qword_1EAF16A28, v639, v640, v641, v642, v643, v644, v645, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, 0, v847, v851, v857, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, SWORD2(v883), SBYTE6(v883), SHIBYTE(v883), rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
                    v647 = os_log_type_enabled(v646, HIBYTE(v883));
                    if (OUTLINED_FUNCTION_109_0(v647))
                    {
                      OUTLINED_FUNCTION_76_1();
                      LODWORD(cf.value) = 136315650;
                      OUTLINED_FUNCTION_35_1();
                      HIWORD(cf.epoch) = 2048;
                      *v889 = v654;
                      OUTLINED_FUNCTION_23_1();
                      OUTLINED_FUNCTION_44_0();
                      _os_log_send_and_compose_impl(v655, v656, v657, v658, v659, v660, HIBYTE(v883), v661);
                      OUTLINED_FUNCTION_402_1();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_524(v662, v663, v664, v665, v666);
                    i = v831;
                  }

                  ++*(v379 + 72);
                  v667 = OUTLINED_FUNCTION_266();
                  v67 = segPumpStopStream(v667, v668, 0);
                }

                v402 = v401 ^ 1;
                OUTLINED_FUNCTION_26_1();
                segPumpStreamUpdateIndexFile(v493, v494, v495, v496, v497, v498);
              }

LABEL_402:
              if (HIDWORD(v774))
              {
                if (!v224 || (v561 = v224, (v224->flags & 1) == 0))
                {
                  v561 = v793;
                }

                v562 = *v561;
                rhs.epoch = *(v561 + 2);
                *&rhs.value = v562;
                if (HIDWORD(v799))
                {
                  v563 = v817[28] == 0;
                }

                else
                {
                  v563 = 1;
                }

                v594 = v835;
                if (!v398)
                {
                  v594 = v762;
                }

                v595 = *v594;
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_367_1();
                  v603 = OUTLINED_FUNCTION_268_0(qword_1EAF16A28, v596, v597, v598, v599, v600, v601, v602, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851, v857, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, SWORD2(v883), SBYTE6(v883), SHIBYTE(v883), rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
                  v611 = OUTLINED_FUNCTION_236_0(v603, v604, v605, v606, v607, v608, v609, v610, v674, v681, v686, v692, v699, v705, v712, v719, v726, v732, v739, v746, v752, v759, v766, v772, v778, v785, v791, v797, v803, v810, v815, v820, v824, keyc, v834, v838, v842, v846, v850, v854, v860, v864, v868, v871, v875, v878, v882, v883, SWORD2(v883), SBYTE6(v883), HIBYTE(v883), rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, *type);
                  if (OUTLINED_FUNCTION_109_0(v611))
                  {
                    OUTLINED_FUNCTION_76_1();
                    LODWORD(cf.value) = 136315906;
                    OUTLINED_FUNCTION_35_1();
                    HIWORD(cf.epoch) = 1024;
                    *v889 = v612;
                    *&v889[4] = 1024;
                    *&v889[6] = v41;
                    OUTLINED_FUNCTION_23_1();
                    OUTLINED_FUNCTION_38();
                    _os_log_send_and_compose_impl(v613, v614, v615, v616, v617, v618, v398, v619);
                    OUTLINED_FUNCTION_402_1();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_524(v620, v621, v622, v623, v624);
                  i = v831;
                }

                v625 = 392;
                if (v41)
                {
                  v625 = 400;
                }

                v626 = OUTLINED_FUNCTION_364_1(TargetDuration, v287, *(DerivedStorage + v625), v289, v290, v291, v292, v293, v669, v675, v683, v688, v695, *(&v695 + 1), v708, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v735, v742, v748, v755, v762, v768, v774, v781, v787, v793, v799, v807, v812, v817, v821, key, v831, v835, v839, v843, v847, v851);
                OUTLINED_FUNCTION_178_1(v627, v626);
                cf = rhs;
                v682 = v628;
                v629 = OUTLINED_FUNCTION_163_1();
                v67 = OUTLINED_FUNCTION_446_0(v629, v630, v631, v595, v632, v633, v634, v635, v563, v682, &cf, v693, v700, v706, v713, v720, v727, v733, v740, v747, v753, v760, v767, v773, v779, v786, v792, v798, v804, v806);
                if (v67)
                {
                  goto LABEL_443;
                }

                v817[28] = 1;
                if (v402)
                {
                  goto LABEL_404;
                }
              }

              else if (v402)
              {
                goto LABEL_404;
              }

              v636 = OUTLINED_FUNCTION_273_1();
              v67 = segPumpStopStream(v636, v637, v638);
LABEL_404:
              v256 = v835;
              if (v67)
              {
                goto LABEL_443;
              }

              goto LABEL_405;
            }
          }

          *(DerivedStorage + 7880) = v38;
          goto LABEL_297;
        }

        HIDWORD(v748) = 1;
      }

      else
      {
        HIDWORD(v748) = 1;
        LODWORD(v755) = 1;
      }

      LODWORD(v41) = 1;
      goto LABEL_238;
    }

    v65 = DerivedStorage + 392;
    if (*(DerivedStorage + 8328))
    {
      OUTLINED_FUNCTION_176_0();
      v67 = 0;
      goto LABEL_29;
    }

    v69 = *(DerivedStorage + 296);
    LODWORD(v41) = HIDWORD(v839);
    if (!v69)
    {
      goto LABEL_44;
    }

    v898[0] = 0;
    *type = 0;
    cf.value = 0;
    rhs.value = 0;
    LongestContiguousMediaStreamInCacheAtTime = FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime(v69, 0, &rhs.value, v898, &cf, type, 0.0);
    v71 = v898[0];
    if (LongestContiguousMediaStreamInCacheAtTime)
    {
      AlternateEntryFromURLForCacheLookup = 0;
      if (v898[0])
      {
LABEL_39:
        CFRelease(v71);
      }
    }

    else
    {
      if (v898[0])
      {
        AlternateEntryFromURLForCacheLookup = segPumpGetAlternateEntryFromURLForCacheLookup(DerivedStorage, v898[0], cf.value);
        v71 = v898[0];
        if (!v898[0])
        {
          goto LABEL_41;
        }

        goto LABEL_39;
      }

      AlternateEntryFromURLForCacheLookup = 0;
    }

LABEL_41:
    if (cf.value)
    {
      CFRelease(cf.value);
    }

    if (AlternateEntryFromURLForCacheLookup)
    {
LABEL_85:
      v68 = AlternateEntryFromURLForCacheLookup[1];
      HasAudio = FigAlternateHasAudio(v68);
      if (FigAlternateHasVideo(AlternateEntryFromURLForCacheLookup[1]))
      {
        v152 = 1;
      }

      else
      {
        v152 = HasAudio == 0;
      }

      v153 = !v152;
      HIDWORD(v847) = v153;
      v38 = AlternateEntryFromURLForCacheLookup;
      goto LABEL_92;
    }

LABEL_44:
    AlternateEntryFromURLForCacheLookup = *v38;
    if (*v38)
    {
      do
      {
        if (!FigAlternateIsIFrameOnly(AlternateEntryFromURLForCacheLookup[1]) && FigAlternateHasValidCodecs(AlternateEntryFromURLForCacheLookup[1]))
        {
          goto LABEL_85;
        }

        AlternateEntryFromURLForCacheLookup = *AlternateEntryFromURLForCacheLookup;
      }

      while (AlternateEntryFromURLForCacheLookup);
    }

    AlternateEntryFromURLForCacheLookup = (DerivedStorage + 8280);
    while (1)
    {
      AlternateEntryFromURLForCacheLookup = *AlternateEntryFromURLForCacheLookup;
      if (!AlternateEntryFromURLForCacheLookup)
      {
        break;
      }

      if (FigAlternateHasValidCodecs(AlternateEntryFromURLForCacheLookup[1]))
      {
        OUTLINED_FUNCTION_145_0();
        OUTLINED_FUNCTION_150_1();
        v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v81 = OUTLINED_FUNCTION_235_0(v73, v74, v75, v76, v77, v78, v79, v80, v669, v675, v683, v687, v694, v701, v707, v714, v721, v728, v734, v741, v748, v754, v761, v768, v774, v780, v787, v793, v799, a25, v811, v816, v821, key, v829, v835, v839, v843, v847, v851, v855, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
        if (OUTLINED_FUNCTION_109_0(v81))
        {
          if (DerivedStorage)
          {
            OUTLINED_FUNCTION_164_1();
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

    AlternateEntryFromURLForCacheLookup = (DerivedStorage + 8280);
    do
    {
      AlternateEntryFromURLForCacheLookup = *AlternateEntryFromURLForCacheLookup;
      if (!AlternateEntryFromURLForCacheLookup)
      {
        OUTLINED_FUNCTION_145_0();
        OUTLINED_FUNCTION_150_1();
        v103 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v111 = OUTLINED_FUNCTION_245_1(v103, v104, v105, v106, v107, v108, v109, v110, v669, v675, v683, v687, v694, v701, v707, v714, v721, v728, v734, v741, v748, v754, v761, v768, v774, v780, v787, v793, v799, a25, v811, v816, v821, key, v829, v835, v839, v843, v847, v851, v855, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
        if (OUTLINED_FUNCTION_124_0(v111))
        {
          if (DerivedStorage)
          {
            OUTLINED_FUNCTION_164_1();
          }

          LODWORD(cf.value) = 136315394;
          *(&cf.value + 4) = "segPumpGetFirstMatchingAlternateEntry";
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl(v112, v113, v114, v115, v116, v117, v44, v118);
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_345_0(v147, v148, v149, v150, v151);
        AlternateEntryFromURLForCacheLookup = *v38;
        goto LABEL_85;
      }
    }

    while (FigAlternateIsIFrameOnly(AlternateEntryFromURLForCacheLookup[1]));
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_150_1();
    v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v90 = OUTLINED_FUNCTION_235_0(v82, v83, v84, v85, v86, v87, v88, v89, v669, v675, v683, v687, v694, v701, v707, v714, v721, v728, v734, v741, v748, v754, v761, v768, v774, v780, v787, v793, v799, a25, v811, v816, v821, key, v829, v835, v839, v843, v847, v851, v855, v861, v865[0], v865[1], v872[0], v872[1], v879, v883, rhs.value, *&rhs.timescale, rhs.epoch, v885, v886, type[0]);
    if (OUTLINED_FUNCTION_109_0(v90))
    {
      if (DerivedStorage)
      {
        OUTLINED_FUNCTION_164_1();
      }

LABEL_61:
      LODWORD(cf.value) = 136315394;
      *(&cf.value + 4) = "segPumpGetFirstMatchingAlternateEntry";
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v91, v92, v93, v94, v95, v96, v45, v97);
    }

LABEL_62:
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524(v98, v99, v100, v101, v102);
    goto LABEL_85;
  }

  for (kk = 0; kk != 48; kk += 16)
  {
    v120 = *(DerivedStorage + kk + 400);
    if (*(v120 + 1208))
    {
      nw_activity_complete_with_reason();
      v121 = *(v120 + 1208);
      if (v121)
      {
        CFRelease(v121);
        *(v120 + 1208) = 0;
      }
    }

    if (*(v120 + 16))
    {
      v122 = DerivedStorage + kk;
      segPumpStopConcurrentStream();
      *(v120 + 864) = 256;
      v123 = *(DerivedStorage + kk + 392);
      v124 = *(DerivedStorage + kk + 400);
      *(v122 + 392) = v124;
      *(v122 + 400) = v123;
      if (!*(v124 + 1192))
      {
        v125 = *(v123 + 1192);
        if (v125)
        {
          *(v124 + 1192) = v125;
          *(*(v122 + 400) + 1192) = 0;
        }
      }

      if (*(v120 + 256) && !*(*(v120 + 696) + 8))
      {
        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_145_0();
          OUTLINED_FUNCTION_150_1();
          v126 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v127 = os_log_type_enabled(v126, type[0]);
          if (OUTLINED_FUNCTION_28_1(v127))
          {
            OUTLINED_FUNCTION_76_1();
            LODWORD(cf.value) = 136315906;
            OUTLINED_FUNCTION_35_1();
            HIWORD(cf.epoch) = 2048;
            *v889 = v128;
            *&v889[8] = 2048;
            *&v889[10] = v821;
            OUTLINED_FUNCTION_23_1();
            OUTLINED_FUNCTION_24_1();
            _os_log_send_and_compose_impl(v129, v130, v131, v132, &dword_1962D5000, v126, type[0], "<SEGPUMP> %s: %{public}@:%ld: %p: recovering from trial delivery interruption!");
          }

          OUTLINED_FUNCTION_9_1();
          OUTLINED_FUNCTION_417(v133, v134, v135, v136, v137);
        }

        OUTLINED_FUNCTION_166_0();
        OUTLINED_FUNCTION_320_1();
        segPumpStreamProceedAfterMediaAndKeyArrival(v138, v139, v140, v141, v142, v143);
      }
    }
  }

  segPumpClearStatistics(DerivedStorage);
  segPumpUpdateCurrentAlternate(DerivedStorage, *(DerivedStorage + 7880));
  LODWORD(key) = 0;
  v144 = 0;
  v145 = 0;
  i = 0;
  v67 = 0;
  *(DerivedStorage + 8600) = *(*(DerivedStorage + 392) + 16) == 0;
  *(DerivedStorage + 7880) = 0;
  v38 = v821;
  v146 = a25;
LABEL_462:
  if (v146)
  {
    *v146 = key;
  }

  if (v144)
  {
    CFRelease(v144);
  }

  if (v145)
  {
    CFRelease(v145);
  }

  if (i)
  {
    CFRelease(i);
  }

  if (v886)
  {
    CFRelease(v886);
  }

  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v38, v67);
  OUTLINED_FUNCTION_191();
}

uint64_t segPumpGetTimeRangeForDate(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4)
{
  OUTLINED_FUNCTION_113_1();
  CMBaseObjectGetDerivedStorage();
  v6 = OUTLINED_FUNCTION_188();

  return segPumpGetTimeRangeForDateWithSegmentOffset(v6, v7, v8, v4, a4, 0);
}

uint64_t segPumpGetEstimatedDateForTime(const void *a1, uint64_t *a2, CFDateRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v7, v8);
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v10 = *(*(DerivedStorage + 392 + 16 * *(DerivedStorage + 8600)) + 56);
    if (v10 && (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v10)) != 0 && CFArrayGetCount(MediaSegmentSpecifiers) >= 1 && !*(DerivedStorage + 8218))
    {
      Current = CFAbsoluteTimeGetCurrent();
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v16 = *(DerivedStorage + 392 + 16 * *(DerivedStorage + 8600));
      v17 = Current + (UpTimeNanoseconds - *(v16 + 1064)) / -1000000000.0 - *(v16 + 96) - *(v16 + 88);
      v18 = OUTLINED_FUNCTION_351_0(a2[2], *a2, a2[1], v20);
      v19 = CFDateCreate(*(DerivedStorage + 56), v18 + v17);
      v12 = 0;
      *a3 = v19;
    }

    else
    {
      v12 = 4294954513;
    }
  }

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v12);
}

void segPumpLikelyToKeepUp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29)
{
  OUTLINED_FUNCTION_813();
  v30 = v29;
  v239 = v31;
  v240 = v32;
  v236 = v33;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v262 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v251 = 0.0;
  v252 = 0.0;
  v43 = DerivedStorage + 0x2000;
  v249 = 0.0;
  v250 = 0.0;
  v248 = 0.0;
  segPumpAPILockAndEnsureAPIStatus(v41, 0);
  v44 = 0.0;
  HIDWORD(v238) = v45;
  if (v45)
  {
    goto LABEL_169;
  }

  if (*(DerivedStorage + 8896))
  {
    v125 = 1;
    goto LABEL_171;
  }

  *time = *v39;
  *&time[16] = *(v39 + 16);
  Seconds = CMTimeGetSeconds(time);
  v261 = 0;
  v259 = 0u;
  v260 = 0u;
  v258 = 0u;
  memset(time, 0, sizeof(time));
  segPumpMakeNetworkPrediction(DerivedStorage, time);
  if (v47)
  {
LABEL_169:
    v125 = 0;
LABEL_171:
    v62 = INFINITY;
    goto LABEL_172;
  }

  v237 = v30;
  v48 = DerivedStorage + 392;
  v49 = *time;
  segPumpGetRequiredBandwidthForCurrentStreamingAlternate(DerivedStorage);
  StartupRequirements = segPumpGetStartupRequirements(DerivedStorage, *(DerivedStorage + 8), &v249, &v248, &v252, &v251, &v250, v50);
  if (*(DerivedStorage + 337))
  {
    v60 = &v250;
  }

  else
  {
    v60 = &v252;
  }

  v61 = 0.0;
  if (*v60 > 0.0)
  {
    v61 = Seconds / *v60;
  }

  v44 = fmaxf(v61, 0.0);
  if (*(DerivedStorage + 8218))
  {
    v62 = INFINITY;
  }

  else
  {
    v235 = v41;
    v77 = 0;
    v78 = 0;
    v79 = 1;
    v62 = INFINITY;
    *&v59 = 136316418;
    v233 = v59;
    do
    {
      v80 = v79;
      v81 = *(v48 + 16 * v77);
      if (*(v81 + 16))
      {
        if ((v35 >> v77) & 1) != 0 && (*(v37 + 12))
        {
          v82 = *(v81 + 88);
          v83 = *(v81 + 96);
          if (OUTLINED_FUNCTION_72_1(StartupRequirements, v52, v53, v54, v55, v56, v57, v58, v229, v230, v231, v232, v233, *(&v233 + 1), v234, v235, v236, v237, v238, v239, v240, v242, v244, *&v248, *&v249, *&v250, *&v251, *&v252, *v253, *&v253[8], *&v253[16], *v254, *&v254[8], *&v254[16], *&v254[24], *&v254[32], *&v255, v256, *time) > v82 && !*(DerivedStorage + 337))
          {
            v84 = v82 + v83;
            LiveBoundary = segPumpGetLiveBoundary(DerivedStorage, *(v81 + 56));
            v94 = v84 - OUTLINED_FUNCTION_72_1(v86, v87, v88, v89, v90, v91, v92, v93, v229, v230, v231, v232, v233, *(&v233 + 1), v234, v235, v236, v237, v238, v239, v240, v242, v244, *&v248, *&v249, *&v250, *&v251, *&v252, *v253, *&v253[8], *&v253[16], *v254, *&v254[8], *&v254[16], *&v254[24], *&v254[32], *&v255, v256, *time);
            if (LiveBoundary >= v94)
            {
              if (*(DerivedStorage + 8160) >= 2)
              {
                if (*(DerivedStorage + 8))
                {
                  v95 = v94 / (LiveBoundary + 0.01);
                  if (v62 >= v95)
                  {
                    v62 = v94 / (LiveBoundary + 0.01);
                  }
                }
              }

              if (dword_1EAF16A30 < 2)
              {
                v78 = 1;
              }

              else
              {
                OUTLINED_FUNCTION_399_0();
                v232 = OUTLINED_FUNCTION_263_1(qword_1EAF16A28, v96, v97, v98, v99, v100, v101, v102, v229, v230, v231, v232, v233, *(&v233 + 1), v234, v235, v236, v237, v238, v239, v240, v242, v244, SBYTE2(v244), SBYTE3(v244), SBYTE4(v244));
                HIDWORD(v231) = BYTE3(v244);
                if (os_log_type_enabled(v232, BYTE3(v244)))
                {
                  v103 = HIDWORD(v244);
                }

                else
                {
                  v103 = HIDWORD(v244) & 0xFFFFFFFE;
                }

                if (v103)
                {
                  OUTLINED_FUNCTION_205_0();
                  if (v113)
                  {
                    v114 = &stru_1F0B1AFB8;
                  }

                  else
                  {
                    v114 = v112;
                  }

                  v115 = OUTLINED_FUNCTION_72_1(v104, v105, v106, v107, v108, v109, v110, v111, v229, v230, v231, v232, v233, *(&v233 + 1), v234, v235, v236, v237, v238, v239, v240, v242, v244, *&v248, *&v249, *&v250, *&v251, *&v252, *v253, *&v253[8], *&v253[16], *v254, *&v254[8], *&v254[16], *&v254[24], *&v254[32], *&v255, v256, *time);
                  *v253 = v233;
                  *&v253[4] = "segPumpLikelyToKeepUp";
                  *&v253[12] = 2114;
                  *&v253[14] = v114;
                  *&v253[22] = 1024;
                  *v254 = v77;
                  *&v254[4] = 2048;
                  *&v254[6] = v115;
                  *&v254[14] = 2048;
                  *&v254[16] = v94;
                  *&v254[24] = 2048;
                  *&v254[26] = v84;
                  OUTLINED_FUNCTION_47_0();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v116, v117, v118, v119, &dword_1962D5000, v232, HIDWORD(v231), "<SEGPUMP> %s: %{public}@: LIVE %d %g starting at %1.5gs from end of live playlist at %f. Stall danger.)");
                }

                OUTLINED_FUNCTION_109();
                v78 = 1;
                OUTLINED_FUNCTION_42_1(v120, v121, v122, v123, v124);
              }
            }
          }
        }
      }

      v79 = 0;
      v77 = 1;
    }

    while ((v80 & 1) != 0);
    if (v78)
    {
      v125 = 0;
      v41 = v235;
LABEL_70:
      v126 = v240;
      goto LABEL_109;
    }

    v41 = v235;
  }

  v63 = *(DerivedStorage + 8240);
  if (v63 != 0.0 && Seconds >= v63)
  {
LABEL_32:
    if (*(DerivedStorage + 337))
    {
      v71 = Seconds < v250;
    }

    else
    {
      v71 = 1;
    }

    v243 = DerivedStorage + 0x2000;
    if (!v71 && (*(DerivedStorage + 8) < 0x10u || v249 <= v49))
    {
      v73 = 5;
LABEL_72:
      v76 = 0;
      *(DerivedStorage + 8848) = v73;
LABEL_73:
      v75 = 1;
      goto LABEL_86;
    }

    v74 = v252;
    if (Seconds >= v252)
    {
      v73 = 2;
      goto LABEL_72;
    }

    if (Seconds >= v251)
    {
      if (v248 <= v49)
      {
        *(DerivedStorage + 8848) = 3;
        if (*(DerivedStorage + 8896) || *(DerivedStorage + 8600))
        {
          v76 = 0;
          goto LABEL_73;
        }

        v76 = 0;
        v75 = 1;
        if ((v35 & 1) == 0 || *(*v48 + 752) < 2)
        {
          goto LABEL_86;
        }

        v127 = Seconds;
        if (v236)
        {
          *time = *v236;
          *&time[16] = *(v236 + 16);
          v127 = CMTimeGetSeconds(time);
          v74 = v252;
        }

        if (v127 >= v74 || (v128 = *v48, (v129 = *(*v48 + 696)) == 0) || (StartupRequirements = *(v128 + 256)) == 0 || StartupRequirements != *(v129 + 8) || (TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(StartupRequirements), *(v128 + 752) < 1))
        {
          v76 = 0;
          goto LABEL_86;
        }

        v225 = (v128 + 696);
        v226 = v127 / TimeInSeconds;
        v76 = 0;
        while (1)
        {
          v227 = *v225;
          if (*v225)
          {
            v228 = *(v227 + 256);
            if (!v228 || *(v227 + 224) / v228 < v226)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_309_1();
          if (v113)
          {
            goto LABEL_86;
          }
        }
      }

      v75 = 0;
      v76 = 1;
LABEL_86:
      if (dword_1EAF16A30 >= 2)
      {
        OUTLINED_FUNCTION_399_0();
        v137 = OUTLINED_FUNCTION_263_1(qword_1EAF16A28, v130, v131, v132, v133, v134, v135, v136, v229, v230, v231, v232, v233, *(&v233 + 1), v234, v235, v236, v237, v238, v239, v240, v243, v244, SBYTE2(v244), SBYTE3(v244), SBYTE4(v244));
        os_log_type_enabled(v137, BYTE3(v244));
        OUTLINED_FUNCTION_233();
        if (v113)
        {
          v139 = v138;
        }

        else
        {
          v139 = HIDWORD(v244);
        }

        if (v139)
        {
          if (DerivedStorage)
          {
            OUTLINED_FUNCTION_393_1();
          }

          *v253 = 136316930;
          *&v253[4] = "segPumpLikelyToKeepUp";
          *&v253[12] = 2114;
          OUTLINED_FUNCTION_68_0();
          *v254 = Seconds;
          *&v254[8] = v140;
          *&v254[10] = v141;
          *&v254[18] = v140;
          *&v254[20] = v142;
          *&v254[28] = v140;
          *&v254[30] = v143;
          *&v254[38] = v140;
          v255 = v145 / v144;
          LOWORD(v256) = 1024;
          *(&v256 + 2) = v75;
          OUTLINED_FUNCTION_47_0();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v146, v147, v148, v149, v150, v137, BYTE3(v244), v151);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467(v152, v153, v154, v155, v156);
      }

      if (!*(v243 + 26))
      {
        v157 = v41;
        for (i = 392; i != 440; i += 16)
        {
          v159 = *(DerivedStorage + i);
          if (*(v159 + 16))
          {
            v160 = *(v159 + 88);
            v161 = *(v159 + 96);
            v162 = OUTLINED_FUNCTION_72_1(StartupRequirements, v52, v53, v54, v55, v56, v57, v58, v229, v230, v231, v232, v233, *(&v233 + 1), v234, v235, v236, v237, v238, v239, v240, v243, v244, *&v248, *&v249, *&v250, *&v251, *&v252, *v253, *&v253[8], *&v253[16], *v254, *&v254[8], *&v254[16], *&v254[24], *&v254[32], *&v255, v256, *time);
            v163 = segPumpGetLiveBoundary(DerivedStorage, *(v159 + 56));
            v164 = *(DerivedStorage + 16);
            if (v164 <= 0.0)
            {
              LODWORD(v164) = *(DerivedStorage + 8);
              v164 = *&v164;
            }

            if (v76 & 1) == 0 && (*(v37 + 12))
            {
              v165 = v160 + v161 - v162;
              if (v165 <= v163 - v164 && *(v159 + 868) == 1)
              {
                AllocatorForMedia = FigGetAllocatorForMedia();
                v230 = *(DerivedStorage + 8);
                v167 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"Warning: restarting %fs from end of live playlist; target duration %ds - stall danger", *&v165);
                v168 = OUTLINED_FUNCTION_313_1();
                segPumpAppendErrorLogEntry(v168, v169, v170, -16832, @"CoreMediaErrorDomain", v167, 0, 1, 0, 3);
                if (v167)
                {
                  CFRelease(v167);
                }
              }
            }
          }
        }

        v41 = v157;
      }

      v125 = v75;
      v126 = v240;
      v43 = v243;
      goto LABEL_109;
    }

    v125 = 0;
    v30 = v237;
LABEL_172:
    v126 = v240;
    if (v240)
    {
      goto LABEL_114;
    }

    goto LABEL_115;
  }

  v65 = 0;
  v66 = 1;
  while (1)
  {
    v67 = v66;
    v68 = *(v48 + 16 * v65);
    if (!*(v68 + 16) || ((v35 >> v65) & 1) == 0)
    {
      goto LABEL_26;
    }

    if (!*(DerivedStorage + 337))
    {
      break;
    }

    if (*(v68 + 867) || *(v68 + 874) || *(DerivedStorage + 7880) && ((v70 = *(v48 + 16 * v65 + 8), *(v70 + 867)) || *(v70 + 874)))
    {
      v69 = OUTLINED_FUNCTION_72_1(StartupRequirements, v52, v53, v54, v55, v56, v57, v58, v229, v230, v231, v232, v233, *(&v233 + 1), v234, v235, v236, v237, v238, v239, v240, v242, v244, *&v248, *&v249, *&v250, *&v251, *&v252, *v253, *&v253[8], *&v253[16], *v254, *&v254[8], *&v254[16], *&v254[24], *&v254[32], *&v255, v256, *time);
      if (!*(DerivedStorage + 8218) && *(v68 + 96) + *(v68 + 88) - (3 * *(DerivedStorage + 8)) <= v69)
      {
        *(DerivedStorage + 8848) = 5;
        if (dword_1EAF16A30 < 2)
        {
          v125 = 0;
          goto LABEL_70;
        }

        OUTLINED_FUNCTION_399_0();
        v196 = OUTLINED_FUNCTION_263_1(qword_1EAF16A28, v189, v190, v191, v192, v193, v194, v195, v229, v230, v231, v232, v233, *(&v233 + 1), v234, v235, v236, v237, v238, v239, v240, v242, v244, SBYTE2(v244), SBYTE3(v244), SBYTE4(v244));
        os_log_type_enabled(v196, typea);
        OUTLINED_FUNCTION_233();
        if (v113)
        {
          v198 = v197;
        }

        else
        {
          v198 = v247;
        }

        if (v198)
        {
          OUTLINED_FUNCTION_205_0();
          *v253 = 136316162;
          OUTLINED_FUNCTION_63_0();
          *&v254[8] = v199;
          *&v254[10] = Seconds;
          *&v254[18] = 1024;
          *&v254[20] = v65;
          OUTLINED_FUNCTION_47_0();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_282();
          _os_log_send_and_compose_impl(v200, v201, v202, v203, v204, v205, v206, v207);
        }

        goto LABEL_167;
      }
    }

LABEL_26:
    v66 = 0;
    v65 = 1;
    if ((v67 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (!*(v68 + 874))
  {
    goto LABEL_26;
  }

  *(DerivedStorage + 8848) = 1;
  v187 = *(DerivedStorage + 8240);
  if (v187 == 0.0)
  {
    v188 = 0.0;
  }

  else
  {
    v188 = Seconds / v187;
  }

  v126 = v240;
  if (v188 > 0.0)
  {
    v44 = v188;
  }

  if (dword_1EAF16A30 >= 2)
  {
    OUTLINED_FUNCTION_399_0();
    v215 = OUTLINED_FUNCTION_263_1(qword_1EAF16A28, v208, v209, v210, v211, v212, v213, v214, v229, v230, v231, v232, v233, *(&v233 + 1), v234, v235, v236, v237, v238, v239, v240, v242, v244, SBYTE2(v244), SBYTE3(v244), SBYTE4(v244));
    v216 = os_log_type_enabled(v215, type);
    if (OUTLINED_FUNCTION_77_0(v216))
    {
      OUTLINED_FUNCTION_205_0();
      *v253 = 136315906;
      *&v253[4] = "segPumpLikelyToKeepUp";
      *&v253[12] = 2114;
      OUTLINED_FUNCTION_68_0();
      *v254 = Seconds;
      *&v254[8] = 1024;
      *&v254[10] = v65;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v217, v218, v219, v220, v221, v222, type, v223);
    }

LABEL_167:
    v126 = v241;
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v125 = 0;
LABEL_109:
  v171 = *(DerivedStorage + 8848);
  if (v171)
  {
    v172 = *(DerivedStorage + 9232);
    if (v172)
    {
      v173 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v173)
      {
        v173(v172, 0x1F0B64538, 0x1F0B42438, v171, 0);
      }
    }
  }

  v30 = v237;
  if (v126)
  {
LABEL_114:
    segPumpGetLiveEdge(DerivedStorage, v35, 0, time);
    v174 = *&time[16];
    v175 = v258;
    *v126 = *time;
    v126[1] = v174;
    v126[2] = v175;
  }

LABEL_115:
  if (*(DerivedStorage + 337))
  {
    if (v62 >= v44)
    {
      v176 = v44;
    }

    else
    {
      v176 = v62;
    }

    goto LABEL_119;
  }

  if (!v125)
  {
    if (v62 >= v44)
    {
      v186 = v44;
    }

    else
    {
      v186 = v62;
    }

    if (v186 > 0.99)
    {
      v186 = 0.99;
    }

    v176 = fmaxf(v186, 0.0);
    goto LABEL_119;
  }

  v176 = 1.0;
  if (!*(DerivedStorage + 330) || *(v43 + 1642))
  {
    goto LABEL_119;
  }

  v179 = 0;
  v180 = 0;
  v181 = 1;
  *(v43 + 1642) = 1;
  do
  {
    v182 = v181;
    v183 = *(DerivedStorage + 392 + 16 * v180);
    if (*(v183 + 16) && ((v35 >> v180) & 1) != 0)
    {
      v179 += *(v183 + 1232);
    }

    v181 = 0;
    v180 = 1;
  }

  while ((v182 & 1) != 0);
  v184 = *(DerivedStorage + 9232);
  if (!v184)
  {
LABEL_119:
    v177 = v239;
    v178 = HIDWORD(v238);
    goto LABEL_120;
  }

  v185 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  v177 = v239;
  v178 = HIDWORD(v238);
  if (v185)
  {
    v185(v184, 0x1F0B64538, 0x1F0B678B8, v179, 0);
  }

LABEL_120:
  if (v177)
  {
    *v177 = v176;
  }

  if (v30)
  {
    *v30 = *(DerivedStorage + 8848);
  }

  if (a29)
  {
    *a29 = v125;
  }

  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v41, v178);
  OUTLINED_FUNCTION_812();
}

uint64_t segPumpOpen(const void *a1, uint64_t a2, const void *a3, const void *a4, int a5, _DWORD *a6, char *a7)
{
  v176 = a7;
  cf = a3;
  v237 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v172 = FigRetainProxyRetain();
  v235 = *a2;
  v14 = *(a2 + 12);
  timescale = *(a2 + 8);
  v221 = *(a2 + 16);
  segPumpAPILockAndEnsureAPIStatus(a1, 0);
  if (v15)
  {
    v119 = v15;
    goto LABEL_112;
  }

  v23 = (DerivedStorage + 0x2000);
  v185 = a4;
  v194 = (DerivedStorage + 0x2000);
  if (dword_1EAF16A30)
  {
    LODWORD(v207) = a5;
    if (v14)
    {
      v42 = OUTLINED_FUNCTION_73_1(v15, v16, v17, v18, v19, v20, v21, v22, v147, v151, v155, v159, v164, v168, v172, v176, v180, a4, v189, v194, cf, v202, v207, v213, v217, v221, lhs.value, *&lhs.timescale, lhs.epoch, v226, v227, v228, type);
      os_log_type_enabled(v42, type);
      OUTLINED_FUNCTION_101_0();
      if (_ZF)
      {
        value = v43;
      }

      else
      {
        value = lhs.value;
      }

      if (value)
      {
        OUTLINED_FUNCTION_254_0();
        v46 = a1;
        if (_ZF)
        {
          v47 = &stru_1F0B1AFB8;
        }

        else
        {
          v47 = v45;
        }

        OUTLINED_FUNCTION_18_1();
        Seconds = CMTimeGetSeconds(&time[0].start);
        v49 = *(DerivedStorage + 224);
        if (!*(DerivedStorage + 347))
        {
          v49 = @"[]";
        }

        LODWORD(rhs.value) = 136315906;
        *(&rhs.value + 4) = "segPumpOpen";
        LOWORD(rhs.flags) = 2114;
        *(&rhs.flags + 2) = v47;
        a1 = v46;
        HIWORD(rhs.epoch) = 2048;
        v231 = Seconds;
        v232 = 2114;
        v233 = v49;
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_387_1();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v50, v51, v52, v53, v54, v55, type, v56);
        OUTLINED_FUNCTION_404_1();
      }

      a4 = v185;
      v23 = v194;
      OUTLINED_FUNCTION_384_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449(v75, v76, v77, v78, v79);
      a5 = v209;
      goto LABEL_26;
    }

    if (*&cf == 0.0)
    {
      if (!a4)
      {
        v80 = OUTLINED_FUNCTION_73_1(v15, v16, v17, v18, v19, v20, v21, v22, v147, v151, v155, v159, v164, v168, v172, v176, v180, 0, v189, v194, 0, v202, v207, v213, v217, v221, lhs.value, *&lhs.timescale, lhs.epoch, v226, v227, v228, type);
        v88 = OUTLINED_FUNCTION_243_1(v80, v81, v82, v83, v84, v85, v86, v87, v150, v154, v158, v162, v167, v171, v175, v179, v183, v188, v192, v197, cfc, v205, v211, v216, v220, v224, lhs.value, *&lhs.timescale, lhs.epoch, v226, v227, v228, type);
        if (!OUTLINED_FUNCTION_71_0(v88))
        {
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_184_0();
        LODWORD(rhs.value) = 136315650;
        OUTLINED_FUNCTION_117_1();
        v231 = v89;
        OUTLINED_FUNCTION_82_1();
        OUTLINED_FUNCTION_387_1();
        goto LABEL_7;
      }

      v57 = OUTLINED_FUNCTION_73_1(v15, v16, v17, v18, v19, v20, v21, v22, v147, v151, v155, v159, v164, v168, v172, v176, v180, a4, v189, v194, 0, v202, v207, v213, v217, v221, lhs.value, *&lhs.timescale, lhs.epoch, v226, v227, v228, type);
      v65 = OUTLINED_FUNCTION_243_1(v57, v58, v59, v60, v61, v62, v63, v64, v149, v153, v157, v161, v166, v170, v174, v178, v182, v187, v191, v196, cfb, v204, v210, v215, v219, v223, lhs.value, *&lhs.timescale, lhs.epoch, v226, v227, v228, type);
      if (OUTLINED_FUNCTION_71_0(v65))
      {
        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_184_0();
        LODWORD(rhs.value) = 136315906;
        OUTLINED_FUNCTION_117_1();
        a4 = v185;
        v231 = *&v185;
        v232 = v66;
        v233 = v67;
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_387_1();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl(v68, v69, v70, v71, v72, v73, v7, v74);
        OUTLINED_FUNCTION_404_1();
LABEL_25:
        v23 = v194;
        a5 = v209;
        OUTLINED_FUNCTION_384_1();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449(v90, v91, v92, v93, v94);
LABEL_26:
        OUTLINED_FUNCTION_29();
        if (_ZF && dword_1EAF16A30)
        {
          LODWORD(lhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_101_0();
          if (_ZF)
          {
            v96 = v95;
          }

          else
          {
            v96 = 0;
          }

          if (v96)
          {
            OUTLINED_FUNCTION_254_0();
            if (_ZF)
            {
              v98 = &stru_1F0B1AFB8;
            }

            else
            {
              v98 = v97;
            }

            OUTLINED_FUNCTION_390_1();
            CMTimeRangeGetEnd(&rhs, time);
            v99 = CMTimeGetSeconds(&rhs);
            LODWORD(rhs.value) = 136315650;
            *(&rhs.value + 4) = "segPumpOpen";
            LOWORD(rhs.flags) = 2114;
            *(&rhs.flags + 2) = v98;
            v23 = v194;
            HIWORD(rhs.epoch) = 2048;
            v231 = v99;
            OUTLINED_FUNCTION_82_1();
            a4 = v185;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v100, v101, v102, v103, v104, os_log_and_send_and_compose_flags_and_os_log_type, 0, v105, &rhs);
            OUTLINED_FUNCTION_404_1();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449(v106, v107, v108, v109, v110);
          a5 = v209;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v24 = OUTLINED_FUNCTION_73_1(v15, v16, v17, v18, v19, v20, v21, v22, v147, v151, v155, v159, v164, v168, v172, v176, v180, a4, v189, v194, cf, v202, v207, v213, v217, v221, lhs.value, *&lhs.timescale, lhs.epoch, v226, v227, v228, type);
      v32 = OUTLINED_FUNCTION_243_1(v24, v25, v26, v27, v28, v29, v30, v31, v148, v152, v156, v160, v165, v169, v173, v177, v181, v186, v190, v195, cfa, v203, v208, v214, v218, v222, lhs.value, *&lhs.timescale, lhs.epoch, v226, v227, v228, type);
      if (OUTLINED_FUNCTION_71_0(v32))
      {
        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_184_0();
        LODWORD(rhs.value) = 136315906;
        OUTLINED_FUNCTION_117_1();
        v231 = *&cf;
        v232 = v33;
        v233 = v34;
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_387_1();
LABEL_7:
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl(v35, v36, v37, v38, v39, v40, v7, v41);
        OUTLINED_FUNCTION_404_1();
      }
    }

LABEL_24:
    a4 = v185;
    goto LABEL_25;
  }

LABEL_38:
  if (!*(DerivedStorage + 9200))
  {
    v23[1024] = 0;
    v111 = *(DerivedStorage + 9208);
    if (v111)
    {
      CFRelease(v111);
      *(DerivedStorage + 9208) = 0;
    }
  }

  if (a5 && !*(*(DerivedStorage + 392) + 872))
  {
    v112 = *(DerivedStorage + 8);
    v113 = v112;
    if (!v112)
    {
      v113 = 10.0;
    }

    CMTimeMakeWithSeconds(&rhs, v113, 1000);
    lhs.value = v235;
    lhs.timescale = timescale;
    lhs.flags = v14;
    lhs.epoch = v221;
    CMTimeSubtract(&time[0].start, &lhs, &rhs);
    v235 = time[0].start.value;
    LOBYTE(v14) = time[0].start.flags;
    timescale = time[0].start.timescale;
  }

  v114 = *(DerivedStorage + 296);
  if (!v114)
  {
    v117 = v23 + 676;
    v23[676] = 1;
    goto LABEL_54;
  }

  v115 = 0.0;
  if ((v14 & 0x1D) == 1)
  {
    OUTLINED_FUNCTION_18_1();
    if (CMTimeGetSeconds(&time[0].start) >= 0.0)
    {
      OUTLINED_FUNCTION_18_1();
      v115 = CMTimeGetSeconds(&time[0].start);
    }
  }

  FigStreamingCacheHintPlaybackTime(v114, v115);
  v116 = *(DerivedStorage + 296);
  v117 = v23 + 676;
  v23[676] = 1;
  if (!v116 || (v118 = segPumpAddStreamingCacheListeners(*DerivedStorage), !v118))
  {
LABEL_54:
    v193 = 0;
    v120 = 392;
    __asm { FMOV            V0.2D, #-1.0 }

    *v212 = _Q0;
    v184 = 1;
    do
    {
      v125 = *(DerivedStorage + v120);
      OUTLINED_FUNCTION_18_1();
      segPumpCalculateStreamDurationAndBytesCached(DerivedStorage, v125, time, v126);
      if (*v117 && *(v125 + 160) == 1)
      {
        *(v125 + 160) = 2;
        *(v125 + 168) = 0u;
        *(v125 + 184) = 0u;
        *(v125 + 200) = 0;
      }

      if (!*(v125 + 232))
      {
        v127 = cf;
        if (*&cf != 0.0)
        {
          v127 = CFRetain(cf);
        }

        *(v125 + 232) = v127;
      }

      *a6 = *(v125 + 72);
      if (a4)
      {
        v128 = CFRetain(a4);
      }

      else
      {
        v128 = 0;
      }

      *(v125 + 240) = v128;
      *(v125 + 120) = *v212;
      *(v125 + 304) = 0;
      *(v125 + 328) = 0;
      if ((v14 & 0x1D) == 1)
      {
        OUTLINED_FUNCTION_18_1();
        *(v125 + 120) = CMTimeGetSeconds(&time[0].start);
      }

      else if ((v14 & 5) == 5)
      {
        *(v125 + 112) = 1;
      }

      OUTLINED_FUNCTION_29();
      if (_ZF)
      {
        OUTLINED_FUNCTION_390_1();
        CMTimeRangeGetEnd(&rhs, time);
        *(v125 + 208) = rhs;
      }

      v129 = *(v125 + 56);
      if (v129)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v129);
        if (MediaSegmentSpecifiers)
        {
          if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
          {
            if (v194[26] || (v133 = a1, v134 = *(v125 + 1056) + 1000000000 * *(DerivedStorage + 8), v135 = FigGetUpTimeNanoseconds() < v134, a1 = v133, a4 = v185, v135) && !*(v125 + 1184))
            {
              segPumpSetStartingOffset(a1, DerivedStorage, v125);
              if (*v125 == *(DerivedStorage + 8600) && !v194[29])
              {
                v131 = *(v125 + 56);
                if (v131)
                {
                  if (FigMediaPlaylistGetDateStampCount(v131) >= 1 && *(DerivedStorage + 168))
                  {
                    v163 = *(v125 + 880);
                    v193 = segPumpSendDateMapping(a1, DerivedStorage, v125, v132);
                    if (v193 == -15626)
                    {
                      v119 = 4294951670;
                      goto LABEL_111;
                    }

                    if (FigRetainProxyIsInvalidated())
                    {
                      v119 = v193;
                      goto LABEL_112;
                    }

                    if (v163 != *(v125 + 880))
                    {
                      goto LABEL_110;
                    }
                  }
                }
              }
            }

            else
            {
              v184 = 0;
              *(v125 + 866) = 1;
            }
          }
        }
      }

      *(v125 + 869) = 0;
      if (*(*(DerivedStorage + v120) + 16))
      {
        if (*v125 == *(DerivedStorage + 8600))
        {
          v136 = *(v125 + 56);
          if (v136)
          {
            if (FigMediaPlaylistGetDateEntryArray(v136))
            {
              segPumpReadyNotification(DerivedStorage, @"FBP_TaggedRangeMetadataChanged", 0);
            }
          }
        }

        segPumpReadOrScheduleIndexFileRead();
        if (v118)
        {
          goto LABEL_52;
        }

        v193 = 0;
      }

      v120 += 16;
      ++a6;
    }

    while (v120 != 440);
    for (i = 0; i != 48; i += 16)
    {
      v139 = *(DerivedStorage + i + 392);
      v138 = *(DerivedStorage + i + 400);
      *(v139 + 136) = -1;
      *(v139 + 144) = -1;
      *(v138 + 136) = -1;
      *(v138 + 144) = -1;
    }

    v140 = v193;
    if (v184)
    {
      segPumpDeliverNextMediaForAllStreams();
    }

    v193 = v140;
    if (v176 && !v140)
    {
      v141 = *(*(DerivedStorage + 392 + 16 * *(DerivedStorage + 8600)) + 56);
      if (v141 && (v142 = FigMediaPlaylistGetMediaSegmentSpecifiers(v141)) != 0 && CFArrayGetCount(v142) >= 1 && !v194[26] && !v194[677])
      {
        _ZF = (*(a2 + 12) & 1) == 0 && cf == 0;
        v143 = _ZF && a4 == 0;
      }

      else
      {
        v143 = 0;
      }

      v119 = 0;
      *v176 = v143;
      goto LABEL_112;
    }

LABEL_110:
    v119 = v193;
    if (!v193)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

LABEL_52:
  v119 = v118;
LABEL_111:
  *v117 = 0;
LABEL_112:
  FigRetainProxyRelease();
  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v119);
}

uint64_t segPumpSetCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_358_1();
  v7 = v6;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v9, v10);
  if (!v11)
  {
    *(DerivedStorage + 160) = v5;
    *(DerivedStorage + 168) = v4;
    *(DerivedStorage + 176) = FigRetainProxyRetain();
    FigRetainProxyRelease();
    v12 = *(DerivedStorage + 8600);
    v13 = *(DerivedStorage + 16 * v12 + 392);
    if (*v13 != v12 || *(DerivedStorage + 8221) || (v16 = v13[7]) == 0 || FigMediaPlaylistGetDateStampCount(v16) < 1 || !*(DerivedStorage + 168))
    {
      v14 = 0;
      goto LABEL_5;
    }

    v17 = OUTLINED_FUNCTION_69_0();
    v11 = segPumpSendDateMapping(v17, v18, v19, v20);
  }

  v14 = v11;
LABEL_5:

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v7, v14);
}

uint64_t segPumpSetDeliveryRate(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v5, v6);
  if (!v7)
  {
    if (*(DerivedStorage + 8896))
    {
      if (*(DerivedStorage + 8880) != a2)
      {
        if (*(DerivedStorage + 9000))
        {
          FigGetUpTimeNanoseconds();
          OUTLINED_FUNCTION_312_1();
          *(DerivedStorage + 8880) = a2;
          if (!v8)
          {
LABEL_9:
            v9 = fabsf(a2);
            *(DerivedStorage + 8888) = v9;
            if (v9 >= 1.0)
            {
              v10 = 0;
              goto LABEL_14;
            }
          }

LABEL_13:
          v10 = 0;
          *(DerivedStorage + 8888) = 0x3FF0000000000000;
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_312_1();
      }

      *(DerivedStorage + 8880) = a2;
      goto LABEL_13;
    }

    if (a2 >= 0.0)
    {
      *(DerivedStorage + 8880) = a2;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
  }

  v10 = v7;
LABEL_14:

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v10);
}

void segPumpRetrieveAnIFrame()
{
  OUTLINED_FUNCTION_158_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = *(DerivedStorage + 392);
  v14 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v14, v15);
  if (!NextIFrame)
  {
    if ((*(v9 + 12) & 1) == 0)
    {
      goto LABEL_34;
    }

    if (!v7)
    {
      goto LABEL_34;
    }

    if (!*(DerivedStorage + 8896))
    {
      goto LABEL_34;
    }

    if (*(DerivedStorage + 8897))
    {
      goto LABEL_34;
    }

    if (*(DerivedStorage + 8952))
    {
      goto LABEL_34;
    }

    v17 = *(DerivedStorage + 392);
    if (*(v17 + 857))
    {
      goto LABEL_34;
    }

    v18 = *(v17 + 56);
    if (v18)
    {
      PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(v18);
      v17 = *(DerivedStorage + 392);
    }

    else
    {
      PlaylistActiveDurationSecs = *(DerivedStorage + 352);
    }

    v20 = *(v17 + 88);
    v21 = v20;
    if ((*(v5 + 12) & 9) == 1)
    {
      v21 = OUTLINED_FUNCTION_351_0(*(v5 + 16), *v5, *(v5 + 8), v35);
    }

    v22 = PlaylistActiveDurationSecs + v20;
    v23 = v22;
    if ((*(v3 + 12) & 5) == 1)
    {
      v23 = OUTLINED_FUNCTION_351_0(*(v3 + 16), *v3, *(v3 + 8), v35);
    }

    v24 = *(DerivedStorage + 392);
    if (v21 < *(v24 + 88))
    {
      v21 = *(v24 + 88);
    }

    if (v23 <= v22)
    {
      v25 = v23;
    }

    else
    {
      v25 = v22;
    }

    v26 = *(v9 + 12);
    v27 = v21;
    if ((~v26 & 9) != 0)
    {
      v27 = v25;
      if ((~v26 & 5) != 0)
      {
        v27 = OUTLINED_FUNCTION_351_0(*(v9 + 16), *v9, *(v9 + 8), v35);
      }
    }

    if (v27 < v21 || v27 > v25)
    {
LABEL_34:
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      v29 = *(v13 + 72) + 1;
      *(v13 + 72) = v29;
      *v1 = v29;
      *(DerivedStorage + 8960) = v7;
      *(DerivedStorage + 8968) = v27;
      *(DerivedStorage + 8976) = v21;
      *(DerivedStorage + 8984) = v25;
      *(DerivedStorage + 8904) = v22 - v21;
      *(DerivedStorage + 8912) = v22 - v25;
      v30 = *(*(DerivedStorage + 392) + 56);
      if (!v30 || (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v30)) == 0 || CFArrayGetCount(MediaSegmentSpecifiers) <= 0)
      {
        v34 = 0;
        *(DerivedStorage + 8952) = 1;
        goto LABEL_33;
      }

      v32 = OUTLINED_FUNCTION_298();
      NextIFrame = segPumpRetrieveNextIFrame(v32, v33);
    }
  }

  v34 = NextIFrame;
LABEL_33:
  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v11, v34);
  OUTLINED_FUNCTION_156_1();
}

uint64_t segPumpResetCachedMemory(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v3, v4);
  v6 = v5;
  if (!v5)
  {
    v7 = *(DerivedStorage + 8136);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 8136) = 0;
    }
  }

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v6);
}

uint64_t segPumpResetDownloadStatistics(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v3, v4);
  v6 = v5;
  if (!v5)
  {
    segPumpClearStatistics(DerivedStorage);
  }

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v6);
}

void segPumpTimeRequiredToSwitchToAlternate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_629();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = DerivedStorage[1041] != 0;
  v17 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v17, v18);
  if (v19)
  {
    goto LABEL_17;
  }

  if (!v14)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
LABEL_17:
    v25 = v19;
LABEL_13:
    if (!a9)
    {
      goto LABEL_15;
    }

LABEL_14:
    *a9 = 0x7FF8000000000000;
    goto LABEL_15;
  }

  if ((v16 & (v12 >> 2)) == 0)
  {
    v25 = 0;
    goto LABEL_13;
  }

  segPumpGetCurrentRTT(DerivedStorage);
  if (v10 && v10 != v14)
  {
    v20 = DerivedStorage[985];
    if (v20)
    {
      PeakBitRate = FigAlternateGetPeakBitRate(*(v20 + 8));
      if (PeakBitRate > FigAlternateGetPeakBitRate(v10))
      {
        v10 = *(DerivedStorage[985] + 8);
      }
    }

    segPumpGetEstIndependentInterval(DerivedStorage);
    FigAlternateGetPeakBitRate(v14);
    FigAlternateGetPeakBitRate(v10);
    v22 = OUTLINED_FUNCTION_273_1();
    segPumpGetSafeNetworkBandwidth(v22, v23, v24, 0);
  }

  v25 = 0;
  if (a9)
  {
    goto LABEL_14;
  }

LABEL_15:
  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v9, v25);
  OUTLINED_FUNCTION_345_1();
}

uint64_t segPumpGetLocalBitrateFraction(uint64_t a1, uint64_t a2, double *a3, CMTime *a4)
{
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  start = **&MEMORY[0x1E6960C70];
  v9 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v9, v10);
  if (v11)
  {
    goto LABEL_6;
  }

  if ((*(v5 + 12) & 1) == 0 || (*(v5 + 36) & 1) == 0 || *(v5 + 40) || (*(v5 + 24) & 0x8000000000000000) != 0 || !a3)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_6:
    v12 = v11;
    return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v4, v12);
  }

  if (*(DerivedStorage + 9088) > 0.0 && (*(DerivedStorage + 9108) & 1) != 0 && (*(DerivedStorage + 9132) & 1) != 0 && !*(DerivedStorage + 9136) && (*(DerivedStorage + 9120) & 0x8000000000000000) == 0 && (v27 = *(DerivedStorage + 9112), *&v30.start.value = *(DerivedStorage + 9096), *&v30.start.epoch = v27, *&v30.duration.timescale = *(DerivedStorage + 9128), OUTLINED_FUNCTION_177_1(), CMTimeRangeContainsTimeRange(&v30, &rhs)))
  {
    v25 = *(DerivedStorage + 9088);
  }

  else
  {
    v14 = *(MEMORY[0x1E6960C98] + 32);
    *&v30.start.epoch = *(MEMORY[0x1E6960C98] + 16);
    *&v30.duration.timescale = v14;
    *&v30.start.value = *MEMORY[0x1E6960C98];
    v15 = 0.0;
    LocalBitrateForSubStream = 0.0;
    if (*(*(DerivedStorage + 408) + 16))
    {
      OUTLINED_FUNCTION_177_1();
      LocalBitrateForSubStream = segPumpGetLocalBitrateForSubStream(DerivedStorage, 1, &rhs, &start, &v30);
    }

    if (*(*(DerivedStorage + 392) + 16))
    {
      OUTLINED_FUNCTION_177_1();
      v17 = OUTLINED_FUNCTION_249();
      v15 = segPumpGetLocalBitrateForSubStream(v17, v18, v19, v20, v21);
    }

    v22 = LocalBitrateForSubStream + v15;
    v23 = v15 < 0.0 || v22 <= 2.22044605e-16;
    if (v23 || LocalBitrateForSubStream < 0.0 || (v24 = *(DerivedStorage + 8328)) == 0)
    {
      v25 = *(DerivedStorage + 9088);
      if (v25 <= 0.0)
      {
        v25 = 1.0;
      }
    }

    else
    {
      v25 = v22 / FigAlternateGetPeakBitRate(*(v24 + 8));
      if (v25 < 0.33)
      {
        v25 = 0.33;
      }

      if (v25 > 1.0)
      {
        v25 = 1.0;
      }

      if (!*(DerivedStorage + 8896))
      {
        *(DerivedStorage + 9088) = v25;
        v26 = *&v30.start.epoch;
        *(DerivedStorage + 9096) = *&v30.start.value;
        *(DerivedStorage + 9112) = v26;
        *(DerivedStorage + 9128) = *&v30.duration.timescale;
      }
    }
  }

  *a3 = v25;
  if (a4)
  {
    if ((start.flags & 1) == 0)
    {
      LODWORD(v25) = *(DerivedStorage + 8);
      CMTimeMakeWithSeconds(&rhs.start, *&v25 + 0.5, 1000);
      v28 = *v5;
      CMTimeAdd(&v30.start, &v28, &rhs.start);
      start = v30.start;
    }

    v12 = 0;
    *a4 = start;
  }

  else
  {
    v12 = 0;
  }

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v4, v12);
}

uint64_t segPumpSnapToTime(const void *a1, CMTime *a2, uint64_t a3, CMTime *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v11, v12);
  if (v13)
  {
    goto LABEL_103;
  }

  flags = a2->flags;
  if ((flags & 1) == 0 || !a4 || !a5)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_103:
    v35 = v13;
    return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v35);
  }

  if (a3 == 4)
  {
    v114 = *a2;
    v22 = *(DerivedStorage + 16 * *(DerivedStorage + 8600) + 392);
    *time = *&a2->value;
    *&time[16] = a2->epoch;
    Seconds = CMTimeGetSeconds(time);
    if (v22)
    {
      v24 = Seconds;
      v25 = *(DerivedStorage + 8328);
      if (!v25 || !*(DerivedStorage + 296) || !FigAlternateGetLastKnownValueForIsFullyCached(*(v25 + 8)))
      {
        v120 = 0;
        v118 = 0u;
        v119 = 0u;
        v117 = 0u;
        memset(time, 0, sizeof(time));
        segPumpMakeNetworkPrediction(DerivedStorage, time);
        if (!v26)
        {
          v27 = *(DerivedStorage + 8880);
          if (v27 > 0.0 && v27 <= 2.0)
          {
            v29 = *time;
            v30 = _os_feature_enabled_impl();
            v31 = *(v22 + 56);
            if (v30)
            {
              if (v31)
              {
                *time = 0;
                v115.value = 0;
                v113.value = 0;
                time1.value = 0;
                time2.value = 0;
                segPumpGetRequiredBandwidthForCurrentStreamingAlternate(DerivedStorage);
                v33 = v32;
                segPumpGetStartupRequirements(DerivedStorage, *(DerivedStorage + 8), time, &v115.value, &v113.value, &time1.value, &time2.value, v32);
                if (*&v115.value >= v29)
                {
                  if (*(DerivedStorage + 337))
                  {
                    p_time2 = &time2;
                  }

                  else
                  {
                    p_time2 = &v113;
                  }

                  v34 = *&p_time2->value;
                }

                else
                {
                  v34 = *&time1.value;
                }

                v63 = 0;
                for (i = v24 + v33 * v34 / v29 * *(DerivedStorage + 8880); ; i = v77)
                {
                  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v22 + 56));
                  if (MediaSegmentSpecifiers)
                  {
                    MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
                  }

                  if (v63 >= MediaSegmentSpecifiers)
                  {
                    break;
                  }

                  v66 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v22 + 56));
                  ValueAtIndex = CFArrayGetValueAtIndex(v66, v63);
                  MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v68, v69, v70, v71, v72, v73, v74);
                  v76 = MediaFilePrivateData[4];
                  v77 = v76 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
                  v78 = MediaFilePrivateData[4];
                  if (v78 <= i && i < v77)
                  {
                    v80 = i + v33 * (i - v78) / v29 * *(DerivedStorage + 8880);
                    if (v80 < v77)
                    {
                      CMTimeMakeWithSeconds(&v114, v80, 1000000);
                      break;
                    }
                  }

                  else
                  {
                    v77 = i;
                  }

                  ++v63;
                }
              }
            }

            else if (v31)
            {
              for (j = 0; ; ++j)
              {
                Count = FigMediaPlaylistGetMediaSegmentSpecifiers(v31);
                if (Count)
                {
                  Count = CFArrayGetCount(Count);
                }

                if (j >= Count)
                {
                  break;
                }

                v46 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v22 + 56));
                v47 = CFArrayGetValueAtIndex(v46, j);
                v55 = *(segPumpGetMediaFilePrivateData(v47, v48, v49, v50, v51, v52, v53, v54) + 4);
                if (v55 <= v24)
                {
                  v56 = OUTLINED_FUNCTION_127_1();
                  if (v24 <= v55 + FigMediaSegmentSpecifierGetTimeInSeconds(v56))
                  {
                    LODWORD(v57) = *(DerivedStorage + 8);
                    v81 = (v24 - *(a3 + 32)) / v57;
                    segPumpGetRequiredBandwidthForCurrentStreamingAlternate(DerivedStorage);
                    if ((v81 + 1.0) * (v82 * *(DerivedStorage + 8880)) >= v29)
                    {
                      NextSegment = FigMediaSegmentSpecifierGetNextSegment(v47);
                      if (NextSegment)
                      {
                        v91 = segPumpGetMediaFilePrivateData(NextSegment, v84, v85, v86, v87, v88, v89, v90);
                        CMTimeMakeWithSeconds(time, v91[4] + 0.000001, 1000000);
                        OUTLINED_FUNCTION_374_0();
                      }
                    }

                    break;
                  }
                }

                v31 = *(v22 + 56);
              }
            }
          }
        }
      }
    }

    if (!*(DerivedStorage + 8600))
    {
      v94 = *(*(DerivedStorage + 408) + 56);
      if (v94)
      {
        v95 = FigMediaPlaylistGetMediaSegmentSpecifiers(v94);
        if (v95)
        {
          if (CFArrayGetCount(v95) >= 1)
          {
            v115 = v114;
            *time = v114;
            v96 = CMTimeGetSeconds(time);
            v97 = *(DerivedStorage + 392);
            if (!*(v97 + 16))
            {
              v97 = 0;
            }

            v98 = *(DerivedStorage + 408);
            if (*(v98 + 16) && v97)
            {
              v99 = *(v97 + 336);
              if (v99)
              {
                while (1)
                {
                  v100 = v99[3];
                  if (v100 <= v96 && v100 + v99[5] > v96)
                  {
                    break;
                  }

                  v99 = *v99;
                  if (!v99)
                  {
                    goto LABEL_81;
                  }
                }

                v101 = *(v99 + 4);
              }

              else
              {
LABEL_81:
                v101 = -1;
              }

              v102 = *(v98 + 336);
              if (v102)
              {
                while (1)
                {
                  v103 = v102[3];
                  if (v103 <= v96 && v103 + v102[5] > v96)
                  {
                    break;
                  }

                  v102 = *v102;
                  if (!v102)
                  {
                    goto LABEL_87;
                  }
                }

                v104 = *(v102 + 4);
              }

              else
              {
LABEL_87:
                v104 = -1;
              }

              if (v101 <= v104)
              {
                if (v104 > v101)
                {
                  v105 = (v97 + 336);
                  while (1)
                  {
                    v105 = *v105;
                    if (!v105)
                    {
                      break;
                    }

                    if (*(v105 + 4) == v104)
                    {
LABEL_98:
                      v106 = v105[3];
                      if (v106 == -1.0)
                      {
                        break;
                      }

                      CMTimeMakeWithSeconds(time, v106, 1000);
                      goto LABEL_100;
                    }
                  }
                }
              }

              else
              {
                v105 = (v98 + 336);
                while (1)
                {
                  v105 = *v105;
                  if (!v105)
                  {
                    break;
                  }

                  if (*(v105 + 4) == v101)
                  {
                    goto LABEL_98;
                  }
                }
              }
            }

            *time = v115;
LABEL_100:
            OUTLINED_FUNCTION_374_0();
          }
        }
      }
    }

    v35 = 0;
    *a4 = v114;
    goto LABEL_68;
  }

  if (a3 != 3)
  {
    v35 = 0;
    v36 = *&a2->value;
    a4->epoch = a2->epoch;
    *&a4->value = v36;
LABEL_68:
    v92 = MEMORY[0x1E6960C70];
    *a5 = *MEMORY[0x1E6960C70];
    *(a5 + 16) = *(v92 + 16);
    return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v35);
  }

  memset(&v109, 0, sizeof(v109));
  if ((flags & 4) != 0)
  {
    MaxTime = segPumpGetMaxTime(DerivedStorage);
    v38 = OUTLINED_FUNCTION_173_0();
    MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(v38, v39);
    CMTimeMakeWithSeconds(&v109, MaxTime - (MinimumPrebufferReservation + *(DerivedStorage + 8176)), 1000);
  }

  else
  {
    v109 = *a2;
  }

  v108 = v109;
  *time = *MEMORY[0x1E6960C70];
  v41 = *time;
  v42 = *(MEMORY[0x1E6960C70] + 16);
  *&time[16] = v42;
  *&v115.value = *time;
  v115.epoch = v42;
  memset(&v114, 0, sizeof(v114));
  v43 = *(DerivedStorage + 392);
  if (*(v43 + 16))
  {
    v107 = *time;
    v113 = v109;
    segPumpStreamSnapToSegmentBoundary(v43, &v113, &v115, &v114);
    v41 = v107;
  }

  else
  {
    *&v114.value = *time;
    v114.epoch = v42;
  }

  memset(&v113, 0, sizeof(v113));
  v58 = *(DerivedStorage + 408);
  if (v58[2])
  {
    OUTLINED_FUNCTION_375_1(v58, v14, v15, v16, v17, v18, v19, v20, v107, *(&v107 + 1), *&v108.value);
    v58 = segPumpStreamSnapToSegmentBoundary(v59, &time1, time, &v113);
  }

  else
  {
    *&v113.value = v41;
    v113.epoch = v42;
  }

  if (v114.flags & 1) != 0 || (v113.flags)
  {
    time1 = v114;
    time2 = v113;
    v58 = CMTimeMinimum(&v108, &time1, &time2);
    if (v115.flags)
    {
      if (time[12])
      {
        time2 = v115;
        v110 = *time;
        v58 = CMTimeMaximum(&time1, &time2, &v110);
        *a5 = *&time1.value;
        epoch = time1.epoch;
      }

      else
      {
        *a5 = *&v115.value;
        epoch = v115.epoch;
      }
    }

    else
    {
      *a5 = *time;
      epoch = *&time[16];
    }

    *(a5 + 16) = epoch;
  }

  *&a4->value = OUTLINED_FUNCTION_375_1(v58, 0, v15, v16, v17, v18, v19, v20, v107, *(&v107 + 1), *&v108.value);
  a4->epoch = v61;
  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v35);
}

uint64_t segPumpGetDeliveredTimeStamp(uint64_t a1, double *a2)
{
  *a2 = 0.0;
  result = *(a1 + 56);
  if (result)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(result);
    result = FigCFArrayGetLastValue();
    if (result)
    {
      v11 = result;
      while (1)
      {
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(v11, v4, v5, v6, v7, v8, v9, v10);
        if (*(MediaFilePrivateData + 73))
        {
          break;
        }

        result = FigMediaSegmentSpecifierGetPreviousSegment(v11);
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v13 = *(MediaFilePrivateData + 4);
      *a2 = v13 + FigMediaSegmentSpecifierGetTimeInSeconds(v11);
      return 1;
    }
  }

  return result;
}

__n128 segPumpStopConcurrentStream()
{
  OUTLINED_FUNCTION_187();
  if (*(v1 + 776) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = OUTLINED_FUNCTION_177();
      segPumpStreamCancelReadAheadAndResetDataAtIndex(v3, v4, 0);
      ++v2;
    }

    while (v2 < *(v0 + 776));
  }

  v5 = OUTLINED_FUNCTION_177();
  segPumpStreamCancelPreloadReadAndResetData(v5, v6);
  v7 = OUTLINED_FUNCTION_177();
  segPumpStreamCancelPreloadMapReadAndResetData(v7, v8);
  v9 = OUTLINED_FUNCTION_177();
  segPumpStopStream(v9, v10, 0);
  segPumpStreamDisposeStorage(v0);
  *(v0 + 866) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v0 + 120) = _Q0;
  OUTLINED_FUNCTION_191_1();
  return result;
}

uint64_t segPumpSetAlternateForStream(uint64_t a1, int a2, int a3, int a4, const void *a5, const void *a6, const void *a7, int a8, char a9, uint64_t a10, _OWORD *a11)
{
  v442 = a1;
  LODWORD(v487) = a8;
  OUTLINED_FUNCTION_471();
  v540 = *MEMORY[0x1E69E9840];
  *&v519 = 0.0;
  if (!*v17)
  {
    *(v12 + 8760) = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v11;
  }

  v19 = 944;
  if (*(v11 + 944) == -1)
  {
    v19 = 304;
  }

  *(v11 + 944) = *(v18 + v19);
  v20 = *(v18 + 56);
  if (v20)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v20);
    if (MediaSegmentSpecifiers)
    {
      if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1 && !FigMediaPlaylistHasDiscontinuitySequence(*(v18 + 56)) && !FigMediaPlaylistGetPlaylistType(*(v18 + 56)))
      {
        FigMediaPlaylistGetMediaSegmentSpecifiers(*(v18 + 56));
        LastValue = FigCFArrayGetLastValue();
        if (FigMediaSegmentSpecifierGetDiscontinuityDomain(LastValue) >= 1)
        {
          segPumpCreateDiscoInfoList();
          if (DataCallbackWithOSStatus)
          {
            return DataCallbackWithOSStatus;
          }

          for (i = *(v11 + 336); i; i = *i)
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            v393 = CFDateCreate(AllocatorForMedia, i[2]);
            if (v393)
            {
              CFRelease(v393);
            }
          }
        }
      }
    }
  }

  v460 = a5;
  v469 = a6;
  v24 = a10;
  v23 = a11;
  *(v11 + 863) = 0;
  v25 = *v11;
  v451 = a11;
  cf = a7;
  if (*(v12 + 8432))
  {
    v26 = v12 + 40 * v25 + 8440;
    v27 = *(v11 + 56);
    if (v27)
    {
      for (j = 0; ; ++j)
      {
        Count = FigMediaPlaylistGetMediaSegmentSpecifiers(v27);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (j >= Count)
        {
          break;
        }

        v30 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v11 + 56));
        ValueAtIndex = CFArrayGetValueAtIndex(v30, j);
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v32, v33, v34, v35, v36, v37, v38);
        MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex);
        if (!*(MediaFilePrivateData + 73))
        {
          v43 = MediaSequence;
          v41 = a10;
          if (*(MediaFilePrivateData + 74))
          {
            v42 = MediaFilePrivateData[7];
          }

          else
          {
            v42 = 0;
          }

          PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
          v44 = -1;
          do
          {
            if (PartialSegments)
            {
              v140 = CFArrayGetCount(PartialSegments);
            }

            else
            {
              v140 = 0;
            }

            if (v44 + 1 >= v140)
            {
              break;
            }

            v141 = CFArrayGetValueAtIndex(PartialSegments, ++v44);
          }

          while (*(segPumpGetMediaFilePrivateData(v141, v142, v143, v144, v145, v146, v147, v148) + 73));
          if (ValueAtIndex)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v27 = *(v11 + 56);
      }
    }

    v41 = a10;
    v42 = 0;
LABEL_23:
    v43 = *(v11 + 376) + 1;
    v44 = -1;
LABEL_24:
    if (FigCFEqual() && *(v26 + 32) && v43 == *v26)
    {
      v45 = *(v26 + 16);
      if (v42 > v45)
      {
        v45 = v42;
      }

      *(v26 + 16) = v45;
    }

    else
    {
      *(v26 + 16) = v42;
    }

    v24 = v41;
    if ((v43 & 0x8000000000000000) == 0)
    {
      *v26 = v43;
    }

    v46 = *(v26 + 32);
    v47 = *(v12 + 8432);
    *(v26 + 32) = v47;
    if (v47)
    {
      CFRetain(v47);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    *(v26 + 8) = v44;
    *(v26 + 24) = 1;
    v25 = *v11;
    v23 = a11;
  }

  v48 = v12 + 392;
  v49 = *(v12 + 392 + 16 * v25 + 8);
  *(v11 + 864) = v49 == v11;
  v50 = &unk_1EAF16000;
  if (!v487 && (*(v23 + 12) & 1) != 0 || v49 == v11)
  {
    if ((*(v24 + 12) & 1) != 0 && (v75 = *(v18 + 56)) != 0 && (v76 = FigMediaPlaylistGetMediaSegmentSpecifiers(v75), v23 = a11, v76) && (v77 = CFArrayGetCount(v76), v23 = a11, v77 >= 1))
    {
      if (*(v11 + 864))
      {
        if (*(a11 + 12))
        {
          v79 = 1;
        }

        else
        {
          v78 = MEMORY[0x1E6960CC0];
          *a11 = *MEMORY[0x1E6960CC0];
          *(a11 + 2) = *(v78 + 16);
          OUTLINED_FUNCTION_335_0();
        }

        if (v487 && v79)
        {
          v239 = OUTLINED_FUNCTION_341_1();
          segPumpStreamCancelPreloadReadAndResetData(v239, v240);
        }
      }

      OUTLINED_FUNCTION_417_1();
      valuePtr = *v241;
      OUTLINED_FUNCTION_378_1();
      v243 = v242;
      CMTimeAdd(v246, v244, v245);
      v247 = CMTimeGetSeconds(&time) - *(v18 + 88);
      v248 = (v11 + 920);
      DataCallbackWithOSStatus = segPumpGetLastDiscAndDateForTimeReadInPlaylist(*(v18 + 56), &v519, (v11 + 920), v247);
      if (DataCallbackWithOSStatus)
      {
        return DataCallbackWithOSStatus;
      }

      OUTLINED_FUNCTION_417_1();
      valuePtr = *v243;
      OUTLINED_FUNCTION_378_1();
      CMTimeAdd(v251, v249, v250);
      v258 = CMTimeGetSeconds(&time) - *(v18 + 88);
      v259 = *&v519;
      v260 = *v248;
      if (v258 >= *&v519)
      {
        v259 = v247;
        v23 = a11;
      }

      else
      {
        if (v260 != 0.0)
        {
          v260 = v258 - *&v519 + v260;
          *v248 = v260;
        }

        v23 = a11;
      }

      v261 = *(v18 + 96) - v259;
      *(v11 + 904) = v261;
      *(v11 + 912) = v259;
      *(v11 + 928) = v259 + *(v11 + 88);
      if (v260 != 0.0)
      {
        segPumpGetLastKnownContinuousDateInPlaylist(*(v11 + 56), (v11 + 936), v260, v252, v253, v254, v255, v256, v257);
        v23 = a11;
        v261 = *(v11 + 904);
      }

      if (v261 < 0.0)
      {
        *(v11 + 904) = 0;
      }
    }

    else
    {
      v80 = *(v18 + 120);
      if (v80 > 0.0)
      {
        *(v11 + 120) = v80;
      }
    }

    *(v11 + 896) = *(v18 + 1064);
    time = *v23;
    v81 = CMTimeGetSeconds(&time) * 1000000000.0;
    *(v11 + 888) = (v81 + FigGetUpTimeNanoseconds());
    *(v11 + 861) = 1;
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_153_0();
      v89 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v82, v83, v84, v85, v86, v87, v88, v394, v404, v414, v424, v433, v442, a11, v460, v469, cf, v487, v496, SBYTE4(v496), SHIWORD(v496), valuePtr);
      v97 = OUTLINED_FUNCTION_433_1(v89, v90, v91, v92, v93, v94, v95, v96, v396, v406, v416, v426, v435, v444, v453, v462, v471, cfb, v489, v498, v510, valuePtr);
      if (OUTLINED_FUNCTION_71_0(v97))
      {
        OUTLINED_FUNCTION_76_1();
        OUTLINED_FUNCTION_318_1();
        *&v521[8] = 2114;
        OUTLINED_FUNCTION_6_1();
        *v523 = 1024;
        OUTLINED_FUNCTION_300_0();
        OUTLINED_FUNCTION_145();
LABEL_57:
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v98, v99, v100, v101, v102, v103, &unk_1EAF16000, v104);
      }

LABEL_99:
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449(v191, v192, v193, v194, v195);
    }
  }

  else
  {
    if (*(v11 + 1185))
    {
      if (dword_1EAF16A30)
      {
        OUTLINED_FUNCTION_153_0();
        v58 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v51, v52, v53, v54, v55, v56, v57, v394, v404, v414, v424, v433, v442, a11, v460, v469, cf, v487, v496, SBYTE4(v496), SHIWORD(v496), valuePtr);
        v66 = OUTLINED_FUNCTION_161_1(v58, v59, v60, v61, v62, v63, v64, v65, v395, v405, v415, v425, v434, v443, v452, v461, v470, cfa, v488, v497, v509, valuePtr);
        if (OUTLINED_FUNCTION_28_1(v66))
        {
          OUTLINED_FUNCTION_76_1();
          v520 = 136315906;
          *v521 = "segPumpSetAlternateForStream";
          *&v521[8] = 2114;
          OUTLINED_FUNCTION_6_1();
          *v523 = 1024;
          *&v523[2] = v67;
          OUTLINED_FUNCTION_145();
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl(v68, v69, v70, v71, v72, v73, &unk_1EAF16000, v74);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v134, v135, v136, v137, v138);
      }

      goto LABEL_100;
    }

    if (*(v12 + 8408))
    {
      if (*(v12 + 8328))
      {
        v105 = FigCFEqual();
        if (!v487)
        {
          if (v105)
          {
            OUTLINED_FUNCTION_419_1();
            CFNumberGetValue(*(v12 + 8416), kCFNumberDoubleType, &valuePtr);
            *(v11 + 120) = *&valuePtr - *(v11 + 88);
            if (!dword_1EAF16A30)
            {
              goto LABEL_100;
            }

            OUTLINED_FUNCTION_201_1();
            v113 = OUTLINED_FUNCTION_141_1(qword_1EAF16A28, v106, v107, v108, v109, v110, v111, v112, v394, v404, v414, v424, v433, v442, a11, v460, v469, cf, v487, v496, SBYTE2(v496), SBYTE3(v496), SBYTE4(v496));
            v114 = os_log_type_enabled(v113, BYTE3(v496));
            if (OUTLINED_FUNCTION_28_1(v114))
            {
              OUTLINED_FUNCTION_76_1();
              OUTLINED_FUNCTION_318_1();
              *&v521[8] = 2114;
              OUTLINED_FUNCTION_6_1();
              *v523 = 1024;
              OUTLINED_FUNCTION_300_0();
              *&v523[26] = v115;
              *&v523[28] = v116;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl(v117, v118, v119, v120, v121, v122, BYTE3(v496), v123);
            }

LABEL_215:
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417(v351, v352, v353, v354, v355);
            goto LABEL_100;
          }
        }
      }
    }

    if (*(v18 + 401) || (v149 = *(v18 + 696)) != 0 && (v150 = *(v149 + 8)) != 0 && FigMediaSegmentSpecifierGetType(v150) == 1) && (*(v24 + 12))
    {
      OUTLINED_FUNCTION_419_1();
      OUTLINED_FUNCTION_196_1();
      Seconds = CMTimeGetSeconds(&time);
      v125 = Seconds - *(v18 + 88);
      v126 = *(a11 + 3);
      if (v126)
      {
        OUTLINED_FUNCTION_305_1();
        v128 = v127;
        Seconds = CMTimeGetSeconds(v129);
        v125 = v125 + Seconds;
        v126 = *(v128 + 12);
      }

      v130 = &off_196E72000;
      if ((v126 & 1) == 0 && *v11 && !*v18)
      {
        v266 = 0.0;
LABEL_190:
        segPumpGetLastDiscAndDateForTimeReadInPlaylist(*(v18 + 56), &v519, &valuePtr, v125);
        v273 = *(v11 + 88);
        if (v125 <= v266)
        {
          v274 = *&v519;
          v277 = *&v519 + v273;
          *(v11 + 120) = *&v519;
          *(v11 + 928) = v277;
        }

        else
        {
          v274 = v125 - v266;
          v275 = v125 - v266 + v273;
          v276 = *&v519;
          *(v11 + 120) = v125 - v266;
          *(v11 + 928) = v275;
          if (v125 - v266 < v276)
          {
            *(v11 + 120) = v276;
            v274 = v276;
          }
        }

        if (*&valuePtr != 0.0)
        {
          v278 = *&valuePtr + v274 - v125;
          *(v11 + 920) = v278;
          segPumpGetLastKnownContinuousDateInPlaylist(*(v18 + 56), (v11 + 936), v278, v267, v268, v269, v270, v271, v272);
        }

        v487 = v24;
        v279 = dword_1EAF16A30;
        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_201_1();
          v287 = OUTLINED_FUNCTION_141_1(qword_1EAF16A28, v280, v281, v282, v283, v284, v285, v286, v394, v404, v414, v424, v433, v442, a11, v460, v469, cf, v24, v496, SBYTE2(v496), SBYTE3(v496), SBYTE4(v496));
          v295 = OUTLINED_FUNCTION_435_1(v287, v288, v289, v290, v291, v292, v293, v294, v401, v411, v421, v430, v439, v448, v457, v466, v475, cff, v493, v502, v505, type, v514);
          if (OUTLINED_FUNCTION_71_0(v295))
          {
            OUTLINED_FUNCTION_76_1();
            v520 = 136316674;
            *v521 = "segPumpSetAlternateForStream";
            *&v521[8] = 2114;
            OUTLINED_FUNCTION_6_1();
            *v523 = v296;
            *&v523[2] = v125;
            *&v523[10] = v296;
            *&v523[12] = v297;
            *&v523[20] = v296;
            *&v523[22] = v266;
            *&v523[30] = v296;
            *&v523[32] = v298;
            OUTLINED_FUNCTION_145();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl(v299, v300, v301, v302, v303, v304, &unk_1EAF16000, v305);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449(v306, v307, v308, v309, v310);
          v279 = dword_1EAF16A30;
          if (dword_1EAF16A30 >= 2)
          {
            OUTLINED_FUNCTION_201_1();
            v318 = OUTLINED_FUNCTION_141_1(qword_1EAF16A28, v311, v312, v313, v314, v315, v316, v317, v394, v404, v414, v424, v433, v442, v451, v460, v469, cf, v487, v496, SBYTE2(v496), SBYTE3(v496), SBYTE4(v496));
            if (os_log_type_enabled(v318, BYTE3(v496)))
            {
              v50 = HIDWORD(v496);
            }

            else
            {
              v50 = HIDWORD(v496) & 0xFFFFFFFE;
            }

            if (v50)
            {
              OUTLINED_FUNCTION_76_1();
              if (v320)
              {
                v321 = &stru_1F0B1AFB8;
              }

              else
              {
                v321 = v319;
              }

              v322 = *v11;
              time = *v487;
              v323 = CMTimeGetSeconds(&time);
              v520 = 136316162;
              *v521 = "segPumpSetAlternateForStream";
              *&v521[8] = 2114;
              *&v521[10] = v321;
              *&v521[18] = 2048;
              v522 = v322;
              *v523 = 2048;
              *&v523[2] = v323;
              *&v523[10] = 2048;
              *&v523[12] = v519;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl(v324, v325, v326, v327, v328, v329, BYTE3(v496), v330);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_454(v356, v357, v358, v359, v360);
            v279 = dword_1EAF16A30;
            v130 = &off_196E72000;
          }
        }

        *(v11 + 128) = *(v18 + 1064) / v130[154] - (*(v18 + 96) - *(v11 + 120));
        if (v279)
        {
          OUTLINED_FUNCTION_201_1();
          v368 = OUTLINED_FUNCTION_141_1(qword_1EAF16A28, v361, v362, v363, v364, v365, v366, v367, v394, v404, v414, v424, v433, v442, v451, v460, v469, cf, v487, v496, SBYTE2(v496), SBYTE3(v496), SBYTE4(v496));
          v376 = OUTLINED_FUNCTION_435_1(v368, v369, v370, v371, v372, v373, v374, v375, v403, v413, v423, v432, v441, v450, v459, v468, v477, cfh, v495, v504, v506, typea, v516);
          if (OUTLINED_FUNCTION_71_0(v376))
          {
            OUTLINED_FUNCTION_76_1();
            OUTLINED_FUNCTION_318_1();
            *&v521[8] = 2114;
            OUTLINED_FUNCTION_6_1();
            OUTLINED_FUNCTION_228_0();
            OUTLINED_FUNCTION_366_1();
            *&v523[30] = v377;
            *&v523[32] = v378;
            OUTLINED_FUNCTION_145();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl(v379, v380, v381, v382, v383, v384, v50, v385);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449(v386, v387, v388, v389, v390);
        }

        goto LABEL_100;
      }

      v131 = *(v11 + 56);
      if (v131)
      {
        v132 = FigMediaPlaylistGetMediaSegmentSpecifiers(v131);
        if (v132)
        {
          v133 = CFArrayGetCount(v132);
        }

        else
        {
          v133 = 0;
        }

        v262 = *(v11 + 56);
        if (v262)
        {
          v263 = FigMediaPlaylistGetDateStampCount(v262) > 0;
LABEL_179:
          if (*(v12 + 8224) && *(v12 + 24) == 2 || v263)
          {
            v265 = FigRCLGetNumberWithDefault(*(v12 + 9320), @"allowEpsilonHLSSegmentOverlap", 1);
            v264 = 1.0;
            if (v265 && v133 >= 1)
            {
              v264 = vcvtd_n_f64_u64(v133, 0x34uLL);
            }
          }

          else
          {
            LODWORD(Seconds) = *(v12 + 8);
            v264 = *&Seconds;
          }

          if (*(v11 + 872))
          {
            v266 = v264;
          }

          else
          {
            v266 = v264 + 1.0;
          }

          v130 = &off_196E72000;
          goto LABEL_190;
        }
      }

      else
      {
        v133 = 0;
      }

      v263 = 0;
      goto LABEL_179;
    }

    v151 = *(v18 + 120);
    if (v151 > 0.0)
    {
      *(v11 + 120) = v151;
      if (!dword_1EAF16A30)
      {
        goto LABEL_100;
      }

      OUTLINED_FUNCTION_153_0();
      v159 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v152, v153, v154, v155, v156, v157, v158, v394, v404, v414, v424, v433, v442, a11, v460, v469, cf, v487, v496, SBYTE4(v496), SHIWORD(v496), valuePtr);
      v167 = OUTLINED_FUNCTION_161_1(v159, v160, v161, v162, v163, v164, v165, v166, v397, v407, v417, v427, v436, v445, v454, v463, v472, cfc, v490, v499, v511, valuePtr);
      if (!OUTLINED_FUNCTION_28_1(v167))
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_76_1();
      OUTLINED_FUNCTION_373_1();
      v520 = 136315906;
      *v521 = "segPumpSetAlternateForStream";
      *&v521[8] = 2114;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_228_0();
      OUTLINED_FUNCTION_145();
LABEL_94:
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v168, v169, v170, v171, v172, v173, &unk_1EAF16000, v174);
      goto LABEL_215;
    }

    if (*(v18 + 861))
    {
      *(v11 + 120) = *(v18 + 96) - *(v18 + 904);
      if (!dword_1EAF16A30)
      {
        goto LABEL_100;
      }

      OUTLINED_FUNCTION_153_0();
      v182 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v175, v176, v177, v178, v179, v180, v181, v394, v404, v414, v424, v433, v442, a11, v460, v469, cf, v487, v496, SBYTE4(v496), SHIWORD(v496), valuePtr);
      v190 = OUTLINED_FUNCTION_433_1(v182, v183, v184, v185, v186, v187, v188, v189, v398, v408, v418, v428, v437, v446, v455, v464, v473, cfd, v491, v500, v512, valuePtr);
      if (OUTLINED_FUNCTION_71_0(v190))
      {
        OUTLINED_FUNCTION_76_1();
        OUTLINED_FUNCTION_373_1();
        OUTLINED_FUNCTION_318_1();
        *&v521[8] = 2114;
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_228_0();
        OUTLINED_FUNCTION_366_1();
        OUTLINED_FUNCTION_145();
        goto LABEL_57;
      }

      goto LABEL_99;
    }

    if ((*(v24 + 12) & 1) == 0)
    {
      *(v11 + 866) = 1;
      if (!dword_1EAF16A30)
      {
        goto LABEL_100;
      }

      OUTLINED_FUNCTION_153_0();
      v230 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v223, v224, v225, v226, v227, v228, v229, v394, v404, v414, v424, v433, v442, a11, v460, v469, cf, v487, v496, SBYTE4(v496), SHIWORD(v496), valuePtr);
      v238 = OUTLINED_FUNCTION_161_1(v230, v231, v232, v233, v234, v235, v236, v237, v400, v410, v420, v429, v438, v447, v456, v465, v474, cfe, v492, v501, v513, valuePtr);
      if (!OUTLINED_FUNCTION_28_1(v238))
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_76_1();
      OUTLINED_FUNCTION_318_1();
      OUTLINED_FUNCTION_4_1();
      goto LABEL_94;
    }

    OUTLINED_FUNCTION_196_1();
    v331 = CMTimeGetSeconds(&time);
    LODWORD(v332) = *(v12 + 8);
    v333 = v331 - v332 + -1.0;
    *(v11 + 120) = v333;
    if (*(a11 + 12))
    {
      OUTLINED_FUNCTION_305_1();
      v333 = CMTimeGetSeconds(v334) + *(v11 + 120);
      *(v11 + 120) = v333;
    }

    if (v333 < 0.0)
    {
      *(v11 + 120) = 0;
    }

    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_153_0();
      v342 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v335, v336, v337, v338, v339, v340, v341, v394, v404, v414, v424, v433, v442, a11, v460, v469, cf, v487, v496, SBYTE4(v496), SHIWORD(v496), valuePtr);
      v350 = OUTLINED_FUNCTION_161_1(v342, v343, v344, v345, v346, v347, v348, v349, v402, v412, v422, v431, v440, v449, v458, v467, v476, cfg, v494, v503, v515, valuePtr);
      if (!OUTLINED_FUNCTION_28_1(v350))
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_76_1();
      OUTLINED_FUNCTION_373_1();
      v520 = 136315906;
      *v521 = "segPumpSetAlternateForStream";
      *&v521[8] = 2114;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_228_0();
      OUTLINED_FUNCTION_145();
      goto LABEL_94;
    }
  }

LABEL_100:
  if (*(v11 + 857))
  {
    if (*(v12 + 8600) == *v11)
    {
      v196 = *(v12 + 8864);
      *(v12 + 8864) = 0;
    }

    else
    {
      v196 = 0;
    }

    *(v11 + 857) = 0;
    DataCallbackWithOSStatus = segPumpMakeDataCallbackWithOSStatus(v442, v11, *(v12 + 176), 0, 8u, *(v11 + 304), MEMORY[0x1E6960C70], 0, v196, 0, 0, 0);
    if (DataCallbackWithOSStatus)
    {
      return DataCallbackWithOSStatus;
    }
  }

  OUTLINED_FUNCTION_191_1();
  ++*(v11 + 80);
  *(v11 + 858) = 0;
  *(v11 + 401) = 0;
  *(v11 + 874) = 0;
  *(v11 + 876) = 0;
  *(v11 + 1096) = 0u;
  if (!*(v12 + 8896))
  {
    *(v11 + 402) = 1;
  }

  *(v11 + 64) = 0;
  *(v11 + 312) = 0;
  ++*(v11 + 1176);
  v198 = *(v12 + 8328);
  if (v198)
  {
    PathwayID = FigAlternateGetPathwayID(*(v198 + 8));
  }

  else
  {
    PathwayID = @".";
  }

  segPumpStreamUpdateIndexFile(v11, v460, v460, v469, cf, PathwayID);
  time.value = 0;
  v200 = *(v11 + 248);
  if (!v200)
  {
LABEL_132:
    v208 = OUTLINED_FUNCTION_177();
    DataCallbackWithOSStatus = segPumpStopStream(v208, v209, v210);
    if (DataCallbackWithOSStatus)
    {
      return DataCallbackWithOSStatus;
    }

    if (!*(v11 + 1200))
    {
      v215 = nw_activity_create();
      *(v11 + 1200) = v215;
      if (!v215 || !*(*(v48 + 16 * *v11) + 1192))
      {
        goto LABEL_230;
      }

      nw_activity_set_parent_activity();
      if (*(v11 + 1200))
      {
        nw_activity_activate();
      }

      if (*(v48 + 16 * *v11 + 8) != v11)
      {
        goto LABEL_143;
      }

      v216 = nw_activity_create();
      *(v11 + 1208) = v216;
      if (v216)
      {
        if (!*(v11 + 1200) || (nw_activity_set_parent_activity(), *(v11 + 1208)))
        {
          nw_activity_activate();
        }
      }

      else
      {
LABEL_230:
        OUTLINED_FUNCTION_43_1();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

LABEL_143:
    *(v11 + 862) = 1;
    if (*(v12 + 8600) == *v11 && !*(v11 + 864))
    {
      *(v12 + 8221) = 0;
      *(v12 + 384) = 1;
    }

    *(v12 + 8222) = 0;
    *(v11 + 64) = 0;
    if (*(v11 + 1185))
    {
      goto LABEL_147;
    }

    DataCallbackWithOSStatus = segPumpRequestIndexForStream(v442, v12, v11, 0, v211, v212, v213, v214, v394, v404, v414, v424, SBYTE2(v424), BYTE3(v424), SHIDWORD(v424), v433, v442, SWORD2(v442), SBYTE6(v442), SHIBYTE(v442), v451, v460, v469, cf, v487, v496, valuePtr, *(&valuePtr + 1), v518, v519, v520, *&v521[4], *&v521[12], v522, *v523, *&v523[8], *&v523[16], *&v523[24], *&v523[32], v524, time.value, *&time.timescale, time.epoch, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538, v539, v540, v541, v542, v543, v544);
    if (!DataCallbackWithOSStatus)
    {
      if (!*(v12 + 8328))
      {
        OUTLINED_FUNCTION_43_1();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v399, v409, v419);
        v207 = v222;
        goto LABEL_148;
      }

LABEL_147:
      v207 = 0;
LABEL_148:
      OUTLINED_FUNCTION_196_1();
      v217 = OUTLINED_FUNCTION_177();
      segPumpCalculateStreamDurationAndBytesCached(v217, v218, v219, v220);
      return v207;
    }

    return DataCallbackWithOSStatus;
  }

  if (!*(v12 + 8868))
  {
    if (FigContentKeySpecifierGetIsPrefetchKey(v200))
    {
      goto LABEL_128;
    }

    v200 = *(v11 + 248);
  }

  CryptKeyCommonData = segPumpGetCryptKeyCommonData(v200, 0, &time);
  if (CryptKeyCommonData)
  {
    goto LABEL_127;
  }

  if (FigContentKeySpecifierGetKeySystem(*(v11 + 248)) != 1)
  {
    goto LABEL_128;
  }

  value = time.value;
  if (!*(time.value + 96) || !*(time.value + 72))
  {
    goto LABEL_122;
  }

  v203 = *(CMBaseObjectGetVTable() + 16);
  if (*v203 >= 6uLL && v203[20])
  {
    OUTLINED_FUNCTION_197();
    CryptKeyCommonData = v204();
    if (!CryptKeyCommonData)
    {
      value = time.value;
LABEL_122:
      if (!*(value + 136))
      {
        v207 = 0;
LABEL_159:
        CryptKeyReleaseAndClearVideoDecryptor(value);
        CryptKeyReleaseAndClearAudioDecryptor(value);
        OUTLINED_FUNCTION_177();
        segPumpCancelCryptReadAndResetData();
        if (v207)
        {
          return v207;
        }

        goto LABEL_132;
      }

      if (*(value + 112))
      {
        v205 = *(CMBaseObjectGetVTable() + 16);
        if (*v205 >= 6uLL && v205[20])
        {
          OUTLINED_FUNCTION_197();
          CryptKeyCommonData = v206();
          goto LABEL_127;
        }

        goto LABEL_129;
      }

LABEL_128:
      v207 = 0;
      goto LABEL_130;
    }

LABEL_127:
    v207 = CryptKeyCommonData;
    goto LABEL_130;
  }

LABEL_129:
  v207 = 4294954514;
LABEL_130:
  value = time.value;
  if (time.value)
  {
    goto LABEL_159;
  }

  if (!v207)
  {
    goto LABEL_132;
  }

  return v207;
}

const __CFDictionary *FigBytePumpCreateForHTTPChunk_cold_2()
{
  OUTLINED_FUNCTION_257_0();
  result = CFRetain(v2);
  *(v0 + 240) = result;
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"FHRP_InterfaceName");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(v0 + 9064) = Value;
    v5 = CFDictionaryGetValue(*(v0 + 240), @"FHRP_ClientAuditToken");
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *(v0 + 9072) = v5;
    *(v0 + 9080) = FigCFHTTPCopyClientProcessName(v5);
    v6 = CFDictionaryGetValue(*(v0 + 240), @"FHRP_StorageSession");
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *(v0 + 32) = v6;
    result = FigCFDictionaryGetBooleanIfPresent();
    *(v0 + 9833) = *v1 == 0;
  }

  return result;
}

void segPumpCopyProperty_cold_3()
{
  OUTLINED_FUNCTION_471();
  valuePtr[0] = FigAlternateGetPeakBitRate(*(v2 + 8));
  if (valuePtr[0])
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
    v4 = 0;
    *v1 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, valuePtr[1]);
  }

  *v0 = v4;
}

uint64_t segPumpSetProperty_cold_22()
{
  OUTLINED_FUNCTION_369();
  result = FigCFEqual();
  if (!result)
  {
    v3 = v0[33];
    v0[33] = v1;
    CFRetain(v1);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v0[34];
    if (v4)
    {
      CFRelease(v4);
      v0[34] = 0;
    }

    v5 = v0[35];
    if (v5)
    {
      CFRelease(v5);
      v0[35] = 0;
    }

    return segPumpEnsureAndSetupBasicAESProtector(v0);
  }

  return result;
}

void segPumpSetProperty_cold_23(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E695E4D0] == a1;
  *(a2 + 8211) = v2;
  while (!v2)
  {
    v4 = *(a2 + 392);
    if (*(v4 + 16))
    {
      if (*(v4 + 1185))
      {
        OUTLINED_FUNCTION_298();
        segPumpReadOrScheduleIndexFileRead();
        *(v4 + 1185) = 0;
      }
    }

    OUTLINED_FUNCTION_383_0();
  }
}

uint64_t segPumpSetProperty_cold_24(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 9656);
  *(a1 + 9656) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return segPumpRTCReportingUpdatePumpClientName(a1);
}

void segPumpSetProperty_cold_25(uint64_t a1)
{
  if (*(a1 + 8616))
  {
    v3 = *(a1 + 8624);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 8624) = 0;
    }

    AttemptNetworkMonitorSetup(a1);
  }
}

NSObject *segPumpSetProperty_cold_26()
{
  OUTLINED_FUNCTION_369();
  FigHTTPSchedulerRelease(*(v2 + 64));
  *(v0 + 64) = FigHTTPSchedulerRetain(v1, v3);
  FigHTTPSchedulerRelease(*(v0 + 72));
  result = FigHTTPSchedulerRetain(v1, v4);
  *(v0 + 72) = result;
  if (*(v0 + 9728))
  {
    result = *(v0 + 9736);
    if (result)
    {
      FigHTTPSchedulerRelease(result);
      result = FigHTTPSchedulerRetain(v1, v6);
      *(v0 + 9736) = result;
    }
  }

  return result;
}

double segPumpSetProperty_cold_27(const __CFDictionary *a1, uint64_t a2)
{
  memset(&v6, 0, sizeof(v6));
  CMTimeMakeFromDictionary(&v6, a1);
  OUTLINED_FUNCTION_29();
  if (v4)
  {
    time = v6;
    Seconds = CMTimeGetSeconds(&time);
    return segPumpSetExtraHoldbackFromClient(a2, Seconds);
  }

  return result;
}

const __CFNumber *segPumpSetProperty_cold_28(const __CFNumber *result, uint64_t a2)
{
  *(a2 + 8362) = result != 0;
  if (result)
  {
    return CFNumberGetValue(result, kCFNumberSInt64Type, (a2 + 8368));
  }

  return result;
}

double segPumpSentEndCallbackForAnyStream_cold_1()
{
  v1 = OUTLINED_FUNCTION_90_0(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("segPumpSentEndCallbackForAnyStream");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double segPumpSentEndCallbackForAnyStreamHandleTTR_cold_1()
{
  v1 = OUTLINED_FUNCTION_90_0(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("segPumpSentEndCallbackForAnyStreamHandleTTR");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double segPumpSentEndCallbackForAnyStreamHandleTTR_cold_2()
{
  v1 = OUTLINED_FUNCTION_90_0(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("segPumpSentEndCallbackForAnyStreamHandleTTR");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

void segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff_cold_1(_BYTE *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  OUTLINED_FUNCTION_786();
  *a1 = v2;
}

void segPumpCopyParentNWActivity_cold_1()
{
  OUTLINED_FUNCTION_187();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *v0 = v2;

  CFRelease(v1);
}

void segPumpSetWiFiStatsOnNetworkPredictor_cold_1()
{
  OUTLINED_FUNCTION_187();
  cf = 0;
  v2 = FigNetworkWirelessReportingInterfaceCopyWifiStats(&cf);
  *v0 = v2;
  if (!v2)
  {
    StringValue = FigCFDictionaryGetStringValue();
    if (StringValue)
    {
      v4 = CFRetain(StringValue);
    }

    else
    {
      v4 = 0;
    }

    if (FigCFDictionaryGetNumberValue() && *(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v5 = OUTLINED_FUNCTION_188();
      v6(v5);
    }

    if (v4)
    {
      v7 = *v1;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(v7, 0x1F0B63618, v4);
      }

      CFRelease(v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void segPumpMoveStreamAlternateToPenaltyBox_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_323_1();
  OUTLINED_FUNCTION_613();
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -12880, v5, v6, v7, v8, v9);
  StopAllActiveStreams(a1);
}

void MoveAlternateFromValidList_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_323_1();
  OUTLINED_FUNCTION_613();
  OUTLINED_FUNCTION_214_1(v3, v4, v5, v6, v7, v8, v9, v10, v11);

  StopAllActiveStreams(a2);
}

void segPumpHandleLowLatencySetupError_cold_1()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15418, v5, v6, v7, v8, v9);
}

void segPumpHandleLowLatencySetupError_cold_2()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15417, v5, v6, v7, v8, v9);
}

void segPumpHandleLowLatencySetupError_cold_3()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15414, v5, v6, v7, v8, v9);
}

void segPumpHandleLowLatencySetupError_cold_4()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15415, v5, v6, v7, v8, v9);
}

void segPumpHandleLowLatencySetupError_cold_5()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15412, v5, v6, v7, v8, v9);
}

void segPumpHandleLowLatencySetupError_cold_6()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15411, v5, v6, v7, v8, v9);
}

void segPumpHandleLowLatencySetupError_cold_7()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15410, v5, v6, v7, v8, v9);
}

void segPumpAddFigAlternate_cold_1()
{
  OUTLINED_FUNCTION_187();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *v0 = v2;

  AlternateEntryFree(v1);
}

BOOL segPumpCalculateDiscoDomainOffset_cold_1()
{
  OUTLINED_FUNCTION_471();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  v3 = v2;
  *v0 = v2;
  segPumpFreeDiscoQueue(v1);
  return v3 == 0;
}

void segPumpSetStartingOffset_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_114_1();
  OUTLINED_FUNCTION_214_1(v3, a1, (v2 + 408), -16831, v4, @"START-TIME is too close to live", v5, v6, v7);
  *(a1 + 112) = 1;
}

double segPumpStreamProceedAfterMediaAndKeyArrival_cold_1()
{
  OUTLINED_FUNCTION_216_0();
  v3 = v2;
  segPumpMarkMediaFileAsDelivered(v2, v4, v5);
  if (FigMediaSegmentSpecifierGetType(v0) != 1)
  {
    ++*(v3 + 8664);
    if (segPumpConnectedInterfaceIsWWAN(v3))
    {
      ++*(v3 + 8672);
    }

    *(v3 + 8744) = FigMediaSegmentSpecifierGetTimeInSeconds(v0) + *(v3 + 8744);
    *(v3 + 8752) = *(segPumpGetMediaFilePrivateData(v0, v7, v8, v9, v10, v11, v12, v13) + 10) + *(v3 + 8752);
    *(v1 + 1120) = vaddq_s64(*(v1 + 1120), vdupq_n_s64(1uLL));
    result = FigMediaSegmentSpecifierGetTimeInSeconds(v0) + *(v1 + 1136);
    *(v1 + 1136) = result;
    if (*(v1 + 816))
    {
      ++*(v1 + 1144);
    }

    if (*v1 == 1)
    {
      v14 = 8840;
    }

    else
    {
      if (*v1)
      {
        return result;
      }

      v14 = 8832;
    }

    result = FigMediaSegmentSpecifierGetTimeInSeconds(v0) + *(v3 + v14);
    *(v3 + v14) = result;
  }

  return result;
}

void segPumpRTCReportingUpdateMediaTimerStats_cold_1()
{
  OUTLINED_FUNCTION_216_0();
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, v2);
  if (*v1)
  {
    if (*v1 != 1 || !*(v0 + 9232) || !*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      goto LABEL_9;
    }
  }

  else if (!*(v0 + 9232) || !*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_606();
  v4();
LABEL_9:
  if (v3)
  {
    CFRelease(v3);
  }
}

void segPumpGetMediaDataMemoryPool_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, CMMemoryPoolRef *a4)
{
  OUTLINED_FUNCTION_180_1();
  CFDictionarySetValue(v8, *MEMORY[0x1E69628C8], v4);
  FigCFDictionarySetDouble();
  if (*(a3 + 9304))
  {
    FigCFDictionarySetValue();
  }

  *a4 = CMMemoryPoolCreate(v5);

  CFRelease(v4);
}

void segPumpRTCReportingLogAndUpdateStats_cold_1(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  if (*(a1 + 9232))
  {
    OUTLINED_FUNCTION_216_0();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_606();
      v5();
    }
  }

  CFRelease(cf);
}

void segPumpAddMediaSegmentNoResponseErrorIfNecessary_cold_1()
{
  OUTLINED_FUNCTION_257_0();
  v2 = *(v1 + 8);
  if (v2)
  {
    FigMediaSegmentSpecifierGetTimeInSeconds(v2);
  }

  FigGetAllocatorForMedia();
  v3 = *(v0 + 696);
  if (v3)
  {
    v5 = *(v3 + 8);
    v4 = "media file";
    if (v5 && FigMediaSegmentSpecifierGetType(v5) == 1)
    {
      v4 = "map";
    }
  }

  else
  {
    v4 = "media file";
  }

  v6 = OUTLINED_FUNCTION_173_0();
  v9 = CFStringCreateWithFormat(v6, v7, v8);
  OUTLINED_FUNCTION_175_0();
  v10 = OUTLINED_FUNCTION_177();
  segPumpAppendErrorLogEntry(v10, v11, v12, -12889, v13, v9, 0, 1, v4, SHIDWORD(v4));

  CFRelease(v9);
}

uint64_t segPumpSetMetricEventTimeline_cold_1(const __CFArray *a1, CFArrayRef *a2, uint64_t a3, int *a4)
{
  if (CFArrayGetCount(a1) < 1)
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(*a2, v6);
      if (!*(*(OUTLINED_FUNCTION_356_1() + 16) + 40))
      {
        break;
      }

      v7 = OUTLINED_FUNCTION_249();
      v9 = v8(v7);
      if (v9)
      {
        goto LABEL_8;
      }

      if (++v6 >= CFArrayGetCount(*a2))
      {
        goto LABEL_6;
      }
    }

    v9 = -12782;
  }

LABEL_8:
  *a4 = v9;

  return FigCFArrayRemoveAllValues();
}

void segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey_cold_1()
{
  OUTLINED_FUNCTION_187();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  CFRelease(v1);

  CFRelease(v0);
}

uint64_t figTTMLDocumentWriterForiTT_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = 0;
  switch(a2)
  {
    case 2:
      if (*(DerivedStorage + 16))
      {
        goto LABEL_15;
      }

      started = FigTTMLDocumentWriterStartElement(a1, 8);
      if (!started)
      {
        started = FigTTMLDocumentWriterEndElement(a1);
        if (!started)
        {
          goto LABEL_15;
        }
      }

      return started;
    case 3:
      FigTTMLDocumentWriterGetCMBaseObject();
      v16 = CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v18 = Mutable;
        CFDictionaryAddValue(Mutable, @"style", @"normal");
        CFDictionaryAddValue(v18, @"region", @"bottom");
        v33.value = 0;
        *&v33.timescale = FigTTMLDocumentWriterStateGetAttributes(*(v16 + 8));
        v33.epoch = a1;
        OUTLINED_FUNCTION_0_2();
        v19 = OUTLINED_FUNCTION_1_1();
        CFDictionaryApplyFunction(v19, v20, v21);
        CFRelease(v18);
LABEL_15:
        v6 = 0;
        goto LABEL_26;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, LODWORD(v33.value), v33.timescale);
      value_low = v30;
      if (!v30)
      {
        goto LABEL_15;
      }

      return value_low;
    case 8:
      FigTTMLDocumentWriterGetCMBaseObject();
      v8 = CMBaseObjectGetDerivedStorage();
      v9 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v9)
      {
        v10 = v9;
        CFDictionaryAddValue(v9, @"xmlns:xsi", @"http://www.w3.org/2001/XMLSchema-instance");
        CFDictionaryAddValue(v10, @"xmlns:tt", @"http://www.w3.org/ns/ttml");
        CFDictionaryAddValue(v10, @"http://www.w3.org/ns/ttml#parameter timeBase", @"smpte");
        v11 = FigCFDictionarySetInt32();
        if (v11 || (CMTimeMake(&v33, 999, 1000), OUTLINED_FUNCTION_1_1(), v11 = FigCFDictionarySetCMTime(), v11))
        {
          value_low = v11;
        }

        else
        {
          CFDictionaryAddValue(v10, @"http://www.w3.org/ns/ttml#parameter dropMode", @"nonDrop");
          v33.value = 0;
          *&v33.timescale = FigTTMLDocumentWriterStateGetAttributes(*(v8 + 8));
          v33.epoch = a1;
          OUTLINED_FUNCTION_0_2();
          v12 = OUTLINED_FUNCTION_1_1();
          CFDictionaryApplyFunction(v12, v13, v14);
          value_low = LODWORD(v33.value);
        }

        CFRelease(v10);
        if (value_low)
        {
          return value_low;
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, LODWORD(v33.value), v33.timescale);
        value_low = v29;
        if (v29)
        {
          return value_low;
        }
      }

      started = FigTTMLDocumentWriterStartElement(*v5, a2);
      if (started)
      {
        return started;
      }

      *(v5 + 16) = 1;
      return FigTTMLDocumentWriterStateStartElement(*(v5 + 8), a2);
    case 9:
      if (*(DerivedStorage + 17))
      {
        goto LABEL_25;
      }

      started = FigTTMLDocumentWriterStartElement(a1, 12);
      if (started)
      {
        return started;
      }

      v22 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v22)
      {
        v23 = v22;
        v24 = FigTTMLDocumentWriterStartElement(a1, 13);
        if (!v24)
        {
          CFDictionaryAddValue(v23, @"http://www.w3.org/XML/1998/namespace id", @"normal");
          CFDictionaryAddValue(v23, @"http://www.w3.org/ns/ttml#styling fontFamily", @"sansSerif");
          CFDictionaryAddValue(v23, @"http://www.w3.org/ns/ttml#styling fontWeight", @"normal");
          CFDictionaryAddValue(v23, @"http://www.w3.org/ns/ttml#styling fontStyle", @"normal");
          CFDictionaryAddValue(v23, @"http://www.w3.org/ns/ttml#styling color", @"white");
          CFDictionaryAddValue(v23, @"http://www.w3.org/ns/ttml#styling fontSize", @"100%");
          v33.value = 0;
          *&v33.timescale = 0;
          v33.epoch = a1;
          OUTLINED_FUNCTION_0_2();
          v25 = OUTLINED_FUNCTION_1_1();
          CFDictionaryApplyFunction(v25, v26, v27);
          v24 = FigTTMLDocumentWriterEndElement(a1);
        }

        value_low = v24;
        CFRelease(v23);
        if (!value_low)
        {
LABEL_24:
          started = FigTTMLDocumentWriterEndElement(a1);
          if (started)
          {
            return started;
          }

LABEL_25:
          v6 = 1;
LABEL_26:
          started = FigTTMLDocumentWriterStartElement(*v5, a2);
          if (started)
          {
            return started;
          }

          if (a2 == 12)
          {
            *(v5 + 17) = 1;
            if ((v6 & 1) == 0)
            {
              return FigTTMLDocumentWriterStateStartElement(*(v5 + 8), a2);
            }
          }

          else if (!v6)
          {
            return FigTTMLDocumentWriterStateStartElement(*(v5 + 8), a2);
          }

          *(v5 + 18) = 1;
          return FigTTMLDocumentWriterStateStartElement(*(v5 + 8), a2);
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, LODWORD(v33.value), v33.timescale);
        value_low = v31;
        if (!v31)
        {
          goto LABEL_24;
        }
      }

      return value_low;
    default:
      goto LABEL_26;
  }
}

uint64_t figTTMLDocumentWriterForiTT_EndElement(uint64_t a1)
{
  context[7] = *MEMORY[0x1E69E9840];
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigTTMLDocumentWriterStateGetCurrentElementType(*(DerivedStorage + 8)) != 8 || *(DerivedStorage + 18))
  {
    goto LABEL_26;
  }

  v20 = v1;
  v21 = DerivedStorage;
  started = FigTTMLDocumentWriterStartElement(a1, 9);
  if (!started)
  {
    v5 = 0;
    context[3] = @"top";
    context[4] = @"bottom";
    context[5] = @"right";
    context[6] = @"left";
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
        v16 = v17;
        goto LABEL_21;
      }

      v7 = Mutable;
      v8 = FigTTMLDocumentWriterStartElement(a1, 10);
      if (v8)
      {
        goto LABEL_19;
      }

      if (FigCFEqual())
      {
        v9 = @"top";
        v10 = @"0% 0%";
        v11 = @"100% 15%";
        v12 = kFigTTML_AttributeValue_tts_textAlign_center;
        v13 = kFigTTML_AttributeKey_tts_displayAlign;
        v14 = kFigTTML_AttributeValue_tts_displayAlign_before;
      }

      else if (FigCFEqual())
      {
        v9 = @"bottom";
        v10 = @"0% 85%";
        v11 = @"100% 15%";
        v12 = kFigTTML_AttributeValue_tts_textAlign_center;
        v13 = kFigTTML_AttributeKey_tts_displayAlign;
        v14 = kFigTTML_AttributeValue_tts_displayAlign_after;
      }

      else
      {
        if (FigCFEqual())
        {
          v9 = @"right";
          v10 = @"85% 0%";
        }

        else
        {
          if (!FigCFEqual())
          {
            goto LABEL_17;
          }

          v9 = @"left";
          v10 = @"15% 0%";
        }

        v11 = @"15% 100%";
        v12 = kFigTTML_AttributeValue_tts_textAlign_start;
        v13 = kFigTTML_AttributeKey_tts_writingMode;
        v14 = kFigTTML_AttributeValue_tts_writingMode_TopToBottomAndRightToLeft;
      }

      CFDictionaryAddValue(v7, @"http://www.w3.org/XML/1998/namespace id", v9);
      CFDictionaryAddValue(v7, @"http://www.w3.org/ns/ttml#styling origin", v10);
      CFDictionaryAddValue(v7, @"http://www.w3.org/ns/ttml#styling extent", v11);
      CFDictionaryAddValue(v7, @"http://www.w3.org/ns/ttml#styling textAlign", *v12);
      CFDictionaryAddValue(v7, *v13, *v14);
LABEL_17:
      context[0] = 0;
      context[1] = 0;
      context[2] = a1;
      OUTLINED_FUNCTION_0_2();
      CFDictionaryApplyFunction(v7, v15, context);
      v16 = LODWORD(context[0]);
      if (!LODWORD(context[0]))
      {
        v8 = FigTTMLDocumentWriterEndElement(a1);
LABEL_19:
        v16 = v8;
      }

      CFRelease(v7);
LABEL_21:
      if (v16)
      {
        return v16;
      }

      v5 += 8;
      if (v5 == 32)
      {
        started = FigTTMLDocumentWriterEndElement(a1);
        DerivedStorage = v21;
        if (!started)
        {
LABEL_26:
          started = FigTTMLDocumentWriterEndElement(*DerivedStorage);
          if (!started)
          {
            return FigTTMLDocumentWriterStateEndElement(*(DerivedStorage + 8));
          }
        }

        return started;
      }
    }
  }

  return started;
}

uint64_t figTTMLDocumentWriterForiTT_SetAttribute(uint64_t a1, const __CFString *a2, __CFString *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x19A8D3660](&getAttributeValidatorDict_sOnce, initAttributeValidatorDict);
  v7 = sAttributeValidatorDict;
  if (FigTTMLDocumentWriterStateGetCurrentElementType(DerivedStorage[1]) == 10)
  {
    Attributes = FigTTMLDocumentWriterStateGetAttributes(DerivedStorage[1]);
    CFDictionaryGetValue(Attributes, @"http://www.w3.org/XML/1998/namespace id");
    if (FigCFEqual())
    {
      if (FigCFEqual() && FigCFEqual())
      {
        a3 = @"15% 0%";
      }
    }
  }

  if (!CFDictionaryContainsKey(v7, a2))
  {
    result = CFStringHasPrefix(a2, @"xmlns:");
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v7, a2);
  if (!Value || (result = Value(a1, a3), result))
  {
LABEL_11:
    result = FigTTMLDocumentWriterSetAttribute(*DerivedStorage, a2, a3);
    if (!result)
    {
      FigTTMLDocumentWriterStateSetAttribute(DerivedStorage[1], a2, a3);
      return 0;
    }
  }

  return result;
}

uint64_t writeAttributeIfNotWrittenYet(uint64_t key, uint64_t a2, uint64_t a3)
{
  if (!*a3)
  {
    v5 = key;
    v6 = *(a3 + 8);
    if (!v6 || (key = CFDictionaryContainsKey(v6, v5), !key))
    {
      key = FigTTMLDocumentWriterSetAttribute(*(a3 + 16), v5, a2);
      if (key)
      {
        *a3 = key;
      }
    }
  }

  return key;
}

uint64_t FigSampleBufferConsumerOPTSAutoOrderCreate(const __CFAllocator *a1, const void *a2, const char *a3, CFTypeRef *a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  v8 = 4294954535;
  if (a2)
  {
    if (a4)
    {
      FigSampleBufferConsumerGetClassID();
      v8 = CMDerivedObjectCreate();
      if (!v8)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v10 = CFRetain(a2);
        v11 = MEMORY[0x1E695E480];
        *DerivedStorage = v10;
        if (a3)
        {
          v12 = a3;
        }

        else
        {
          v12 = "-";
        }

        *(DerivedStorage + 48) = CFStringCreateWithCString(*v11, v12, 0x8000100u);
        v13 = FigSimpleMutexCreate();
        *(DerivedStorage + 16) = v13;
        if (v13)
        {
          v14 = MEMORY[0x1E6960C70];
          *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
          *(DerivedStorage + 40) = *(v14 + 16);
          CallbacksForSampleBuffersSortedByOutputPTS = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
          v8 = CMBufferQueueCreate(a1, 0, CallbacksForSampleBuffersSortedByOutputPTS, (DerivedStorage + 8));
          if (!v8)
          {
            *a4 = 0;
          }
        }

        else
        {
          return 4294954510;
        }
      }
    }
  }

  return v8;
}

uint64_t sbcAutoOrder_SendSampleBuffer(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    goto LABEL_40;
  }

  FigEndpointStreamAudioEngineSbufTracerDebugPrint(a2);
  CMSampleBufferGetOutputPresentationTimeStamp(time1, a2);
  cf[12] = *time1;
  v5 = time1[12];
  v73 = *&time1[8];
  CMSampleBufferGetOutputDuration(time1, a2);
  OUTLINED_FUNCTION_0_3();
  time2 = **&MEMORY[0x1E6960C88];
  v6 = CMTimeCompare(time1, &time2);
  if (!v6)
  {
    if (dword_1EAF16A50)
    {
      v50 = OUTLINED_FUNCTION_4_2(v6, v7, v8, v9, v10, v11, v12, v13, v58, v59, type, type_8, v65, v66, lhs.value);
      if (os_log_type_enabled(v50, typec))
      {
        value_low = LODWORD(lhs.value);
      }

      else
      {
        value_low = lhs.value & 0xFFFFFFFE;
      }

      if (value_low)
      {
        LODWORD(time2.value) = 136315394;
        *(&time2.value + 4) = "sbcAutoOrder_SendSampleBuffer";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = a2;
        OUTLINED_FUNCTION_7_1(value_low, v51, time1, v52, &dword_1962D5000, v53, v54, "<<<< SBufConsumerOPTSAutoOrder >>>> %s: infinite sbuf. SendAllPendingSampleBuffer Sbuf=%p");
      }

      OUTLINED_FUNCTION_1_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    sbcAutoOrder_SendAllPendingSampleBuffer(a1);
    goto LABEL_40;
  }

  v14 = CMGetAttachment(a2, @"SBUFForAutoOrder", 0);
  if (v14 == *MEMORY[0x1E695E4D0])
  {
    if ((v5 & 1) == 0 || (*(DerivedStorage + 36) & 1) != 0 && (OUTLINED_FUNCTION_0_3(), v14 = OUTLINED_FUNCTION_5_2(v40, v41, v42, v43, v44, v45, v46, v47, v58, v59, type, type_8, v65, v66, lhs.value, *&lhs.timescale, lhs.epoch, v68, *&time2.value, time2.epoch, v70, *time1), v14 <= 0))
    {
      updated = sbcAutoOrder_SendSbufAndUpdateLastOPTS(a1, a2);
LABEL_20:
      v39 = updated;
      goto LABEL_41;
    }

    if (dword_1EAF16A50)
    {
      v48 = OUTLINED_FUNCTION_4_2(v14, v15, v16, v17, v18, v19, v20, v21, v58, v59, type, type_8, v65, v66, lhs.value);
      if (os_log_type_enabled(v48, typeb))
      {
        v49 = LODWORD(lhs.value);
      }

      else
      {
        v49 = lhs.value & 0xFFFFFFFE;
      }

      if (v49)
      {
        OUTLINED_FUNCTION_0_3();
        CMTimeGetSeconds(time1);
        LODWORD(time2.value) = 136315650;
        OUTLINED_FUNCTION_3_1();
        _os_log_send_and_compose_impl(v49, 0, time1, 128, &dword_1962D5000, v48, typeb, "<<<< SBufConsumerOPTSAutoOrder >>>> %s: saving to pending sbuf.  Sbuf=%@, opts=%1.3f");
      }

      OUTLINED_FUNCTION_1_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBufferQueueEnqueue(*(DerivedStorage + 8), a2);
    CMRemoveAttachment(a2, @"SBUFForAutoOrder");
LABEL_40:
    v39 = 0;
    goto LABEL_41;
  }

  if (v5 & 1) != 0 && (*(DerivedStorage + 36))
  {
    OUTLINED_FUNCTION_0_3();
    if (OUTLINED_FUNCTION_5_2(v22, v23, v24, v25, v26, v27, v28, v29, v58, v59, type, type_8, v65, v66, lhs.value, *&lhs.timescale, lhs.epoch, v68, *&time2.value, time2.epoch, v70, *time1))
    {
      if (dword_1EAF16A50)
      {
        LODWORD(lhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_1_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      updated = sbcAutoOrder_SendAllPendingSampleBuffer(a1);
      if (updated)
      {
        goto LABEL_20;
      }
    }
  }

  updated = sbcAutoOrder_SendSbufAndUpdateLastOPTS(a1, a2);
  if (updated)
  {
    goto LABEL_20;
  }

  *&typea.value = *(DerivedStorage + 24);
  typea.epoch = *(DerivedStorage + 40);
  v31 = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  memset(time1, 0, sizeof(time1));
  if (CMBufferQueueIsEmpty(*(v31 + 8)))
  {
LABEL_15:
    v39 = 0;
    goto LABEL_16;
  }

  *time1 = *v31;
  CMTimeMake(&time2, 10, 1000);
  lhs = typea;
  CMTimeAdd(&time1[8], &lhs, &time2);
  cf[0] = 0;
  v32 = *MEMORY[0x1E695E480];
  CallbacksForSampleBuffersSortedByOutputPTS = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
  v34 = CMBufferQueueCreate(v32, 0, CallbacksForSampleBuffersSortedByOutputPTS, cf);
  if (!v34)
  {
    OUTLINED_FUNCTION_2_2();
    v34 = CMBufferQueueCallForEachBuffer(v35, v36, time1);
    if (!v34)
    {
      v37 = *(v31 + 8);
      v38 = cf[0];
      *(v31 + 8) = cf[0];
      if (v38)
      {
        CFRetain(v38);
      }

      if (v37)
      {
        CFRelease(v37);
      }

      goto LABEL_15;
    }
  }

  v39 = v34;
LABEL_16:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_41:
  FigSimpleMutexUnlock();
  return v39;
}

uint64_t sbcAutoOrder_SendAllPendingSampleBuffer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CMBufferQueueIsEmpty(*(DerivedStorage + 8)))
  {
    refcon = *DerivedStorage;
    v6 = *MEMORY[0x1E6960C88];
    v7 = *(MEMORY[0x1E6960C88] + 16);
    v8 = 0;
    OUTLINED_FUNCTION_2_2();
    result = CMBufferQueueCallForEachBuffer(v2, v3, &refcon);
    if (result)
    {
      return result;
    }

    CMBufferQueueReset(*(DerivedStorage + 8));
  }

  return 0;
}

CFMutableArrayRef FigStreamPlaylistParserCopySerializedRepresentationForMediaGroup(uint64_t a1, const __CFDictionary *a2)
{
  if (FigCFDictionaryGetCount() < 1)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v7, v8);
    return 0;
  }

  v7 = a1;
  CFDictionaryApplyFunction(a2, streamPlaylistParser_copySerializedRepresentationForMediaGroupApplier, &Mutable);
  return Mutable;
}

double FigStreamPlaylistParserCreateMediaGroup(const __CFArray *a1, void *a2, __CFDictionary **a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (a3)
    {
      if (Count >= 1)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v10 = Mutable;
          v11 = CFArrayGetCount(a1);
          if (v11 < 1)
          {
            if (!a2)
            {
LABEL_25:
              *a3 = v10;
              return result;
            }

            v14 = 0;
LABEL_24:
            *a2 = v14;
            goto LABEL_25;
          }

          v12 = v11;
          v23 = a2;
          v24 = a3;
          v13 = 0;
          v14 = 0;
          v15 = *MEMORY[0x1E6962FF8];
          v16 = *MEMORY[0x1E6962F28];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
            v18 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v19 = CFRetain(ValueAtIndex);
            }

            else
            {
              v19 = 0;
            }

            Value = CFDictionaryGetValue(v18, v15);
            v21 = Value;
            if (Value)
            {
              CFRetain(Value);
              CFDictionarySetValue(v10, v21, v19);
            }

            if (!v14)
            {
              v22 = CFDictionaryGetValue(v18, v16);
              v14 = v22;
              if (v22)
              {
                CFRetain(v22);
              }
            }

            if (v21)
            {
              CFRelease(v21);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            ++v13;
          }

          while (v12 != v13);
          a2 = v23;
          if (v23)
          {
            a3 = v24;
            goto LABEL_24;
          }

          *v24 = v10;
          if (v14)
          {
            CFRelease(v14);
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();

          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }
    }
  }

  return result;
}

double streamPlaylistParser_serializeTaggedRangeEntries(const __CFArray *a1, CFMutableArrayRef *a2)
{
  if (a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v63 = v2;
      v64 = a2;
      v7 = 0;
      v8 = *MEMORY[0x1E69630F0];
      v77 = *MEMORY[0x1E69630E0];
      v76 = *MEMORY[0x1E69630D0];
      v75 = *MEMORY[0x1E69630E8];
      v74 = *MEMORY[0x1E69630D8];
      v73 = *MEMORY[0x1E6963098];
      v72 = *MEMORY[0x1E6962F00];
      key = *MEMORY[0x1E6962F08];
      v9 = *MEMORY[0x1E695E4D0];
      v10 = *MEMORY[0x1E695E4C0];
      v70 = *MEMORY[0x1E6962F10];
      v69 = *MEMORY[0x1E6963118];
      v68 = *MEMORY[0x1E6963120];
      v67 = *MEMORY[0x1E6963128];
      v66 = *MEMORY[0x1E69630F8];
      v65 = *MEMORY[0x1E6962EE8];
      v11 = *MEMORY[0x1E6962FC8];
      v12 = MEMORY[0x1E695E9D8];
      while (1)
      {
        v13 = MEMORY[0x1E695E9E8];
        v14 = a1 ? CFArrayGetCount(a1) : 0;
        if (v7 >= v14)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        v16 = FigGetAllocatorForMedia();
        v17 = v12;
        v18 = CFDictionaryCreateMutable(v16, 0, v12, v13);
        if (v18)
        {
          v19 = v18;
          FigDateRangeSpecifierGetMetadataDict(ValueAtIndex);
          v20 = OUTLINED_FUNCTION_8_1();
          v21 = v8;
          FigWireDictionarySetCFDictionary(v20, v8, v22);
          if (v23 || (FigDateRangeSpecifierGetIdentifier(ValueAtIndex), v24 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFString(v24, v77, v25), v26) || (FigDateRangeSpecifierGetTaggedRangeClass(ValueAtIndex), v27 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFString(v27, v76, v28), v29) || (FigDateRangeSpecifierGetTaggedRangeLine(ValueAtIndex), v30 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFString(v30, v75, v31), v32) || (FigDateRangeSpecifierGetTaggedRangeCue(ValueAtIndex), v33 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFString(v33, v74, v34), v35) || (FigDateRangeSpecifierGetStartDate(ValueAtIndex), v36 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFDate(v36, v73, v37), v38) || (FigDateRangeSpecifierGetEndDate(ValueAtIndex), v39 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFDate(v39, v72, v40), v41) || (FigDateRangeSpecifierGetEndOnNext(ValueAtIndex) ? (v42 = v9) : (v42 = v10), (CFDictionarySetValue(v19, key, v42), FigDateRangeSpecifierGetEndOnNextSet(ValueAtIndex)) ? (v43 = v9) : (v43 = v10), (CFDictionarySetValue(v19, v70, v43), FigDateRangeSpecifierGetScte35cmd(ValueAtIndex), v44 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFData(v44, v69, v45), v46) || (FigDateRangeSpecifierGetScte35in(ValueAtIndex), v47 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFData(v47, v68, v48), v49) || (FigDateRangeSpecifierGetScte35out(ValueAtIndex), v50 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFData(v50, v67, v51), v52) || (FigDateRangeSpecifierGetDuration(ValueAtIndex), FigCFDictionarySetDouble(), FigDateRangeSpecifierGetPlannedDuration(ValueAtIndex), FigCFDictionarySetDouble(), FigDateRangeSpecifierGetTagsFirstFoundDateDict(ValueAtIndex), v53 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFDictionary(v53, v66, v54), v55) || (FigDateRangeSpecifierGetDiscoveryTimestamp(ValueAtIndex), v56 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFDate(v56, v65, v57), v58) || (FigDateRangeSpecifierGetModificationTimestamp(ValueAtIndex), v59 = OUTLINED_FUNCTION_8_1(), FigWireDictionarySetCFDate(v59, v11, v60), v61)))
          {
            CFRelease(v19);
LABEL_33:
            CFRelease(Mutable);
            return result;
          }

          CFArrayAppendValue(Mutable, v19);
          CFRelease(v19);
        }

        else
        {
          v21 = v8;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_6_3();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, v64, v65);
          if (v62)
          {
            goto LABEL_33;
          }

          CFArrayAppendValue(Mutable, 0);
        }

        v12 = v17;
        ++v7;
        v8 = v21;
      }

      *v64 = Mutable;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t FigStreamPlaylistParserSerializeMultivariantPlaylist(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v76, v77, v79);
    v68 = v73;
    goto LABEL_51;
  }

  v6 = Mutable;
  FigMultivariantPlaylistGetPlaylistVariables(v3);
  v7 = OUTLINED_FUNCTION_283();
  FigWireDictionarySetCFDictionary(v7, v8, v9);
  if (v10)
  {
    goto LABEL_24;
  }

  Alternates = FigMultivariantPlaylistGetAlternates(v3);
  if (!Alternates || CFArrayGetCount(Alternates) < 1)
  {
    goto LABEL_8;
  }

  v12 = FigGetAllocatorForMedia();
  value = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
  if (value)
  {
    FigMultivariantPlaylistGetAlternates(v3);
    FigCFArrayApplyFunction();
    CFDictionarySetValue(v6, *MEMORY[0x1E6962F18], value);
    CFRelease(value);
    goto LABEL_8;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v76, v77, v79);
  if (!v75)
  {
LABEL_8:
    FigMultivariantPlaylistGetMediaSelectionArray(v3);
    v13 = OUTLINED_FUNCTION_283();
    FigWireDictionarySetCFArray(v13, v14, v15);
    if (!v16)
    {
      if (FigMultivariantPlaylistGetAudioGroups(v3))
      {
        AudioGroups = FigMultivariantPlaylistGetAudioGroups(v3);
        v18 = streamPlaylistParser_copySerializedRepresentationForMediaGroups(AudioGroups);
        if (v18)
        {
          v19 = v18;
          OUTLINED_FUNCTION_33_1(v18, *MEMORY[0x1E6962E90]);
          CFRelease(v19);
        }
      }

      if (FigMultivariantPlaylistGetVideoGroups(v3))
      {
        VideoGroups = FigMultivariantPlaylistGetVideoGroups(v3);
        v21 = streamPlaylistParser_copySerializedRepresentationForMediaGroups(VideoGroups);
        if (v21)
        {
          v22 = v21;
          OUTLINED_FUNCTION_33_1(v21, *MEMORY[0x1E6963110]);
          CFRelease(v22);
        }
      }

      if (FigMultivariantPlaylistGetSubtitleGroups(v3))
      {
        SubtitleGroups = FigMultivariantPlaylistGetSubtitleGroups(v3);
        v24 = streamPlaylistParser_copySerializedRepresentationForMediaGroups(SubtitleGroups);
        if (v24)
        {
          v25 = v24;
          OUTLINED_FUNCTION_33_1(v24, *MEMORY[0x1E69630B8]);
          CFRelease(v25);
        }
      }

      if (FigMultivariantPlaylistGetClosedCaptionGroups(v3))
      {
        ClosedCaptionGroups = FigMultivariantPlaylistGetClosedCaptionGroups(v3);
        v27 = streamPlaylistParser_copySerializedRepresentationForMediaGroups(ClosedCaptionGroups);
        if (v27)
        {
          v28 = v27;
          OUTLINED_FUNCTION_33_1(v27, *MEMORY[0x1E6962EA8]);
          CFRelease(v28);
        }
      }

      FigMultivariantPlaylistGetContentSteeringServerURL(v3);
      v29 = OUTLINED_FUNCTION_283();
      FigWireDictionarySetCFURL(v29, v30, v31);
      if (!v32)
      {
        FigMultivariantPlaylistGetContentSteeringInitPathwayID(v3);
        v33 = OUTLINED_FUNCTION_283();
        FigWireDictionarySetCFString(v33, v34, v35);
        if (!v36)
        {
          FigMultivariantPlaylistHasStartTime(v3);
          v37 = OUTLINED_FUNCTION_283();
          CFDictionarySetValue(v37, v38, v39);
          FigMultivariantPlaylistIsStartTimePrecise(v3);
          v40 = OUTLINED_FUNCTION_283();
          CFDictionarySetValue(v40, v41, v42);
          FigMultivariantPlaylistHasIndependentSegments(v3);
          v43 = OUTLINED_FUNCTION_283();
          CFDictionarySetValue(v43, v44, v45);
          FigMultivariantPlaylistGetVersion(v3);
          OUTLINED_FUNCTION_283();
          FigCFDictionarySetInt64();
          FigMultivariantPlaylistGetStartTimeValue(v3);
          OUTLINED_FUNCTION_283();
          FigCFDictionarySetDouble();
        }
      }
    }
  }

LABEL_24:
  SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(v3);
  v47 = FigGetAllocatorForMedia();
  theArray = CFArrayCreateMutable(v47, 0, MEMORY[0x1E695E9C0]);
  if (!theArray)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v76, v77, v79);
    v68 = v74;
    goto LABEL_43;
  }

  if (!SessionDataSpecifiers || (Count = CFArrayGetCount(SessionDataSpecifiers), Count < 1))
  {
LABEL_39:
    CFDictionarySetValue(v6, *MEMORY[0x1E6963060], theArray);
    CFRelease(theArray);
    cf = 0;
    goto LABEL_44;
  }

  v78 = v2;
  v80 = v3;
  v81 = v6;
  v48 = 0;
  v49 = *MEMORY[0x1E6963070];
  v50 = *MEMORY[0x1E6963018];
  v51 = *MEMORY[0x1E6963080];
  v52 = *MEMORY[0x1E6963078];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SessionDataSpecifiers, v48);
    if (!ValueAtIndex)
    {
      v68 = 0;
      goto LABEL_42;
    }

    v54 = ValueAtIndex;
    v55 = FigGetAllocatorForMedia();
    v56 = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v56)
    {
      break;
    }

    v57 = v56;
    FigSessionDataSpecifierGetIdentifier(v54);
    v58 = OUTLINED_FUNCTION_31_1();
    FigWireDictionarySetCFString(v58, v49, v59);
    if (v60 || (FigSessionDataSpecifierGetURL(v54), v61 = OUTLINED_FUNCTION_31_1(), FigWireDictionarySetCFURL(v61, v50, v62), v60) || (FigSessionDataSpecifierGetValue(v54), v63 = OUTLINED_FUNCTION_31_1(), FigWireDictionarySetCFString(v63, v51, v64), v60) || (FigSessionDataSpecifierGetLanguage(v54), v65 = OUTLINED_FUNCTION_31_1(), FigWireDictionarySetCFString(v65, v52, v66), v60))
    {
      v68 = v60;
      CFRelease(v57);
      goto LABEL_42;
    }

    FigSessionDataSpecifierGetFormatType(v54);
    FigCFDictionarySetInt64();
    CFArrayAppendValue(theArray, v57);
    CFRelease(v57);
LABEL_35:
    if (Count == ++v48)
    {
      cf = theArray;
      v6 = v81;
      v3 = v80;
      goto LABEL_39;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v76, v78, v80);
  if (!v67)
  {
    CFArrayAppendValue(theArray, 0);
    goto LABEL_35;
  }

  v68 = v67;
LABEL_42:
  v6 = v81;
  v3 = v80;
  CFRelease(theArray);
LABEL_43:
  if (!v68)
  {
LABEL_44:
    ContentKeySpecifiers = FigMultivariantPlaylistGetContentKeySpecifiers(v3);
    streamPlaylistParser_serializeContentKeySpecifiers(0, ContentKeySpecifiers, 0, &cf);
    if (v70)
    {
      v68 = v70;
    }

    else
    {
      if (cf)
      {
        CFDictionarySetValue(v6, *MEMORY[0x1E6962EB0], cf);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      FigGetAllocatorForMedia();
      SerializedAtomDataBlockBufferWithFlagsForCFType = FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForCFType();
      if (SerializedAtomDataBlockBufferWithFlagsForCFType)
      {
        v68 = SerializedAtomDataBlockBufferWithFlagsForCFType;
      }

      else
      {
        v68 = 0;
      }
    }
  }

  CFRelease(v6);
LABEL_51:
  if (cf)
  {
    CFRelease(cf);
  }

  return v68;
}

uint64_t FigStreamPlaylistParserSerializeMediaPlaylist(uint64_t a1, uint64_t a2)
{
  v75 = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v67, v68);
    v62 = v64;
    v6 = 0;
LABEL_61:
    v8 = 0;
    goto LABEL_45;
  }

  v5 = FigGetAllocatorForMedia();
  v6 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  if (!v6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v67, v68);
    v62 = v65;
    goto LABEL_61;
  }

  v7 = FigGetAllocatorForMedia();
  v8 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v67, v68);
    goto LABEL_44;
  }

  FigMediaPlaylistGetDateEntryArray(v2);
  v9 = OUTLINED_FUNCTION_177();
  FigWireDictionarySetCFArray(v9, v10, v11);
  if (SerializedAtomDataBlockBufferWithFlagsForCFType)
  {
    goto LABEL_44;
  }

  FigMediaPlaylistGetPlaylistActiveDurationSecs(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetTargetDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetInt64();
  FigMediaPlaylistGetPartTargetDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetHoldBackDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetPartHoldBackDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetSkipDeltaBoundary(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetPlaylistType(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetInt64();
  HasEndTag = FigMediaPlaylistHasEndTag(v2);
  v14 = *MEMORY[0x1E695E4D0];
  v15 = *MEMORY[0x1E695E4C0];
  OUTLINED_FUNCTION_4_3(HasEndTag);
  HasMediaSequence = FigMediaPlaylistHasMediaSequence(v2);
  OUTLINED_FUNCTION_4_3(HasMediaSequence);
  HasOnlyIFrames = FigMediaPlaylistHasOnlyIFrames(v2);
  OUTLINED_FUNCTION_4_3(HasOnlyIFrames);
  HasStartTime = FigMediaPlaylistHasStartTime(v2);
  OUTLINED_FUNCTION_4_3(HasStartTime);
  IsStartTimePrecise = FigMediaPlaylistIsStartTimePrecise(v2);
  OUTLINED_FUNCTION_4_3(IsStartTimePrecise);
  HasIndependentSegments = FigMediaPlaylistHasIndependentSegments(v2);
  OUTLINED_FUNCTION_4_3(HasIndependentSegments);
  HasIndependentParts = FigMediaPlaylistHasIndependentParts(v2);
  OUTLINED_FUNCTION_4_3(HasIndependentParts);
  HasDiscontinuitySequence = FigMediaPlaylistHasDiscontinuitySequence(v2);
  OUTLINED_FUNCTION_4_3(HasDiscontinuitySequence);
  HasPartTag = FigMediaPlaylistHasPartTag(v2);
  OUTLINED_FUNCTION_4_3(HasPartTag);
  DoesServerSupportsBlockingReload = FigMediaPlaylistDoesServerSupportsBlockingReload(v2);
  OUTLINED_FUNCTION_4_3(DoesServerSupportsBlockingReload);
  FigMediaPlaylistCanSkipDATERANGES(v2);
  v72 = v15;
  v73 = v14;
  v25 = OUTLINED_FUNCTION_177();
  CFDictionarySetValue(v25, v26, v27);
  FigMediaPlaylistGetVersion(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetInt64();
  FigMediaPlaylistGetStartTimeValue(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetDateStampCount(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetInt64();
  FigMediaPlaylistGetAvgSegmentDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetMaxSegmentDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetParseDate(v2);
  v28 = OUTLINED_FUNCTION_177();
  FigWireDictionarySetCFDate(v28, v29, v30);
  if (SerializedAtomDataBlockBufferWithFlagsForCFType)
  {
    goto LABEL_44;
  }

  FigMediaPlaylistGetContentKeySpecifiers(v2);
  v31 = OUTLINED_FUNCTION_21_2();
  streamPlaylistParser_serializeContentKeySpecifiers(v31, v32, v8, v33);
  if (SerializedAtomDataBlockBufferWithFlagsForCFType)
  {
    goto LABEL_44;
  }

  FigMediaPlaylistGetMapSegmentSpecifiers(v2);
  v34 = OUTLINED_FUNCTION_21_2();
  SerializedAtomDataBlockBufferWithFlagsForCFType = streamPlaylistParser_serializeMediaSegmentSpecifiers(v34, v35, v6, v36);
  if (SerializedAtomDataBlockBufferWithFlagsForCFType)
  {
    goto LABEL_44;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(v2);
  v37 = OUTLINED_FUNCTION_21_2();
  SerializedAtomDataBlockBufferWithFlagsForCFType = streamPlaylistParser_serializeMediaSegmentSpecifiers(v37, v38, v6, v39);
  if (SerializedAtomDataBlockBufferWithFlagsForCFType)
  {
    goto LABEL_44;
  }

  RenditionReportSpecifiers = FigMediaPlaylistGetRenditionReportSpecifiers(v2);
  v41 = FigGetAllocatorForMedia();
  v42 = CFArrayCreateMutable(v41, 0, MEMORY[0x1E695E9C0]);
  if (!v42)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v67, v68);
    if (!SerializedAtomDataBlockBufferWithFlagsForCFType)
    {
LABEL_29:
      DateRangeSpecifiers = FigMediaPlaylistGetDateRangeSpecifiers(v2);
      streamPlaylistParser_serializeTaggedRangeEntries(DateRangeSpecifiers, &v75);
      if (!SerializedAtomDataBlockBufferWithFlagsForCFType)
      {
        if (v75)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6962ED0], v75);
          if (v75)
          {
            CFRelease(v75);
            v75 = 0;
          }
        }

        v76 = 0;
        PreloadHint = FigMediaPlaylistGetPreloadHint(v2);
        v60 = OUTLINED_FUNCTION_32_2(PreloadHint);
        if (v60)
        {
          goto LABEL_56;
        }

        if (v76)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6963028], v76);
          if (v76)
          {
            CFRelease(v76);
            v76 = 0;
          }
        }

        PreloadMapHint = FigMediaPlaylistGetPreloadMapHint(v2);
        v60 = OUTLINED_FUNCTION_32_2(PreloadMapHint);
        if (v60)
        {
LABEL_56:
          v62 = v60;
          if (v76)
          {
            CFRelease(v76);
          }

          goto LABEL_45;
        }

        if (v76)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6963030], v76);
          if (v76)
          {
            CFRelease(v76);
          }
        }

        FigWireDictionarySetCFArray(Mutable, *MEMORY[0x1E6963048], v6);
        if (!SerializedAtomDataBlockBufferWithFlagsForCFType)
        {
          FigWireDictionarySetCFArray(Mutable, *MEMORY[0x1E6963040], v8);
          if (!SerializedAtomDataBlockBufferWithFlagsForCFType)
          {
            FigGetAllocatorForMedia();
            SerializedAtomDataBlockBufferWithFlagsForCFType = FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForCFType();
            if (!SerializedAtomDataBlockBufferWithFlagsForCFType)
            {
              v62 = 0;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_44:
    v62 = SerializedAtomDataBlockBufferWithFlagsForCFType;
    goto LABEL_45;
  }

  v43 = v42;
  v69 = v2;
  v70 = v8;
  v71 = Mutable;
  v44 = 0;
  v74 = *MEMORY[0x1E6963058];
  v45 = *MEMORY[0x1E6962F20];
  v46 = *MEMORY[0x1E6963038];
  if (!RenditionReportSpecifiers)
  {
    goto LABEL_13;
  }

LABEL_12:
  for (i = CFArrayGetCount(RenditionReportSpecifiers); ; i = 0)
  {
    if (v44 >= i)
    {
      v75 = v43;
      Mutable = v71;
      v8 = v70;
      v2 = v69;
      CFDictionarySetValue(v71, *MEMORY[0x1E6963050], v43);
      CFRelease(v43);
      v75 = 0;
      goto LABEL_29;
    }

    v48 = v43;
    ValueAtIndex = CFArrayGetValueAtIndex(RenditionReportSpecifiers, v44);
    v50 = FigGetAllocatorForMedia();
    v51 = CFDictionaryCreateMutable(v50, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v51)
    {
      break;
    }

    v52 = v51;
    URL = FigRenditionReportSpecifierGetURL(ValueAtIndex);
    FigWireDictionarySetCFURL(v52, v74, URL);
    if (v54)
    {
      v62 = v54;
      CFRelease(v52);
      goto LABEL_55;
    }

    FigRenditionReportSpecifierGetLastMediaSequenceNumber(ValueAtIndex);
    FigCFDictionarySetInt64();
    FigRenditionReportSpecifierGetLastIndependentMediaSequenceNumber(ValueAtIndex);
    FigCFDictionarySetInt64();
    FigRenditionReportSpecifierGetLastPart(ValueAtIndex);
    FigCFDictionarySetInt64();
    FigRenditionReportSpecifierGetLastIndependentPart(ValueAtIndex);
    FigCFDictionarySetInt64();
    if (FigRenditionReportSpecifierIsGapAtLive(ValueAtIndex))
    {
      v55 = v73;
    }

    else
    {
      v55 = v72;
    }

    CFDictionarySetValue(v52, v45, v55);
    if (FigRenditionReportSpecifierIsReadInCurrent(ValueAtIndex))
    {
      v56 = v73;
    }

    else
    {
      v56 = v72;
    }

    CFDictionarySetValue(v52, v46, v56);
    CFArrayAppendValue(v43, v52);
    CFRelease(v52);
LABEL_24:
    ++v44;
    if (RenditionReportSpecifiers)
    {
      goto LABEL_12;
    }

LABEL_13:
    ;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v67, v69);
  if (!v57)
  {
    CFArrayAppendValue(v43, 0);
    goto LABEL_24;
  }

  v62 = v57;
LABEL_55:
  CFRelease(v48);
  Mutable = v71;
  v8 = v70;
LABEL_45:
  if (Mutable)
  {
LABEL_46:
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  return v62;
}

double streamPlaylistParser_serializeContentKeySpecifiers(uint64_t a1, const __CFArray *a2, uint64_t a3, __CFArray **a4)
{
  if (!a4)
  {
    return result;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  theArray = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!theArray)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v29 = a4;
  v10 = 0;
  v32 = *MEMORY[0x1E6962EC8];
  v31 = *MEMORY[0x1E69630C0];
  key = *MEMORY[0x1E6963020];
  v11 = *MEMORY[0x1E695E4D0];
  v12 = *MEMORY[0x1E695E4C0];
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = CFArrayGetCount(a2); ; i = 0)
  {
    if (v10 >= i)
    {
      *v29 = theArray;
      return result;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
    v15 = ValueAtIndex;
    if (a3 && FigContentKeySpecifierGetIsReadInCurrent(ValueAtIndex))
    {
      FigContentKeySpecifierGetCryptKeyParsedIndex(v15);
      FigCFArrayAppendInt64();
    }

    if (!FigContentKeySpecifierGetIsChangedInCurrent(v15))
    {
      goto LABEL_21;
    }

    v16 = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      break;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v29, key);
    if (v27)
    {
      goto LABEL_27;
    }

    CFArrayAppendValue(theArray, 0);
LABEL_21:
    ++v10;
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_5:
    ;
  }

  v18 = Mutable;
  FigContentKeySpecifierGetKeySystem(v15);
  FigCFDictionarySetInt64();
  FigContentKeySpecifierGetEncryptionMethod(v15);
  FigCFDictionarySetInt64();
  FigContentKeySpecifierGetIdentifier(v15);
  v19 = OUTLINED_FUNCTION_8_1();
  FigWireDictionarySetCFString(v19, v32, v20);
  if (!v21)
  {
    FigContentKeySpecifierGetSupportedProtocolVersions(v15);
    v22 = OUTLINED_FUNCTION_8_1();
    FigWireDictionarySetCFArray(v22, v31, v23);
    if (!v24)
    {
      if (FigContentKeySpecifierGetIsPrefetchKey(v15))
      {
        v25 = v11;
      }

      else
      {
        v25 = v12;
      }

      CFDictionarySetValue(v18, key, v25);
      FigContentKeySpecifierGetCryptKeyParsedIndex(v15);
      OUTLINED_FUNCTION_8_1();
      FigCFDictionarySetInt64();
      if (a1)
      {
        if (FigContentKeySpecifierGetCryptKeyParsedIndex(v15))
        {
          CryptKeyParsedIndex = FigContentKeySpecifierGetCryptKeyParsedIndex(v15);
          FigMediaPlaylistAddToCryptKeyParsedIndexToEntryMap(a1, CryptKeyParsedIndex, v15);
        }
      }

      CFArrayAppendValue(theArray, v18);
      CFRelease(v18);
      goto LABEL_21;
    }
  }

  CFRelease(v18);
LABEL_27:
  CFRelease(theArray);
  return result;
}

uint64_t streamPlaylistParser_serializeMediaSegmentSpecifiers(uint64_t a1, const __CFArray *a2, uint64_t a3, __CFArray **a4)
{
  value = 0;
  if (!a4)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_5;
    }

LABEL_4:
    for (i = CFArrayGetCount(a2); v10 < i; i = 0)
    {
      v12 = OUTLINED_FUNCTION_182_1();
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
      if (FigMediaSegmentSpecifierIsReadInCurrent(ValueAtIndex))
      {
        FigMediaSegmentSpecifierGetMediaParsedIndex(ValueAtIndex);
        OUTLINED_FUNCTION_171_1();
        FigCFArrayAppendInt64();
      }

      if (FigMediaSegmentSpecifierIsChangedInCurrent(ValueAtIndex))
      {
        v15 = streamPlaylistParser_serializeMediaSegmentSpecifier(a1, ValueAtIndex, a3, &value);
        if (v15)
        {
          goto LABEL_23;
        }

        CFArrayAppendValue(Mutable, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }

      ++v10;
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_5:
      ;
    }

    v16 = 0;
    *a4 = Mutable;
    Mutable = 0;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, value, v20);
LABEL_23:
    v16 = v15;
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

double FigWireDictionarySetCFArray(int a1, int a2, const void *a3)
{
  if (a3)
  {
    v3 = OUTLINED_FUNCTION_12_1(a1, a2, a3);
    if (v3 == CFArrayGetTypeID())
    {
      OUTLINED_FUNCTION_17_1();
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

uint64_t FigStreamPlaylistParserDeserializeMultivariantPlaylist(uint64_t a1, CFTypeRef *a2)
{
  v91 = 0;
  if (a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    BlockBufferData = FigMultivariantPlaylistCreateEmpty(AllocatorForMedia, &v91);
    if (BlockBufferData || (FigGetAllocatorForMedia(), BlockBufferData = FigXPCMessageCreateBlockBufferData(), BlockBufferData) || (FigGetAllocatorForMedia(), BlockBufferData = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer(), BlockBufferData))
    {
      v41 = BlockBufferData;
    }

    else
    {
      v5 = v91;
      Value = CFDictionaryGetValue(0, *MEMORY[0x1E6962FD0]);
      v7 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      v8 = OUTLINED_FUNCTION_283();
      FigMultivariantPlaylistSetPlaylistVariables(v8, v9);
      v10 = CFDictionaryGetValue(0, *MEMORY[0x1E6962FC0]);
      v11 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      FigMultivariantPlaylistSetMediaSelectionArray(v5, v11);
      v97[0] = 0;
      Array = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962E90]);
      streamPlaylistParser_copyDeserializedRepresentationForMediaGroups(Array, v97);
      v13 = OUTLINED_FUNCTION_30_2();
      FigMultivariantPlaylistSetAudioGroups(v13, v14);
      if (v97[0])
      {
        CFRelease(v97[0]);
        v97[0] = 0;
      }

      v15 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6963110]);
      streamPlaylistParser_copyDeserializedRepresentationForMediaGroups(v15, v97);
      v16 = OUTLINED_FUNCTION_30_2();
      FigMultivariantPlaylistSetVideoGroups(v16, v17);
      if (v97[0])
      {
        CFRelease(v97[0]);
        v97[0] = 0;
      }

      v18 = FigWireDictionaryGetArray(0, *MEMORY[0x1E69630B8]);
      streamPlaylistParser_copyDeserializedRepresentationForMediaGroups(v18, v97);
      v19 = OUTLINED_FUNCTION_30_2();
      FigMultivariantPlaylistSetSubtitleGroups(v19, v20);
      if (v97[0])
      {
        CFRelease(v97[0]);
        v97[0] = 0;
      }

      *v89 = v7;
      v85 = a2;
      v21 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962EA8]);
      streamPlaylistParser_copyDeserializedRepresentationForMediaGroups(v21, v97);
      v22 = OUTLINED_FUNCTION_30_2();
      FigMultivariantPlaylistSetClosedCaptionGroups(v22, v23);
      if (v97[0])
      {
        CFRelease(v97[0]);
      }

      v24 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962F18]);
      if (v24)
      {
        v25 = v24;
        if (CFArrayGetCount(v24) >= 1)
        {
          Count = CFArrayGetCount(v25);
          if (Count >= 1)
          {
            v27 = Count;
            for (i = 0; v27 != i; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v25, i);
              if (!ValueAtIndex)
              {
                fig_log_get_emitter();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, v83, v84);
                break;
              }

              v30 = ValueAtIndex;
              v96 = 0;
              v97[0] = 0;
              v94 = 0;
              v95 = 0;
              v92 = 0;
              v93 = 0;
              v31 = FigGetAllocatorForMedia();
              SelectionGroup = FigAlternateCreateWithSerializedRepresentation(v31, v30, 0, v97);
              if (SelectionGroup || (FigAlternateGetAudioGroupIDString(v97[0]), v33 = OUTLINED_FUNCTION_29_1(), AudioGroups = FigMultivariantPlaylistGetAudioGroups(v33), SelectionGroup = FigStreamPlaylistGetSelectionGroup(v30, 1936684398, AudioGroups, &v95), SelectionGroup) || (FigAlternateGetVideoGroupIDString(v97[0]), v35 = OUTLINED_FUNCTION_29_1(), VideoGroups = FigMultivariantPlaylistGetVideoGroups(v35), SelectionGroup = FigStreamPlaylistGetSelectionGroup(v30, 1986618469, VideoGroups, &v94), SelectionGroup) || (FigAlternateGetSubtitleGroupIDString(v97[0]), v37 = OUTLINED_FUNCTION_29_1(), SubtitleGroups = FigMultivariantPlaylistGetSubtitleGroups(v37), SelectionGroup = FigStreamPlaylistGetSelectionGroup(v30, 1935832172, SubtitleGroups, &v93), SelectionGroup) || (FigAlternateGetClosedCaptionGroupIDString(v97[0]), v39 = OUTLINED_FUNCTION_29_1(), ClosedCaptionGroups = FigMultivariantPlaylistGetClosedCaptionGroups(v39), SelectionGroup = FigStreamPlaylistGetSelectionGroup(v30, 1668047728, ClosedCaptionGroups, &v92), SelectionGroup))
              {
                v41 = SelectionGroup;
              }

              else
              {
                v41 = FigAlternateCopy(v97[0], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v95, v94, v93, v92, &v96);
                if (!v41)
                {
                  v42 = v96;
                  v96 = 0;
                  goto LABEL_29;
                }
              }

              v42 = 0;
LABEL_29:
              if (v97[0])
              {
                CFRelease(v97[0]);
              }

              if (v96)
              {
                CFRelease(v96);
              }

              if (v41)
              {
                v50 = *v89;
                if (!v42)
                {
                  goto LABEL_49;
                }

LABEL_48:
                CFRelease(v42);
                goto LABEL_49;
              }

              v43 = OUTLINED_FUNCTION_182_1();
              FigMultivariantPlaylistAddAlternate(v43, v44);
              if (v42)
              {
                CFRelease(v42);
              }
            }
          }
        }
      }

      v45 = CFDictionaryGetValue(0, *MEMORY[0x1E69630B0]);
      v46 = v45;
      if (v45)
      {
        CFRetain(v45);
      }

      v47 = OUTLINED_FUNCTION_283();
      FigMultivariantPlaylistSetContentSteeringServerURL(v47, v48);
      v49 = CFDictionaryGetValue(0, *MEMORY[0x1E6962F70]);
      v42 = v49;
      v50 = *v89;
      if (v49)
      {
        CFRetain(v49);
      }

      v51 = OUTLINED_FUNCTION_182_1();
      FigMultivariantPlaylistSetContentSteeringInitPathwayID(v51, v52);
      v97[0] = 0;
      OUTLINED_FUNCTION_22_2();
      FigCFDictionaryGetInt64IfPresent();
      FigMultivariantPlaylistSetVersion(v5, v97[0]);
      LOBYTE(v97[0]) = 0;
      OUTLINED_FUNCTION_22_2();
      FigCFDictionaryGetBooleanIfPresent();
      FigMultivariantPlaylistSetHasIndependentSegments(v5, v97[0]);
      LOBYTE(v97[0]) = 0;
      OUTLINED_FUNCTION_22_2();
      FigCFDictionaryGetBooleanIfPresent();
      FigMultivariantPlaylistSetHasStartTime(v5, v97[0]);
      v97[0] = 0;
      OUTLINED_FUNCTION_22_2();
      FigCFDictionaryGetDoubleIfPresent();
      FigMultivariantPlaylistSetStartTimeValue(v5, *v97);
      LOBYTE(v97[0]) = 0;
      OUTLINED_FUNCTION_22_2();
      FigCFDictionaryGetBooleanIfPresent();
      FigMultivariantPlaylistSetIsStartTimePrecise(v5, v97[0]);
      if (v46)
      {
        CFRelease(v46);
      }

      v41 = 0;
      if (v42)
      {
        goto LABEL_48;
      }

LABEL_49:
      if (v50)
      {
        CFRelease(v50);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (!v41)
      {
        v53 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962EB0]);
        if (v53 && (v54 = v53, v55 = v91, v97[0] = 0, (v56 = CFArrayGetCount(v53)) != 0))
        {
          v57 = v56;
          v58 = 0;
          while (1)
          {
            v59 = CFArrayGetValueAtIndex(v54, v58);
            v65 = streamPlaylistParser_deserializeContentKeySpecifier(0, v59, v97, v60, v61, v62, v63, v64);
            if (v65)
            {
              break;
            }

            FigMultivariantPlaylistAddContentKeySpecifier(v55, v97[0]);
            if (v97[0])
            {
              CFRelease(v97[0]);
              v97[0] = 0;
            }

            if (v57 == ++v58)
            {
              goto LABEL_61;
            }
          }

          v41 = v65;
          if (v97[0])
          {
            v81 = v97[0];
LABEL_93:
            CFRelease(v81);
          }
        }

        else
        {
LABEL_61:
          v66 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6963060]);
          if (!v66 || (v67 = v66, v90 = v91, v96 = 0, !CFArrayGetCount(v66)))
          {
LABEL_86:
            v41 = 0;
            *v85 = v91;
            v91 = 0;
            goto LABEL_87;
          }

          OUTLINED_FUNCTION_417_0();
          key = *MEMORY[0x1E6963070];
          v87 = *MEMORY[0x1E6963018];
          v86 = *MEMORY[0x1E6963080];
          v68 = *MEMORY[0x1E6963078];
          while (1)
          {
            v69 = CFArrayGetValueAtIndex(v67, 0);
            if (v69)
            {
              v70 = v69;
              v71 = CFDictionaryGetValue(v69, key);
              v72 = v71;
              if (v71)
              {
                CFRetain(v71);
              }

              v73 = CFDictionaryGetValue(v70, v87);
              v74 = v73;
              if (v73)
              {
                CFRetain(v73);
              }

              v75 = CFDictionaryGetValue(v70, v86);
              v76 = v75;
              if (v75)
              {
                CFRetain(v75);
              }

              v77 = CFDictionaryGetValue(v70, v68);
              v78 = v77;
              if (v77)
              {
                CFRetain(v77);
              }

              v97[0] = 0;
              FigCFDictionaryGetInt64IfPresent();
              v41 = FigSessionDataSpecifierCreate(v72, v74, v76, v78, v97[0], &v96);
              if (v72)
              {
                CFRelease(v72);
              }

              if (v74)
              {
                CFRelease(v74);
              }

              if (v76)
              {
                CFRelease(v76);
              }

              if (v78)
              {
                CFRelease(v78);
              }

              if (v41)
              {
                break;
              }
            }

            FigMultivariantPlaylistAddSessionDataSpecifier(v90, v96);
            if (v96)
            {
              CFRelease(v96);
              v96 = 0;
            }

            OUTLINED_FUNCTION_377_0();
            if (v79)
            {
              goto LABEL_86;
            }
          }

          v81 = v96;
          if (v96)
          {
            goto LABEL_93;
          }
        }
      }
    }
  }

  else
  {
    v41 = 0;
  }

LABEL_87:
  if (v91)
  {
    CFRelease(v91);
  }

  return v41;
}

uint64_t FigStreamPlaylistParserDeserializeMediaPlaylist(uint64_t a1, CFTypeRef *a2)
{
  v128 = 0;
  if (!a2)
  {
    v101 = 0;
    goto LABEL_108;
  }

  v4 = v3;
  if (*a2)
  {
    v6 = CFRetain(*a2);
    v128 = v6;
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    BlockBufferData = FigMediaPlaylistCreateEmpty(AllocatorForMedia, &v128);
    if (BlockBufferData)
    {
      goto LABEL_116;
    }

    v6 = v128;
  }

  FigStreamPlaylistInitializeIndexValidation(v6);
  FigGetAllocatorForMedia();
  BlockBufferData = FigXPCMessageCreateBlockBufferData();
  if (BlockBufferData)
  {
    goto LABEL_116;
  }

  FigGetAllocatorForMedia();
  BlockBufferData = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
  if (BlockBufferData)
  {
    goto LABEL_116;
  }

  v122 = a2;
  v9 = v128;
  v129 = 0;
  Value = CFDictionaryGetValue(0, *MEMORY[0x1E6962ED8]);
  v11 = Value;
  if (!Value)
  {
    FigMediaPlaylistSetDateEntryArray(v9, 0);
LABEL_13:
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v18 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetPlaylistActiveDurationSecs(v18, v19);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetInt64IfPresent();
    FigMediaPlaylistSetTargetDuration(v9, v130);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v20 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetPartTargetDuration(v20, v21);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v22 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetHoldBackDuration(v22, v23);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v24 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetPartHoldBackDuration(v24, v25);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v26 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetSkipDeltaBoundary(v26, v27);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetInt64IfPresent();
    FigMediaPlaylistSetPlaylistType(v9, v130);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v28 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasEndTag(v28, v29);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v30 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasMediaSequence(v30, v31);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v32 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasOnlyIFrames(v32, v33);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v34 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasIndependentParts(v34, v35);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v36 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasDiscontinuitySequence(v36, v37);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v38 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasPartTag(v38, v39);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v40 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetDoesServerSupportsBlockingReload(v40, v41);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v42 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetCanSkipDATERANGES(v42, v43);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetInt64IfPresent();
    if (v130)
    {
      OUTLINED_FUNCTION_1_3();
      FigCFDictionaryGetInt64IfPresent();
      FigMediaPlaylistSetVersion(v9, v130);
    }

    v4 = *MEMORY[0x1E6962F60];
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    if (v130)
    {
      OUTLINED_FUNCTION_2_3();
      FigCFDictionaryGetBooleanIfPresent();
      v44 = OUTLINED_FUNCTION_15_1();
      FigMediaPlaylistSetHasStartTime(v44, v45);
      OUTLINED_FUNCTION_1_3();
      FigCFDictionaryGetDoubleIfPresent();
      v46 = OUTLINED_FUNCTION_16_2();
      FigMediaPlaylistSetStartTimeValue(v46, v47);
      OUTLINED_FUNCTION_2_3();
      FigCFDictionaryGetBooleanIfPresent();
      v48 = OUTLINED_FUNCTION_15_1();
      FigMediaPlaylistSetIsStartTimePrecise(v48, v49);
    }

    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetInt64IfPresent();
    FigMediaPlaylistSetDateStampCount(v9, v130);
    if (!FigMediaPlaylistHasIndependentSegments(v9))
    {
      OUTLINED_FUNCTION_2_3();
      FigCFDictionaryGetBooleanIfPresent();
      v50 = OUTLINED_FUNCTION_15_1();
      FigMediaPlaylistSetHasIndependentSegments(v50, v51);
    }

    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v52 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetAvgSegmentDuration(v52, v53);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v54 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetMaxSegmentDuration(v54, v55);
    FigWireDictionaryCopyCFDate(0, *MEMORY[0x1E6962FD8], &v129);
    v56 = v129;
    if (!v57)
    {
      FigMediaPlaylistSetParseDate(v9, v129);
      v56 = v129;
    }

    if (v56)
    {
      CFRelease(v56);
    }

    if (!v11)
    {
      goto LABEL_25;
    }

LABEL_24:
    CFRelease(v11);
    goto LABEL_25;
  }

  CFRetain(Value);
  FigMediaPlaylistSetDateEntryArray(v9, 0);
  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
    goto LABEL_13;
  }

  v2 = Count;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
    v15 = FigGetAllocatorForMedia();
    MutableCopy = CFDictionaryCreateMutableCopy(v15, 0, ValueAtIndex);
    if (!MutableCopy)
    {
      break;
    }

    v17 = MutableCopy;
    FigMediaPlaylistAddDateEntryArray(v9, MutableCopy);
    CFRelease(v17);
    if (v2 == ++v13)
    {
      goto LABEL_13;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v121, a2, v123);
  if (v11)
  {
    goto LABEL_24;
  }

LABEL_25:
  Array = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962EB0]);
  if (Array && OUTLINED_FUNCTION_27_2(Array))
  {
    OUTLINED_FUNCTION_417_0();
    do
    {
      v59 = CFArrayGetValueAtIndex(v4, v2);
      v65 = streamPlaylistParser_deserializeContentKeySpecifier(v9, v59, &v130, v60, v61, v62, v63, v64);
      v66 = v130;
      if (v65)
      {
LABEL_117:
        v101 = v65;
        if (!v66)
        {
          goto LABEL_121;
        }

        goto LABEL_118;
      }

      FigMediaPlaylistAddContentKeySpecifier(v9, v130);
      if (v130)
      {
        CFRelease(v130);
        v130 = 0;
      }

      OUTLINED_FUNCTION_377_0();
    }

    while (!v67);
  }

  v68 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962FA0]);
  if (v68 && OUTLINED_FUNCTION_27_2(v68))
  {
    OUTLINED_FUNCTION_417_0();
    do
    {
      v69 = CFArrayGetValueAtIndex(v4, v2);
      UInt64AtIndex = FigWireArrayGetUInt64AtIndex(v69, 13);
      MediaParsedIndexToEntryMap = FigMediaPlaylistGetMediaParsedIndexToEntryMap(v9);
      v72 = CFDictionaryGetValue(MediaParsedIndexToEntryMap, UInt64AtIndex);
      v130 = v72;
      if (v72 && (CFRetain(v72), v130))
      {
        v76 = OUTLINED_FUNCTION_11_2();
        v79 = streamPlaylistParser_deserializeMediaFileEntry(v76, v77, v78);
        if (v79)
        {
LABEL_123:
          v101 = v79;
          v66 = v130;
          if (!v130)
          {
            goto LABEL_121;
          }

LABEL_118:
          v120 = v66;
LABEL_120:
          CFRelease(v120);
          goto LABEL_121;
        }
      }

      else
      {
        v73 = OUTLINED_FUNCTION_11_2();
        v65 = streamPlaylistParser_deserializeMediaFileEntry(v73, v74, v75);
        v66 = v130;
        if (v65)
        {
          goto LABEL_117;
        }

        FigMediaPlaylistAddMapSegmentSpecifier(v9, v130);
      }

      if (v130)
      {
        CFRelease(v130);
        v130 = 0;
      }

      OUTLINED_FUNCTION_377_0();
    }

    while (!v67);
  }

  v80 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962FB0]);
  if (v80 && OUTLINED_FUNCTION_27_2(v80))
  {
    OUTLINED_FUNCTION_417_0();
    do
    {
      v81 = CFArrayGetValueAtIndex(v4, v2);
      v82 = FigWireArrayGetUInt64AtIndex(v81, 13);
      v83 = FigMediaPlaylistGetMediaParsedIndexToEntryMap(v9);
      v84 = CFDictionaryGetValue(v83, v82);
      v130 = v84;
      if (v84 && (CFRetain(v84), v130))
      {
        v88 = OUTLINED_FUNCTION_11_2();
        v79 = streamPlaylistParser_deserializeMediaFileEntry(v88, v89, v90);
        if (v79)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v85 = OUTLINED_FUNCTION_11_2();
        v65 = streamPlaylistParser_deserializeMediaFileEntry(v85, v86, v87);
        v66 = v130;
        if (v65)
        {
          goto LABEL_117;
        }

        FigMediaPlaylistAddMediaSegmentSpecifier(v9, v130);
      }

      if (v130)
      {
        CFRelease(v130);
        v130 = 0;
      }

      OUTLINED_FUNCTION_377_0();
    }

    while (!v67);
  }

  theArray = FigWireDictionaryGetArray(0, *MEMORY[0x1E6963050]);
  if (!theArray || (v125 = v128, FigMediaPlaylistSetRenditionReportSpecifiers(v128, 0), (v126 = CFArrayGetCount(theArray)) == 0))
  {
LABEL_76:
    v103 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962ED0]);
    if (!v103 || (BlockBufferData = streamPlaylistParser_deserializeTaggedRangeEntries(v128, v103), !BlockBufferData))
    {
      v104 = v128;
      v130 = 0;
      v105 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6963028]);
      v106 = streamPlaylistParser_deserializeMediaFileEntry(v104, v105, &v130);
      if (!v106)
      {
        FigMediaPlaylistSetPreloadHint(v104, v130);
        if (v130)
        {
          CFRelease(v130);
          v130 = 0;
        }

        v107 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6963030]);
        v106 = streamPlaylistParser_deserializeMediaFileEntry(v104, v107, &v130);
        if (!v106)
        {
          FigMediaPlaylistSetPreloadMapHint(v104, v130);
          if (v130)
          {
            CFRelease(v130);
          }

          v108 = CFDictionaryGetValue(0, *MEMORY[0x1E6963048]);
          v109 = v108;
          if (v108)
          {
            CFRetain(v108);
          }

          v110 = CFDictionaryGetValue(0, *MEMORY[0x1E6963040]);
          v111 = v110;
          if (v110)
          {
            CFRetain(v110);
          }

          v112 = v128;
          v129 = 0;
          v130 = 0;
          if (v109 && CFArrayGetCount(v109) >= 1)
          {
            v113 = 0;
            do
            {
              OUTLINED_FUNCTION_11_2();
              FigCFArrayGetInt64AtIndex();
              if (v130)
              {
                v114 = FigMediaPlaylistGetMediaParsedIndexToEntryMap(v112);
                v115 = CFDictionaryGetValue(v114, v130);
                if (v115)
                {
                  FigMediaSegmentSpecifierSetIsReadInCurrent(v115, 1);
                }
              }

              ++v113;
            }

            while (CFArrayGetCount(v109) > v113);
          }

          if (v111 && CFArrayGetCount(v111) >= 1)
          {
            v116 = 0;
            do
            {
              FigCFArrayGetInt64AtIndex();
              if (v129)
              {
                CryptKeyParsedIndexToEntryMap = FigMediaPlaylistGetCryptKeyParsedIndexToEntryMap(v112);
                v118 = CFDictionaryGetValue(CryptKeyParsedIndexToEntryMap, v129);
                if (v118)
                {
                  FigContentKeySpecifierSetIsReadInCurrent(v118, 1);
                }
              }

              ++v116;
            }

            while (CFArrayGetCount(v111) > v116);
          }

          v101 = 0;
          if (!*v122)
          {
            *v122 = v128;
            v128 = 0;
          }

          goto LABEL_104;
        }
      }

      v101 = v106;
      v120 = v130;
      if (!v130)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }

LABEL_116:
    v101 = BlockBufferData;
    goto LABEL_121;
  }

  v91 = 0;
  key = *MEMORY[0x1E6963058];
  while (1)
  {
    v92 = CFArrayGetValueAtIndex(theArray, v91);
    v129 = 0;
    if (v92)
    {
      break;
    }

    FigMediaPlaylistAddRenditionReportSpecifier(v125, 0);
LABEL_71:
    if (v126 == ++v91)
    {
      goto LABEL_76;
    }
  }

  v93 = CFDictionaryGetValue(v92, key);
  v94 = v93;
  if (v93)
  {
    CFRetain(v93);
  }

  OUTLINED_FUNCTION_7_2();
  FigCFDictionaryGetInt64IfPresent();
  v95 = v130;
  OUTLINED_FUNCTION_7_2();
  FigCFDictionaryGetInt64IfPresent();
  v96 = v130;
  OUTLINED_FUNCTION_7_2();
  FigCFDictionaryGetInt64IfPresent();
  v97 = v130;
  OUTLINED_FUNCTION_7_2();
  FigCFDictionaryGetInt64IfPresent();
  v98 = v130;
  LOBYTE(v130) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v99 = v130;
  LOBYTE(v130) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v100 = v130;
  v101 = FigRenditionReportSpecifierCreate(v94, v95, v96, v97, v98, 1, v99, &v129);
  if (!v101)
  {
    FigRenditionReportSpecifierSetReadInCurrent(v129, v100);
    v102 = v129;
    v129 = 0;
    if (!v94)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v102 = 0;
  if (v94)
  {
LABEL_65:
    CFRelease(v94);
  }

LABEL_66:
  if (v129)
  {
    CFRelease(v129);
  }

  if (!v101)
  {
    FigMediaPlaylistAddRenditionReportSpecifier(v125, v102);
    if (v102)
    {
      CFRelease(v102);
    }

    goto LABEL_71;
  }

  if (v102)
  {
    v120 = v102;
    goto LABEL_120;
  }

LABEL_121:
  v109 = 0;
  v111 = 0;
LABEL_104:
  if (v109)
  {
    CFRelease(v109);
  }

  if (v111)
  {
    CFRelease(v111);
  }

LABEL_108:
  if (v128)
  {
    CFRelease(v128);
  }

  return v101;
}